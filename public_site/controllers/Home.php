<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * @property CI_Benchmark $benchmark
 * @property CI_Calendar $calendar
 * @property CI_Cart $cart
 * @property CI_Config $config
 * @property CI_Email $email
 * @property CI_Encrypt $encrypt
 * @property CI_Encryption $encryption
 * @property CI_Upload $upload
 * @property CI_Form_validation $form_validation
 * @property CI_FTP $ftp
 * @property CI_Image_lib image_lib
 * @property CI_Input $input
 * @property CI_Javascript $javascript
 * @property CI_Lang $lang
 * @property CI_Loader $load
 * @property CI_DB_forge $dbforge
 * @property CI_Output $output
 * @property CI_Pagination $pagination
 * @property CI_Security $security
 * @property CI_Session $session
 * @property CI_Table $table
 * @property CI_URI $uri
 * @property CI_User_agent $agent
 * @property CI_Xmlrpc $xmlrpc
 * @property CI_Xmlrpcs $xmlrpcs
 * @property CI_Zip $zip
 * @property CI_DB $db
 * @property Setting_model setting_model
 * @property Blog_model blog_model
 * @property Page_model page_model
 * @property Blog_category_model blog_category_model
 * @property Email_model email_model
 * @property User_model user_model
 * @property CI_Cache cache
 */
class Home extends CI_Controller
{
    function index()
    {
        $dataView = array();
        $searchArr = array(
            'tiki' => 'Tiki',
            'lazada' => 'Lazada'
        );
        $dataView['slc_search_on'] = getHtmlSelection($searchArr, array(), array('multiple' => true, 'name' => 'search_on[]', 'class' => 'search_on'));
        $data = array(
            'meta_title' => $this->setting_model->get('page_title'),
            'meta_description' => $this->setting_model->get('page_description'),
            'data' => $dataView
        );
        $this->load->view('home', $data);
    }

    function search()
    {
        $data = array();
        $success = 0;
        $html = '';
        if ($this->input->post('search_on', true) && $this->input->post('search_key', true)) {
            $this->load->driver('cache', array('adapter' => 'apc', 'backup' => 'file'));
            $success = 1;
            $searchOns = $this->input->post('search_on', true);
            $searchKey = $this->input->post('search_key', true);
            $data['search_key'] = $searchKey;
            $data['products'] = array();
            foreach ($searchOns as $searchOn) {
                if ($searchOn == 'tiki') {
                    if (!$dataCache = $this->cache->get('tiki_' . rewrite($searchKey))) {
                        //curl get data
                        $ch = curl_init();
                        curl_setopt($ch, CURLOPT_URL, 'https://tiki.vn/search?q=' . urlencode($searchKey));
                        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                        curl_setopt($ch, CURLOPT_TIMEOUT_MS, 10000);
                        $html = curl_exec($ch);
                        $curlHeader = curl_getinfo($ch);
                        while ($curlHeader['http_code'] == '302') {
                            curl_setopt($ch, CURLOPT_URL, $curlHeader['redirect_url']);
                            $html = curl_exec($ch);
                            $curlHeader = curl_getinfo($ch);
                        }
                        curl_close($ch);

                        //xử lý data
                        $dataCache = array();
                        preg_match_all('/<div data-seller-product-id="([^"]*)"   data-title="([^"]*)" data-price="([^"]*)" data-id="([^"]*)/', $html, $product);
                        preg_match_all('/<img class="product-image img-responsive" src="([^"]+)"/', $html, $images);
                        foreach ($product[4] as $i => $item) {
                            if ($i == 20) break;
                            preg_match('/data-id="' . $item . '" href="([^"]+)"/', $html, $url);
                            $dataCache[] = array(
                                'name' => getExcerpt($product[2][$i], 0, 67),
                                'image' => $images[1][$i],
                                'url' => 'http://go.masoffer.net/v0/1qe-ASGgNDpj8RGa3MlQ_g?url=' . urlencode($url[1]),
                                'brand' => 'tiki',
                                'price' => (int)$product[3][$i]
                            );
                        }
                        $this->cache->save('tiki_' . rewrite($searchKey), $dataCache, 3600);
                    }
                    $data['products'] = array_merge($data['products'], $dataCache);
                }
                if ($searchOn == 'lazada') {
                    if (!$dataCache = $this->cache->get('lazada_' . rewrite($searchKey))) {
                        //curl get data
                        $ch = curl_init();
                        curl_setopt($ch, CURLOPT_URL, 'http://www.lazada.vn/catalog/?q=' . urlencode($searchKey));
                        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                        curl_setopt($ch, CURLOPT_TIMEOUT_MS, 10000);
                        $html = curl_exec($ch);
                        $curlHeader = curl_getinfo($ch);
                        while ($curlHeader['http_code'] == '302') {
                            curl_setopt($ch, CURLOPT_URL, $curlHeader['redirect_url']);
                            $html = curl_exec($ch);
                            $curlHeader = curl_getinfo($ch);
                        }
                        curl_close($ch);

                        //xử lý data
                        $dataCache = array();
                        preg_match('/<script type="application\/ld\+json">(.+)<\/script>/', $html, $products);
                        $products = json_decode(html_entity_decode($products[1]), true);
                        $products = $products['itemListElement'];
                        foreach ($products as $i => $product) {
                            if ($i == 20) break;
                            $dataCache[] = array(
                                'name' => getExcerpt($product['name'], 0, 67),
                                'image' => $product['image'],
                                'url' => 'http://go.masoffer.net/v0/1qe-ASGgNDpj8RGa3MlQ_g?url=' . urlencode($product['url']),
                                'brand' => 'lazada',
                                'price' => (int)$product['offers']['price']
                            );
                        }
                        $this->cache->save('lazada_' . rewrite($searchKey), $dataCache, 3600);
                    }
                    $data['products'] = array_merge($data['products'], $dataCache);
                }
            }
            $data['products'] = sortArrayKey($data['products'], 'price');
            $html = $this->load->view('list_product', $data, true);
        }
        echo json_encode(array(
            'success' => $success,
            'html' => $html
        ));
    }

    function ma_giam_gia($webpage)
    {
        $dataView = array();
        $dataView['coupon'] = array();
        $dataView['brand'] = '';
        $dataView['other_coupon'] = array();

        if ($webpage == 'lazada') {
            $dataView['brand'] = 'Lazada';
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_TIMEOUT_MS, 10000);
            curl_setopt($ch, CURLOPT_URL, 'http://api.masoffer.com/promotions/lazada?coupon=yes');
            $coupon = curl_exec($ch);
            curl_close($ch);

            //other coupon
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, 'https://www.lazada.vn/khuyen-mai/');
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_TIMEOUT_MS, 10000);
            $html = curl_exec($ch);
            curl_close($ch);

            $html = preg_replace(array('/\n/', '/>\s+</'), array(' ', '><'), $html);
            preg_match_all('/<div class="local-mechanic-box box-mechanic-left tv-gaming"><a href="([^"]*)" class="local-mechanic-title" data-shopnow="true"><img src="([^"]*)/', $html, $matches);
            foreach ($matches[1] as $key => $item) {
                $dataView['other_coupon'][] = array(
                    'url' => 'http://go.masoffer.net/v0/1qe-ASGgNDpj8RGa3MlQ_g?url=' . urlencode($item),
                    'image' => $matches[2][$key]
                );
            }

        } elseif ($webpage == 'tiki') {
            $dataView['brand'] = 'Tiki';
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_TIMEOUT_MS, 10000);
            curl_setopt($ch, CURLOPT_URL, 'http://api.masoffer.com/promotions/tiki');
            $coupon = curl_exec($ch);
            curl_close($ch);
        } elseif ($webpage == 'adayroi') {
            $dataView['brand'] = 'Adayroi';
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_TIMEOUT_MS, 10000);
            curl_setopt($ch, CURLOPT_URL, 'http://api.masoffer.com/promotions/adayroi?coupon=yes');
            $coupon = curl_exec($ch);
            curl_close($ch);
        } elseif ($webpage == 'lotte') {
            $dataView['brand'] = 'Lotte';
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_TIMEOUT_MS, 10000);
            curl_setopt($ch, CURLOPT_URL, 'http://api.masoffer.com/promotions/lotte?coupon=yes');
            $coupon = curl_exec($ch);
            curl_close($ch);
        }
        $coupon = json_decode(html_entity_decode($coupon), true);
        if ($coupon['status'] == 1) {
            $dataView['coupon'] = $coupon['data']['promotions'];
        }
        $data = array(
            'meta_title' => "Mã giảm giá {$dataView['brand']} tháng" . date('m/Y'),
            'meta_description' => "Mã giảm giá {$webpage} cập nhật thường xuyên",
            'data' => $dataView
        );
        $this->load->view('coupon', $data);
    }
}
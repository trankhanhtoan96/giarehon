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
 */
class Home extends CI_Controller
{
    function index()
    {
        $dataView = array();
        $searchArr = array(
            'tiki' => 'Tiki',
            'lazada' => 'Lazada',
            'nguyenkim' => 'Nguyễn Kim'
        );
        $dataView['slc_search_on'] = getHtmlSelection($searchArr, array('tiki', 'lazada', 'nguyenkim'), array('multiple' => true, 'name' => 'search_on[]', 'class' => 'search_on'));
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
            $success = 1;
            $searchOns = $this->input->post('search_on', true);
            $searchKey = $this->input->post('search_key', true);
            $data['search_key'] = $searchKey;
            foreach ($searchOns as $searchOn) {
                if ($searchOn == 'tiki') {
                    $html = file_get_contents('https://tiki.vn/search?q=' . urlencode($searchKey));
                    preg_match_all('/<div data-seller-product-id="([^"]*)"   data-title="([^"]*)" data-price="([^"]*)" data-id="([^"]*)/', $html, $product);
                    preg_match_all('/<img class="product-image img-responsive" src="([^"]+)"/', $html, $images);
                    foreach ($product[4] as $i => $item) {
                        preg_match('/data-id="' . $item . '" href="([^"]+)"/', $html, $url);
                        $data['products'][] = array(
                            'name' => getExcerpt($product[2][$i], 0, 67),
                            'image' => $images[1][$i],
                            'url' => 'http://go.masoffer.net/v0/1qe-ASGgNDpj8RGa3MlQ_g?url=' . urlencode($url[1]),
                            'brand' => 'tiki',
                            'price' => (int)$product[3][$i]
                        );
                    }
                }
            }
            $data['products'] = sortArrayKey($data['products'],'price');
            $html = $this->load->view('list_product', $data, true);
        }
        echo json_encode(array(
            'success' => $success,
            'html' => $html
        ));
    }
}
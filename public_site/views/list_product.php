<h1 class="text-center" style="color:#CB2134"><?= $search_key ?></h1>
<b style="color:#CB2134;"><i>Tìm thấy <?= count($products) ?> kết quả</i></b>
<div class="row productview">
    <?php foreach ($products as $product): ?>
        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
            <div class="col-item">
                <div class="col-img">
                    <a target="_blank" href="<?= $product['url'] ?>">
                        <img class="img-responsive lazy" data-src="<?= $product['image'] ?>"
                             style="height:200px;margin:auto;">
                    </a>
                    <?php if ($product['brand'] == 'tiki'): ?>
                        <a target="_blank" style="position: absolute;bottom: 0px;border-radius: 0px"
                           class="btn btn-info btn-xs"
                           href="http://go.masoffer.net/v0/1qe-ASGgNDpj8RGa3MlQ_g?url=<?= urlencode('https://tiki.vn/') ?>">Tiki</a>
                    <?php elseif ($product['brand'] == 'lazada'): ?>
                        <a target="_blank" style="position: absolute;bottom: 0px;border-radius: 0px"
                           class="btn btn-warning btn-xs"
                           href="http://go.masoffer.net/v0/1qe-ASGgNDpj8RGa3MlQ_g?url=<?= urlencode('http://www.lazada.vn/') ?>">Lazada</a>
                    <?php endif; ?>
                </div>
                <div class="col-name">
                    <a style="color:#000;" target="_blank" href="<?= $product['url'] ?>">
                        <?= $product['name'] ?>
                    </a>
                </div>

                <div class="col-price">
                    <p style="width: 50%;text-align:center;float:left; border-right:1px solid #e1e1e1;font-weight: bold;">
                        <a style="color:#18bc9c" target="_blank" href="<?= $product['url'] ?>">
                            <i class="fa fa-shopping-cart"></i> Xem chi tiết
                        </a>
                    </p>
                    <p style="width: 50%;text-align:center;color: red;float:right;font-weight: bold;">
                        <?= number_format($product['price']) ?> đ</p>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>
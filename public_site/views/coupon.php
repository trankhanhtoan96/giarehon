<?php include 'public_site/views/header.php'; ?>
    <div class="container">
        <h1 class="text-center" style="color:#CB2134">Mã giảm giá <?= $data['brand'] . ' tháng ' . date('m/Y') ?></h1>
        <?php foreach ($data['coupon'] as $item): ?>
            <div class="row thumbnail" style="height:150px">
                <div class="col-sm-4">
                    <a style="font-size: 18px;color:#000"
                       href="http://go.masoffer.net/v0/1qe-ASGgNDpj8RGa3MlQ_g?url=<?= urlencode($item['original_url']) ?>">
                        <img style="height:140px" class="img-responsive lazy" data-src="<?= $item['thumbnail'] ?>"/>
                    </a>
                </div>
                <div class="col-sm-5">
                    <p>
                        <a style="font-size: 18px;color:#000"
                           href="http://go.masoffer.net/v0/1qe-ASGgNDpj8RGa3MlQ_g?url=<?= urlencode($item['original_url']) ?>">
                            <?= getExcerpt($item['description'], 0, 300) ?>
                        </a>
                    </p>
                    <p style="color:#CB2134;font-style: italic">
                        <?php
                        if ($item['expired_date'] != null) {
                            echo "Hạn sử dụng: " . date('d/m/Y H:i:s', $item['expired_date']);
                        }
                        ?>
                    </p>
                </div>
                <div class="col-sm-3">
                    <div class="coupon-detail coupon-button-type">
                        <button
                            data-link="http://go.masoffer.net/v0/1qe-ASGgNDpj8RGa3MlQ_g?url=<?= urlencode($item['original_url']) ?>"
                            type="button" class="coupon-button coupon-code">
                            <span class="code-text"><?= explode(',',$item['coupon_code'])[0] ?></span>
                            <span class="get-code">Xem Mã</span>
                        </button>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
<?php include 'public_site/views/footer.php'; ?>
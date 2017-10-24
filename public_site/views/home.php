<?php include 'public_site/views/header.php'; ?>
    <div class="container container_form_search">
        <div class="row">
            <h1 class="text-center">Công cụ tìm giá tốt trang web TMĐT</h1>
            <br/>
            <div class="col-md-2 col-lg-2 col-sm-0 col-xs-0"></div>
            <div class="col-md-8 col-lg-8 col-sm-12 col-xs-12 form-group">
                <div class="form-search">
                    <input name="search_key" autofocus="true" type="text" class="form-control search_key"
                           placeholder="Nhập tên sản phẩm"/><br/>
                    <b>Tìm kiếm trên: </b><?= $data['slc_search_on'] ?>
                    <br/><br/>
                    <button style="background-color: #CB2134" type="button"
                            class="btn btn-danger btn-block btn_timkiem">
                        <i class="fa fa-search"></i> Tìm giá rẻ hơn
                    </button>
                </div>
            </div>
            <div class="col-md-2 col-lg-2 col-sm-0 col-xs-0"></div>
        </div>
    </div>
<div class="container container_view"></div>
<?php include 'public_site/views/footer.php'; ?>
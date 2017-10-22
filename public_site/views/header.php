<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="<?= $this->setting_model->get('icon') ?>"/>
    <title><?= !empty($meta_title) ? $meta_title : '' ?></title>
    <meta name="description" content="<?= !empty($meta_description) ? $meta_description : '' ?>">

    <!--define language-->
    <script>
        var CI_language = <?= json_encode($this->lang->language) ?>;
        CI_language.language = '<?= $this->config->item('language') ?>';
        CI_language.base_url = '<?= base_url() ?>';
        CI_language.site_url = '<?= site_url() ?>';
    </script>

    <!--jquery-->
    <script src="<?= base_url('vendors/jquery.min.js') ?>"></script>

    <!--bootstrap-->
    <link type="text/css" rel="stylesheet" href="<?= base_url('vendors/bootstrap/css/bootstrap.min.css') ?>"/>
    <script src="<?= base_url('vendors/bootstrap/js/bootstrap.min.js') ?>"></script>

    <!--font awesome-->
    <link href="<?= base_url('vendors/font-awesome/css/font-awesome.min.css') ?>" type="text/css" rel="stylesheet">

    <!--custom css-->
    <link href="<?= base_url('public_site/views/style.css') ?>" rel="stylesheet" type="text/css"/>

    <!--spinner load-->
    <link rel="stylesheet" type="text/css" href="<?= base_url('vendors/Spinner/Spinner.css') ?>"/>

    <!--alertify-->
    <link rel="stylesheet" type="text/css" href="<?= base_url('vendors/AlertifyJS/alertify.min.css') ?>"/>

    <!--multiple select-->
    <link rel="stylesheet" type="text/css" href="<?= base_url('vendors/multiple-select/multiple-select.css') ?>"/>
    <script src="<?= base_url('vendors/multiple-select/multiple-select.js') ?>"></script>

    <!--custom script-->
    <script src="<?= base_url('public_site/views/script.js') ?>"></script>
</head>
<body>

<!--menu-->
<nav class="navbar navbar-default navbar-fixed-top" style="font-size:18px;">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="<?= site_url() ?>">
                <img class="img-responsive navbar-brand" style="height:70px;padding:0"
                     src="<?= $this->setting_model->get('logo') ?>"/>
            </a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li><a href="<?= site_url('gioi-thieu.html') ?>">GIỚI THIỆU</a></li>
                <li><a href="#" type="button" data-toggle="modal" data-target="#search_product">TÌM GIÁ RẺ</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">MÃ
                        GIẢM GIÁ
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="<?= site_url('dich-vu-thanh-lap-doanh-nghiep.html') ?>"><i
                                    class="fa-chevron-circle-right fa"></i> LAZADA</a></li>
                        <li><a href="<?= site_url('dich-vu-bao-cao-thue.html') ?>"><i
                                    class="fa-chevron-circle-right fa"></i> TIKI</a></li>
                    </ul>
                </li>
                <li><a href="<?= site_url('lien-he.html') ?>">LIÊN HỆ</a></li>
            </ul>
        </div>
    </div>
</nav>
<div style="height: 70px;"></div>

<div id="search_product" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" id="close_modal" data-dismiss="modal">&times;</button>
                <?php include "public_site/views/form_search.php"; ?>
            </div>
        </div>
    </div>
</div>
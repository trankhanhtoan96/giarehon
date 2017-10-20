$(document).ready(function () {
    $('[data-toggle="tooltip"]').tooltip({container: "body"});

    //hiệu ứngs effice cho màn hình lớn trên 750px
    if ($(window).width() > 750) {
        // Add slideDown animation to dropdown
        $('.dropdown').on('show.bs.dropdown', function (e) {
            $(this).find('.dropdown-menu').first().stop(true, true).slideDown(100);
        });

        // Add slideUp animation to dropdown
        $('.dropdown').on('hide.bs.dropdown', function (e) {
            $(this).find('.dropdown-menu').first().stop(true, true).slideUp(100);
        });
        $('li.dropdown').mouseenter(function () {
            $(this).find('.dropdown-menu').first().stop(true, true).slideDown(100);
            $(this).find('a.dropdown-toggle').css('color', '#FFF');
        }).mouseleave(function () {
            $(this).find('.dropdown-menu').first().stop(true, true).slideUp(100);
            $(this).find('a.dropdown-toggle').css('color', '#000');
        });

        //vô hiệu hóa click chuột vào menu có dropdown,
        // chỉ để howver chuột là hiện ra dropdown
        $('.navbar-nav a[data-toggle="dropdown"]').on('click', function () {
            return false;
        });
    }

    //multiple select form cho webpage to search
    $('.search_on').multipleSelect({
        filter: false,
        width: '250px'
    });

    $('#timkiem').on('click', function () {
        var loading = new Spinner();
        loading.show('Đang xử lý...');
        $('#close_modal').click();

        //ajax xử lý tìm giá rẻ

    });

    /*load anh*/
    $("img.lazy").lazyload({
        threshold : 200,
        effect : "fadeIn"
    });
    $(function() {
        $("img.lazy").lazyload();
    });


});
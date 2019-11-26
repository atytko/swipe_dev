import "bootstrap";


$(function () {
    $("#menu-toggle").click(function (e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
        $("body").toggleClass("overflow-hidden");
    });

    $(window).resize(function (e) {
        if ($(window).width() <= 768) {
            $("#wrapper").removeClass("toggled");
            $("body").removeClass("overflow-hidden");
        } else {
            $("#wrapper").addClass("toggled");
            $("body").addClass("overflow-hidden");
        }
    });

    $("#wrapper").removeClass("toggled");
    $("body").removeClass("overflow-hidden");
});

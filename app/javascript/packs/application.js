import "bootstrap";

// <--navbar-->

$(function() {
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
        $("body").toggleClass("overflow-hidden");
    });

    $(window).resize(function(e) {
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

// <--swiping-->

$(document).ready(function() {

    var animating = false;
    var cardsCounter = 0;
    var numOfCards = 6;
    var decisionVal = 80;
    var pullDeltaX = 0;
    var deg = 0;
    var $card, $cardReject, $cardLike;

    function pullChange() {
        animating = true;
        deg = pullDeltaX / 10;
        $card.css("transform", "translateX(" + pullDeltaX + "px) rotate(" + deg + "deg)");

        var opacity = pullDeltaX / 100;
        var rejectOpacity = (opacity >= 0) ? 0 : Math.abs(opacity);
        var likeOpacity = (opacity <= 0) ? 0 : opacity;
        $cardReject.css("opacity", rejectOpacity);
        $cardLike.css("opacity", likeOpacity);
    };

    function release() {

        if (pullDeltaX >= decisionVal) {
            $card.addClass("to-right");
            var offer_id = document.getElementById("offer_id").innerHTML
            var swipe_id = document.getElementById("swipe_id").innerHTML
             window.location.href = `/offers/${offer_id}/swipes/${swipe_id}`
            console.log('action to right');
        } else if (pullDeltaX <= -decisionVal) {
            $card.addClass("to-left");
            console.log('action to left');
        }

        // LOAD MORE ITEMS TO THE LIST
        if (Math.abs(pullDeltaX) >= decisionVal) {
            $card.addClass("inactive");

            setTimeout(function() {
                $card.addClass("below").removeClass("inactive to-left to-right");
                cardsCounter++;
                if (cardsCounter === numOfCards) {
                    cardsCounter = 0;
                    $(".swipe-card").removeClass("below");
                }
            }, 300);
        }

        setTimeout(function() {
            $card.attr("style", "").removeClass("reset")
                .find(".swipe-card-choice").attr("style", "");

            pullDeltaX = 0;
            animating = false;
        }, 300);
    };

    // Start here
    $(document).on("mousedown touchstart", ".swipe-card:not(.inactive)", function(e) {
        if (animating) return;

        $card = $(this);
        $cardReject = $(".swipe-card-choice.m--reject", $card);
        $cardLike = $(".swipe-card-choice.m--like", $card);
        var startX = e.pageX || e.originalEvent.touches[0].pageX;

        $(document).on("mousemove touchmove", function(e) {
            var x = e.pageX || e.originalEvent.touches[0].pageX;
            pullDeltaX = (x - startX);
            if (!pullDeltaX) return;
            pullChange();
        });

        $(document).on("mouseup touchend", function() {
            $(document).off("mousemove touchmove mouseup touchend");
            if (!pullDeltaX) return; // prevents from rapid click events
            release();
        });
    });


    $(document).on("click", "#buttonLike", function(){
      pullDeltaX = 350;
      pullChange();
      release();

    });

    $(document).on("click", "#buttonReject", function(){
      pullDeltaX = -350;
      pullChange();
      release();
    });

});

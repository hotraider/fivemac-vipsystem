fivemac = {}

$(function() {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
    })

    $("#yazi").click(function() {
        let inputValue = $("#yazi").val()
        return;
    })
})

$(document).on('keydown', function() {
    switch (event.keyCode) {
        case 27:
            fivemac.Close();
            break;
    }
});

fivemac.Close = function() {
    $("#container").fadeOut(175);
    $.post('http://fivemac-vipsystem/close');
}


$("#exit").click(function() {
    fivemac.Close();

});

let selected = 0;



$("#paket1").click(function() {
    $.post('http://fivemac-vipsystem/weapon', JSON.stringify({ id: selected, type: 'paket1' }));
    $(this).blur()
})

$("#paket2").click(function() {
    $.post('http://fivemac-vipsystem/weapon', JSON.stringify({ id: selected, type: 'paket2' }));
    $(this).blur()
})

$("#paket3").click(function() {
    $.post('http://fivemac-vipsystem/weapon', JSON.stringify({ id: selected, type: 'paket3' }));
    $(this).blur()
})






$('header span').on('click', function() {
    if ($(this).index() == 1) {
        $('.plan').css({
            fontSize: '+=2'
        });
    } else {
        $('.plan').css({
            fontSize: '-=2'
        });
    }
});
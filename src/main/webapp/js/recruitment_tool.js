$(function ($) {
    //your code here
    //alert("Hello world!");
    $('.io-txt-normal, #login-username, #login-password').each(function () {
        if ($(this).val() == '') {
            $(this).addClass('empty').val($(this).attr('_mask'));
        }

    });

    $('.io-txt-normal, #login-username, #login-password').focusin(function () {
        if ($(this).hasClass('empty')) {
            $(this).removeClass('empty');
            $(this).val('');
        }

    }).focusout(function () {
        if ($(this).val() == '') {
            $(this).addClass('empty').val($(this).attr('_mask'));
        }
    });


    $('.dropdown .btn').click(function () {
        if ($(this).hasClass('close')) {
            $(this).removeClass('close').addClass('open');
            $(this).parents('.io-panel:eq(0)').addClass('collapse');
        } else if ($(this).hasClass('open')) {
            $(this).removeClass('open').addClass('close');
            $(this).parents('.io-panel:eq(0)').removeClass('collapse');
        }
    });

    $('.profile-summary h3.collapse, .profile-experience h3.collapse, .profile-skill h3.collapse, .profile-education h3.collapse, .profile-summary h3.expand, .profile-experience h3.expand, .profile-skill h3.expand, .profile-education h3.expand').click(function () {
        if ($(this).hasClass('collapse')) {
            $(this).removeClass('collapse').addClass('expand');
            $(this).nextAll().show();
        } else {
            $(this).addClass('collapse').removeClass('expand');
            $(this).nextAll().hide();
        }
    });

    $('.io-button-group a').each(function () {
        $(this).click(function () {
            if (!$(this).parent().hasClass('multiple')) {//not multiple
                if ($(this).hasClass('checked')) {
                    if ($(this).parent().hasClass('uncheckable')) {
                        $(this).removeClass('checked');
                    }
                } else {
                    $(this).parent().find('a').removeClass('checked');
                    $(this).addClass('checked');
                }
            } else {//multiple
                if ($(this).hasClass('checked')) {
                    $(this).removeClass('checked');
                } else {
                    $(this).addClass('checked');
                }
            }

            return false;
        });
    });


});
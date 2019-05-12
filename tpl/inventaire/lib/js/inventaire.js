$(document).ready(function() {

    $("#formpick").validate({})

    window.module = "inventaire"

    var param = {}
    param = getFromObj("." + "profile")
    get_ajax_data("/inventaire/asyn_invttable_state", param, function(data) {
        if (data.etat != "0") {
            get_ajax_data("/inventaire/asyn_gen_invttable", param, function(data) {
                if (data.etat == "0") {

                } else {

                }
            })
        }
    })

    $("#corrinvt").click(function() {

        if ($(this).attr("rel") == "check") {
            $("#invtDate").removeAttr("disabled");
            $("#savebrd").show();
            $(".invtQte").each(function() {
                $(this).removeAttr("disabled");
            })
        } else {
            $("#savebrd").hide();
            $("#invtDate").attr("disabled", "disabled");
            $(".invtQte").each(function() {
                $(this).attr("disabled", "disabled");
            })
        }
    })

    $("#exe,#mag").change(function() {
        $("#list-brd").html("");
    })

    $("#btn_imprimer").click(function() {
        get_brd_for_print()
    })

    $(".navbtn").click(function() {

        if ($.isNumeric($("#brdCode").val()) && $("#brdCode").val().length > 0) {

            if ($(this).html() == "&gt;") {

                $("#brdCode").val(parseInt($("#brdCode").val()) + 1)
            } else if ($("#brdCode").val() != 1) {
                $("#brdCode").val(parseInt($("#brdCode").val()) - 1)
            }

        } else {
            $("#brdCode").val(1)
        }
        get_brd()
    })

    $("#btn_get_brd").click(function() {
        if ($("#brdCode").val().length != 0) {
            get_brd()
        } else {
            $.alertMsg("Merci d'introduire un numéro de bordereau", "Alerte")
        }
    })

    $("#btn_ecart").click(function() {
        inti_dialog_ecart();
    })

    $("#invtDate").mask("00r00r0000", {
        translation: {
            'r': {
                pattern: /[\/]/,
                fallback: '/'
            },
            placeholder: "__/__/____"
        }
    });
    $("#savebrd").click(function() {
        if ($("#list-brd table tr.lineitem").length != 0) {
            save_brd();
        } else {
            $.alertMsg("Merci de choisir un bordereau", "Alerte")
        }
    })

})

function inti_dialog_print() {

    $("#ecartsinvt").hide()
    $("#printbrd").show()

    $("#dialogs").dialog({
        buttons: {
            "Annuler": function() {
                $(this).dialog("close");
            },
            "Imprimer": function() {
                $("#printbrd").printThis({
                    importCSS: true,
                    pageTitle: "Bordereau de l'inventaire",
                })
            }
        },
        close: function(event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Impression des bordereau de l'inventaire",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

    $("#dialogs").dialog("open");
}


function inti_dialog_ecart() {

    $("#ecartsinvt").show()
    $("#printbrd").hide()

    $("#dialogs").dialog({
        buttons: {
            "Imprimer": function() {
                $("#ecartsinvt").printThis({
                    importCSS: true,
                    pageTitle: "Les ecars de l'inventaire",
                })
            },
            "Annuler": function() {
                $(this).dialog("close");
            },
            "Calculer les ecarts": function() {
                calc_ecart();
            }
        },
        close: function(event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Gestion des ecarts de l'inventaire",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98
    })

    $("#dialogs").dialog("open");
}

function calc_ecart() {
    var param = getFromObj("." + "profile");
    get_ajax_data("/inventaire/asyn_gen_ecart", param, function(data) {
        $.buildTable("#ecartsinvt", "Liste des ecarts de l'inventaire", data.data, []);
        $("#ecartsinvt table tr.lineitem").each(function() {

            obj = JSON.parse($(this).attr("obj"));
            var html = '<td>'

            html += '</td>'
            html += '<td>'
            html += '<button class="btn btn-primary btn-xs rds">Rederessement</button>'
            html += '</td>'

            $(this).append(html);
        })
        $(".rds").click(function() {
            var param = JSON.parse($(this).parent().parent().attr("obj"));
            param.obs = $(this).parent().parent().find('.invObservation').val();
            get_ajax_data("/inventaire/asyn_rds_stck", param, function(data) {
                if (data.etat == "0") {
                    calc_ecart();
                }
            })
        })
    })
}

function save_brd() {

    if (/^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/.test($("#invtDate").val())) {
        var err = false;
        var obj = {}
        var objs = []
        $("#list-brd table tr.lineitem").each(function() {

            obj = JSON.parse($(this).attr("obj"));
            obj.invtQte = $(this).find(".invtQte").val();
            if (obj.invtQte.length == 0) {
                $(this).find(".invtQte").val(0)
                obj.invtQte = 0;
            }

            $(this).find(".invtQte").val(parseFloat(obj.invtQte))

            if (!/^-?\d*\.?\d*$/.test(parseFloat(obj.invtQte))) {
                err = true;
                $(this).find(".invtQte").addClass("error");
            } else {
                $(this).find(".invtQte").removeClass("error");
            }

            objs.push(obj);
        })

        if (err) {
            $.alertMsg("Merci de vrifier les quantité introduite", "Alerte")
        } else {

            $.confirm("Confirmer la sauvegarde du bordereau", function() {
                var param = getFromObj("." + "profile");
                param.data = objs;
                param.date = $("#invtDate").val();
                get_ajax_data("/inventaire/asyn_save_ivntbrd", param, function(data) {

                    if (data.etat == 1) {
                        get_brd()
                    }
                })
            })

        }
    } else {
        $.alertMsg("Merci d'introduire une date d'inventaire valide", "Alerte")
    }

}


function get_brd() {

    var param = getFromObj("." + "profile");
    param.brdnum = $("#brdCode").val();
    get_ajax_data("/inventaire/asyn_get_ivntbrd", param, function(data) {
        if (data.data.data.length == 0) {
            $.alertMsg("Bordereau innexistant !", "Bordereau d'inventaire")
        }
        if (data.etat == "0") {
            $.buildTable("#list-brd", "Bordereau de l'inventaire N° " + param.brdnum, data.data, []);
            $("#list-brd table tr.lineitem").each(function() {
                var obj = JSON.parse($(this).attr("obj"));
                if (obj.h_etatCode != 61) {
                    var status = "disabled"
                    var value = obj.p_invtQte
                    $("#savebrd").hide();
                    $("#invtDate").val(dateformat(obj.p_invtDate.date.split(' ')[0])).attr("disabled", "disabled");
                } else {
                    var status = ""
                    var value = ""
                    $("#savebrd").show();
                    $("#invtDate").val("").removeAttr("disabled");
                }
                var html = '<td>'
                html += '<input class="invtQte" ' + status + '  type="text" value="' + value + '" placeholder="Qte inventaire">'
                html += '</td>'
                $(this).append(html);
                $("#list-brd table tr.lineitem").find(".invtQte").first().focus();
            })
            $.chk_btnstate("#corrinvt", false)
        }
    })
}

function get_brd_for_print() {

    var param = getFromObj("." + "profile");
    param.brdnum = ""
    get_ajax_data("/inventaire/asyn_get_ivntbrd", param, function(data) {

        if (data.data.data.length == 0) {
            $.alertMsg("Verifier si les bordereau d'inventaire son généré !", "Bordereau d'inventaire")
        }

        if (data.etat == "0") {

            var html = '<table class="table table-condenced table-bordered tabprint">\n\
                        <tr>\n\
                            <td colspan="3">\n\
                               <h2> Bordereau N° 1 exercice ' + param.exe + ' Magasin ' + param.mag + ' Date : .................</h2>\n\
                            </td>\n\
                        </tr>\n\
                        <tr>\n\
                            <td>\n\
                                <strong>Code article</strong>  \n\
                            </td>\n\
                            <td>\n\
                                <strong>Designation</strong>  \n\
                            </td>\n\
                            <td>\n\
                                 <strong>Qte</strong>  \n\
                            </td>\n\
                        </tr>\n\
                        '
            var count = 1;
            $.each(data.data.data, function(index, value) {
                if (count != value.p_invNumBorderau) {
                    html += '</table>\n\
                           <div class="barecodepaging"></div>\n\
                        <table class="table table-condenced table-bordered tabprint">\n\
                        <tr>\n\
                            <td colspan="3">\n\
                               <h2> Bordereau N° ' + value.p_invNumBorderau + ' exercice ' + param.exe + ' Magasin ' + param.mag + '  Date : .................</h2>\n\
                            </td>\n\
                        </tr>\n\
                        <tr>\n\
                            <td>\n\
                                 <strong>Code article</strong>  \n\
                            </td>\n\
                            <td>\n\
                                <strong>Designation</strong>  \n\
                            </td>\n\
                            <td>\n\
                                 <strong>Qte</strong>  \n\
                            </td>\n\
                        </tr>\n\
                        '
                    count++
                }

                html += '<tr>\n\
                            <td class="col-md-3">\n\
                                ' + value.g_artCode + '  \n\
                            </td>\n\
                            <td>\n\
                               ' + value.g_artDesignation + '  \n\
                            </td>\n\
                            <td class="col-md-2">\n\
                                ...... \n\
                            </td>\n\
                        </tr>\n\
                        '

            })

            html += '</table>'

            $("#printbrd").html(html);
            inti_dialog_print()
        }

    })

}
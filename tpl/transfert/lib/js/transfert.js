$(document).ready(function() {

    $("#analytique").dialog({
        buttons: {
            "Ok": function() {
                $(this).dialog("close");
            }
        },
        close: function(event, ui) {
            $(this).dialog("close");
        },
        autoOpen: false,
        resizable: true,
        title: "Gestion des affectations analytique",
        modal: true,
        height: $(window).height() * 0.5,
        width: $(window).width() * 0.5,
    })

    get_stkalert();
    actualise_stock()

    window.arttrace = ""
    window.lottrace = ""

    window.modul = "transfert";
    $("#get_trans_form").validate({
        rules: {
        }
    })

    $("#valdartline").click(function() {
        console.log("test test test debut");

        $("#addartbeform").submit();

        console.log("test test test fin");
    })

    var validateur = $("#addartbeform").validate({
        rules: {
        },
        messages: {
        }
    });

    $("#transDateperomption").mask("00r00r0000", {
        translation: {
            'r': {
                pattern: /[\/]/,
                fallback: '/'
            },
            placeholder: "__/__/____"
        }
    });

    $("#addform").validate({
        rules: {
        }
    })

    $("#artEtatCode").select2()

    $("#dialogs").hide();
    /*tabRegelTransfert[demadeurId] = [listExpideteurId];*/
    tabRegelTransfert = [];
    tabRegelTransfert[3] = [1, 2];
    tabRegelTransfert[2] = [1, 3];
    tabRegelTransfert[4] = [1, 2, 3];
    tabRegelTransfert[5] = [1, 2, 3];
    $("#btn_nouveau_trans").click(function() {
        var param = {}
        param.exe = $("#exe").val();
        get_ajax_data("/transfert/asyn_get_transuniqcode", param, function(data) {
            reset_form();
            $("#addform").attr("action", "ajout_transfert");
            $("#transMagdem").val($("#mag").val());
            get_ajax_data("/main/asyn_get_mag", {}, function(data) {
                
                $("#transMagliv").html("");
                $.each(data.mag, function(index, value) {
                    if(parseInt($("#mag").val()) !== 1){
                        $("#transMagliv").parent().show();
                    // console.log(tabRegelTransfert[parseInt($("#mag").val())].indexOf(parseInt(value.MAGCOD)) );
                    if (parseInt(value.MAGCOD) !== parseInt($("#mag").val()) ) {
                        if(tabRegelTransfert[parseInt($("#mag").val())].indexOf(parseInt(value.MAGCOD)) !== -1){
                            $("#transMagliv").append('<option value="' + value.MAGCOD + '">' + value.MAGLIB + '</option>');

                        }
                    }
                    else
                    {

                        $("#transMagdem").val(value.MAGLIB);
                    }
                }
                else{

                    $("#transMagliv").parent().hide();
                    if (parseInt(value.MAGCOD) == parseInt($("#mag").val()) ) {
                        $("#transMagdem").val(value.MAGLIB);
                    }
                }
                })
            })
            edit_mode();
            $(".addartform").show();
            inti_dialog();
            $("#transExercice").val($("#exe").val())
            $("#transCode").val(data.data);
        });
    })


    edit_mode()

    reset_form();

    $(".delart").livequery(function() {
        $(this).click(function() {
            $(this).parent().parent().remove();
        })
    })

})

function modelautoaff() {

    var param = {};
    var elmselect = $("#affectation")
    elmselect.html("");

    if (typeof elmselect.attr("cachit") != "undefined") {
        if (elmselect.attr("cachit") == "") {

            var uidcach = guid();
            window[uidcach] = elmselect.attr("selecmodelaff");
            elmselect.attr("cachit", uidcach)
            var prm = elmselect.attr("selecmodelaff").split(":");
        } else {
            var prm = window[elmselect.attr("cachit")].split(":");
        }
    } else {
        var prm = elmselect.attr("selecmodelaff").split(":");
    }

    if (typeof prm[0] != 'undefined' && typeof prm[1] != 'undefined' && typeof prm[2] != 'undefined') {
        param.model = prm[0]
        param.id = prm[1]
        param.lib = prm[2]
        var ids = prm[1];
        var libs = prm[2];
        param.codetype = $("#typeAffectation").val();
        get_ajax_data("/transfert/asyn_getautoselectaff", param, function(data) {
            elmselect.append('<option value=""></option>');
            $.each(data.data, function(index, value) {
                elmselect.append('<option value="' + value[ids] + '">' + value[libs] + '</option>');
            })
            $(elmselect).select2();
            $(elmselect).removeAttr("selecmodelaff");
        });
    }

}

function non_edit_mode() {
    $("[editmode]").attr("disabled", "disabled");

}

function edit_mode() {
    $("[editmode]").removeAttr("disabled");

}


function reset_form() {
    $("#transartlineobject").html("");
    $("#addform").find("input").each(function() {
        if ($(this).attr("id") !== "stkTransDatedem")
            $(this).val("");
    })

    $("#addform").find("select").each(function() {
        $(this).val("").trigger("change")
    })

}

function inti_dialog_non_edit(param) {

    $("#dialogs").dialog({
        buttons: {
            "Annuler": function() {
                $(this).dialog("close");
            },
            "Imprimer": function() {
                $("#printarea").printThis({
                    importCSS: true,
                    pageTitle: "Bon de transfert",
                })
            }
        },
        close: function(event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Consultation des transfert",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

    $("#dialogs").dialog("open");

}

function inti_dialog(param) {

    $("#dialogs").dialog({
        buttons: {
            "Sauvegarder": function() {
                if ($(".stkTransfertDetail").length > 0) {
                    $("#addform").submit();
                } else {
                    $.alertMsg("la liste des articles est vides", "Transfert des articles")
                }
            },
            "Annuler": function() {
                $(this).dialog("close");
            }
        },
        close: function(event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Gestion des transomations",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

    window.mode = "add";

    $("#dialogs").dialog("open");



}



function inti_dialog_liv(param) {

    $("#dialogs").dialog({
        buttons: {
            "Livrer": function() {
                if ($(".stkTransfertDetail").length > 0) {
                    $("#addform").submit();
                } else {
                    $.alertMsg("la liste des articles est vides", "Transfert des articles")
                }
            },
            "Annuler": function() {
                $(this).dialog("close");
            }
        },
        close: function(event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Gestion des transomations",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

    window.mode = "liv";

    $("#dialogs").dialog("open");



}

function populate_list(data) {

    var modifier = {};
    modifier.titre = "Mise à jour"
    modifier.attr = ["a_transCode"]
    modifier.class = "modifierbtn"
    modifier.fnct = function(param) {

        get_ajax_data("/transfert/asyn_get_trans_object", param, function(data) {
            reset_form();
            edit_mode();

            $.each(data.data[0], function(index, value) {

                if (value != null) {
                    if ($("#" + index)) {
                        if ($("#" + index).prop("tagName") == "SELECT") {
                            $("#" + index).val(value).trigger("change")
                        } else {
                            if (typeof value.date != 'undefined') {
                                $("#" + index).val(dateformat(value.date.split(' ')[0]))
                            } else {
                                $("#" + index).val(value)
                            }
                        }
                    }
                }

            })
            $("#transartlineobject").html("")
            $.each(data.datas, function(indexs, values) {

                var html = "<tr class='stkTransfertDetail'>";
                html += "<td id='transArtcode' class='itemart'>" + values.transArtcode.artCode + "</td>";
                html += "<td >" + values.transArtcode.artDesignation + "</td>";
                html += "<td id='transTracecode' class='itemart'>" + values.transTracecode + "</td>";
                html += "<td id='transLottracecode' class='itemart'>" + values.transLottracecode + "</td>";
                html += "<td id='transQte' class='itemart'>" + values.transQte + "</td>";
                html += '<td><button  class="btn btn-danger btn-xs delart"><span class="glyphicon glyphicon-remove-circle"></span></button></td>';

                html += "</tr>";

                $("#transartlineobject").append(html)
            })
            $(".addartform").show();
            $("#addform").attr("action", "update_transfert");
            inti_dialog();
        });
    }

    var consult = {};
    consult.titre = "Consultation"
    consult.attr = ["a_transCode"]
    consult.class = "consultbtn"
    consult.fnct = function(param) {
        get_ajax_data("/transfert/asyn_get_trans_object", param, function(data) {

            reset_form();

            non_edit_mode()

            $.each(data.data[0], function(index, value) {

                if (value != null) {

                    if ($("#" + index + "p")) {
                       
                        if (typeof value.date != 'undefined') {
                            $("#" + index + "p").html(dateformat(value.date.split(' ')[0]))
                        } else {
                            $("#" + index + "p").html(value)
                        }

                    }

                    if ($("#" + index + "i")) {
                        $("#" + index + "i").html(value)
                    }

                    if ($("#" + index)) {

                        if ($("#" + index).prop("tagName") == "SELECT") {
                            $("#" + index).append('<option value="' + value + '">' + value + '</option>')
                            $("#" + index).val(value).trigger("change")
                        } else {
                            if (typeof value.date != 'undefined') {
                                $("#" + index).val(dateformat(value.date.split(' ')[0]))
                            } else {
                                $("#" + index).val(value)
                            }
                        }
                    }

                }

            })

            $("#transartlineobject").html("");
            $("#transartlineobjectp").html("");

            $.each(data.datas, function(indexs, values) {


                var html = "<tr class='stkTransfertDetail'>";
                html += "<td id='transArtcode' class='itemart'>" + values.transArtcode.artCode + "</td>";
                html += "<td >" + values.transArtcode.artDesignation + "</td>";
                html += "<td id='transQtedem' class='itemart'>" + values.transQtedem + "</td>";
                html += "<td id='transQteliv' class='itemart'>" + values.transQteliv + "</td>";
                html += "</tr>";
                $("#transartlineobject").append(html)
                $("#transartlineobjectp").append(html);
            })

            $("#addform").attr("action", "");
            $(".addartform").hide();
            inti_dialog_non_edit();
        });
    }




    var livr = {};
    livr.titre = "Livraison"
    livr.attr = ["a_transCode"]
    livr.class = "livraisonbtn"
    livr.dr = "livrasiontrans"
    livr.condition = function(param) {
        return param.datarefval.a_transMagliv == $("#mag").val() && param.datarefval.b_etatCode != 92;
    }

    livr.fnct = function(param) {

        get_ajax_data("/transfert/asyn_get_trans_object", param, function(data) {

            reset_form();

            edit_mode()

            $.each(data.data[0], function(index, value) {

                if (value != null) {

                    if ($("#" + index + "p")) {
                        if (typeof value.date != 'undefined') {
                            $("#" + index + "p").html(dateformat(value.date.split(' ')[0]))
                        } else {
                            $("#" + index + "p").html(value)
                        }

                    }

                    if ($("#" + index + "i")) {
                        $("#" + index + "i").html(value)
                    }

                    if ($("#" + index)) {

                        if ($("#" + index).prop("tagName") == "SELECT") {
                            $("#" + index).append('<option value="' + value + '">' + value + '</option>')
                            $("#" + index).val(value).trigger("change")
                        } else {
                            if (typeof value.date != 'undefined') {
                                $("#" + index).val(dateformat(value.date.split(' ')[0]))
                            } else {
                                $("#" + index).val(value)
                            }
                        }
                    }

                }

            })

            $("#transartlineobject").html("");
            $("#transartlineobjectp").html("");
            $("#stkTransDateliv").val($("#dateinp").val());
            $.each(data.datas, function(indexs, values) {


                var html = "<tr class='stkTransfertDetail'>";
                html += "<td id='transArtcode' class='itemart'>" + values.transArtcode.artCode + "</td>";
                html += "<td >" + values.transArtcode.artDesignation + "</td>";
                html += "<td id='transQtedem' class='itemart'>" + values.transQtedem + "</td>";
                html += "<td id='transQteliv' class='itemart inputlike'  contenteditable='true'>" + values.transQtedem + "</td>";
                html += "</tr>";
                $("#transartlineobject").append(html)
                $("#transartlineobjectp").append(html);
            })

            $("#addform").attr("action", "ajout_transfert");
            $(".addartform").hide();
            inti_dialog_liv();
        });
    }


    var annul = {};
    annul.titre = "Annulation"
    annul.attr = ["a_transCode"]
    annul.class = "btn-danger"
    annul.dr = "annulationtrans"
    annul.fnct = function(param) {

        $.confirm("Voulez vous vraiment annulé se bon de transfert", function() {
            get_ajax_data("/transfert/asyn_annulation_trans", param, function(data) {
                $("#list-container").html("");
            });
        })

    }

    $.buildTable("#list-container", "Liste des transferts", data.data, [livr, consult, annul]);

}


function ajout_article_trans(data) {
    console.log("callback suis ! ")

    if (data.data == 1) {

        var execp = false;
        $("#transartlineobject").find(".stkTransfertDetail").each(function() {
            if ($("#transArtcode").val() == $(this).find("#transArtcode").html()) {
                $.alertMsg("Vous avez dèja introduit cette article", "Ajout article")
                execp = true;
            }
        })

        if (!execp) {
            var selectmap = $("#transArtcode").select2('data');
            var html = "<tr class='stkTransfertDetail'>";
            html += "<td id='transArtcode' class='itemart'>" + $("#transArtcode").val() + "</td>";
            html += "<td >" + selectmap[0].text + "</td>";
            html += "<td id='transQtedem' class='itemart'>" + $("#transQte").val() + "</td>";
            html += "<td id='$transQteliv' class='itemart'>-</td>";
            html += '<td><button  class="btn btn-danger btn-xs delart"><span class="glyphicon glyphicon-remove-circle"></span></button></td>';
            html += "</tr>";

            $("#transartlineobject").append(html)
            $("#transQte").tipsy("hide").removeAttr('original-title');
            $('#transArtcode').select2('open');
        }
    } else {

        $("#transQte").attr('title', 'Qte insuffisante en stock / QTE = ' + data.qte);
        $("#transQte").tipsy({
            fade: true,
            gravity: 'w'
        });
        $("#transQte").tipsy("show");

        $("#transQte").val("");
        $("#transQte").focus();
    }

}


function getdetailObject() {

    var objs = [];
    $(".stkTransfertDetail").each(function() {
        var obj = {};
        $(this).find(".itemart").each(function() {
            obj[$(this).attr("id")] = $(this).html();
        })
        objs.push(obj);
    })

    return objs;

}

function getdetailObjectliv() {

    var objs = [];
    var err = false;
    $(".stkTransfertDetail").each(function() {

        var qtedem = $(this).find("#transQtedem").html()
        var qteliv = $(this).find("#transQteliv").html()
        var valid = (qteliv.match(/^-?\d*(\.\d+)?$/));

        if (valid) {
            if (parseFloat(qteliv) > parseFloat(qtedem)) {
                err = true;
                $(this).find("#transQteliv").addClass("error")
            } else {
                $(this).find("#transQteliv").removeClass("error")
            }
        } else {
            err = true;
            $(this).find("#transQteliv").addClass("error")
        }

        var obj = {};
        $(this).find(".itemart").each(function() {
            obj[$(this).attr("id")] = $(this).html();
        })
        objs.push(obj);
    })

    if (err) {
        return 0;
    } else {
        return objs;
    }

}


function ajout_transfert() {

    var param = {}

    param = getFromObj("#" + "addform")

    if (window.mode == "liv") {
        param.transCodes = getdetailObjectliv();
        if (param.transCodes != 0) {
            param.mag = $("#mag").val()
            get_ajax_data("/transfert/asyn_liv_trans", param, function(data) {
                if (data.etat == "1") {
                    $("#dialogs").dialog("close");
                }
            })
        } else {
            $.alertMsg("Merci de verifier les Qte livré")
        }

    } else if (window.mode == "add") {
        param.transCodes = getdetailObject();
        param.mag = $("#mag").val()
        get_ajax_data("/transfert/asyn_ajout_dem_trans", param, function(data) {
            if (data.etat == "1") {
                $("#dialogs").dialog("close");
            }
        })

    }


}


function update_transfert() {

    var param = {}
    param = getFromObj("#" + "addform")
    get_ajax_data_file("/transfert/asyn_update_trans", param, "artImage", function(data) {
        if (data.etat == "1") {
            $("#dialogs").dialog("close");
        }
    })

}

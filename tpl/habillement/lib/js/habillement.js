$(document).ready(function () {

    actualise_stock();

    window.arttrace = "";
    window.lottrace = "";

    window.modul = "habillement";

    $("#get_demapro_form").validate({
        rules: {

        }
    })

    $("#valdartline").click(function () {
        $("#addartbeform").submit();
    })

    $("#addartbeform").validate({
        rules: {
            "demaproQte": {
                number: true
            },
            "demaproDate": {
                "required": true,
                "regex": /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/,
            }
        }
    });

  


    $("#addform").validate({
        rules: {
            "demaproDate": {
                "required": true,
                "regex": /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/,
            }
        }
    })

    $("#artEtatCode").select2()

    $("#dialogs").hide();


    $("#btn_nouveau_demapro").click(function () {
        var param = {}
        param.exe = $("#exe").val();
        get_ajax_data("/demapro/asyn_get_demaprouniqcode", param, function (data) {
            reset_form();
            $("#addform").attr("action", "ajout_approvisonnement");
            edit_mode();
            $(".addartform").show();
            inti_dialog();
            $("#demaproExercice").val($("#exe").val())
            $("#demaproCode").val(data.data);
        });
    })


    edit_mode()

    reset_form();

    $(".delart").livequery(function () {
        $(this).click(function () {
            $(this).parent().parent().remove();
        })
    })

})

function non_edit_mode() {
    $("[editmode]").attr("disabled", "disabled");

}

function edit_mode() {
    $("[editmode]").removeAttr("disabled");

}


function reset_form() {
    $("#demaproartlineobject").html("");
    $("#addform").find("input").each(function () {
        $(this).val("")
    })

    $("#addform").find("select").each(function () {
        $(this).val("").trigger("change")
    })

}

function inti_dialog_non_edit(param) {

    $("#dialogs").dialog({
        buttons: {

            "Annuler": function () {
                $(this).dialog("close");
            },
            "Imprimer": function () {
                $("#printarea").printThis({
                    importCSS: true,
                    pageTitle: "Demande d'approvisionnement",
                })
            }
        },
        close: function (event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Consultation des demmandes d'approvisionement",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

    $("#dialogs").dialog("open");

}

function inti_dialog(param) {

    $("#dialogs").dialog({
        buttons: {
            "Sauvegarder": function () {
                if($(".stkDemaproDet").length > 0){
                $("#addform").submit();
            }else{
                $.alertMsg("La liste des articles est vide","Demmande d'approvisionnement")
            }
            },
            "Annuler": function () {
                $(this).dialog("close");
            }
        },
        close: function (event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Gestion des demmandes d'approvisonement",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

    $("#dialogs").dialog("open");

}

function populate_list(data) {

    var modifier = {};
    modifier.titre = "Mise à jour"
    modifier.attr = ["a_demaproCode"]
    modifier.class = "modifierbtn"
    modifier.fnct = function (param) {

        get_ajax_data("/demapro/asyn_get_demapro_object", param, function (data) {
            reset_form();
            edit_mode();

            $.each(data.data[0], function (index, value) {

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
            $("#demaproartlineobject").html("")
            $.each(data.datas, function (indexs, values) {

                var html = "<tr class='stkDemaproDet'>";
                html += "<td id='demaproArtcode' class='itemart'>" + values.demaproArtcode.artCode + "</td>";
                html += "<td >" + values.demaproArtcode.artDesignation + "</td>";
                html += "<td id='demaproQte' class='itemart'>" + values.demaproQte + "</td>";
                html += '<td><button  class="btn btn-danger btn-xs delart"><span class="glyphicon glyphicon-remove-circle"></span></button></td>';

                html += "</tr>";

                $("#demaproartlineobject").append(html)
            })
            $(".addartform").show();
            $("#addform").attr("action", "update_approvisonnement");
            inti_dialog();
        });
    }

    var consult = {};
    consult.titre = "Consultation"
    consult.attr = ["a_demaproCode"]
    consult.class = "consultbtn"
    consult.fnct = function (param) {
        
        get_ajax_data("/demapro/asyn_get_demapro_object", param, function (data) {
            
            reset_form();
            
            non_edit_mode()

            $.each(data.data[0], function (index, value) {

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
            $("#demaproartlineobject").html("");
            $("#demaproartlineobjectp").html("");
            $.each(data.datas, function (indexs, values) {


                var html = "<tr class='stkDemaproDet'>";
                html += "<td id='demaproArtcode' class='itemart'>" + values.demaproArtcode.artCode + "</td>";
                html += "<td >" + values.demaproArtcode.artDesignation + "</td>";
                html += "<td id='demaproQte' class='itemart'>" + values.demaproQte + "</td>";
                html += "</tr>";
                $("#demaproartlineobject").append(html);
                $("#demaproartlineobjectp").append(html);
            })

            $("#addform").attr("action", "");
            $(".addartform").hide();
            inti_dialog_non_edit();
        });
    }


    var annul = {};
    annul.titre = "Annulation"
    annul.attr = ["a_demaproCode"]
    annul.class = "supptbtn"
    annul.dr = "annulationdemapro"
    annul.fnct = function (param) {

        $.confirm("Voulez vous vraiment annulé se bon d'approvionnement", function () {

            get_ajax_data("/demapro/asyn_annulation_demapro", param, function (data) {
                $("#list-container").html("");
            });

        })

    }

    $.buildTable("#list-container", "Liste des demmandes d'approvisionnement", data.data, [annul, consult]);
    
}


function ajout_article_demapro() {
    var execp = false;
    $("#demaproartlineobject").find(".stkDemaproDet").each(function () {
        if ($("#demaproArtcode").val() == $(this).find("#demaproArtcode").html()) {
            $.alertMsg("Vous avez dèja introduit cette article", "Ajout article")
            execp = true;
        }
    })

    if (!execp) {
        var selectmap = $("#demaproArtcode").select2('data');

        var html = "<tr class='stkDemaproDet'>";
        html += "<td id='demaproArtcode' class='itemart'>" + $("#demaproArtcode").val() + "</td>";
        html += "<td >" + selectmap[0].text + "</td>";
        html += "<td id='demaproQte' class='itemart'>" + $("#demaproQte").val() + "</td>";
        html += '<td><button  class="btn btn-danger btn-xs delart"><span class="glyphicon glyphicon-remove-circle"></span></button></td>';
        html += "</tr>";

        $("#demaproartlineobject").append(html)
    }

}


function getdetailObject() {

    var objs = [];
    $(".stkDemaproDet").each(function () {
        var obj = {};
        $(this).find(".itemart").each(function () {
            obj[$(this).attr("id")] = $(this).html();
        })
        objs.push(obj);
    })

    return objs;

}


function ajout_approvisonnement() {

    var param = {}

    param = getFromObj("#" + "addform")
    param.demaproCodes = getdetailObject();
    param.mag = $("#mag").val()
    get_ajax_data("/demapro/asyn_ajout_demapro", param, function (data) {
        if (data.etat == "1") {
            $("#dialogs").dialog("close");
        }
    })

}


function update_approvisonnement() {

    var param = {}
    param = getFromObj("#" + "addform")
    get_ajax_data_file("/demapro/asyn_update_demapro", param, "artImage", function (data) {
        if (data.etat == "1") {
            $("#dialogs").dialog("close");
        }
    })

}

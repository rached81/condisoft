$(document).ready(function () {

    actualise_stock()

    window.arttrace = ""
    window.lottrace = ""

    window.modul = "entree";
    $("#get_entree_form").validate({
        rules: {

        }
    })

    get_ajax_data("/entree/asyn_get_entuniqcodetrace", {}, function (data) {
        window.lottrace = data.data
    });
    $("#valdartline").click(function () {
        get_ajax_data("/entree/asyn_get_entuniqcodetrace", {}, function (data) {
            window.arttrace = data.data
            $("#addartbeform").submit();
        });
    })

    $("#valdartlinelot").click(function () {
        get_ajax_data("/entree/asyn_get_entuniqcodetrace", {}, function (data) {
            get_ajax_data("/entree/asyn_get_entuniqcodetrace", {}, function (datas) {
                window.arttrace = data.data
                window.lottrace = datas.data
                $("#addartbeform").submit();
            });
        });
    })

    $("#addartbeform").validate({
        rules: {
            "entQte": {
                number: true
            }, "entQtesurplus": {
                number: true
            },
            "entPu": {
                required: true,
                number: true
            },
            "entDateperomption": {
                "required": true,

            }
        }
    });

    $(".client").hide();
    $(".motif").hide();


    $("#entTypecode").change(function () {

        if ($(this).val() != null) {
            if ($(this).val() == 0) {
                $(".motif").hide();
                $(".client").hide();
            } else {
                $(".motif").show();

                if ($("#entMotifcode").val() != null) {
                    if ($("#entMotifcode").val() == 0) {
                        $(".client").show();
                    } else {
                        $(".client").hide();
                    }
                }

            }
        }
    })



    $("#entMotifcode").change(function () {
        if ($(this).val() != null) {
            if ($(this).val() == 0) {
                $(".client").show();
            } else {
                $(".client").hide();
            }
        }
    })


    $("#addform").validate({
        rules: {

        }
    })

    $("#artEtatCode").select2()

    $("#dialogs").hide();
    $("#btn_nouveau_entree").click(function () {
        var param = {}
        param.exe = $("#exe").val();
        get_ajax_data("/entree/asyn_get_entuniqcode", param, function (data) {
            reset_form();
            $("#addform").attr("action", "ajout_entree");
            edit_mode();
            $(".addartform").show();
            inti_dialog();
            $("#entExercice").val($("#exe").val())
            $("#entCode").val(data.data);
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
    $("#entartlineobject").html("");
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
               if($("#entTypecodep").html()=='Exceptionel'){
                   $("#motf").show();
               }else{
                   $("#motf").hide();
               }
                $("#printarea").printThis({
                    importCSS: true,
                    pageTitle: "Bon d'entrée",
                })
            }
        },
        close: function (event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Consultation des entrée",
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
                $("#addform").submit();
            },
            "Annuler": function () {
                $(this).dialog("close");
            },
            "Imprimer Code bare": function () {
                if ($(".stkEntreDetail").length > 0) {
                    $("#printbarecode").html("");
                    var inc = 0
                    $(".stkEntreDetail").each(function () {
                        var artcode = $(this).find("#entArtcode").html();
                        var artdesi = $(this).find("#desiart").html();
                        var fornum = parseInt($(this).find("#entQte").html());
                        for (count = 0; count < fornum; count++) {
                            var nameide = "bare" + inc
                            $("#printbarecode").append('<div style="margin-left:10px;font-size:22px;">' + artdesi + '</div>')
                            $("#printbarecode").append('<svg id="' + nameide + '"></svg>')
                            $("#" + nameide).JsBarcode(artcode);
                            $("#printbarecode").append('<br><div class="barecodepaging"></div>')
                            inc++
                        }

                    })
                    $("#printbarecode").printThis({
                        importCSS: true,
                        pageTitle: "",
                    })
                }
            }
        },
        close: function (event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Gestion des Entrée",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

    $("#dialogs").dialog("open");
}

function populate_list(data) {

    var modifier = {};
    modifier.titre = "Mise à jour"
    modifier.attr = ["a_entCode"]
    modifier.class = "modifierbtn"
    modifier.fnct = function (param) {

        get_ajax_data("/entree/asyn_get_entree_object", param, function (data) {
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

                $("#entFournisseurcode").val(data.data[0].entFournisseurcode.frsCode).trigger("change");
            })

            $.each(data.datas, function (indexs, values) {

                var html = "<tr class='stkEntreDetail'>";
                html += "<td id='entArtcode' class='itemart'>" + values.entArtcode.artCode + "</td>";
                html += "<td >" + values.entArtcode.artDesignation + "</td>";
                html += "<td id='entCodetrace' class='itemart'>" + values.entCodetrace + "</td>";
                html += "<td id='entQte' class='itemart'>" + values.entQtea + "</td>";
                html += "<td id='entQtesurplus' class='itemart'>" + values.entQtesurplus + "</td>";
                html += "<td id='entDateperomption' class='itemart'>" + dateformat(values.entDateperomptiona.date.split(' ')[0]) + "</td>";
                html += "<td id='entPu' class='itemart'>" + values.entPu + "</td>";
                if (values.tvaCode != null) {
                    html += "<td id='tvaCode' class='itemart' >" + values.tvaCode.tvaCode + "</td>";
                } else {
                    html += "<td id='tvaCode' class='itemart' ></td>";
                }
                html += "<td id='entPrixtotale'class='itemart'>" + values.entPrixtotale + "</td>";
                html += '<td><button  class="btn btn_danger btn_xs delart"><span class="glyphicon glyphicon-remove-circle"></span></button></td>';
                html += "</tr>";
                $("#entartlineobject").html("")
                $("#entartlineobject").append(html)
            })
            $(".addartform").show();
            $("#addform").attr("action", "update_entree");
            inti_dialog();
        });
    }

    var consult = {};
    consult.titre = "Consultation"
    consult.attr = ["a_entCode"]
    consult.class = "consultbtn"
    consult.fnct = function (param) {
        get_ajax_data("/entree/asyn_get_entree_object", param, function (data) {
            
            reset_form();
            
            non_edit_mode();
            
            $.each(data.data[0], function (index, value) {

                if (value != null) {

                    if ($("#" + index + "p")) {
                        if (typeof value.date != 'undefined') {
                            $("#" + index + "p").html(dateformat(value.date.split(' ')[0]))
                        } else {
                            if (typeof value != 'undefined') {
                                $("#" + index + "p").html(value)
                            }
                        }

                    }

                    if ($("#" + index + "i")) {
                        $("#" + index + "i").html(value)
                    }


                    if ($("#" + index)) {
                        if ($("#" + index).prop("tagName") == "SELECT") {
                            if (typeof value != 'undefined') {
                                $("#" + index).val(value).trigger("change")
                            }
                        } else {
                            if (typeof value.date != 'undefined') {
                                $("#" + index).val(dateformat(value.date.split(' ')[0]))
                            } else {
                                if (typeof value != 'undefined') {
                                    $("#" + index).val(value)
                                }
                            }
                        }
                    }

                    if (index == "entTypecode") {

                        if (value == 0) {
                            $("#entTypecodep").html("Oridinaire")
                            $(".etrbep").hide();
                        } else {
                            $("#entTypecodep").html("Exceptionel")
                            $(".etrbep").show();
                        }
                    }


                    if (index == "entMotifcode") {

                        if (value == 0) {
                            $("#entMotifcodep").html("Retour client")

                        } else {
                            $("#entMotifcodep").html("Divers")

                        }
                    }

                }

            })

            if (data.data[0].entFournisseurcode !== null) {
                $("#entFournisseurcode").val(data.data[0].entFournisseurcode.frsCode).trigger("change");
                $("#entFournisseurcodep").html(data.data[0].entFournisseurcode.frsRaisonsociale);
            }

            $("#entartlineobject").html("");
            $("#entartlineobjectp").html("");
            $.each(data.datas, function (indexs, values) {

                var html = "<tr class='stkEntreDetail'>";
                html += "<td id='entArtcode' class='itemart'>" + values.entArtcode.artCode + "</td>";
                html += "<td >" + values.entArtcode.artDesignation + "</td>";
                html += "<td id='entCodetrace' class='itemart'>" + values.entCodetrace + "</td>";
                html += "<td id='entQte' class='itemart'>" + values.entQte + "</td>";
                html += "<td id='entDateperomption' class='itemart'>" + dateformat(values.entDateperomption.date.split(' ')[0]) + "</td>";
                html += "<td id='entPu' class='itemart'>" + values.entPu + "</td>";
                if (values.tvaCode != null) {
                    html += "<td id='tvaCode' class='itemart' >" + values.tvaCode.tvaCode + "</td>";
                } else {
                    html += "<td id='tvaCode' class='itemart' ></td>";
                }
                html += "<td id='entPrixtotale'class='itemart'>" + values.entPrixtotale + "</td>";
                html += "</tr>";
                $("#entartlineobjectp").append(html);
                $("#entartlineobject").append(html)
            })

            $("#addform").attr("action", "");
            $(".addartform").hide();
            inti_dialog_non_edit();
        });
    }


    var annul = {};
    annul.titre = "Annulation"
    annul.attr = ["a_entCode"]
    annul.class = "supptbtn"
    annul.dr = "annulationentre"
    annul.fnct = function (param) {

        $.confirm("Voulez vous vraiment annulé se bon d'entrée", function () {

            get_ajax_data("/entree/asyn_annulation_entree", param, function (data) {
                $("#list-container").html("");
            });
        })

    }

    $.buildTable("#list-container", "Liste des entrees", data.data, [annul, consult]);
    
       $('.a_entTypecode').each(function(){
        if($(this).html()==0){
            $(this).html("Ordinaire")
        }else   if($(this).html()==1){
              $(this).html("Exceptionelle")
        }
    })
}


function ajout_article_be() {
    var execp = false;
    $("#entartlineobject").find(".stkEntreDetail").each(function () {
        if ($("#entArtcodea").val() == $(this).find("#entArtcode").html()) {
            $.alertMsg("Vous avez dèja introduit cette article", "Ajout article")
            execp = true;
        }
    })

    if (!execp) {
        var param = {}
        param.artCode = $("#entArtcodea").val();
        get_ajax_data("/article/asyn_get_article", param, function (data) {
            $("#list-container").html("");

            var selectmap = $("#entArtcodea").select2('data');

            var html = "<tr class='stkEntreDetail'>";
            html += "<td id='entArtcode' class='itemart'>" + $("#entArtcodea").val() + "</td>";
            html += '<td id="desiart">' + selectmap[0].text + "</td>";
            html += "<td id='entCodetrace' class='itemart'>" + window.arttrace + "</td>";
            html += "<td id='entQte' class='itemart'>" + $("#entQtea").val() + "</td>";
            html += "<td id='entDateperomption' class='itemart'>" + $("#entDateperomptiona").val() + "</td>";
            html += "<td id='entPu' class='itemart'>" + data.data.data[0].g_artPrix + "</td>";
            html += "<td id='tvaCode' class='itemart' >" + data.data.data[0].g_artTva + "</td>";
            html += "<td id='entPrixtotale'class='itemart'>" + parseFloat(data.data.data[0].g_artPrix) * $("#entQtea").val() + "</td>";
            html += '<td><button  class="btn btn_danger btn_xs delart"><span class="glyphicon glyphicon-remove-circle"></span></button></td>';
            html += "</tr>";
            $("#entartlineobject").append(html)
        });
    }

    $("#entArtcodea").select2("open")
}


function getdetailObject() {

    var objs = [];
    $(".stkEntreDetail").each(function () {
        var obj = {};
        $(this).find(".itemart").each(function () {
            obj[$(this).attr("id")] = $(this).html();
        })
        objs.push(obj);
    })

    return objs;
}


function ajout_entree() {

    var param = {}
    param = getFromObj("#" + "addform")
    param.entCodes = getdetailObject();
    param.mag = $("#mag").val()
    if (param.entCodes.length > 0) {
        get_ajax_data("/entree/asyn_ajout_entree", param, function (data) {
            if (data.etat == "1") {
                $("#dialogs").dialog("close");
            }
        })
    } else {
        $.alertMsg("la liste des articles est vide ! ", "Gestion d'entrée")
    }

}


function update_entree() {

    var param = {}
    param = getFromObj("#" + "addform")
    get_ajax_data("/entree/asyn_update_entree", param, function (data) {
        if (data.etat == "1") {
            $("#dialogs").dialog("close");
        }
    })

}

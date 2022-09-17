$(document).ready(function () {

    actualise_stock();

    window.arttrace = "";
    
    window.lottrace = "";

    window.modul = "facturation";

    $("#get_data_form").validate({
        rules: {
        }
    })

    $("#valdartline").click(function () {
        $("#addartbeform").submit();
    })

    $("#addartbeform").validate({
        rules: {
            "proddetailQteDevis": {
                number: true
            },
            "prodDateProd": {
                "required": true,
                "regex": /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/,
            }
        }
    });




    $("#addform").validate({
        rules: {
            "prodDateDevis": {
                "required": true,
                "regex": /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/,
            }
        }
    })

    $("#artEtatCode").select2()

    $("#dialogs").hide();


    $("#btn_nouveau_data").click(function () {
        var param = {}
        param.exe = $("#exe").val();
        get_ajax_data("/facturation/asyn_get_datauniqcode", param, function (data) {
            reset_form();
            $("#addform").attr("action", "ajout_data");
            edit_mode();
            $(".addartform").show();
            devis_mode();
            inti_dialog();
            $("#prodExerciceBc").val($("#exe").val())
            $("#prodCodeProd").val(data.data);
        });
    })


    edit_mode()

    reset_form();

    $(".delart").livequery(function () {
        $(this).click(function () {
            $(this).parent().parent().remove();
        })
    })

    $(".consproddetailbtn").livequery(function () {
        $(this).click(function () {
            $(".selectedProdDet").removeClass("selectedProdDet");
            $(this).parents(".dataDet").addClass("selectedProdDet");
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

function inti_dialog_non_editb(param) {

    $("#dialogs").dialog({
        buttons: {
            "Annuler": function () {
                $(this).dialog("close");
            },
            "Imprimer": function () {
                $("#printareab").printThis({
                    importCSS: true,
                    pageTitle: "Facture",
                })
            }
        },
        close: function (event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Consultation des Facture/BLs",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

    $("#dialogs").dialog("open");

}



function inti_dialog_non_editf(param) {

    $("#dialogs").dialog({
        buttons: {
            "Annuler": function () {
                $(this).dialog("close");
            },
            "Imprimer": function () {
                $("#printareaf").printThis({
                    importCSS: true,
                    pageTitle: "Production",
                })
            }
        },
        close: function (event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Consultation des Facture/BLs",
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
                if ($(".dataDet").length > 0) {
                    $("#addform").submit();
                } else {
                    $.alertMsg("La liste des articles est vide", "Facture")
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
        title: "Gestion des Facture/BLs",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

    $("#dialogs").dialog("open");

}

function populate_list(data) {

//    var validprod = {};
//    validprod.titre = "valider Facture/BL"
//    validprod.attr = ["a_prodCodeProd"]
//    validprod.class = "validprodbtn"
//    validprod.visible = function (param) {
//        if (param.datarefval.b_etatCode == 75) {
//            return true
//        } else {
//            return false
//        }
//    }
//
//    validprod.fnct = function (param) {
//
//        get_ajax_data("/facturation/asyn_get_data_object", param, function (data) {
//
//
//            validprod_mode();
//
//            reset_form();
//
//            edit_mode();
//
//            $.each(data.data[0], function (index, value) {
//
//                if (value != null) {
//
//                    if ($("#" + index + "p")) {
//                        if (typeof value.date != 'undefined') {
//                            $("#" + index + "p").html(dateformat(value.date.split(' ')[0]))
//                        } else {
//                            $("#" + index + "p").html(value)
//                        }
//                    }
//
//                    if ($("#" + index + "i")) {
//                        $("#" + index + "i").html(value)
//                    }
//
//                    if ($("#" + index)) {
//                        if ($("#" + index).prop("tagName") == "SELECT") {
//
//                            $("#" + index).val(value).trigger("change")
//                        } else {
//                            if (typeof value.date != 'undefined') {
//                                $("#" + index).val(dateformat(value.date.split(' ')[0]))
//                            } else {
//                                $("#" + index).val(value)
//                            }
//                        }
//                    }
//                }
//
//            })
//
//            $("#dataartlineobject").html("");
//
//            $("#dataartlineobjectp").html("");
//
//            $.each(data.datas, function (indexs, values) {
//
//
//                var html = '<tr class="dataDet" key="prodDetailId" idval="' + values.prodDetailId + '">"';
//                html += "<td id='consProdId'  >";
//
//                $.each(values.consProdId, function (index, value) {
//
//                    if (value.consprodArticleCode !== null) {
//                        var art = value.consprodArticleCode.artCode;
//                    } else {
//                        var art = 'non-trouver'
//                    }
//
//                    if (value.consprodCodeFrs !== null) {
//                        var frs = value.consprodCodeFrs.frsCode;
//                    } else {
//                        var frs = 'non-trouver'
//                    }
//                    html += '<div class="detartFrs">' + value.consprodType + '-' + art + '-' + value.consprodCodeFrs.frsCode + '-' + frs + '<div>';
//                })
//                html += "</td>";
//                html += "<td id='proddetailArticleCode'  class='itemart'>" + values.proddetailArticleCode.artCode + "</td>";
//                html += "<td>" + values.proddetailArticleCode.artDesignation + "</td>";
//                html += "<td id='proddetailQteDevis' class='itemart' >" + values.proddetailQteDevis + "</td>";
//                html += "<td id='proddetailDatePeromption' class='itemart' >" + '<input type="tex" datepick>' + "</td>";
//
//                html += "</tr>";
//
//                $("#dataartlineobject").append(html);
//                $("#dataartlineobjectp").append(html);
//            })
//
//            $("#addform").attr("action", "valid_data");
//            $(".addartform").hide();
//
//            inti_dialog();
//
//        });
//
//    }



    var genfacturebl = {};
    genfacturebl.titre = "Generer la Facture/BL"
    genfacturebl.attr = ["a_prodCodeProd"]
    genfacturebl.class = "genprodbtn"
    genfacturebl.visible = function (param) {
        if (param.datarefval.b_etatCode == 76) {
            return true
        } else {
            return false
        }
    }
    genfacturebl.fnct = function (param) {

        var params = {}
        params.exe = $("#exe").val();
        get_ajax_data("/facturation/asyn_get_datauniqcode", params, function (datas) {

            reset_form();

            $("#prodExerciceBlfacture").val($("#exe").val())

            $("#prodCodeFacture").val(datas.datas);

            $("#prodCodeBl").val(datas.data);

            get_ajax_data("/facturation/asyn_get_data_object", param, function (data) {

                genfacture_mode();

                edit_mode();

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

                $("#prodCodeClient").val(data.data[0].prodCodeClient.frsCode).trigger("change");
                if (typeof data.data[0].prodDevise !== "undefined") {
                    $("#prodDevise").val(data.data[0].prodDevise.deviseCode).trigger("change");
                }

                $("#dataartlineobject").html("");
                $("#dataartlineobjectp").html("");
                $.each(data.datas, function (indexs, values) {

                    var html = '<tr class="dataDet" key="prodDetailId" idval="' + values.prodDetailId + '">"';
                    html += "<td id='proddetailArticleCode'  class='itemart'>" + values.proddetailArticleCode.artCode + "</td>";
                    html += "<td>" + values.proddetailArticleCode.artDesignation + "</td>";
                    html += "<td>" + values.proddetailArticleCode.artUnite + "</td>";
                    html += "<td id='proddetailQteDevis' class='itemart' >" + values.proddetailQteDevis + "</td>";

                    html += "<td id='proddetailPrixUniaireDevise' class='itemart' >" + values.proddetailPrixUniaireDeviseDevis + "</td>";
                    html += "<td id='proddetailTva' class='itemart' >" + values.proddetailTvaDevis.tvaCode + "</td>";

                    html += '<td id="oper"> <button class="btn btn-primary btn-xs consproddetailbtn"   style="display: inline-block;"> Selectioner </button> </td>'
                    html += "</tr>";

                    $("#dataartlineobject").append(html);
                    $("#dataartlineobjectp").append(html);
                })

                $("#addform").attr("action", "gen_data");

                inti_dialog();

            });

        });

    }



    var facture = {};
    facture.titre = "Facture"
    facture.attr = ["a_prodCodeProd"]
    facture.class = "facturebtn"
    facture.visible = function (param) {
        if (param.datarefval.b_etatCode == 77) {
            return true
        } else {
            return false
        }
    }
    facture.fnct = function (param) {
        get_ajax_data("/facturation/asyn_get_data_object", param, function (data) {

            reset_form();

            non_edit_mode();

            facturebl_mode();

            $.each(data.data[0], function (index, value) {

                if (value != null) {

                    if ($("#" + index + "p")) {
                        if (typeof value.date != 'undefined') {
                            $("#" + index + "pf").html(dateformat(value.date.split(' ')[0]))
                        } else {
                            $("#" + index + "pf").html(value)
                        }
                    }

                    if ($("#" + index + "if")) {
                        $("#" + index + "if").html(value)
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

            if (typeof data.data[0].prodDevise !== "undefined") {
                $("#prodDevise").val(data.data[0].prodDevise.deviseCode).trigger("change");
            }

            $("#frsMf").html(data.data[0].prodCodeClient.frsMf)

               $("#prodClienpf").html(data.data[0].prodCodeClient.frsRaisonsociale)
               
               $("#clientAdress").html(data.data[0].prodCodeClient.frsAdresse)
            
            
            $("#prodDevisepf").html(data.data[0].prodDevise.deviseLibelle)
            $("#prodCommercialepf").html(data.data[0].prodCommerciale.utinom);

            $("#dataartlineobject").html("");

            $("#dataartlineobjectpf").html("");


            $("#dataartlineobjectpb").html("");



            $.each(data.datas, function (indexs, values) {


                var html = '<tr class="dataDet" key="prodDetailId" idval="' + values.prodDetailId + '">"';

                html += "<td id='proddetailArticleCode'  class='itemart'>" + values.proddetailArticleCode.artCode + "</td>";
                html += "<td>" + values.proddetailArticleCode.artDesignation + "</td>";
                // html += "<td>" + values.proddetailArticleCode.artUnite + "</td>";
                html += "<td id='proddetailQteDevis' class='itemart' >" + values.proddetailQteDevis + "</td>";

                html += "<td id='proddetailPrixUniaireDevise' class='itemart' >" + values.proddetailPrixUniaireDevise + "</td>";
                html += "<td id='proddetailTva' class='itemart' >" + values.proddetailTva.tvaCode + "</td>";
                html += "</tr>";

                $("#dataartlineobject").append(html);


            })
            var ttva = 0;
            var thtva = 0;
            var ttc = 0;
            $.each(data.datas, function (indexs, values) {


                var html = '<tr class="dataDet" key="prodDetailId" idval="' + values.prodDetailId + '">"';

                html += "<td id='proddetailArticleCode'  class='itemart'>" + values.proddetailArticleCode.artCode + "</td>";
                html += "<td>" + values.proddetailArticleCode.artDesignation + "</td>";
                //html += "<td>" + values.proddetailArticleCode.artUnite + "</td>";
                html += "<td id='proddetailQteDevis' class='itemart' >" + values.proddetailQteDevis + "</td>";

                html += "<td id='proddetailPrixUniaireDevise' class='itemart' >" + values.proddetailPrixUniaireDevise + "</td>";
                html += "<td id='proddetailTva' class='itemart' >" + values.proddetailTva.tvaCode + "</td>";

                var pt = parseFloat(values.proddetailPrixUniaireDevise) * parseFloat(values.proddetailQteDevis);
                if (parseFloat(values.proddetailTva.tvaCode) !== 0) {
                    var ptttc = pt + ((parseFloat(values.proddetailTva.tvaCode) * pt) / 100);
                } else {
                    var ptttc = pt;
                }

                ttc += ptttc;
                thtva += pt;
                ttva += (parseFloat(values.proddetailTva.tvaCode) * pt) / 100;

                html += "<td id='proddetailPtttc' class='itemart' >" + sgsNumber(ptttc) + "</td>";
                html += "</tr>";


                $("#dataartlineobjectpf").append(html);

            })



            $("#htva").html(sgsNumber(thtva));
            $("#tva").html(sgsNumber(ttva));
            // $("#timbre").html(sgsNumber(0.600));
            $("#ttc").html(sgsNumber(ttc + 0.600));



            $.each(data.datas, function (indexs, values) {


                var html = '<tr class="dataDet" key="prodDetailId" idval="' + values.prodDetailId + '">"';

                html += "<td id='proddetailArticleCode'  class='itemart'>" + values.proddetailArticleCode.artCode + "</td>";
                html += "<td>" + values.proddetailArticleCode.artDesignation + "</td>";
                html += "<td>" + values.proddetailArticleCode.artUnite + "</td>";
                html += "<td id='proddetailQteDevis' class='itemart' >" + values.proddetailQteDevis + "</td>";


                html += "</tr>";


                $("#dataartlineobjectpb").append(html);

            })

            $("#addform").attr("action", "valid_data");

            $(".addartform").hide();

            inti_dialog_non_editf();
        });
    }

    var bl = {};
    bl.titre = "Bon de livraison"
    bl.attr = ["a_prodCodeProd"]
    bl.class = "blbtn"
    bl.visible = function (param) {
        if (param.datarefval.b_etatCode == 77) {
            return true
        } else {
            return false
        }
    }
    bl.fnct = function (param) {
        get_ajax_data("/facturation/asyn_get_data_object", param, function (data) {

            reset_form();

            non_edit_mode();

            facturebl_mode();

            $.each(data.data[0], function (index, value) {

                if (value != null) {

                    if ($("#" + index + "p")) {
                        if (typeof value.date != 'undefined') {
                            $("#" + index + "pb").html(dateformat(value.date.split(' ')[0]))
                        } else {
                            $("#" + index + "pb").html(value)
                        }
                    }

                    if ($("#" + index + "ib")) {
                        $("#" + index + "ib").html(value)
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
            if (typeof data.data[0].prodDevise !== "undefined") {
                $("#prodDevise").val(data.data[0].prodDevise.deviseCode).trigger("change");
            }

            $("#prodDevisepb").html(data.data[0].prodDevise.deviseLibelle)
            $("#prodCommercialepb").html(data.data[0].prodCommerciale.utinom);
            $("#frsMfb").html(data.data[0].prodCodeClient.frsMf)
              $("#prodClienpb").html(data.data[0].prodCodeClient.frsRaisonsociale)
               
               $("#clientAdresspb").html(data.data[0].prodCodeClient.frsAdresse)
            $("#dataartlineobject").html("");

            $("#dataartlineobjectpb").html("");

            $.each(data.datas, function (indexs, values) {


                var html = '<tr class="dataDet" key="prodDetailId" idval="' + values.prodDetailId + '">"';

                html += "<td id='proddetailArticleCode'  class='itemart'>" + values.proddetailArticleCode.artCode + "</td>";
                html += "<td>" + values.proddetailArticleCode.artDesignation + "</td>";
                html += "<td>" + values.proddetailArticleCode.artUnite + "</td>";
                html += "<td id='proddetailQteDevis' class='itemart' >" + values.proddetailQteDevis + "</td>";

                html += "<td id='proddetailPrixUniaireDevise' class='itemart' >" + values.proddetailPrixUniaireDevise + "</td>";
                html += "<td id='proddetailTva' class='itemart' >" + values.proddetailTva.tvaCode + "</td>";
                html += "</tr>";

                $("#dataartlineobject").append(html);


            })


            $.each(data.datas, function (indexs, values) {


                var html = '<tr class="dataDet" key="prodDetailId" idval="' + values.prodDetailId + '">"';

                html += "<td id='proddetailArticleCode'  class='itemart'>" + values.proddetailArticleCode.artCode + "</td>";
                html += "<td>" + values.proddetailArticleCode.artDesignation + "</td>";
                html += "<td>" + values.proddetailArticleCode.artUnite + "</td>";
                html += "<td id='proddetailQteDevis' class='itemart' >" + values.proddetailQteDevis + "</td>";

                html += "</tr>";


                $("#dataartlineobjectpb").append(html);

            })

            $("#addform").attr("action", "valid_data");

            $(".addartform").hide();

            inti_dialog_non_editb();
        });
    }



    var annul = {};
    annul.titre = "Annulation"
    annul.attr = ["a_prodCodeProd"]
    annul.class = "supptbtn"
    annul.visible = function (param) {
        if (param.datarefval.b_etatCode == 77) {
            return true
        } else {
            return false
        }
    }
    annul.fnct = function (param) {

        $.confirm("Voulez vous vraiment annulé se Facture/BL ", function () {

            get_ajax_data("/facturation/asyn_annulation_data", param, function (data) {
                $("#list-container").html("");
            });

        })

    }

    $.buildTable("#list-container", "Liste des Factures/BL", data.data, [annul, genfacturebl, facture, bl]);

}


function genfacture_mode() {
    $("[forminput]").each(function () {
        $(this).hide();
    })
    $("[genfacture]").each(function () {
        $(this).show();
    })
}


function facturebl_mode() {
    $("[forminput]").each(function () {
        $(this).hide();
    })
    $("[facturebl]").each(function () {
        $(this).show();
    })
}
function ajout_article_data() {

    var prix = $("#proddetailPrixUniaireDevises").val();
    var tva = $("#proddetailTvas").val();

    $(".selectedProdDet").find("#proddetailPrixUniaireDevise").html(prix);
    $(".selectedProdDet").find("#proddetailTva").html(tva);

}


function getdetailObject() {

    var objs = [];

    $("#dataartlineobject").find(".dataDet").each(function () {
        var obj = {};
        obj[$(this).attr("key")] = $(this).attr("idval");
        $(this).find(".itemart").each(function () {
            if ($(this).attr("id") !== "oper") {
                if ($(this).attr("id") !== "consProdId") {
                    if ($(this).find("input").length > 0) {
                        obj[$(this).attr("id")] = $(this).find("input").val();
                    } else {
                        obj[$(this).attr("id")] = $(this).html();
                    }
                } else {
                    obj["consProdId"] = new Array();
                    $(this).find(".detartFrs").each(function () {
                        var arr = $(this).html().split("-")
                        var subobj = {}
                        subobj.consprodType = arr[0]
                        subobj.consprodArticleCode = arr[1]
                        subobj.consprodCodeFrs = arr[2]
                        subobj.consprodQte = arr[3]
                        obj["consProdId"].push(subobj)
                    })
                }
            }
        })
        objs.push(obj);
    })
    console.log(objs);
    return objs;

}


function ajout_data() {

    var param = {}
    param = getFromObj("#" + "addform")
    param.prodCodeDeviBcs = getdetailObject();
    param.mag = $("#mag").val()
    get_ajax_data("/facturation/asyn_ajout_data", param, function (data) {
        if (data.etat == "1") {
            $("#dialogs").dialog("close");
        }
    })

}

function gen_data() {
    var param = {}
    param = getFromObj("#" + "addform")
    param.prodCodeDeviBcs = getdetailObject();
    param.mag = $("#mag").val()
    get_ajax_data("/facturation/asyn_genfact", param, function (data) {
        if (data.etat == "1") {
            $("#dialogs").dialog("close");
        }
    })
}

function valid_data() {

    var param = {}
    param = getFromObj("#" + "addform")
    param.prodCodeDeviBcs = getdetailObject();
    param.mag = $("#mag").val()
    get_ajax_data("/facturation/asyn_validprod", param, function (data) {
        if (data.etat == "1") {
            $("#dialogs").dialog("close");
        }
    })

}




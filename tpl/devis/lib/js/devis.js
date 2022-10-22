var _devise  = "";
$(document).ready(function () {
    dispalyDevise();
    actualise_stock();
    $("#netWeight").focusout(function(){
        console.log($("#proddetailArticleCodea").val());
        if($("#proddetailArticleCodea").val() != "" ){
            var param = {};
            param.artCode = $("#proddetailArticleCodea").val();    

            get_ajax_data("/article/asyn_get_article", param, function (data){

                let totalWeight = $("#netWeight").val();
                
                if(weightArticle != "" && weightArticle != 0){
                    weightArticle = data.data.data[0].g_artWeight;
                    nbrArticle = parseFloat(totalWeight)/parseFloat(weightArticle);
                    $("#proddetailQteDevisa").val(nbrArticle);            
                } else {
                    $.alertMsg("Veuillez Definir le poid de l'article")
                }
        
            })
                

        }
       

        })

        $("#proddetailQteDevisa").focusout(function(){
            console.log($("#proddetailArticleCodea").val());
            if($("#proddetailArticleCodea").val() != "" ){
                var param = {};
                param.artCode = $("#proddetailArticleCodea").val();    
    
                get_ajax_data("/article/asyn_get_article", param, function (data){
    
                    let nbrArticle = $("#proddetailQteDevisa").val();
                    
                    weightArticle = data.data.data[0].g_artWeight;
                    if(weightArticle != "" && weightArticle != 0){
                        totalWeight = parseFloat(weightArticle)*parseFloat(nbrArticle);
                        $("#netWeight").val(totalWeight.toFixed(3));            
                    } else {
                        $.alertMsg("Veuillez Definir le poid de l'article")
                    }
            
                })
                    
    
            }
           
    
            })

            $("#priceOneUnit").focusout(function(){
                if($("#proddetailArticleCodea").val() != "" ){
                    var param = {};
                    param.artCode = $("#proddetailArticleCodea").val();    
        
                    get_ajax_data("/article/asyn_get_article", param, function (data){
        
                        let priceOneUnit = $("#priceOneUnit").val();
                        
                        weightArticle = data.data.data[0].g_artWeight;
                        if(weightArticle != "" && weightArticle != 0){
                            console.log("test");
                            priceArticle = parseFloat(weightArticle)*parseFloat(priceOneUnit);
                            $("#proddetailPrixUniaireDeviseDevisa").val(priceArticle.toFixed(2));            
                        } else {
                            $.alertMsg("Veuillez Definir le poid de l'article")
                        }
                
                    })
                        
        
                }
               
        
                })
                $("#proddetailPrixUniaireDeviseDevisa").focusout(function(){
                    if($("#proddetailArticleCodea").val() != "" ){
                        var param = {};
                        param.artCode = $("#proddetailArticleCodea").val();    
            
                        get_ajax_data("/article/asyn_get_article", param, function (data){
            
                            let priceArticle = $("#proddetailPrixUniaireDeviseDevisa").val();
                            
                            weightArticle = data.data.data[0].g_artWeight;
                            if(weightArticle != "" && weightArticle != 0){
                                priceOneUnit =parseFloat(priceArticle)/parseFloat(weightArticle);
                                $("#priceOneUnit").val(priceOneUnit.toFixed(2));            
                            } else {
                                $.alertMsg("Veuillez Definir le poid de l'article")
                            }
                    
                        })
                            
            
                    }
                   
            
                    })

       

    window.arttrace = "";
    window.lottrace = "";

    window.modul = "devis";

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
            "prodDateDevis": {
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
        get_ajax_data("/devis/asyn_get_datauniqcode", param, function (data) {
            reset_form();
            $("#addform").attr("action", "ajout_data");
            edit_mode();
            $(".addartform").show();
            devis_mode();
            $("#dataartlineobject").html("");
            $("#dataartlineobjectp").html("");
            inti_dialog();
            $("#prodExerciceDevis").val($("#exe").val())
            $("#prodCodeDeviBc").val(data.data);
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
                    pageTitle: "Devis",
                })
            }
        },
        close: function (event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Consultation des devis",
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
                    $.alertMsg("La liste des articles est vide", "Devis")
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
        title: "Gestion des Devis",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

    $("#dialogs").dialog("open");

}

function populate_list(data) {

    var genbc = {};
    genbc.titre = "Prise en charge Bon de Commande"
    genbc.attr = ["a_prodCodeDeviBc"]
    genbc.class = "bcbtn"
    genbc.visible = function (param) {
        if (param.datarefval.b_etatCode == 71) {
            return true
        } else {
            return false
        }
    }
    genbc.fnct = function (param) {

        get_ajax_data("/devis/asyn_get_data_object", param, function (data) {



            bc_mode();

            reset_form();

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

            $("#prodExerciceBc").val($("#exe").val());
            $("#dataartlineobject").html("");
            $("#dataartlineobjectp").html("");
            $.each(data.datas, function (indexs, values) {
                weightArticle = values.proddetailArticleCode.artWeight;
                nbrArticle = values.proddetailQteDevis;
                weightTotal = parseFloat(weightArticle)*parseFloat(nbrArticle)
                weightTotal = sgsNumber(weightTotal, _devise);
                priceOneUnite = parseFloat(values.proddetailPrixUniaireDeviseDevis)/parseFloat(weightArticle);
                priceOneUnite = sgsNumber(priceOneUnite, _devise)
                var html = '<tr class="dataDet" key="prodDetailId" idval="' + values.prodDetailId + '">"';
                html += "<td id='proddetailArticleCode'  class='itemart'>" + values.proddetailArticleCode.artCode + "</td>";
                html += "<td >" + values.proddetailArticleCode.artDesignation + "</td>";
                // html += "<td >" + values.proddetailArticleCode.artUnite + "</td>";
                html += "<td >" + weightTotal + "</td>";
                html += "<td id='proddetailQteDevis' contenteditable='true' class='itemart inputdecorator' >" + values.proddetailQteDevis + "</td>";
                html += "<td >" + priceOneUnite + "</td>";
                html += "<td id='proddetailPrixUniaireDeviseDevis' class='itemart ' >" + values.proddetailPrixUniaireDeviseDevis + "</td>";
                html += "<td id='proddetailTva' class='itemart' >" + values.proddetailTvaDevis.tvaDesignation + "</td>";


                var pt = parseFloat(values.proddetailPrixUniaireDeviseDevis) * parseFloat(values.proddetailQteDevis);
                var ptttc = pt + ((parseFloat(values.proddetailTvaDevis.tvaCode) * pt) / 100);
                html += "<td id='proddetailPtttc' class='itemart' >" + sgsNumber(ptttc, _devise) + "</td>";
                html += "</tr>";

                $("#dataartlineobject").append(html);

            })

            $("#addform").attr("action", "gen_data");
            $(".addartform").hide();

            inti_dialog();

        });

    }



    var consult = {};
    consult.titre = "Consultation"
    consult.attr = ["a_prodCodeDeviBc"]
    consult.class = "consultbtn"
    // consult.visible = function (param) {
    //     alert = false;
    //     get_ajax_data("/devis/asyn_get_data_object", param, function (data) {

    //         $.each(data.datas, function (indexs, values) {
    //             if(values.proddetailArticleCode.artWeight == 0)
    //             {
    //                 alert = true
                    
    //             }else{
    //                 alert = false
    //             }
                
    //         })

    //     })
    //     if(alert)
    //     {
    //         $.alertMsg("Le poids d'article ne peut pas être egale à zéro !", "ALERT ! ");
    //         return false;
    //     }else{
    //         return true
    //     }
    // }
    consult.fnct = function (param) {
        get_ajax_data("/devis/asyn_get_data_object", param, function (data) {
            reset_form();
            non_edit_mode();
            devis_mode();

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
            
             var selectmap = $("#prodCodeClient").select2('data')[0].text;
                console.log("devise : "  , data.data[0].prodDevise)
                _devise = data.data[0].prodDevise.deviseLibelle;
                $("#prodClientp").html(selectmap);
                $("#prodDevise").val(data.data[0].prodDevise.deviseCode).trigger("change");
                $("#prodCommerciale").val(data.data[0].prodCommerciale.idutil).trigger("change");
                $("#prodDevisep").html(data.data[0].prodDevise.deviseLibelle);
                $("#prodCommercialep").html(data.data[0].prodCommerciale.utinom);
                $("#dataartlineobject").html("");
                $("#dataartlineobjectp").html("");
                var ttva = 0;
                var thtva = 0;
                var ttc = 0;
            $.each(data.datas, function (indexs, values) {
                
                // if(values.proddetailArticleCode.artWeight == 0)
                // {
                //     alert("Le poids d'article ne peut pas être egale à zéro !")

                //     return false;
                // }
                weightArticle = values.proddetailArticleCode.artWeight;
                nbrArticle = values.proddetailQteDevis;
                weightTotal = parseFloat(weightArticle)*parseFloat(nbrArticle);
                weightTotal = sgsNumber(weightTotal, _devise);
                console.log('w : ' + weightArticle + "  Qte : " + nbrArticle);
                priceOneUnite = parseFloat(values.proddetailPrixUniaireDeviseDevis)/parseFloat(weightArticle);
                priceOneUnite = sgsNumber(priceOneUnite, _devise)
                var html = "<tr class='dataDet'>";
                html += "<td id='proddetailArticleCode' class='itemart'>" + values.proddetailArticleCode.artCode + "</td>";
                html += "<td >" + values.proddetailArticleCode.artDesignation + "</td>";
                html += "<td >" + weightTotal + "</td>";
                html += "<td id='proddetailQteDevis' class='itemart'>" + values.proddetailQteDevis + "</td>";
                html += "<td id='priceOneUnite' class='itemart'>" + priceOneUnite + "</td>";
                html += "<td id='proddetailPrixUniaireDeviseDevis' class='itemart'>" + values.proddetailPrixUniaireDeviseDevis + "</td>";
                html += "<td id='proddetailTva' class='itemart'>" + values.proddetailTvaDevis.tvaDesignation + "</td>";

                var pt = parseFloat(values.proddetailPrixUniaireDeviseDevis) * parseFloat(values.proddetailQteDevis);
                var ptttc = pt + ((parseFloat(values.proddetailTvaDevis.tvaCode) * pt) / 100);
                ttc += ptttc;
                thtva += pt;
                ttva += (parseFloat(values.proddetailTvaDevis.tvaCode) * pt) / 100;

                html += "<td id='proddetailPtttc' class='itemart' >" + sgsNumber(ptttc, _devise) + "</td>";
                html += "</tr>";
                console.log("_devise : ", _devise)
                dispalyDevise();
                $("#dataartlineobject").append(html);
                $("#dataartlineobjectp").append(html);
            })



            $("#htva").html(sgsNumber(thtva, _devise));
            $("#tva").html(sgsNumber(ttva, _devise ));
            // $("#timbre").html(0.600);
            $("#ttc").html(sgsNumber(ttc, _devise));

            $("#addform").attr("action", "");
            $(".addartform").hide();
            inti_dialog_non_edit();
        });
    }


    var annul = {};
    annul.titre = "Annulation"
    annul.attr = ["a_prodCodeDeviBc"]
    annul.class = "supptbtn"
    annul.dr = "annulationdemapro"

    annul.fnct = function (param) {

        $.confirm("Voulez vous vraiment annulé se bon d'approvionnement", function () {

            get_ajax_data("/devis/asyn_annulation_data", param, function (data) {
                $("#list-container").html("");
            });

        })

    }

    $.buildTable("#list-container", "Liste des devis", data.data, [annul, consult, genbc]);

}

function devis_mode() {
    $("[forminput]").each(function () {
        $(this).hide();
    })
    $("[devis]").each(function () {
        $(this).show();
    })
}
function dispalyDevise(selectorTag = '_devise'){
    // console.log("je suis dans dispalyDevise")
    // console.log("_devise dans la function : ", _devise)
    // console.log($("." + selectorTag).length)
    $("." + selectorTag).each(function () {
        // console.log("$(this).html() ", $(this).html())
        // if($(this).html() == ""){
            $(this).html(" en " + _devise + " ")
        // }

    })

}

function bc_mode() {
    $("[forminput]").each(function () {
        $(this).hide();
    })
    $("[bc]").each(function () {
        $(this).show();
    })
}

function ajout_article_data() {
    var execp = false;
    $("#dataartlineobject").find(".dataDet").each(function () {
        if ($("#proddetailArticleCodea").val() == $(this).find("#proddetailArticleCode").html()) {
            $.alertMsg("Vous avez dèja introduit cette article", "Ajout article")
            execp = true;
        }
    })
    
    var param = {};
    
    param.artCode = $("#proddetailArticleCodea").val();
    
    

    get_ajax_data("/article/asyn_get_article", param, function (data) {
        console.log(data);
        if (!execp) {

            
            var selectmap = $("#proddetailArticleCodea").select2('data');
            var selectmaptva = $("#proddetailTvaDevisa").select2('data');
            console.log(selectmap)
            var html = "<tr class='dataDet'>";
            html += "<td id='proddetailArticleCode' class='itemart'>" + $("#proddetailArticleCodea").val() + "</td>";
            html += "<td >" + selectmap[0].text + "</td>";
            
            //  html += "<td >" +data.data.data[0].g_artUnite+ "</td>";
             html += "<td >" +   $("#netWeight").val() + "</td>";
            html += "<td id='proddetailQteDevis' class='itemart'>" + $("#proddetailQteDevisa").val() + "</td>";
            html += "<td id='priceOneUnit' class='itemart'>" + $("#priceOneUnit").val() + "</td>";
            html += "<td id='proddetailPrixUniaireDeviseDevis' class='itemart'>" + $("#proddetailPrixUniaireDeviseDevisa").val() + "</td>";
            html += "<td id='proddetailTvaDevis' class='itemart'>" + selectmaptva[0].id + "</td>";
            var ptt = parseFloat($("#proddetailQteDevisa").val() * $("#proddetailPrixUniaireDeviseDevisa").val());
            var pttc = ptt + parseFloat((ptt * parseFloat(selectmaptva[0].id)) / 100)
            html += "<td id='proddetailTtc'  >" + sgsNumber(pttc, _devise) + "</td>";
            html += '<td><button  class="btn btn-danger btn-xs delart"><span class="glyphicon glyphicon-remove-circle"></span></button></td>';
            html += "</tr>";

            $("#dataartlineobject").append(html)
        }
        
    })

}


function getdetailObjectgenbc() {

    var objs = [];

    var valid = true;

    $(".dataDet").each(function () {

        if ((!$.isNumeric($(this).find("#proddetailQteDevis").html())) || (!$.isNumeric($(this).find("#proddetailPrixUniaireDeviseDevis").html()))) {
            valid = false
        }

        var obj = {};

        obj[$(this).attr("key")] == $(this).attr("idval");

        $(this).find(".itemart").each(function () {
            obj[$(this).attr("id")] = $(this).html();
        })
        objs.push(obj);
    })


    if (valid) {
        return objs;
    } else {
        return false;
    }

}

function getdetailObject() {

    var objs = [];
    $(".dataDet").each(function () {
        var obj = {};
        $(this).find(".itemart").each(function () {
            obj[$(this).attr("id")] = $(this).html();
        })
        objs.push(obj);
    })

    return objs;
}


function gen_data() {

    var param = {}

    param = getFromObj("#" + "addform")
    var obj = getdetailObjectgenbc();

    if (obj !== false) {
        param.prodCodeDeviBcs = obj;
        param.mag = $("#mag").val()
        get_ajax_data("/devis/asyn_genbc", param, function (data) {
            if (data.etat == "1") {
                $("#dialogs").dialog("close");
            }
        })
    } else {
        $.alertMsg("Merci de verifier les valeurs introduite", "Validation BC");
    }


}

function ajout_data() {
    var param = {}
    param = getFromObj("#" + "addform")
    param.prodCodeDeviBcs = getdetailObject();
    param.mag = $("#mag").val()
    get_ajax_data("/devis/asyn_ajout_data", param, function (data) {
        if (data.etat == "1") {
            $("#dialogs").dialog("close");
        }
    })
}

function update_data() {

    var param = {}
    param = getFromObj("#" + "addform")
    get_ajax_data_file("/devis/asyn_update_data", param, "artImage", function (data) {
        if (data.etat == "1") {
            $("#dialogs").dialog("close");
        }
    })

}

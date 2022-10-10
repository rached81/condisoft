$(document).ready(function () {

    actualise_stock();

    function controleProdArticle(){

    }

    window.arttrace = "";
    window.lottrace = "";

    window.modul = "prod";

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
        get_ajax_data("/prod/asyn_get_datauniqcode", param, function (data) {
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
    });

/**
 * START : controle change value in detail production article
 */
    $("#consProdId").livequery(function () {
        $(this).mouseout(function(){

            if($("#consProdId").html() ==""){
                $(this).parent().parent().find(".validproddetail").prop('checked', false)
            
            }
    
            })
        });
    $("#journeDatePeromption").livequery(function () {
        $(this).find("input").change(function(){
            if($(this).val() ==""){
                $(this).parent().parent().find(".validproddetail").prop('checked', false)
            
            }
    
            })
        });

    // $("#journeQte").mouseout(function(){
    //     console.log("change change change change ")
    //     if($("#journeQte").html() ==""){
    //         $(this).parent().parent().find(".validproddetail").prop('checked', false)
    //         $("#weight").html("-")
        
    //     }
    //     else{
    //         journeQte = parseInt($("#journeQte").html());
    //         unitedWeight = parseFloat($("#weightArtUnite").val())
    //         console.log(" unitedWeight : "+ unitedWeight);
    //         console.log(" journeQte : "+ journeQte);
    //         if(!isNaN(journeQte)){

    //             total = unitedWeight*journeQte;
    //             total = total.toFixed(3);
    //             $("#weight").html(" " +total)
    //         }

    //     }


    //     });
  
/**
 * END : controle change value in detail production article
 */



    $(".validproddetail").livequery(function () {
        $(this).click(function () {
            
                id = $(this).prop('id');

                $(this).parent().parent().addClass('validDetailProd')
                detartFrs = $(this).parent().parent().find(".detartFrs").length;
                journeQte = $(this).parent().parent().find("#journeQte").html();
                journeDatePeromption = $(this).parent().parent().find(".hasDatepicker").val();
                //console.log(detartFrs + " - " + journeQte + " - " + journeDatePeromption);
                msg="";
                if(!detartFrs){
                    msg += "<br>La matière première";
                }
                if(journeQte == ""){
                    msg += "<br>La quantité produite";
                }
                if(!journeDatePeromption){
                    msg += "<br>La D.L.C  Date Limit de Consommation";
                }
                if(msg != ""){
                    $(this).prop('checked', false)
                    $.alertMsg("Vous devez entrer: "+msg, 'ALERT !');
                }
               // else
                
                // {
                //     if($(this).prop('checked')==false)
                //     {
                //         $(this).prop('checked', true)
                //     }else{
                //         $(this).prop('checked', true) 
                //     }
            
               // }

           
            
 
        })
    }); 

    $(".consproddetailbtn").livequery(function () {
        $(this).click(function () {
            $(".selectedProdDet").each(function () {
                $(this).removeClass("selectedProdDet");
            })
            $(this).parents(".dataDet").addClass("selectedProdDet");
        })
    })

    $("#journeDate").change(function () {
        get_journe_detail();
    })

    $(".rmartfrs").livequery(function () {
        $(this).click(function () {
            $(this).parent().remove();
        })
    })

})

function non_edit_mode() {
    $("[editmode]").each(function () {
        if ($(this).attr("id") !== "journeDate")
            $(this).attr("disabled", "disabled");
    })
}

function edit_mode() {
    $("[editmode]").removeAttr("disabled");

}


function reset_form() {
    $("#demaproartlineobject").html("");
    $("#addform").find("input").each(function () {
        if ($(this).attr("id") !== "journeDate") {
            $(this).val("")
        }
    })
    $("#addartbeform").find("input").each(function () {
        
            $(this).val("");
            if($('#g_artUnite').length )
                $('#g_artUnite').html('');
            if($('#g_artType').length)
                $('#g_artType').html('');

       
    })
    
    //console.log("$('#addartbeform').reset() executed ! ");
    // $("#addartbeform").trigger("reset");
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
                    pageTitle: "Production",
                })
            }
        },
        close: function (event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Consultation des bons de production",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

    $("#dialogs").dialog("open");

}



function inti_dialog_print() {
    $("#nbr_ticket_print").val("");
    $("#number_ticket").dialog({
        buttons: {
            "Annuler": function () {
                $("#nbr_ticket").val("");
                $(this).dialog("close");
                return 5
            },
            "Imprimer": function (event, ui) {  
                $("#nbr_ticket_print").val($("#nbr_ticket").val());
                $("#nbr_ticket").val("");
                $(this).dialog("close");
                return 5
    
            },
            },
            
        
        resizable: true,
        title: "Impression",
        modal: true,
        height: 250,
        width: 450,

    })

    $("#number_ticket").dialog("open");

}

function inti_dialog(param) {
    console.log(" inti_dialog ")

    $("#dialogs").dialog({
        buttons: {
            "Sauvegarder": function () {
                if ($(".dataDet").length > 0) {
                    $("#addform").submit();
                } else {
                    $.alertMsg("La liste des articles est vide", "Production")
                }
            },
            "Annuler": function () {
                $(this).dialog("close");
            }, 
            "Imprimer Code bare": function () {
                // $("#nbr_ticket").val("");
                // test = inti_dialog_print();
                // console.log(test)
                // console.log($("#nbr_ticket"))
                 nbrTickets = $("#nbr_ticket_print").val();
                // console.log(nbrTickets);
                printTicket = true;
                if(nbrTickets =="" || nbrTickets <= 0){
                    printTicket = false;
                    $.alertMsg("Veuillez saisir le nombre de tickets à imprimer!", "Impression")
                }
                if ($(".dataDet").length > 0 && printTicket ) {
                    
                    $("#printbarecode").html("");
                    var inc = 0
                    var numprod = $("#prodId").val();
                    var boncode = $("#prodCodeProd").val();

                    $(".dataDet").each(function () {
                        var artcode = $(this).find("#proddetailArticleCode").html();
                        var artdesi = $(this).find("#artDesign").html();

                        var fornum = parseInt($("#nbr_ticket_print").val())
                        console.log('nbr' + fornum)
                       // parseInt($(this).find("#journeQte").html());

                        var deateperom = $(this).find("#journeDatePeromption").find("input").val();


                        var frs = "";
                        $(this).find("#consProdId").find(".detartFrs").each(function () {
                            var val = $(this).html();
                            var res = val.split("-");
                            if (res[0] == "MP") {
                                frs = res[2];
                            }
                        });

                        for (count = 0; count < fornum; count++) {
                            console.log('inc', inc);
                            var nameide = "bare" + inc++
                            $("#printbarecode").append('<div style="margin-left:10px;font-size:22px;">' + artdesi + '</div>')
                            $("#printbarecode").append('<svg id="' + nameide + '"></svg>')
                            $("#" + nameide).JsBarcode("MF-" + artcode + "-" + frs + "-" + deateperom + "-" + boncode);
                            $("#printbarecode").append('<br><div class="barecodepaging"></div>')
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
        title: "Gestion des Bon de production",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

   
$("#journeQte").mouseout(function(){
    // console.log("change change change change ")
    if($("#journeQte").html() ==""){
        $(this).parent().parent().find(".validproddetail").prop('checked', false)
        $("#weight").html("-")
    
    }
    else{
        journeQte = parseInt($("#journeQte").html());
        unitedWeight = parseFloat($("#weightArtUnite").val())
        // console.log(" unitedWeight : "+ unitedWeight);
        // console.log(" journeQte : "+ journeQte);
        if(!isNaN(journeQte)){

            total = unitedWeight*journeQte
            total = total.toFixed(3);
            $("#weight").html(" " +total)
        }
    }
});

    $("#dialogs").dialog("open");

}

function populate_list(data) {

    var validprod = {};
    validprod.titre = "valider bon de production"
    validprod.attr = ["a_prodCodeDeviBc"]
    validprod.class = "validprodbtn"
    validprod.visible = function (param) {
        if (param.datarefval.b_etatCode == 75) {
            return true
        } else {
            return false
        }
    }

    validprod.fnct = function (param) {

        get_ajax_data("/prod/asyn_validprod", param, function (data) {

        });

    }



    var genprod = {};
    genprod.titre = "Suivie de production"
    genprod.attr = ["a_prodCodeDeviBc"]
    genprod.class = "genprodbtn"
    genprod.visible = function (param) {
        if (param.datarefval.b_etatCode == 74 || param.datarefval.b_etatCode == 75) {
            return true
        } else {
            return false
        }
    }
    genprod.fnct = function (param) {


        param.journeDate = $("#journeDate").val();

        window.globparam = param;

        window.qtestk = new Array();

        var params = {}

        params.exe = $("#exe").val();

        window.mode = "u"

        get_ajax_data("/prod/asyn_get_datauniqcode", params, function (datas) {

            reset_form();

            $("#prodExerciceProd").val($("#exe").val())

            $("#prodCodeProd").val(datas.data);

            get_ajax_data("/prod/asyn_get_data_object", param, function (data) {

                genprod_mode();

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
                $("#dataartlineobject").html("");
               
                $.each(data.datas, function (indexs, values) {
                            // console.log(values);
                    var html = '<tr class="dataDet" key="prodDetailId" idval="' + values.prodDetailId + '">"';
                    html += "<td id='consProdId' class='itemart' >"
                    if (values.consProdId.length != 0) {
                        $.each(values.consProdId[0].prodCons, function (index, value) {

                            if (value.consprodArticleCode !== null) {
                                var art = value.consprodArticleCode.artCode;
                            } else {
                                var art = 'non-trouver'
                            }

                            if (value.consprodCodeFrs !== null) {
                                var frs = value.consprodCodeFrs.frsCode;
                            } else {
                                var frs = 'non-trouver'
                            }
                            html += '<div class="detartFrs">' + value.consprodType + '-' + art + '-' + frs + '-' + value.consprodQte + '  <i class="fa fa-remove rmartfrs" ></i> </div>';
                        })
                    }

                    html += "</td>";
                    html += "<td id='proddetailArticleCode'  class='itemart'>" + values.proddetailArticleCode.artCode + "</td>";
                    html += "<td id='artDesign' >" + values.proddetailArticleCode.artDesignation + "</td>";
                    if (values.consProdId.length == 0) {
                        html += "<td id='journeQte'   onmouseout='updateWeight(this)' contenteditable='true' class='itemart inputdecorator'  ></td>";
                    } else {
                        html += "<td id='journeQte'  onmouseout='updateWeight(this)'  contenteditable='true' class='itemart inputdecorator' >" + values.consProdId[0].journeQte + "</td>";
                    }
                    html += "<td id='weight' class='itemart'   > - </td>";
                     html += "<td id='artUnit' >" + values.proddetailArticleCode.artUnite + "<input type='hidden' id='weightArtUnite' value=" + values.proddetailArticleCode.artWeight + " /></</td>";
                    if (values.consProdId.length == 0) {
                        html += "<td id='journeDatePeromption' class='itemart' >" + '<input type="text" datepick>' + "</td>";
                    } else {
                        
                        html += "<td id='journeDatePeromption' class='itemart' >" + '<input value="' + dateformat(values.consProdId[0].journeDate.date.split(" ")[0]) + '" type="text" datepick>' + "</td>";
                    }

                    html += "<td id='qteProduite' class='itemart' >" + values.qteProduite + "</td>";
                    html += "<td id='proddetailQteDevis' class='itemart' >" + values.proddetailQteDevis + "</td>";
                    html += '<td id="oper" class="col-3 " > '
                   // html += '<div class="ui-dialog-buttonpane ui-widget-content "><div class="ui-dialog-buttonset">';
                    html += '<button type="button" class="btn px-2 btn-primary btn-xs consproddetailbtn"   style=""> Selectioner </button>';
                    html += '&nbsp;&nbsp;&nbsp; sauvegarder <input class="btn  validproddetail btn-primary btn-xs" type="checkbox" id="check-' + values.prodDetailId + '" /> ';
                   // html += '</div></div>'
                    html += '</td>'
                    html += "</tr>";

                    $("#dataartlineobject").append(html);
            
                })
                

                $("#addform").attr("action", "gen_data");

                inti_dialog();

            });

        });

    }



    var consult = {};
    consult.titre = "Consultation"
    consult.attr = ["a_prodCodeDeviBc"]
    consult.class = "consultbtn"
    consult.visible = function (param) {
        if (param.datarefval.b_etatCode == 76 || param.datarefval.b_etatCode == 77) {
            return true
        } else {
            return false
        }
    }
    consult.fnct = function (param) {

        param.journeDate = $("#journeDate").val();

        window.qtestk = new Array();

        window.globparam = param;

        window.mode = "c"

        get_ajax_data("/prod/asyn_get_data_object", param, function (data) {

            reset_form();

            non_edit_mode();

            validprod_mode();

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

            $("#dataartlineobject").html("");
            $("#dataartlineobjectp").html("");
            $.each(data.datas, function (indexs, values) {

                var html = '<tr class="dataDet" key="prodDetailId" idval="' + values.prodDetailId + '">"';
                html += "<td id='consProdId' class='itemart' >"
                if (values.consProdId.length != 0) {
                    $.each(values.consProdId[0].prodCons, function (index, value) {

                        if (value.consprodArticleCode !== null) {
                            var art = value.consprodArticleCode.artCode;
                        } else {
                            var art = 'non-trouver'
                        }

                        if (value.consprodCodeFrs !== null) {
                            var frs = value.consprodCodeFrs.frsCode;
                        } else {
                            var frs = 'non-trouver'
                        }
                        html += '<div class="detartFrs">' + value.consprodType + '-' + art + '-' + frs + '-' + value.consprodQte + '  </div>';
                    })
                }

                html += "</td>";
                html += "<td id='proddetailArticleCode'  class='itemart'>" + values.proddetailArticleCode.artCode + "</td>";
                html += "<td>" + values.proddetailArticleCode.artDesignation + "</td>";
                if (values.consProdId.length == 0) {
                    html += "<td id='journeQte' onmouseout='updateWeight(this)' contenteditable='true' class='itemart inputdecorator' ></td>";
                    html += "<td id='journeDatePeromption' class='itemart' >" + '<input type="text" datepick>' + "</td>";
                } else {

                    html += "<td id='journeQte' onmouseout='updateWeight(this)'   class='itemart' > " + values.consProdId[0].journeQte + "</td>";
                    html += "<td id='journeDatePeromption' class='itemart' >" + dateformat(values.consProdId[0].journeDate.date.split(" ")[0]) + "</td>";
                }
                html += "<td id='weight' class='itemart'  > - </td>";
                     html += "<td id='artUnit' >" + values.proddetailArticleCode.artUnite + "<input type='hidden' id='weightArtUnite' value=" + values.proddetailArticleCode.artWeight + " /></</td>";
                  // html += "<td>" + values.proddetailArticleCode.artUnite + "</td>";

                html += "<td id='qteProduite' class='itemart' >" + values.qteProduite + "</td>";
                // html += "<td id='weight' class='itemart' >" + values.qteProduite + "</td>";

                html += "<td id='proddetailQteDevis' class='itemart' >" + values.proddetailQteDevis + "</td>";
                html += '<td id="oper">';
                html += '<button class="btn btn-primary btn-xs consproddetailbtn"   style="display: inline-block;"> Selectioner </button> ';
                html += '&nbsp;&nbsp;&nbsp; sauvgarder <input class="btn  validproddetail btn-primary btn-xs" type="checkbox" id="check-' + values.prodDetailId + '" /> ';
                html += '</td>';
                html += "</tr>";

                $("#dataartlineobject").append(html);

            })

            $.each(data.datas, function (indexs, values) {


                var html = '<tr class="dataDetp" key="prodDetailId" idval="' + values.prodDetailId + '">"';
                html += "<td id='consProdId'  >";

                if (values.consProdId.length != 0) {
                    $.each(values.consProdId[0].prodCons, function (index, value) {

                        if (value.consprodArticleCode !== null) {
                            var art = value.consprodArticleCode.artCode;
                        } else {
                            var art = 'non-trouver'
                        }

                        if (value.consprodCodeFrs !== null) {
                            var frs = value.consprodCodeFrs.frsCode;
                        } else {
                            var frs = 'non-trouver'
                        }
                        html += '<div class="detartFrs">' + value.consprodType + '-' + art + '-' + frs + '-' + value.consprodQte + ' </div>';
                    })
                }
                html += "</td>";
                html += "<td id='proddetailArticleCode'  class='itemart'>" + values.proddetailArticleCode.artCode + "</td>";
                html += "<td id='artDesign'>" + values.proddetailArticleCode.artDesignation + "</td>";
                html += "<td id='artUnit'>" + values.proddetailArticleCode.artUnite + "</td>";
                html += "<td id='proddetailQteDevis' class='itemart' >" + values.proddetailQteDevis + "</td>";



                html += "</tr>";


                $("#dataartlineobjectp").append(html);
            })

            $("#addform").attr("action", "valid_data");

            $(".addartform").hide();

            inti_dialog_non_edit();
        });
    }


    var annul = {};
    annul.titre = "Annulation"
    annul.attr = ["a_prodCodeDeviBc"]
    annul.class = "supptbtn"
    annul.visible = function (param) {
        if (param.datarefval.b_etatCode == 75) {
            return true
        } else {
            return false
        }
    }
    annul.fnct = function (param) {

        $.confirm("Voulez vous vraiment annulé se bon de production ", function () {

            get_ajax_data("/prod/asyn_annulation_data", param, function (data) {
                $("#list-container").html("");
            });

        })

    }

    $.buildTable("#list-container", "Liste des bon de production", data.data, [annul, genprod, validprod, consult]);

}

function get_journe_detail() {
    if (window.mode == "u") {

        reset_form();

        window.qtestk = new Array();

        var params = window.globparam;

        params.journeDate = $("#journeDate").val();

        params.exe = $("#exe").val();

        get_ajax_data("/prod/asyn_get_data_object", params, function (data) {

            genprod_mode();

            edit_mode();
            // $("#journeQte").mouseout(function(){
            //     console.log("change change change change ")
            //     if($("#journeQte").html() ==""){
            //         $(this).parent().parent().find(".validproddetail").prop('checked', false)
            //         $("#weight").html("-")
                
            //     }
            //     else{
            //         journeQte = parseInt($("#journeQte").html());
            //         unitedWeight = parseFloat($("#weightArtUnite").val())
            //         console.log(" unitedWeight : "+ unitedWeight);
            //         console.log(" journeQte : "+ journeQte);
            //         if(!isNaN(journeQte)){
            
            //             total = unitedWeight*journeQte
            //             total = total.toFixed(3);
            //             $("#weight").html("" +total)
            //         }
            //     }
            // });

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
            $("#dataartlineobject").html("");
            $("#dataartlineobjectp").html("");
            $.each(data.datas, function (indexs, values) {

                var html = '<tr class="dataDet" key="prodDetailId" idval="' + values.prodDetailId + '">"';
                html += "<td id='consProdId' class='itemart' >"
                if (values.consProdId.length != 0) {
                    $.each(values.consProdId[0].prodCons, function (index, value) {

                        if (value.consprodArticleCode !== null) {
                            var art = value.consprodArticleCode.artCode;
                        } else {
                            var art = 'non-trouver'
                        }

                        if (value.consprodCodeFrs !== null) {
                            var frs = value.consprodCodeFrs.frsCode;
                        } else {
                            var frs = 'non-trouver'
                        }
                        html += '<div class="detartFrs ">' + value.consprodType + '-' + art + '-' + frs + '-' + value.consprodQte + '<i class="fa fa-remove rmartfrs" ></i> </div>';
                    })
                }

                if (values.consProdId.length == 0) {
                    tot ='-'
                }else{

                    tot = parseInt(values.consProdId[0].journeQte)*parseFloat(values.proddetailArticleCode.artWeight)
                }

                html += "</td>";
                html += "<td id='proddetailArticleCode'  class='itemart'>" + values.proddetailArticleCode.artCode + "</td>";
                html += "<td  id='artDesign' >" + values.proddetailArticleCode.artDesignation + "</td>";
                if (values.consProdId.length == 0) {
                    html += "<td id='journeQte' contenteditable='true' onmouseout='updateWeight(this)' class='itemart inputdecorator' ></td>";
                } else {

                    html += "<td id='journeQte'  onmouseout='updateWeight(this)' contenteditable='true' class='itemart inputdecorator' >" + values.consProdId[0].journeQte + "</td>";
                }
                html += "<td id='weight' class='itemart'  > " + tot + " </td>";
                html += "<td id='artUnit' >" + values.proddetailArticleCode.artUnite + "<input type='hidden' id='weightArtUnite' value=" + values.proddetailArticleCode.artWeight + " /></</td>";
                if (values.consProdId.length == 0) {
                    html += "<td id='journeDatePeromption' class='itemart' >" + '<input type="text" datepick>' + "</td>";
                } else {
                    console.log(values.consProdId)
                    html += "<td id='journeDatePeromption' class='itemart' >" + '<input value="' + dateformat(values.consProdId[0].journeDate.date.split(" ")[0]) + '" type="text" datepick>' + "</td>";
                }
                html += "<td id='qteProduite' class='itemart'  >" + values.qteProduite + "</td>";
                
                html += "<td id='proddetailQteDevis' class='itemart' >" + values.proddetailQteDevis + "</td>";
                html += '<td id="oper">';
                html += '<button class="btn btn-primary btn-xs consproddetailbtn"   style="display: inline-block;"> Selectioner </button>';
                html += '&nbsp;&nbsp;&nbsp; sauvgarder <input class="btn  validproddetail btn-primary btn-xs" type="checkbox" id="check-' + values.prodDetailId + '" /> ';
                html += '</td>'
                html += "</tr>";

                $("#dataartlineobject").append(html);
                $("#dataartlineobjectp").append(html);
            })

            $("#addform").attr("action", "gen_data");

            inti_dialog();
  

        });
    } else if (window.mode == "c") {


        window.qtestk = new Array();

        var params = window.globparam;

        params.journeDate = $("#journeDate").val();

        params.exe = $("#exe").val();

        get_ajax_data("/prod/asyn_get_data_object", params, function (data) {

            reset_form();

            non_edit_mode();

            validprod_mode();

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

            $("#dataartlineobject").html("");
            $("#dataartlineobjectp").html("");
            $.each(data.datas, function (indexs, values) {

                var html = '<tr class="dataDet" key="prodDetailId" idval="' + values.prodDetailId + '">"';
                html += "<td id='consProdId' class='itemart' >"
                if (values.consProdId.length != 0) {
                    $.each(values.consProdId[0].prodCons, function (index, value) {

                        if (value.consprodArticleCode !== null) {
                            var art = value.consprodArticleCode.artCode;
                        } else {
                            var art = 'non-trouver'
                        }

                        if (value.consprodCodeFrs !== null) {
                            var frs = value.consprodCodeFrs.frsCode;
                        } else {
                            var frs = 'non-trouver'
                        }
                        html += '<div class="detartFrs">' + value.consprodType + '-' + art + '-' + frs + '-' + value.consprodQte + '   </div>';
                    })
                }

                html += "</td>";
                html += "<td id='proddetailArticleCode'  class='itemart'>" + values.proddetailArticleCode.artCode + "</td>";
                html += "<td>" + values.proddetailArticleCode.artDesignation + "</td>";
                if (values.consProdId.length == 0) {
                    html += "<td id='journeQte' onmouseout='updateWeight(this)' contenteditable='true' class='itemart inputdecorator' ></td>";
                } else {

                    html += "<td id='journeQte' onmouseout='updateWeight(this)'  class='itemart' >" + values.consProdId[0].journeQte + "</td>";
                }
                html += "<td id='weight' class='itemart'  > - </td>";
                     html += "<td id='artUnit' >" + values.proddetailArticleCode.artUnite + "<input type='hidden' id='weightArtUnite' value=" + values.proddetailArticleCode.artWeight + " /></</td>";
                
                if (values.consProdId.length == 0) {
                    html += "<td id='journeDatePeromption' class='itemart' >" + '<input type="text" datepick>' + "</td>";
                } else {

                    html += "<td id='journeDatePeromption' class='itemart' >" + dateformat(values.consProdId[0].journeDate.date.split(" ")[0]) + "</td>";
                }

                html += "<td id='qteProduite' class='itemart' >" + values.qteProduite + "</td>";
               // html += "<td id='weight' class='itemart' >" + values.qteProduite + "</td>";
                html += "<td id='proddetailQteDevis' class='itemart' >" + values.proddetailQteDevis + "</td>";
                html += '<td id="oper">'; 
                html += '<button class="btn btn-primary btn-xs consproddetailbtn"   style="display: inline-block;"> Selectioner </button>';
                html += '&nbsp;&nbsp;&nbsp; sauvgarder <input class="btn  validproddetail btn-primary btn-xs" type="checkbox" id="check-' + values.prodDetailId + '" /> ';
                html += ' </td>'
                html += "</tr>";

                $("#dataartlineobject").append(html);

            })

            $.each(data.datas, function (indexs, values) {


                var html = '<tr class="dataDetp" key="prodDetailId" idval="' + values.prodDetailId + '">"';
                html += "<td id='consProdId'  >";

                if (values.consProdId.length != 0) {
                    $.each(values.consProdId[0].prodCons, function (index, value) {

                        if (value.consprodArticleCode !== null) {
                            var art = value.consprodArticleCode.artCode;
                        } else {
                            var art = 'non-trouver'
                        }

                        if (value.consprodCodeFrs !== null) {
                            var frs = value.consprodCodeFrs.frsCode;
                        } else {
                            var frs = 'non-trouver'
                        }
                        html += '<div class="detartFrs">' + value.consprodType + '-' + art + '-' + frs + '-' + value.consprodQte + ' </div>';
                    })
                }
                html += "</td>";
                html += "<td id='proddetailArticleCode'  class='itemart'>" + values.proddetailArticleCode.artCode + "</td>";
                html += "<td id='artDesign'>" + values.proddetailArticleCode.artDesignation + "</td>";
                  html += "<td id='artUnit'>" + values.proddetailArticleCode.artUnite + "</td>";
                html += "<td id='proddetailQteDevis' class='itemart' >" + values.proddetailQteDevis + "</td>";



                html += "</tr>";


                $("#dataartlineobjectp").append(html);
            })

            $("#addform").attr("action", "valid_data");

            $(".addartform").hide();

            inti_dialog_non_edit();
        });

    }
}

function genprod_mode() {
    $("[forminput]").each(function () {
        $(this).hide();
    })
    $("[prod]").each(function () {
        $(this).show();
    })
}


function validprod_mode() {
    $("[forminput]").each(function () {
        $(this).hide();
    })
    $("[validprod]").each(function () {
        $(this).show();
    })
}
function ajout_article_data(data) {
    console.log(data)

    if (data.etat == 0) {

        var execp = false;

        var artfrs = $("#proddetailArticleCodes").val();
        var artfrsarray = artfrs.split("-");
        window.formapp.qtestk = [];
        // console.log(data.artType);
        
        $(".selectedProdDet").find("#consProdId").find(".detartFrs").each(function () {
          

            if (artfrsarray[1] == $(this).html().split("-")[1]) {
                $.alertMsg("Vous avez dèja introduit cette article", "Ajout article")
                execp = true;
            }
             
            
        })

        if (!execp) {
            if (data.artType == 'MC') {
                console.log("je suis !")
                $.alertMsg("Vous devez Choisir une Matière première", "Ajout article")
                execp = true;
            }
        //  console.log(data.artUnite);
         $('#g_artUnite').html(data.artUnite);
         $('#g_artType').html(data.artType);
            var html = '<div class="detartFrs" >' + $("#proddetailArticleCodes").val() + "-" + $("#consprodQtes").val() + '<i class="fa fa-remove rmartfrs" ></i></div>';
            $(".selectedProdDet").find("#consProdId").html(html)


        } else {
            $.alertMsg("Verifier la valeur introduite", "Ajout article")
        }
        var arrat = [];
        $(".detartFrs").each(function () {
            var arr = {};
            arr.art = $(this).html().split("<")[0].split("-")[1];
            arr.qte = $(this).html().split("<")[0].split("-")[3];
            arrat.push(arr);
        })

        window.formapp.qtestk = arrat;

        console.log(arrat);


    }

}


function getdetailObject() {

    var objs = [];
    var error = false;

    var demmandeqte = 0
    var produiteqte = 0
    var journeqte = 0

    $("#dataartlineobject").find(".dataDet").each(function () {
        var obj = {};
        obj[$(this).attr("key")] = $(this).attr("idval");
        $(this).find(".itemart").each(function () {

            if ($(this).attr("id") == "proddetailQteDevis") {
                demmandeqte = parseFloat($(this).html());
            }
            if ($(this).attr("id") == "qteProduite") { 
                    produiteqte = parseFloat($(this).html());   
                    
                    if(!produiteqte){
                        produiteqte = 0;
                    }
            }

            if ($(this).attr("id") !== "oper") {
                if ($(this).attr("id") !== "consProdId") {

                    if ($(this).attr("id") == "journeQte") {
                        if (!$.isNumeric($(this).html())) {
                            $.alertMsg("Les Qtes doivent étre de type numérique", "Production")
                            error = true;
                            journeqte = 1000000000000000000000000000000000;
                        } else {
                            journeqte = parseFloat($(this).html());
                        }
                    }

                    if ($(this).find("input").length > 0) {
                        obj[$(this).attr("id")] = $(this).find("input").val();
                    } else {
                        obj[$(this).attr("id")] = $(this).html();
                    }

                } else {
                    obj["consProdId"] = new Array();
                    $(this).find(".detartFrs").each(function () {
                        var arr = $(this).html().split('<')[0].split("-");
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

        if (parseFloat(demmandeqte) < (parseFloat(journeqte) + parseFloat(produiteqte))) {
            $.alertMsg("Merci de ne pas dépassser les Qtes demandé ", "Production")
            error = true;
        }

        if (typeof obj["consProdId"] !== 'undefined') {
            if (obj["consProdId"].length > 0) {
                objs.push(obj);
            } else {
                $.alertMsg("Merci de remplire les article des matiéres premiéres manquants", "Production")
                error = true;
            }
        } else {
            objs.push(obj);
        }

    })

    if (!error) {
        return objs;
    } else {
        return false;
    }

}


function ajout_data() {

    var param = {}
    param = getFromObj("#" + "addform")
    param.prodCodeDeviBcs = getdetailObject();
    param.mag = $("#mag").val()
    get_ajax_data("/prod/asyn_ajout_data", param, function (data) {
        if (data.etat == "1") {
            $("#dialogs").dialog("close");
        }
    })

}

function gen_data() {
    var param = {}
    param = getFromObj("#" + "addform")
    console.log('test : ' + $(".validproddetail").length)
    validLine = false;
    $(".validproddetail").each(function () {
       if($(this).prop('checked') == true){
        validLine = true;
       }
    })
    if(validLine){
        
   
    var objs = getdetailObjectBis();
    console.log("line 1088 : ", objs);
    if (objs !== false) {
        param.prodCodeDeviBcs = objs;
        param.mag = $("#mag").val()
        get_ajax_data("/prod/asyn_genprod", param, function (data) {
            if (data.etat == "1") {
                $("#dialogs").dialog("close");
            }
        })
    } else {
        $.alertMsg("Merci de verifier les valeurs introduite", "Production");
    }
    }else{
        $.alertMsg("Merci de verifier les valeurs introduite!!!", "Production");
    }
}

function valid_data() {

    var param = {}
    param = getFromObj("#" + "addform")
    param.prodCodeDeviBcs = getdetailObject();
    param.mag = $("#mag").val()
    get_ajax_data("/prod/asyn_validprod", param, function (data) {
        if (data.etat == "1") {
            $("#dialogs").dialog("close");
        }
    })

}


function updateWeight(elem){
    console.log("change change change change updateWeight", $(elem).parent().parent().prop("id"))

    tbodyId = $(elem).parent().parent().prop("id");
    // $(test).text(10)
    // console.log("$(test).text()" , $(elem).text())
        if($(elem).text() ==""){
            // console.log('oui oui !');
            $(elem).parent().parent().find(".validproddetail").prop('checked', false)
            $("#"+ tbodyId).find("#weight").html("-")
        
        }
        else{
            journeQte = parseInt($(elem).text());
            unitedWeight = parseFloat($("#"+ tbodyId).find("#weightArtUnite").val())
             console.log(" unitedWeight : "+ unitedWeight);
            // console.log(" journeQte : "+ journeQte);
            if(!isNaN(journeQte) && !isNaN(unitedWeight) ){

                total = unitedWeight*journeQte
                total = total.toFixed(3);
                $("#"+ tbodyId).find("#weight").html("" +total)
            }
            else{
                $("#"+ tbodyId).find("#weight").html("-" )
            }
            

        }

}

function getdetailObjectBis() {

    var objs = [];
    var error = false;

    var demmandeqte = 0
    var produiteqte = 0
    var journeqte = 0
    
    $("#dataartlineobject").find(".dataDet").each(function () {
        var obj = {};
        if($(this).find(".validproddetail").prop('checked') == true){
        
        obj[$(this).attr("key")] = $(this).attr("idval");
        $(this).find(".itemart").each(function () {

            if ($(this).attr("id") == "proddetailQteDevis") {
                demmandeqte = parseFloat($(this).html());
            }
            if ($(this).attr("id") == "qteProduite") { 
                    produiteqte = parseFloat($(this).html());   
                    
                    if(!produiteqte){
                        produiteqte = 0;
                    }
            }

            if ($(this).attr("id") !== "oper") {
                if ($(this).attr("id") !== "consProdId") {

                    if ($(this).attr("id") == "journeQte") {
                        if (!$.isNumeric($(this).html())) {
                            $.alertMsg("Les Qtes doivent étre de type numérique", "Production")
                            error = true;
                            console.log("je suis en 1150")
                            journeqte = 1000000000000000000000000000000000;
                        } else {
                            journeqte = parseFloat($(this).html());
                        }
                    }

                    if ($(this).find("input").length > 0) {
                        obj[$(this).attr("id")] = $(this).find("input").val();
                    } else {
                        obj[$(this).attr("id")] = $(this).html();
                    }

                } else {
                    obj["consProdId"] = new Array();
                    $(this).find(".detartFrs").each(function () {
                        var arr = $(this).html().split('<')[0].split("-");
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

        if (parseFloat(demmandeqte) < (parseFloat(journeqte) + parseFloat(produiteqte))) {
            $.alertMsg("Merci de ne pas dépassser les Qtes demandé ", "Production")
            error = true;
            console.log("je suis en 1181")
        }

        if (typeof obj["consProdId"] !== 'undefined') {
            if (obj["consProdId"].length > 0) {
                // if($(this).find(".validproddetail").prop('checked') == true){

                    console.log($(this).find(".validproddetail").prop('id'));
                    objs.push(obj);
                    
                // }
               
            } else {
                $.alertMsg("Merci de remplire les article des matiéres premiéres manquants", "Production")
                error = true;
                console.log("je suis en 1195")
            }
        } else {

            // if($(this).find(".validproddetail").prop('checked') == true){

                console.log($(this).find(".validproddetail").prop('id'));
                objs.push(obj);
                
            // }

            
            
        }
    }
    })
    console.log('error : '+ error);
    console.log('objs : '+ objs);
    if (!error) {
        return objs;
    } else {
        return false;
    }

}




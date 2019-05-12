$(document).ready(function () {

    $("#analytique").dialog({
        buttons: {
            "Ok": function () {
                $(this).dialog("close");
            }
        },
        close: function (event, ui) {
            $(this).dialog("close");
        },
        autoOpen: false,
        resizable: true,
        title: "Gestion des affectations analytique",
        modal: true,
        height: $(window).height() * 0.5,
        width: $(window).width() * 0.5,
    })

    $("#btn_gestion_aff").click(function () {
        $("#analytique").dialog("open");
    })

    $("#typeAffectation").change(function () {
        modelautoaff();
    })


    $("#btn_aj_typeaff").click(function () {
        $("<div></div>").dialog({
            buttons: {
                "Ajouter": function () {
                    var param = {}
                    if ($("#afftypeinp").val().length != 0) {
                        param.aff = $("#afftypeinp").val();
                        var dlg = $(this)
                        get_ajax_data("/consommation/asyn_ajout_typeaff", param, function (data) {
                            if (data.etat == "1") {
                                modelauto("#typeAffectation")
                                dlg.remove();
                            }
                        })
                    }
                },
                "Annuler": function () {
                    $(this).remove();
                }
            },
            close: function (event, ui) {
                $(this).remove();
            },
            resizable: true,
            title: "Ajouter une unité commeciale",
            modal: true,
            height: $(window).height() * 0.3,
            width: $(window).width() * 0.3,
        }).html('<div><input class="form-control" id="afftypeinp" placeholder="Nouvelle unité commerciale"></div>')
    })

    $("#btn_sup_typeaff").click(function () {
        $("<div></div>").dialog({
            buttons: {
                "supprimer": function () {
                    var param = {}
                    var dlg = $(this)
                    param.aff = $("#typeAffectation").val();
                    get_ajax_data("/consommation/asyn_supp_typeaff", param, function (data) {
                        if (data.etat == "1") {
                            modelauto("#typeAffectation")
                            dlg.remove();
                        }
                    })

                },
                "Annuler": function () {
                    $(this).remove();
                }
            },
            close: function (event, ui) {
                $(this).remove();
            },
            resizable: true,
            title: "Supprimer une unité commerciale",
            modal: true,
            height: $(window).height() * 0.3,
            width: $(window).width() * 0.3,
        }).html('<div>Voulez vous vraiment supprimer cette unité commerciale <br>nb : l\'unité commerciale sera supprimé si seulement elle n\'est attaché a aucune consommation</div>')
    })



    $("#btn_aj_aff").click(function () {
        $("<div></div>").dialog({
            buttons: {
                "Ajouter": function () {
                    var param = {}
                    if ($("#affinp").val().length != 0 || $("#typeAffectation").val().length != 0) {
                        param.aff = $("#affinp").val();
                        param.typeaff = $("#typeAffectation").val();
                        var dlg = $(this)
                        get_ajax_data("/consommation/asyn_ajout_aff", param, function (data) {
                            if (data.etat == "1") {
                                modelautoaff()
                                dlg.remove();
                            }
                        })
                    }
                },
                "Annuler": function () {
                    $(this).remove();
                }
            },
            close: function (event, ui) {
                $(this).remove();
            },
            resizable: true,
            title: "Ajouter une nouvelle affecation",
            modal: true,
            height: $(window).height() * 0.3,
            width: $(window).width() * 0.3,
        }).html('<div><input class="form-control" id="affinp" placeholder="Nouveau type d\'affecation"></div>')
    })

    $("#btn_sup_aff").click(function () {
        $("<div></div>").dialog({
            buttons: {
                "supprimer": function () {
                    var param = {}
                    var dlg = $(this)
                    param.aff = $("#affectation").val();
                    get_ajax_data("/consommation/asyn_supp_aff", param, function (data) {
                        if (data.etat == "1") {
                            modelautoaff()
                            dlg.remove();
                        }
                    })

                },
                "Annuler": function () {
                    $(this).remove();
                }
            },
            close: function (event, ui) {
                $(this).remove();
            },
            resizable: true,
            title: "Supprimer une affectation",
            modal: true,
            height: $(window).height() * 0.3,
            width: $(window).width() * 0.3,
        }).html('<div>Voulez vous vraiment supprimer cette affectation <br>nb : l\affectation sera supprimé si seulement elle n\'est attaché a aucune consommation</div>')
    })



    get_stkalert();

    actualise_stock()

    window.arttrace = ""
    window.lottrace = ""

    window.modul = "consommation";
    $("#get_cons_form").validate({
        rules: {
        }
    })

    $("#valdartline").click(function () {

        $("#addartbeform").submit();

    })

    var validateur = $("#addartbeform").validate({
        rules: {
        },
        messages: {
        }
    });

    $("#consDateperomption").mask("00r00r0000", {
        translation: {
            'r': {
                pattern: /[\/]/,
                fallback: '/'
            },
            placeholder: "__/__/____"
        }
    });

    if ($(this).val() == 0) {
        $(".beetr").hide();
    } else {
        $(".beetr").show();
    }

    $("#consTypecode").change(function () {
        if ($(this).val() == 0) {
            $(".beetr").hide();
        } else {
            $(".beetr").show();
        }
    })

    $("#addform").validate({
        rules: {
        }
    })

    $("#artEtatCode").select2()

    $("#dialogs").hide();

    $("#btn_nouveau_cons").click(function () {
        var param = {}
        param.exe = $("#exe").val();
        get_ajax_data("/consommation/asyn_get_consuniqcode", param, function (data) {
            reset_form();
            $("#addform").attr("action", "ajout_consommation");
            edit_mode();
            $(".addartform").show();
            inti_dialog();
            $("#consExercice").val($("#exe").val())
            $("#consCode").val(data.data);
        });
    })


    edit_mode()

    reset_form();

    $(".delart").livequery(function () {
        $(this).click(function () {
            $(this).parent().parent().remove();
        })
    })


    $(".motif").hide();


    $("#consType").change(function () {
        if ($(this).val() != null) {
            if ($(this).val() == 0) {
                $(".motif").hide();
            } else {
                $(".motif").show();
            }
        }
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
        get_ajax_data("/consommation/asyn_getautoselectaff", param, function (data) {
            elmselect.append('<option value=""></option>');
            $.each(data.data, function (index, value) {
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
    $("#consartlineobject").html("");
    $("#addform").find("input").each(function () {
        if ($(this).attr("id") !== "consDatedem")
            $(this).val("");
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
                    pageTitle: "Bon de consommation",
                })
            }
        },
        close: function (event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Consultation des sorties",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

    $("#dialogs").dialog("open");

}

function inti_dialog(param) {

    window.mode = "add"

    $("#dialogs").dialog({
        buttons: {
            "Sauvegarder": function () {
                if ($(".stkConsomationDetail").length > 0) {
                    $("#addform").submit();
                } else {
                    $.alertMsg("la liste des articles est vides", "sortie articles")
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
        title: "Gestion des sorties",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

    $("#dialogs").dialog("open");

}


function inti_dialog_liv(param) {

    window.mode = "liv"

    $("#dialogs").dialog({
        buttons: {
            "Livrer": function () {
                if ($(".stkConsomationDetail").length > 0) {
                    $("#addform").submit();
                } else {
                    $.alertMsg("la liste des articles est vides", "sortie articles")
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
        title: "Gestion des sortie",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

    $("#dialogs").dialog("open");

}

function populate_list(data) {

    var modifier = {};
    modifier.titre = "Mise à jour"
    modifier.attr = ["a_consCode"]
    modifier.class = "modifierbtn"
    modifier.fnct = function (param) {

        get_ajax_data("/consommation/asyn_get_cons_object", param, function (data) {
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
            $("#consartlineobject").html("")
            $.each(data.datas, function (indexs, values) {

                var html = "<tr class='stkConsomationDetail'>";
                html += "<td id='consArtcode' class='itemart'>" + values.consArtcode.artCode + "</td>";
                html += "<td >" + values.consArtcode.artDesignation + "</td>";
                html += "<td id='consTracecode' class='itemart'>" + values.consTracecode + "</td>";
                html += "<td id='consLottracecode' class='itemart'>" + values.consLottracecode + "</td>";
                html += "<td id='consQtedem' class='itemart'>" + values.consQtedem + "</td>";
                html += "<td id='consQte' class='itemart'>" + values.consQte + "</td>";
                html += '<td><button  class="btn btn-danger btn-xs delart"><span class="glyphicon glyphicon-remove-circle"></span></button></td>';

                html += "</tr>";

                $("#consartlineobject").append(html)
            })
            $(".addartform").show();
            $("#addform").attr("action", "update_consommation");
            inti_dialog();
        });
    }

    var consult = {};
    consult.titre = "Consultation"
    consult.attr = ["a_consCode"]
    consult.class = "consultbtns"
    consult.fnct = function (param) {
        get_ajax_data("/consommation/asyn_get_cons_object", param, function (data) {
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

            


                $("#consType option").each(function (val, ind) {
                    if ($(this).attr("value") == data.data[0].consType) {
                        window.typlib = $(this).html();
                    }
                })


                $("#consMotif option").each(function (val, ind) {
                    if ($(this).attr("value") == data.data[0].consMotif) {
                        window.motlib = $(this).html();
                    }
                })

                $("#consTypep").html(window.typlib)
                
                $("#consMotifp").html(window.motlib)

            })
            
                $("#consAffectationcode").val(data.data[0].consAffectationcode.affectationCode).trigger("change");
                $("#consAffectationtypecode").val(data.data[0].consAffectationtypecode.afftypeCode).trigger("change");
                $("#consClientcode").val(data.data[0].consClientcode.frsCode).trigger("change");

                $("#consAffectationcodep").html(data.data[0].consAffectationcode.affectationDesignation)
                $("#consAffectationtypecodep").html(data.data[0].consAffectationtypecode.afftypeDesignation)
                $("#consClientcodep").html(data.data[0].consClientcode.frsRaisonsociale)
                
                
            $("#consartlineobject").html("");
            $("#consartlineobjectp").html("");
            $.each(data.datas, function (indexs, values) {


                var html = "<tr class='stkConsomationDetail'>";
                html += "<td id='consArtcode' class='itemart'>" + values.consArtcode.artCode + "</td>";
                html += "<td >" + values.consArtcode.artDesignation + "</td>";
                html += "<td id='consQtedem' class='itemart'>" + values.consQtedem + "</td>";
                html += "<td id='consQte' class='itemart'>" + values.consQte + "</td>";

                html += "</tr>";

                $("#consartlineobject").append(html)

                var html = "<tr class='stkConsomationDetail'>";
                html += "<td id='consArtcode' class='itemart'>" + values.consArtcode.artCode + "</td>";
                html += "<td >" + values.consArtcode.artDesignation + "</td>";
                html += "<td id='consQtedem' class='itemart'>" + values.consQtedem + "</td>";
                html += "<td id='consQte' class='itemart'>" + values.consQte + "</td>";
                html += "<td  class='itemart'>" + values.consArtcode.artPrix + "</td>";
                html += "<td  class='itemart'>" + values.consArtcode.artTva + "</td>";
                html += "<td  class='itemart pttc'>" + (parseFloat(values.consArtcode.artPrix) * parseFloat(values.consQte) + ((parseFloat(values.consArtcode.artPrix) * parseFloat(values.consQte) * parseFloat(values.consArtcode.artTva)) / 100)) + "</td>";
                html += "</tr>";

                html += "<tr>";
                html += "<td   class='itemart' colspan='6' >Totale</td>";
                html += "<td  class='itemart pttctot'></td>";
                html += "</tr>";
                $("#consartlineobjectp").append(html);
            })

            var totttc = 0;

            $(".pttc").each(function (value, index) {
                totttc += parseFloat($(this).html())
            })

            $(".pttctot").html(totttc);

            $("#addform").attr("action", "");
            $(".addartform").hide();
            inti_dialog_non_edit();
        });
    }


    var annul = {};
    annul.titre = "Annulation"
    annul.attr = ["a_consCode"]
    annul.class = "supptbtn"
    annul.dr = "annulationcons"
    annul.fnct = function (param) {

        $.confirm("Voulez vous vraiment annulé se bon de sortie", function () {

            get_ajax_data("/consommation/asyn_annulation_cons", param, function (data) {
                $("#list-container").html("");
            });

        })

    }

    var valid = {};
    valid.titre = "Livraison"
    valid.attr = ["a_consCode"]
    valid.class = "btnvalid"
    valid.dr = "validationcons"
    valid.condition = function (param) {
        return param.datarefval.b_etatCode == 51;
    }
    valid.fnct = function (param) {

        get_ajax_data("/consommation/asyn_get_cons_object", param, function (data) {
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
            
            
                     $("#consAffectationcode").val(data.data[0].consAffectationcode.affectationCode).trigger("change");
                $("#consAffectationtypecode").val(data.data[0].consAffectationtypecode.afftypeCode).trigger("change");
                $("#consClientcode").val(data.data[0].consClientcode.frsCode).trigger("change");

                $("#consAffectationcodep").html(data.data[0].consAffectationcode.affectationDesignation)
                $("#consAffectationtypecodep").html(data.data[0].consAffectationtypecode.afftypeDesignation)
                $("#consClientcodep").html(data.data[0].consClientcode.frsRaisonsociale)
            $("#consartlineobject").html("");
            $("#consartlineobjectp").html("");
            $("#consDate").val($("#dateinp").val());

            $.each(data.datas, function (indexs, values) {


                var html = "<tr class='stkConsomationDetail'>";
                html += "<td id='consArtcode' class='itemart'>" + values.consArtcode.artCode + "</td>";
                html += "<td >" + values.consArtcode.artDesignation + "</td>";
                html += "<td id='consTracecode' class='itemart'>" + values.consTracecode + "</td>";
                html += "<td id='consQtedem' class='itemart'>" + values.consQtedem + "</td>";
                html += "<td id='consQte' class='itemart inputlike'  contenteditable='true'>" + values.consQtedem + "</td>";
                html += "</tr>";
                $("#consartlineobject").append(html)
                $("#consartlineobjectp").append(html);
            })

            $("#addform").attr("action", "ajout_consommation");
            $(".addartform").hide();
            inti_dialog_liv();
        });



    }

    $.buildTable("#list-container", "Liste des sorties", data.data, [consult, annul, valid]);
    
    $('.a_consType').each(function(){
        if($(this).html()==0){
            $(this).html("Ordinaire")
        }else   if($(this).html()==1){
              $(this).html("Exceptionelle")
        }
    })

}


function ajout_article_cons(data) {

    if (data.data == 1) {

        var execp = false;
        $("#consartlineobject").find(".stkConsomationDetail").each(function () {
            if ($("#consArtcode").val() == $(this).find("#consArtcode").html()) {
                $.alertMsg("Vous avez dèja introduit cette article", "Ajout article")
                execp = true;
            }
        })

        if (!execp) {
            var selectmap = $("#consArtcode").select2('data');

            var html = "<tr class='stkConsomationDetail'>";
            html += "<td id='consArtcode' class='itemart'>" + $("#consArtcode").val() + "</td>";
            html += "<td >" + selectmap[0].text + "</td>";
            html += "<td id='consTracecode' class='itemart'>" + window.arttrace + "</td>";
            html += "<td id='consQtedem' class='itemart'>" + $("#consQte").val() + "</td>";
            html += "<td id='consQte' class='itemart'>-</td>";
            html += '<td><button  class="btn btn-danger btn-xs delart"><span class="glyphicon glyphicon-remove-circle"></span></button></td>';
            html += "</tr>";

            $("#consartlineobject").append(html)
            $("#consQte").tipsy("hide").removeAttr('original-title');
            $('#consArtcode').select2('open');
        }
    } else {

        $("#consQte").attr('title', 'Qte insuffisante en stock/ QTE = ' + data.qte);
        $("#consQte").tipsy({
            fade: true,
            gravity: 'w'
        });
        $("#consQte").tipsy("show");

        $("#consQte").val("");
        $("#consQte").focus();
    }

}


function getdetailObject() {

    var objs = [];

    $(".stkConsomationDetail").each(function () {
        var obj = {};
        $(this).find(".itemart").each(function () {
            obj[$(this).attr("id")] = $(this).html();
        })
        objs.push(obj);
    })

    return objs;

}

function getdetailObjectliv() {

    var objs = [];

    var err = false;

    $(".stkConsomationDetail").each(function () {

        var qteliv = $(this).find("#consQte").html()
        var qtedem = $(this).find("#consQtedem").html()
        var valid = (qteliv.match(/^-?\d*(\.\d+)?$/));

        if (valid) {
            if (parseFloat(qteliv) > parseFloat(qtedem)) {
                err = true;
                $(this).find("#consQte").addClass("error")
            } else {
                $(this).find("#consQtedem").removeClass("error")
            }
        } else {
            err = true;
            $(this).find("#consQte").addClass("error")
        }

        var obj = {};
        $(this).find(".itemart").each(function () {
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


function ajout_consommation() {

    var param = {}

    if (window.mode == "add") {
        param = getFromObj("#" + "addform")
        param.consCodes = getdetailObject();
        param.mag = $("#mag").val()
        get_ajax_data("/consommation/asyn_ajout_cons", param, function (data) {
            if (data.etat == "1") {
                $("#dialogs").dialog("close");
            }
        })

    } else if (window.mode == "liv") {

        param = getFromObj("#" + "addform")
        param.consCodes = getdetailObjectliv();
        if (param.consCodes != 0) {
            param.mag = $("#mag").val()
            get_ajax_data("/consommation/asyn_liv_cons", param, function (data) {
                if (data.etat == "1") {
                    $("#dialogs").dialog("close");
                }
            })
        } else {
            $.alertMsg("Merci de verifier les Qtes livré")
        }

    }

}


function update_consommation() {

    var param = {}
    param = getFromObj("#" + "addform")
    get_ajax_data_file("/consommation/asyn_update_cons", param, "artImage", function (data) {
        if (data.etat == "1") {
            $("#dialogs").dialog("close");
        }
    })

}

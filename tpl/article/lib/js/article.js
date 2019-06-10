$(document).ready(function () {

    window.modul = "article";
    $("#get_article_form").validate({
        rules: {
        }
    })

    $("#existant").change(function () {
        article_mode()
    })

    article_mode()

    $("#addform").validate({
        rules: {
            artDelaislivraison: {
                number: true,
            },
            artStockMinimale: {
                number: true,
            }
        }
    })

    $("#catarticle").dialog({
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
        title: "Gestion des catégories d'articles",
        modal: true,
        height: $(window).height() * 0.5,
        width: $(window).width() * 0.5,
    })

    $("#btn_gestion_cat").click(function () {
        $("#catarticle").dialog("open");
    })

    $("#artEtatCode").select2()

    $("#artClass").select2()

    $("#dialogs").hide();

    $("#btn_nouveau_article").click(function () {
        $("#artDatecreation").val($("#artDatecreationh").val())
        $("#liststk").html("")
        $("#listmvt").html("")
        $("#existant").show();
        article_mode()
        get_ajax_data("/article/asyn_get_artuniqcode", {}, function (data) {
            reset_form();
            inti_code_maker();
            $("#addform").attr("action", "ajout_article");
            edit_mode();
            inti_dialog();
            $("#uniqCode").val(data.data);

        });
    })

    $("#artImage").change(function () {
        readURLimage(this, "#articleimage");
    });

    edit_mode()

    reset_form();

    $("#btn_aj_cat").click(function () {
        $("<div></div>").dialog({
            buttons: {
                "Ajouter": function () {
                    var param = {}
                    if ($("#catArt").val().length != 0) {
                        param.catart = $("#catArt").val();
                        var dlg = $(this)
                        get_ajax_data("/article/asyn_ajout_cat", param, function (data) {
                            if (data.etat == "1") {
                                modelauto("#artCategrie")
                                modelauto("#artCategoriecode");
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
            title: "Ajouter une nouvelle catégrie",
            modal: true,
            height: $(window).height() * 0.3,
            width: $(window).width() * 0.3,
        }).html('<div><input class="form-control" id="catArt" placeholder="Nouvelle catégorie"></div>')
    })

    $("#btn_sup_cat").click(function () {
        $("<div></div>").dialog({
            buttons: {
                "supprimer": function () {
                    var param = {}
                    var dlg = $(this)
                    param.catart = $("#artCategrie").val();
                    get_ajax_data("/article/asyn_supp_cat", param, function (data) {
                        if (data.etat == "1") {
                            modelauto("#artCategrie")
                            modelauto("#artCategoriecode");
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
            title: "Ajouter une nouvelle catégrie",
            modal: true,
            height: $(window).height() * 0.3,
            width: $(window).width() * 0.3,
        }).html('<div>Voulez vous vraiment supprimer cette catégorie <br>nb : la catégorie sera supprimé si seulement elle n\'est attaché a aucun article</div>')
    })

})

function non_edit_mode() {
    $("[editmode]").each(function () {
        if ($(this).hasClass('select2-hidden-accessible')) {
            console.log($(this).attr("id"))
             $(this).select2('enable', [false])
        } else {
            $(this).attr("disabled", "disabled")
        }
    });

}

function edit_mode() {
    
    $("[editmode]").each(function () {
        if ($(this).hasClass('select2-hidden-accessible')) {
              console.log($(this).attr("id"))
           searchAuto(this)
             $(this).select2('enable', [true])
        } else {
            $(this).removeAttr("disabled");
        }
    });
   
}

function article_mode() {
    if (!$("#existant").is(":checked")) {
        $("#artCode").attr("readonly", "readonly")
        generate_code()
    } else {
        $("#artCode").removeAttr("readonly")
        $("#artCode").val("").focus()
    }
}

function inti_code_maker() {

    $("#frsCode").change(function () {
        if (!$("#existant").is(":checked")) {
            generate_code()
        }
    })

    $("#artCategoriecode").change(function () {
        if (!$("#existant").is(":checked")) {
            generate_code()
        }
    })

}

function unbind_code_maker() {
    $("#frsCode").unbind("change");
    $("#artCategoriecode").unbind("change");
}

function generate_code() {
    if ($("#uniqCode").val().length !== 0) {
        $("#artCode").val($("#frsCode").val() + $("#artCategoriecode").val() + $("#uniqCode").val())
    }
}

function reset_form() {
    console.log("form");
    $("#artCode").val("");
    $("#artCategoriecode").val("").trigger("change");
    $("#frsCode").val("").trigger("change");
    $("#uniqCode").val("");
    $("#artDesignation").val("");
    $("#artDescription").val("");
    $("#artImage").val("");
    $("#frsArtref").val("");
    $("#artDelaislivraison").val("");
    $("#artStockMinimale").val("");


}

function inti_dialog_non_edit(param) {

    $("#dialogs").dialog({
        buttons: {
            "Annuler": function () {
                $(this).dialog("close");
            },
            "Imprimer code bare": function () {
                $.confirmhtml('<div class="form-group marbutton beetr"><label  class="entformentet" for="entNumtransit">Nombre:</label><input editmode type="text" class="form-control" id="nbCodebare" name="nbCodebare" placeholder=""></div>', function () {

                    if ($("#nbCodebare").val().length > 0) {
                        $("#printbarecode").html("");

                        var inc = 0
                        var artcode = $("#artCode").val();
                        var artdes = $("#artDesignation").val();
                        var fornum = parseInt($("#nbCodebare").val());

                        for (count = 0; count < fornum; count++) {
                            var nameide = "bare" + inc
                            $("#printbarecode").append('<div style="margin-left:10px;font-size:22   px;">' + artdes + '</div>')
                            $("#printbarecode").append('<svg id="' + nameide + '"></svg>')
                            $("#" + nameide).JsBarcode(artcode);
                            $("#printbarecode").append('<br><div class="barecodepaging"></div>')
                            inc++
                        }


                        $("#printbarecode").printThis({
                            importCSS: true,
                            pageTitle: "",
                        })
                    }


                })
            }


        },
        close: function (event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Consultation des articles",
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
            }
        },
        close: function (event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Gestion des articles",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

    $("#dialogs").dialog("open");

}

function populate_list(data) {

    var modifier = {};
    modifier.titre = "Mise à jour"
    modifier.attr = ["g_artCode"]
    modifier.class = "modifierbtn"
    modifier.dr = "updateart"
    modifier.fnct = function (param) {
        $("#existant").hide();
        if ($("#existant").is(":checked")) {
            $("#existant").removeAttr("checked")
            $("#artCode").attr("readonly", "readonly")
        }


        get_ajax_data("/article/asyn_get_article", param, function (data) {
            reset_form();
            edit_mode();
            $("#artCode").val(data.data.data[0].g_artCode);
            $("#artCategoriecode").val(data.data.data[0].i_catartCode).trigger("change")
            $("#frsCode").val(data.data.data[0].p_frs_code).trigger("change");
            $("#artClass").val(data.data.data[0].g_artClass).trigger("change")
            $("#artDesignation").val(data.data.data[0].g_artDesignation);
            if (data.data.data[0].g_artDatecreation != null) {
                $("#artDatecreation").val(dateformat(data.data.data[0].g_artDatecreation.date.split(' ')[0]));
            }
            $("#artDescription").val(data.data.data[0].g_artDescription);
            $("#artDelaislivraison").val(data.data.data[0].g_artDelaislivraison)
            $("#artStockMinimale").val(data.data.data[0].g_artStockminimale)
            $("#artPrix").val(data.data.data[0].g_artPrix)
            $("#artTva").val(data.data.data[0].g_artTva)
            $("#frsArtref").val(data.data.data[0].p_frsArtref)
            setimage(path_base + "/" + "imgs" + "/" + data.data.data[0].g_artImage, "#articleimage")
            $("#addform").attr("action", "update_article");
            unbind_code_maker();
            inti_dialog();
        });
    }

    var consult = {};
    consult.titre = "Consultation"
    consult.attr = ["g_artCode"]
    consult.class = "consultbtn"
    consult.fnct = function (param) {
        $("#existant").hide();
        if ($("#existant").is(":checked")) {
            $("#existant").removeAttr("checked")
            $("#artCode").attr("readonly", "readonly")
        }

        get_ajax_data("/article/asyn_get_article", param, function (data) {

            non_edit_mode()

            reset_form();


            $("#artCode").val(data.data.data[0].g_artCode);
            $("#artCategoriecode").val(data.data.data[0].i_catartCode).trigger("change")
            $("#artClass").val(data.data.data[0].g_artClass).trigger("change")
            $("#frsCode").val(data.data.data[0].p_frs_code).trigger("change");
            $("#artDesignation").val(data.data.data[0].g_artDesignation);
            $("#artDescription").val(data.data.data[0].g_artDescription);
            if (data.data.data[0].g_artDatecreation != null) {
                $("#artDatecreation").val(dateformat(data.data.data[0].g_artDatecreation.date.split(' ')[0]));
            }
            $("#artDelaislivraison").val(data.data.data[0].g_artDelaislivraison)
            $("#artStockMinimale").val(data.data.data[0].g_artStockminimale)

            $("#artPrix").val(data.data.data[0].g_artPrix)
            $("#artTva").val(data.data.data[0].g_artTva)

            $("#frsArtref").val(data.data.data[0].p_frsArtref)

            setimage(path_base + "/" + "imgs" + "/" + data.data.data[0].g_artImage, "#articleimage")
            $("#addform").attr("action", "");
            unbind_code_maker();
            inti_dialog_non_edit();
        });



        var params = {}
        params = getFromObj("." + "profile")
        params.art = param.g_artCode
        params.clas = param.datarefval.g_artClass

        get_ajax_data("/article/asyn_stock_article", params, function (data) {
            $("#liststk").html("")
            $("#listmvt").html("")
            $.buildTable("#liststk", "", data.data[1], []);
            $.buildTable("#listmvt", "", data.data[0], []);
        });


    }

    var supp = {};
    supp.titre = "Suppression"
    supp.attr = ["g_artCode"]
    supp.class = "supptbtn"
    supp.dr = "suppressionart"
    supp.fnct = function (param) {

        $.confirm("Voulez vous vraiment supprimé cette article ? ,<br> Nb: l'article ne sera supprimé que s'il n'est pas affecté à aucune opération du stock", function () {

            get_ajax_data("/article/asyn_supp_art", param, function (data) {
                $("#list-container").html("");
            });

        })

    }

    $.buildTable("#list-container", "Liste des articles", data.data, [modifier, consult, supp]);

}

function ajout_article() {
    var param = {}
    param = getFromObj("#" + "addform")
    param.exe = $("#exe").val();
    param.mag = $("#mag").val();
    get_ajax_data_file("/article/asyn_ajout_article", param, "artImage", function (data) {
        if (data.etat == "1") {
            $("#dialogs").dialog("close");
        }
    })
}

function update_article() {
    var param = {}
    param = getFromObj("#" + "addform")
    get_ajax_data_file("/article/asyn_update_article", param, "artImage", function (data) {
        if (data.etat == "1") {
            $("#dialogs").dialog("close");
        }
    })
}
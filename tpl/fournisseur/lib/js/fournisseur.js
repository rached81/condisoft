$(document).ready(function () {

    window.modul = "fournisseur";
    $("#get_fournisseur_form").validate({
        rules: {

        }
    })

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

    $("#frsEtatcode").select2()
    $("#frsTypecode").select2()

    $("#dialogs").hide();

    $("#btn_nouveau_fournisseur").click(function () {
        reset_form();
        $("#addform").attr("action", "ajout_fournisseur");
        edit_mode();
        $("#frsTypecode").val(1).trigger("change")
        $("#frsTypecode").select2("enable", false)
        inti_dialog();
    })
    
  
    
     $("#btn_nouveau_client").click(function () {
        reset_form();
        $("#addform").attr("action", "ajout_fournisseur");
        $("#frsTypecode").val(2).trigger("change")
        $("#frsTypecode").select2("enable", false)
        edit_mode();
        inti_dialog();
    })


    $("#frsImage").change(function () {
        readURLimage(this, "#fournisseurimage");
    });

    edit_mode()
    reset_form();

})

function non_edit_mode() {
    $("[editmode]").attr("disabled", "disabled");

}

function edit_mode() {
    $("[editmode]").removeAttr("disabled");

}



function reset_form() {
    $("#frsCode").val("");
    $("#frsTypecode").val("").trigger("change")
    $("#frsEtatcode").val("").trigger("change")
    $("#frsRaisonsociale").val("")
    $("#frsAdresse").val("")
    $("#frsTel").val("")
    $("#frsFax").val("")
    $("#frsEmail").val("")
    $("#frsMf").val("");
}

function inti_dialog_non_edit(param) {

    $("#dialogs").dialog({
        buttons: {

            "Annuler": function () {
                $(this).dialog("close");
            }
        },
        close: function (event, ui) {
            $(this).dialog("close");
        },
        resizable: true,
        title: "Consultation des clients",
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
        title: "Gestion des clients",
        modal: true,
        height: $(window).height() * 0.9,
        width: $(window).width() * 0.98,
    })

    $("#dialogs").dialog("open");

}

function populate_list(data) {

    var modifier = {};
    modifier.titre = "Mise à jour"
    modifier.attr = ["p_frsCode"]
    modifier.class = "modifierbtn"
    modifier.dr = "updatefournisseur"
    modifier.fnct = function (param) {
        get_ajax_data("/fournisseur/asyn_get_fournisseur", param, function (data) {
            reset_form();
            edit_mode();
            $("#frsCode").val(data.data.data[0].p_frsCode);
            $("#frsTypecode").val(data.data.data[0].g_typfrsCode).trigger("change")
            $("#frsEtatcode").val(data.data.data[0].h_etatCode).trigger("change")
            $("#frsRaisonsociale").val(data.data.data[0].p_frsRaisonsociale)
            $("#frsAdresse").val(data.data.data[0].p_frsAdresse)
            $("#frsTel").val(data.data.data[0].p_frsTel)
            $("#frsFax").val(data.data.data[0].p_frsFax)
            $("#frsEmail").val(data.data.data[0].p_frsEmail)
            $("#frsMf").val(data.data.data[0].p_frsMf)
            $("#addform").attr("action", "update_fournisseur");
            inti_dialog();
        });
    }

    var consult = {};
    consult.titre = "Consultation"
    consult.attr = ["p_frsCode"]
    consult.class = "consultbtn"
    consult.fnct = function (param) {
        get_ajax_data("/fournisseur/asyn_get_fournisseur", param, function (data) {
            reset_form();
            non_edit_mode()
       
            $("#frsCode").val(data.data.data[0].p_frsCode);
            $("#frsTypecode").val(data.data.data[0].g_typfrsCode).trigger("change")
            $("#frsEtatcode").val(data.data.data[0].h_etatCode).trigger("change")
            $("#frsRaisonsociale").val(data.data.data[0].p_frsRaisonsociale)
            $("#frsAdresse").val(data.data.data[0].p_frsAdresse)
            $("#frsTel").val(data.data.data[0].p_frsTel)
            $("#frsFax").val(data.data.data[0].p_frsFax)
            $("#frsEmail").val(data.data.data[0].p_frsEmail)
            $("#frsMf").val(data.data.data[0].p_frsMf)
            $("#addform").attr("action", "");
            inti_dialog_non_edit();
        });
    }

    var supp = {};
    supp.titre = "Suppression"
    supp.attr = ["p_frsCode"]
    supp.class = "supptbtn"
    supp.dr = "suppressionfournisseur"
    supp.fnct = function (param) {

        $.confirm("Voulez vous vraiment supprimé ce client ? ,<br> Nb: le client ne sera supprimé que s'il n'est pas affecté à aucune opération du stock", function () {

            get_ajax_data("/fournisseur/asyn_delete_fournisseur", param, function (data) {
                $("#list-container").html("");
            });

        })

    }

    $.buildTable("#list-container", "Liste des clients/fournisseurs", data.data, [modifier, consult, supp]);

}

function ajout_fournisseur() {
    var param = {}
    param = getFromObj("#" + "addform")
    param.exe = $("#exe").val();
    param.mag = $("#mag").val();
    get_ajax_data("/fournisseur/asyn_ajout_fournisseur", param, function (data) {
        if (data.etat == "1") {
            $("#dialogs").dialog("close");
        }
    })
}

function update_fournisseur() {
    var param = {}
    param = getFromObj("#" + "addform")
    get_ajax_data("/fournisseur/asyn_update_fournisseur", param, function (data) {
        if (data.etat == "1") {
            $("#dialogs").dialog("close");
        }
    })
}
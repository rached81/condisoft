$(document).ready(function () {
    window.modul = "edition"
    $("#get_stk_form").validate({
        rules: {

        }
    })


    $("#get_histprix_form").validate({
        rules: {

        }
    })
    
     $("#get_nmvt_form").validate({
        rules: {

        }
    })
    
    
     $("#get_cons_form").validate({
        rules: {

        }
    })
    
    
     $("#get_ident_form").validate({
        rules: {

        }
    })
    
    
    
})

function populate_list_ident(data) {
    $.buildTable("#list-container", "Identification article", data.data, [], []);
}

function populate_list_stk(data) {
    $.buildTable("#etatstk", "Etat du stock magasin " + $("#mag").val() + " Exercice " + $("#exe").val(), data.data, [], ["entval", "sortval", "finalval"]);
}


function populate_list_histprix(data) {
    $.buildTable("#etathist", "Etat des historiques de prix depuis "+$("#date").val(), data.data, []);
}


function populate_list_nmvt(data) {
    $.buildTable("#etatnmvt", "Etat du stock non mouvementé depuis "+$("#date").val(), data.data, []);
}


function populate_list_cons(data) {
    $.buildTable("#etatcons", "Etat des consommations depuis "+$("#date").val(), data.data, []);
}
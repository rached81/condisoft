$(document).ready(function() {
$(".tablesorter").livequery(function() {
$(this).tablesorter({
theme: "bootstrap",
widthFixed: false,
headerTemplate: "{content} {icon}",
widgets: ["uitheme", "zebra"],
widgetOptions: {
zebra: ["even", "odd"],
filter_reset: ".reset"
}
})
});
$.contextMenu({
selector: "table",
callback: function(key, options) {
tableToExcel("#" + $(this).attr("id"), "Table Excel");
},
items: {
"Exporter Excel": {name: "Exporter Excel", icon: "edit"},
}
});
$("#btn_imp").click(function() {
if ($("#data_").children().length > 0) {
var elma = $("#printarea").clone();
elma.find(".noprint").remove();
var elmb = $("<div></div>").append(elma);
elmb.printThis({
importCSS: true,
removeInline: false,
pageTitle: "Liste des formateurs"
});
} else {
$.alertMsg("La liste à imprimer est vide", "Impression");
}
})
$("#ajoutdiag").dialog({
height: 300,
width: 1024,
autoOpen: false,
buttons: {
"Ajouter": function() {
$("#_ajout").attr("action", "ajout_");
$("#_ajout").submit();
},
"Modifier": function() {
$("#_ajout").attr("action", "modif_");
$("#_ajout").submit();
},
"Annuler": function() {
$(this).dialog("close");
$(".tipsy").remove();
}
},
close: function(event, ui) {
$(".tipsy").remove();
},
modal: true
});
$("#filtre_").validate({
rules: {
}
})
$("#_ajout").validate({
rules: {
cons_code: {
},
cons_artCode: {
},
cons_exercice: {
},
cons_seq: {
},
cons_qtedem: {
},
cons_qte: {
},
cons_traceCode: {
},
cons_lotTraceCode: {
},
}
})
$("#btn_ajout").click(function() {
$(".ui-dialog-buttonset button:contains('Ajouter')").button().show();
$(".ui-dialog-buttonset button:contains('Modifier')").button().hide();
$("#ajoutdiag").dialog('option', 'title', 'Ajout   ');
reset_form_();
$("#ajoutdiag").dialog("open");
})
$(".supp_").livequery(function() {
$(this).click(function() {
var elm = $(this);
$("<div></div;>").dialog({
resizable: false,
height: 170,
width: 300,
buttons: {
"Ok": function() {
supp_(elm);
$(this).remove();
}, fermer: function(event, ui) {
$(this).remove();
}
},
close: function(event, ui) {
$(this).remove();
},
resizable: false,
title: "Confirmation de suppression",
modal: true
}).html("Voulez vous supprimer cet formateur ?");
})
})
$(".modif_").livequery(function() {
$(this).click(function() {
$(".ui-dialog-buttonset button:contains('Ajouter')").button().hide();
$(".ui-dialog-buttonset button:contains('Modifier')").button().show();
$("#ajoutdiag").dialog('option', 'title', 'Modifier  ');
get_info_from_update_($(this));
})
})
})
function get_info_from_update_(param) {
var params = {};
params.cons_code = param.attr("cons_code");
params.cons_artCode = param.attr("cons_artCode");
get_ajax_data("/sfdsq/asyn_get__det", params, "get__det_pupulate");
}
function get__det_pupulate(data) {
var datas = data["data"][0];
reset_form_();
$("#cons_codeK").val(datas["cons_code"]);
$("#cons_artCodeK").val(datas["cons_artCode"]);
$("#cons_code").val(datas["cons_code"]);
$("#cons_artCode").val(datas["cons_artCode"]);
$("#cons_exercice").val(datas["cons_exercice"]);
$("#cons_seq").val(datas["cons_seq"]);
$("#cons_qtedem").val(datas["cons_qtedem"]);
$("#cons_qte").val(datas["cons_qte"]);
$("#cons_traceCode").val(datas["cons_traceCode"]);
$("#cons_lotTraceCode").val(datas["cons_lotTraceCode"]);
$("#ajoutdiag").dialog("open");
}
function reset_form_() {
$("#cons_code").val("");
$("#cons_artCode").val("");
$("#cons_exercice").val("");
$("#cons_seq").val("");
$("#cons_qtedem").val("");
$("#cons_qte").val("");
$("#cons_traceCode").val("");
$("#cons_lotTraceCode").val("");
}
function supp_(param) {
var params = {};
params.cons_code = param.attr("cons_code");
params.cons_artCode = param.attr("cons_artCode");
get_ajax_data("/sfdsq/asyn_supp_", params, "supp__pupulate", param);
}
function supp__pupulate(data, param) {
if (data["etat"] == 1) {
param.parents("tr").remove();
}
}
function get_() {
var params = getFromObj("#filtre_");
get_ajax_data("/sfdsq/asyn_get_", params, "get__pupulate");
}
function get__pupulate(data) {
var datas = data["data"]
var html = "";
$.each(datas, function(index, elm) {
html +='<tr>'
html +='<td>' + elm.cons_code +'</td>'
html +='<td>' + elm.cons_artCode +'</td>'
html +='<td>' + elm.cons_exercice +'</td>'
html +='<td>' + elm.cons_seq +'</td>'
html +='<td>' + elm.cons_qtedem +'</td>'
html +='<td>' + elm.cons_qte +'</td>'
html +='<td>' + elm.cons_traceCode +'</td>'
html +='<td>' + elm.cons_lotTraceCode +'</td>'
html += '<td class="noprint">'
html +='<button class="btn btn-info btn-xs supp_"   cons_code="'+elm.cons_code+'" cons_artCode="'+elm.cons_artCode+'" style="display: inline-block;"> Supprimer </button> '
html += '<button class="btn btn-info btn-xs modif_"   cons_code="'+elm.cons_code+'" cons_artCode="'+elm.cons_artCode+'" style="display: inline-block;"> Modifier </button>'
html += '</td></tr>'
})
$("#data_") . html(html);
}
function ajout_() {
var params = getFromObj("#_ajout");
get_ajax_data("/sfdsq/asyn_ajout_", params, "ajout__pupulate");
}
function ajout__pupulate(data) {
$("#ajoutdiag").dialog("close");
}
function modif_() {
var params = getFromObj("#_ajout");
get_ajax_data("/sfdsq/asyn_modif_", params, "modif__pupulate");
}
function modif__pupulate(data) {
$("#ajoutdiag").dialog("close");
}

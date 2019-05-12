
$(document).ready(function() {

    $("#formArt").validate({
        rules: {
            ARTCOD: {
                number: true
            }, ARTPU: {
                number: true
            }, ARTTVA: {
                number: true
            }, UDCOD: {
                number: true
            }
        }
    })

})

app.controller("ctrpp", function($scope, $http, $compile, $timeout) {

    $scope.artSearch = "";

    $scope.oper = "new";

    var filterTextTimeout;

    $scope.$watch("artSearch", function(n) {
        if (filterTextTimeout)
            $timeout.cancel(filterTextTimeout);
        filterTextTimeout = $timeout(function() {
            $scope.serachArt();
        }, 600);
    })


    $scope.serachArt = function() {
        var param = {}
        param.art = $scope.artSearch;
        $http.post(path_base + "/gestart/async_search_arts", {params: param}).success(function(data) {
            $scope.arts = data.data;
        })
    }



    $scope.addartdiag = function() {

        $scope.oper = "new";

        $("#inpcodart").show();

        $("#form_art").dialog({
            buttons: {"Sauvegarder": function() {
                    $("#formArt").submit();
                }},
            close: function(event, ui) {

            },
            resizable: false,
            modal: false,
            height: 500,
            width: 350
        })

    }

    $scope.sauveart = function() {
        if ($scope.oper == "new") {
            $http.post(path_base + "/gestart/async_ajout_art", {params: $scope.artinp}).success(function(data) {
                $("#form_art").dialog("close");
                 $scope.serachArt();
            })
        } else if ($scope.oper == "up") {
            $http.post(path_base + "/gestart/async_update_art", {params: $scope.artinp}).success(function(data) {
                $("#form_art").dialog("close");
                $scope.serachArt();
            })
        }
    }

    $scope.suppArt = function(art) {

        var elm = $("<div></div>").dialog({
            buttons: {
                "Oui": function() {
                    $http.post(path_base + "/gestart/async_supp_art", {params: art}).success(function(data) {
                        elm.dialog("close");
                        $scope.serachArt();
                    })
                },
                "Non": function() {
                    $(this).dialog("close");
                }
            },
            close: function(event, ui) {

            },
            resizable: false,
            modal: false,
            height: 150,
            width: 350
        }).html("Voulez vous suprrimer cette article")
    }

    $scope.modifArtdiag = function(art) {

        $scope.oper = "up";

        $("#inpcodart").hide();

        $scope.artinp = art;


        $("#form_art").dialog({
            buttons: {"Sauvegarder": function() {
                    $("#formArt").submit();
                }},
            close: function(event, ui) {

            },
            resizable: false,
            modal: false,
            height: 500,
            width: 350
        })

    }

}).config(['$httpProvider', function($httpProvider) {
        $httpProvider.defaults.headers.common["X-Requested-With"] = 'XMLHttpRequest';
    }])

function addArt() {
    var scope = $('#mainctl').scope();
    scope.sauveart();
}

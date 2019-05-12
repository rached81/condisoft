app.controller("ctrpp", function($scope, $http, $compile, $timeout) {

    $scope.page = 0;
    $scope.brds = 0;

    $scope.$watch("brds", function(val) {
        if (val.length > 0) {
            $("#genbrd").hide();
            $("#impbrd").show();
        } else {
            $("#genbrd").show();
            $("#impbrd").hide();
        }
    })
    
    var filterTextTimeout;
     $scope.$watch("envs.mag", function(n) {
        if (filterTextTimeout)
            $timeout.cancel(filterTextTimeout);
        filterTextTimeout = $timeout(function() {
            $scope.brds = 0;
        }, 50);
    })

    $scope.$watch("envs.exe", function(n) {
        if (filterTextTimeout)
            $timeout.cancel(filterTextTimeout);
        filterTextTimeout = $timeout(function() {
             $scope.brds = 0;
        }, 50);
    })

    $scope.generBrd = function() {
        $http.post(path_base + "/bord/async_generer_brd", {params: $scope.envs}).success(function(data) {
            $scope.page = 0;
            $scope.brds = data.data;
        })
    }

    $scope.printBrd = function() {
        $("#printable").printThis({
            importCSS: true,
            removeInline: false,
            pageTitle: "Bordereaux inventaire"
        });
    }

    $scope.PageChange = function(page) {

        if (page != $scope.page) {
            $scope.page = page;
            return true
        }

        $scope.mois = page;
        return false

    }

}).config(['$httpProvider', function($httpProvider) {
        $httpProvider.defaults.headers.common["X-Requested-With"] = 'XMLHttpRequest';
    }])


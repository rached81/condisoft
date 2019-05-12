app.controller("ctrpp", function($scope, $http, $compile, $timeout) {

    var action;
    $(".number-spinner button").mousedown(function() {
        btn = $(this);
        input = btn.closest('.number-spinner').find('input');
        btn.closest('.number-spinner').find('button').prop("disabled", false);

        if (btn.attr('data-dir') == 'up') {

            if (input.attr('max') == undefined || parseInt($scope.envs.page) < parseInt(input.attr('max'))) {
                $scope.envs.page = (parseInt($scope.envs.page) + 1);
            } else {
                btn.prop("disabled", true);
                clearInterval(action);
            }

        } else {

            if (input.attr('min') == undefined || parseInt($scope.envs.page) > parseInt(input.attr('min'))) {
                $scope.envs.page = (parseInt($scope.envs.page) - 1);
            } else {
                btn.prop("disabled", true);
                clearInterval(action);
            }
        }

    }).mouseup(function() {
        clearInterval(action);
        $scope.getBrdPage();
    });

    $scope.envs = {};

    $scope.envs.page = 1;

    $scope.brd = {};

    $scope.brd.dateinvt = "";

    var filterTextTimeout;

    $scope.$watch("envs.mag", function(n) {
        if (filterTextTimeout)
            $timeout.cancel(filterTextTimeout);
        filterTextTimeout = $timeout(function() {
            $scope.getBrdPage();
        }, 50);
    })

    $scope.$watch("envs.exe", function(n) {
        if (filterTextTimeout)
            $timeout.cancel(filterTextTimeout);
        filterTextTimeout = $timeout(function() {
            $scope.getBrdPage();
        }, 50);
    })


    $scope.getBrdPage = function() {
        if (!isNaN($scope.envs.page)) {
            var param = {}
            $http.post(path_base + "/majbrd/asyn_get_brd_page", {params: $scope.envs}).success(function(data) {
                $scope.brdpage = data.data;
                $scope.brd.dateinvt = $scope.brdpage[0].INVDATE;
            })
        } else {
          $scope.envs.page = 1;
        }
    }

    $scope.checkFloat = function(val) {
        if (isNaN(val)) {
            trace("se champ n'accepte que les nombres")
            return 0;
        } else {
            return val;
        }
    }

    $scope.BrdSave = function() {
        var param = {}
        param.env = $scope.envs;
        param.data = $scope.brdpage;
        $http.post(path_base + "/majbrd/asyn_save_brd_page", {params: param}).success(function(data) {
            $scope.getBrdPage();
        })
    }

    $("#dateinvt").datepicker({
        changeDay: true,
        changeMonth: true,
        changeYear: true,
        dateFormat: 'yy-mm-dd',
    })


}).config(['$httpProvider', function($httpProvider) {
        $httpProvider.defaults.headers.common["X-Requested-With"] = 'XMLHttpRequest';
    }])


window.AppController = ($scope, $http) ->
  $http.get("/data").success (data) ->
    $scope.resources = data
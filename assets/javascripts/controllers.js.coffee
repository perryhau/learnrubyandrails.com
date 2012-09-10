app = angular.module('learnRubyAndRails', [])
app.filter 'whatToLearnFilter', ->
  (resources, whatToLearn) ->
    return resources if whatToLearn == ''
    result = []
    i = 0
    while i < resources.length
      if resources[i]['type'].indexOf(whatToLearn) >= 0
        result.push resources[i]
      i++
    result


window.AppController = ($scope, $http) ->
  $http.get("/data").success (data) ->
    $scope.resources = data

  whatToLearn = howToLearn = typeOfCourses = cost = ''

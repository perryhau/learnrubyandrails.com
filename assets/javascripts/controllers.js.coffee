window.AppController = ($scope, $http) ->
  $http.get("/data").success (data) ->
    $scope.resources = data

  $scope.topics = ['Both', 'Ruby', 'Rails']
  $scope.topicSelected = 'Both'

  $scope.selectTopic = (topic) ->
    $scope.topicSelected = topic

  $scope.topicClass = (topic) ->
    if $scope.topicSelected == topic then 'label label-important' else undefined

  $scope.categories = ['All', 'Courses', 'Tutorials', 'Videos', 'Books']
  $scope.categorySelected = 'All'

  $scope.selectCategory = (category) ->
    $scope.categorySelected = category

  $scope.categoryClass = (category) ->
    if $scope.categorySelected == category then 'label label-important' else undefined

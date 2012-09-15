window.AppController = ($scope, $http) ->
  $http.get("/data").success (data) ->
    $scope.resources = data

  $scope.topics = ['Ruby', 'Rails']
  $scope.topicSelected = 'Ruby'

  $scope.selectTopic = (topic) ->
    $scope.topicSelected = topic

  $scope.topicClass = (topic) ->
    if $scope.topicSelected == topic then 'label label-important' else undefined

  $scope.categories = ['Tutorials', 'Online Courses', 'Screencasts', 'Books', 'In Person Training']
  $scope.categorySelected = 'Tutorials'

  $scope.selectCategory = (category) ->
    $scope.categorySelected = category

  $scope.categoryClass = (category) ->
    if $scope.categorySelected == category then 'label label-important' else undefined

  $scope.courseTypes = ['Instructor Led', 'Self Study']
  $scope.courseTypeSelected = 'Instructor Led'

  $scope.selectCourseType = (courseType) ->
    $scope.courseTypeSelected = courseType

  $scope.courseTypeClass = (courseType) ->
    if $scope.courseTypeSelected == courseType then 'label label-important' else undefined

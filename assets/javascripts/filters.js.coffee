app = angular.module('learnRubyAndRails', [])
app.filter 'topicFilter', ->
  (resources, topic) ->
    return unless resources
    result = []
    for resource in resources
      result.push resource if resource['topics']?.indexOf(topic) >= 0
    result

app.filter 'categoryFilter', ->
  (resources, category) ->
    return unless resources
    result = []
    for resource in resources
      result.push resource if resource['categories']?.indexOf(category) >= 0
    result

app.filter 'courseTypeFilter', ->
  (resources, courseType) ->
    return unless resources
    return resources if courseType == undefined
    result = []
    for resource in resources
      result.push resource if resource['course_type']?.indexOf(courseType) >= 0
    result

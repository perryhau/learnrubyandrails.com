app = angular.module('learnRubyAndRails', [])
app.filter 'topicFilter', ->
  (resources, topic) ->
    return unless resources
    result = []
    i = 0
    while i < resources.length
      if resources[i]['topics'].indexOf(topic) >= 0
        result.push resources[i]
      i++
    result

app.filter 'categoryFilter', ->
  (resources, category) ->
    return unless resources
    result = []
    i = 0
    while i < resources.length
      if resources[i]['categories'].indexOf(category) >= 0
        result.push resources[i]
      i++
    result

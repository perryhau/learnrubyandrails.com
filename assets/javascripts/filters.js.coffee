app = angular.module('learnRubyAndRails', [])
app.filter 'whatToLearnFilter', ->
  (resources, whatToLearn) ->
    return resources if whatToLearn == 'Both'
    result = []
    i = 0
    while i < resources.length
      if resources[i]['type'].indexOf(whatToLearn) >= 0
        result.push resources[i]
      i++
    result

app.filter 'howToLearnFilter', ->
  (resources, howToLearn) ->
    return resources if howToLearn == 'All'
    result = []
    i = 0
    while i < resources.length
      if resources[i]['categories'].indexOf(howToLearn) >= 0
        result.push resources[i]
      i++
    result

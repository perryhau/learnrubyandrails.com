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

app.filter 'howToLearnFilter', ->
  (resources, howToLearn) ->
    return resources if howToLearn == ''
    result = []
    i = 0
    while i < resources.length
      console.log(howToLearn)
      if resources[i]['formats'].indexOf(howToLearn) >= 0
        result.push resources[i]
      i++
    result

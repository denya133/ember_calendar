App = require 'app'

module.exports = App.YearRoute = Ember.Route.extend
  model: (params) ->
    console.log 'asdfadsf'
    console.log params.year_id
    return params
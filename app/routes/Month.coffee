App = require 'app'

module.exports = App.MonthRoute = Ember.Route.extend
  model: (params) ->
    console.log 'jhsdfgf'
    console.log params.month_id
    return params

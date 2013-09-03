App = require 'app'

module.exports = App.YearRoute = Ember.Route.extend
  model: (params) ->
    return params
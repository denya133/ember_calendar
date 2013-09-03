App = require 'app'

module.exports = App.DayRoute = Ember.Route.extend
  model: (params) ->
    console.log ';ljlkh'
    console.log params.day_id
    return params
  renderTemplate: (controller) ->
    @render 'calendar', {controller: controller}
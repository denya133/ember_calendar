App = require 'app'

module.exports = App.DayRoute = Ember.Route.extend
  model: (params) ->
    daySelected:    params.day_id
    monthSelected:  @modelFor('month').month_id
    yearSelected:   @modelFor('year').year_id

  renderTemplate: (controller) ->
    @render 'calendar', {controller: controller}
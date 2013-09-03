App = require 'app'

module.exports = App.DayRoute = Ember.Route.extend
  model: (params) ->
    date = new Date(@modelFor('year').year_id, @modelFor('month').month_id, params.day_id)
    startWeekDay = new Date(@modelFor('year').year_id, @modelFor('month').month_id, 1).getDay() - 1
    daysInMonth  = new Date(@modelFor('year').year_id, @modelFor('month').month_id, 1, -1).getDate();
    days = []
    for i in [0..startWeekDay]
      day = new Object()
      day.day = null
      day.isCurrent = false
      days.push(day)
    for i in [1..daysInMonth]
      day = new Object()
      day.day = i
      if parseInt(params.day_id, 10) == i
        day.isCurrent = true
      else
        day.isCurrent = false
      days.push(day)
    daySelected:    params.day_id
    monthSelected:  @modelFor('month').month_id
    yearSelected:   @modelFor('year').year_id
    daysInMonth:    days
    

  renderTemplate: (controller) ->
    @render 'calendar', {controller: controller}
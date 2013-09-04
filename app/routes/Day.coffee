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
    month = 
      0: "December"
      1: "January"
      2: "February"
      3: "March"
      4: "April"
      5: "May"
      6: "June"
      7: "July"
      8: "August"
      9: "September"
      10: "October"
      11: "November"
    today = new Date()
    dateNow:        {year: today.getFullYear(), month: today.getMonth() + 1, day: today.getDay()}
    monthName:      month[date.getMonth()]
    daySelected:    params.day_id
    monthSelected:  @modelFor('month').month_id
    monthPrev:      parseInt(@modelFor('month').month_id) - 1
    monthNext:      parseInt(@modelFor('month').month_id) + 1
    yearSelected:   @modelFor('year').year_id
    yearPrev:       parseInt(@modelFor('year').year_id) - 1
    yearNext:       parseInt(@modelFor('year').year_id) + 1
    daysInMonth:    days

  renderTemplate: (controller) ->
    @render 'calendar', {controller: controller}
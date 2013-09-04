App = require 'app'

module.exports = App.DayRoute = Ember.Route.extend
  model: (params) ->
    date = new Date(@modelFor('year').year_id, @modelFor('month').month_id - 1, params.day_id)
    firstDay = new Date(@modelFor('year').year_id, @modelFor('month').month_id - 1, 1).toString()
    lastDay = new Date(@modelFor('year').year_id, @modelFor('month').month_id, 1, -1).toString()
    daysInMonth  = new Date(@modelFor('year').year_id, @modelFor('month').month_id, 1, -1).getDate()
    days = []
    weekDays = 
      Mon:  0
      Tue:  1
      Wed:  2
      Thu:  3
      Fri:  4
      Sat:  5
      Sun:  6
    startWeekDay = weekDays[firstDay.split(' ')[0]]
    if startWeekDay > 0
      for i in [0..startWeekDay-1]
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
    stopWeekDay = 6 - weekDays[lastDay.split(' ')[0]]
    if stopWeekDay > 0
      for i in [0..stopWeekDay-1]
        day = new Object()
        day.day = null
        day.isCurrent = false
        days.push(day)
    month = 
      0: "January"
      1: "February"
      2: "March"
      3: "April"
      4: "May"
      5: "June"
      6: "July"
      7: "August"
      8: "September"
      9: "October"
      10: "November"
      11: "December"
    month_id = @modelFor('month').month_id


    if parseInt(month_id) == 1
      monthPrevInt = 12
      monthNextInt = 2
    else if parseInt(month_id) == 12
      monthPrevInt = 11
      monthNextInt = 1
    else
      monthPrevInt = parseInt(month_id) - 1
      monthNextInt = parseInt(month_id) + 1

    today = new Date()
    dateNow:        {year: today.getFullYear(), month: today.getMonth() + 1, day: today.getDay()}

    monthPrev:      monthPrevInt
    monthNext:      monthNextInt
    yearSelected:   @modelFor('year').year_id
    daySelected:    params.day_id
    monthSelected:  month_id
    monthName:      month[date.getMonth()]
    yearPrev:       parseInt(@modelFor('year').year_id) - 1
    yearNext:       parseInt(@modelFor('year').year_id) + 1
    daysByWeeks: [
      days[0..6]
      days[7..13]
      days[14..20]
      days[21..27]
      days[28..34]
      days[35..41]
      ]
    daysInMonth:    days

  renderTemplate: (controller) ->
    @render 'calendar', {controller: controller}
App = require 'app'

module.exports = App.DayController = Ember.ObjectController.extend


  daysByWeeks: (-> 
    date         = new Date(@get('yearSelected'), @get('monthSelected') - 1, @get('daySelected'))
    firstDay     = new Date(@get('yearSelected'), @get('monthSelected') - 1, 1).toString()
    lastDay      = new Date(@get('yearSelected'), @get('monthSelected'), 1, -1).toString()
    daysInMonth  = new Date(@get('yearSelected'), @get('monthSelected'), 1, -1).getDate()
    
    weekDays = 
      Mon:  0
      Tue:  1
      Wed:  2
      Thu:  3
      Fri:  4
      Sat:  5
      Sun:  6

    days = []

    startWeekDay = weekDays[firstDay.split(' ')[0]]
    if startWeekDay > 0
      for i in [0..startWeekDay-1]
        date = new Object()
        date.day = ''
        date.class = 'btn'
        days.push(date)

    for i in [1..daysInMonth]
      date = new Object()
      date.day = i
      if parseInt(@get('daySelected'), 10) == i
        date.class = 'btn active'
      else
        date.class = 'btn'
      days.push(date)

    stopWeekDay = 6 - weekDays[lastDay.split(' ')[0]]
    if stopWeekDay > 0
      for i in [0..stopWeekDay-1]
        date = new Object()
        date.day = ''
        date.class = 'btn'
        days.push(date)

    return [
      days[0..6]
      days[7..13]
      days[14..20]
      days[21..27]
      days[28..34]
      days[35..41]
      ]
  ).property('daySelected', 'monthSelected', 'yearSelected')



  monthPrev: (->
    month = parseInt(@get('monthSelected'))
    if month == 1
      return 12
    else if month == 12
      return 11
    else
      return month - 1
  ).property('monthSelected')



  monthNext: (->
    month = parseInt(@get('monthSelected'))
    if month == 1
      return 2
    else if month == 12
      return 1
    else
      return month + 1
  ).property('monthSelected')



  yearPrev: (->
    return parseInt(@get('yearSelected')) - 1
  ).property('yearSelected')



  yearNext: (->
    return parseInt(@get('yearSelected')) + 1
  ).property('yearSelected')



  dateNow: (->
    today = new Date()
    return {year: today.getFullYear(), month: today.getMonth() + 1, day: today.getDay()}
  )



  monthName: (->
    date  = new Date(@get('yearSelected'), @get('monthSelected') - 1, @get('daySelected'))
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
    return month[date.getMonth()]
  ).property('monthSelected')



  toDate: (year, month, day) ->
    if year and month and day
      @transitionToRoute('day', year, month, day);



  toToday: () ->
    date  = new Date()
    day   = date.getDay()
    month = date.getMonth()
    year  = date.getFullYear()
    @transitionToRoute('day', year, month, day);
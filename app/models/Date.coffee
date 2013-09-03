App = require 'app'

module.exports = App.Date = DS.Model.extend
  name:   DS.attr('string')
  day:    DS.attr('number')
  month:  DS.attr('number')
  year:   DS.attr('number')
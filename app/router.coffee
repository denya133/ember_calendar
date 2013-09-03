App = require 'app'


App.Router.map ->
  @route 'home', {path: '/'}
  @resource 'year', {path: '/year/:year_id'}, ->
    @resource 'month', {path: '/month/:month_id'}, ->
      @resource 'day', {path: '/day/:day_id'}
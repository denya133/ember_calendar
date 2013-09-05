# ember-calendar
This is simple ember.js application which is simular jQuery.datepicker widget.
But this example doesn't work with textedit.
Our widget is a single page application for calendar management.

## Issues
- The goal is to render a monthly calendar with no entries. Just a calendar with day numbers and an active month name and year on the top.

- There should be some navigation buttons such as “next/previous month”, “next/previous year”, and “today”.

- Clicking on any day in the calendar selects it (highlights it).

- The current day, selected day, and other days should have their own css classes so that you can design them, but the css should be very simple, such as just different background colors.

- When landing on the index page, it should switch to the current day automatically (today).

- The URL has to be in this format: “/year/xxxx/month/yy/day/zz” where of course xxxx, yy and zz would be the year, month and day of the selected date.

- There should be a controller holding the selected date, and clicking on another date in the calendar should switch to that date (also in the URL) thanks to a route event.

## Technologies
- [brunch-with-ember-and-bootstrap](https://github.com/huafu/brunch-with-ember-and-bootstrap) - A new and up-to-date [Brunch](http://brunch.io) skeleton for developing [Ember](http://emberjs.com) applications based on the official Ember [Starter Kit](https://github.com/emberjs/starter-kit/archive/master.zip).
- [Ember v1.0.0-rc.7](http://emberjs.com)
- [Handlebars 1.0.0](http://handlebarsjs.com)
- [jQuery v1.9.1](http://jquery.com)
- [HTML5 Boilerplate v4.2.0](http://html5boilerplate.com)
- [Twitter Bootstrap v2.3.2](https://github.com/twitter/bootstrap)
- **CoffeeScript** - a little language that compiles into JavaScript.
- **Stylus** - Expressive, dynamic, robust CSS pre-processor.
- **auto-reload-brunch** - Adds automatic browser reloading support to brunch.
- **uglify-js-brunch** - Adds UglifyJS support to brunch.

## Getting started
- Download node.js from oficial site http://nodejs.org/ (green button)
- unpacking it
- jump to folder and 'make' in terminal
- 'sudo make install' for install node.js in system
- 'sudo npm install -g brunch' - for intall "Brunch" precompiler
- 'git clone https://github.com/saifas/ember_calendar/tree/develop ember_calendar' and jump to folder
- 'npm install' for getting libraries
- 'brunch watch -s' for start server with application on port 3333
- open [http://localhost:3333](http://localhost:3333) on your browser.

It's based the skeleton fron Huafu Gandon [brunch-with-ember-and-bootstrap](https://github.com/huafu/brunch-with-ember-and-bootstrap).


## License
All of ember_calendar is licensed under the MIT license.

Copyright (c) 2013 Saifas Team

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

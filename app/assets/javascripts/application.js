//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require semantic-ui
//= require moment
//= require fullcalendar
//= require_tree .

$('#calendar').fullCalendar({});
$(document).on('turbolinks:load', function() {
  $('.context.example .ui.sidebar')
    .sidebar({
      context: $('.context.example .bottom.segment')
    })
    .sidebar('attach events', '.context.example .menu .item')
  ;
});

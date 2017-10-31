# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
$(".js-example-placeholder-single").select2({
    placeholder: "Seleccione número de C.I.",
    allowClear: true,
    language: "es"
});


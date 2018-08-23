// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require semantic-ui-css/semantic.min
//= require semantic-ui-css/components/dropdown.min.js
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

var ready = function() {
	$("#upload_file").on("direct-uploads:start", function () {
    $("h4.progress").show();
  });

  $("#post_files").on("direct-upload:progress", function (event) {
    $("h4.progress span.progress_count").html(event.detail.progress);
  });

  $('select.dropdown').dropdown();
  
  $('[type="submit"], a[data-method="post"]').click(function() {
    show_loading();
  });

  $('.message .close').on('click', function() {
    $(this)
      .closest('.message')
      .transition('fade')
    ;
  });

  $('select.dropdown').dropdown();
}

function show_loading() {
  $('#main-loading').addClass('active')
}

function hide_loading() {
  $('#main-loading').removeClass('active')
}

$(document).on('turbolinks:click', function() { show_loading(); })
// $(document).on('turbolinks:before-visit', function() { })
$(document).on('turbolinks:visit', function() { show_loading(); })
// $(document).on('turbolinks:request-start', function() { })
$(document).on('turbolinks:request-end', function() { hide_loading(); })
// $(document).on('turbolinks:before-cache', function() { })
// $(document).on('turbolinks:before-render', function() { })
$(document).on('turbolinks:render', function() { hide_loading(); })


if (Turbolinks.supported) {
  $(document).on("turbolinks:load", ready);
} else {
  $(document).ready(ready);
}
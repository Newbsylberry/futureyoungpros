// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require turbolinks
//= require jquery
//= require jquery.easings.min.js
//= require jquery.slimscroll.min.js
//= require jquery.fullPage.min.js
//= require bootstrap

$(document).ready(function() {
    $('#fullpage').fullpage({
        menu: '#menu',
        anchors:['homeSlide', 'aboutSlide', 'schoolsSlide', 'businessesSlide'],
        easing: 'easeInQuart',
        easingcss3: 'ease',
        fixedElements: '#header, .buttons',
        loopBottom: true,
        loopTop: true
    });
});

  

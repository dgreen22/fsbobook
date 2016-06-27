// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
	var $root = $('html, body');
	$(".navbar-nav a").click(function(){
		var href = $.attr(this,'href');
		$root.animate({
			scrollTop: $(href).offset().top
		}, 500, function () {
                window.location.hash = href;
            });
		return false;
	});

	$(".land-script-1 h1").fadeIn(4000,function(){
		$(this).fadeOut(3000,function(){
			$(".land-script-2 h1").fadeIn(4000,function(){
				$(this).fadeOut(3000,function(){
					$(".land-script-3 h1").fadeIn(4000);
				});
			});
		});
	});

	$(".lm-button").click(function(){
		$('html, body').animate({
			scrollTop: $("#second").offset().top
		}, 500);
	});

	$('#orderBtn').on('click', function(){
		$('#orderModal').fadeIn(500)
	});

	$('.close').on('click', function(){
		$('#orderModal').fadeOut(500)
	});



	
});
window.scrollTo(0,0);
$("#form").show();
$("#form").html("<%= escape_javascript(render partial: 'new', locals: { rsvp: @rsvp } ) %>");

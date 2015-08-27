<%- if @rsvp.valid? %>
  $("#form").hide();
  Cookies.set('cpbg_rsvp', 'true');
<%- else %>
  $("#form").html("<%= escape_javascript(render partial: 'new', locals: { rsvp: @rsvp } ) %>");
<%- end %>

// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery3
//= require popper
//= require bootstrap

import "@hotwired/turbo-rails"
import "controllers"
import "channels"


window.scroll_bottom = function() {
    if ($('#message-container').length > 0) {
      $('#message-container').scrollTop($('#message-container')[0].scrollHeight);
    };
};
 
window.submit_message = function () {
    $('#message_body').on('keydown', function(e) {
        if (e.key == 'Enter') {
            $('button').click();
            e.target.value = "";
        };
    });
};


scroll_bottom();
submit_message();


$(document).ready(function() {
  $(document).on('keyup', function(event) {
    // Detect which key was pressed and call the appropriate function
    if (event.which == 13) { //a
    $('#player1_race td.active')
        .removeClass('active')
        .next('td').addClass('active')
    };

    if (event.which == 66) { //p
    $('#player2_race td.active')
        .removeClass('active')
        .next('td').addClass('active')
    };
    // Google "jquery keyup what key was pressed" if you don't know how
  });
});
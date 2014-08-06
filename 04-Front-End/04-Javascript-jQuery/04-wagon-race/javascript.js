$(function() {

  var player1 = 0
  var player2 = 0

  var size = prompt("Circuit Size", 10);
  create_table(size);

  display_position('player1',player1);
  display_position('player2',player2);


  $(document).keypress(function( event ) {

    if (event.which == 97) {
      player1++;
      display_position('player1',player1);
    }

    else if (event.which == 112) {
      player2++;
      display_position('player2',player2);
    }


    if (player1 == (size - 1)) {
      alert("Player 1 won!");
      location.reload();
    }

    else if (player2 == (size - 1)) {
      alert("Player 2 won!");
      location.reload();
    }
  });
});


function display_position(player_name, position) {
  var track = $('#' + player_name + '_race td');
  $('#compteur_' + player_name).append(position);
  track.removeClass('active');
  $(track[position]).addClass('active');
}


function create_table(size) {
  $('table tr').each(function() {
    for (var i = 0; i < size; i++ ) {
      $(this).append('<td></td>');
    }
  });
}

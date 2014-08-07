function reset() {
  $('#player1, #player2')
    .find('.active')
      .removeClass('active')
    .end()
    .find('td:first-child')
      .addClass('active');
}

function forward(row) {
  var active = row.find('.active');
  var next = active.next();

  active.removeClass('active');
  next.addClass('active');

  if (next.is(':last-child')) {
    winner_id = row.attr('players.id');
    end_time = $.now();
    finish_game();
    // console.log(end_time)
    // c'est ici qu'on doit obtenir le temps de fin.
    // alert(row.attr('id') + " wins!");
    // la fonction ci-dessus permet d'afficher une popup d'alerte, ci-dessous on injecte dans la page les résultats.
    $( "#results" ).append("Game id " + game_id + ": " + row.attr('id') + " wins!" + ", game lasted " + game_time + " secondes.<br>");
    $( "#board" ).hide();
    $("#new_game").show().click(function() {
      $( "#board" ).show();
    });
    $('#new_session').show().click(function() {
      location.reload();
    });
    // me faut afficher les infos : winner, game_id et temps de la partie
  }
}

function finish_game() {
  game_time = end_time - start_time;
  // console.log(game_time)
  data_game = JSON.stringify({
    "winner": winner_id,
    "elapsed_time": game_time
  });
  $.post('http://localhost:4567/game/'+game_id+'/finish', data_game, function(data_json) {
    reset();
  });
}


$(function() {

  var session_id,
      start_button = $('#start-btn'),
      names_form = $('#names-form'),
      board = $('#board')
      player1 = $('#player1'),
      player2 = $('#player2');


  $.getJSON('http://localhost:4567/session/create', function(data_json) {
    // console.log(data_json);
    session_id = data_json.id;
    start_button.show();
  });

  start_button.on('click', function() {
    start_button.hide();
    names_form.show();
  });

  names_form.on('submit', function(event) {
    event.preventDefault();
    var name_player1 = $('#player1-name').val();
    var name_player2 = $('#player2-name').val();
    // on met des var devant quand les variable sont à utiliser seulement dans la fonction sur laquelle nous sommes.
    var data = JSON.stringify({
      players: [
        { name: name_player1 },
        { name: name_player2 }
      ]
    });

    $.post('http://localhost:4567/session/'+session_id+'/game/create', data, function(data_json) {
      names_form.hide();
      board.show();
      game_id = data_json.game.id;
      // console.log(game_id)
      start_time = $.now();
      // c'est ici qu'on doit obtenir le temps de départ.
      // console.log(start_time)
      // console permet d'afficher dans la console de l'inspecteur d'éléments la valeur.

      $(document).on('keyup', function(e) {
          if (e.keyCode == 81) {
              forward(player1);
          }
          else if (e.keyCode == 80) {
              forward(player2);
          }
      });
    });
  });
  // c'est ici qu'on doit obtenir la durée de jeu, qui est la diff entre le début et la fin.
});




// ## Finish a Game

// début  : board.show();
// fin : alert(row.attr('id') + " wins!");

// `POST /game/:game_id/finish`

// ### Expected POST data

//     {
//       "winner": 2,
//       "elapsed_time": 28
//     }

// Replace `2` with the id of the winner player and 28 with the time spent playing in seconds.



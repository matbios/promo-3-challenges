function reset() {
  $('#player1, #player2')
  .find('.active')
    .removeClass('active')
  .end()
  .find('td:first-child')
    .addClass('active');
}
// le $ permet de récupérer et ré-utiliser avec Jquery des objets, qu'on va chercher via des balises HTML et des classes/ID css
// ici on va supprimer dans ce qu'on récupère, la classe "active" qu'on a créé dans la fonction d'avant (la forward), car en JS les éléments s'enchaînent, comme on l'a défini juste avant dans l'excecution du code on peut le réutiliser ici facilement.
// le end() nous permet, une fois la classe active supprimée, de revenir au début, et reloader les valeurs, pour enchainer avec une autre fonction
// on passe alors à l'autre fonction, et on demande a passer en classe active la first child, c'est à dire dans la liste de tous les TD, passer le premier élément en classe active.
// à noter : en JS, toujours mettre des parenthèses quand on lance une fonction, même s'il n'y a pas de paramètre lui à passer en entrée.

function forward(player_id) {
  // on va définir ici nos valeurs pour que ce soit plus clair ensuite.
  var row = $(player_id);
  // on demande a pouvoir utiliser dans notre fonction ce paramètre "plyer_id", grâce au $()
  var active = row.find('.active');
  // et on regarde dans quel élément on a la classe "active" (une classe car on commence par un ., si c'est un ID on commence par un #)
  var next = active.next();
  // et on crée la variable next qui est l'élément suivant de la variable active.

  active.removeClass('active');
  // on supprime la classe active de l'élement TD
  next.addClass('active');
  // et on l'ajoute au suivant, ce qui fait avancer le petit wagon à l'écran

  if (next.is('td:last-child')) {
    var player_name = player_id.match(/#(.+)/)[1];
    // explication de la regex :
    // le # est dans ce qu'on analyse (#player1)
    // le .+ c'est pour prendre tout ce qui suit le #
    // les parenthèses pour dire qu'on veut shopper et afficher dans un groupe le .+
    // et le [1] pour dire qu'on prendre seulement le premier élément de ce qu'on récupère, ici le nom du player.
    alert(player_name + " wins!");
    reset();
  }
}

$(document).ready(function() {
// on prend le "document" c'est à dire toute la page (tout ce qui est visible par l'user) car on doit pouvoir cliquer partout sur l'écran, dans la fenêtre du navigateur, car le body s'arrête à la fin du contenu...
// on commence la fonction par un "le "ready(function())" pour lui dire de commencer quand le document a bien été chargé entièrement, sinon il attend.
  $(document).on('keyup', function(e) {
    // Detect which key was pressed and call the appropriate function
    // Google "jquery keyup what key was pressed" if you don't know how
    //  le keyup pour prendre en événement quand l'internaute relache la touche sur son clavier
    // le function(e) permet de récupérer l'événement qu'on va abritrairement appeler e
    if (e.keyCode == 81) {
      // lettre Q
      forward('#player1');
    }
    // on lance une fonction if classique, et on lui demande de regarder dans e (qui est le retour de la function du dessus) de regarder la valeur qui correspond à la clé "keycode" (convention jquery )de la fonction keycode, qui renvoie un hash en gros) et de comprarer avec la valeur 81.
    // si le résultat est bien 81, on lance la fonction du dessus pour le player 1.
    else if (e.keyCode == 80) {
      // lettre P
      forward('#player2');
    }
  });
});

// console.debug('row')
$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them
  $('#flip_button').on('click', function() {
    event.preventDefault()
    $("#flip-container").trigger("hover");
    $("#right_card").trigger("hover");
    setTimeOut($.ajax({
      // send data to server, could be nothing
      url: '/game',
      type: 'POST',
      success: function (data) {
            var result = $('<div >').append(data).find('#game_container').html();
            $('#game_container').html(result);
        },
        error: function (xhr, status) {
            alert("Sorry, there was a problem!");
        },
        complete: function (xhr, status) {
            //$('#showresults').slideDown('slow')
        }
    }), 1000);
    }).done(function(response) {

      // do stuff with the data that server return
      console.log("HI")
      console.log(response)
    })
  })

});



//   var score = function() {
//     var war_booty = []
//     if card1.value >
//      var winner = session[:hand1]
//       winner << session[:hand2].shift
//     else if card1.value < card2.value
//      winner = session[:hand2]
//      winner << session[:hand1].shift
//     else if card1.value == card2.value
//      war_booty << session[:hand1].shift(3)
//      war_booty << session[:hand2].shift(3)
//      score()
//    end
// });
//   var score = {
//     checkScore : function () {
//         alert('hello');
//     }
// }



// # def score(card1 = Card.find(session[:hand1][0], card2 = Card.find(session[:hand2][0]))
// #   war_booty = []
// #
// #   winner << war_booty
// #   winner.flatten.rotate!
// # end

// # def winner?
// #   if session[:hand1].length == 0
// #     session[:winner] = session[:player2]
// #   elsif session[:hand2].length == 0
// #     session[:winner] = session[:player1]
// #   end
// # end

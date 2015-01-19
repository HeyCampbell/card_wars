$(document).ready(function () {
    $('#game_container').on('mouseover', '#flip_button', function () {
    $('.flip-container').addClass('hover')
      });

    $('#game_container').on('mouseout', '#flip_button', function () {
    $('.flip-container').removeClass('hover')
      });

    $('#game_container').on('click', '#flip_button', function () {
        event.preventDefault();

        console.log("flip_click");
        // $("#flip-container").trigger("hover");
        // $("#right_card").trigger("hover");
        $.ajax({
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
        });
    });



    $('#login_form_button').on('click', function () {
        event.preventDefault();
        console.log("login_click");
        $.ajax({
            url: '/login',
            type: 'GET',
            success: function (data) {
                var result = $('<div >').append(data).find('#user_container').html();
                $('#user_container').html(result);
                console.log("success");
            },
            error: function (xhr, status) {
                alert("Sorry, there was a problem!");
            },
            complete: function (xhr, status) {
                //$('#showresults').slideDown('slow')
            }
        });
    });

    $('#signup_form_button').on('click', function () {
        event.preventDefault();
        $.ajax({
            // send data to server, could be nothing
            url: '/signup',
            type: 'GET',
            success: function (data) {
                var result = $('<div >').append(data).find('#user_container').html();
                $('#user_container').html(result);
                console.log("success");
            },
            error: function (xhr, status) {
                alert("Sorry, there was a problem!");
            },
            complete: function (xhr, status) {
                //$('#showresults').slideDown('slow')
            }
        });
    });
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

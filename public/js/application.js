$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $('#flip_button').on('click', function() {
    event.preventDefault()
    $.ajax({
      // send data to server, could be nothing
      url: '/game',
      type: 'GET'
    }).done(function(response) {
      // do stuff with the data that server return
      console.log("HI")
      console.log(response)
    })
  })

});

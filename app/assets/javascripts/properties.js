

$(document).ready(function(){

  toggleHeart();



  // $('#heart').on('click', function(e){
  //     e.preventDefault();
  //     // alert('you favorited this property!');
  //     $(this).html('<span class="glyphicon glyphicon-heart" aria-hidden="true">');
  // });



  function toggleHeart(){
    $('.heart').on('click', function(e){
      e.preventDefault();
      // alert('you favorited this property!');
      $(this).html('<span class="glyphicon glyphicon-heart" aria-hidden="true">');
      // if($(this).hasClass('full')){
      //   $(this).removeClass('full');
      //   $(this).addClass('empty');
      // }
      // else{
      //   $(this).html('<span class="glyphicon glyphicon-heart" aria-hidden="true">');
      //   $(this).removeClass('empty');
      //   $(this).addClass('full');
      // }
      // if heart is full
      // else

      // toggleHeart();
    });
  };

  $('.carousel').each(function(){
      $(this).carousel({
          interval: false
      });
  });


  $('#heart_empty').on("click", function(event){
    console.log(event);
    event.preventDefault();
    $.ajax({
      type: "POST",
      url: "/properties/1/favorite",
      data: "",
      success: function(result) {
        alert('successfully favorited!');

      },
    });
  });

});

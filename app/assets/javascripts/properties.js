

$(document).ready(function(){

  toggleHeart();



  // $('#heart').on('click', function(e){
  //     e.preventDefault();
  //     // alert('you favorited this property!');
  //     $(this).html('<span class="glyphicon glyphicon-heart" aria-hidden="true">');
  // });



  function toggleHeart(){
    $('.heart').on('click', function(e){
      // e.preventDefault();
      // alert('you favorited this property!');
      $.post(this.href,function(data) {
      $("#someContainer").html(data);
    });
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

});

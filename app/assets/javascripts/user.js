$(function(){

  $(".user__box__data__post").on("click", function() {

    user_id = $('.user__box__name').data();

    $.ajax({
      type: 'GET',
      url: `/users/${user_id.userId}`,
      dataType: 'json'
    })

    .done(function(user_following){

      user_followings.forEach(function(user_following){
        console.log(user_following.name)
      });
    })

    .fail(function(){

    })
  });

  $(".user__box__data__follower").on("click", function() {

    user_id = $('.user__box__name').data();

    $.ajax({
      type: 'GET',
      url: `/users/${user_id.userId}`,
      dataType: 'json'
    })

    .done(function(user_follower){
      
      user_follower.forEach(function(user_follow){
        
      });
    })

    .fail(function(){

    })


  });

});
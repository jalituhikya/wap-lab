$(function(){
    let started = false;
    let ended = false;

    // we use progress to track the progress of cursor make sure user actually moves it through
    let progress = 0;

    function checkSuccess(){
    if(started && progress === 10){
       started = false;
       ended = true;
       $("#status").text("You Win!");
       progress = 0;
      }
    }

    $("#start").click(function(){
     started = true;
   //  $(".boundary").css("background-color","#eeeeee");
     $(".boundary").removeClass("set-red");
     $("#status").text("Now playing");
    });

    $("#end").mouseover(function(){
      checkSuccess();
    });
    $("#end").click(function(){
      checkSuccess();
    });

 $("#middle").mouseover(function(){
      progress = 10;
    });
    $(".boundary").mouseover(function(){
    if(started){
       $("div.boundary").addClass("set-red");
       $("#status").text("You Lose!");
       started = false;
       progress = 0;
       }
    });


});
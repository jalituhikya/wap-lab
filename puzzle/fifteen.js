
$(function() {
    let emptyX = "300px";
    let emptyY = "300px";
    $("#puzzlearea").find("div").each(function(i,element){
         let x = ((i % 4) * 100) ;
         let y = (Math.floor(i / 4) * 100) ;
         $(element).addClass("puzzlepiece")
                   .css("left", x + 'px')
                   .css("top",y + 'px')
                   .css("background-image", 'url("img/background.jpg")')
                   .css("background-position", -x + 'px ' + (-y) + 'px')

    }).click(function(){
          let element = $(this);
          let currentX = element.css("left");
          let currentY = element.css("top");
          let differenceX = Math.abs(parseInt(currentX) - parseInt(emptyX));
          let differenceY = Math.abs(parseInt(currentY) - parseInt(emptyY));

          // check if empty is next to this element
          if((currentY === emptyY && differenceX == 100) || (currentX === emptyX && differenceY == 100))
          {
          element.css("left", emptyX )
                 .css("top",emptyY );
          emptyX = currentX;
          emptyY = currentY;
          }
    });

    $("#shufflebutton").click(function(){
       for(let i = 0; i < 5000; i ++){
          let rand = parseInt(Math.random() * 14);
          $("#puzzlearea").find("div")[rand].click();
       }

    });

 });
/*    var puzzleArea = document.getElementById('puzzlearea');
    var divs = puzzleArea.getElementsByTagName("div");

    // initialize each piece
    for (var i=0; i< divs.length; i++) {
        var div = divs[i];

        // calculate x and y for this piece
        var x = ((i % 4) * 100) ;
        var y = (Math.floor(i / 4) * 100) ;

        // set basic style and background
        div.className = "puzzlepiece";
        div.style.left = x + 'px';
        div.style.top = y + 'px';
        div.style.backgroundImage = 'url("img/background.jpg")';
        div.style.backgroundPosition = -x + 'px ' + (-y) + 'px';

        // store x and y for later
        div.x = x;
        div.y = y;
    }
*/

window.onload = function () {
'use strict';
// get elements
let textArea = document.getElementById("display");
let animationSelect = document.getElementById("animation");
let startButton = document.getElementById("start");
let stopButton = document.getElementById("stop");
let sizeSelect = document.getElementById("size");
let speedCheckbox = document.getElementById("speed");

// interval id for setInterval
let intervalId;

// initial speed
let speed = 250;

//initially stop is disabled
startButton.disabled = false;
stopButton.disabled = true;
animationSelect.disabled = false;

// initialize and populate array of array of frames
let animationsArray = [];
for(const key in ANIMATIONS){
    animationsArray[key] = ANIMATIONS[key].split("=====\n");
}

let startAnimation = function(){
 startButton.disabled = true;
 stopButton.disabled = false;
 animationSelect.disabled = true;
 if(speedCheckbox.checked){
     speed = 50;
     }else{
     speed = 250;
     }
 let numberOfFrames =  animationsArray[animationSelect.value].length;
   let index = 0;
   intervalId = setInterval(function(){
    textArea.value = animationsArray[animationSelect.value][index];
    index = (index +1) % numberOfFrames;
   },speed);
};

let stopAnimation = function(){
startButton.disabled = false;
 stopButton.disabled = true;
 animationSelect.disabled = false;
                  if(intervalId){
                   clearInterval(intervalId);
                   intervalId = null;
                  }
                 };


// event listeners
 startButton.onclick = startAnimation;
 stopButton.onclick = stopAnimation;

animationSelect.onchange = function(){
  let selected = animationSelect.value;
  textArea.value = ANIMATIONS[animationSelect.value];
 }

 sizeSelect.onchange = function(){
    textArea.style.fontSize = this.value;
 }

 speedCheckbox.onclick = function(){
       if(startButton.disabled){
        stopAnimation();
        startAnimation();
        }
    }

 };

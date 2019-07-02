window.onload = function(){
                    let decorateButton = document.getElementById("decorate");
                    let blingCheckbox = document.getElementById("bling");
                    let textArea = document.getElementById("to-decorate");
                 //   let body = document.getElementsByTagName("body")[0];
                     let body = document.body;
                    let clicked = false;
                    let timerId;
                    decorateButton.onclick = function(){
                                      if(!clicked){
                                                clicked = true;
                                                timerId = setInterval(function(){
                                                let currentSize = window.getComputedStyle(textArea).fontSize;
                                                textArea.style.fontSize= (parseInt(currentSize) + 2) + "px";
                                                },1000);

                                             }else{
                                                clicked = false;
                                                if(timerId){
                                                clearInterval(timerId);
                                                }
                                             }

                                             };
                    blingCheckbox.onchange = function(){
                                                    if(this.checked){
                                                      textArea.style.fontWeight = "bold";
                                                      textArea.style.color = "green";
                                                      textArea.style.textDecoration = "underline";
                                                      body.style.backgroundImage
                                                      body.style.backgroundImage = "url('http://www.cs.washington.edu/education/courses/190m/CurrentQtr/labs/6/hundred-dollar-bill.jpg')";

                                                    }else{
                                                     textArea.style.fontWeight = "normal";
                                                     textArea.style.color = "black";
                                                     textArea.style.textDecoration = "none";
                                                     body.style.backgroundImage = "";
                                                    }
                                                }
                };

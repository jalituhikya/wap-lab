(function(){
"use strict";
var accountNameText;
var depositText;
var createButton;
var infoTextArea;
var accountInfoList;
var makeAccount = (function(){

    var accountName =  accountNameText.value;
    var amount = depositText.value;
    return {
             createAccount: function(name, amount){
             for (let i = 0; i < accountInfoList.length; i++) {
                infoTextArea.value += accountInfoList[i] + "\n";
              }
             }
           };

    })();

window.onload = function(){
 accountName = document.getElementById("account");
 deposit = document.getElementById("deposit");
 createButton = document.getElementById("create");
 infoTextArea = document.getElementById("info");
 createButton.onclick = function(){
  accountInfoList.append(makeAccount());
 };
 for (let i = 0; i < accountInfoList.length; i++) {
   infoTextArea.value += accountInfoList[i] + "\n";
 }
}
})();
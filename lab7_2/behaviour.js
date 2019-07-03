(function(){
    "use strict";
    var accountInfoList = [];
    var makeAccount = (function(){
        return {
                 createAccount: function(name, amount,infoArea){
                    if(name && amount){
                      accountInfoList.push( {
                                           account: name,
                                           balance: amount
                                        });
                       infoArea.value = "";
                        for (let i = 0; i < accountInfoList.length; i++) {
                          infoArea.value +=
                                          "Account Name: " +
                                          accountInfoList[i].account +
                                          " Balance: "+ accountInfoList[i].balance +
                                          "\n";
                        }
                   }

                 }
               };
        })();
    window.onload = function(){
     var accountName = document.getElementById("account");
     var deposit = document.getElementById("deposit");
     var createButton = document.getElementById("create");
     var infoTextArea = document.getElementById("info");
     createButton.onclick = function(){
          makeAccount.createAccount(accountName.value,deposit.value,infoTextArea);
     };
    };
})();
// parts 1 to 6 of assignment
// for part 7 see module 2
myModule1 = (function (){
'use strict';
return {
        createBicyclePrototype : function (){

          return {
            speed: 0,
            applyBrake: function(decrement){
                   let newValue = this.speed - decrement;
                   if(newValue >= 0){
                        this.speed = newValue;
                   }else{
                        this.speed = 0;
                   };
                },
             speedup: function(increment){
                          this.speed += increment;

                    }
             };
        },

        createMountainBikeProtoype: function(bikeProto){
            let newObject = Object.create(bikeProto);
            newObject.gear = 1;
            newObject.setGear = function(newGear){this.gear = newGear};
            return newObject;

        },


        start: function(){
         let first = createBicyclePrototype();
         return createMountainBikeProtoype(first);
        }

    };

})();


myModule2 = (function (){
'use strict';
 class Bike{
                constructor(){
                 this.speed = 0;
                 this.gear = 1;
                }

                applyBrake(decrement){
                   let newValue = this.speed - decrement;
                                     if(newValue >= 0){
                                          this.speed = newValue;
                                     }else{
                                          this.speed = 0;
                                     };
                }

                speedup(increment){
                  this.speed += increment;
                }
               setGear(newGear){
                    this.gear = newGear
               }

        }

         class MountainBike extends Bike{
                        constructor(){
                         super();
                           this.gear = 1;
                        }
                       setGear(newGear){
                            this.gear = newGear
                       }

                }
return {
        start: function(){
            return new MountainBike();
        }

    };

})();


console.log('========================== Module 1 NOT using es6 implementation======================');
let a = myModule1.createBicyclePrototype();
console.log( "a is:" ,a);
a.speedup(10);
console.log("a has speed increased by 10: " +a.speed);
a.applyBrake(5);
console.log("a has speed reduced by 5: "+ a.speed + "\n");

let b = myModule1.createMountainBikeProtoype(a);
console.log( "b extends a is: " ,b);
console.log("b has speed : "+b.speed);
b.speedup(30);
console.log("b has speed increased by 10: " + b.speed);
console.log("but a still has speed: " + a.speed +"\n\n");

console.log('========================== Module 2 using es6 implementation======================');
let c = myModule2.start();
console.log("c is: " , c);
c.speedup(10);
console.log("c has speed increased by 10: "+ c.speed);
c.applyBrake(5);
console.log("c has speed reduced by 5: " +c.speed);
c.setGear(3);
console.log("c has gear set to 3: " +c.gear);
console.log("c is now: ",c);


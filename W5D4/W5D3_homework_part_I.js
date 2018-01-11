// function mysteryScoping1() {
//   var x = 'out of block';
//   if (true) {
//     var x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
// mysteryScoping1();
//
// function mysteryScoping2() {
//   const x = 'out of block';
//   if (true) {
//     const x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
// mysteryScoping2();
//
// function mysteryScoping3() {
//   const x = 'out of block';
//   if (true) {
//     var x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
// mysteryScoping3();
//
// function mysteryScoping4() {
//   let x = 'out of block';
//   if (true) {
//      let x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
// mysteryScoping4();
//
// function mysteryScoping5() {
//   var x = 'out of block';
//   if (true) {
//     let x = 'in block';
//     console.log(x);
//   }
//   var x = 'out of block again';
//   console.log(x);
// }
//
// mysteryScoping5();
//
//
// function madLib(verb, adjective, noun) {
//   console.log("We shall " + verb.toUpperCase() + " the " + adjective.toUpperCase() + " " + noun.toUpperCase());
// }
//
// madLib('make', 'best', 'guac');
//
// function madLib(verb, adjective, noun) {
//   console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`);
// }
//
// function isSubstring(argument1, argument2) {
//   console.log(argument1.includes(argument2));
// }
//
// isSubstring("time to program", "time");
// isSubstring("Jump for joy", "joys");
//
// function fizzBuzz(array) {
//   var result = [];
//   for (var i = 0; i < array.length; i++) {
//     if ( i%3 === 0 || i%5 === 0 ) {
//       if ( i%15 ===0) {
//         i++;
//       }
//       else
//       {
//         result.push(i);
//       }
//     }
//   }
//   console.log(result)
// }
//
// fizzBuzz([1,2,3,4,5,6,7,8,9,10,15]);
//
// function isPrime(num) {
//   if (num < 2) {
//     return false;
//   }
//
//   for ( var i = 2; i < num; i++) {
//     if (num%i==0) {
//       return false;
//     }
//   }
//   return true;
// }
//
// console.log(isPrime(15));
// console.log(isPrime(7));
//
// function sumOfNPrimes(num) {
//   let sum = 0;
//   let count = 0;
//   let i = 2;
//   while (count < num) {
//     if (isPrime(i)) {
//       sum += i;
//       count ++;
//     }
//     i++;
//   }
//   return sum;
// }
//
// console.log(sumOfNPrimes(0));
// console.log(sumOfNPrimes(1));
// console.log(sumOfNPrimes(4));

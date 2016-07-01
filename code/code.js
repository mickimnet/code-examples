// Simple JavaScript syntax highlight code
'use strict';

class SuperKlasse {
  constructor(valueIn) {
    this.valueIn = valueIn;
  }
  squaredFunktion() {
    return this.valueIn * this.valueIn;
  }
}

function SuperKlasse (valueIn) {
  this.valueIn = valueIn;
}

SuperKlasse.prototype.squaredFunktion = function() {
  return this.valueIn * this.valueIn;
}

function calculateFunktion(xParam,yParam){
  const vNice = Math.floor(Math.exp(yParam));
  let vOut = Math.floor(yParam);
  const vTop = vNice - (vOut + xParam);
  while (vOut < vTop){
    vOut += 3;
  }
  const vObjekt = new SuperKlasse(vOut);
  return vObjekt.squaredFunktion() + vNice + xParam;
}

const BARKONST = 1;
const BAZKONST = 3.7;

var resultVar = calculateFunktion(BARKONST, BAZKONST);
console.log("The result is:",resultVar);
console.log("Are you sure",resultVar,"is the correct number?");

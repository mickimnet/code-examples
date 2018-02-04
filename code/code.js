/* YYY 2018-02-02 check 'use strict for ES' YYY */

// Simple JavaScript syntax highlight code
'use strict';

class SquareKlasse {
  constructor(valueIn) {
    this.valueIn = valueIn;
  }
  squaredFunktion() {
    return this.valueIn * this.valueIn;
  }
}

function SquareKlasseES4 (valueIn) {
  this.valueIn = valueIn;
}

SquareKlasseES4.prototype.squaredFunktion = function() {
  return this.valueIn * this.valueIn;
}

function calculateFunktion(xParam,yParam) {
  const vNice = Math.floor(Math.exp(yParam));
  let vOut = Math.floor(yParam);
  const vTop = vNice - (vOut + xParam);
  while (vOut < vTop) {
    vOut += 3;
  }
  const vObjekt = new SquareKlasse(vOut);
  return vObjekt.squaredFunktion() + vNice + xParam;
}

const BARKONST = 1;
const BAZKONST = 3.7;

var resultVar = calculateFunktion(BARKONST, BAZKONST);
console.log("The result is:",resultVar);
console.log("Are you sure",resultVar,"is the correct number?");

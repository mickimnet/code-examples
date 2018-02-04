// Simple JavaScript syntax highlight code
var squareKlasse = {
	squaredFunktion: function(value_in) {
		return value_in * value_in;
	}
}

function calculateFunktion(xParam,yParam) {
	var vNice = Math.floor(Math.exp(yParam));
	var vOut = Math.floor(yParam);
	var vTop = vNice - (vOut + xParam);
	while (vOut < vTop) {
		vOut += 3;
	}
	var vObjekt = Object.create(squareKlasse);
	return vObjekt.squaredFunktion(vOut) + vNice + xParam;
}

const BARKONST = 1;
const BAZKONST = 3.7;

var resultVar = calculateFunktion(BARKONST, BAZKONST);
console.log("The result is:",resultVar);
console.log("Are you sure",resultVar,"is the correct number?");

<?php
// Simple PHP syntax highlight code

class SquareKlasse {
    function __construct($value_in) {
        $this->value_in = $value_in;
    }
    function squaredFunktion() {
        return $this->value_in * $this->value_in;
    }
}

function calculateFunktion($x_param = 13, $y_param = 37) {
    $v_nice = floor(exp($y_param));
    $v_out = (int)$y_param;
    $v_top = $v_nice - ($v_out + $x_param);
    while ($v_out < $v_top) {
        $v_out += 3;
    }
    $v_objekt = new SquareKlasse($v_out);
    return $v_objekt->squaredFunktion() + $v_nice + $x_param;
}

define('BAR_CONST', 1);
define('BAZ_CONST', 3.7);

$result_var = calculateFunktion(BAR_CONST, BAZ_CONST);
printf("The result is: %s \n", $result_var);
echo "Are you sure ${result_var} is the correct number?";

# Simple Python syntax highlight code
import math

class SquareKlasse(object): #illegal syntax!
    def __init__(self, value_in):
        self.value_in = value_in
    def squared_funktion(self):
        return self.value_in * self.value_in

def calculate_funktion(x_param, y_param):
    _v_nice = int(math.exp(y_param))
    _v_out = int(y_param)
    _v_top = _v_nice - (_v_out + x_param)
    while _v_out < _v_top:
        _v_out = _v_out + 3
    _v_objekt = SquareKlasse(_v_out)
    return _v_objekt.squared_funktion() + _v_nice + x_param

BAR_KONST = 1
BAZ_KONST = 3.7

result_var = calculate_funktion(BAR_KONST, BAZ_KONST)
print "The result is:", result_var
print "Are you sure %d is the correct number?" % result_var

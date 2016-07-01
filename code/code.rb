# Simple Ruby syntax highlight code
module SquareModul
  def self.squared_funktion(value_in)
    value_in * value_in
  end
end

def calculate_funktion(x_param = 13, y_param = 37)
	_v_nice = Math.exp(y_param).floor
	_v_out = y_param.to_i
	_v_top = _v_nice - (_v_out + x_param)
  while _v_out < _v_top
    _v_out += 3
  end
  SquareModul.squared_funktion(_v_out) + _v_nice + x_param
end

BAR_KONST = 1
BAZ_KONST = 3.7

result_var = calculate_funktion(BAR_KONST, BAZ_KONST)
puts "The result is: " + result_var.to_s
puts "Are you sure #{result_var} is the correct number?"

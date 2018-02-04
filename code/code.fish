#!/usr/bin/env fish
# Simple Fish syntax highlight code

function squared_funktion --argument-names value_in
	math "$value_in * $value_in"
end

function calculate_funktion --argument-names x_param y_param
	set --local v_nice (math (echo "e($y_param)" | bc -l) / 1)
	# set --local v_nice (math $v_nice / 1)
	set --local v_out (math $y_param / 1)
	set --local v_top (math "$v_nice - $v_out - $x_param")
	while test $v_out -lt $v_top
		set --export v_out (math $v_out + 3 )
	end
	set --local v_out (squared_funktion $v_out)
	math "$v_out + $v_nice + $x_param"
end

set --local BAR_KONST 1
set --local BAZ_KONST 3.7

set --local result_var (calculate_funktion $BAR_KONST $BAZ_KONST)
echo "The result is:" $result_var
echo "Are you sure $result_var is the correct number?"

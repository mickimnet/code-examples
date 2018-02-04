#!/usr/bin/env bash
# Simple Bash syntax highlight code

squared_funktion () {
	local value_in=${1}
	echo $(( value_in * value_in ))
}

calculate_funktion () {
	local x_param=${1}
	local y_param=${2}
	local v_nice="$(echo "e(${y_param})" | bc -l)"
	local v_out=${y_param//.*}
	local v_top="$(echo "${v_nice//.*} - ${v_out} - ${x_param}" | bc)"
	while test "${v_out}" -lt "${v_top}"
	do
		v_out=$(( v_out + 3 ))
	done
	echo $(( $(squared_funktion ${v_out}) + ${v_nice//.*} + x_param ))
}

declare -r BAR_KONST="1"
declare -r BAZ_KONST="3.7"

result_var=$(calculate_funktion ${BAR_KONST} ${BAZ_KONST})
echo "The result is:" "${result_var}"
echo "Are you sure ${result_var} is the correct number?"

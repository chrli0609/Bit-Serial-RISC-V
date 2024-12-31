#!/bin/sh

source ./init_s2424.sh


min_clk_period=10
max_clk_period=1000
num_x_steps=100


MODELS=("BRISC_top_no_io" "RISC_V_Cached" "serv_synth_wrapper")



incr=$( bc <<< "($max_clk_period-$min_clk_period)/$num_x_steps" )
x_vals=($(seq $min_clk_period $incr $max_clk_period))


for model in ${MODELS[@]}
do
	for clk_period in ${x_vals[@]}
	do
		AREA_FILE=genus_output/${model}_synth_${clk_period}_timing.rpt
		POWER_FILE=genus_output/${model}_synth_${clk_period}_power.rpt
		
		echo "AREA_FILE: $AREA_FILE"
		echo "POWER_FILE: $POWER_FILE"
		
		if [[ -f $AREA_FILE ]] && [[ -f $POWER_FILE ]]; then
  			 echo "Files $AREA_FILE and $POWER_FILE exists."
		else
	#		echo "Files $AREA_FILE and $POWER_FILE does not exist."
			genus -files $model.g -files synt.tcl -execute "set CLOCK_PERIOD $clk_period"  -batch
		fi
	done
done


#echo "{#x_vals[@]}: ${#x_vals}"
> clk_period_samples.txt
for ((i=0; i<${#x_vals[@]}; i++));
do
	echo "${x_vals[$i]}" >> clk_period_samples.txt
done



python extract_ppa.py


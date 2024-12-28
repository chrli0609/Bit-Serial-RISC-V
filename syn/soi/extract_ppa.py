#import matplotlib.pyplot as plt
import sys


#print(sys.argv)

RPT_DIR = "genus_output"

#POWER_FILENAME = "genus_output/BRISC_top_no_io_synth_power.rpt"
#AREA_FILENAME = "genus_output/BRISC_top_no_io_synth_area.rpt"

#FILENAME = sys.argv[1]

OUTFILE = "summary_file.txt"


MODELS = ["BRISC_top_no_io", "RISC_V_Cached", "serv_synth_wrapper"]

#MODELS = ["serv_synth_wrapper"]



TOT_AREA_IDX = 4
NUM_GATES_IDX = 1 
TOT_POWER_IDX = 4






def read_clk_period_samples(filename):
	clk_period_samples = []
	with open(filename) as file:
		for line in file:
			try:
				line = line.strip()
				clk_period_samples.append(line)
			except:
				print("AN ERROR HAS OCCURRED: NON FLOAT OR NON INT VALUES FOUND IN clk_period_samples.txt")
				exit()
	return clk_period_samples
			



def get_design_name(filepath):
	filename = filepath.split("/")[-1]
	return filename.split("_synth_")[0]


def is_area_line(components_list, design_name):
	
	print("components_list", components_list)
	print("design name:", design_name)
	if len(components_list) != 7:
		print("1")
		return False
	if components_list[0] != design_name:
		print("2")
		return False
	return True	


def is_power_line(components_list):

	
	if len(components_list) != 6:
		return False
	if components_list[0] != "Subtotal":
		return False
	return True	


def read_area(filename):
	
	design_name = get_design_name(filename)

	file = open(filename, "r")
	
	for line in file:
		print("incoming line:", line)
		line = line.strip()
		components_list = line.split()
		
		if is_area_line(components_list, design_name):
			area_value = components_list[TOT_AREA_IDX]
			num_gates_value = components_list[NUM_GATES_IDX]
			return area_value, num_gates_value

	#We have wrong is_area_line if we get here
	print("Error: Area line not found at all, most likely error in is_area_line()")
	return None


def read_power(filename):

	file = open(filename, "r")
	
	for line in file:
		line = line.strip()
		components_list = line.split()
		
		if is_power_line(components_list):
			power_value = components_list[TOT_POWER_IDX]
			return power_value





def write_to_file(filename, values_list):
	file = open(filename, "w")
	
	for value in values_list:
		file.write(value + "\n") 






def summarize():

	power_value = read_power(POWER_FILENAME)
	area_value, num_gates_value = read_area(AREA_FILENAME)



	tmp_list = [power_value, area_value, num_gates_value]

	write_to_file(OUTFILE, tmp_list)






def plot(sample_x_vals, values_matrix):
	
	for model in values_matrix:
		plt.plot(sample_x_vals, model)

	plt.show()
	



def get_filepath(rpt_dir, model_name, clk_period, stat_type):
	return rpt_dir + "/" + model_name + "_synth_" + clk_period + "_" + stat_type + ".rpt"






def main():


	#Get clk_period_samples
	clk_period_samples = read_clk_period_samples("clk_period_samples.txt")

	power_matrix = []
	for model_name in MODELS:
		tmp = []
		for clk_period in clk_period_samples:
			tmp.append(read_power(get_filepath(RPT_DIR, model_name, clk_period, "power")))

		power_matrix.append(tmp)



	for i in range(len(MODELS)):
		write_to_file(MODELS[i]+"_vals.txt", power_matrix[i])
			
			

	
	
	
	
	


	
			
		
main()

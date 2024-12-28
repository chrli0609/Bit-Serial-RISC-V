import matplotlib.pyplot as plt



CLK_PERIOD_FILENAME = "clk_period_samples.txt"

MODELS = ["BRISC_top_no_io", "RISC_V_Cached", "serv_synth_wrapper"]





def get_filepath(model_name, stat_type):
	return model_name + "_" + stat_type + "_vals.txt"


def read_file(filename):
	
	rtr_arr = []
	with open(filename) as file:
		for line in file:
			try:
				rtr_arr.append(float(line))
			except:
				print("An error has occurred, non float or integer value found in", filename)
				exit()

	return rtr_arr



	
def rescale_vals(val_list, magnitude):
	
	ret_list = []
	for val in val_list:
		ret_list.append(val * 10**magnitude)

	return ret_list
		
		


def main():
	clk_period_list = read_file(CLK_PERIOD_FILENAME)
	clk_freq_list = []
	for clk_period in clk_period_list:
		clk_freq_list.append(1/clk_period)


	
	power_mat = []
	area_mat = []
	for model_name in MODELS:
		power_mat.append(read_file(get_filepath(model_name, stat_type="power")))
		area_mat.append(read_file(get_filepath(model_name, stat_type="area")))

	
	
	for i in range(len(MODELS)):
		plt.plot(rescale_vals(clk_freq_list,3), rescale_vals(power_mat[i],3), label=MODELS[i])

	plt.title("Performance-Power Trade-off for different designs")
	plt.ylabel("Power (mW)")
	plt.xlabel("Clock Frequency (MHz)")
	plt.legend()
	plt.savefig("plots/perf_vs_power.png")
	plt.show()

	
	
	for i in range(len(MODELS)):
		plt.plot(rescale_vals(clk_freq_list,3), area_mat[i], label=MODELS[i])

	plt.title("Performance-Area Trade-off for different designs")
	plt.ylabel("Area")
	plt.xlabel("Clock Frequency (MHz)")
	plt.legend()
	plt.savefig("plots/perf_vs_area.png")
	plt.show()


main()

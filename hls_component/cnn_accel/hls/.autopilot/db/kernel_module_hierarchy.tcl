set ModuleHierarchy {[{
"Name" : "cnn_accel", "RefName" : "cnn_accel","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "Block_entry_proc_U0", "RefName" : "Block_entry_proc","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_load_img_fu_3251", "RefName" : "load_img","ID" : "2","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_load_img_Pipeline_LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH_fu_51", "RefName" : "load_img_Pipeline_LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH","ID" : "3","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH","RefName" : "LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH","ID" : "4","Type" : "pipeline"},]},]},
		{"Name" : "grp_conv1_fu_3261", "RefName" : "conv1","ID" : "5","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "CONV1_ROW_CONV1_COL_CONV1_FIL","RefName" : "CONV1_ROW_CONV1_COL_CONV1_FIL","ID" : "6","Type" : "pipeline"},]},
		{"Name" : "grp_pool1_fu_3723", "RefName" : "pool1","ID" : "7","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "POOL1_ROW_POOL1_COL_POOL1_CH","RefName" : "POOL1_ROW_POOL1_COL_POOL1_CH","ID" : "8","Type" : "pipeline"},]},
		{"Name" : "grp_conv2_fu_3743", "RefName" : "conv2","ID" : "9","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "CONV2_ROW_CONV2_COL_CONV2_FIL","RefName" : "CONV2_ROW_CONV2_COL_CONV2_FIL","ID" : "10","Type" : "pipeline"},]},
		{"Name" : "grp_pool2_fu_6099", "RefName" : "pool2","ID" : "11","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "POOL2_ROW_POOL2_COL_POOL2_CH","RefName" : "POOL2_ROW_POOL2_COL_POOL2_CH","ID" : "12","Type" : "pipeline"},]},
		{"Name" : "grp_flatten_fu_6119", "RefName" : "flatten","ID" : "13","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "FLATTEN_VITIS_LOOP_309_1_VITIS_LOOP_310_2","RefName" : "FLATTEN_VITIS_LOOP_309_1_VITIS_LOOP_310_2","ID" : "14","Type" : "pipeline"},]},
		{"Name" : "grp_fc1_fu_6133", "RefName" : "fc1","ID" : "15","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "FC1_OUT","RefName" : "FC1_OUT","ID" : "16","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_generic_tanh_float_s_fu_381", "RefName" : "generic_tanh_float_s","ID" : "17","Type" : "pipeline",
					"SubInsts" : [
					{"Name" : "grp_exp_generic_double_s_fu_89", "RefName" : "exp_generic_double_s","ID" : "18","Type" : "pipeline"},]},],
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_327_1","RefName" : "VITIS_LOOP_327_1","ID" : "19","Type" : "no"},]},]},
		{"Name" : "grp_fc2_fu_6227", "RefName" : "fc2","ID" : "20","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_fc2_Pipeline_FC2_LOOP_fu_156", "RefName" : "fc2_Pipeline_FC2_LOOP","ID" : "21","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "FC2_LOOP","RefName" : "FC2_LOOP","ID" : "22","Type" : "pipeline"},]},]},
		{"Name" : "grp_Block_entry_proc_Pipeline_LOAD_W1_fu_6302", "RefName" : "Block_entry_proc_Pipeline_LOAD_W1","ID" : "23","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_W1","RefName" : "LOAD_W1","ID" : "24","Type" : "pipeline"},]},
		{"Name" : "grp_Block_entry_proc_Pipeline_LOAD_B1_fu_6741", "RefName" : "Block_entry_proc_Pipeline_LOAD_B1","ID" : "25","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_B1","RefName" : "LOAD_B1","ID" : "26","Type" : "pipeline"},]},
		{"Name" : "grp_Block_entry_proc_Pipeline_LOAD_W2_fu_6764", "RefName" : "Block_entry_proc_Pipeline_LOAD_W2","ID" : "27","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_W2","RefName" : "LOAD_W2","ID" : "28","Type" : "pipeline"},]},
		{"Name" : "grp_Block_entry_proc_Pipeline_LOAD_B2_fu_9075", "RefName" : "Block_entry_proc_Pipeline_LOAD_B2","ID" : "29","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_B2","RefName" : "LOAD_B2","ID" : "30","Type" : "pipeline"},]},
		{"Name" : "grp_Block_entry_proc_Pipeline_LOAD_FC1W_fu_9114", "RefName" : "Block_entry_proc_Pipeline_LOAD_FC1W","ID" : "31","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_FC1W","RefName" : "LOAD_FC1W","ID" : "32","Type" : "pipeline"},]},
		{"Name" : "grp_Block_entry_proc_Pipeline_LOAD_FC1B_fu_9137", "RefName" : "Block_entry_proc_Pipeline_LOAD_FC1B","ID" : "33","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_FC1B","RefName" : "LOAD_FC1B","ID" : "34","Type" : "pipeline"},]},
		{"Name" : "grp_Block_entry_proc_Pipeline_LOAD_FC2W_fu_9208", "RefName" : "Block_entry_proc_Pipeline_LOAD_FC2W","ID" : "35","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_FC2W","RefName" : "LOAD_FC2W","ID" : "36","Type" : "pipeline"},]},]},]
}]}
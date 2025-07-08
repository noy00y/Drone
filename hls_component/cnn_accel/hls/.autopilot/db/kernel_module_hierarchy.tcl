set ModuleHierarchy {[{
"Name" : "cnn_accel", "RefName" : "cnn_accel","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "load_img_U0", "RefName" : "load_img","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH","RefName" : "LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "conv1_U0", "RefName" : "conv1","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CONV1_ROW_CONV1_COL_CONV1_FIL","RefName" : "CONV1_ROW_CONV1_COL_CONV1_FIL","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "pool1_U0", "RefName" : "pool1","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "POOL1_ROW_POOL1_COL_POOL1_CH","RefName" : "POOL1_ROW_POOL1_COL_POOL1_CH","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "conv2_U0", "RefName" : "conv2","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CONV2_ROW_CONV2_COL_CONV2_FIL","RefName" : "CONV2_ROW_CONV2_COL_CONV2_FIL","ID" : "8","Type" : "pipeline"},]},
	{"Name" : "pool2_U0", "RefName" : "pool2","ID" : "9","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "POOL2_ROW_POOL2_COL_POOL2_CH","RefName" : "POOL2_ROW_POOL2_COL_POOL2_CH","ID" : "10","Type" : "pipeline"},]},
	{"Name" : "flatten_U0", "RefName" : "flatten","ID" : "11","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "FLATTEN_VITIS_LOOP_252_1_VITIS_LOOP_253_2","RefName" : "FLATTEN_VITIS_LOOP_252_1_VITIS_LOOP_253_2","ID" : "12","Type" : "pipeline"},]},
	{"Name" : "fc1_U0", "RefName" : "fc1","ID" : "13","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "FC1_OUT","RefName" : "FC1_OUT","ID" : "14","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_generic_tanh_float_s_fu_175", "RefName" : "generic_tanh_float_s","ID" : "15","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "grp_exp_generic_double_s_fu_89", "RefName" : "exp_generic_double_s","ID" : "16","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_270_1","RefName" : "VITIS_LOOP_270_1","ID" : "17","Type" : "no"},]},]},
	{"Name" : "fc2_U0", "RefName" : "fc2","ID" : "18","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_fc2_Pipeline_FC2_LOOP_fu_149", "RefName" : "fc2_Pipeline_FC2_LOOP","ID" : "19","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "FC2_LOOP","RefName" : "FC2_LOOP","ID" : "20","Type" : "pipeline"},]},]},]
}]}
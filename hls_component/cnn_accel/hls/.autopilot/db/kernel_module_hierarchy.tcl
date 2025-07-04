set ModuleHierarchy {[{
"Name" : "cnn_accel", "RefName" : "cnn_accel","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_cnn_accel_Pipeline_LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH_fu_991", "RefName" : "cnn_accel_Pipeline_LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH","RefName" : "LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_cnn_accel_Pipeline_POOL1_ROW_POOL1_COL_POOL1_CH_fu_1062", "RefName" : "cnn_accel_Pipeline_POOL1_ROW_POOL1_COL_POOL1_CH","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "POOL1_ROW_POOL1_COL_POOL1_CH","RefName" : "POOL1_ROW_POOL1_COL_POOL1_CH","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_cnn_accel_Pipeline_POOL2_ROW_POOL2_COL_POOL2_CH_fu_1098", "RefName" : "cnn_accel_Pipeline_POOL2_ROW_POOL2_COL_POOL2_CH","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "POOL2_ROW_POOL2_COL_POOL2_CH","RefName" : "POOL2_ROW_POOL2_COL_POOL2_CH","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "grp_cnn_accel_Pipeline_FLATTEN_VITIS_LOOP_189_1_VITIS_LOOP_190_2_fu_1195", "RefName" : "cnn_accel_Pipeline_FLATTEN_VITIS_LOOP_189_1_VITIS_LOOP_190_2","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "FLATTEN_VITIS_LOOP_189_1_VITIS_LOOP_190_2","RefName" : "FLATTEN_VITIS_LOOP_189_1_VITIS_LOOP_190_2","ID" : "8","Type" : "pipeline"},]},
	{"Name" : "grp_cnn_accel_Pipeline_FC2_LOOP_fu_1257", "RefName" : "cnn_accel_Pipeline_FC2_LOOP","ID" : "9","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "FC2_LOOP","RefName" : "FC2_LOOP","ID" : "10","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "CONV1_ROW","RefName" : "CONV1_ROW","ID" : "11","Type" : "no",
	"SubLoops" : [
	{"Name" : "CONV1_COL","RefName" : "CONV1_COL","ID" : "12","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_cnn_accel_Pipeline_CONV1_FIL_fu_1004", "RefName" : "cnn_accel_Pipeline_CONV1_FIL","ID" : "13","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "CONV1_FIL","RefName" : "CONV1_FIL","ID" : "14","Type" : "pipeline"},]},]},]},
	{"Name" : "CONV2_ROW","RefName" : "CONV2_ROW","ID" : "15","Type" : "no",
	"SubLoops" : [
	{"Name" : "CONV2_COL","RefName" : "CONV2_COL","ID" : "16","Type" : "no",
		"SubLoops" : [
		{"Name" : "CONV2_FIL","RefName" : "CONV2_FIL","ID" : "17","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_cnn_accel_Pipeline_CONV2_KR_CONV2_KC_CONV2_CH_fu_1166", "RefName" : "cnn_accel_Pipeline_CONV2_KR_CONV2_KC_CONV2_CH","ID" : "18","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "CONV2_KR_CONV2_KC_CONV2_CH","RefName" : "CONV2_KR_CONV2_KC_CONV2_CH","ID" : "19","Type" : "pipeline"},]},]},]},]},
	{"Name" : "FC1_OUT","RefName" : "FC1_OUT","ID" : "20","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_cnn_accel_Pipeline_VITIS_LOOP_202_3_fu_1233", "RefName" : "cnn_accel_Pipeline_VITIS_LOOP_202_3","ID" : "21","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_202_3","RefName" : "VITIS_LOOP_202_3","ID" : "22","Type" : "pipeline"},]},
	{"Name" : "grp_generic_tanh_float_s_fu_1245", "RefName" : "generic_tanh_float_s","ID" : "23","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_exp_generic_double_s_fu_89", "RefName" : "exp_generic_double_s","ID" : "24","Type" : "pipeline"},]},]},]
}]}
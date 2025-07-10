set ModuleHierarchy {[{
"Name" : "cnn_accel", "RefName" : "cnn_accel","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "Block_entry_proc_U0", "RefName" : "Block_entry_proc","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_stream_img_fu_112", "RefName" : "stream_img","ID" : "2","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_stream_img_Pipeline_VITIS_LOOP_35_1_fu_53", "RefName" : "stream_img_Pipeline_VITIS_LOOP_35_1","ID" : "3","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_35_1","RefName" : "VITIS_LOOP_35_1","ID" : "4","Type" : "pipeline"},]},]},
		{"Name" : "grp_fc2_fu_121", "RefName" : "fc2","ID" : "5","Type" : "sequential"},
		{"Name" : "grp_conv1_stream_fu_129", "RefName" : "conv1_stream","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "ROW_LOOP","RefName" : "ROW_LOOP","ID" : "7","Type" : "no",
			"SubLoops" : [
			{"Name" : "COL_LOOP","RefName" : "COL_LOOP","ID" : "8","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_conv1_stream_Pipeline_PIX_CH_fu_71", "RefName" : "conv1_stream_Pipeline_PIX_CH","ID" : "9","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "PIX_CH","RefName" : "PIX_CH","ID" : "10","Type" : "pipeline"},]},
				{"Name" : "grp_conv1_stream_Pipeline_VITIS_LOOP_82_4_fu_77", "RefName" : "conv1_stream_Pipeline_VITIS_LOOP_82_4","ID" : "11","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_82_4","RefName" : "VITIS_LOOP_82_4","ID" : "12","Type" : "pipeline"},]},]},]},]},
		{"Name" : "grp_pool1_stream_fu_135", "RefName" : "pool1_stream","ID" : "13","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_108_1_VITIS_LOOP_109_2_VITIS_LOOP_110_3","RefName" : "VITIS_LOOP_108_1_VITIS_LOOP_109_2_VITIS_LOOP_110_3","ID" : "14","Type" : "pipeline"},]},
		{"Name" : "grp_conv2_stream_fu_143", "RefName" : "conv2_stream","ID" : "15","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "ROW2","RefName" : "ROW2","ID" : "16","Type" : "no",
			"SubLoops" : [
			{"Name" : "COL2","RefName" : "COL2","ID" : "17","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_conv2_stream_Pipeline_CH2_fu_71", "RefName" : "conv2_stream_Pipeline_CH2","ID" : "18","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "CH2","RefName" : "CH2","ID" : "19","Type" : "pipeline"},]},
				{"Name" : "grp_conv2_stream_Pipeline_VITIS_LOOP_158_4_fu_77", "RefName" : "conv2_stream_Pipeline_VITIS_LOOP_158_4","ID" : "20","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_158_4","RefName" : "VITIS_LOOP_158_4","ID" : "21","Type" : "pipeline"},]},]},]},]},
		{"Name" : "grp_pool2_stream_fu_149", "RefName" : "pool2_stream","ID" : "22","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_182_1_VITIS_LOOP_183_2_VITIS_LOOP_184_3","RefName" : "VITIS_LOOP_182_1_VITIS_LOOP_183_2_VITIS_LOOP_184_3","ID" : "23","Type" : "pipeline"},]},
		{"Name" : "grp_flatten_stream_fu_157", "RefName" : "flatten_stream","ID" : "24","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_209_1","RefName" : "VITIS_LOOP_209_1","ID" : "25","Type" : "pipeline"},]},]},]
}]}
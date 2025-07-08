set moduleName conv1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 23
set C_modelName {conv1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict feat1 { MEM_WIDTH 32 MEM_SIZE 605472 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_61 { MEM_WIDTH 32 MEM_SIZE 605472 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_62 { MEM_WIDTH 32 MEM_SIZE 605472 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_63 { MEM_WIDTH 32 MEM_SIZE 605472 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict local_img { MEM_WIDTH 32 MEM_SIZE 614400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict local_img_60 { MEM_WIDTH 32 MEM_SIZE 614400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ feat1 float 32 regular {array 151368 { 0 3 } 0 1 }  }
	{ feat1_61 float 32 regular {array 151368 { 0 3 } 0 1 }  }
	{ feat1_62 float 32 regular {array 151368 { 0 3 } 0 1 }  }
	{ feat1_63 float 32 regular {array 151368 { 0 3 } 0 1 }  }
	{ local_img float 32 regular {array 153600 { 1 1 } 1 1 }  }
	{ local_img_60 float 32 regular {array 153600 { 1 1 } 1 1 }  }
	{ b1_local float 32 regular {pointer 0} {global 0}  }
	{ b1_local_10 float 32 regular {pointer 0} {global 0}  }
	{ b1_local_11 float 32 regular {pointer 0} {global 0}  }
	{ b1_local_12 float 32 regular {pointer 0} {global 0}  }
	{ b1_local_13 float 32 regular {pointer 0} {global 0}  }
	{ b1_local_14 float 32 regular {pointer 0} {global 0}  }
	{ b1_local_15 float 32 regular {pointer 0} {global 0}  }
	{ b1_local_16 float 32 regular {pointer 0} {global 0}  }
	{ w1_local float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_27 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_54 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_81 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_108 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_135 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_162 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_189 float 32 regular {pointer 0} {global 0}  }
	{ w1_local_9 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_36 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_63 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_90 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_117 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_144 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_171 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_198 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_18 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_45 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_72 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_99 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_126 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_153 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_180 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_207 float 32 regular {pointer 0} {global 0}  }
	{ w1_local_1 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_28 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_55 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_82 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_109 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_136 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_163 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_190 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_10 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_37 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_64 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_91 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_118 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_145 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_172 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_199 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_19 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_46 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_73 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_100 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_127 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_154 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_181 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_208 float 32 regular {pointer 0} {global 0}  }
	{ w1_local_2 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_29 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_56 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_83 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_110 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_137 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_164 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_191 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_11 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_38 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_65 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_92 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_119 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_146 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_173 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_200 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_20 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_47 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_74 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_101 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_128 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_155 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_182 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_209 float 32 regular {pointer 0} {global 0}  }
	{ w1_local_3 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_30 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_57 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_84 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_111 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_138 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_165 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_192 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_12 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_39 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_66 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_93 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_120 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_147 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_174 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_201 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_21 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_48 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_75 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_102 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_129 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_156 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_183 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_210 float 32 regular {pointer 0} {global 0}  }
	{ w1_local_4 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_31 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_58 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_85 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_112 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_139 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_166 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_193 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_13 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_40 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_67 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_94 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_121 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_148 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_175 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_202 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_22 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_49 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_76 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_103 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_130 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_157 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_184 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_211 float 32 regular {pointer 0} {global 0}  }
	{ w1_local_5 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_32 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_59 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_86 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_113 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_140 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_167 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_194 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_14 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_41 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_68 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_95 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_122 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_149 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_176 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_203 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_23 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_50 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_77 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_104 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_131 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_158 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_185 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_212 float 32 regular {pointer 0} {global 0}  }
	{ w1_local_6 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_33 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_60 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_87 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_114 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_141 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_168 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_195 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_15 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_42 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_69 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_96 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_123 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_150 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_177 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_204 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_24 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_51 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_78 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_105 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_132 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_159 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_186 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_213 float 32 regular {pointer 0} {global 0}  }
	{ w1_local_7 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_34 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_61 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_88 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_115 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_142 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_169 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_196 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_16 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_43 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_70 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_97 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_124 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_151 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_178 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_205 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_25 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_52 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_79 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_106 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_133 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_160 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_187 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_214 float 32 regular {pointer 0} {global 0}  }
	{ w1_local_8 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_35 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_62 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_89 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_116 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_143 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_170 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_197 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_17 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_44 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_71 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_98 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_125 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_152 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_179 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_206 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_26 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_53 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_80 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_107 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_134 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_161 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_188 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE8w1_local_215 float 32 regular {pointer 0} {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "feat1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "feat1_61", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "feat1_62", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "feat1_63", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_img", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_60", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b1_local", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "b1_local_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "b1_local_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "b1_local_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "b1_local_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "b1_local_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "b1_local_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "b1_local_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "w1_local", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_54", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_81", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_108", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_135", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_162", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_189", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "w1_local_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_36", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_63", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_90", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_117", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_144", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_171", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_198", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_45", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_72", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_99", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_126", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_153", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_180", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_207", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "w1_local_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_55", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_82", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_109", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_136", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_163", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_190", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_37", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_64", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_91", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_118", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_145", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_172", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_199", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_46", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_73", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_100", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_127", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_154", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_181", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_208", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "w1_local_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_56", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_83", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_110", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_137", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_164", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_191", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_38", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_65", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_92", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_119", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_146", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_173", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_200", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_47", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_74", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_101", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_128", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_155", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_182", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_209", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "w1_local_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_57", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_84", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_111", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_138", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_165", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_192", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_39", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_93", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_120", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_147", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_174", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_201", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_48", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_75", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_102", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_129", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_156", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_183", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_210", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "w1_local_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_58", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_85", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_112", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_139", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_166", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_193", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_40", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_67", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_94", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_121", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_148", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_175", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_202", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_49", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_76", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_103", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_130", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_157", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_184", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_211", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "w1_local_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_32", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_59", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_86", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_113", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_140", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_167", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_194", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_41", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_68", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_95", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_122", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_149", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_176", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_203", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_50", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_77", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_104", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_131", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_158", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_185", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_212", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "w1_local_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_33", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_60", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_87", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_114", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_141", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_168", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_195", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_42", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_69", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_96", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_123", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_150", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_177", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_204", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_51", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_78", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_105", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_132", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_159", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_186", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_213", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "w1_local_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_34", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_61", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_88", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_115", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_142", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_169", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_196", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_43", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_70", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_97", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_124", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_151", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_178", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_205", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_52", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_79", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_106", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_133", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_160", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_187", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_214", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "w1_local_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_35", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_62", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_89", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_116", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_143", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_170", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_197", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_44", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_71", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_98", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_125", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_152", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_179", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_206", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_53", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_80", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_107", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_134", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_161", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_188", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8w1_local_215", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 290
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ feat1_address0 sc_out sc_lv 18 signal 0 } 
	{ feat1_ce0 sc_out sc_logic 1 signal 0 } 
	{ feat1_we0 sc_out sc_logic 1 signal 0 } 
	{ feat1_d0 sc_out sc_lv 32 signal 0 } 
	{ feat1_61_address0 sc_out sc_lv 18 signal 1 } 
	{ feat1_61_ce0 sc_out sc_logic 1 signal 1 } 
	{ feat1_61_we0 sc_out sc_logic 1 signal 1 } 
	{ feat1_61_d0 sc_out sc_lv 32 signal 1 } 
	{ feat1_62_address0 sc_out sc_lv 18 signal 2 } 
	{ feat1_62_ce0 sc_out sc_logic 1 signal 2 } 
	{ feat1_62_we0 sc_out sc_logic 1 signal 2 } 
	{ feat1_62_d0 sc_out sc_lv 32 signal 2 } 
	{ feat1_63_address0 sc_out sc_lv 18 signal 3 } 
	{ feat1_63_ce0 sc_out sc_logic 1 signal 3 } 
	{ feat1_63_we0 sc_out sc_logic 1 signal 3 } 
	{ feat1_63_d0 sc_out sc_lv 32 signal 3 } 
	{ local_img_address0 sc_out sc_lv 18 signal 4 } 
	{ local_img_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_img_q0 sc_in sc_lv 32 signal 4 } 
	{ local_img_address1 sc_out sc_lv 18 signal 4 } 
	{ local_img_ce1 sc_out sc_logic 1 signal 4 } 
	{ local_img_q1 sc_in sc_lv 32 signal 4 } 
	{ local_img_60_address0 sc_out sc_lv 18 signal 5 } 
	{ local_img_60_ce0 sc_out sc_logic 1 signal 5 } 
	{ local_img_60_q0 sc_in sc_lv 32 signal 5 } 
	{ local_img_60_address1 sc_out sc_lv 18 signal 5 } 
	{ local_img_60_ce1 sc_out sc_logic 1 signal 5 } 
	{ local_img_60_q1 sc_in sc_lv 32 signal 5 } 
	{ b1_local sc_in sc_lv 32 signal 6 } 
	{ b1_local_10 sc_in sc_lv 32 signal 7 } 
	{ b1_local_11 sc_in sc_lv 32 signal 8 } 
	{ b1_local_12 sc_in sc_lv 32 signal 9 } 
	{ b1_local_13 sc_in sc_lv 32 signal 10 } 
	{ b1_local_14 sc_in sc_lv 32 signal 11 } 
	{ b1_local_15 sc_in sc_lv 32 signal 12 } 
	{ b1_local_16 sc_in sc_lv 32 signal 13 } 
	{ w1_local sc_in sc_lv 32 signal 14 } 
	{ p_ZZ9cnn_accelE8w1_local_27 sc_in sc_lv 32 signal 15 } 
	{ p_ZZ9cnn_accelE8w1_local_54 sc_in sc_lv 32 signal 16 } 
	{ p_ZZ9cnn_accelE8w1_local_81 sc_in sc_lv 32 signal 17 } 
	{ p_ZZ9cnn_accelE8w1_local_108 sc_in sc_lv 32 signal 18 } 
	{ p_ZZ9cnn_accelE8w1_local_135 sc_in sc_lv 32 signal 19 } 
	{ p_ZZ9cnn_accelE8w1_local_162 sc_in sc_lv 32 signal 20 } 
	{ p_ZZ9cnn_accelE8w1_local_189 sc_in sc_lv 32 signal 21 } 
	{ w1_local_9 sc_in sc_lv 32 signal 22 } 
	{ p_ZZ9cnn_accelE8w1_local_36 sc_in sc_lv 32 signal 23 } 
	{ p_ZZ9cnn_accelE8w1_local_63 sc_in sc_lv 32 signal 24 } 
	{ p_ZZ9cnn_accelE8w1_local_90 sc_in sc_lv 32 signal 25 } 
	{ p_ZZ9cnn_accelE8w1_local_117 sc_in sc_lv 32 signal 26 } 
	{ p_ZZ9cnn_accelE8w1_local_144 sc_in sc_lv 32 signal 27 } 
	{ p_ZZ9cnn_accelE8w1_local_171 sc_in sc_lv 32 signal 28 } 
	{ p_ZZ9cnn_accelE8w1_local_198 sc_in sc_lv 32 signal 29 } 
	{ p_ZZ9cnn_accelE8w1_local_18 sc_in sc_lv 32 signal 30 } 
	{ p_ZZ9cnn_accelE8w1_local_45 sc_in sc_lv 32 signal 31 } 
	{ p_ZZ9cnn_accelE8w1_local_72 sc_in sc_lv 32 signal 32 } 
	{ p_ZZ9cnn_accelE8w1_local_99 sc_in sc_lv 32 signal 33 } 
	{ p_ZZ9cnn_accelE8w1_local_126 sc_in sc_lv 32 signal 34 } 
	{ p_ZZ9cnn_accelE8w1_local_153 sc_in sc_lv 32 signal 35 } 
	{ p_ZZ9cnn_accelE8w1_local_180 sc_in sc_lv 32 signal 36 } 
	{ p_ZZ9cnn_accelE8w1_local_207 sc_in sc_lv 32 signal 37 } 
	{ w1_local_1 sc_in sc_lv 32 signal 38 } 
	{ p_ZZ9cnn_accelE8w1_local_28 sc_in sc_lv 32 signal 39 } 
	{ p_ZZ9cnn_accelE8w1_local_55 sc_in sc_lv 32 signal 40 } 
	{ p_ZZ9cnn_accelE8w1_local_82 sc_in sc_lv 32 signal 41 } 
	{ p_ZZ9cnn_accelE8w1_local_109 sc_in sc_lv 32 signal 42 } 
	{ p_ZZ9cnn_accelE8w1_local_136 sc_in sc_lv 32 signal 43 } 
	{ p_ZZ9cnn_accelE8w1_local_163 sc_in sc_lv 32 signal 44 } 
	{ p_ZZ9cnn_accelE8w1_local_190 sc_in sc_lv 32 signal 45 } 
	{ p_ZZ9cnn_accelE8w1_local_10 sc_in sc_lv 32 signal 46 } 
	{ p_ZZ9cnn_accelE8w1_local_37 sc_in sc_lv 32 signal 47 } 
	{ p_ZZ9cnn_accelE8w1_local_64 sc_in sc_lv 32 signal 48 } 
	{ p_ZZ9cnn_accelE8w1_local_91 sc_in sc_lv 32 signal 49 } 
	{ p_ZZ9cnn_accelE8w1_local_118 sc_in sc_lv 32 signal 50 } 
	{ p_ZZ9cnn_accelE8w1_local_145 sc_in sc_lv 32 signal 51 } 
	{ p_ZZ9cnn_accelE8w1_local_172 sc_in sc_lv 32 signal 52 } 
	{ p_ZZ9cnn_accelE8w1_local_199 sc_in sc_lv 32 signal 53 } 
	{ p_ZZ9cnn_accelE8w1_local_19 sc_in sc_lv 32 signal 54 } 
	{ p_ZZ9cnn_accelE8w1_local_46 sc_in sc_lv 32 signal 55 } 
	{ p_ZZ9cnn_accelE8w1_local_73 sc_in sc_lv 32 signal 56 } 
	{ p_ZZ9cnn_accelE8w1_local_100 sc_in sc_lv 32 signal 57 } 
	{ p_ZZ9cnn_accelE8w1_local_127 sc_in sc_lv 32 signal 58 } 
	{ p_ZZ9cnn_accelE8w1_local_154 sc_in sc_lv 32 signal 59 } 
	{ p_ZZ9cnn_accelE8w1_local_181 sc_in sc_lv 32 signal 60 } 
	{ p_ZZ9cnn_accelE8w1_local_208 sc_in sc_lv 32 signal 61 } 
	{ w1_local_2 sc_in sc_lv 32 signal 62 } 
	{ p_ZZ9cnn_accelE8w1_local_29 sc_in sc_lv 32 signal 63 } 
	{ p_ZZ9cnn_accelE8w1_local_56 sc_in sc_lv 32 signal 64 } 
	{ p_ZZ9cnn_accelE8w1_local_83 sc_in sc_lv 32 signal 65 } 
	{ p_ZZ9cnn_accelE8w1_local_110 sc_in sc_lv 32 signal 66 } 
	{ p_ZZ9cnn_accelE8w1_local_137 sc_in sc_lv 32 signal 67 } 
	{ p_ZZ9cnn_accelE8w1_local_164 sc_in sc_lv 32 signal 68 } 
	{ p_ZZ9cnn_accelE8w1_local_191 sc_in sc_lv 32 signal 69 } 
	{ p_ZZ9cnn_accelE8w1_local_11 sc_in sc_lv 32 signal 70 } 
	{ p_ZZ9cnn_accelE8w1_local_38 sc_in sc_lv 32 signal 71 } 
	{ p_ZZ9cnn_accelE8w1_local_65 sc_in sc_lv 32 signal 72 } 
	{ p_ZZ9cnn_accelE8w1_local_92 sc_in sc_lv 32 signal 73 } 
	{ p_ZZ9cnn_accelE8w1_local_119 sc_in sc_lv 32 signal 74 } 
	{ p_ZZ9cnn_accelE8w1_local_146 sc_in sc_lv 32 signal 75 } 
	{ p_ZZ9cnn_accelE8w1_local_173 sc_in sc_lv 32 signal 76 } 
	{ p_ZZ9cnn_accelE8w1_local_200 sc_in sc_lv 32 signal 77 } 
	{ p_ZZ9cnn_accelE8w1_local_20 sc_in sc_lv 32 signal 78 } 
	{ p_ZZ9cnn_accelE8w1_local_47 sc_in sc_lv 32 signal 79 } 
	{ p_ZZ9cnn_accelE8w1_local_74 sc_in sc_lv 32 signal 80 } 
	{ p_ZZ9cnn_accelE8w1_local_101 sc_in sc_lv 32 signal 81 } 
	{ p_ZZ9cnn_accelE8w1_local_128 sc_in sc_lv 32 signal 82 } 
	{ p_ZZ9cnn_accelE8w1_local_155 sc_in sc_lv 32 signal 83 } 
	{ p_ZZ9cnn_accelE8w1_local_182 sc_in sc_lv 32 signal 84 } 
	{ p_ZZ9cnn_accelE8w1_local_209 sc_in sc_lv 32 signal 85 } 
	{ w1_local_3 sc_in sc_lv 32 signal 86 } 
	{ p_ZZ9cnn_accelE8w1_local_30 sc_in sc_lv 32 signal 87 } 
	{ p_ZZ9cnn_accelE8w1_local_57 sc_in sc_lv 32 signal 88 } 
	{ p_ZZ9cnn_accelE8w1_local_84 sc_in sc_lv 32 signal 89 } 
	{ p_ZZ9cnn_accelE8w1_local_111 sc_in sc_lv 32 signal 90 } 
	{ p_ZZ9cnn_accelE8w1_local_138 sc_in sc_lv 32 signal 91 } 
	{ p_ZZ9cnn_accelE8w1_local_165 sc_in sc_lv 32 signal 92 } 
	{ p_ZZ9cnn_accelE8w1_local_192 sc_in sc_lv 32 signal 93 } 
	{ p_ZZ9cnn_accelE8w1_local_12 sc_in sc_lv 32 signal 94 } 
	{ p_ZZ9cnn_accelE8w1_local_39 sc_in sc_lv 32 signal 95 } 
	{ p_ZZ9cnn_accelE8w1_local_66 sc_in sc_lv 32 signal 96 } 
	{ p_ZZ9cnn_accelE8w1_local_93 sc_in sc_lv 32 signal 97 } 
	{ p_ZZ9cnn_accelE8w1_local_120 sc_in sc_lv 32 signal 98 } 
	{ p_ZZ9cnn_accelE8w1_local_147 sc_in sc_lv 32 signal 99 } 
	{ p_ZZ9cnn_accelE8w1_local_174 sc_in sc_lv 32 signal 100 } 
	{ p_ZZ9cnn_accelE8w1_local_201 sc_in sc_lv 32 signal 101 } 
	{ p_ZZ9cnn_accelE8w1_local_21 sc_in sc_lv 32 signal 102 } 
	{ p_ZZ9cnn_accelE8w1_local_48 sc_in sc_lv 32 signal 103 } 
	{ p_ZZ9cnn_accelE8w1_local_75 sc_in sc_lv 32 signal 104 } 
	{ p_ZZ9cnn_accelE8w1_local_102 sc_in sc_lv 32 signal 105 } 
	{ p_ZZ9cnn_accelE8w1_local_129 sc_in sc_lv 32 signal 106 } 
	{ p_ZZ9cnn_accelE8w1_local_156 sc_in sc_lv 32 signal 107 } 
	{ p_ZZ9cnn_accelE8w1_local_183 sc_in sc_lv 32 signal 108 } 
	{ p_ZZ9cnn_accelE8w1_local_210 sc_in sc_lv 32 signal 109 } 
	{ w1_local_4 sc_in sc_lv 32 signal 110 } 
	{ p_ZZ9cnn_accelE8w1_local_31 sc_in sc_lv 32 signal 111 } 
	{ p_ZZ9cnn_accelE8w1_local_58 sc_in sc_lv 32 signal 112 } 
	{ p_ZZ9cnn_accelE8w1_local_85 sc_in sc_lv 32 signal 113 } 
	{ p_ZZ9cnn_accelE8w1_local_112 sc_in sc_lv 32 signal 114 } 
	{ p_ZZ9cnn_accelE8w1_local_139 sc_in sc_lv 32 signal 115 } 
	{ p_ZZ9cnn_accelE8w1_local_166 sc_in sc_lv 32 signal 116 } 
	{ p_ZZ9cnn_accelE8w1_local_193 sc_in sc_lv 32 signal 117 } 
	{ p_ZZ9cnn_accelE8w1_local_13 sc_in sc_lv 32 signal 118 } 
	{ p_ZZ9cnn_accelE8w1_local_40 sc_in sc_lv 32 signal 119 } 
	{ p_ZZ9cnn_accelE8w1_local_67 sc_in sc_lv 32 signal 120 } 
	{ p_ZZ9cnn_accelE8w1_local_94 sc_in sc_lv 32 signal 121 } 
	{ p_ZZ9cnn_accelE8w1_local_121 sc_in sc_lv 32 signal 122 } 
	{ p_ZZ9cnn_accelE8w1_local_148 sc_in sc_lv 32 signal 123 } 
	{ p_ZZ9cnn_accelE8w1_local_175 sc_in sc_lv 32 signal 124 } 
	{ p_ZZ9cnn_accelE8w1_local_202 sc_in sc_lv 32 signal 125 } 
	{ p_ZZ9cnn_accelE8w1_local_22 sc_in sc_lv 32 signal 126 } 
	{ p_ZZ9cnn_accelE8w1_local_49 sc_in sc_lv 32 signal 127 } 
	{ p_ZZ9cnn_accelE8w1_local_76 sc_in sc_lv 32 signal 128 } 
	{ p_ZZ9cnn_accelE8w1_local_103 sc_in sc_lv 32 signal 129 } 
	{ p_ZZ9cnn_accelE8w1_local_130 sc_in sc_lv 32 signal 130 } 
	{ p_ZZ9cnn_accelE8w1_local_157 sc_in sc_lv 32 signal 131 } 
	{ p_ZZ9cnn_accelE8w1_local_184 sc_in sc_lv 32 signal 132 } 
	{ p_ZZ9cnn_accelE8w1_local_211 sc_in sc_lv 32 signal 133 } 
	{ w1_local_5 sc_in sc_lv 32 signal 134 } 
	{ p_ZZ9cnn_accelE8w1_local_32 sc_in sc_lv 32 signal 135 } 
	{ p_ZZ9cnn_accelE8w1_local_59 sc_in sc_lv 32 signal 136 } 
	{ p_ZZ9cnn_accelE8w1_local_86 sc_in sc_lv 32 signal 137 } 
	{ p_ZZ9cnn_accelE8w1_local_113 sc_in sc_lv 32 signal 138 } 
	{ p_ZZ9cnn_accelE8w1_local_140 sc_in sc_lv 32 signal 139 } 
	{ p_ZZ9cnn_accelE8w1_local_167 sc_in sc_lv 32 signal 140 } 
	{ p_ZZ9cnn_accelE8w1_local_194 sc_in sc_lv 32 signal 141 } 
	{ p_ZZ9cnn_accelE8w1_local_14 sc_in sc_lv 32 signal 142 } 
	{ p_ZZ9cnn_accelE8w1_local_41 sc_in sc_lv 32 signal 143 } 
	{ p_ZZ9cnn_accelE8w1_local_68 sc_in sc_lv 32 signal 144 } 
	{ p_ZZ9cnn_accelE8w1_local_95 sc_in sc_lv 32 signal 145 } 
	{ p_ZZ9cnn_accelE8w1_local_122 sc_in sc_lv 32 signal 146 } 
	{ p_ZZ9cnn_accelE8w1_local_149 sc_in sc_lv 32 signal 147 } 
	{ p_ZZ9cnn_accelE8w1_local_176 sc_in sc_lv 32 signal 148 } 
	{ p_ZZ9cnn_accelE8w1_local_203 sc_in sc_lv 32 signal 149 } 
	{ p_ZZ9cnn_accelE8w1_local_23 sc_in sc_lv 32 signal 150 } 
	{ p_ZZ9cnn_accelE8w1_local_50 sc_in sc_lv 32 signal 151 } 
	{ p_ZZ9cnn_accelE8w1_local_77 sc_in sc_lv 32 signal 152 } 
	{ p_ZZ9cnn_accelE8w1_local_104 sc_in sc_lv 32 signal 153 } 
	{ p_ZZ9cnn_accelE8w1_local_131 sc_in sc_lv 32 signal 154 } 
	{ p_ZZ9cnn_accelE8w1_local_158 sc_in sc_lv 32 signal 155 } 
	{ p_ZZ9cnn_accelE8w1_local_185 sc_in sc_lv 32 signal 156 } 
	{ p_ZZ9cnn_accelE8w1_local_212 sc_in sc_lv 32 signal 157 } 
	{ w1_local_6 sc_in sc_lv 32 signal 158 } 
	{ p_ZZ9cnn_accelE8w1_local_33 sc_in sc_lv 32 signal 159 } 
	{ p_ZZ9cnn_accelE8w1_local_60 sc_in sc_lv 32 signal 160 } 
	{ p_ZZ9cnn_accelE8w1_local_87 sc_in sc_lv 32 signal 161 } 
	{ p_ZZ9cnn_accelE8w1_local_114 sc_in sc_lv 32 signal 162 } 
	{ p_ZZ9cnn_accelE8w1_local_141 sc_in sc_lv 32 signal 163 } 
	{ p_ZZ9cnn_accelE8w1_local_168 sc_in sc_lv 32 signal 164 } 
	{ p_ZZ9cnn_accelE8w1_local_195 sc_in sc_lv 32 signal 165 } 
	{ p_ZZ9cnn_accelE8w1_local_15 sc_in sc_lv 32 signal 166 } 
	{ p_ZZ9cnn_accelE8w1_local_42 sc_in sc_lv 32 signal 167 } 
	{ p_ZZ9cnn_accelE8w1_local_69 sc_in sc_lv 32 signal 168 } 
	{ p_ZZ9cnn_accelE8w1_local_96 sc_in sc_lv 32 signal 169 } 
	{ p_ZZ9cnn_accelE8w1_local_123 sc_in sc_lv 32 signal 170 } 
	{ p_ZZ9cnn_accelE8w1_local_150 sc_in sc_lv 32 signal 171 } 
	{ p_ZZ9cnn_accelE8w1_local_177 sc_in sc_lv 32 signal 172 } 
	{ p_ZZ9cnn_accelE8w1_local_204 sc_in sc_lv 32 signal 173 } 
	{ p_ZZ9cnn_accelE8w1_local_24 sc_in sc_lv 32 signal 174 } 
	{ p_ZZ9cnn_accelE8w1_local_51 sc_in sc_lv 32 signal 175 } 
	{ p_ZZ9cnn_accelE8w1_local_78 sc_in sc_lv 32 signal 176 } 
	{ p_ZZ9cnn_accelE8w1_local_105 sc_in sc_lv 32 signal 177 } 
	{ p_ZZ9cnn_accelE8w1_local_132 sc_in sc_lv 32 signal 178 } 
	{ p_ZZ9cnn_accelE8w1_local_159 sc_in sc_lv 32 signal 179 } 
	{ p_ZZ9cnn_accelE8w1_local_186 sc_in sc_lv 32 signal 180 } 
	{ p_ZZ9cnn_accelE8w1_local_213 sc_in sc_lv 32 signal 181 } 
	{ w1_local_7 sc_in sc_lv 32 signal 182 } 
	{ p_ZZ9cnn_accelE8w1_local_34 sc_in sc_lv 32 signal 183 } 
	{ p_ZZ9cnn_accelE8w1_local_61 sc_in sc_lv 32 signal 184 } 
	{ p_ZZ9cnn_accelE8w1_local_88 sc_in sc_lv 32 signal 185 } 
	{ p_ZZ9cnn_accelE8w1_local_115 sc_in sc_lv 32 signal 186 } 
	{ p_ZZ9cnn_accelE8w1_local_142 sc_in sc_lv 32 signal 187 } 
	{ p_ZZ9cnn_accelE8w1_local_169 sc_in sc_lv 32 signal 188 } 
	{ p_ZZ9cnn_accelE8w1_local_196 sc_in sc_lv 32 signal 189 } 
	{ p_ZZ9cnn_accelE8w1_local_16 sc_in sc_lv 32 signal 190 } 
	{ p_ZZ9cnn_accelE8w1_local_43 sc_in sc_lv 32 signal 191 } 
	{ p_ZZ9cnn_accelE8w1_local_70 sc_in sc_lv 32 signal 192 } 
	{ p_ZZ9cnn_accelE8w1_local_97 sc_in sc_lv 32 signal 193 } 
	{ p_ZZ9cnn_accelE8w1_local_124 sc_in sc_lv 32 signal 194 } 
	{ p_ZZ9cnn_accelE8w1_local_151 sc_in sc_lv 32 signal 195 } 
	{ p_ZZ9cnn_accelE8w1_local_178 sc_in sc_lv 32 signal 196 } 
	{ p_ZZ9cnn_accelE8w1_local_205 sc_in sc_lv 32 signal 197 } 
	{ p_ZZ9cnn_accelE8w1_local_25 sc_in sc_lv 32 signal 198 } 
	{ p_ZZ9cnn_accelE8w1_local_52 sc_in sc_lv 32 signal 199 } 
	{ p_ZZ9cnn_accelE8w1_local_79 sc_in sc_lv 32 signal 200 } 
	{ p_ZZ9cnn_accelE8w1_local_106 sc_in sc_lv 32 signal 201 } 
	{ p_ZZ9cnn_accelE8w1_local_133 sc_in sc_lv 32 signal 202 } 
	{ p_ZZ9cnn_accelE8w1_local_160 sc_in sc_lv 32 signal 203 } 
	{ p_ZZ9cnn_accelE8w1_local_187 sc_in sc_lv 32 signal 204 } 
	{ p_ZZ9cnn_accelE8w1_local_214 sc_in sc_lv 32 signal 205 } 
	{ w1_local_8 sc_in sc_lv 32 signal 206 } 
	{ p_ZZ9cnn_accelE8w1_local_35 sc_in sc_lv 32 signal 207 } 
	{ p_ZZ9cnn_accelE8w1_local_62 sc_in sc_lv 32 signal 208 } 
	{ p_ZZ9cnn_accelE8w1_local_89 sc_in sc_lv 32 signal 209 } 
	{ p_ZZ9cnn_accelE8w1_local_116 sc_in sc_lv 32 signal 210 } 
	{ p_ZZ9cnn_accelE8w1_local_143 sc_in sc_lv 32 signal 211 } 
	{ p_ZZ9cnn_accelE8w1_local_170 sc_in sc_lv 32 signal 212 } 
	{ p_ZZ9cnn_accelE8w1_local_197 sc_in sc_lv 32 signal 213 } 
	{ p_ZZ9cnn_accelE8w1_local_17 sc_in sc_lv 32 signal 214 } 
	{ p_ZZ9cnn_accelE8w1_local_44 sc_in sc_lv 32 signal 215 } 
	{ p_ZZ9cnn_accelE8w1_local_71 sc_in sc_lv 32 signal 216 } 
	{ p_ZZ9cnn_accelE8w1_local_98 sc_in sc_lv 32 signal 217 } 
	{ p_ZZ9cnn_accelE8w1_local_125 sc_in sc_lv 32 signal 218 } 
	{ p_ZZ9cnn_accelE8w1_local_152 sc_in sc_lv 32 signal 219 } 
	{ p_ZZ9cnn_accelE8w1_local_179 sc_in sc_lv 32 signal 220 } 
	{ p_ZZ9cnn_accelE8w1_local_206 sc_in sc_lv 32 signal 221 } 
	{ p_ZZ9cnn_accelE8w1_local_26 sc_in sc_lv 32 signal 222 } 
	{ p_ZZ9cnn_accelE8w1_local_53 sc_in sc_lv 32 signal 223 } 
	{ p_ZZ9cnn_accelE8w1_local_80 sc_in sc_lv 32 signal 224 } 
	{ p_ZZ9cnn_accelE8w1_local_107 sc_in sc_lv 32 signal 225 } 
	{ p_ZZ9cnn_accelE8w1_local_134 sc_in sc_lv 32 signal 226 } 
	{ p_ZZ9cnn_accelE8w1_local_161 sc_in sc_lv 32 signal 227 } 
	{ p_ZZ9cnn_accelE8w1_local_188 sc_in sc_lv 32 signal 228 } 
	{ p_ZZ9cnn_accelE8w1_local_215 sc_in sc_lv 32 signal 229 } 
	{ grp_fu_9558_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9558_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9558_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_9558_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_9558_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_9562_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9562_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9562_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_9562_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_9562_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_9566_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9566_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9566_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_9566_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_9566_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_9570_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9570_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9570_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_9570_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_9574_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9574_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9574_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_9574_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_9578_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9578_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9578_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_9578_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_9582_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9582_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9582_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_9582_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_9582_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "feat1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "feat1", "role": "address0" }} , 
 	{ "name": "feat1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1", "role": "ce0" }} , 
 	{ "name": "feat1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1", "role": "we0" }} , 
 	{ "name": "feat1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1", "role": "d0" }} , 
 	{ "name": "feat1_61_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "feat1_61", "role": "address0" }} , 
 	{ "name": "feat1_61_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_61", "role": "ce0" }} , 
 	{ "name": "feat1_61_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_61", "role": "we0" }} , 
 	{ "name": "feat1_61_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_61", "role": "d0" }} , 
 	{ "name": "feat1_62_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "feat1_62", "role": "address0" }} , 
 	{ "name": "feat1_62_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_62", "role": "ce0" }} , 
 	{ "name": "feat1_62_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_62", "role": "we0" }} , 
 	{ "name": "feat1_62_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_62", "role": "d0" }} , 
 	{ "name": "feat1_63_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "feat1_63", "role": "address0" }} , 
 	{ "name": "feat1_63_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_63", "role": "ce0" }} , 
 	{ "name": "feat1_63_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_63", "role": "we0" }} , 
 	{ "name": "feat1_63_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_63", "role": "d0" }} , 
 	{ "name": "local_img_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "local_img", "role": "address0" }} , 
 	{ "name": "local_img_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_img", "role": "ce0" }} , 
 	{ "name": "local_img_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img", "role": "q0" }} , 
 	{ "name": "local_img_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "local_img", "role": "address1" }} , 
 	{ "name": "local_img_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_img", "role": "ce1" }} , 
 	{ "name": "local_img_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img", "role": "q1" }} , 
 	{ "name": "local_img_60_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "local_img_60", "role": "address0" }} , 
 	{ "name": "local_img_60_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_img_60", "role": "ce0" }} , 
 	{ "name": "local_img_60_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_60", "role": "q0" }} , 
 	{ "name": "local_img_60_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "local_img_60", "role": "address1" }} , 
 	{ "name": "local_img_60_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_img_60", "role": "ce1" }} , 
 	{ "name": "local_img_60_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_60", "role": "q1" }} , 
 	{ "name": "b1_local", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b1_local", "role": "default" }} , 
 	{ "name": "b1_local_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b1_local_10", "role": "default" }} , 
 	{ "name": "b1_local_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b1_local_11", "role": "default" }} , 
 	{ "name": "b1_local_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b1_local_12", "role": "default" }} , 
 	{ "name": "b1_local_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b1_local_13", "role": "default" }} , 
 	{ "name": "b1_local_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b1_local_14", "role": "default" }} , 
 	{ "name": "b1_local_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b1_local_15", "role": "default" }} , 
 	{ "name": "b1_local_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b1_local_16", "role": "default" }} , 
 	{ "name": "w1_local", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w1_local", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_27", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_54", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_54", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_81", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_81", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_108", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_108", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_135", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_135", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_162", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_162", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_189", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_189", "role": "default" }} , 
 	{ "name": "w1_local_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w1_local_9", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_36", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_36", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_63", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_63", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_90", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_90", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_117", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_117", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_144", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_144", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_171", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_171", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_198", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_198", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_18", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_45", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_45", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_72", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_72", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_99", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_99", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_126", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_126", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_153", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_153", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_180", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_180", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_207", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_207", "role": "default" }} , 
 	{ "name": "w1_local_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w1_local_1", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_28", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_55", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_55", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_82", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_82", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_109", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_109", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_136", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_136", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_163", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_163", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_190", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_190", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_10", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_37", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_37", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_64", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_64", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_91", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_91", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_118", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_118", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_145", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_145", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_172", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_172", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_199", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_199", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_19", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_46", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_46", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_73", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_73", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_100", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_100", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_127", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_127", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_154", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_154", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_181", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_181", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_208", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_208", "role": "default" }} , 
 	{ "name": "w1_local_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w1_local_2", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_29", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_56", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_56", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_83", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_83", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_110", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_110", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_137", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_137", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_164", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_164", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_191", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_191", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_11", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_38", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_38", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_65", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_65", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_92", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_92", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_119", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_119", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_146", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_146", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_173", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_173", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_200", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_200", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_20", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_47", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_47", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_74", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_74", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_101", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_101", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_128", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_128", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_155", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_155", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_182", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_182", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_209", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_209", "role": "default" }} , 
 	{ "name": "w1_local_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w1_local_3", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_30", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_57", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_57", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_84", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_84", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_111", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_111", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_138", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_138", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_165", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_165", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_192", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_192", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_12", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_39", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_39", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_66", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_93", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_93", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_120", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_120", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_147", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_147", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_174", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_174", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_201", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_201", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_21", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_48", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_48", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_75", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_75", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_102", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_102", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_129", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_129", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_156", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_156", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_183", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_183", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_210", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_210", "role": "default" }} , 
 	{ "name": "w1_local_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w1_local_4", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_31", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_58", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_58", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_85", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_85", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_112", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_112", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_139", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_139", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_166", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_166", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_193", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_193", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_13", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_40", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_40", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_67", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_67", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_94", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_94", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_121", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_121", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_148", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_148", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_175", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_175", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_202", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_202", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_22", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_49", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_49", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_76", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_76", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_103", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_103", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_130", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_130", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_157", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_157", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_184", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_184", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_211", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_211", "role": "default" }} , 
 	{ "name": "w1_local_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w1_local_5", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_32", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_32", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_59", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_59", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_86", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_86", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_113", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_113", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_140", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_140", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_167", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_167", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_194", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_194", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_14", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_41", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_41", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_68", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_68", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_95", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_95", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_122", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_122", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_149", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_149", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_176", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_176", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_203", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_203", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_23", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_50", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_50", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_77", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_77", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_104", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_104", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_131", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_131", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_158", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_158", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_185", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_185", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_212", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_212", "role": "default" }} , 
 	{ "name": "w1_local_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w1_local_6", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_33", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_33", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_60", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_60", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_87", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_87", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_114", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_114", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_141", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_141", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_168", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_168", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_195", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_195", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_15", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_42", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_42", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_69", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_69", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_96", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_96", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_123", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_123", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_150", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_150", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_177", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_177", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_204", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_204", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_24", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_51", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_51", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_78", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_78", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_105", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_105", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_132", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_132", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_159", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_159", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_186", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_186", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_213", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_213", "role": "default" }} , 
 	{ "name": "w1_local_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w1_local_7", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_34", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_34", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_61", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_61", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_88", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_88", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_115", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_115", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_142", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_142", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_169", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_169", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_196", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_196", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_16", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_43", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_43", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_70", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_70", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_97", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_97", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_124", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_124", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_151", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_151", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_178", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_178", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_205", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_205", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_25", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_52", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_52", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_79", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_79", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_106", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_106", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_133", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_133", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_160", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_160", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_187", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_187", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_214", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_214", "role": "default" }} , 
 	{ "name": "w1_local_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w1_local_8", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_35", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_35", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_62", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_62", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_89", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_89", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_116", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_116", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_143", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_143", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_170", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_170", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_197", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_197", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_17", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_44", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_44", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_71", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_71", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_98", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_98", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_125", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_125", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_152", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_152", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_179", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_179", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_206", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_206", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_26", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_53", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_53", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_80", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_80", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_107", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_107", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_134", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_134", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_161", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_161", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_188", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_188", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8w1_local_215", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8w1_local_215", "role": "default" }} , 
 	{ "name": "grp_fu_9558_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9558_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9558_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9558_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9558_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9558_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_9558_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9558_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9558_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9558_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_9562_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9562_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9562_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9562_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9562_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9562_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_9562_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9562_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9562_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9562_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_9566_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9566_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9566_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9566_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9566_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_9566_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_9566_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9566_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9566_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9566_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_9570_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9570_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9570_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9570_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9570_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9570_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9570_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9570_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_9574_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9574_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9574_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9574_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9574_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9574_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9574_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9574_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_9578_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9578_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9578_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9578_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9578_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9578_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9578_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9578_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_9582_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9582_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9582_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9582_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9582_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_9582_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_9582_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9582_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9582_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9582_p_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	conv1 {
		feat1 {Type O LastRead -1 FirstWrite 145}
		feat1_61 {Type O LastRead -1 FirstWrite 145}
		feat1_62 {Type O LastRead -1 FirstWrite 145}
		feat1_63 {Type O LastRead -1 FirstWrite 145}
		local_img {Type I LastRead 11 FirstWrite -1}
		local_img_60 {Type I LastRead 7 FirstWrite -1}
		b1_local {Type I LastRead 0 FirstWrite -1}
		b1_local_10 {Type I LastRead 0 FirstWrite -1}
		b1_local_11 {Type I LastRead 0 FirstWrite -1}
		b1_local_12 {Type I LastRead 0 FirstWrite -1}
		b1_local_13 {Type I LastRead 0 FirstWrite -1}
		b1_local_14 {Type I LastRead 0 FirstWrite -1}
		b1_local_15 {Type I LastRead 0 FirstWrite -1}
		b1_local_16 {Type I LastRead 0 FirstWrite -1}
		w1_local {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_27 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_54 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_81 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_108 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_135 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_162 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_189 {Type I LastRead 0 FirstWrite -1}
		w1_local_9 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_36 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_63 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_90 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_117 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_144 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_171 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_198 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_18 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_45 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_72 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_99 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_126 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_153 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_180 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_207 {Type I LastRead 0 FirstWrite -1}
		w1_local_1 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_28 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_55 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_82 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_109 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_136 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_163 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_190 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_10 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_37 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_64 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_91 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_118 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_145 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_172 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_199 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_19 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_46 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_73 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_100 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_127 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_154 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_181 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_208 {Type I LastRead 0 FirstWrite -1}
		w1_local_2 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_29 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_56 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_83 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_110 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_137 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_164 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_191 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_11 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_38 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_65 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_92 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_119 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_146 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_173 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_200 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_20 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_47 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_74 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_101 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_128 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_155 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_182 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_209 {Type I LastRead 0 FirstWrite -1}
		w1_local_3 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_30 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_57 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_84 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_111 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_138 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_165 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_192 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_12 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_39 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_66 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_93 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_120 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_147 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_174 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_201 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_21 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_48 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_75 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_102 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_129 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_156 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_183 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_210 {Type I LastRead 0 FirstWrite -1}
		w1_local_4 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_31 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_58 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_85 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_112 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_139 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_166 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_193 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_13 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_40 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_67 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_94 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_121 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_148 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_175 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_202 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_22 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_49 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_76 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_103 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_130 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_157 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_184 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_211 {Type I LastRead 0 FirstWrite -1}
		w1_local_5 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_32 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_59 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_86 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_113 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_140 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_167 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_194 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_14 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_41 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_68 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_95 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_122 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_149 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_176 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_203 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_23 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_50 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_77 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_104 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_131 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_158 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_185 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_212 {Type I LastRead 0 FirstWrite -1}
		w1_local_6 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_33 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_60 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_87 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_114 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_141 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_168 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_195 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_15 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_42 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_69 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_96 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_123 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_150 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_177 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_204 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_24 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_51 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_78 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_105 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_132 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_159 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_186 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_213 {Type I LastRead 0 FirstWrite -1}
		w1_local_7 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_34 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_61 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_88 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_115 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_142 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_169 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_196 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_16 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_43 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_70 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_97 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_124 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_151 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_178 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_205 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_25 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_52 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_79 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_106 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_133 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_160 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_187 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_214 {Type I LastRead 0 FirstWrite -1}
		w1_local_8 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_35 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_62 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_89 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_116 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_143 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_170 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_197 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_17 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_44 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_71 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_98 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_125 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_152 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_179 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_206 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_26 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_53 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_80 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_107 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_134 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_161 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_188 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8w1_local_215 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5449385", "Max" : "5449385"}
	, {"Name" : "Interval", "Min" : "5449385", "Max" : "5449385"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	feat1 { ap_memory {  { feat1_address0 mem_address 1 18 }  { feat1_ce0 mem_ce 1 1 }  { feat1_we0 mem_we 1 1 }  { feat1_d0 mem_din 1 32 } } }
	feat1_61 { ap_memory {  { feat1_61_address0 mem_address 1 18 }  { feat1_61_ce0 mem_ce 1 1 }  { feat1_61_we0 mem_we 1 1 }  { feat1_61_d0 mem_din 1 32 } } }
	feat1_62 { ap_memory {  { feat1_62_address0 mem_address 1 18 }  { feat1_62_ce0 mem_ce 1 1 }  { feat1_62_we0 mem_we 1 1 }  { feat1_62_d0 mem_din 1 32 } } }
	feat1_63 { ap_memory {  { feat1_63_address0 mem_address 1 18 }  { feat1_63_ce0 mem_ce 1 1 }  { feat1_63_we0 mem_we 1 1 }  { feat1_63_d0 mem_din 1 32 } } }
	local_img { ap_memory {  { local_img_address0 mem_address 1 18 }  { local_img_ce0 mem_ce 1 1 }  { local_img_q0 mem_dout 0 32 }  { local_img_address1 MemPortADDR2 1 18 }  { local_img_ce1 MemPortCE2 1 1 }  { local_img_q1 MemPortDOUT2 0 32 } } }
	local_img_60 { ap_memory {  { local_img_60_address0 mem_address 1 18 }  { local_img_60_ce0 mem_ce 1 1 }  { local_img_60_q0 mem_dout 0 32 }  { local_img_60_address1 MemPortADDR2 1 18 }  { local_img_60_ce1 MemPortCE2 1 1 }  { local_img_60_q1 MemPortDOUT2 0 32 } } }
	b1_local { ap_none {  { b1_local in_data 0 32 } } }
	b1_local_10 { ap_none {  { b1_local_10 in_data 0 32 } } }
	b1_local_11 { ap_none {  { b1_local_11 in_data 0 32 } } }
	b1_local_12 { ap_none {  { b1_local_12 in_data 0 32 } } }
	b1_local_13 { ap_none {  { b1_local_13 in_data 0 32 } } }
	b1_local_14 { ap_none {  { b1_local_14 in_data 0 32 } } }
	b1_local_15 { ap_none {  { b1_local_15 in_data 0 32 } } }
	b1_local_16 { ap_none {  { b1_local_16 in_data 0 32 } } }
	w1_local { ap_none {  { w1_local in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_27 { ap_none {  { p_ZZ9cnn_accelE8w1_local_27 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_54 { ap_none {  { p_ZZ9cnn_accelE8w1_local_54 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_81 { ap_none {  { p_ZZ9cnn_accelE8w1_local_81 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_108 { ap_none {  { p_ZZ9cnn_accelE8w1_local_108 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_135 { ap_none {  { p_ZZ9cnn_accelE8w1_local_135 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_162 { ap_none {  { p_ZZ9cnn_accelE8w1_local_162 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_189 { ap_none {  { p_ZZ9cnn_accelE8w1_local_189 in_data 0 32 } } }
	w1_local_9 { ap_none {  { w1_local_9 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_36 { ap_none {  { p_ZZ9cnn_accelE8w1_local_36 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_63 { ap_none {  { p_ZZ9cnn_accelE8w1_local_63 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_90 { ap_none {  { p_ZZ9cnn_accelE8w1_local_90 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_117 { ap_none {  { p_ZZ9cnn_accelE8w1_local_117 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_144 { ap_none {  { p_ZZ9cnn_accelE8w1_local_144 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_171 { ap_none {  { p_ZZ9cnn_accelE8w1_local_171 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_198 { ap_none {  { p_ZZ9cnn_accelE8w1_local_198 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_18 { ap_none {  { p_ZZ9cnn_accelE8w1_local_18 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_45 { ap_none {  { p_ZZ9cnn_accelE8w1_local_45 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_72 { ap_none {  { p_ZZ9cnn_accelE8w1_local_72 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_99 { ap_none {  { p_ZZ9cnn_accelE8w1_local_99 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_126 { ap_none {  { p_ZZ9cnn_accelE8w1_local_126 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_153 { ap_none {  { p_ZZ9cnn_accelE8w1_local_153 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_180 { ap_none {  { p_ZZ9cnn_accelE8w1_local_180 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_207 { ap_none {  { p_ZZ9cnn_accelE8w1_local_207 in_data 0 32 } } }
	w1_local_1 { ap_none {  { w1_local_1 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_28 { ap_none {  { p_ZZ9cnn_accelE8w1_local_28 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_55 { ap_none {  { p_ZZ9cnn_accelE8w1_local_55 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_82 { ap_none {  { p_ZZ9cnn_accelE8w1_local_82 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_109 { ap_none {  { p_ZZ9cnn_accelE8w1_local_109 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_136 { ap_none {  { p_ZZ9cnn_accelE8w1_local_136 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_163 { ap_none {  { p_ZZ9cnn_accelE8w1_local_163 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_190 { ap_none {  { p_ZZ9cnn_accelE8w1_local_190 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_10 { ap_none {  { p_ZZ9cnn_accelE8w1_local_10 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_37 { ap_none {  { p_ZZ9cnn_accelE8w1_local_37 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_64 { ap_none {  { p_ZZ9cnn_accelE8w1_local_64 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_91 { ap_none {  { p_ZZ9cnn_accelE8w1_local_91 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_118 { ap_none {  { p_ZZ9cnn_accelE8w1_local_118 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_145 { ap_none {  { p_ZZ9cnn_accelE8w1_local_145 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_172 { ap_none {  { p_ZZ9cnn_accelE8w1_local_172 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_199 { ap_none {  { p_ZZ9cnn_accelE8w1_local_199 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_19 { ap_none {  { p_ZZ9cnn_accelE8w1_local_19 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_46 { ap_none {  { p_ZZ9cnn_accelE8w1_local_46 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_73 { ap_none {  { p_ZZ9cnn_accelE8w1_local_73 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_100 { ap_none {  { p_ZZ9cnn_accelE8w1_local_100 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_127 { ap_none {  { p_ZZ9cnn_accelE8w1_local_127 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_154 { ap_none {  { p_ZZ9cnn_accelE8w1_local_154 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_181 { ap_none {  { p_ZZ9cnn_accelE8w1_local_181 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_208 { ap_none {  { p_ZZ9cnn_accelE8w1_local_208 in_data 0 32 } } }
	w1_local_2 { ap_none {  { w1_local_2 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_29 { ap_none {  { p_ZZ9cnn_accelE8w1_local_29 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_56 { ap_none {  { p_ZZ9cnn_accelE8w1_local_56 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_83 { ap_none {  { p_ZZ9cnn_accelE8w1_local_83 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_110 { ap_none {  { p_ZZ9cnn_accelE8w1_local_110 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_137 { ap_none {  { p_ZZ9cnn_accelE8w1_local_137 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_164 { ap_none {  { p_ZZ9cnn_accelE8w1_local_164 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_191 { ap_none {  { p_ZZ9cnn_accelE8w1_local_191 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_11 { ap_none {  { p_ZZ9cnn_accelE8w1_local_11 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_38 { ap_none {  { p_ZZ9cnn_accelE8w1_local_38 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_65 { ap_none {  { p_ZZ9cnn_accelE8w1_local_65 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_92 { ap_none {  { p_ZZ9cnn_accelE8w1_local_92 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_119 { ap_none {  { p_ZZ9cnn_accelE8w1_local_119 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_146 { ap_none {  { p_ZZ9cnn_accelE8w1_local_146 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_173 { ap_none {  { p_ZZ9cnn_accelE8w1_local_173 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_200 { ap_none {  { p_ZZ9cnn_accelE8w1_local_200 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_20 { ap_none {  { p_ZZ9cnn_accelE8w1_local_20 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_47 { ap_none {  { p_ZZ9cnn_accelE8w1_local_47 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_74 { ap_none {  { p_ZZ9cnn_accelE8w1_local_74 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_101 { ap_none {  { p_ZZ9cnn_accelE8w1_local_101 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_128 { ap_none {  { p_ZZ9cnn_accelE8w1_local_128 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_155 { ap_none {  { p_ZZ9cnn_accelE8w1_local_155 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_182 { ap_none {  { p_ZZ9cnn_accelE8w1_local_182 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_209 { ap_none {  { p_ZZ9cnn_accelE8w1_local_209 in_data 0 32 } } }
	w1_local_3 { ap_none {  { w1_local_3 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_30 { ap_none {  { p_ZZ9cnn_accelE8w1_local_30 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_57 { ap_none {  { p_ZZ9cnn_accelE8w1_local_57 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_84 { ap_none {  { p_ZZ9cnn_accelE8w1_local_84 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_111 { ap_none {  { p_ZZ9cnn_accelE8w1_local_111 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_138 { ap_none {  { p_ZZ9cnn_accelE8w1_local_138 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_165 { ap_none {  { p_ZZ9cnn_accelE8w1_local_165 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_192 { ap_none {  { p_ZZ9cnn_accelE8w1_local_192 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_12 { ap_none {  { p_ZZ9cnn_accelE8w1_local_12 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_39 { ap_none {  { p_ZZ9cnn_accelE8w1_local_39 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_66 { ap_none {  { p_ZZ9cnn_accelE8w1_local_66 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_93 { ap_none {  { p_ZZ9cnn_accelE8w1_local_93 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_120 { ap_none {  { p_ZZ9cnn_accelE8w1_local_120 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_147 { ap_none {  { p_ZZ9cnn_accelE8w1_local_147 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_174 { ap_none {  { p_ZZ9cnn_accelE8w1_local_174 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_201 { ap_none {  { p_ZZ9cnn_accelE8w1_local_201 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_21 { ap_none {  { p_ZZ9cnn_accelE8w1_local_21 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_48 { ap_none {  { p_ZZ9cnn_accelE8w1_local_48 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_75 { ap_none {  { p_ZZ9cnn_accelE8w1_local_75 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_102 { ap_none {  { p_ZZ9cnn_accelE8w1_local_102 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_129 { ap_none {  { p_ZZ9cnn_accelE8w1_local_129 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_156 { ap_none {  { p_ZZ9cnn_accelE8w1_local_156 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_183 { ap_none {  { p_ZZ9cnn_accelE8w1_local_183 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_210 { ap_none {  { p_ZZ9cnn_accelE8w1_local_210 in_data 0 32 } } }
	w1_local_4 { ap_none {  { w1_local_4 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_31 { ap_none {  { p_ZZ9cnn_accelE8w1_local_31 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_58 { ap_none {  { p_ZZ9cnn_accelE8w1_local_58 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_85 { ap_none {  { p_ZZ9cnn_accelE8w1_local_85 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_112 { ap_none {  { p_ZZ9cnn_accelE8w1_local_112 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_139 { ap_none {  { p_ZZ9cnn_accelE8w1_local_139 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_166 { ap_none {  { p_ZZ9cnn_accelE8w1_local_166 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_193 { ap_none {  { p_ZZ9cnn_accelE8w1_local_193 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_13 { ap_none {  { p_ZZ9cnn_accelE8w1_local_13 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_40 { ap_none {  { p_ZZ9cnn_accelE8w1_local_40 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_67 { ap_none {  { p_ZZ9cnn_accelE8w1_local_67 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_94 { ap_none {  { p_ZZ9cnn_accelE8w1_local_94 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_121 { ap_none {  { p_ZZ9cnn_accelE8w1_local_121 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_148 { ap_none {  { p_ZZ9cnn_accelE8w1_local_148 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_175 { ap_none {  { p_ZZ9cnn_accelE8w1_local_175 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_202 { ap_none {  { p_ZZ9cnn_accelE8w1_local_202 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_22 { ap_none {  { p_ZZ9cnn_accelE8w1_local_22 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_49 { ap_none {  { p_ZZ9cnn_accelE8w1_local_49 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_76 { ap_none {  { p_ZZ9cnn_accelE8w1_local_76 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_103 { ap_none {  { p_ZZ9cnn_accelE8w1_local_103 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_130 { ap_none {  { p_ZZ9cnn_accelE8w1_local_130 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_157 { ap_none {  { p_ZZ9cnn_accelE8w1_local_157 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_184 { ap_none {  { p_ZZ9cnn_accelE8w1_local_184 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_211 { ap_none {  { p_ZZ9cnn_accelE8w1_local_211 in_data 0 32 } } }
	w1_local_5 { ap_none {  { w1_local_5 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_32 { ap_none {  { p_ZZ9cnn_accelE8w1_local_32 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_59 { ap_none {  { p_ZZ9cnn_accelE8w1_local_59 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_86 { ap_none {  { p_ZZ9cnn_accelE8w1_local_86 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_113 { ap_none {  { p_ZZ9cnn_accelE8w1_local_113 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_140 { ap_none {  { p_ZZ9cnn_accelE8w1_local_140 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_167 { ap_none {  { p_ZZ9cnn_accelE8w1_local_167 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_194 { ap_none {  { p_ZZ9cnn_accelE8w1_local_194 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_14 { ap_none {  { p_ZZ9cnn_accelE8w1_local_14 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_41 { ap_none {  { p_ZZ9cnn_accelE8w1_local_41 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_68 { ap_none {  { p_ZZ9cnn_accelE8w1_local_68 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_95 { ap_none {  { p_ZZ9cnn_accelE8w1_local_95 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_122 { ap_none {  { p_ZZ9cnn_accelE8w1_local_122 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_149 { ap_none {  { p_ZZ9cnn_accelE8w1_local_149 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_176 { ap_none {  { p_ZZ9cnn_accelE8w1_local_176 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_203 { ap_none {  { p_ZZ9cnn_accelE8w1_local_203 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_23 { ap_none {  { p_ZZ9cnn_accelE8w1_local_23 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_50 { ap_none {  { p_ZZ9cnn_accelE8w1_local_50 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_77 { ap_none {  { p_ZZ9cnn_accelE8w1_local_77 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_104 { ap_none {  { p_ZZ9cnn_accelE8w1_local_104 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_131 { ap_none {  { p_ZZ9cnn_accelE8w1_local_131 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_158 { ap_none {  { p_ZZ9cnn_accelE8w1_local_158 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_185 { ap_none {  { p_ZZ9cnn_accelE8w1_local_185 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_212 { ap_none {  { p_ZZ9cnn_accelE8w1_local_212 in_data 0 32 } } }
	w1_local_6 { ap_none {  { w1_local_6 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_33 { ap_none {  { p_ZZ9cnn_accelE8w1_local_33 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_60 { ap_none {  { p_ZZ9cnn_accelE8w1_local_60 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_87 { ap_none {  { p_ZZ9cnn_accelE8w1_local_87 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_114 { ap_none {  { p_ZZ9cnn_accelE8w1_local_114 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_141 { ap_none {  { p_ZZ9cnn_accelE8w1_local_141 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_168 { ap_none {  { p_ZZ9cnn_accelE8w1_local_168 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_195 { ap_none {  { p_ZZ9cnn_accelE8w1_local_195 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_15 { ap_none {  { p_ZZ9cnn_accelE8w1_local_15 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_42 { ap_none {  { p_ZZ9cnn_accelE8w1_local_42 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_69 { ap_none {  { p_ZZ9cnn_accelE8w1_local_69 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_96 { ap_none {  { p_ZZ9cnn_accelE8w1_local_96 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_123 { ap_none {  { p_ZZ9cnn_accelE8w1_local_123 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_150 { ap_none {  { p_ZZ9cnn_accelE8w1_local_150 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_177 { ap_none {  { p_ZZ9cnn_accelE8w1_local_177 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_204 { ap_none {  { p_ZZ9cnn_accelE8w1_local_204 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_24 { ap_none {  { p_ZZ9cnn_accelE8w1_local_24 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_51 { ap_none {  { p_ZZ9cnn_accelE8w1_local_51 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_78 { ap_none {  { p_ZZ9cnn_accelE8w1_local_78 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_105 { ap_none {  { p_ZZ9cnn_accelE8w1_local_105 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_132 { ap_none {  { p_ZZ9cnn_accelE8w1_local_132 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_159 { ap_none {  { p_ZZ9cnn_accelE8w1_local_159 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_186 { ap_none {  { p_ZZ9cnn_accelE8w1_local_186 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_213 { ap_none {  { p_ZZ9cnn_accelE8w1_local_213 in_data 0 32 } } }
	w1_local_7 { ap_none {  { w1_local_7 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_34 { ap_none {  { p_ZZ9cnn_accelE8w1_local_34 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_61 { ap_none {  { p_ZZ9cnn_accelE8w1_local_61 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_88 { ap_none {  { p_ZZ9cnn_accelE8w1_local_88 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_115 { ap_none {  { p_ZZ9cnn_accelE8w1_local_115 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_142 { ap_none {  { p_ZZ9cnn_accelE8w1_local_142 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_169 { ap_none {  { p_ZZ9cnn_accelE8w1_local_169 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_196 { ap_none {  { p_ZZ9cnn_accelE8w1_local_196 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_16 { ap_none {  { p_ZZ9cnn_accelE8w1_local_16 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_43 { ap_none {  { p_ZZ9cnn_accelE8w1_local_43 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_70 { ap_none {  { p_ZZ9cnn_accelE8w1_local_70 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_97 { ap_none {  { p_ZZ9cnn_accelE8w1_local_97 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_124 { ap_none {  { p_ZZ9cnn_accelE8w1_local_124 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_151 { ap_none {  { p_ZZ9cnn_accelE8w1_local_151 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_178 { ap_none {  { p_ZZ9cnn_accelE8w1_local_178 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_205 { ap_none {  { p_ZZ9cnn_accelE8w1_local_205 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_25 { ap_none {  { p_ZZ9cnn_accelE8w1_local_25 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_52 { ap_none {  { p_ZZ9cnn_accelE8w1_local_52 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_79 { ap_none {  { p_ZZ9cnn_accelE8w1_local_79 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_106 { ap_none {  { p_ZZ9cnn_accelE8w1_local_106 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_133 { ap_none {  { p_ZZ9cnn_accelE8w1_local_133 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_160 { ap_none {  { p_ZZ9cnn_accelE8w1_local_160 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_187 { ap_none {  { p_ZZ9cnn_accelE8w1_local_187 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_214 { ap_none {  { p_ZZ9cnn_accelE8w1_local_214 in_data 0 32 } } }
	w1_local_8 { ap_none {  { w1_local_8 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_35 { ap_none {  { p_ZZ9cnn_accelE8w1_local_35 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_62 { ap_none {  { p_ZZ9cnn_accelE8w1_local_62 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_89 { ap_none {  { p_ZZ9cnn_accelE8w1_local_89 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_116 { ap_none {  { p_ZZ9cnn_accelE8w1_local_116 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_143 { ap_none {  { p_ZZ9cnn_accelE8w1_local_143 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_170 { ap_none {  { p_ZZ9cnn_accelE8w1_local_170 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_197 { ap_none {  { p_ZZ9cnn_accelE8w1_local_197 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_17 { ap_none {  { p_ZZ9cnn_accelE8w1_local_17 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_44 { ap_none {  { p_ZZ9cnn_accelE8w1_local_44 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_71 { ap_none {  { p_ZZ9cnn_accelE8w1_local_71 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_98 { ap_none {  { p_ZZ9cnn_accelE8w1_local_98 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_125 { ap_none {  { p_ZZ9cnn_accelE8w1_local_125 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_152 { ap_none {  { p_ZZ9cnn_accelE8w1_local_152 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_179 { ap_none {  { p_ZZ9cnn_accelE8w1_local_179 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_206 { ap_none {  { p_ZZ9cnn_accelE8w1_local_206 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_26 { ap_none {  { p_ZZ9cnn_accelE8w1_local_26 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_53 { ap_none {  { p_ZZ9cnn_accelE8w1_local_53 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_80 { ap_none {  { p_ZZ9cnn_accelE8w1_local_80 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_107 { ap_none {  { p_ZZ9cnn_accelE8w1_local_107 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_134 { ap_none {  { p_ZZ9cnn_accelE8w1_local_134 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_161 { ap_none {  { p_ZZ9cnn_accelE8w1_local_161 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_188 { ap_none {  { p_ZZ9cnn_accelE8w1_local_188 in_data 0 32 } } }
	p_ZZ9cnn_accelE8w1_local_215 { ap_none {  { p_ZZ9cnn_accelE8w1_local_215 in_data 0 32 } } }
}

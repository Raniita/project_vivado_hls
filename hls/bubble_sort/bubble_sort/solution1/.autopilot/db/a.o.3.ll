; ModuleID = 'D:/trabajo_DSE_EnrLuc/hls/bubble_sort/bubble_sort/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@bubble_sort_str = internal unnamed_addr constant [12 x i8] c"bubble_sort\00" ; [#uses=1 type=[12 x i8]*]
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00" ; [#uses=2 type=[7 x i8]*]
@p_str5 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str4 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str3 = private unnamed_addr constant [5 x i8] c"SORT\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=12 type=[1 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=3 type=[10 x i8]*]

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @bubble_sort([40 x i32]* %array, [40 x i32]* %array_out) nounwind uwtable {
.preheader.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %array) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %array_out) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bubble_sort_str) nounwind
  call void @llvm.dbg.value(metadata !{[40 x i32]* %array}, i64 0, metadata !10), !dbg !22 ; [debug line = 9:22] [debug variable = array]
  call void @llvm.dbg.value(metadata !{[40 x i32]* %array_out}, i64 0, metadata !23), !dbg !24 ; [debug line = 9:37] [debug variable = array_out]
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([40 x i32]* %array_out, [1 x i8]* @p_str5, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str5, i32 -1, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %array_out, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %empty_2 = call i32 (...)* @_ssdm_op_SpecMemCore([40 x i32]* %array, [1 x i8]* @p_str4, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str4, i32 -1, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %array, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !25 ; [debug line = 12:1]
  %array_addr = getelementptr [40 x i32]* %array, i64 0, i64 0, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load = load i32* %array_addr, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr = getelementptr [40 x i32]* %array_out, i64 0, i64 0, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load, i32* %array_out_addr, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_1 = getelementptr [40 x i32]* %array, i64 0, i64 1, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_1 = load i32* %array_addr_1, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_1 = getelementptr [40 x i32]* %array_out, i64 0, i64 1, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_1, i32* %array_out_addr_1, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_2 = getelementptr [40 x i32]* %array, i64 0, i64 2, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_2 = load i32* %array_addr_2, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_2 = getelementptr [40 x i32]* %array_out, i64 0, i64 2, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_2, i32* %array_out_addr_2, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_3 = getelementptr [40 x i32]* %array, i64 0, i64 3, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_3 = load i32* %array_addr_3, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_3 = getelementptr [40 x i32]* %array_out, i64 0, i64 3, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_3, i32* %array_out_addr_3, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_4 = getelementptr [40 x i32]* %array, i64 0, i64 4, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_4 = load i32* %array_addr_4, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_4 = getelementptr [40 x i32]* %array_out, i64 0, i64 4, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_4, i32* %array_out_addr_4, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_5 = getelementptr [40 x i32]* %array, i64 0, i64 5, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_5 = load i32* %array_addr_5, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_5 = getelementptr [40 x i32]* %array_out, i64 0, i64 5, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_5, i32* %array_out_addr_5, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_6 = getelementptr [40 x i32]* %array, i64 0, i64 6, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_6 = load i32* %array_addr_6, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_6 = getelementptr [40 x i32]* %array_out, i64 0, i64 6, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_6, i32* %array_out_addr_6, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_7 = getelementptr [40 x i32]* %array, i64 0, i64 7, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_7 = load i32* %array_addr_7, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_7 = getelementptr [40 x i32]* %array_out, i64 0, i64 7, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_7, i32* %array_out_addr_7, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_8 = getelementptr [40 x i32]* %array, i64 0, i64 8, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_8 = load i32* %array_addr_8, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_8 = getelementptr [40 x i32]* %array_out, i64 0, i64 8, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_8, i32* %array_out_addr_8, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_9 = getelementptr [40 x i32]* %array, i64 0, i64 9, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_9 = load i32* %array_addr_9, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_9 = getelementptr [40 x i32]* %array_out, i64 0, i64 9, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_9, i32* %array_out_addr_9, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_10 = getelementptr [40 x i32]* %array, i64 0, i64 10, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_10 = load i32* %array_addr_10, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_10 = getelementptr [40 x i32]* %array_out, i64 0, i64 10, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_10, i32* %array_out_addr_10, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_11 = getelementptr [40 x i32]* %array, i64 0, i64 11, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_11 = load i32* %array_addr_11, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_11 = getelementptr [40 x i32]* %array_out, i64 0, i64 11, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_11, i32* %array_out_addr_11, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_12 = getelementptr [40 x i32]* %array, i64 0, i64 12, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_12 = load i32* %array_addr_12, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_12 = getelementptr [40 x i32]* %array_out, i64 0, i64 12, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_12, i32* %array_out_addr_12, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_13 = getelementptr [40 x i32]* %array, i64 0, i64 13, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_13 = load i32* %array_addr_13, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_13 = getelementptr [40 x i32]* %array_out, i64 0, i64 13, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_13, i32* %array_out_addr_13, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_14 = getelementptr [40 x i32]* %array, i64 0, i64 14, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_14 = load i32* %array_addr_14, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_14 = getelementptr [40 x i32]* %array_out, i64 0, i64 14, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_14, i32* %array_out_addr_14, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_15 = getelementptr [40 x i32]* %array, i64 0, i64 15, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_15 = load i32* %array_addr_15, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_15 = getelementptr [40 x i32]* %array_out, i64 0, i64 15, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_15, i32* %array_out_addr_15, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_16 = getelementptr [40 x i32]* %array, i64 0, i64 16, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_16 = load i32* %array_addr_16, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_17 = getelementptr [40 x i32]* %array_out, i64 0, i64 16, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_16, i32* %array_out_addr_17, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_17 = getelementptr [40 x i32]* %array, i64 0, i64 17, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_17 = load i32* %array_addr_17, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_18 = getelementptr [40 x i32]* %array_out, i64 0, i64 17, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_17, i32* %array_out_addr_18, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_18 = getelementptr [40 x i32]* %array, i64 0, i64 18, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_18 = load i32* %array_addr_18, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_19 = getelementptr [40 x i32]* %array_out, i64 0, i64 18, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_18, i32* %array_out_addr_19, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_19 = getelementptr [40 x i32]* %array, i64 0, i64 19, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_19 = load i32* %array_addr_19, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_20 = getelementptr [40 x i32]* %array_out, i64 0, i64 19, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_19, i32* %array_out_addr_20, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_20 = getelementptr [40 x i32]* %array, i64 0, i64 20, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_20 = load i32* %array_addr_20, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_21 = getelementptr [40 x i32]* %array_out, i64 0, i64 20, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_20, i32* %array_out_addr_21, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_21 = getelementptr [40 x i32]* %array, i64 0, i64 21, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_21 = load i32* %array_addr_21, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_22 = getelementptr [40 x i32]* %array_out, i64 0, i64 21, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_21, i32* %array_out_addr_22, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_22 = getelementptr [40 x i32]* %array, i64 0, i64 22, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_22 = load i32* %array_addr_22, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_23 = getelementptr [40 x i32]* %array_out, i64 0, i64 22, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_22, i32* %array_out_addr_23, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_23 = getelementptr [40 x i32]* %array, i64 0, i64 23, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_23 = load i32* %array_addr_23, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_24 = getelementptr [40 x i32]* %array_out, i64 0, i64 23, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_23, i32* %array_out_addr_24, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_24 = getelementptr [40 x i32]* %array, i64 0, i64 24, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_24 = load i32* %array_addr_24, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_25 = getelementptr [40 x i32]* %array_out, i64 0, i64 24, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_24, i32* %array_out_addr_25, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_25 = getelementptr [40 x i32]* %array, i64 0, i64 25, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_25 = load i32* %array_addr_25, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_26 = getelementptr [40 x i32]* %array_out, i64 0, i64 25, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_25, i32* %array_out_addr_26, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_26 = getelementptr [40 x i32]* %array, i64 0, i64 26, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_26 = load i32* %array_addr_26, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_27 = getelementptr [40 x i32]* %array_out, i64 0, i64 26, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_26, i32* %array_out_addr_27, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_27 = getelementptr [40 x i32]* %array, i64 0, i64 27, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_27 = load i32* %array_addr_27, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_29 = getelementptr [40 x i32]* %array_out, i64 0, i64 27, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_27, i32* %array_out_addr_29, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_28 = getelementptr [40 x i32]* %array, i64 0, i64 28, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_28 = load i32* %array_addr_28, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_30 = getelementptr [40 x i32]* %array_out, i64 0, i64 28, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_28, i32* %array_out_addr_30, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_29 = getelementptr [40 x i32]* %array, i64 0, i64 29, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_29 = load i32* %array_addr_29, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_31 = getelementptr [40 x i32]* %array_out, i64 0, i64 29, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_29, i32* %array_out_addr_31, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_30 = getelementptr [40 x i32]* %array, i64 0, i64 30, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_30 = load i32* %array_addr_30, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_32 = getelementptr [40 x i32]* %array_out, i64 0, i64 30, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_30, i32* %array_out_addr_32, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_31 = getelementptr [40 x i32]* %array, i64 0, i64 31, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_31 = load i32* %array_addr_31, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_33 = getelementptr [40 x i32]* %array_out, i64 0, i64 31, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_31, i32* %array_out_addr_33, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_32 = getelementptr [40 x i32]* %array, i64 0, i64 32, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_32 = load i32* %array_addr_32, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_34 = getelementptr [40 x i32]* %array_out, i64 0, i64 32, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_32, i32* %array_out_addr_34, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_33 = getelementptr [40 x i32]* %array, i64 0, i64 33, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_33 = load i32* %array_addr_33, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_35 = getelementptr [40 x i32]* %array_out, i64 0, i64 33, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_33, i32* %array_out_addr_35, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_34 = getelementptr [40 x i32]* %array, i64 0, i64 34, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_34 = load i32* %array_addr_34, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_36 = getelementptr [40 x i32]* %array_out, i64 0, i64 34, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_34, i32* %array_out_addr_36, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_35 = getelementptr [40 x i32]* %array, i64 0, i64 35, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_35 = load i32* %array_addr_35, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_37 = getelementptr [40 x i32]* %array_out, i64 0, i64 35, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_35, i32* %array_out_addr_37, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_36 = getelementptr [40 x i32]* %array, i64 0, i64 36, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_36 = load i32* %array_addr_36, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_38 = getelementptr [40 x i32]* %array_out, i64 0, i64 36, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_36, i32* %array_out_addr_38, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_37 = getelementptr [40 x i32]* %array, i64 0, i64 37, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_37 = load i32* %array_addr_37, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_39 = getelementptr [40 x i32]* %array_out, i64 0, i64 37, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_37, i32* %array_out_addr_39, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_38 = getelementptr [40 x i32]* %array, i64 0, i64 38, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_38 = load i32* %array_addr_38, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_40 = getelementptr [40 x i32]* %array_out, i64 0, i64 38, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_38, i32* %array_out_addr_40, align 4, !dbg !27 ; [debug line = 17:2]
  %array_addr_39 = getelementptr [40 x i32]* %array, i64 0, i64 39, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array_load_39 = load i32* %array_addr_39, align 4, !dbg !27 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out_addr_41 = getelementptr [40 x i32]* %array_out, i64 0, i64 39, !dbg !27 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array_load_39, i32* %array_out_addr_41, align 4, !dbg !27 ; [debug line = 17:2]
  br label %.preheader, !dbg !30                  ; [debug line = 22:14]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %indvars_iv = phi i6 [ %indvars_iv_next, %4 ], [ -25, %.preheader.preheader ] ; [#uses=2 type=i6]
  %i = phi i6 [ %i_1, %4 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i6]
  %exitcond1 = icmp eq i6 %i, -25, !dbg !30       ; [#uses=1 type=i1] [debug line = 22:14]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 39, i64 39, i64 39) nounwind ; [#uses=0 type=i32]
  %i_1 = add i6 %i, 1, !dbg !32                   ; [#uses=1 type=i6] [debug line = 22:26]
  br i1 %exitcond1, label %5, label %0, !dbg !30  ; [debug line = 22:14]

; <label>:0                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str3) nounwind, !dbg !33 ; [debug line = 22:31]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3) nounwind, !dbg !33 ; [#uses=1 type=i32] [debug line = 22:31]
  br label %1, !dbg !35                           ; [debug line = 23:13]

; <label>:1                                       ; preds = %._crit_edge, %0
  %j = phi i6 [ 0, %0 ], [ %j_1, %._crit_edge ]   ; [#uses=3 type=i6]
  %exitcond = icmp eq i6 %j, %indvars_iv, !dbg !35 ; [#uses=1 type=i1] [debug line = 23:13]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 39, i64 0) nounwind ; [#uses=0 type=i32]
  %j_1 = add i6 %j, 1, !dbg !37                   ; [#uses=2 type=i6] [debug line = 24:13]
  br i1 %exitcond, label %4, label %2, !dbg !35   ; [debug line = 23:13]

; <label>:2                                       ; preds = %1
  %tmp_3 = zext i6 %j to i64, !dbg !37            ; [#uses=1 type=i64] [debug line = 24:13]
  %array_out_addr_16 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_3, !dbg !37 ; [#uses=2 type=i32*] [debug line = 24:13]
  %temporal = load i32* %array_out_addr_16, align 4, !dbg !37 ; [#uses=2 type=i32] [debug line = 24:13]
  %tmp_5 = zext i6 %j_1 to i64, !dbg !37          ; [#uses=1 type=i64] [debug line = 24:13]
  %array_out_addr_28 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_5, !dbg !37 ; [#uses=2 type=i32*] [debug line = 24:13]
  %array_out_load_1 = load i32* %array_out_addr_28, align 4, !dbg !37 ; [#uses=2 type=i32] [debug line = 24:13]
  %tmp_6 = icmp sgt i32 %temporal, %array_out_load_1, !dbg !37 ; [#uses=1 type=i1] [debug line = 24:13]
  br i1 %tmp_6, label %3, label %._crit_edge, !dbg !37 ; [debug line = 24:13]

; <label>:3                                       ; preds = %2
  call void @llvm.dbg.value(metadata !{i32 %temporal}, i64 0, metadata !39), !dbg !40 ; [debug line = 25:17] [debug variable = temporal]
  store i32 %array_out_load_1, i32* %array_out_addr_16, align 4, !dbg !42 ; [debug line = 26:17]
  store i32 %temporal, i32* %array_out_addr_28, align 4, !dbg !43 ; [debug line = 27:17]
  br label %._crit_edge, !dbg !44                 ; [debug line = 28:13]

._crit_edge:                                      ; preds = %3, %2
  call void @llvm.dbg.value(metadata !{i6 %j_1}, i64 0, metadata !45), !dbg !46 ; [debug line = 23:27] [debug variable = j]
  br label %1, !dbg !46                           ; [debug line = 23:27]

; <label>:4                                       ; preds = %1
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_s) nounwind, !dbg !47 ; [#uses=0 type=i32] [debug line = 30:5]
  call void @llvm.dbg.value(metadata !{i6 %i_1}, i64 0, metadata !48), !dbg !32 ; [debug line = 22:26] [debug variable = i]
  %indvars_iv_next = add i6 %indvars_iv, -1, !dbg !32 ; [#uses=1 type=i6] [debug line = 22:26]
  br label %.preheader, !dbg !32                  ; [debug line = 22:26]

; <label>:5                                       ; preds = %.preheader
  ret void, !dbg !49                              ; [debug line = 32:5]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"array", metadata !4, metadata !"int", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 39, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"array_out", metadata !4, metadata !"int", i32 0, i32 31}
!10 = metadata !{i32 786689, metadata !11, metadata !"array", null, i32 9, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!11 = metadata !{i32 786478, i32 0, metadata !12, metadata !"bubble_sort", metadata !"bubble_sort", metadata !"_Z11bubble_sortPiS_", metadata !12, i32 9, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !17, i32 9} ; [ DW_TAG_subprogram ]
!12 = metadata !{i32 786473, metadata !"../../sources/bubble_sort.cpp", metadata !"D:\5Ctrabajo_DSE_EnrLuc\5Chls\5Cbubble_sort", null} ; [ DW_TAG_file_type ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !15}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1280, i64 32, i32 0, i32 0, metadata !16, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 39}       ; [ DW_TAG_subrange_type ]
!22 = metadata !{i32 9, i32 22, metadata !11, null}
!23 = metadata !{i32 786689, metadata !11, metadata !"array_out", null, i32 9, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!24 = metadata !{i32 9, i32 37, metadata !11, null}
!25 = metadata !{i32 12, i32 1, metadata !26, null}
!26 = metadata !{i32 786443, metadata !11, i32 9, i32 51, metadata !12, i32 0} ; [ DW_TAG_lexical_block ]
!27 = metadata !{i32 17, i32 2, metadata !28, null}
!28 = metadata !{i32 786443, metadata !29, i32 15, i32 27, metadata !12, i32 2} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 786443, metadata !26, i32 15, i32 10, metadata !12, i32 1} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 22, i32 14, metadata !31, null}
!31 = metadata !{i32 786443, metadata !26, i32 22, i32 10, metadata !12, i32 3} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 22, i32 26, metadata !31, null}
!33 = metadata !{i32 22, i32 31, metadata !34, null}
!34 = metadata !{i32 786443, metadata !31, i32 22, i32 30, metadata !12, i32 4} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 23, i32 13, metadata !36, null}
!36 = metadata !{i32 786443, metadata !34, i32 23, i32 9, metadata !12, i32 5} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 24, i32 13, metadata !38, null}
!38 = metadata !{i32 786443, metadata !36, i32 23, i32 31, metadata !12, i32 6} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 786688, metadata !26, metadata !"temporal", metadata !12, i32 20, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 25, i32 17, metadata !41, null}
!41 = metadata !{i32 786443, metadata !38, i32 24, i32 46, metadata !12, i32 7} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 26, i32 17, metadata !41, null}
!43 = metadata !{i32 27, i32 17, metadata !41, null}
!44 = metadata !{i32 28, i32 13, metadata !41, null}
!45 = metadata !{i32 786688, metadata !26, metadata !"j", metadata !12, i32 21, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 23, i32 27, metadata !36, null}
!47 = metadata !{i32 30, i32 5, metadata !34, null}
!48 = metadata !{i32 786688, metadata !26, metadata !"i", metadata !12, i32 21, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 32, i32 5, metadata !26, null}

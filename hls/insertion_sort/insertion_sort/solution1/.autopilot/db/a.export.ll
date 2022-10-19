; ModuleID = 'D:/trabajo_DSE_EnrLuc/hls/insertion_sort/insertion_sort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@insertion_sort_str = internal unnamed_addr constant [15 x i8] c"insertion_sort\00"
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str5 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str4 = private unnamed_addr constant [6 x i8] c"LOOP1\00", align 1
@p_str3 = private unnamed_addr constant [12 x i8] c"INSERT_SORT\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @insertion_sort([40 x i32]* %array_r, [40 x i32]* %array_out) nounwind uwtable {
.preheader.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %array_r) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %array_out) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @insertion_sort_str) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([40 x i32]* %array_out, [1 x i8]* @p_str6, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str6, i32 -1, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %array_out, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %empty_2 = call i32 (...)* @_ssdm_op_SpecMemCore([40 x i32]* %array_r, [1 x i8]* @p_str5, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str5, i32 -1, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %array_r, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %array_addr = getelementptr [40 x i32]* %array_r, i64 0, i64 0
  %array_load = load i32* %array_addr, align 4
  %array_out_addr = getelementptr [40 x i32]* %array_out, i64 0, i64 0
  store i32 %array_load, i32* %array_out_addr, align 4
  %array_addr_1 = getelementptr [40 x i32]* %array_r, i64 0, i64 1
  %array_load_1 = load i32* %array_addr_1, align 4
  %array_out_addr_1 = getelementptr [40 x i32]* %array_out, i64 0, i64 1
  store i32 %array_load_1, i32* %array_out_addr_1, align 4
  %array_addr_2 = getelementptr [40 x i32]* %array_r, i64 0, i64 2
  %array_load_2 = load i32* %array_addr_2, align 4
  %array_out_addr_2 = getelementptr [40 x i32]* %array_out, i64 0, i64 2
  store i32 %array_load_2, i32* %array_out_addr_2, align 4
  %array_addr_3 = getelementptr [40 x i32]* %array_r, i64 0, i64 3
  %array_load_3 = load i32* %array_addr_3, align 4
  %array_out_addr_3 = getelementptr [40 x i32]* %array_out, i64 0, i64 3
  store i32 %array_load_3, i32* %array_out_addr_3, align 4
  %array_addr_4 = getelementptr [40 x i32]* %array_r, i64 0, i64 4
  %array_load_4 = load i32* %array_addr_4, align 4
  %array_out_addr_4 = getelementptr [40 x i32]* %array_out, i64 0, i64 4
  store i32 %array_load_4, i32* %array_out_addr_4, align 4
  %array_addr_5 = getelementptr [40 x i32]* %array_r, i64 0, i64 5
  %array_load_5 = load i32* %array_addr_5, align 4
  %array_out_addr_5 = getelementptr [40 x i32]* %array_out, i64 0, i64 5
  store i32 %array_load_5, i32* %array_out_addr_5, align 4
  %array_addr_6 = getelementptr [40 x i32]* %array_r, i64 0, i64 6
  %array_load_6 = load i32* %array_addr_6, align 4
  %array_out_addr_6 = getelementptr [40 x i32]* %array_out, i64 0, i64 6
  store i32 %array_load_6, i32* %array_out_addr_6, align 4
  %array_addr_7 = getelementptr [40 x i32]* %array_r, i64 0, i64 7
  %array_load_7 = load i32* %array_addr_7, align 4
  %array_out_addr_7 = getelementptr [40 x i32]* %array_out, i64 0, i64 7
  store i32 %array_load_7, i32* %array_out_addr_7, align 4
  %array_addr_8 = getelementptr [40 x i32]* %array_r, i64 0, i64 8
  %array_load_8 = load i32* %array_addr_8, align 4
  %array_out_addr_8 = getelementptr [40 x i32]* %array_out, i64 0, i64 8
  store i32 %array_load_8, i32* %array_out_addr_8, align 4
  %array_addr_9 = getelementptr [40 x i32]* %array_r, i64 0, i64 9
  %array_load_9 = load i32* %array_addr_9, align 4
  %array_out_addr_9 = getelementptr [40 x i32]* %array_out, i64 0, i64 9
  store i32 %array_load_9, i32* %array_out_addr_9, align 4
  %array_addr_10 = getelementptr [40 x i32]* %array_r, i64 0, i64 10
  %array_load_10 = load i32* %array_addr_10, align 4
  %array_out_addr_10 = getelementptr [40 x i32]* %array_out, i64 0, i64 10
  store i32 %array_load_10, i32* %array_out_addr_10, align 4
  %array_addr_11 = getelementptr [40 x i32]* %array_r, i64 0, i64 11
  %array_load_11 = load i32* %array_addr_11, align 4
  %array_out_addr_11 = getelementptr [40 x i32]* %array_out, i64 0, i64 11
  store i32 %array_load_11, i32* %array_out_addr_11, align 4
  %array_addr_12 = getelementptr [40 x i32]* %array_r, i64 0, i64 12
  %array_load_12 = load i32* %array_addr_12, align 4
  %array_out_addr_12 = getelementptr [40 x i32]* %array_out, i64 0, i64 12
  store i32 %array_load_12, i32* %array_out_addr_12, align 4
  %array_addr_13 = getelementptr [40 x i32]* %array_r, i64 0, i64 13
  %array_load_13 = load i32* %array_addr_13, align 4
  %array_out_addr_13 = getelementptr [40 x i32]* %array_out, i64 0, i64 13
  store i32 %array_load_13, i32* %array_out_addr_13, align 4
  %array_addr_14 = getelementptr [40 x i32]* %array_r, i64 0, i64 14
  %array_load_14 = load i32* %array_addr_14, align 4
  %array_out_addr_14 = getelementptr [40 x i32]* %array_out, i64 0, i64 14
  store i32 %array_load_14, i32* %array_out_addr_14, align 4
  %array_addr_15 = getelementptr [40 x i32]* %array_r, i64 0, i64 15
  %array_load_15 = load i32* %array_addr_15, align 4
  %array_out_addr_15 = getelementptr [40 x i32]* %array_out, i64 0, i64 15
  store i32 %array_load_15, i32* %array_out_addr_15, align 4
  %array_addr_16 = getelementptr [40 x i32]* %array_r, i64 0, i64 16
  %array_load_16 = load i32* %array_addr_16, align 4
  %array_out_addr_16 = getelementptr [40 x i32]* %array_out, i64 0, i64 16
  store i32 %array_load_16, i32* %array_out_addr_16, align 4
  %array_addr_17 = getelementptr [40 x i32]* %array_r, i64 0, i64 17
  %array_load_17 = load i32* %array_addr_17, align 4
  %array_out_addr_17 = getelementptr [40 x i32]* %array_out, i64 0, i64 17
  store i32 %array_load_17, i32* %array_out_addr_17, align 4
  %array_addr_18 = getelementptr [40 x i32]* %array_r, i64 0, i64 18
  %array_load_18 = load i32* %array_addr_18, align 4
  %array_out_addr_18 = getelementptr [40 x i32]* %array_out, i64 0, i64 18
  store i32 %array_load_18, i32* %array_out_addr_18, align 4
  %array_addr_19 = getelementptr [40 x i32]* %array_r, i64 0, i64 19
  %array_load_19 = load i32* %array_addr_19, align 4
  %array_out_addr_19 = getelementptr [40 x i32]* %array_out, i64 0, i64 19
  store i32 %array_load_19, i32* %array_out_addr_19, align 4
  %array_addr_20 = getelementptr [40 x i32]* %array_r, i64 0, i64 20
  %array_load_20 = load i32* %array_addr_20, align 4
  %array_out_addr_20 = getelementptr [40 x i32]* %array_out, i64 0, i64 20
  store i32 %array_load_20, i32* %array_out_addr_20, align 4
  %array_addr_21 = getelementptr [40 x i32]* %array_r, i64 0, i64 21
  %array_load_21 = load i32* %array_addr_21, align 4
  %array_out_addr_21 = getelementptr [40 x i32]* %array_out, i64 0, i64 21
  store i32 %array_load_21, i32* %array_out_addr_21, align 4
  %array_addr_22 = getelementptr [40 x i32]* %array_r, i64 0, i64 22
  %array_load_22 = load i32* %array_addr_22, align 4
  %array_out_addr_22 = getelementptr [40 x i32]* %array_out, i64 0, i64 22
  store i32 %array_load_22, i32* %array_out_addr_22, align 4
  %array_addr_23 = getelementptr [40 x i32]* %array_r, i64 0, i64 23
  %array_load_23 = load i32* %array_addr_23, align 4
  %array_out_addr_23 = getelementptr [40 x i32]* %array_out, i64 0, i64 23
  store i32 %array_load_23, i32* %array_out_addr_23, align 4
  %array_addr_24 = getelementptr [40 x i32]* %array_r, i64 0, i64 24
  %array_load_24 = load i32* %array_addr_24, align 4
  %array_out_addr_24 = getelementptr [40 x i32]* %array_out, i64 0, i64 24
  store i32 %array_load_24, i32* %array_out_addr_24, align 4
  %array_addr_25 = getelementptr [40 x i32]* %array_r, i64 0, i64 25
  %array_load_25 = load i32* %array_addr_25, align 4
  %array_out_addr_25 = getelementptr [40 x i32]* %array_out, i64 0, i64 25
  store i32 %array_load_25, i32* %array_out_addr_25, align 4
  %array_addr_26 = getelementptr [40 x i32]* %array_r, i64 0, i64 26
  %array_load_26 = load i32* %array_addr_26, align 4
  %array_out_addr_26 = getelementptr [40 x i32]* %array_out, i64 0, i64 26
  store i32 %array_load_26, i32* %array_out_addr_26, align 4
  %array_addr_27 = getelementptr [40 x i32]* %array_r, i64 0, i64 27
  %array_load_27 = load i32* %array_addr_27, align 4
  %array_out_addr_27 = getelementptr [40 x i32]* %array_out, i64 0, i64 27
  store i32 %array_load_27, i32* %array_out_addr_27, align 4
  %array_addr_28 = getelementptr [40 x i32]* %array_r, i64 0, i64 28
  %array_load_28 = load i32* %array_addr_28, align 4
  %array_out_addr_28 = getelementptr [40 x i32]* %array_out, i64 0, i64 28
  store i32 %array_load_28, i32* %array_out_addr_28, align 4
  %array_addr_29 = getelementptr [40 x i32]* %array_r, i64 0, i64 29
  %array_load_29 = load i32* %array_addr_29, align 4
  %array_out_addr_29 = getelementptr [40 x i32]* %array_out, i64 0, i64 29
  store i32 %array_load_29, i32* %array_out_addr_29, align 4
  %array_addr_30 = getelementptr [40 x i32]* %array_r, i64 0, i64 30
  %array_load_30 = load i32* %array_addr_30, align 4
  %array_out_addr_30 = getelementptr [40 x i32]* %array_out, i64 0, i64 30
  store i32 %array_load_30, i32* %array_out_addr_30, align 4
  %array_addr_31 = getelementptr [40 x i32]* %array_r, i64 0, i64 31
  %array_load_31 = load i32* %array_addr_31, align 4
  %array_out_addr_31 = getelementptr [40 x i32]* %array_out, i64 0, i64 31
  store i32 %array_load_31, i32* %array_out_addr_31, align 4
  %array_addr_32 = getelementptr [40 x i32]* %array_r, i64 0, i64 32
  %array_load_32 = load i32* %array_addr_32, align 4
  %array_out_addr_32 = getelementptr [40 x i32]* %array_out, i64 0, i64 32
  store i32 %array_load_32, i32* %array_out_addr_32, align 4
  %array_addr_33 = getelementptr [40 x i32]* %array_r, i64 0, i64 33
  %array_load_33 = load i32* %array_addr_33, align 4
  %array_out_addr_33 = getelementptr [40 x i32]* %array_out, i64 0, i64 33
  store i32 %array_load_33, i32* %array_out_addr_33, align 4
  %array_addr_34 = getelementptr [40 x i32]* %array_r, i64 0, i64 34
  %array_load_34 = load i32* %array_addr_34, align 4
  %array_out_addr_34 = getelementptr [40 x i32]* %array_out, i64 0, i64 34
  store i32 %array_load_34, i32* %array_out_addr_34, align 4
  %array_addr_35 = getelementptr [40 x i32]* %array_r, i64 0, i64 35
  %array_load_35 = load i32* %array_addr_35, align 4
  %array_out_addr_35 = getelementptr [40 x i32]* %array_out, i64 0, i64 35
  store i32 %array_load_35, i32* %array_out_addr_35, align 4
  %array_addr_36 = getelementptr [40 x i32]* %array_r, i64 0, i64 36
  %array_load_36 = load i32* %array_addr_36, align 4
  %array_out_addr_36 = getelementptr [40 x i32]* %array_out, i64 0, i64 36
  store i32 %array_load_36, i32* %array_out_addr_36, align 4
  %array_addr_37 = getelementptr [40 x i32]* %array_r, i64 0, i64 37
  %array_load_37 = load i32* %array_addr_37, align 4
  %array_out_addr_37 = getelementptr [40 x i32]* %array_out, i64 0, i64 37
  store i32 %array_load_37, i32* %array_out_addr_37, align 4
  %array_addr_38 = getelementptr [40 x i32]* %array_r, i64 0, i64 38
  %array_load_38 = load i32* %array_addr_38, align 4
  %array_out_addr_38 = getelementptr [40 x i32]* %array_out, i64 0, i64 38
  store i32 %array_load_38, i32* %array_out_addr_38, align 4
  %array_addr_39 = getelementptr [40 x i32]* %array_r, i64 0, i64 39
  %array_load_39 = load i32* %array_addr_39, align 4
  %array_out_addr_39 = getelementptr [40 x i32]* %array_out, i64 0, i64 39
  store i32 %array_load_39, i32* %array_out_addr_39, align 4
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  br label %0

.critedge.0:                                      ; preds = %0
  %tmp_4 = zext i1 %j_0_in to i64
  %array_out_addr_40 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4
  store i32 %array_load_1, i32* %array_out_addr_40, align 4
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_s) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load = load i32* %array_out_addr_2, align 4
  br label %2

; <label>:0                                       ; preds = %1, %.preheader.preheader
  %j_0_in = phi i1 [ true, %.preheader.preheader ], [ false, %1 ]
  %j = xor i1 %j_0_in, true
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1) nounwind
  %slt = icmp slt i32 %array_load_1, %array_load
  %rev1 = xor i1 %slt, true
  %brmerge = or i1 %rev1, %j
  br i1 %brmerge, label %.critedge.0, label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  store i32 %array_load, i32* %array_out_addr_1, align 4
  br label %0

.critedge.1:                                      ; preds = %4, %2
  %tmp_6_1 = zext i2 %j_0_in_1 to i64
  %array_out_addr_43 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_1
  store i32 %array_out_load, i32* %array_out_addr_43, align 4
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_5) nounwind
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_39 = load i32* %array_out_addr_3, align 4
  br label %5

; <label>:2                                       ; preds = %3, %.critedge.0
  %j_0_in_1 = phi i2 [ -2, %.critedge.0 ], [ %j_1, %3 ]
  %j_1 = add i2 %j_0_in_1, -1
  %j_1_cast = sext i2 %j_1 to i32
  %tmp_3_1 = icmp eq i2 %j_0_in_1, 0
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1) nounwind
  br i1 %tmp_3_1, label %.critedge.1, label %4

; <label>:3                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_1 = zext i2 %j_0_in_1 to i64
  %array_out_addr_42 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_1
  store i32 %array_out_load_1, i32* %array_out_addr_42, align 4
  br label %2

; <label>:4                                       ; preds = %2
  %tmp_4_1 = zext i32 %j_1_cast to i64
  %array_out_addr_41 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_1
  %array_out_load_1 = load i32* %array_out_addr_41, align 4
  %tmp_5_1 = icmp sgt i32 %array_out_load_1, %array_out_load
  br i1 %tmp_5_1, label %3, label %.critedge.1

.critedge.2:                                      ; preds = %7, %5
  %tmp_6_2 = zext i2 %j_0_in_2 to i64
  %array_out_addr_46 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_2
  store i32 %array_out_load_39, i32* %array_out_addr_46, align 4
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_7) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_40 = load i32* %array_out_addr_4, align 4
  br label %8

; <label>:5                                       ; preds = %6, %.critedge.1
  %j_0_in_2 = phi i2 [ -1, %.critedge.1 ], [ %tmp, %6 ]
  %j_0_in_2_cast = zext i2 %j_0_in_2 to i3
  %j_2 = add i3 -1, %j_0_in_2_cast
  %j_2_cast1 = sext i3 %j_2 to i32
  %tmp = trunc i3 %j_2 to i2
  %tmp_3_2 = icmp eq i2 %j_0_in_2, 0
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 3, i64 2) nounwind
  br i1 %tmp_3_2, label %.critedge.2, label %7

; <label>:6                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_2 = zext i2 %j_0_in_2 to i64
  %array_out_addr_45 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_2
  store i32 %array_out_load_2, i32* %array_out_addr_45, align 4
  br label %5

; <label>:7                                       ; preds = %5
  %tmp_4_2 = zext i32 %j_2_cast1 to i64
  %array_out_addr_44 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_2
  %array_out_load_2 = load i32* %array_out_addr_44, align 4
  %tmp_5_2 = icmp sgt i32 %array_out_load_2, %array_out_load_39
  br i1 %tmp_5_2, label %6, label %.critedge.2

.critedge.3:                                      ; preds = %10, %8
  %tmp_6_3 = zext i3 %j_0_in_3 to i64
  %array_out_addr_49 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_3
  store i32 %array_out_load_40, i32* %array_out_addr_49, align 4
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_8) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_41 = load i32* %array_out_addr_5, align 4
  br label %11

; <label>:8                                       ; preds = %9, %.critedge.2
  %j_0_in_3 = phi i3 [ -4, %.critedge.2 ], [ %j_3, %9 ]
  %j_3 = add i3 %j_0_in_3, -1
  %j_3_cast = sext i3 %j_3 to i32
  %tmp_3_3 = icmp eq i3 %j_0_in_3, 0
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4, i64 2) nounwind
  br i1 %tmp_3_3, label %.critedge.3, label %10

; <label>:9                                       ; preds = %10
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_3 = zext i3 %j_0_in_3 to i64
  %array_out_addr_48 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_3
  store i32 %array_out_load_3, i32* %array_out_addr_48, align 4
  br label %8

; <label>:10                                      ; preds = %8
  %tmp_4_3 = zext i32 %j_3_cast to i64
  %array_out_addr_47 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_3
  %array_out_load_3 = load i32* %array_out_addr_47, align 4
  %tmp_5_3 = icmp sgt i32 %array_out_load_3, %array_out_load_40
  br i1 %tmp_5_3, label %9, label %.critedge.3

.critedge.4:                                      ; preds = %13, %11
  %tmp_6_4 = zext i3 %j_0_in_4 to i64
  %array_out_addr_52 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_4
  store i32 %array_out_load_41, i32* %array_out_addr_52, align 4
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_9) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_42 = load i32* %array_out_addr_6, align 4
  br label %14

; <label>:11                                      ; preds = %12, %.critedge.3
  %j_0_in_4 = phi i3 [ -3, %.critedge.3 ], [ %tmp_3, %12 ]
  %j_0_in_4_cast = zext i3 %j_0_in_4 to i4
  %j_4 = add i4 -1, %j_0_in_4_cast
  %j_4_cast1 = sext i4 %j_4 to i32
  %tmp_3 = trunc i4 %j_4 to i3
  %tmp_3_4 = icmp eq i3 %j_0_in_4, 0
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 5, i64 3) nounwind
  br i1 %tmp_3_4, label %.critedge.4, label %13

; <label>:12                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_4 = zext i3 %j_0_in_4 to i64
  %array_out_addr_51 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_4
  store i32 %array_out_load_4, i32* %array_out_addr_51, align 4
  br label %11

; <label>:13                                      ; preds = %11
  %tmp_4_4 = zext i32 %j_4_cast1 to i64
  %array_out_addr_50 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_4
  %array_out_load_4 = load i32* %array_out_addr_50, align 4
  %tmp_5_4 = icmp sgt i32 %array_out_load_4, %array_out_load_41
  br i1 %tmp_5_4, label %12, label %.critedge.4

.critedge.5:                                      ; preds = %16, %14
  %tmp_6_5 = zext i3 %j_0_in_5 to i64
  %array_out_addr_55 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_5
  store i32 %array_out_load_42, i32* %array_out_addr_55, align 4
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_1) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_43 = load i32* %array_out_addr_7, align 4
  br label %17

; <label>:14                                      ; preds = %15, %.critedge.4
  %j_0_in_5 = phi i3 [ -2, %.critedge.4 ], [ %tmp_41, %15 ]
  %j_0_in_5_cast = zext i3 %j_0_in_5 to i4
  %j_5 = add i4 -1, %j_0_in_5_cast
  %j_5_cast1 = sext i4 %j_5 to i32
  %tmp_41 = trunc i4 %j_5 to i3
  %tmp_3_5 = icmp eq i3 %j_0_in_5, 0
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 6, i64 3) nounwind
  br i1 %tmp_3_5, label %.critedge.5, label %16

; <label>:15                                      ; preds = %16
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_5 = zext i3 %j_0_in_5 to i64
  %array_out_addr_54 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_5
  store i32 %array_out_load_5, i32* %array_out_addr_54, align 4
  br label %14

; <label>:16                                      ; preds = %14
  %tmp_4_5 = zext i32 %j_5_cast1 to i64
  %array_out_addr_53 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_5
  %array_out_load_5 = load i32* %array_out_addr_53, align 4
  %tmp_5_5 = icmp sgt i32 %array_out_load_5, %array_out_load_42
  br i1 %tmp_5_5, label %15, label %.critedge.5

.critedge.6:                                      ; preds = %19, %17
  %tmp_6_6 = zext i3 %j_0_in_6 to i64
  %array_out_addr_58 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_6
  store i32 %array_out_load_43, i32* %array_out_addr_58, align 4
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_2) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_44 = load i32* %array_out_addr_8, align 4
  br label %20

; <label>:17                                      ; preds = %18, %.critedge.5
  %j_0_in_6 = phi i3 [ -1, %.critedge.5 ], [ %tmp_42, %18 ]
  %j_0_in_6_cast = zext i3 %j_0_in_6 to i4
  %j_6 = add i4 -1, %j_0_in_6_cast
  %j_6_cast1 = sext i4 %j_6 to i32
  %tmp_42 = trunc i4 %j_6 to i3
  %tmp_3_6 = icmp eq i3 %j_0_in_6, 0
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 7, i64 4) nounwind
  br i1 %tmp_3_6, label %.critedge.6, label %19

; <label>:18                                      ; preds = %19
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_6 = zext i3 %j_0_in_6 to i64
  %array_out_addr_57 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_6
  store i32 %array_out_load_6, i32* %array_out_addr_57, align 4
  br label %17

; <label>:19                                      ; preds = %17
  %tmp_4_6 = zext i32 %j_6_cast1 to i64
  %array_out_addr_56 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_6
  %array_out_load_6 = load i32* %array_out_addr_56, align 4
  %tmp_5_6 = icmp sgt i32 %array_out_load_6, %array_out_load_43
  br i1 %tmp_5_6, label %18, label %.critedge.6

.critedge.7:                                      ; preds = %22, %20
  %tmp_6_7 = zext i4 %j_0_in_7 to i64
  %array_out_addr_61 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_7
  store i32 %array_out_load_44, i32* %array_out_addr_61, align 4
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_6) nounwind
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_45 = load i32* %array_out_addr_9, align 4
  br label %23

; <label>:20                                      ; preds = %21, %.critedge.6
  %j_0_in_7 = phi i4 [ -8, %.critedge.6 ], [ %j_7, %21 ]
  %j_7 = add i4 %j_0_in_7, -1
  %j_7_cast = sext i4 %j_7 to i32
  %tmp_3_7 = icmp eq i4 %j_0_in_7, 0
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 8, i64 4) nounwind
  br i1 %tmp_3_7, label %.critedge.7, label %22

; <label>:21                                      ; preds = %22
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_7 = zext i4 %j_0_in_7 to i64
  %array_out_addr_60 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_7
  store i32 %array_out_load_7, i32* %array_out_addr_60, align 4
  br label %20

; <label>:22                                      ; preds = %20
  %tmp_4_7 = zext i32 %j_7_cast to i64
  %array_out_addr_59 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_7
  %array_out_load_7 = load i32* %array_out_addr_59, align 4
  %tmp_5_7 = icmp sgt i32 %array_out_load_7, %array_out_load_44
  br i1 %tmp_5_7, label %21, label %.critedge.7

.critedge.8:                                      ; preds = %25, %23
  %tmp_6_8 = zext i4 %j_0_in_8 to i64
  %array_out_addr_64 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_8
  store i32 %array_out_load_45, i32* %array_out_addr_64, align 4
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_10) nounwind
  %tmp_11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_46 = load i32* %array_out_addr_10, align 4
  br label %26

; <label>:23                                      ; preds = %24, %.critedge.7
  %j_0_in_8 = phi i4 [ -7, %.critedge.7 ], [ %tmp_43, %24 ]
  %j_0_in_8_cast = zext i4 %j_0_in_8 to i5
  %j_8 = add i5 -1, %j_0_in_8_cast
  %j_8_cast1 = sext i5 %j_8 to i32
  %tmp_43 = trunc i5 %j_8 to i4
  %tmp_3_8 = icmp eq i4 %j_0_in_8, 0
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 9, i64 5) nounwind
  br i1 %tmp_3_8, label %.critedge.8, label %25

; <label>:24                                      ; preds = %25
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_8 = zext i4 %j_0_in_8 to i64
  %array_out_addr_63 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_8
  store i32 %array_out_load_8, i32* %array_out_addr_63, align 4
  br label %23

; <label>:25                                      ; preds = %23
  %tmp_4_8 = zext i32 %j_8_cast1 to i64
  %array_out_addr_62 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_8
  %array_out_load_8 = load i32* %array_out_addr_62, align 4
  %tmp_5_8 = icmp sgt i32 %array_out_load_8, %array_out_load_45
  br i1 %tmp_5_8, label %24, label %.critedge.8

.critedge.9:                                      ; preds = %28, %26
  %tmp_6_9 = zext i4 %j_0_in_9 to i64
  %array_out_addr_67 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_9
  store i32 %array_out_load_46, i32* %array_out_addr_67, align 4
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_11) nounwind
  %tmp_12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_47 = load i32* %array_out_addr_11, align 4
  br label %29

; <label>:26                                      ; preds = %27, %.critedge.8
  %j_0_in_9 = phi i4 [ -6, %.critedge.8 ], [ %tmp_44, %27 ]
  %j_0_in_9_cast = zext i4 %j_0_in_9 to i5
  %j_9 = add i5 -1, %j_0_in_9_cast
  %j_9_cast1 = sext i5 %j_9 to i32
  %tmp_44 = trunc i5 %j_9 to i4
  %tmp_3_9 = icmp eq i4 %j_0_in_9, 0
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 10, i64 5) nounwind
  br i1 %tmp_3_9, label %.critedge.9, label %28

; <label>:27                                      ; preds = %28
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_9 = zext i4 %j_0_in_9 to i64
  %array_out_addr_66 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_9
  store i32 %array_out_load_9, i32* %array_out_addr_66, align 4
  br label %26

; <label>:28                                      ; preds = %26
  %tmp_4_9 = zext i32 %j_9_cast1 to i64
  %array_out_addr_65 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_9
  %array_out_load_9 = load i32* %array_out_addr_65, align 4
  %tmp_5_9 = icmp sgt i32 %array_out_load_9, %array_out_load_46
  br i1 %tmp_5_9, label %27, label %.critedge.9

.critedge.10:                                     ; preds = %31, %29
  %tmp_6_s = zext i4 %j_0_in_s to i64
  %array_out_addr_70 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_s
  store i32 %array_out_load_47, i32* %array_out_addr_70, align 4
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_12) nounwind
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_48 = load i32* %array_out_addr_12, align 4
  br label %32

; <label>:29                                      ; preds = %30, %.critedge.9
  %j_0_in_s = phi i4 [ -5, %.critedge.9 ], [ %tmp_45, %30 ]
  %j_0_in_cast = zext i4 %j_0_in_s to i5
  %j_s = add i5 -1, %j_0_in_cast
  %j_cast1 = sext i5 %j_s to i32
  %tmp_45 = trunc i5 %j_s to i4
  %tmp_3_s = icmp eq i4 %j_0_in_s, 0
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 11, i64 6) nounwind
  br i1 %tmp_3_s, label %.critedge.10, label %31

; <label>:30                                      ; preds = %31
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_s = zext i4 %j_0_in_s to i64
  %array_out_addr_69 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_s
  store i32 %array_out_load_10, i32* %array_out_addr_69, align 4
  br label %29

; <label>:31                                      ; preds = %29
  %tmp_4_s = zext i32 %j_cast1 to i64
  %array_out_addr_68 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_s
  %array_out_load_10 = load i32* %array_out_addr_68, align 4
  %tmp_5_s = icmp sgt i32 %array_out_load_10, %array_out_load_47
  br i1 %tmp_5_s, label %30, label %.critedge.10

.critedge.11:                                     ; preds = %34, %32
  %tmp_6_10 = zext i4 %j_0_in_10 to i64
  %array_out_addr_73 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_10
  store i32 %array_out_load_48, i32* %array_out_addr_73, align 4
  %empty_25 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_13) nounwind
  %tmp_14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_49 = load i32* %array_out_addr_13, align 4
  br label %35

; <label>:32                                      ; preds = %33, %.critedge.10
  %j_0_in_10 = phi i4 [ -4, %.critedge.10 ], [ %tmp_46, %33 ]
  %j_0_in_10_cast = zext i4 %j_0_in_10 to i5
  %j_10 = add i5 -1, %j_0_in_10_cast
  %j_10_cast1 = sext i5 %j_10 to i32
  %tmp_46 = trunc i5 %j_10 to i4
  %tmp_3_10 = icmp eq i4 %j_0_in_10, 0
  %empty_26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 12, i64 6) nounwind
  br i1 %tmp_3_10, label %.critedge.11, label %34

; <label>:33                                      ; preds = %34
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_10 = zext i4 %j_0_in_10 to i64
  %array_out_addr_72 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_10
  store i32 %array_out_load_11, i32* %array_out_addr_72, align 4
  br label %32

; <label>:34                                      ; preds = %32
  %tmp_4_10 = zext i32 %j_10_cast1 to i64
  %array_out_addr_71 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_10
  %array_out_load_11 = load i32* %array_out_addr_71, align 4
  %tmp_5_10 = icmp sgt i32 %array_out_load_11, %array_out_load_48
  br i1 %tmp_5_10, label %33, label %.critedge.11

.critedge.12:                                     ; preds = %37, %35
  %tmp_6_11 = zext i4 %j_0_in_11 to i64
  %array_out_addr_76 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_11
  store i32 %array_out_load_49, i32* %array_out_addr_76, align 4
  %empty_27 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_14) nounwind
  %tmp_15 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_50 = load i32* %array_out_addr_14, align 4
  br label %38

; <label>:35                                      ; preds = %36, %.critedge.11
  %j_0_in_11 = phi i4 [ -3, %.critedge.11 ], [ %tmp_47, %36 ]
  %j_0_in_11_cast = zext i4 %j_0_in_11 to i5
  %j_11 = add i5 -1, %j_0_in_11_cast
  %j_11_cast1 = sext i5 %j_11 to i32
  %tmp_47 = trunc i5 %j_11 to i4
  %tmp_3_11 = icmp eq i4 %j_0_in_11, 0
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 13, i64 7) nounwind
  br i1 %tmp_3_11, label %.critedge.12, label %37

; <label>:36                                      ; preds = %37
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_11 = zext i4 %j_0_in_11 to i64
  %array_out_addr_75 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_11
  store i32 %array_out_load_12, i32* %array_out_addr_75, align 4
  br label %35

; <label>:37                                      ; preds = %35
  %tmp_4_11 = zext i32 %j_11_cast1 to i64
  %array_out_addr_74 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_11
  %array_out_load_12 = load i32* %array_out_addr_74, align 4
  %tmp_5_11 = icmp sgt i32 %array_out_load_12, %array_out_load_49
  br i1 %tmp_5_11, label %36, label %.critedge.12

.critedge.13:                                     ; preds = %40, %38
  %tmp_6_12 = zext i4 %j_0_in_12 to i64
  %array_out_addr_79 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_12
  store i32 %array_out_load_50, i32* %array_out_addr_79, align 4
  %empty_29 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_15) nounwind
  %tmp_16 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_51 = load i32* %array_out_addr_15, align 4
  br label %41

; <label>:38                                      ; preds = %39, %.critedge.12
  %j_0_in_12 = phi i4 [ -2, %.critedge.12 ], [ %tmp_48, %39 ]
  %j_0_in_12_cast = zext i4 %j_0_in_12 to i5
  %j_12 = add i5 -1, %j_0_in_12_cast
  %j_12_cast1 = sext i5 %j_12 to i32
  %tmp_48 = trunc i5 %j_12 to i4
  %tmp_3_12 = icmp eq i4 %j_0_in_12, 0
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 14, i64 7) nounwind
  br i1 %tmp_3_12, label %.critedge.13, label %40

; <label>:39                                      ; preds = %40
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_12 = zext i4 %j_0_in_12 to i64
  %array_out_addr_78 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_12
  store i32 %array_out_load_13, i32* %array_out_addr_78, align 4
  br label %38

; <label>:40                                      ; preds = %38
  %tmp_4_12 = zext i32 %j_12_cast1 to i64
  %array_out_addr_77 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_12
  %array_out_load_13 = load i32* %array_out_addr_77, align 4
  %tmp_5_12 = icmp sgt i32 %array_out_load_13, %array_out_load_50
  br i1 %tmp_5_12, label %39, label %.critedge.13

.critedge.14:                                     ; preds = %43, %41
  %tmp_6_13 = zext i4 %j_0_in_13 to i64
  %array_out_addr_82 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_13
  store i32 %array_out_load_51, i32* %array_out_addr_82, align 4
  %empty_31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_16) nounwind
  %tmp_17 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_52 = load i32* %array_out_addr_16, align 4
  br label %44

; <label>:41                                      ; preds = %42, %.critedge.13
  %j_0_in_13 = phi i4 [ -1, %.critedge.13 ], [ %tmp_49, %42 ]
  %j_0_in_13_cast = zext i4 %j_0_in_13 to i5
  %j_13 = add i5 -1, %j_0_in_13_cast
  %j_13_cast1 = sext i5 %j_13 to i32
  %tmp_49 = trunc i5 %j_13 to i4
  %tmp_3_13 = icmp eq i4 %j_0_in_13, 0
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 15, i64 8) nounwind
  br i1 %tmp_3_13, label %.critedge.14, label %43

; <label>:42                                      ; preds = %43
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_13 = zext i4 %j_0_in_13 to i64
  %array_out_addr_81 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_13
  store i32 %array_out_load_14, i32* %array_out_addr_81, align 4
  br label %41

; <label>:43                                      ; preds = %41
  %tmp_4_13 = zext i32 %j_13_cast1 to i64
  %array_out_addr_80 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_13
  %array_out_load_14 = load i32* %array_out_addr_80, align 4
  %tmp_5_13 = icmp sgt i32 %array_out_load_14, %array_out_load_51
  br i1 %tmp_5_13, label %42, label %.critedge.14

.critedge.15:                                     ; preds = %46, %44
  %tmp_6_14 = zext i5 %j_0_in_14 to i64
  %array_out_addr_85 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_14
  store i32 %array_out_load_52, i32* %array_out_addr_85, align 4
  %empty_33 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_17) nounwind
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_53 = load i32* %array_out_addr_17, align 4
  br label %47

; <label>:44                                      ; preds = %45, %.critedge.14
  %j_0_in_14 = phi i5 [ -16, %.critedge.14 ], [ %j_14, %45 ]
  %j_14 = add i5 %j_0_in_14, -1
  %j_14_cast = sext i5 %j_14 to i32
  %tmp_3_14 = icmp eq i5 %j_0_in_14, 0
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 16, i64 8) nounwind
  br i1 %tmp_3_14, label %.critedge.15, label %46

; <label>:45                                      ; preds = %46
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_14 = zext i5 %j_0_in_14 to i64
  %array_out_addr_84 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_14
  store i32 %array_out_load_15, i32* %array_out_addr_84, align 4
  br label %44

; <label>:46                                      ; preds = %44
  %tmp_4_14 = zext i32 %j_14_cast to i64
  %array_out_addr_83 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_14
  %array_out_load_15 = load i32* %array_out_addr_83, align 4
  %tmp_5_14 = icmp sgt i32 %array_out_load_15, %array_out_load_52
  br i1 %tmp_5_14, label %45, label %.critedge.15

.critedge.16:                                     ; preds = %49, %47
  %tmp_6_15 = zext i5 %j_0_in_15 to i64
  %array_out_addr_88 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_15
  store i32 %array_out_load_53, i32* %array_out_addr_88, align 4
  %empty_35 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_18) nounwind
  %tmp_19 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_54 = load i32* %array_out_addr_18, align 4
  br label %50

; <label>:47                                      ; preds = %48, %.critedge.15
  %j_0_in_15 = phi i5 [ -15, %.critedge.15 ], [ %tmp_50, %48 ]
  %j_0_in_15_cast = zext i5 %j_0_in_15 to i6
  %j_15 = add i6 -1, %j_0_in_15_cast
  %j_15_cast1 = sext i6 %j_15 to i32
  %tmp_50 = trunc i6 %j_15 to i5
  %tmp_3_15 = icmp eq i5 %j_0_in_15, 0
  %empty_36 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 17, i64 9) nounwind
  br i1 %tmp_3_15, label %.critedge.16, label %49

; <label>:48                                      ; preds = %49
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_15 = zext i5 %j_0_in_15 to i64
  %array_out_addr_87 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_15
  store i32 %array_out_load_16, i32* %array_out_addr_87, align 4
  br label %47

; <label>:49                                      ; preds = %47
  %tmp_4_15 = zext i32 %j_15_cast1 to i64
  %array_out_addr_86 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_15
  %array_out_load_16 = load i32* %array_out_addr_86, align 4
  %tmp_5_15 = icmp sgt i32 %array_out_load_16, %array_out_load_53
  br i1 %tmp_5_15, label %48, label %.critedge.16

.critedge.17:                                     ; preds = %52, %50
  %tmp_6_16 = zext i5 %j_0_in_16 to i64
  %array_out_addr_91 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_16
  store i32 %array_out_load_54, i32* %array_out_addr_91, align 4
  %empty_37 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_19) nounwind
  %tmp_20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_55 = load i32* %array_out_addr_19, align 4
  br label %53

; <label>:50                                      ; preds = %51, %.critedge.16
  %j_0_in_16 = phi i5 [ -14, %.critedge.16 ], [ %tmp_51, %51 ]
  %j_0_in_16_cast = zext i5 %j_0_in_16 to i6
  %j_16 = add i6 -1, %j_0_in_16_cast
  %j_16_cast1 = sext i6 %j_16 to i32
  %tmp_51 = trunc i6 %j_16 to i5
  %tmp_3_16 = icmp eq i5 %j_0_in_16, 0
  %empty_38 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 18, i64 9) nounwind
  br i1 %tmp_3_16, label %.critedge.17, label %52

; <label>:51                                      ; preds = %52
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_16 = zext i5 %j_0_in_16 to i64
  %array_out_addr_90 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_16
  store i32 %array_out_load_17, i32* %array_out_addr_90, align 4
  br label %50

; <label>:52                                      ; preds = %50
  %tmp_4_16 = zext i32 %j_16_cast1 to i64
  %array_out_addr_89 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_16
  %array_out_load_17 = load i32* %array_out_addr_89, align 4
  %tmp_5_16 = icmp sgt i32 %array_out_load_17, %array_out_load_54
  br i1 %tmp_5_16, label %51, label %.critedge.17

.critedge.18:                                     ; preds = %55, %53
  %tmp_6_17 = zext i5 %j_0_in_17 to i64
  %array_out_addr_94 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_17
  store i32 %array_out_load_55, i32* %array_out_addr_94, align 4
  %empty_39 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_20) nounwind
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_56 = load i32* %array_out_addr_20, align 4
  br label %56

; <label>:53                                      ; preds = %54, %.critedge.17
  %j_0_in_17 = phi i5 [ -13, %.critedge.17 ], [ %tmp_52, %54 ]
  %j_0_in_17_cast = zext i5 %j_0_in_17 to i6
  %j_17 = add i6 -1, %j_0_in_17_cast
  %j_17_cast1 = sext i6 %j_17 to i32
  %tmp_52 = trunc i6 %j_17 to i5
  %tmp_3_17 = icmp eq i5 %j_0_in_17, 0
  %empty_40 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 19, i64 10) nounwind
  br i1 %tmp_3_17, label %.critedge.18, label %55

; <label>:54                                      ; preds = %55
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_17 = zext i5 %j_0_in_17 to i64
  %array_out_addr_93 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_17
  store i32 %array_out_load_18, i32* %array_out_addr_93, align 4
  br label %53

; <label>:55                                      ; preds = %53
  %tmp_4_17 = zext i32 %j_17_cast1 to i64
  %array_out_addr_92 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_17
  %array_out_load_18 = load i32* %array_out_addr_92, align 4
  %tmp_5_17 = icmp sgt i32 %array_out_load_18, %array_out_load_55
  br i1 %tmp_5_17, label %54, label %.critedge.18

.critedge.19:                                     ; preds = %58, %56
  %tmp_6_18 = zext i5 %j_0_in_18 to i64
  %array_out_addr_97 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_18
  store i32 %array_out_load_56, i32* %array_out_addr_97, align 4
  %empty_41 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_21) nounwind
  %tmp_22 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_57 = load i32* %array_out_addr_21, align 4
  br label %59

; <label>:56                                      ; preds = %57, %.critedge.18
  %j_0_in_18 = phi i5 [ -12, %.critedge.18 ], [ %tmp_53, %57 ]
  %j_0_in_18_cast = zext i5 %j_0_in_18 to i6
  %j_18 = add i6 -1, %j_0_in_18_cast
  %j_18_cast1 = sext i6 %j_18 to i32
  %tmp_53 = trunc i6 %j_18 to i5
  %tmp_3_18 = icmp eq i5 %j_0_in_18, 0
  %empty_42 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 20, i64 10) nounwind
  br i1 %tmp_3_18, label %.critedge.19, label %58

; <label>:57                                      ; preds = %58
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_18 = zext i5 %j_0_in_18 to i64
  %array_out_addr_96 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_18
  store i32 %array_out_load_19, i32* %array_out_addr_96, align 4
  br label %56

; <label>:58                                      ; preds = %56
  %tmp_4_18 = zext i32 %j_18_cast1 to i64
  %array_out_addr_95 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_18
  %array_out_load_19 = load i32* %array_out_addr_95, align 4
  %tmp_5_18 = icmp sgt i32 %array_out_load_19, %array_out_load_56
  br i1 %tmp_5_18, label %57, label %.critedge.19

.critedge.20:                                     ; preds = %61, %59
  %tmp_6_19 = zext i5 %j_0_in_19 to i64
  %array_out_addr_100 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_19
  store i32 %array_out_load_57, i32* %array_out_addr_100, align 4
  %empty_43 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_22) nounwind
  %tmp_23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_58 = load i32* %array_out_addr_22, align 4
  br label %62

; <label>:59                                      ; preds = %60, %.critedge.19
  %j_0_in_19 = phi i5 [ -11, %.critedge.19 ], [ %tmp_54, %60 ]
  %j_0_in_19_cast = zext i5 %j_0_in_19 to i6
  %j_19 = add i6 -1, %j_0_in_19_cast
  %j_19_cast1 = sext i6 %j_19 to i32
  %tmp_54 = trunc i6 %j_19 to i5
  %tmp_3_19 = icmp eq i5 %j_0_in_19, 0
  %empty_44 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 21, i64 11) nounwind
  br i1 %tmp_3_19, label %.critedge.20, label %61

; <label>:60                                      ; preds = %61
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_19 = zext i5 %j_0_in_19 to i64
  %array_out_addr_99 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_19
  store i32 %array_out_load_20, i32* %array_out_addr_99, align 4
  br label %59

; <label>:61                                      ; preds = %59
  %tmp_4_19 = zext i32 %j_19_cast1 to i64
  %array_out_addr_98 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_19
  %array_out_load_20 = load i32* %array_out_addr_98, align 4
  %tmp_5_19 = icmp sgt i32 %array_out_load_20, %array_out_load_57
  br i1 %tmp_5_19, label %60, label %.critedge.20

.critedge.21:                                     ; preds = %64, %62
  %tmp_6_20 = zext i5 %j_0_in_20 to i64
  %array_out_addr_103 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_20
  store i32 %array_out_load_58, i32* %array_out_addr_103, align 4
  %empty_45 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_23) nounwind
  %tmp_24 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_59 = load i32* %array_out_addr_23, align 4
  br label %65

; <label>:62                                      ; preds = %63, %.critedge.20
  %j_0_in_20 = phi i5 [ -10, %.critedge.20 ], [ %tmp_55, %63 ]
  %j_0_in_20_cast = zext i5 %j_0_in_20 to i6
  %j_20 = add i6 -1, %j_0_in_20_cast
  %j_20_cast1 = sext i6 %j_20 to i32
  %tmp_55 = trunc i6 %j_20 to i5
  %tmp_3_20 = icmp eq i5 %j_0_in_20, 0
  %empty_46 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 22, i64 11) nounwind
  br i1 %tmp_3_20, label %.critedge.21, label %64

; <label>:63                                      ; preds = %64
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_20 = zext i5 %j_0_in_20 to i64
  %array_out_addr_102 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_20
  store i32 %array_out_load_21, i32* %array_out_addr_102, align 4
  br label %62

; <label>:64                                      ; preds = %62
  %tmp_4_20 = zext i32 %j_20_cast1 to i64
  %array_out_addr_101 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_20
  %array_out_load_21 = load i32* %array_out_addr_101, align 4
  %tmp_5_20 = icmp sgt i32 %array_out_load_21, %array_out_load_58
  br i1 %tmp_5_20, label %63, label %.critedge.21

.critedge.22:                                     ; preds = %67, %65
  %tmp_6_21 = zext i5 %j_0_in_21 to i64
  %array_out_addr_106 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_21
  store i32 %array_out_load_59, i32* %array_out_addr_106, align 4
  %empty_47 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_24) nounwind
  %tmp_25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_60 = load i32* %array_out_addr_24, align 4
  br label %68

; <label>:65                                      ; preds = %66, %.critedge.21
  %j_0_in_21 = phi i5 [ -9, %.critedge.21 ], [ %tmp_56, %66 ]
  %j_0_in_21_cast = zext i5 %j_0_in_21 to i6
  %j_21 = add i6 -1, %j_0_in_21_cast
  %j_21_cast1 = sext i6 %j_21 to i32
  %tmp_56 = trunc i6 %j_21 to i5
  %tmp_3_21 = icmp eq i5 %j_0_in_21, 0
  %empty_48 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 23, i64 12) nounwind
  br i1 %tmp_3_21, label %.critedge.22, label %67

; <label>:66                                      ; preds = %67
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_21 = zext i5 %j_0_in_21 to i64
  %array_out_addr_105 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_21
  store i32 %array_out_load_22, i32* %array_out_addr_105, align 4
  br label %65

; <label>:67                                      ; preds = %65
  %tmp_4_21 = zext i32 %j_21_cast1 to i64
  %array_out_addr_104 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_21
  %array_out_load_22 = load i32* %array_out_addr_104, align 4
  %tmp_5_21 = icmp sgt i32 %array_out_load_22, %array_out_load_59
  br i1 %tmp_5_21, label %66, label %.critedge.22

.critedge.23:                                     ; preds = %70, %68
  %tmp_6_22 = zext i5 %j_0_in_22 to i64
  %array_out_addr_109 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_22
  store i32 %array_out_load_60, i32* %array_out_addr_109, align 4
  %empty_49 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_25) nounwind
  %tmp_26 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_61 = load i32* %array_out_addr_25, align 4
  br label %71

; <label>:68                                      ; preds = %69, %.critedge.22
  %j_0_in_22 = phi i5 [ -8, %.critedge.22 ], [ %tmp_57, %69 ]
  %j_0_in_22_cast = zext i5 %j_0_in_22 to i6
  %j_22 = add i6 -1, %j_0_in_22_cast
  %j_22_cast1 = sext i6 %j_22 to i32
  %tmp_57 = trunc i6 %j_22 to i5
  %tmp_3_22 = icmp eq i5 %j_0_in_22, 0
  %empty_50 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 24, i64 12) nounwind
  br i1 %tmp_3_22, label %.critedge.23, label %70

; <label>:69                                      ; preds = %70
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_22 = zext i5 %j_0_in_22 to i64
  %array_out_addr_108 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_22
  store i32 %array_out_load_23, i32* %array_out_addr_108, align 4
  br label %68

; <label>:70                                      ; preds = %68
  %tmp_4_22 = zext i32 %j_22_cast1 to i64
  %array_out_addr_107 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_22
  %array_out_load_23 = load i32* %array_out_addr_107, align 4
  %tmp_5_22 = icmp sgt i32 %array_out_load_23, %array_out_load_60
  br i1 %tmp_5_22, label %69, label %.critedge.23

.critedge.24:                                     ; preds = %73, %71
  %tmp_6_23 = zext i5 %j_0_in_23 to i64
  %array_out_addr_112 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_23
  store i32 %array_out_load_61, i32* %array_out_addr_112, align 4
  %empty_51 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_26) nounwind
  %tmp_27 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_62 = load i32* %array_out_addr_26, align 4
  br label %74

; <label>:71                                      ; preds = %72, %.critedge.23
  %j_0_in_23 = phi i5 [ -7, %.critedge.23 ], [ %tmp_58, %72 ]
  %j_0_in_23_cast = zext i5 %j_0_in_23 to i6
  %j_23 = add i6 -1, %j_0_in_23_cast
  %j_23_cast1 = sext i6 %j_23 to i32
  %tmp_58 = trunc i6 %j_23 to i5
  %tmp_3_23 = icmp eq i5 %j_0_in_23, 0
  %empty_52 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 25, i64 13) nounwind
  br i1 %tmp_3_23, label %.critedge.24, label %73

; <label>:72                                      ; preds = %73
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_23 = zext i5 %j_0_in_23 to i64
  %array_out_addr_111 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_23
  store i32 %array_out_load_24, i32* %array_out_addr_111, align 4
  br label %71

; <label>:73                                      ; preds = %71
  %tmp_4_23 = zext i32 %j_23_cast1 to i64
  %array_out_addr_110 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_23
  %array_out_load_24 = load i32* %array_out_addr_110, align 4
  %tmp_5_23 = icmp sgt i32 %array_out_load_24, %array_out_load_61
  br i1 %tmp_5_23, label %72, label %.critedge.24

.critedge.25:                                     ; preds = %76, %74
  %tmp_6_24 = zext i5 %j_0_in_24 to i64
  %array_out_addr_115 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_24
  store i32 %array_out_load_62, i32* %array_out_addr_115, align 4
  %empty_53 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_27) nounwind
  %tmp_28 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_63 = load i32* %array_out_addr_27, align 4
  br label %77

; <label>:74                                      ; preds = %75, %.critedge.24
  %j_0_in_24 = phi i5 [ -6, %.critedge.24 ], [ %tmp_59, %75 ]
  %j_0_in_24_cast = zext i5 %j_0_in_24 to i6
  %j_24 = add i6 -1, %j_0_in_24_cast
  %j_24_cast1 = sext i6 %j_24 to i32
  %tmp_59 = trunc i6 %j_24 to i5
  %tmp_3_24 = icmp eq i5 %j_0_in_24, 0
  %empty_54 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 26, i64 13) nounwind
  br i1 %tmp_3_24, label %.critedge.25, label %76

; <label>:75                                      ; preds = %76
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_24 = zext i5 %j_0_in_24 to i64
  %array_out_addr_114 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_24
  store i32 %array_out_load_25, i32* %array_out_addr_114, align 4
  br label %74

; <label>:76                                      ; preds = %74
  %tmp_4_24 = zext i32 %j_24_cast1 to i64
  %array_out_addr_113 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_24
  %array_out_load_25 = load i32* %array_out_addr_113, align 4
  %tmp_5_24 = icmp sgt i32 %array_out_load_25, %array_out_load_62
  br i1 %tmp_5_24, label %75, label %.critedge.25

.critedge.26:                                     ; preds = %79, %77
  %tmp_6_25 = zext i5 %j_0_in_25 to i64
  %array_out_addr_118 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_25
  store i32 %array_out_load_63, i32* %array_out_addr_118, align 4
  %empty_55 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_28) nounwind
  %tmp_29 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_64 = load i32* %array_out_addr_28, align 4
  br label %80

; <label>:77                                      ; preds = %78, %.critedge.25
  %j_0_in_25 = phi i5 [ -5, %.critedge.25 ], [ %tmp_60, %78 ]
  %j_0_in_25_cast = zext i5 %j_0_in_25 to i6
  %j_25 = add i6 -1, %j_0_in_25_cast
  %j_25_cast1 = sext i6 %j_25 to i32
  %tmp_60 = trunc i6 %j_25 to i5
  %tmp_3_25 = icmp eq i5 %j_0_in_25, 0
  %empty_56 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 27, i64 14) nounwind
  br i1 %tmp_3_25, label %.critedge.26, label %79

; <label>:78                                      ; preds = %79
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_25 = zext i5 %j_0_in_25 to i64
  %array_out_addr_117 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_25
  store i32 %array_out_load_26, i32* %array_out_addr_117, align 4
  br label %77

; <label>:79                                      ; preds = %77
  %tmp_4_25 = zext i32 %j_25_cast1 to i64
  %array_out_addr_116 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_25
  %array_out_load_26 = load i32* %array_out_addr_116, align 4
  %tmp_5_25 = icmp sgt i32 %array_out_load_26, %array_out_load_63
  br i1 %tmp_5_25, label %78, label %.critedge.26

.critedge.27:                                     ; preds = %82, %80
  %tmp_6_26 = zext i5 %j_0_in_26 to i64
  %array_out_addr_121 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_26
  store i32 %array_out_load_64, i32* %array_out_addr_121, align 4
  %empty_57 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_29) nounwind
  %tmp_30 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_65 = load i32* %array_out_addr_29, align 4
  br label %83

; <label>:80                                      ; preds = %81, %.critedge.26
  %j_0_in_26 = phi i5 [ -4, %.critedge.26 ], [ %tmp_61, %81 ]
  %j_0_in_26_cast = zext i5 %j_0_in_26 to i6
  %j_26 = add i6 -1, %j_0_in_26_cast
  %j_26_cast1 = sext i6 %j_26 to i32
  %tmp_61 = trunc i6 %j_26 to i5
  %tmp_3_26 = icmp eq i5 %j_0_in_26, 0
  %empty_58 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 28, i64 14) nounwind
  br i1 %tmp_3_26, label %.critedge.27, label %82

; <label>:81                                      ; preds = %82
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_26 = zext i5 %j_0_in_26 to i64
  %array_out_addr_120 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_26
  store i32 %array_out_load_27, i32* %array_out_addr_120, align 4
  br label %80

; <label>:82                                      ; preds = %80
  %tmp_4_26 = zext i32 %j_26_cast1 to i64
  %array_out_addr_119 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_26
  %array_out_load_27 = load i32* %array_out_addr_119, align 4
  %tmp_5_26 = icmp sgt i32 %array_out_load_27, %array_out_load_64
  br i1 %tmp_5_26, label %81, label %.critedge.27

.critedge.28:                                     ; preds = %85, %83
  %tmp_6_27 = zext i5 %j_0_in_27 to i64
  %array_out_addr_124 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_27
  store i32 %array_out_load_65, i32* %array_out_addr_124, align 4
  %empty_59 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_30) nounwind
  %tmp_31 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_66 = load i32* %array_out_addr_30, align 4
  br label %86

; <label>:83                                      ; preds = %84, %.critedge.27
  %j_0_in_27 = phi i5 [ -3, %.critedge.27 ], [ %tmp_62, %84 ]
  %j_0_in_27_cast = zext i5 %j_0_in_27 to i6
  %j_27 = add i6 -1, %j_0_in_27_cast
  %j_27_cast1 = sext i6 %j_27 to i32
  %tmp_62 = trunc i6 %j_27 to i5
  %tmp_3_27 = icmp eq i5 %j_0_in_27, 0
  %empty_60 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 29, i64 15) nounwind
  br i1 %tmp_3_27, label %.critedge.28, label %85

; <label>:84                                      ; preds = %85
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_27 = zext i5 %j_0_in_27 to i64
  %array_out_addr_123 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_27
  store i32 %array_out_load_28, i32* %array_out_addr_123, align 4
  br label %83

; <label>:85                                      ; preds = %83
  %tmp_4_27 = zext i32 %j_27_cast1 to i64
  %array_out_addr_122 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_27
  %array_out_load_28 = load i32* %array_out_addr_122, align 4
  %tmp_5_27 = icmp sgt i32 %array_out_load_28, %array_out_load_65
  br i1 %tmp_5_27, label %84, label %.critedge.28

.critedge.29:                                     ; preds = %88, %86
  %tmp_6_28 = zext i5 %j_0_in_28 to i64
  %array_out_addr_127 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_28
  store i32 %array_out_load_66, i32* %array_out_addr_127, align 4
  %empty_61 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_31) nounwind
  %tmp_32 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_67 = load i32* %array_out_addr_31, align 4
  br label %89

; <label>:86                                      ; preds = %87, %.critedge.28
  %j_0_in_28 = phi i5 [ -2, %.critedge.28 ], [ %tmp_63, %87 ]
  %j_0_in_28_cast = zext i5 %j_0_in_28 to i6
  %j_28 = add i6 -1, %j_0_in_28_cast
  %j_28_cast1 = sext i6 %j_28 to i32
  %tmp_63 = trunc i6 %j_28 to i5
  %tmp_3_28 = icmp eq i5 %j_0_in_28, 0
  %empty_62 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 30, i64 15) nounwind
  br i1 %tmp_3_28, label %.critedge.29, label %88

; <label>:87                                      ; preds = %88
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_28 = zext i5 %j_0_in_28 to i64
  %array_out_addr_126 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_28
  store i32 %array_out_load_29, i32* %array_out_addr_126, align 4
  br label %86

; <label>:88                                      ; preds = %86
  %tmp_4_28 = zext i32 %j_28_cast1 to i64
  %array_out_addr_125 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_28
  %array_out_load_29 = load i32* %array_out_addr_125, align 4
  %tmp_5_28 = icmp sgt i32 %array_out_load_29, %array_out_load_66
  br i1 %tmp_5_28, label %87, label %.critedge.29

.critedge.30:                                     ; preds = %91, %89
  %tmp_6_29 = zext i5 %j_0_in_29 to i64
  %array_out_addr_130 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_29
  store i32 %array_out_load_67, i32* %array_out_addr_130, align 4
  %empty_63 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_32) nounwind
  %tmp_33 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_68 = load i32* %array_out_addr_32, align 4
  br label %92

; <label>:89                                      ; preds = %90, %.critedge.29
  %j_0_in_29 = phi i5 [ -1, %.critedge.29 ], [ %tmp_64, %90 ]
  %j_0_in_29_cast = zext i5 %j_0_in_29 to i6
  %j_29 = add i6 -1, %j_0_in_29_cast
  %j_29_cast1 = sext i6 %j_29 to i32
  %tmp_64 = trunc i6 %j_29 to i5
  %tmp_3_29 = icmp eq i5 %j_0_in_29, 0
  %empty_64 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 31, i64 16) nounwind
  br i1 %tmp_3_29, label %.critedge.30, label %91

; <label>:90                                      ; preds = %91
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_29 = zext i5 %j_0_in_29 to i64
  %array_out_addr_129 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_29
  store i32 %array_out_load_30, i32* %array_out_addr_129, align 4
  br label %89

; <label>:91                                      ; preds = %89
  %tmp_4_29 = zext i32 %j_29_cast1 to i64
  %array_out_addr_128 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_29
  %array_out_load_30 = load i32* %array_out_addr_128, align 4
  %tmp_5_29 = icmp sgt i32 %array_out_load_30, %array_out_load_67
  br i1 %tmp_5_29, label %90, label %.critedge.30

.critedge.31:                                     ; preds = %94, %92
  %tmp_6_30 = zext i6 %j_0_in_30 to i64
  %array_out_addr_133 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_30
  store i32 %array_out_load_68, i32* %array_out_addr_133, align 4
  %empty_65 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_33) nounwind
  %tmp_34 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_69 = load i32* %array_out_addr_33, align 4
  br label %95

; <label>:92                                      ; preds = %93, %.critedge.30
  %j_0_in_30 = phi i6 [ -32, %.critedge.30 ], [ %j_30, %93 ]
  %j_30 = add i6 %j_0_in_30, -1
  %j_30_cast = sext i6 %j_30 to i32
  %tmp_3_30 = icmp eq i6 %j_0_in_30, 0
  %empty_66 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 32, i64 16) nounwind
  br i1 %tmp_3_30, label %.critedge.31, label %94

; <label>:93                                      ; preds = %94
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_30 = zext i6 %j_0_in_30 to i64
  %array_out_addr_132 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_30
  store i32 %array_out_load_31, i32* %array_out_addr_132, align 4
  br label %92

; <label>:94                                      ; preds = %92
  %tmp_4_30 = zext i32 %j_30_cast to i64
  %array_out_addr_131 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_30
  %array_out_load_31 = load i32* %array_out_addr_131, align 4
  %tmp_5_30 = icmp sgt i32 %array_out_load_31, %array_out_load_68
  br i1 %tmp_5_30, label %93, label %.critedge.31

.critedge.32:                                     ; preds = %97, %95
  %tmp_6_31 = zext i6 %j_0_in_31 to i64
  %array_out_addr_136 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_31
  store i32 %array_out_load_69, i32* %array_out_addr_136, align 4
  %empty_67 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_34) nounwind
  %tmp_35 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_70 = load i32* %array_out_addr_34, align 4
  br label %98

; <label>:95                                      ; preds = %96, %.critedge.31
  %j_0_in_31 = phi i6 [ -31, %.critedge.31 ], [ %tmp_65, %96 ]
  %j_0_in_31_cast = zext i6 %j_0_in_31 to i7
  %j_31 = add i7 -1, %j_0_in_31_cast
  %j_31_cast1 = sext i7 %j_31 to i32
  %tmp_65 = trunc i7 %j_31 to i6
  %tmp_3_31 = icmp eq i6 %j_0_in_31, 0
  %empty_68 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 33, i64 17) nounwind
  br i1 %tmp_3_31, label %.critedge.32, label %97

; <label>:96                                      ; preds = %97
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_31 = zext i6 %j_0_in_31 to i64
  %array_out_addr_135 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_31
  store i32 %array_out_load_32, i32* %array_out_addr_135, align 4
  br label %95

; <label>:97                                      ; preds = %95
  %tmp_4_31 = zext i32 %j_31_cast1 to i64
  %array_out_addr_134 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_31
  %array_out_load_32 = load i32* %array_out_addr_134, align 4
  %tmp_5_31 = icmp sgt i32 %array_out_load_32, %array_out_load_69
  br i1 %tmp_5_31, label %96, label %.critedge.32

.critedge.33:                                     ; preds = %100, %98
  %tmp_6_32 = zext i6 %j_0_in_32 to i64
  %array_out_addr_139 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_32
  store i32 %array_out_load_70, i32* %array_out_addr_139, align 4
  %empty_69 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_35) nounwind
  %tmp_36 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_71 = load i32* %array_out_addr_35, align 4
  br label %101

; <label>:98                                      ; preds = %99, %.critedge.32
  %j_0_in_32 = phi i6 [ -30, %.critedge.32 ], [ %tmp_66, %99 ]
  %j_0_in_32_cast = zext i6 %j_0_in_32 to i7
  %j_32 = add i7 -1, %j_0_in_32_cast
  %j_32_cast1 = sext i7 %j_32 to i32
  %tmp_66 = trunc i7 %j_32 to i6
  %tmp_3_32 = icmp eq i6 %j_0_in_32, 0
  %empty_70 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 34, i64 17) nounwind
  br i1 %tmp_3_32, label %.critedge.33, label %100

; <label>:99                                      ; preds = %100
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_32 = zext i6 %j_0_in_32 to i64
  %array_out_addr_138 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_32
  store i32 %array_out_load_33, i32* %array_out_addr_138, align 4
  br label %98

; <label>:100                                     ; preds = %98
  %tmp_4_32 = zext i32 %j_32_cast1 to i64
  %array_out_addr_137 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_32
  %array_out_load_33 = load i32* %array_out_addr_137, align 4
  %tmp_5_32 = icmp sgt i32 %array_out_load_33, %array_out_load_70
  br i1 %tmp_5_32, label %99, label %.critedge.33

.critedge.34:                                     ; preds = %103, %101
  %tmp_6_33 = zext i6 %j_0_in_33 to i64
  %array_out_addr_142 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_33
  store i32 %array_out_load_71, i32* %array_out_addr_142, align 4
  %empty_71 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_36) nounwind
  %tmp_37 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_72 = load i32* %array_out_addr_36, align 4
  br label %104

; <label>:101                                     ; preds = %102, %.critedge.33
  %j_0_in_33 = phi i6 [ -29, %.critedge.33 ], [ %tmp_67, %102 ]
  %j_0_in_33_cast = zext i6 %j_0_in_33 to i7
  %j_33 = add i7 -1, %j_0_in_33_cast
  %j_33_cast9 = sext i7 %j_33 to i32
  %tmp_67 = trunc i7 %j_33 to i6
  %tmp_3_33 = icmp eq i6 %j_0_in_33, 0
  %empty_72 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 35, i64 18) nounwind
  br i1 %tmp_3_33, label %.critedge.34, label %103

; <label>:102                                     ; preds = %103
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_33 = zext i6 %j_0_in_33 to i64
  %array_out_addr_141 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_33
  store i32 %array_out_load_34, i32* %array_out_addr_141, align 4
  br label %101

; <label>:103                                     ; preds = %101
  %tmp_4_33 = zext i32 %j_33_cast9 to i64
  %array_out_addr_140 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_33
  %array_out_load_34 = load i32* %array_out_addr_140, align 4
  %tmp_5_33 = icmp sgt i32 %array_out_load_34, %array_out_load_71
  br i1 %tmp_5_33, label %102, label %.critedge.34

.critedge.35:                                     ; preds = %106, %104
  %tmp_6_34 = zext i6 %j_0_in_34 to i64
  %array_out_addr_145 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_34
  store i32 %array_out_load_72, i32* %array_out_addr_145, align 4
  %empty_73 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_37) nounwind
  %tmp_38 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_73 = load i32* %array_out_addr_37, align 4
  br label %107

; <label>:104                                     ; preds = %105, %.critedge.34
  %j_0_in_34 = phi i6 [ -28, %.critedge.34 ], [ %tmp_68, %105 ]
  %j_0_in_34_cast = zext i6 %j_0_in_34 to i7
  %j_34 = add i7 -1, %j_0_in_34_cast
  %j_34_cast7 = sext i7 %j_34 to i32
  %tmp_68 = trunc i7 %j_34 to i6
  %tmp_3_34 = icmp eq i6 %j_0_in_34, 0
  %empty_74 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 36, i64 18) nounwind
  br i1 %tmp_3_34, label %.critedge.35, label %106

; <label>:105                                     ; preds = %106
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_34 = zext i6 %j_0_in_34 to i64
  %array_out_addr_144 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_34
  store i32 %array_out_load_35, i32* %array_out_addr_144, align 4
  br label %104

; <label>:106                                     ; preds = %104
  %tmp_4_34 = zext i32 %j_34_cast7 to i64
  %array_out_addr_143 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_34
  %array_out_load_35 = load i32* %array_out_addr_143, align 4
  %tmp_5_34 = icmp sgt i32 %array_out_load_35, %array_out_load_72
  br i1 %tmp_5_34, label %105, label %.critedge.35

.critedge.36:                                     ; preds = %109, %107
  %tmp_6_35 = zext i6 %j_0_in_35 to i64
  %array_out_addr_148 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_35
  store i32 %array_out_load_73, i32* %array_out_addr_148, align 4
  %empty_75 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_38) nounwind
  %tmp_39 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_74 = load i32* %array_out_addr_38, align 4
  br label %110

; <label>:107                                     ; preds = %108, %.critedge.35
  %j_0_in_35 = phi i6 [ -27, %.critedge.35 ], [ %tmp_69, %108 ]
  %j_0_in_35_cast = zext i6 %j_0_in_35 to i7
  %j_35 = add i7 -1, %j_0_in_35_cast
  %j_35_cast5 = sext i7 %j_35 to i32
  %tmp_69 = trunc i7 %j_35 to i6
  %tmp_3_35 = icmp eq i6 %j_0_in_35, 0
  %empty_76 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 37, i64 19) nounwind
  br i1 %tmp_3_35, label %.critedge.36, label %109

; <label>:108                                     ; preds = %109
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_35 = zext i6 %j_0_in_35 to i64
  %array_out_addr_147 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_35
  store i32 %array_out_load_36, i32* %array_out_addr_147, align 4
  br label %107

; <label>:109                                     ; preds = %107
  %tmp_4_35 = zext i32 %j_35_cast5 to i64
  %array_out_addr_146 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_35
  %array_out_load_36 = load i32* %array_out_addr_146, align 4
  %tmp_5_35 = icmp sgt i32 %array_out_load_36, %array_out_load_73
  br i1 %tmp_5_35, label %108, label %.critedge.36

.critedge.37:                                     ; preds = %112, %110
  %tmp_6_36 = zext i6 %j_0_in_36 to i64
  %array_out_addr_151 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_36
  store i32 %array_out_load_74, i32* %array_out_addr_151, align 4
  %empty_77 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_39) nounwind
  %tmp_40 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  %array_out_load_75 = load i32* %array_out_addr_39, align 4
  br label %113

; <label>:110                                     ; preds = %111, %.critedge.36
  %j_0_in_36 = phi i6 [ -26, %.critedge.36 ], [ %tmp_70, %111 ]
  %j_0_in_36_cast = zext i6 %j_0_in_36 to i7
  %j_36 = add i7 -1, %j_0_in_36_cast
  %j_36_cast3 = sext i7 %j_36 to i32
  %tmp_70 = trunc i7 %j_36 to i6
  %tmp_3_36 = icmp eq i6 %j_0_in_36, 0
  %empty_78 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 38, i64 19) nounwind
  br i1 %tmp_3_36, label %.critedge.37, label %112

; <label>:111                                     ; preds = %112
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_36 = zext i6 %j_0_in_36 to i64
  %array_out_addr_150 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_36
  store i32 %array_out_load_37, i32* %array_out_addr_150, align 4
  br label %110

; <label>:112                                     ; preds = %110
  %tmp_4_36 = zext i32 %j_36_cast3 to i64
  %array_out_addr_149 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_36
  %array_out_load_37 = load i32* %array_out_addr_149, align 4
  %tmp_5_36 = icmp sgt i32 %array_out_load_37, %array_out_load_74
  br i1 %tmp_5_36, label %111, label %.critedge.37

.critedge.38:                                     ; preds = %115, %113
  %tmp_6_37 = zext i6 %j_0_in_37 to i64
  %array_out_addr_154 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6_37
  store i32 %array_out_load_75, i32* %array_out_addr_154, align 4
  %empty_79 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_40) nounwind
  ret void

; <label>:113                                     ; preds = %114, %.critedge.37
  %j_0_in_37 = phi i6 [ -25, %.critedge.37 ], [ %tmp_71, %114 ]
  %j_0_in_37_cast = zext i6 %j_0_in_37 to i7
  %j_37 = add i7 -1, %j_0_in_37_cast
  %j_37_cast1 = sext i7 %j_37 to i32
  %tmp_71 = trunc i7 %j_37 to i6
  %tmp_3_37 = icmp eq i6 %j_0_in_37, 0
  %empty_80 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 39, i64 20) nounwind
  br i1 %tmp_3_37, label %.critedge.38, label %115

; <label>:114                                     ; preds = %115
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_8_37 = zext i6 %j_0_in_37 to i64
  %array_out_addr_153 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_8_37
  store i32 %array_out_load_38, i32* %array_out_addr_153, align 4
  br label %113

; <label>:115                                     ; preds = %113
  %tmp_4_37 = zext i32 %j_37_cast1 to i64
  %array_out_addr_152 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4_37
  %array_out_load_38 = load i32* %array_out_addr_152, align 4
  %tmp_5_37 = icmp sgt i32 %array_out_load_38, %array_out_load_75
  br i1 %tmp_5_37, label %114, label %.critedge.38
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

declare i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

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

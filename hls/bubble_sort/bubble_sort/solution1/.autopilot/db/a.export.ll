; ModuleID = 'D:/trabajo_DSE_EnrLuc/hls/bubble_sort/bubble_sort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@bubble_sort_str = internal unnamed_addr constant [12 x i8] c"bubble_sort\00"
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str5 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str4 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str3 = private unnamed_addr constant [5 x i8] c"SORT\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @bubble_sort([40 x i32]* %array_r, [40 x i32]* %array_out) nounwind uwtable {
.preheader.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %array_r) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %array_out) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bubble_sort_str) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([40 x i32]* %array_out, [1 x i8]* @p_str5, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str5, i32 -1, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %array_out, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %empty_2 = call i32 (...)* @_ssdm_op_SpecMemCore([40 x i32]* %array_r, [1 x i8]* @p_str4, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str4, i32 -1, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4) nounwind
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
  %array_out_addr_17 = getelementptr [40 x i32]* %array_out, i64 0, i64 16
  store i32 %array_load_16, i32* %array_out_addr_17, align 4
  %array_addr_17 = getelementptr [40 x i32]* %array_r, i64 0, i64 17
  %array_load_17 = load i32* %array_addr_17, align 4
  %array_out_addr_18 = getelementptr [40 x i32]* %array_out, i64 0, i64 17
  store i32 %array_load_17, i32* %array_out_addr_18, align 4
  %array_addr_18 = getelementptr [40 x i32]* %array_r, i64 0, i64 18
  %array_load_18 = load i32* %array_addr_18, align 4
  %array_out_addr_19 = getelementptr [40 x i32]* %array_out, i64 0, i64 18
  store i32 %array_load_18, i32* %array_out_addr_19, align 4
  %array_addr_19 = getelementptr [40 x i32]* %array_r, i64 0, i64 19
  %array_load_19 = load i32* %array_addr_19, align 4
  %array_out_addr_20 = getelementptr [40 x i32]* %array_out, i64 0, i64 19
  store i32 %array_load_19, i32* %array_out_addr_20, align 4
  %array_addr_20 = getelementptr [40 x i32]* %array_r, i64 0, i64 20
  %array_load_20 = load i32* %array_addr_20, align 4
  %array_out_addr_21 = getelementptr [40 x i32]* %array_out, i64 0, i64 20
  store i32 %array_load_20, i32* %array_out_addr_21, align 4
  %array_addr_21 = getelementptr [40 x i32]* %array_r, i64 0, i64 21
  %array_load_21 = load i32* %array_addr_21, align 4
  %array_out_addr_22 = getelementptr [40 x i32]* %array_out, i64 0, i64 21
  store i32 %array_load_21, i32* %array_out_addr_22, align 4
  %array_addr_22 = getelementptr [40 x i32]* %array_r, i64 0, i64 22
  %array_load_22 = load i32* %array_addr_22, align 4
  %array_out_addr_23 = getelementptr [40 x i32]* %array_out, i64 0, i64 22
  store i32 %array_load_22, i32* %array_out_addr_23, align 4
  %array_addr_23 = getelementptr [40 x i32]* %array_r, i64 0, i64 23
  %array_load_23 = load i32* %array_addr_23, align 4
  %array_out_addr_24 = getelementptr [40 x i32]* %array_out, i64 0, i64 23
  store i32 %array_load_23, i32* %array_out_addr_24, align 4
  %array_addr_24 = getelementptr [40 x i32]* %array_r, i64 0, i64 24
  %array_load_24 = load i32* %array_addr_24, align 4
  %array_out_addr_25 = getelementptr [40 x i32]* %array_out, i64 0, i64 24
  store i32 %array_load_24, i32* %array_out_addr_25, align 4
  %array_addr_25 = getelementptr [40 x i32]* %array_r, i64 0, i64 25
  %array_load_25 = load i32* %array_addr_25, align 4
  %array_out_addr_26 = getelementptr [40 x i32]* %array_out, i64 0, i64 25
  store i32 %array_load_25, i32* %array_out_addr_26, align 4
  %array_addr_26 = getelementptr [40 x i32]* %array_r, i64 0, i64 26
  %array_load_26 = load i32* %array_addr_26, align 4
  %array_out_addr_27 = getelementptr [40 x i32]* %array_out, i64 0, i64 26
  store i32 %array_load_26, i32* %array_out_addr_27, align 4
  %array_addr_27 = getelementptr [40 x i32]* %array_r, i64 0, i64 27
  %array_load_27 = load i32* %array_addr_27, align 4
  %array_out_addr_29 = getelementptr [40 x i32]* %array_out, i64 0, i64 27
  store i32 %array_load_27, i32* %array_out_addr_29, align 4
  %array_addr_28 = getelementptr [40 x i32]* %array_r, i64 0, i64 28
  %array_load_28 = load i32* %array_addr_28, align 4
  %array_out_addr_30 = getelementptr [40 x i32]* %array_out, i64 0, i64 28
  store i32 %array_load_28, i32* %array_out_addr_30, align 4
  %array_addr_29 = getelementptr [40 x i32]* %array_r, i64 0, i64 29
  %array_load_29 = load i32* %array_addr_29, align 4
  %array_out_addr_31 = getelementptr [40 x i32]* %array_out, i64 0, i64 29
  store i32 %array_load_29, i32* %array_out_addr_31, align 4
  %array_addr_30 = getelementptr [40 x i32]* %array_r, i64 0, i64 30
  %array_load_30 = load i32* %array_addr_30, align 4
  %array_out_addr_32 = getelementptr [40 x i32]* %array_out, i64 0, i64 30
  store i32 %array_load_30, i32* %array_out_addr_32, align 4
  %array_addr_31 = getelementptr [40 x i32]* %array_r, i64 0, i64 31
  %array_load_31 = load i32* %array_addr_31, align 4
  %array_out_addr_33 = getelementptr [40 x i32]* %array_out, i64 0, i64 31
  store i32 %array_load_31, i32* %array_out_addr_33, align 4
  %array_addr_32 = getelementptr [40 x i32]* %array_r, i64 0, i64 32
  %array_load_32 = load i32* %array_addr_32, align 4
  %array_out_addr_34 = getelementptr [40 x i32]* %array_out, i64 0, i64 32
  store i32 %array_load_32, i32* %array_out_addr_34, align 4
  %array_addr_33 = getelementptr [40 x i32]* %array_r, i64 0, i64 33
  %array_load_33 = load i32* %array_addr_33, align 4
  %array_out_addr_35 = getelementptr [40 x i32]* %array_out, i64 0, i64 33
  store i32 %array_load_33, i32* %array_out_addr_35, align 4
  %array_addr_34 = getelementptr [40 x i32]* %array_r, i64 0, i64 34
  %array_load_34 = load i32* %array_addr_34, align 4
  %array_out_addr_36 = getelementptr [40 x i32]* %array_out, i64 0, i64 34
  store i32 %array_load_34, i32* %array_out_addr_36, align 4
  %array_addr_35 = getelementptr [40 x i32]* %array_r, i64 0, i64 35
  %array_load_35 = load i32* %array_addr_35, align 4
  %array_out_addr_37 = getelementptr [40 x i32]* %array_out, i64 0, i64 35
  store i32 %array_load_35, i32* %array_out_addr_37, align 4
  %array_addr_36 = getelementptr [40 x i32]* %array_r, i64 0, i64 36
  %array_load_36 = load i32* %array_addr_36, align 4
  %array_out_addr_38 = getelementptr [40 x i32]* %array_out, i64 0, i64 36
  store i32 %array_load_36, i32* %array_out_addr_38, align 4
  %array_addr_37 = getelementptr [40 x i32]* %array_r, i64 0, i64 37
  %array_load_37 = load i32* %array_addr_37, align 4
  %array_out_addr_39 = getelementptr [40 x i32]* %array_out, i64 0, i64 37
  store i32 %array_load_37, i32* %array_out_addr_39, align 4
  %array_addr_38 = getelementptr [40 x i32]* %array_r, i64 0, i64 38
  %array_load_38 = load i32* %array_addr_38, align 4
  %array_out_addr_40 = getelementptr [40 x i32]* %array_out, i64 0, i64 38
  store i32 %array_load_38, i32* %array_out_addr_40, align 4
  %array_addr_39 = getelementptr [40 x i32]* %array_r, i64 0, i64 39
  %array_load_39 = load i32* %array_addr_39, align 4
  %array_out_addr_41 = getelementptr [40 x i32]* %array_out, i64 0, i64 39
  store i32 %array_load_39, i32* %array_out_addr_41, align 4
  br label %.preheader

.preheader:                                       ; preds = %4, %.preheader.preheader
  %indvars_iv = phi i6 [ %indvars_iv_next, %4 ], [ -25, %.preheader.preheader ]
  %i = phi i6 [ %i_1, %4 ], [ 0, %.preheader.preheader ]
  %exitcond1 = icmp eq i6 %i, -25
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 39, i64 39, i64 39) nounwind
  %i_1 = add i6 %i, 1
  br i1 %exitcond1, label %5, label %0

; <label>:0                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str3) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3) nounwind
  br label %1

; <label>:1                                       ; preds = %._crit_edge, %0
  %j = phi i6 [ 0, %0 ], [ %j_1, %._crit_edge ]
  %exitcond = icmp eq i6 %j, %indvars_iv
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 39, i64 0) nounwind
  %j_1 = add i6 %j, 1
  br i1 %exitcond, label %4, label %2

; <label>:2                                       ; preds = %1
  %tmp_3 = zext i6 %j to i64
  %array_out_addr_16 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_3
  %temporal = load i32* %array_out_addr_16, align 4
  %tmp_5 = zext i6 %j_1 to i64
  %array_out_addr_28 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_5
  %array_out_load_1 = load i32* %array_out_addr_28, align 4
  %tmp_6 = icmp sgt i32 %temporal, %array_out_load_1
  br i1 %tmp_6, label %3, label %._crit_edge

; <label>:3                                       ; preds = %2
  store i32 %array_out_load_1, i32* %array_out_addr_16, align 4
  store i32 %temporal, i32* %array_out_addr_28, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %3, %2
  br label %1

; <label>:4                                       ; preds = %1
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_s) nounwind
  %indvars_iv_next = add i6 %indvars_iv, -1
  br label %.preheader

; <label>:5                                       ; preds = %.preheader
  ret void
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

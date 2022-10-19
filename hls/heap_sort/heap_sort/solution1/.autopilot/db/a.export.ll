; ModuleID = 'D:/trabajo_DSE_EnrLuc/hls/heap_sort/heap_sort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@heap_sort_str = internal unnamed_addr constant [10 x i8] c"heap_sort\00"
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"SWAP\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define internal fastcc { i32, i32 } @heap_sort_swap_hw(i32 %x_read, i32 %y_read) readnone {
  %y_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %y_read)
  %x_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %x_read)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %mrv = insertvalue { i32, i32 } undef, i32 %y_read_1, 0
  %mrv_1 = insertvalue { i32, i32 } %mrv, i32 %x_read_1, 1
  ret { i32, i32 } %mrv_1
}

declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @heap_sort([40 x i32]* %array_r, [40 x i32]* %array_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %array_r) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %array_out) nounwind, !map !6
  %array_out_addr = getelementptr [40 x i32]* %array_out, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @heap_sort_str) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([40 x i32]* %array_out, [1 x i8]* @p_str, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %array_out, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str) nounwind
  %empty_6 = call i32 (...)* @_ssdm_op_SpecMemCore([40 x i32]* %array_r, [1 x i8]* @p_str, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %array_r, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str) nounwind
  %array_addr = getelementptr [40 x i32]* %array_r, i64 0, i64 0
  %array_load = load i32* %array_addr, align 4
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
  br label %1

; <label>:1                                       ; preds = %.loopexit.i, %0
  %j_2 = phi i6 [ 1, %0 ], [ %i_2, %.loopexit.i ]
  %j_i_cast1 = zext i6 %j_2 to i32
  %exitcond_i = icmp eq i6 %j_2, -24
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 39, i64 39, i64 39) nounwind
  br i1 %exitcond_i, label %.loopexit, label %2

; <label>:2                                       ; preds = %1
  %tmp_i = zext i6 %j_2 to i64
  %array_out_addr_45 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_i
  %array_out_load_6 = load i32* %array_out_addr_45, align 4
  %tmp_tr_i = add i6 %j_2, -1
  %p_lshr_f_i_cast = call i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6 %tmp_tr_i, i32 1, i32 5)
  %tmp_i_8 = zext i5 %p_lshr_f_i_cast to i64
  %array_out_addr_46 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_i_8
  %array_out_load_7 = load i32* %array_out_addr_46, align 4
  %tmp_11_i = icmp sgt i32 %array_out_load_6, %array_out_load_7
  br i1 %tmp_11_i, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %2, %3
  %j2_i = phi i32 [ %j_3, %3 ], [ %j_i_cast1, %2 ]
  %tmp_12_i = sext i32 %j2_i to i64
  %array_out_addr_47 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_12_i
  %array_out_load_8 = load i32* %array_out_addr_47, align 4
  %tmp_13_i = add nsw i32 %j2_i, -1
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %tmp_13_i, i32 31)
  %p_neg1_i = sub i32 1, %j2_i
  %p_lshr1_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg1_i, i32 1, i32 31)
  %tmp = zext i31 %p_lshr1_i to i32
  %p_neg_t1_i = sub i32 0, %tmp
  %p_lshr_f1_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %tmp_13_i, i32 1, i32 31)
  %tmp_11 = zext i31 %p_lshr_f1_i to i32
  %j_3 = select i1 %tmp_5, i32 %p_neg_t1_i, i32 %tmp_11
  %tmp_14_i = sext i32 %j_3 to i64
  %array_out_addr_48 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_14_i
  %array_out_load_9 = load i32* %array_out_addr_48, align 4
  %tmp_15_i = icmp sgt i32 %array_out_load_8, %array_out_load_9
  br i1 %tmp_15_i, label %3, label %.loopexit.i

; <label>:3                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str1) nounwind
  %call_ret_i = call fastcc { i32, i32 } @heap_sort_swap_hw(i32 %array_out_load_8, i32 %array_out_load_9) nounwind
  %array_addr_25_ret_i = extractvalue { i32, i32 } %call_ret_i, 0
  store i32 %array_addr_25_ret_i, i32* %array_out_addr_47, align 4
  %array_addr_37_ret_i = extractvalue { i32, i32 } %call_ret_i, 1
  store i32 %array_addr_37_ret_i, i32* %array_out_addr_48, align 4
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %2
  %i_2 = add i6 %j_2, 1
  br label %1

.loopexit:                                        ; preds = %._crit_edge1, %1
  %i = phi i6 [ -25, %1 ], [ %i_1, %._crit_edge1 ]
  %i_cast = zext i6 %i to i32
  %tmp_2 = icmp eq i6 %i, 0
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 39, i64 39, i64 39) nounwind
  br i1 %tmp_2, label %7, label %4

; <label>:4                                       ; preds = %.loopexit
  %tmp_3 = zext i6 %i to i64
  %array_out_addr_16 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_3
  %array_out_load_4 = load i32* %array_out_addr, align 4
  %array_out_load_5 = load i32* %array_out_addr_16, align 4
  %call_ret = call fastcc { i32, i32 } @heap_sort_swap_hw(i32 %array_out_load_4, i32 %array_out_load_5) nounwind
  %gep2_ret = extractvalue { i32, i32 } %call_ret, 0
  store i32 %gep2_ret, i32* %array_out_addr, align 4
  %array_out_addr_16_ret = extractvalue { i32, i32 } %call_ret, 1
  store i32 %array_out_addr_16_ret, i32* %array_out_addr_16, align 4
  %i_1 = add i6 %i, -1
  %i_1_cast = zext i6 %i_1 to i32
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %._crit_edge1, %4
  %j = phi i32 [ 0, %4 ], [ %j_1, %._crit_edge1 ]
  %tmp_12 = shl i32 %j, 1
  %index = or i32 %tmp_12, 1
  %tmp_7 = sext i32 %index to i64
  %array_out_addr_28 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_7
  %array_out_load = load i32* %array_out_addr_28, align 4
  %index_1 = add nsw i32 1, %index
  %tmp_9 = sext i32 %index_1 to i64
  %array_out_addr_42 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_9
  %array_out_load_1 = load i32* %array_out_addr_42, align 4
  %tmp_s = icmp slt i32 %array_out_load, %array_out_load_1
  br i1 %tmp_s, label %5, label %._crit_edge

; <label>:5                                       ; preds = %._crit_edge2
  %tmp_1 = icmp slt i32 %index, %i_1_cast
  %p_s = select i1 %tmp_1, i32 %index_1, i32 %index
  br label %._crit_edge

._crit_edge:                                      ; preds = %5, %._crit_edge2
  %j_1 = phi i32 [ %p_s, %5 ], [ %index, %._crit_edge2 ]
  %tmp_4 = sext i32 %j to i64
  %array_out_addr_43 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4
  %array_out_load_2 = load i32* %array_out_addr_43, align 4
  %tmp_6 = sext i32 %j_1 to i64
  %array_out_addr_44 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6
  %array_out_load_3 = load i32* %array_out_addr_44, align 4
  %tmp_8 = icmp slt i32 %array_out_load_2, %array_out_load_3
  %tmp_10 = icmp slt i32 %j_1, %i_cast
  %or_cond = and i1 %tmp_8, %tmp_10
  br i1 %or_cond, label %6, label %._crit_edge1

; <label>:6                                       ; preds = %._crit_edge
  %call_ret1 = call fastcc { i32, i32 } @heap_sort_swap_hw(i32 %array_out_load_2, i32 %array_out_load_3) nounwind
  %array_out_addr_412_ret = extractvalue { i32, i32 } %call_ret1, 0
  store i32 %array_out_addr_412_ret, i32* %array_out_addr_43, align 4
  %array_out_addr_514_ret = extractvalue { i32, i32 } %call_ret1, 1
  store i32 %array_out_addr_514_ret, i32* %array_out_addr_44, align 4
  br label %._crit_edge1

._crit_edge1:                                     ; preds = %6, %._crit_edge
  br i1 %tmp_10, label %._crit_edge2, label %.loopexit

; <label>:7                                       ; preds = %.loopexit
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
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

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_10 = trunc i6 %empty to i5
  ret i5 %empty_10
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_11 = trunc i32 %empty to i31
  ret i31 %empty_11
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_12 = and i32 %0, %empty
  %empty_13 = icmp ne i32 %empty_12, 0
  ret i1 %empty_13
}

declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

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

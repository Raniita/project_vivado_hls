; ModuleID = 'D:/trabajo_DSE_EnrLuc/hls/heap_sort/heap_sort/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@heap_sort_str = internal unnamed_addr constant [10 x i8] c"heap_sort\00" ; [#uses=1 type=[10 x i8]*]
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00" ; [#uses=2 type=[7 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=3 type=[10 x i8]*]
@p_str1 = private unnamed_addr constant [5 x i8] c"SWAP\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=27 type=[1 x i8]*]

; [#uses=3]
define internal fastcc { i32, i32 } @heap_sort_swap_hw(i32 %x_read, i32 %y_read) readnone {
  %y_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %y_read) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %y_read_1}, i64 0, metadata !0), !dbg !9 ; [debug line = 9:27] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32 %y_read_1}, i64 0, metadata !10), !dbg !11 ; [debug line = 9:19] [debug variable = x]
  %x_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %x_read) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %x_read_1}, i64 0, metadata !12), !dbg !11 ; [debug line = 9:19] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i32 %x_read_1}, i64 0, metadata !13), !dbg !9 ; [debug line = 9:27] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32 %x_read}, i64 0, metadata !12), !dbg !11 ; [debug line = 9:19] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i32 %y_read}, i64 0, metadata !0), !dbg !9 ; [debug line = 9:27] [debug variable = y]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !14 ; [debug line = 10:1]
  call void @llvm.dbg.value(metadata !{i32 %x_read}, i64 0, metadata !16), !dbg !17 ; [debug line = 12:16] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %y_read}, i64 0, metadata !10), !dbg !11 ; [debug line = 9:19] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i32 %x_read}, i64 0, metadata !13), !dbg !9 ; [debug line = 9:27] [debug variable = y]
  %mrv = insertvalue { i32, i32 } undef, i32 %y_read_1, 0, !dbg !18 ; [#uses=1 type={ i32, i32 }] [debug line = 15:1]
  %mrv_1 = insertvalue { i32, i32 } %mrv, i32 %x_read_1, 1, !dbg !18 ; [#uses=1 type={ i32, i32 }] [debug line = 15:1]
  ret { i32, i32 } %mrv_1, !dbg !18               ; [debug line = 15:1]
}

; [#uses=1]
declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=19]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @heap_sort([40 x i32]* %array, [40 x i32]* %array_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %array) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %array_out) nounwind, !map !25
  %array_out_addr = getelementptr [40 x i32]* %array_out, i64 0, i64 0 ; [#uses=3 type=i32*]
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @heap_sort_str) nounwind
  call void @llvm.dbg.value(metadata !{[40 x i32]* %array}, i64 0, metadata !29), !dbg !37 ; [debug line = 37:20] [debug variable = array]
  call void @llvm.dbg.value(metadata !{[40 x i32]* %array_out}, i64 0, metadata !38), !dbg !39 ; [debug line = 37:35] [debug variable = array_out]
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([40 x i32]* %array_out, [1 x i8]* @p_str, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %array_out, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str) nounwind
  %empty_6 = call i32 (...)* @_ssdm_op_SpecMemCore([40 x i32]* %array, [1 x i8]* @p_str, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %array, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str) nounwind, !dbg !40 ; [debug line = 40:1]
  %array_addr = getelementptr [40 x i32]* %array, i64 0, i64 0, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load = load i32* %array_addr, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  store i32 %array_load, i32* %array_out_addr, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_1 = getelementptr [40 x i32]* %array, i64 0, i64 1, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_1 = load i32* %array_addr_1, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_1 = getelementptr [40 x i32]* %array_out, i64 0, i64 1, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_1, i32* %array_out_addr_1, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_2 = getelementptr [40 x i32]* %array, i64 0, i64 2, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_2 = load i32* %array_addr_2, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_2 = getelementptr [40 x i32]* %array_out, i64 0, i64 2, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_2, i32* %array_out_addr_2, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_3 = getelementptr [40 x i32]* %array, i64 0, i64 3, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_3 = load i32* %array_addr_3, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_3 = getelementptr [40 x i32]* %array_out, i64 0, i64 3, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_3, i32* %array_out_addr_3, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_4 = getelementptr [40 x i32]* %array, i64 0, i64 4, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_4 = load i32* %array_addr_4, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_4 = getelementptr [40 x i32]* %array_out, i64 0, i64 4, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_4, i32* %array_out_addr_4, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_5 = getelementptr [40 x i32]* %array, i64 0, i64 5, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_5 = load i32* %array_addr_5, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_5 = getelementptr [40 x i32]* %array_out, i64 0, i64 5, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_5, i32* %array_out_addr_5, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_6 = getelementptr [40 x i32]* %array, i64 0, i64 6, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_6 = load i32* %array_addr_6, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_6 = getelementptr [40 x i32]* %array_out, i64 0, i64 6, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_6, i32* %array_out_addr_6, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_7 = getelementptr [40 x i32]* %array, i64 0, i64 7, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_7 = load i32* %array_addr_7, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_7 = getelementptr [40 x i32]* %array_out, i64 0, i64 7, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_7, i32* %array_out_addr_7, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_8 = getelementptr [40 x i32]* %array, i64 0, i64 8, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_8 = load i32* %array_addr_8, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_8 = getelementptr [40 x i32]* %array_out, i64 0, i64 8, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_8, i32* %array_out_addr_8, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_9 = getelementptr [40 x i32]* %array, i64 0, i64 9, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_9 = load i32* %array_addr_9, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_9 = getelementptr [40 x i32]* %array_out, i64 0, i64 9, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_9, i32* %array_out_addr_9, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_10 = getelementptr [40 x i32]* %array, i64 0, i64 10, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_10 = load i32* %array_addr_10, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_10 = getelementptr [40 x i32]* %array_out, i64 0, i64 10, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_10, i32* %array_out_addr_10, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_11 = getelementptr [40 x i32]* %array, i64 0, i64 11, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_11 = load i32* %array_addr_11, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_11 = getelementptr [40 x i32]* %array_out, i64 0, i64 11, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_11, i32* %array_out_addr_11, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_12 = getelementptr [40 x i32]* %array, i64 0, i64 12, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_12 = load i32* %array_addr_12, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_12 = getelementptr [40 x i32]* %array_out, i64 0, i64 12, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_12, i32* %array_out_addr_12, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_13 = getelementptr [40 x i32]* %array, i64 0, i64 13, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_13 = load i32* %array_addr_13, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_13 = getelementptr [40 x i32]* %array_out, i64 0, i64 13, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_13, i32* %array_out_addr_13, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_14 = getelementptr [40 x i32]* %array, i64 0, i64 14, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_14 = load i32* %array_addr_14, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_14 = getelementptr [40 x i32]* %array_out, i64 0, i64 14, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_14, i32* %array_out_addr_14, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_15 = getelementptr [40 x i32]* %array, i64 0, i64 15, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_15 = load i32* %array_addr_15, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_15 = getelementptr [40 x i32]* %array_out, i64 0, i64 15, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_15, i32* %array_out_addr_15, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_16 = getelementptr [40 x i32]* %array, i64 0, i64 16, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_16 = load i32* %array_addr_16, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_17 = getelementptr [40 x i32]* %array_out, i64 0, i64 16, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_16, i32* %array_out_addr_17, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_17 = getelementptr [40 x i32]* %array, i64 0, i64 17, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_17 = load i32* %array_addr_17, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_18 = getelementptr [40 x i32]* %array_out, i64 0, i64 17, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_17, i32* %array_out_addr_18, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_18 = getelementptr [40 x i32]* %array, i64 0, i64 18, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_18 = load i32* %array_addr_18, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_19 = getelementptr [40 x i32]* %array_out, i64 0, i64 18, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_18, i32* %array_out_addr_19, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_19 = getelementptr [40 x i32]* %array, i64 0, i64 19, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_19 = load i32* %array_addr_19, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_20 = getelementptr [40 x i32]* %array_out, i64 0, i64 19, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_19, i32* %array_out_addr_20, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_20 = getelementptr [40 x i32]* %array, i64 0, i64 20, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_20 = load i32* %array_addr_20, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_21 = getelementptr [40 x i32]* %array_out, i64 0, i64 20, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_20, i32* %array_out_addr_21, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_21 = getelementptr [40 x i32]* %array, i64 0, i64 21, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_21 = load i32* %array_addr_21, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_22 = getelementptr [40 x i32]* %array_out, i64 0, i64 21, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_21, i32* %array_out_addr_22, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_22 = getelementptr [40 x i32]* %array, i64 0, i64 22, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_22 = load i32* %array_addr_22, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_23 = getelementptr [40 x i32]* %array_out, i64 0, i64 22, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_22, i32* %array_out_addr_23, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_23 = getelementptr [40 x i32]* %array, i64 0, i64 23, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_23 = load i32* %array_addr_23, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_24 = getelementptr [40 x i32]* %array_out, i64 0, i64 23, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_23, i32* %array_out_addr_24, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_24 = getelementptr [40 x i32]* %array, i64 0, i64 24, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_24 = load i32* %array_addr_24, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_25 = getelementptr [40 x i32]* %array_out, i64 0, i64 24, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_24, i32* %array_out_addr_25, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_25 = getelementptr [40 x i32]* %array, i64 0, i64 25, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_25 = load i32* %array_addr_25, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_26 = getelementptr [40 x i32]* %array_out, i64 0, i64 25, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_25, i32* %array_out_addr_26, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_26 = getelementptr [40 x i32]* %array, i64 0, i64 26, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_26 = load i32* %array_addr_26, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_27 = getelementptr [40 x i32]* %array_out, i64 0, i64 26, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_26, i32* %array_out_addr_27, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_27 = getelementptr [40 x i32]* %array, i64 0, i64 27, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_27 = load i32* %array_addr_27, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_29 = getelementptr [40 x i32]* %array_out, i64 0, i64 27, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_27, i32* %array_out_addr_29, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_28 = getelementptr [40 x i32]* %array, i64 0, i64 28, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_28 = load i32* %array_addr_28, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_30 = getelementptr [40 x i32]* %array_out, i64 0, i64 28, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_28, i32* %array_out_addr_30, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_29 = getelementptr [40 x i32]* %array, i64 0, i64 29, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_29 = load i32* %array_addr_29, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_31 = getelementptr [40 x i32]* %array_out, i64 0, i64 29, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_29, i32* %array_out_addr_31, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_30 = getelementptr [40 x i32]* %array, i64 0, i64 30, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_30 = load i32* %array_addr_30, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_32 = getelementptr [40 x i32]* %array_out, i64 0, i64 30, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_30, i32* %array_out_addr_32, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_31 = getelementptr [40 x i32]* %array, i64 0, i64 31, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_31 = load i32* %array_addr_31, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_33 = getelementptr [40 x i32]* %array_out, i64 0, i64 31, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_31, i32* %array_out_addr_33, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_32 = getelementptr [40 x i32]* %array, i64 0, i64 32, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_32 = load i32* %array_addr_32, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_34 = getelementptr [40 x i32]* %array_out, i64 0, i64 32, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_32, i32* %array_out_addr_34, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_33 = getelementptr [40 x i32]* %array, i64 0, i64 33, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_33 = load i32* %array_addr_33, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_35 = getelementptr [40 x i32]* %array_out, i64 0, i64 33, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_33, i32* %array_out_addr_35, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_34 = getelementptr [40 x i32]* %array, i64 0, i64 34, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_34 = load i32* %array_addr_34, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_36 = getelementptr [40 x i32]* %array_out, i64 0, i64 34, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_34, i32* %array_out_addr_36, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_35 = getelementptr [40 x i32]* %array, i64 0, i64 35, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_35 = load i32* %array_addr_35, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_37 = getelementptr [40 x i32]* %array_out, i64 0, i64 35, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_35, i32* %array_out_addr_37, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_36 = getelementptr [40 x i32]* %array, i64 0, i64 36, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_36 = load i32* %array_addr_36, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_38 = getelementptr [40 x i32]* %array_out, i64 0, i64 36, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_36, i32* %array_out_addr_38, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_37 = getelementptr [40 x i32]* %array, i64 0, i64 37, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_37 = load i32* %array_addr_37, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_39 = getelementptr [40 x i32]* %array_out, i64 0, i64 37, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_37, i32* %array_out_addr_39, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_38 = getelementptr [40 x i32]* %array, i64 0, i64 38, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_38 = load i32* %array_addr_38, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_40 = getelementptr [40 x i32]* %array_out, i64 0, i64 38, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_38, i32* %array_out_addr_40, align 4, !dbg !42 ; [debug line = 45:2]
  %array_addr_39 = getelementptr [40 x i32]* %array, i64 0, i64 39, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array_load_39 = load i32* %array_addr_39, align 4, !dbg !42 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out_addr_41 = getelementptr [40 x i32]* %array_out, i64 0, i64 39, !dbg !42 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array_load_39, i32* %array_out_addr_41, align 4, !dbg !42 ; [debug line = 45:2]
  call void @llvm.dbg.value(metadata !{[40 x i32]* %array_out}, i64 0, metadata !45) nounwind, !dbg !50 ; [debug line = 20:26@50:2] [debug variable = array]
  br label %1, !dbg !51                           ; [debug line = 21:16@50:2]

; <label>:1                                       ; preds = %.loopexit.i, %0
  %j_2 = phi i6 [ 1, %0 ], [ %i_2, %.loopexit.i ] ; [#uses=5 type=i6]
  %j_i_cast1 = zext i6 %j_2 to i32, !dbg !54      ; [#uses=1 type=i32] [debug line = 24:13@50:2]
  call void @llvm.dbg.value(metadata !{i6 %j_2}, i64 0, metadata !57) nounwind, !dbg !54 ; [debug line = 24:13@50:2] [debug variable = j]
  %exitcond_i = icmp eq i6 %j_2, -24, !dbg !51    ; [#uses=1 type=i1] [debug line = 21:16@50:2]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 39, i64 39, i64 39) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond_i, label %.loopexit, label %2, !dbg !51 ; [debug line = 21:16@50:2]

; <label>:2                                       ; preds = %1
  %tmp_i = zext i6 %j_2 to i64, !dbg !58          ; [#uses=1 type=i64] [debug line = 23:3@50:2]
  %array_out_addr_45 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_i, !dbg !58 ; [#uses=1 type=i32*] [debug line = 23:3@50:2]
  %array_out_load_6 = load i32* %array_out_addr_45, align 4, !dbg !58 ; [#uses=1 type=i32] [debug line = 23:3@50:2]
  %tmp_tr_i = add i6 %j_2, -1, !dbg !58           ; [#uses=1 type=i6] [debug line = 23:3@50:2]
  %p_lshr_f_i_cast = call i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6 %tmp_tr_i, i32 1, i32 5), !dbg !58 ; [#uses=1 type=i5] [debug line = 23:3@50:2]
  %tmp_i_8 = zext i5 %p_lshr_f_i_cast to i64, !dbg !58 ; [#uses=1 type=i64] [debug line = 23:3@50:2]
  %array_out_addr_46 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_i_8, !dbg !58 ; [#uses=1 type=i32*] [debug line = 23:3@50:2]
  %array_out_load_7 = load i32* %array_out_addr_46, align 4, !dbg !58 ; [#uses=1 type=i32] [debug line = 23:3@50:2]
  %tmp_11_i = icmp sgt i32 %array_out_load_6, %array_out_load_7, !dbg !58 ; [#uses=1 type=i1] [debug line = 23:3@50:2]
  br i1 %tmp_11_i, label %.preheader.i, label %.loopexit.i, !dbg !58 ; [debug line = 23:3@50:2]

.preheader.i:                                     ; preds = %3, %2
  %j2_i = phi i32 [ %j_3, %3 ], [ %j_i_cast1, %2 ] ; [#uses=3 type=i32]
  %tmp_12_i = sext i32 %j2_i to i64, !dbg !59     ; [#uses=1 type=i64] [debug line = 28:9@50:2]
  %array_out_addr_47 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_12_i, !dbg !59 ; [#uses=2 type=i32*] [debug line = 28:9@50:2]
  %array_out_load_8 = load i32* %array_out_addr_47, align 4, !dbg !59 ; [#uses=2 type=i32] [debug line = 28:9@50:2]
  %tmp_13_i = add nsw i32 %j2_i, -1, !dbg !59     ; [#uses=2 type=i32] [debug line = 28:9@50:2]
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %tmp_13_i, i32 31), !dbg !59 ; [#uses=1 type=i1] [debug line = 28:9@50:2]
  %p_neg1_i = sub i32 1, %j2_i, !dbg !59          ; [#uses=1 type=i32] [debug line = 28:9@50:2]
  %p_lshr1_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg1_i, i32 1, i32 31), !dbg !59 ; [#uses=1 type=i31] [debug line = 28:9@50:2]
  %tmp = zext i31 %p_lshr1_i to i32, !dbg !59     ; [#uses=1 type=i32] [debug line = 28:9@50:2]
  %p_neg_t1_i = sub i32 0, %tmp, !dbg !59         ; [#uses=1 type=i32] [debug line = 28:9@50:2]
  %p_lshr_f1_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %tmp_13_i, i32 1, i32 31), !dbg !59 ; [#uses=1 type=i31] [debug line = 28:9@50:2]
  %tmp_11 = zext i31 %p_lshr_f1_i to i32, !dbg !59 ; [#uses=1 type=i32] [debug line = 28:9@50:2]
  %j_3 = select i1 %tmp_5, i32 %p_neg_t1_i, i32 %tmp_11, !dbg !59 ; [#uses=2 type=i32] [debug line = 28:9@50:2]
  %tmp_14_i = sext i32 %j_3 to i64, !dbg !59      ; [#uses=1 type=i64] [debug line = 28:9@50:2]
  %array_out_addr_48 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_14_i, !dbg !59 ; [#uses=2 type=i32*] [debug line = 28:9@50:2]
  %array_out_load_9 = load i32* %array_out_addr_48, align 4, !dbg !59 ; [#uses=2 type=i32] [debug line = 28:9@50:2]
  %tmp_15_i = icmp sgt i32 %array_out_load_8, %array_out_load_9, !dbg !59 ; [#uses=1 type=i1] [debug line = 28:9@50:2]
  br i1 %tmp_15_i, label %3, label %.loopexit.i, !dbg !59 ; [debug line = 28:9@50:2]

; <label>:3                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str1) nounwind, !dbg !60 ; [debug line = 28:47@50:2]
  %call_ret_i = call fastcc { i32, i32 } @heap_sort_swap_hw(i32 %array_out_load_8, i32 %array_out_load_9) nounwind, !dbg !62 ; [#uses=2 type={ i32, i32 }] [debug line = 30:2@50:2]
  %array_addr_25_ret_i = extractvalue { i32, i32 } %call_ret_i, 0, !dbg !62 ; [#uses=1 type=i32] [debug line = 30:2@50:2]
  store i32 %array_addr_25_ret_i, i32* %array_out_addr_47, align 4, !dbg !62 ; [debug line = 30:2@50:2]
  %array_addr_37_ret_i = extractvalue { i32, i32 } %call_ret_i, 1, !dbg !62 ; [#uses=1 type=i32] [debug line = 30:2@50:2]
  store i32 %array_addr_37_ret_i, i32* %array_out_addr_48, align 4, !dbg !62 ; [debug line = 30:2@50:2]
  call void @llvm.dbg.value(metadata !{i32 %j_3}, i64 0, metadata !57) nounwind, !dbg !63 ; [debug line = 31:5@50:2] [debug variable = j]
  br label %.preheader.i, !dbg !64                ; [debug line = 32:4@50:2]

.loopexit.i:                                      ; preds = %.preheader.i, %2
  %i_2 = add i6 %j_2, 1, !dbg !65                 ; [#uses=1 type=i6] [debug line = 21:26@50:2]
  call void @llvm.dbg.value(metadata !{i6 %i_2}, i64 0, metadata !66) nounwind, !dbg !65 ; [debug line = 21:26@50:2] [debug variable = i]
  br label %1, !dbg !65                           ; [debug line = 21:26@50:2]

.loopexit:                                        ; preds = %._crit_edge1, %1
  %i = phi i6 [ -25, %1 ], [ %i_1, %._crit_edge1 ] ; [#uses=4 type=i6]
  %i_cast = zext i6 %i to i32, !dbg !67           ; [#uses=1 type=i32] [debug line = 52:21]
  %tmp_2 = icmp eq i6 %i, 0, !dbg !67             ; [#uses=1 type=i1] [debug line = 52:21]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 39, i64 39, i64 39) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_2, label %7, label %4, !dbg !67      ; [debug line = 52:21]

; <label>:4                                       ; preds = %.loopexit
  %tmp_3 = zext i6 %i to i64, !dbg !69            ; [#uses=1 type=i64] [debug line = 55:3]
  %array_out_addr_16 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_3, !dbg !69 ; [#uses=2 type=i32*] [debug line = 55:3]
  %array_out_load_4 = load i32* %array_out_addr, align 4, !dbg !69 ; [#uses=1 type=i32] [debug line = 55:3]
  %array_out_load_5 = load i32* %array_out_addr_16, align 4, !dbg !69 ; [#uses=1 type=i32] [debug line = 55:3]
  %call_ret = call fastcc { i32, i32 } @heap_sort_swap_hw(i32 %array_out_load_4, i32 %array_out_load_5) nounwind, !dbg !69 ; [#uses=2 type={ i32, i32 }] [debug line = 55:3]
  %gep2_ret = extractvalue { i32, i32 } %call_ret, 0, !dbg !69 ; [#uses=1 type=i32] [debug line = 55:3]
  store i32 %gep2_ret, i32* %array_out_addr, align 4, !dbg !69 ; [debug line = 55:3]
  %array_out_addr_16_ret = extractvalue { i32, i32 } %call_ret, 1, !dbg !69 ; [#uses=1 type=i32] [debug line = 55:3]
  store i32 %array_out_addr_16_ret, i32* %array_out_addr_16, align 4, !dbg !69 ; [debug line = 55:3]
  %i_1 = add i6 %i, -1, !dbg !71                  ; [#uses=2 type=i6] [debug line = 68:4]
  %i_1_cast = zext i6 %i_1 to i32, !dbg !71       ; [#uses=1 type=i32] [debug line = 68:4]
  call void @llvm.dbg.value(metadata !{i6 %i_1}, i64 0, metadata !73), !dbg !74 ; [debug line = 52:30] [debug variable = i]
  br label %._crit_edge2, !dbg !75                ; [debug line = 62:3]

._crit_edge2:                                     ; preds = %._crit_edge1, %4
  %j = phi i32 [ 0, %4 ], [ %j_1, %._crit_edge1 ] ; [#uses=2 type=i32]
  %tmp_12 = shl i32 %j, 1, !dbg !76               ; [#uses=1 type=i32] [debug line = 63:4]
  %index = or i32 %tmp_12, 1, !dbg !76            ; [#uses=5 type=i32] [debug line = 63:4]
  call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !77), !dbg !76 ; [debug line = 63:4] [debug variable = index]
  %tmp_7 = sext i32 %index to i64, !dbg !71       ; [#uses=1 type=i64] [debug line = 68:4]
  %array_out_addr_28 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_7, !dbg !71 ; [#uses=1 type=i32*] [debug line = 68:4]
  %array_out_load = load i32* %array_out_addr_28, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 68:4]
  %index_1 = add nsw i32 1, %index, !dbg !71      ; [#uses=2 type=i32] [debug line = 68:4]
  %tmp_9 = sext i32 %index_1 to i64, !dbg !71     ; [#uses=1 type=i64] [debug line = 68:4]
  %array_out_addr_42 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_9, !dbg !71 ; [#uses=1 type=i32*] [debug line = 68:4]
  %array_out_load_1 = load i32* %array_out_addr_42, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 68:4]
  %tmp_s = icmp slt i32 %array_out_load, %array_out_load_1, !dbg !71 ; [#uses=1 type=i1] [debug line = 68:4]
  br i1 %tmp_s, label %5, label %._crit_edge, !dbg !71 ; [debug line = 68:4]

; <label>:5                                       ; preds = %._crit_edge2
  %tmp_1 = icmp slt i32 %index, %i_1_cast, !dbg !71 ; [#uses=1 type=i1] [debug line = 68:4]
  call void @llvm.dbg.value(metadata !{i32 %index_1}, i64 0, metadata !77), !dbg !78 ; [debug line = 69:8] [debug variable = index]
  %p_s = select i1 %tmp_1, i32 %index_1, i32 %index, !dbg !71 ; [#uses=1 type=i32] [debug line = 68:4]
  br label %._crit_edge, !dbg !71                 ; [debug line = 68:4]

._crit_edge:                                      ; preds = %5, %._crit_edge2
  %j_1 = phi i32 [ %p_s, %5 ], [ %index, %._crit_edge2 ] ; [#uses=3 type=i32]
  %tmp_4 = sext i32 %j to i64, !dbg !80           ; [#uses=1 type=i64] [debug line = 75:4]
  %array_out_addr_43 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_4, !dbg !80 ; [#uses=2 type=i32*] [debug line = 75:4]
  %array_out_load_2 = load i32* %array_out_addr_43, align 4, !dbg !80 ; [#uses=2 type=i32] [debug line = 75:4]
  %tmp_6 = sext i32 %j_1 to i64, !dbg !80         ; [#uses=1 type=i64] [debug line = 75:4]
  %array_out_addr_44 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp_6, !dbg !80 ; [#uses=2 type=i32*] [debug line = 75:4]
  %array_out_load_3 = load i32* %array_out_addr_44, align 4, !dbg !80 ; [#uses=2 type=i32] [debug line = 75:4]
  %tmp_8 = icmp slt i32 %array_out_load_2, %array_out_load_3, !dbg !80 ; [#uses=1 type=i1] [debug line = 75:4]
  %tmp_10 = icmp slt i32 %j_1, %i_cast, !dbg !80  ; [#uses=2 type=i1] [debug line = 75:4]
  %or_cond = and i1 %tmp_8, %tmp_10, !dbg !80     ; [#uses=1 type=i1] [debug line = 75:4]
  br i1 %or_cond, label %6, label %._crit_edge1, !dbg !80 ; [debug line = 75:4]

; <label>:6                                       ; preds = %._crit_edge
  %call_ret1 = call fastcc { i32, i32 } @heap_sort_swap_hw(i32 %array_out_load_2, i32 %array_out_load_3) nounwind, !dbg !81 ; [#uses=2 type={ i32, i32 }] [debug line = 76:8]
  %array_out_addr_412_ret = extractvalue { i32, i32 } %call_ret1, 0, !dbg !81 ; [#uses=1 type=i32] [debug line = 76:8]
  store i32 %array_out_addr_412_ret, i32* %array_out_addr_43, align 4, !dbg !81 ; [debug line = 76:8]
  %array_out_addr_514_ret = extractvalue { i32, i32 } %call_ret1, 1, !dbg !81 ; [#uses=1 type=i32] [debug line = 76:8]
  store i32 %array_out_addr_514_ret, i32* %array_out_addr_44, align 4, !dbg !81 ; [debug line = 76:8]
  br label %._crit_edge1, !dbg !83                ; [debug line = 77:4]

._crit_edge1:                                     ; preds = %6, %._crit_edge
  call void @llvm.dbg.value(metadata !{i32 %j_1}, i64 0, metadata !84), !dbg !85 ; [debug line = 79:4] [debug variable = j]
  br i1 %tmp_10, label %._crit_edge2, label %.loopexit, !dbg !86 ; [debug line = 81:3]

; <label>:7                                       ; preds = %.loopexit
  ret void, !dbg !87                              ; [debug line = 84:5]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
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

; [#uses=2]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2) ; [#uses=1 type=i6]
  %empty_10 = trunc i6 %empty to i5               ; [#uses=1 type=i5]
  ret i5 %empty_10
}

; [#uses=2]
define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_11 = trunc i32 %empty to i31             ; [#uses=1 type=i31]
  ret i31 %empty_11
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1                          ; [#uses=1 type=i32]
  %empty_12 = and i32 %0, %empty                  ; [#uses=1 type=i32]
  %empty_13 = icmp ne i32 %empty_12, 0            ; [#uses=1 type=i1]
  ret i1 %empty_13
}

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 790532, metadata !1, metadata !"y", null, i32 9, metadata !5, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!1 = metadata !{i32 786478, i32 0, metadata !2, metadata !"swap_hw", metadata !"swap_hw", metadata !"_Z7swap_hwRiS_", metadata !2, i32 9, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !7, i32 9} ; [ DW_TAG_subprogram ]
!2 = metadata !{i32 786473, metadata !"../../sources/heap_sort.cpp", metadata !"D:\5Ctrabajo_DSE_EnrLuc\5Chls\5Cheap_sort", null} ; [ DW_TAG_file_type ]
!3 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{null, metadata !5, metadata !5}
!5 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !6} ; [ DW_TAG_reference_type ]
!6 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468}                       ; [ DW_TAG_base_type ]
!9 = metadata !{i32 9, i32 27, metadata !1, null}
!10 = metadata !{i32 790534, metadata !1, metadata !"x", null, i32 9, metadata !5, i32 0, i32 0} ; [ DW_TAG_arg_variable_wo ]
!11 = metadata !{i32 9, i32 19, metadata !1, null}
!12 = metadata !{i32 790532, metadata !1, metadata !"x", null, i32 9, metadata !5, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!13 = metadata !{i32 790534, metadata !1, metadata !"y", null, i32 9, metadata !5, i32 0, i32 0} ; [ DW_TAG_arg_variable_wo ]
!14 = metadata !{i32 10, i32 1, metadata !15, null}
!15 = metadata !{i32 786443, metadata !1, i32 9, i32 29, metadata !2, i32 0} ; [ DW_TAG_lexical_block ]
!16 = metadata !{i32 786688, metadata !15, metadata !"tmp", metadata !2, i32 12, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!17 = metadata !{i32 12, i32 16, metadata !15, null}
!18 = metadata !{i32 15, i32 1, metadata !15, null}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"array", metadata !23, metadata !"int", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 39, i32 1}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"array_out", metadata !23, metadata !"int", i32 0, i32 31}
!29 = metadata !{i32 786689, metadata !30, metadata !"array", null, i32 37, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 786478, i32 0, metadata !2, metadata !"heap_sort", metadata !"heap_sort", metadata !"_Z9heap_sortPiS_", metadata !2, i32 37, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !7, i32 37} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{null, metadata !33, metadata !33}
!33 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1280, i64 32, i32 0, i32 0, metadata !6, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786465, i64 0, i64 39}       ; [ DW_TAG_subrange_type ]
!37 = metadata !{i32 37, i32 20, metadata !30, null}
!38 = metadata !{i32 786689, metadata !30, metadata !"array_out", null, i32 37, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 37, i32 35, metadata !30, null}
!40 = metadata !{i32 40, i32 1, metadata !41, null}
!41 = metadata !{i32 786443, metadata !30, i32 37, i32 49, metadata !2, i32 6} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 45, i32 2, metadata !43, null}
!43 = metadata !{i32 786443, metadata !44, i32 43, i32 27, metadata !2, i32 8} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 786443, metadata !41, i32 43, i32 10, metadata !2, i32 7} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 786689, metadata !46, metadata !"array", null, i32 20, metadata !34, i32 0, metadata !49} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 786478, i32 0, metadata !2, metadata !"buildMaxHeap_hw", metadata !"buildMaxHeap_hw", metadata !"_Z15buildMaxHeap_hwPi", metadata !2, i32 20, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !7, i32 20} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!48 = metadata !{null, metadata !33}
!49 = metadata !{i32 50, i32 2, metadata !41, null}
!50 = metadata !{i32 20, i32 26, metadata !46, metadata !49}
!51 = metadata !{i32 21, i32 16, metadata !52, metadata !49}
!52 = metadata !{i32 786443, metadata !53, i32 21, i32 2, metadata !2, i32 2} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 786443, metadata !46, i32 20, i32 36, metadata !2, i32 1} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 24, i32 13, metadata !55, metadata !49}
!55 = metadata !{i32 786443, metadata !56, i32 23, i32 37, metadata !2, i32 4} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 786443, metadata !52, i32 21, i32 30, metadata !2, i32 3} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 786688, metadata !55, metadata !"j", metadata !2, i32 24, metadata !6, i32 0, metadata !49} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 23, i32 3, metadata !56, metadata !49}
!59 = metadata !{i32 28, i32 9, metadata !55, metadata !49}
!60 = metadata !{i32 28, i32 47, metadata !61, metadata !49}
!61 = metadata !{i32 786443, metadata !55, i32 28, i32 46, metadata !2, i32 5} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 30, i32 2, metadata !61, metadata !49}
!63 = metadata !{i32 31, i32 5, metadata !61, metadata !49}
!64 = metadata !{i32 32, i32 4, metadata !61, metadata !49}
!65 = metadata !{i32 21, i32 26, metadata !52, metadata !49}
!66 = metadata !{i32 786688, metadata !52, metadata !"i", metadata !2, i32 21, metadata !6, i32 0, metadata !49} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 52, i32 21, metadata !68, null}
!68 = metadata !{i32 786443, metadata !41, i32 52, i32 2, metadata !2, i32 9} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 55, i32 3, metadata !70, null}
!70 = metadata !{i32 786443, metadata !68, i32 52, i32 34, metadata !2, i32 10} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 68, i32 4, metadata !72, null}
!72 = metadata !{i32 786443, metadata !70, i32 62, i32 6, metadata !2, i32 11} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 786688, metadata !68, metadata !"i", metadata !2, i32 52, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 52, i32 30, metadata !68, null}
!75 = metadata !{i32 62, i32 3, metadata !70, null}
!76 = metadata !{i32 63, i32 4, metadata !72, null}
!77 = metadata !{i32 786688, metadata !70, metadata !"index", metadata !2, i32 60, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 69, i32 8, metadata !79, null}
!79 = metadata !{i32 786443, metadata !72, i32 68, i32 67, metadata !2, i32 12} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 75, i32 4, metadata !72, null}
!81 = metadata !{i32 76, i32 8, metadata !82, null}
!82 = metadata !{i32 786443, metadata !72, i32 75, i32 53, metadata !2, i32 13} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 77, i32 4, metadata !82, null}
!84 = metadata !{i32 786688, metadata !70, metadata !"j", metadata !2, i32 59, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 79, i32 4, metadata !72, null}
!86 = metadata !{i32 81, i32 3, metadata !72, null}
!87 = metadata !{i32 84, i32 5, metadata !41, null}

; ModuleID = 'D:/trabajo_DSE_EnrLuc/hls/bubble_sort/bubble_sort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@bubble_sort.str = internal unnamed_addr constant [12 x i8] c"bubble_sort\00" ; [#uses=1 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [5 x i8] c"SORT\00", align 1 ; [#uses=3 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=12 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=3 type=[10 x i8]*]

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @bubble_sort([40 x i32]* %array, [40 x i32]* %array_out) nounwind uwtable {
.preheader.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %array) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %array_out) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bubble_sort.str) nounwind
  call void @llvm.dbg.value(metadata !{[40 x i32]* %array}, i64 0, metadata !23), !dbg !27 ; [debug line = 9:22] [debug variable = array]
  call void @llvm.dbg.value(metadata !{[40 x i32]* %array_out}, i64 0, metadata !28), !dbg !29 ; [debug line = 9:37] [debug variable = array_out]
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %array_out, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %array, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1) nounwind, !dbg !30 ; [debug line = 12:1]
  %array.addr = getelementptr [40 x i32]* %array, i64 0, i64 0, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load = load i32* %array.addr, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr = getelementptr [40 x i32]* %array_out, i64 0, i64 0, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load, i32* %array_out.addr, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.1 = getelementptr [40 x i32]* %array, i64 0, i64 1, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.1 = load i32* %array.addr.1, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.1 = getelementptr [40 x i32]* %array_out, i64 0, i64 1, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.1, i32* %array_out.addr.1, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.2 = getelementptr [40 x i32]* %array, i64 0, i64 2, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.2 = load i32* %array.addr.2, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.2 = getelementptr [40 x i32]* %array_out, i64 0, i64 2, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.2, i32* %array_out.addr.2, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.3 = getelementptr [40 x i32]* %array, i64 0, i64 3, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.3 = load i32* %array.addr.3, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.3 = getelementptr [40 x i32]* %array_out, i64 0, i64 3, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.3, i32* %array_out.addr.3, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.4 = getelementptr [40 x i32]* %array, i64 0, i64 4, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.4 = load i32* %array.addr.4, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.4 = getelementptr [40 x i32]* %array_out, i64 0, i64 4, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.4, i32* %array_out.addr.4, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.5 = getelementptr [40 x i32]* %array, i64 0, i64 5, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.5 = load i32* %array.addr.5, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.5 = getelementptr [40 x i32]* %array_out, i64 0, i64 5, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.5, i32* %array_out.addr.5, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.6 = getelementptr [40 x i32]* %array, i64 0, i64 6, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.6 = load i32* %array.addr.6, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.6 = getelementptr [40 x i32]* %array_out, i64 0, i64 6, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.6, i32* %array_out.addr.6, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.7 = getelementptr [40 x i32]* %array, i64 0, i64 7, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.7 = load i32* %array.addr.7, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.7 = getelementptr [40 x i32]* %array_out, i64 0, i64 7, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.7, i32* %array_out.addr.7, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.8 = getelementptr [40 x i32]* %array, i64 0, i64 8, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.8 = load i32* %array.addr.8, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.8 = getelementptr [40 x i32]* %array_out, i64 0, i64 8, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.8, i32* %array_out.addr.8, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.9 = getelementptr [40 x i32]* %array, i64 0, i64 9, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.9 = load i32* %array.addr.9, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.9 = getelementptr [40 x i32]* %array_out, i64 0, i64 9, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.9, i32* %array_out.addr.9, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.10 = getelementptr [40 x i32]* %array, i64 0, i64 10, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.10 = load i32* %array.addr.10, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.10 = getelementptr [40 x i32]* %array_out, i64 0, i64 10, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.10, i32* %array_out.addr.10, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.11 = getelementptr [40 x i32]* %array, i64 0, i64 11, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.11 = load i32* %array.addr.11, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.11 = getelementptr [40 x i32]* %array_out, i64 0, i64 11, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.11, i32* %array_out.addr.11, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.12 = getelementptr [40 x i32]* %array, i64 0, i64 12, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.12 = load i32* %array.addr.12, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.12 = getelementptr [40 x i32]* %array_out, i64 0, i64 12, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.12, i32* %array_out.addr.12, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.13 = getelementptr [40 x i32]* %array, i64 0, i64 13, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.13 = load i32* %array.addr.13, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.13 = getelementptr [40 x i32]* %array_out, i64 0, i64 13, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.13, i32* %array_out.addr.13, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.14 = getelementptr [40 x i32]* %array, i64 0, i64 14, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.14 = load i32* %array.addr.14, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.14 = getelementptr [40 x i32]* %array_out, i64 0, i64 14, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.14, i32* %array_out.addr.14, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.15 = getelementptr [40 x i32]* %array, i64 0, i64 15, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.15 = load i32* %array.addr.15, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.15 = getelementptr [40 x i32]* %array_out, i64 0, i64 15, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.15, i32* %array_out.addr.15, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.16 = getelementptr [40 x i32]* %array, i64 0, i64 16, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.16 = load i32* %array.addr.16, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.17 = getelementptr [40 x i32]* %array_out, i64 0, i64 16, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.16, i32* %array_out.addr.17, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.17 = getelementptr [40 x i32]* %array, i64 0, i64 17, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.17 = load i32* %array.addr.17, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.18 = getelementptr [40 x i32]* %array_out, i64 0, i64 17, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.17, i32* %array_out.addr.18, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.18 = getelementptr [40 x i32]* %array, i64 0, i64 18, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.18 = load i32* %array.addr.18, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.19 = getelementptr [40 x i32]* %array_out, i64 0, i64 18, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.18, i32* %array_out.addr.19, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.19 = getelementptr [40 x i32]* %array, i64 0, i64 19, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.19 = load i32* %array.addr.19, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.20 = getelementptr [40 x i32]* %array_out, i64 0, i64 19, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.19, i32* %array_out.addr.20, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.20 = getelementptr [40 x i32]* %array, i64 0, i64 20, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.20 = load i32* %array.addr.20, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.21 = getelementptr [40 x i32]* %array_out, i64 0, i64 20, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.20, i32* %array_out.addr.21, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.21 = getelementptr [40 x i32]* %array, i64 0, i64 21, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.21 = load i32* %array.addr.21, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.22 = getelementptr [40 x i32]* %array_out, i64 0, i64 21, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.21, i32* %array_out.addr.22, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.22 = getelementptr [40 x i32]* %array, i64 0, i64 22, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.22 = load i32* %array.addr.22, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.23 = getelementptr [40 x i32]* %array_out, i64 0, i64 22, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.22, i32* %array_out.addr.23, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.23 = getelementptr [40 x i32]* %array, i64 0, i64 23, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.23 = load i32* %array.addr.23, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.24 = getelementptr [40 x i32]* %array_out, i64 0, i64 23, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.23, i32* %array_out.addr.24, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.24 = getelementptr [40 x i32]* %array, i64 0, i64 24, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.24 = load i32* %array.addr.24, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.25 = getelementptr [40 x i32]* %array_out, i64 0, i64 24, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.24, i32* %array_out.addr.25, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.25 = getelementptr [40 x i32]* %array, i64 0, i64 25, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.25 = load i32* %array.addr.25, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.26 = getelementptr [40 x i32]* %array_out, i64 0, i64 25, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.25, i32* %array_out.addr.26, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.26 = getelementptr [40 x i32]* %array, i64 0, i64 26, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.26 = load i32* %array.addr.26, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.27 = getelementptr [40 x i32]* %array_out, i64 0, i64 26, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.26, i32* %array_out.addr.27, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.27 = getelementptr [40 x i32]* %array, i64 0, i64 27, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.27 = load i32* %array.addr.27, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.29 = getelementptr [40 x i32]* %array_out, i64 0, i64 27, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.27, i32* %array_out.addr.29, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.28 = getelementptr [40 x i32]* %array, i64 0, i64 28, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.28 = load i32* %array.addr.28, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.30 = getelementptr [40 x i32]* %array_out, i64 0, i64 28, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.28, i32* %array_out.addr.30, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.29 = getelementptr [40 x i32]* %array, i64 0, i64 29, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.29 = load i32* %array.addr.29, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.31 = getelementptr [40 x i32]* %array_out, i64 0, i64 29, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.29, i32* %array_out.addr.31, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.30 = getelementptr [40 x i32]* %array, i64 0, i64 30, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.30 = load i32* %array.addr.30, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.32 = getelementptr [40 x i32]* %array_out, i64 0, i64 30, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.30, i32* %array_out.addr.32, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.31 = getelementptr [40 x i32]* %array, i64 0, i64 31, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.31 = load i32* %array.addr.31, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.33 = getelementptr [40 x i32]* %array_out, i64 0, i64 31, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.31, i32* %array_out.addr.33, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.32 = getelementptr [40 x i32]* %array, i64 0, i64 32, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.32 = load i32* %array.addr.32, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.34 = getelementptr [40 x i32]* %array_out, i64 0, i64 32, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.32, i32* %array_out.addr.34, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.33 = getelementptr [40 x i32]* %array, i64 0, i64 33, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.33 = load i32* %array.addr.33, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.35 = getelementptr [40 x i32]* %array_out, i64 0, i64 33, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.33, i32* %array_out.addr.35, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.34 = getelementptr [40 x i32]* %array, i64 0, i64 34, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.34 = load i32* %array.addr.34, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.36 = getelementptr [40 x i32]* %array_out, i64 0, i64 34, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.34, i32* %array_out.addr.36, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.35 = getelementptr [40 x i32]* %array, i64 0, i64 35, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.35 = load i32* %array.addr.35, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.37 = getelementptr [40 x i32]* %array_out, i64 0, i64 35, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.35, i32* %array_out.addr.37, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.36 = getelementptr [40 x i32]* %array, i64 0, i64 36, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.36 = load i32* %array.addr.36, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.38 = getelementptr [40 x i32]* %array_out, i64 0, i64 36, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.36, i32* %array_out.addr.38, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.37 = getelementptr [40 x i32]* %array, i64 0, i64 37, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.37 = load i32* %array.addr.37, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.39 = getelementptr [40 x i32]* %array_out, i64 0, i64 37, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.37, i32* %array_out.addr.39, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.38 = getelementptr [40 x i32]* %array, i64 0, i64 38, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.38 = load i32* %array.addr.38, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.40 = getelementptr [40 x i32]* %array_out, i64 0, i64 38, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.38, i32* %array_out.addr.40, align 4, !dbg !32 ; [debug line = 17:2]
  %array.addr.39 = getelementptr [40 x i32]* %array, i64 0, i64 39, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load.39 = load i32* %array.addr.39, align 4, !dbg !32 ; [#uses=1 type=i32] [debug line = 17:2]
  %array_out.addr.41 = getelementptr [40 x i32]* %array_out, i64 0, i64 39, !dbg !32 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load.39, i32* %array_out.addr.41, align 4, !dbg !32 ; [debug line = 17:2]
  br label %.preheader, !dbg !35                  ; [debug line = 22:14]

.preheader:                                       ; preds = %6, %.preheader.preheader
  %indvars.iv = phi i6 [ %indvars.iv.next, %6 ], [ -25, %.preheader.preheader ] ; [#uses=2 type=i6]
  %i = phi i6 [ %i.1, %6 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i6]
  %exitcond1 = icmp eq i6 %i, -25, !dbg !35       ; [#uses=1 type=i1] [debug line = 22:14]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 39, i64 39, i64 39) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %8, label %1, !dbg !35  ; [debug line = 22:14]

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str3) nounwind, !dbg !37 ; [debug line = 22:31]
  %tmp. = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @.str3) nounwind, !dbg !37 ; [#uses=1 type=i32] [debug line = 22:31]
  br label %2, !dbg !39                           ; [debug line = 23:13]

; <label>:2                                       ; preds = %._crit_edge, %1
  %j = phi i6 [ 0, %1 ], [ %j.1, %._crit_edge ]   ; [#uses=3 type=i6]
  %exitcond = icmp eq i6 %j, %indvars.iv, !dbg !39 ; [#uses=1 type=i1] [debug line = 23:13]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 39, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %6, label %4, !dbg !39   ; [debug line = 23:13]

; <label>:4                                       ; preds = %2
  %tmp.3 = zext i6 %j to i64, !dbg !41            ; [#uses=1 type=i64] [debug line = 24:13]
  %array_out.addr.16 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp.3, !dbg !41 ; [#uses=2 type=i32*] [debug line = 24:13]
  %temporal = load i32* %array_out.addr.16, align 4, !dbg !41 ; [#uses=2 type=i32] [debug line = 24:13]
  %j.1 = add i6 %j, 1, !dbg !41                   ; [#uses=2 type=i6] [debug line = 24:13]
  %tmp.5 = zext i6 %j.1 to i64, !dbg !41          ; [#uses=1 type=i64] [debug line = 24:13]
  %array_out.addr.28 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp.5, !dbg !41 ; [#uses=2 type=i32*] [debug line = 24:13]
  %array_out.load.1 = load i32* %array_out.addr.28, align 4, !dbg !41 ; [#uses=2 type=i32] [debug line = 24:13]
  %tmp.6 = icmp sgt i32 %temporal, %array_out.load.1, !dbg !41 ; [#uses=1 type=i1] [debug line = 24:13]
  br i1 %tmp.6, label %5, label %._crit_edge, !dbg !41 ; [debug line = 24:13]

; <label>:5                                       ; preds = %4
  call void @llvm.dbg.value(metadata !{i32 %temporal}, i64 0, metadata !43), !dbg !44 ; [debug line = 25:17] [debug variable = temporal]
  store i32 %array_out.load.1, i32* %array_out.addr.16, align 4, !dbg !46 ; [debug line = 26:17]
  store i32 %temporal, i32* %array_out.addr.28, align 4, !dbg !47 ; [debug line = 27:17]
  br label %._crit_edge, !dbg !48                 ; [debug line = 28:13]

._crit_edge:                                      ; preds = %5, %4
  call void @llvm.dbg.value(metadata !{i6 %j.1}, i64 0, metadata !49), !dbg !50 ; [debug line = 23:27] [debug variable = j]
  br label %2, !dbg !50                           ; [debug line = 23:27]

; <label>:6                                       ; preds = %2
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @.str3, i32 %tmp.) nounwind, !dbg !51 ; [#uses=0 type=i32] [debug line = 30:5]
  %i.1 = add i6 %i, 1, !dbg !52                   ; [#uses=1 type=i6] [debug line = 22:26]
  call void @llvm.dbg.value(metadata !{i6 %i.1}, i64 0, metadata !53), !dbg !52 ; [debug line = 22:26] [debug variable = i]
  %indvars.iv.next = add i6 %indvars.iv, -1, !dbg !52 ; [#uses=1 type=i6] [debug line = 22:26]
  br label %.preheader, !dbg !52                  ; [debug line = 22:26]

; <label>:8                                       ; preds = %.preheader
  ret void, !dbg !54                              ; [debug line = 32:5]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/trabajo_DSE_EnrLuc/hls/bubble_sort/bubble_sort/solution1/.autopilot/db/bubble_sort.pragma.2.cpp", metadata !"D:\5Ctrabajo_DSE_EnrLuc\5Chls\5Cbubble_sort", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"bubble_sort", metadata !"bubble_sort", metadata !"_Z11bubble_sortPiS_", metadata !6, i32 9, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 9} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../../sources/bubble_sort.cpp", metadata !"D:\5Ctrabajo_DSE_EnrLuc\5Chls\5Cbubble_sort", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"array", metadata !17, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 39, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"array_out", metadata !17, metadata !"int", i32 0, i32 31}
!23 = metadata !{i32 786689, metadata !5, metadata !"array", null, i32 9, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!24 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1280, i64 32, i32 0, i32 0, metadata !10, metadata !25, i32 0, i32 0} ; [ DW_TAG_array_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 39}       ; [ DW_TAG_subrange_type ]
!27 = metadata !{i32 9, i32 22, metadata !5, null}
!28 = metadata !{i32 786689, metadata !5, metadata !"array_out", null, i32 9, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!29 = metadata !{i32 9, i32 37, metadata !5, null}
!30 = metadata !{i32 12, i32 1, metadata !31, null}
!31 = metadata !{i32 786443, metadata !5, i32 9, i32 51, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 17, i32 2, metadata !33, null}
!33 = metadata !{i32 786443, metadata !34, i32 15, i32 27, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 786443, metadata !31, i32 15, i32 10, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 22, i32 14, metadata !36, null}
!36 = metadata !{i32 786443, metadata !31, i32 22, i32 10, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 22, i32 31, metadata !38, null}
!38 = metadata !{i32 786443, metadata !36, i32 22, i32 30, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 23, i32 13, metadata !40, null}
!40 = metadata !{i32 786443, metadata !38, i32 23, i32 9, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 24, i32 13, metadata !42, null}
!42 = metadata !{i32 786443, metadata !40, i32 23, i32 31, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786688, metadata !31, metadata !"temporal", metadata !6, i32 20, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 25, i32 17, metadata !45, null}
!45 = metadata !{i32 786443, metadata !42, i32 24, i32 46, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 26, i32 17, metadata !45, null}
!47 = metadata !{i32 27, i32 17, metadata !45, null}
!48 = metadata !{i32 28, i32 13, metadata !45, null}
!49 = metadata !{i32 786688, metadata !31, metadata !"j", metadata !6, i32 21, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 23, i32 27, metadata !40, null}
!51 = metadata !{i32 30, i32 5, metadata !38, null}
!52 = metadata !{i32 22, i32 26, metadata !36, null}
!53 = metadata !{i32 786688, metadata !31, metadata !"i", metadata !6, i32 21, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 32, i32 5, metadata !31, null}

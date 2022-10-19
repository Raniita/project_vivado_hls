; ModuleID = 'D:/trabajo_DSE_EnrLuc/hls/heap_sort/heap_sort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@heap_sort.str = internal unnamed_addr constant [10 x i8] c"heap_sort\00" ; [#uses=1 type=[10 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=3 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [5 x i8] c"SWAP\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=13 type=[1 x i8]*]

; [#uses=3]
define internal fastcc { i32, i32 } @swap_hw(i32 %x.read, i32 %y.read) readnone {
  call void @llvm.dbg.value(metadata !{i32 %x.read}, i64 0, metadata !20), !dbg !21 ; [debug line = 9:19] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i32 %y.read}, i64 0, metadata !22), !dbg !23 ; [debug line = 9:27] [debug variable = y]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !24 ; [debug line = 10:1]
  call void @llvm.dbg.value(metadata !{i32 %x.read}, i64 0, metadata !26), !dbg !27 ; [debug line = 12:16] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %y.read}, i64 0, metadata !28), !dbg !21 ; [debug line = 9:19] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i32 %x.read}, i64 0, metadata !29), !dbg !23 ; [debug line = 9:27] [debug variable = y]
  %mrv = insertvalue { i32, i32 } undef, i32 %y.read, 0, !dbg !30 ; [#uses=1 type={ i32, i32 }] [debug line = 15:1]
  %mrv.1 = insertvalue { i32, i32 } %mrv, i32 %x.read, 1, !dbg !30 ; [#uses=1 type={ i32, i32 }] [debug line = 15:1]
  ret { i32, i32 } %mrv.1, !dbg !30               ; [debug line = 15:1]
}

; [#uses=15]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @heap_sort([40 x i32]* %array, [40 x i32]* %array_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %array) nounwind, !map !31
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %array_out) nounwind, !map !37
  %array_out.addr = getelementptr [40 x i32]* %array_out, i64 0, i64 0 ; [#uses=3 type=i32*]
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @heap_sort.str) nounwind
  call void @llvm.dbg.value(metadata !{[40 x i32]* %array}, i64 0, metadata !41), !dbg !45 ; [debug line = 37:20] [debug variable = array]
  call void @llvm.dbg.value(metadata !{[40 x i32]* %array_out}, i64 0, metadata !46), !dbg !47 ; [debug line = 37:35] [debug variable = array_out]
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %array_out, [10 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %array, [10 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str) nounwind, !dbg !48 ; [debug line = 40:1]
  %array.addr = getelementptr [40 x i32]* %array, i64 0, i64 0, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load = load i32* %array.addr, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  store i32 %array.load, i32* %array_out.addr, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.1 = getelementptr [40 x i32]* %array, i64 0, i64 1, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.1 = load i32* %array.addr.1, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.1 = getelementptr [40 x i32]* %array_out, i64 0, i64 1, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.1, i32* %array_out.addr.1, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.2 = getelementptr [40 x i32]* %array, i64 0, i64 2, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.2 = load i32* %array.addr.2, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.2 = getelementptr [40 x i32]* %array_out, i64 0, i64 2, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.2, i32* %array_out.addr.2, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.3 = getelementptr [40 x i32]* %array, i64 0, i64 3, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.3 = load i32* %array.addr.3, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.3 = getelementptr [40 x i32]* %array_out, i64 0, i64 3, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.3, i32* %array_out.addr.3, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.4 = getelementptr [40 x i32]* %array, i64 0, i64 4, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.4 = load i32* %array.addr.4, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.4 = getelementptr [40 x i32]* %array_out, i64 0, i64 4, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.4, i32* %array_out.addr.4, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.5 = getelementptr [40 x i32]* %array, i64 0, i64 5, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.5 = load i32* %array.addr.5, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.5 = getelementptr [40 x i32]* %array_out, i64 0, i64 5, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.5, i32* %array_out.addr.5, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.6 = getelementptr [40 x i32]* %array, i64 0, i64 6, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.6 = load i32* %array.addr.6, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.6 = getelementptr [40 x i32]* %array_out, i64 0, i64 6, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.6, i32* %array_out.addr.6, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.7 = getelementptr [40 x i32]* %array, i64 0, i64 7, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.7 = load i32* %array.addr.7, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.7 = getelementptr [40 x i32]* %array_out, i64 0, i64 7, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.7, i32* %array_out.addr.7, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.8 = getelementptr [40 x i32]* %array, i64 0, i64 8, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.8 = load i32* %array.addr.8, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.8 = getelementptr [40 x i32]* %array_out, i64 0, i64 8, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.8, i32* %array_out.addr.8, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.9 = getelementptr [40 x i32]* %array, i64 0, i64 9, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.9 = load i32* %array.addr.9, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.9 = getelementptr [40 x i32]* %array_out, i64 0, i64 9, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.9, i32* %array_out.addr.9, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.10 = getelementptr [40 x i32]* %array, i64 0, i64 10, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.10 = load i32* %array.addr.10, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.10 = getelementptr [40 x i32]* %array_out, i64 0, i64 10, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.10, i32* %array_out.addr.10, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.11 = getelementptr [40 x i32]* %array, i64 0, i64 11, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.11 = load i32* %array.addr.11, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.11 = getelementptr [40 x i32]* %array_out, i64 0, i64 11, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.11, i32* %array_out.addr.11, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.12 = getelementptr [40 x i32]* %array, i64 0, i64 12, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.12 = load i32* %array.addr.12, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.12 = getelementptr [40 x i32]* %array_out, i64 0, i64 12, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.12, i32* %array_out.addr.12, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.13 = getelementptr [40 x i32]* %array, i64 0, i64 13, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.13 = load i32* %array.addr.13, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.13 = getelementptr [40 x i32]* %array_out, i64 0, i64 13, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.13, i32* %array_out.addr.13, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.14 = getelementptr [40 x i32]* %array, i64 0, i64 14, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.14 = load i32* %array.addr.14, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.14 = getelementptr [40 x i32]* %array_out, i64 0, i64 14, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.14, i32* %array_out.addr.14, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.15 = getelementptr [40 x i32]* %array, i64 0, i64 15, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.15 = load i32* %array.addr.15, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.15 = getelementptr [40 x i32]* %array_out, i64 0, i64 15, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.15, i32* %array_out.addr.15, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.16 = getelementptr [40 x i32]* %array, i64 0, i64 16, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.16 = load i32* %array.addr.16, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.17 = getelementptr [40 x i32]* %array_out, i64 0, i64 16, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.16, i32* %array_out.addr.17, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.17 = getelementptr [40 x i32]* %array, i64 0, i64 17, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.17 = load i32* %array.addr.17, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.18 = getelementptr [40 x i32]* %array_out, i64 0, i64 17, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.17, i32* %array_out.addr.18, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.18 = getelementptr [40 x i32]* %array, i64 0, i64 18, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.18 = load i32* %array.addr.18, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.19 = getelementptr [40 x i32]* %array_out, i64 0, i64 18, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.18, i32* %array_out.addr.19, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.19 = getelementptr [40 x i32]* %array, i64 0, i64 19, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.19 = load i32* %array.addr.19, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.20 = getelementptr [40 x i32]* %array_out, i64 0, i64 19, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.19, i32* %array_out.addr.20, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.20 = getelementptr [40 x i32]* %array, i64 0, i64 20, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.20 = load i32* %array.addr.20, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.21 = getelementptr [40 x i32]* %array_out, i64 0, i64 20, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.20, i32* %array_out.addr.21, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.21 = getelementptr [40 x i32]* %array, i64 0, i64 21, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.21 = load i32* %array.addr.21, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.22 = getelementptr [40 x i32]* %array_out, i64 0, i64 21, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.21, i32* %array_out.addr.22, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.22 = getelementptr [40 x i32]* %array, i64 0, i64 22, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.22 = load i32* %array.addr.22, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.23 = getelementptr [40 x i32]* %array_out, i64 0, i64 22, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.22, i32* %array_out.addr.23, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.23 = getelementptr [40 x i32]* %array, i64 0, i64 23, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.23 = load i32* %array.addr.23, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.24 = getelementptr [40 x i32]* %array_out, i64 0, i64 23, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.23, i32* %array_out.addr.24, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.24 = getelementptr [40 x i32]* %array, i64 0, i64 24, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.24 = load i32* %array.addr.24, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.25 = getelementptr [40 x i32]* %array_out, i64 0, i64 24, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.24, i32* %array_out.addr.25, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.25 = getelementptr [40 x i32]* %array, i64 0, i64 25, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.25 = load i32* %array.addr.25, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.26 = getelementptr [40 x i32]* %array_out, i64 0, i64 25, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.25, i32* %array_out.addr.26, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.26 = getelementptr [40 x i32]* %array, i64 0, i64 26, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.26 = load i32* %array.addr.26, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.27 = getelementptr [40 x i32]* %array_out, i64 0, i64 26, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.26, i32* %array_out.addr.27, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.27 = getelementptr [40 x i32]* %array, i64 0, i64 27, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.27 = load i32* %array.addr.27, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.29 = getelementptr [40 x i32]* %array_out, i64 0, i64 27, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.27, i32* %array_out.addr.29, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.28 = getelementptr [40 x i32]* %array, i64 0, i64 28, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.28 = load i32* %array.addr.28, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.30 = getelementptr [40 x i32]* %array_out, i64 0, i64 28, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.28, i32* %array_out.addr.30, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.29 = getelementptr [40 x i32]* %array, i64 0, i64 29, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.29 = load i32* %array.addr.29, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.31 = getelementptr [40 x i32]* %array_out, i64 0, i64 29, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.29, i32* %array_out.addr.31, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.30 = getelementptr [40 x i32]* %array, i64 0, i64 30, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.30 = load i32* %array.addr.30, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.32 = getelementptr [40 x i32]* %array_out, i64 0, i64 30, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.30, i32* %array_out.addr.32, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.31 = getelementptr [40 x i32]* %array, i64 0, i64 31, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.31 = load i32* %array.addr.31, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.33 = getelementptr [40 x i32]* %array_out, i64 0, i64 31, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.31, i32* %array_out.addr.33, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.32 = getelementptr [40 x i32]* %array, i64 0, i64 32, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.32 = load i32* %array.addr.32, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.34 = getelementptr [40 x i32]* %array_out, i64 0, i64 32, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.32, i32* %array_out.addr.34, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.33 = getelementptr [40 x i32]* %array, i64 0, i64 33, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.33 = load i32* %array.addr.33, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.35 = getelementptr [40 x i32]* %array_out, i64 0, i64 33, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.33, i32* %array_out.addr.35, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.34 = getelementptr [40 x i32]* %array, i64 0, i64 34, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.34 = load i32* %array.addr.34, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.36 = getelementptr [40 x i32]* %array_out, i64 0, i64 34, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.34, i32* %array_out.addr.36, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.35 = getelementptr [40 x i32]* %array, i64 0, i64 35, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.35 = load i32* %array.addr.35, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.37 = getelementptr [40 x i32]* %array_out, i64 0, i64 35, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.35, i32* %array_out.addr.37, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.36 = getelementptr [40 x i32]* %array, i64 0, i64 36, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.36 = load i32* %array.addr.36, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.38 = getelementptr [40 x i32]* %array_out, i64 0, i64 36, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.36, i32* %array_out.addr.38, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.37 = getelementptr [40 x i32]* %array, i64 0, i64 37, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.37 = load i32* %array.addr.37, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.39 = getelementptr [40 x i32]* %array_out, i64 0, i64 37, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.37, i32* %array_out.addr.39, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.38 = getelementptr [40 x i32]* %array, i64 0, i64 38, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.38 = load i32* %array.addr.38, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.40 = getelementptr [40 x i32]* %array_out, i64 0, i64 38, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.38, i32* %array_out.addr.40, align 4, !dbg !50 ; [debug line = 45:2]
  %array.addr.39 = getelementptr [40 x i32]* %array, i64 0, i64 39, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load.39 = load i32* %array.addr.39, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 45:2]
  %array_out.addr.41 = getelementptr [40 x i32]* %array_out, i64 0, i64 39, !dbg !50 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load.39, i32* %array_out.addr.41, align 4, !dbg !50 ; [debug line = 45:2]
  call void @llvm.dbg.value(metadata !{[40 x i32]* %array_out}, i64 0, metadata !53) nounwind, !dbg !55 ; [debug line = 20:26@50:2] [debug variable = array]
  br label %1, !dbg !56                           ; [debug line = 21:16@50:2]

; <label>:1                                       ; preds = %.loopexit.i, %0
  %j.2 = phi i6 [ 1, %0 ], [ %i.2, %.loopexit.i ] ; [#uses=5 type=i6]
  %j.i.cast1 = zext i6 %j.2 to i32, !dbg !59      ; [#uses=1 type=i32] [debug line = 24:13@50:2]
  call void @llvm.dbg.value(metadata !{i6 %j.2}, i64 0, metadata !62) nounwind, !dbg !59 ; [debug line = 24:13@50:2] [debug variable = j]
  %exitcond.i = icmp eq i6 %j.2, -24, !dbg !56    ; [#uses=1 type=i1] [debug line = 21:16@50:2]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 39, i64 39, i64 39) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %.loopexit.preheader, label %3, !dbg !56 ; [debug line = 21:16@50:2]

.loopexit.preheader:                              ; preds = %1
  br label %.loopexit, !dbg !63                   ; [debug line = 52:21]

; <label>:3                                       ; preds = %1
  %tmp.i = zext i6 %j.2 to i64, !dbg !65          ; [#uses=1 type=i64] [debug line = 23:3@50:2]
  %array_out.addr.45 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp.i, !dbg !65 ; [#uses=1 type=i32*] [debug line = 23:3@50:2]
  %array_out.load.6 = load i32* %array_out.addr.45, align 4, !dbg !65 ; [#uses=1 type=i32] [debug line = 23:3@50:2]
  %tmp..tr.i = add i6 %j.2, -1, !dbg !65          ; [#uses=1 type=i6] [debug line = 23:3@50:2]
  %_lshr.f.i = lshr i6 %tmp..tr.i, 1, !dbg !65    ; [#uses=1 type=i6] [debug line = 23:3@50:2]
  %_lshr.f.i.cast = trunc i6 %_lshr.f.i to i5, !dbg !65 ; [#uses=1 type=i5] [debug line = 23:3@50:2]
  %tmp..i = zext i5 %_lshr.f.i.cast to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 23:3@50:2]
  %array_out.addr.46 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp..i, !dbg !65 ; [#uses=1 type=i32*] [debug line = 23:3@50:2]
  %array_out.load.7 = load i32* %array_out.addr.46, align 4, !dbg !65 ; [#uses=1 type=i32] [debug line = 23:3@50:2]
  %tmp.11.i = icmp sgt i32 %array_out.load.6, %array_out.load.7, !dbg !65 ; [#uses=1 type=i1] [debug line = 23:3@50:2]
  br i1 %tmp.11.i, label %.preheader.i.preheader, label %.loopexit.i, !dbg !65 ; [debug line = 23:3@50:2]

.preheader.i.preheader:                           ; preds = %3
  br label %.preheader.i, !dbg !66                ; [debug line = 28:9@50:2]

.preheader.i:                                     ; preds = %4, %.preheader.i.preheader
  %j2.i = phi i32 [ %j.3, %4 ], [ %j.i.cast1, %.preheader.i.preheader ] ; [#uses=3 type=i32]
  %tmp.12.i = sext i32 %j2.i to i64, !dbg !66     ; [#uses=1 type=i64] [debug line = 28:9@50:2]
  %array_out.addr.47 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp.12.i, !dbg !66 ; [#uses=2 type=i32*] [debug line = 28:9@50:2]
  %array_out.load.8 = load i32* %array_out.addr.47, align 4, !dbg !66 ; [#uses=2 type=i32] [debug line = 28:9@50:2]
  %tmp.13.i = add nsw i32 %j2.i, -1, !dbg !66     ; [#uses=2 type=i32] [debug line = 28:9@50:2]
  %_signbit1.i = lshr i32 %tmp.13.i, 31, !dbg !66 ; [#uses=1 type=i32] [debug line = 28:9@50:2]
  %_cond1.i = trunc i32 %_signbit1.i to i1, !dbg !66 ; [#uses=1 type=i1] [debug line = 28:9@50:2]
  %_neg1.i = sub i32 1, %j2.i, !dbg !66           ; [#uses=1 type=i32] [debug line = 28:9@50:2]
  %_lshr1.i = lshr i32 %_neg1.i, 1, !dbg !66      ; [#uses=1 type=i32] [debug line = 28:9@50:2]
  %_neg.t1.i = sub i32 0, %_lshr1.i, !dbg !66     ; [#uses=1 type=i32] [debug line = 28:9@50:2]
  %_lshr.f1.i = lshr i32 %tmp.13.i, 1, !dbg !66   ; [#uses=1 type=i32] [debug line = 28:9@50:2]
  %j.3 = select i1 %_cond1.i, i32 %_neg.t1.i, i32 %_lshr.f1.i, !dbg !66 ; [#uses=2 type=i32] [debug line = 28:9@50:2]
  %tmp.14.i = sext i32 %j.3 to i64, !dbg !66      ; [#uses=1 type=i64] [debug line = 28:9@50:2]
  %array_out.addr.48 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp.14.i, !dbg !66 ; [#uses=2 type=i32*] [debug line = 28:9@50:2]
  %array_out.load.9 = load i32* %array_out.addr.48, align 4, !dbg !66 ; [#uses=2 type=i32] [debug line = 28:9@50:2]
  %tmp.15.i = icmp sgt i32 %array_out.load.8, %array_out.load.9, !dbg !66 ; [#uses=1 type=i1] [debug line = 28:9@50:2]
  br i1 %tmp.15.i, label %4, label %.loopexit.i.loopexit, !dbg !66 ; [debug line = 28:9@50:2]

; <label>:4                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str1) nounwind, !dbg !67 ; [debug line = 28:47@50:2]
  %call.ret.i = call fastcc { i32, i32 } @swap_hw(i32 %array_out.load.8, i32 %array_out.load.9) nounwind, !dbg !69 ; [#uses=2 type={ i32, i32 }] [debug line = 30:2@50:2]
  %array.addr.25.ret.i = extractvalue { i32, i32 } %call.ret.i, 0, !dbg !69 ; [#uses=1 type=i32] [debug line = 30:2@50:2]
  store i32 %array.addr.25.ret.i, i32* %array_out.addr.47, align 4, !dbg !69 ; [debug line = 30:2@50:2]
  %array.addr.37.ret.i = extractvalue { i32, i32 } %call.ret.i, 1, !dbg !69 ; [#uses=1 type=i32] [debug line = 30:2@50:2]
  store i32 %array.addr.37.ret.i, i32* %array_out.addr.48, align 4, !dbg !69 ; [debug line = 30:2@50:2]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !62) nounwind, !dbg !70 ; [debug line = 31:5@50:2] [debug variable = j]
  br label %.preheader.i, !dbg !71                ; [debug line = 32:4@50:2]

.loopexit.i.loopexit:                             ; preds = %.preheader.i
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %3
  %i.2 = add i6 %j.2, 1, !dbg !72                 ; [#uses=1 type=i6] [debug line = 21:26@50:2]
  call void @llvm.dbg.value(metadata !{i6 %i.2}, i64 0, metadata !73) nounwind, !dbg !72 ; [debug line = 21:26@50:2] [debug variable = i]
  br label %1, !dbg !72                           ; [debug line = 21:26@50:2]

.loopexit.loopexit:                               ; preds = %._crit_edge1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.preheader
  %i = phi i31 [ %i.1, %.loopexit.loopexit ], [ 39, %.loopexit.preheader ] ; [#uses=4 type=i31]
  %i.cast = zext i31 %i to i32, !dbg !63          ; [#uses=1 type=i32] [debug line = 52:21]
  %tmp.2 = icmp eq i31 %i, 0, !dbg !63            ; [#uses=1 type=i1] [debug line = 52:21]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 39, i64 39, i64 39) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.2, label %9, label %6, !dbg !63      ; [debug line = 52:21]

; <label>:6                                       ; preds = %.loopexit
  %tmp.3 = zext i31 %i to i64, !dbg !74           ; [#uses=1 type=i64] [debug line = 55:3]
  %array_out.addr.16 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp.3, !dbg !74 ; [#uses=2 type=i32*] [debug line = 55:3]
  %array_out.load.4 = load i32* %array_out.addr, align 4, !dbg !74 ; [#uses=1 type=i32] [debug line = 55:3]
  %array_out.load.5 = load i32* %array_out.addr.16, align 4, !dbg !74 ; [#uses=1 type=i32] [debug line = 55:3]
  %call.ret = call fastcc { i32, i32 } @swap_hw(i32 %array_out.load.4, i32 %array_out.load.5) nounwind, !dbg !74 ; [#uses=2 type={ i32, i32 }] [debug line = 55:3]
  %gep2.ret = extractvalue { i32, i32 } %call.ret, 0, !dbg !74 ; [#uses=1 type=i32] [debug line = 55:3]
  store i32 %gep2.ret, i32* %array_out.addr, align 4, !dbg !74 ; [debug line = 55:3]
  %array_out.addr.16.ret = extractvalue { i32, i32 } %call.ret, 1, !dbg !74 ; [#uses=1 type=i32] [debug line = 55:3]
  store i32 %array_out.addr.16.ret, i32* %array_out.addr.16, align 4, !dbg !74 ; [debug line = 55:3]
  %i.1 = add i31 %i, -1, !dbg !76                 ; [#uses=2 type=i31] [debug line = 68:4]
  %i.1.cast = zext i31 %i.1 to i32, !dbg !76      ; [#uses=1 type=i32] [debug line = 68:4]
  call void @llvm.dbg.value(metadata !{i31 %i.1}, i64 0, metadata !78), !dbg !79 ; [debug line = 52:30] [debug variable = i]
  br label %._crit_edge2, !dbg !80                ; [debug line = 62:3]

._crit_edge2:                                     ; preds = %._crit_edge1, %6
  %j = phi i32 [ 0, %6 ], [ %j.1, %._crit_edge1 ] ; [#uses=2 type=i32]
  %tmp.5 = shl nsw i32 %j, 1, !dbg !81            ; [#uses=1 type=i32] [debug line = 63:4]
  %index = or i32 %tmp.5, 1, !dbg !81             ; [#uses=5 type=i32] [debug line = 63:4]
  call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !82), !dbg !81 ; [debug line = 63:4] [debug variable = index]
  %tmp.7 = sext i32 %index to i64, !dbg !76       ; [#uses=1 type=i64] [debug line = 68:4]
  %array_out.addr.28 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp.7, !dbg !76 ; [#uses=1 type=i32*] [debug line = 68:4]
  %array_out.load = load i32* %array_out.addr.28, align 4, !dbg !76 ; [#uses=1 type=i32] [debug line = 68:4]
  %index.1 = add nsw i32 %index, 1, !dbg !76      ; [#uses=2 type=i32] [debug line = 68:4]
  %tmp.9 = sext i32 %index.1 to i64, !dbg !76     ; [#uses=1 type=i64] [debug line = 68:4]
  %array_out.addr.42 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp.9, !dbg !76 ; [#uses=1 type=i32*] [debug line = 68:4]
  %array_out.load.1 = load i32* %array_out.addr.42, align 4, !dbg !76 ; [#uses=1 type=i32] [debug line = 68:4]
  %tmp. = icmp slt i32 %array_out.load, %array_out.load.1, !dbg !76 ; [#uses=1 type=i1] [debug line = 68:4]
  br i1 %tmp., label %7, label %._crit_edge, !dbg !76 ; [debug line = 68:4]

; <label>:7                                       ; preds = %._crit_edge2
  %tmp.1 = icmp slt i32 %index, %i.1.cast, !dbg !76 ; [#uses=1 type=i1] [debug line = 68:4]
  call void @llvm.dbg.value(metadata !{i32 %index.1}, i64 0, metadata !82), !dbg !83 ; [debug line = 69:8] [debug variable = index]
  %. = select i1 %tmp.1, i32 %index.1, i32 %index, !dbg !76 ; [#uses=1 type=i32] [debug line = 68:4]
  br label %._crit_edge, !dbg !76                 ; [debug line = 68:4]

._crit_edge:                                      ; preds = %7, %._crit_edge2
  %j.1 = phi i32 [ %., %7 ], [ %index, %._crit_edge2 ] ; [#uses=3 type=i32]
  %tmp.4 = sext i32 %j to i64, !dbg !85           ; [#uses=1 type=i64] [debug line = 75:4]
  %array_out.addr.43 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp.4, !dbg !85 ; [#uses=2 type=i32*] [debug line = 75:4]
  %array_out.load.2 = load i32* %array_out.addr.43, align 4, !dbg !85 ; [#uses=2 type=i32] [debug line = 75:4]
  %tmp.6 = sext i32 %j.1 to i64, !dbg !85         ; [#uses=1 type=i64] [debug line = 75:4]
  %array_out.addr.44 = getelementptr [40 x i32]* %array_out, i64 0, i64 %tmp.6, !dbg !85 ; [#uses=2 type=i32*] [debug line = 75:4]
  %array_out.load.3 = load i32* %array_out.addr.44, align 4, !dbg !85 ; [#uses=2 type=i32] [debug line = 75:4]
  %tmp.8 = icmp slt i32 %array_out.load.2, %array_out.load.3, !dbg !85 ; [#uses=1 type=i1] [debug line = 75:4]
  %tmp.10 = icmp slt i32 %j.1, %i.cast, !dbg !85  ; [#uses=2 type=i1] [debug line = 75:4]
  %or.cond = and i1 %tmp.8, %tmp.10, !dbg !85     ; [#uses=1 type=i1] [debug line = 75:4]
  br i1 %or.cond, label %8, label %._crit_edge1, !dbg !85 ; [debug line = 75:4]

; <label>:8                                       ; preds = %._crit_edge
  %call.ret1 = call fastcc { i32, i32 } @swap_hw(i32 %array_out.load.2, i32 %array_out.load.3) nounwind, !dbg !86 ; [#uses=2 type={ i32, i32 }] [debug line = 76:8]
  %array_out.addr.412.ret = extractvalue { i32, i32 } %call.ret1, 0, !dbg !86 ; [#uses=1 type=i32] [debug line = 76:8]
  store i32 %array_out.addr.412.ret, i32* %array_out.addr.43, align 4, !dbg !86 ; [debug line = 76:8]
  %array_out.addr.514.ret = extractvalue { i32, i32 } %call.ret1, 1, !dbg !86 ; [#uses=1 type=i32] [debug line = 76:8]
  store i32 %array_out.addr.514.ret, i32* %array_out.addr.44, align 4, !dbg !86 ; [debug line = 76:8]
  br label %._crit_edge1, !dbg !88                ; [debug line = 77:4]

._crit_edge1:                                     ; preds = %8, %._crit_edge
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !89), !dbg !90 ; [debug line = 79:4] [debug variable = j]
  br i1 %tmp.10, label %._crit_edge2, label %.loopexit.loopexit, !dbg !91 ; [debug line = 81:3]

; <label>:9                                       ; preds = %.loopexit
  ret void, !dbg !92                              ; [debug line = 84:5]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

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

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/trabajo_DSE_EnrLuc/hls/heap_sort/heap_sort/solution1/.autopilot/db/heap_sort.pragma.2.cpp", metadata !"D:\5Ctrabajo_DSE_EnrLuc\5Chls\5Cheap_sort", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13, metadata !17}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"swap_hw", metadata !"swap_hw", metadata !"_Z7swap_hwRiS_", metadata !6, i32 9, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 9} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../../sources/heap_sort.cpp", metadata !"D:\5Ctrabajo_DSE_EnrLuc\5Chls\5Cheap_sort", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"buildMaxHeap_hw", metadata !"buildMaxHeap_hw", metadata !"_Z15buildMaxHeap_hwPi", metadata !6, i32 20, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 20} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{null, metadata !16}
!16 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"heap_sort", metadata !"heap_sort", metadata !"_Z9heap_sortPiS_", metadata !6, i32 37, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 37} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !16, metadata !16}
!20 = metadata !{i32 790532, metadata !5, metadata !"x", null, i32 9, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!21 = metadata !{i32 9, i32 19, metadata !5, null}
!22 = metadata !{i32 790532, metadata !5, metadata !"y", null, i32 9, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!23 = metadata !{i32 9, i32 27, metadata !5, null}
!24 = metadata !{i32 10, i32 1, metadata !25, null}
!25 = metadata !{i32 786443, metadata !5, i32 9, i32 29, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 786688, metadata !25, metadata !"tmp", metadata !6, i32 12, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!27 = metadata !{i32 12, i32 16, metadata !25, null}
!28 = metadata !{i32 790534, metadata !5, metadata !"x", null, i32 9, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable_wo ]
!29 = metadata !{i32 790534, metadata !5, metadata !"y", null, i32 9, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable_wo ]
!30 = metadata !{i32 15, i32 1, metadata !25, null}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"array", metadata !35, metadata !"int", i32 0, i32 31}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 39, i32 1}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"array_out", metadata !35, metadata !"int", i32 0, i32 31}
!41 = metadata !{i32 786689, metadata !17, metadata !"array", null, i32 37, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1280, i64 32, i32 0, i32 0, metadata !10, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786465, i64 0, i64 39}       ; [ DW_TAG_subrange_type ]
!45 = metadata !{i32 37, i32 20, metadata !17, null}
!46 = metadata !{i32 786689, metadata !17, metadata !"array_out", null, i32 37, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!47 = metadata !{i32 37, i32 35, metadata !17, null}
!48 = metadata !{i32 40, i32 1, metadata !49, null}
!49 = metadata !{i32 786443, metadata !17, i32 37, i32 49, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 45, i32 2, metadata !51, null}
!51 = metadata !{i32 786443, metadata !52, i32 43, i32 27, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786443, metadata !49, i32 43, i32 10, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 786689, metadata !13, metadata !"array", null, i32 20, metadata !42, i32 0, metadata !54} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 50, i32 2, metadata !49, null}
!55 = metadata !{i32 20, i32 26, metadata !13, metadata !54}
!56 = metadata !{i32 21, i32 16, metadata !57, metadata !54}
!57 = metadata !{i32 786443, metadata !58, i32 21, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 786443, metadata !13, i32 20, i32 36, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 24, i32 13, metadata !60, metadata !54}
!60 = metadata !{i32 786443, metadata !61, i32 23, i32 37, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 786443, metadata !57, i32 21, i32 30, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 786688, metadata !60, metadata !"j", metadata !6, i32 24, metadata !10, i32 0, metadata !54} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 52, i32 21, metadata !64, null}
!64 = metadata !{i32 786443, metadata !49, i32 52, i32 2, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 23, i32 3, metadata !61, metadata !54}
!66 = metadata !{i32 28, i32 9, metadata !60, metadata !54}
!67 = metadata !{i32 28, i32 47, metadata !68, metadata !54}
!68 = metadata !{i32 786443, metadata !60, i32 28, i32 46, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 30, i32 2, metadata !68, metadata !54}
!70 = metadata !{i32 31, i32 5, metadata !68, metadata !54}
!71 = metadata !{i32 32, i32 4, metadata !68, metadata !54}
!72 = metadata !{i32 21, i32 26, metadata !57, metadata !54}
!73 = metadata !{i32 786688, metadata !57, metadata !"i", metadata !6, i32 21, metadata !10, i32 0, metadata !54} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 55, i32 3, metadata !75, null}
!75 = metadata !{i32 786443, metadata !64, i32 52, i32 34, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 68, i32 4, metadata !77, null}
!77 = metadata !{i32 786443, metadata !75, i32 62, i32 6, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 786688, metadata !64, metadata !"i", metadata !6, i32 52, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 52, i32 30, metadata !64, null}
!80 = metadata !{i32 62, i32 3, metadata !75, null}
!81 = metadata !{i32 63, i32 4, metadata !77, null}
!82 = metadata !{i32 786688, metadata !75, metadata !"index", metadata !6, i32 60, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 69, i32 8, metadata !84, null}
!84 = metadata !{i32 786443, metadata !77, i32 68, i32 67, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 75, i32 4, metadata !77, null}
!86 = metadata !{i32 76, i32 8, metadata !87, null}
!87 = metadata !{i32 786443, metadata !77, i32 75, i32 53, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 77, i32 4, metadata !87, null}
!89 = metadata !{i32 786688, metadata !75, metadata !"j", metadata !6, i32 59, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 79, i32 4, metadata !77, null}
!91 = metadata !{i32 81, i32 3, metadata !77, null}
!92 = metadata !{i32 84, i32 5, metadata !49, null}

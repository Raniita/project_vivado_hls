; ModuleID = 'D:/trabajo_DSE_EnrLuc/hls/heap_sort/heap_sort/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@heap_sort.str = internal unnamed_addr constant [10 x i8] c"heap_sort\00" ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [5 x i8] c"SWAP\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=3]
define internal fastcc void @swap_hw(i32* %x, i32* %y) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32* %x}, i64 0, metadata !20), !dbg !21 ; [debug line = 9:19] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !22), !dbg !23 ; [debug line = 9:27] [debug variable = y]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !24 ; [debug line = 10:1]
  %tmp = load i32* %x, align 4, !dbg !26          ; [#uses=1 type=i32] [debug line = 12:16]
  call void @llvm.dbg.value(metadata !{i32 %tmp}, i64 0, metadata !27), !dbg !26 ; [debug line = 12:16] [debug variable = tmp]
  %y.load = load i32* %y, align 4, !dbg !28       ; [#uses=1 type=i32] [debug line = 13:5]
  store i32 %y.load, i32* %x, align 4, !dbg !28   ; [debug line = 13:5]
  store i32 %tmp, i32* %y, align 4, !dbg !29      ; [debug line = 14:5]
  ret void, !dbg !30                              ; [debug line = 15:1]
}

; [#uses=14]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @heap_sort(i32* %array, i32* %array_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @heap_sort.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %array}, i64 0, metadata !31), !dbg !32 ; [debug line = 37:20] [debug variable = array]
  call void @llvm.dbg.value(metadata !{i32* %array_out}, i64 0, metadata !33), !dbg !34 ; [debug line = 37:35] [debug variable = array_out]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %array, i32 40) nounwind, !dbg !35 ; [debug line = 37:50]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %array_out, i32 40) nounwind, !dbg !37 ; [debug line = 37:83]
  call void (...)* @_ssdm_op_SpecInterface(i32* %array_out, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !38 ; [debug line = 38:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %array, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !39 ; [debug line = 39:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !40 ; [debug line = 40:1]
  br label %1, !dbg !41                           ; [debug line = 43:14]

; <label>:1                                       ; preds = %2, %0
  %c = phi i32 [ 0, %0 ], [ %c.1, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %c, 40, !dbg !41        ; [#uses=1 type=i1] [debug line = 43:14]
  br i1 %exitcond, label %3, label %2, !dbg !41   ; [debug line = 43:14]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !43 ; [debug line = 43:28]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !43 ; [#uses=1 type=i32] [debug line = 43:28]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !45 ; [debug line = 44:1]
  %tmp = sext i32 %c to i64, !dbg !46             ; [#uses=2 type=i64] [debug line = 45:2]
  %array.addr = getelementptr inbounds i32* %array, i64 %tmp, !dbg !46 ; [#uses=1 type=i32*] [debug line = 45:2]
  %array.load = load i32* %array.addr, align 4, !dbg !46 ; [#uses=2 type=i32] [debug line = 45:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array.load) nounwind
  %array_out.addr = getelementptr inbounds i32* %array_out, i64 %tmp, !dbg !46 ; [#uses=1 type=i32*] [debug line = 45:2]
  store i32 %array.load, i32* %array_out.addr, align 4, !dbg !46 ; [debug line = 45:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !47 ; [#uses=0 type=i32] [debug line = 48:5]
  %c.1 = add nsw i32 %c, 1, !dbg !48              ; [#uses=1 type=i32] [debug line = 43:23]
  call void @llvm.dbg.value(metadata !{i32 %c.1}, i64 0, metadata !49), !dbg !48 ; [debug line = 43:23] [debug variable = c]
  br label %1, !dbg !48                           ; [debug line = 43:23]

; <label>:3                                       ; preds = %1
  call fastcc void @buildMaxHeap_hw(i32* %array_out), !dbg !50 ; [debug line = 50:2]
  br label %.loopexit, !dbg !51                   ; [debug line = 52:21]

.loopexit.loopexit:                               ; preds = %._crit_edge1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %3
  %i = phi i32 [ 39, %3 ], [ %i.1, %.loopexit.loopexit ] ; [#uses=4 type=i32]
  %tmp.2 = icmp sgt i32 %i, 0, !dbg !51           ; [#uses=1 type=i1] [debug line = 52:21]
  br i1 %tmp.2, label %4, label %7, !dbg !51      ; [debug line = 52:21]

; <label>:4                                       ; preds = %.loopexit
  %tmp.3 = sext i32 %i to i64, !dbg !53           ; [#uses=1 type=i64] [debug line = 55:3]
  %array_out.addr.1 = getelementptr inbounds i32* %array_out, i64 %tmp.3, !dbg !53 ; [#uses=1 type=i32*] [debug line = 55:3]
  call fastcc void @swap_hw(i32* %array_out, i32* %array_out.addr.1), !dbg !53 ; [debug line = 55:3]
  %i.1 = add nsw i32 %i, -1, !dbg !55             ; [#uses=2 type=i32] [debug line = 68:4]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !57), !dbg !58 ; [debug line = 52:30] [debug variable = i]
  br label %._crit_edge2, !dbg !59                ; [debug line = 62:3]

._crit_edge2:                                     ; preds = %._crit_edge1, %4
  %j = phi i32 [ 0, %4 ], [ %j.1, %._crit_edge1 ] ; [#uses=2 type=i32]
  %tmp.5 = shl nsw i32 %j, 1, !dbg !60            ; [#uses=1 type=i32] [debug line = 63:4]
  %index = or i32 %tmp.5, 1, !dbg !60             ; [#uses=5 type=i32] [debug line = 63:4]
  call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !61), !dbg !60 ; [debug line = 63:4] [debug variable = index]
  %tmp.7 = sext i32 %index to i64, !dbg !55       ; [#uses=1 type=i64] [debug line = 68:4]
  %array_out.addr.2 = getelementptr inbounds i32* %array_out, i64 %tmp.7, !dbg !55 ; [#uses=1 type=i32*] [debug line = 68:4]
  %array_out.load = load i32* %array_out.addr.2, align 4, !dbg !55 ; [#uses=2 type=i32] [debug line = 68:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array_out.load) nounwind
  %index.1 = add nsw i32 %index, 1, !dbg !55      ; [#uses=2 type=i32] [debug line = 68:4]
  %tmp.9 = sext i32 %index.1 to i64, !dbg !55     ; [#uses=1 type=i64] [debug line = 68:4]
  %array_out.addr.3 = getelementptr inbounds i32* %array_out, i64 %tmp.9, !dbg !55 ; [#uses=1 type=i32*] [debug line = 68:4]
  %array_out.load.1 = load i32* %array_out.addr.3, align 4, !dbg !55 ; [#uses=2 type=i32] [debug line = 68:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array_out.load.1) nounwind
  %tmp.10 = icmp slt i32 %array_out.load, %array_out.load.1, !dbg !55 ; [#uses=1 type=i1] [debug line = 68:4]
  br i1 %tmp.10, label %5, label %._crit_edge, !dbg !55 ; [debug line = 68:4]

; <label>:5                                       ; preds = %._crit_edge2
  %tmp.11 = icmp slt i32 %index, %i.1, !dbg !55   ; [#uses=1 type=i1] [debug line = 68:4]
  call void @llvm.dbg.value(metadata !{i32 %index.1}, i64 0, metadata !61), !dbg !62 ; [debug line = 69:8] [debug variable = index]
  %. = select i1 %tmp.11, i32 %index.1, i32 %index, !dbg !55 ; [#uses=1 type=i32] [debug line = 68:4]
  br label %._crit_edge, !dbg !55                 ; [debug line = 68:4]

._crit_edge:                                      ; preds = %5, %._crit_edge2
  %j.1 = phi i32 [ %., %5 ], [ %index, %._crit_edge2 ] ; [#uses=3 type=i32]
  %tmp.12 = sext i32 %j to i64, !dbg !64          ; [#uses=1 type=i64] [debug line = 75:4]
  %array_out.addr.4 = getelementptr inbounds i32* %array_out, i64 %tmp.12, !dbg !64 ; [#uses=2 type=i32*] [debug line = 75:4]
  %array_out.load.2 = load i32* %array_out.addr.4, align 4, !dbg !64 ; [#uses=2 type=i32] [debug line = 75:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array_out.load.2) nounwind
  %tmp.13 = sext i32 %j.1 to i64, !dbg !64        ; [#uses=1 type=i64] [debug line = 75:4]
  %array_out.addr.5 = getelementptr inbounds i32* %array_out, i64 %tmp.13, !dbg !64 ; [#uses=2 type=i32*] [debug line = 75:4]
  %array_out.load.3 = load i32* %array_out.addr.5, align 4, !dbg !64 ; [#uses=2 type=i32] [debug line = 75:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array_out.load.3) nounwind
  %tmp.14 = icmp slt i32 %array_out.load.2, %array_out.load.3, !dbg !64 ; [#uses=1 type=i1] [debug line = 75:4]
  %tmp.15 = icmp slt i32 %j.1, %i, !dbg !64       ; [#uses=2 type=i1] [debug line = 75:4]
  %or.cond = and i1 %tmp.14, %tmp.15, !dbg !64    ; [#uses=1 type=i1] [debug line = 75:4]
  br i1 %or.cond, label %6, label %._crit_edge1, !dbg !64 ; [debug line = 75:4]

; <label>:6                                       ; preds = %._crit_edge
  call fastcc void @swap_hw(i32* %array_out.addr.4, i32* %array_out.addr.5), !dbg !65 ; [debug line = 76:8]
  br label %._crit_edge1, !dbg !67                ; [debug line = 77:4]

._crit_edge1:                                     ; preds = %6, %._crit_edge
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !68), !dbg !69 ; [debug line = 79:4] [debug variable = j]
  br i1 %tmp.15, label %._crit_edge2, label %.loopexit.loopexit, !dbg !70 ; [debug line = 81:3]

; <label>:7                                       ; preds = %.loopexit
  ret void, !dbg !71                              ; [debug line = 84:5]
}

; [#uses=1]
define internal fastcc void @buildMaxHeap_hw(i32* %array) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32* %array}, i64 0, metadata !72), !dbg !73 ; [debug line = 20:26] [debug variable = array]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %array, i32 40) nounwind, !dbg !74 ; [debug line = 20:37]
  br label %1, !dbg !76                           ; [debug line = 21:16]

; <label>:1                                       ; preds = %.loopexit, %0
  %j = phi i32 [ 1, %0 ], [ %i, %.loopexit ]      ; [#uses=5 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !78), !dbg !81 ; [debug line = 24:13] [debug variable = j]
  %exitcond = icmp eq i32 %j, 40, !dbg !76        ; [#uses=1 type=i1] [debug line = 21:16]
  br i1 %exitcond, label %4, label %2, !dbg !76   ; [debug line = 21:16]

; <label>:2                                       ; preds = %1
  %tmp = sext i32 %j to i64, !dbg !82             ; [#uses=1 type=i64] [debug line = 23:3]
  %array.addr = getelementptr inbounds i32* %array, i64 %tmp, !dbg !82 ; [#uses=1 type=i32*] [debug line = 23:3]
  %array.load = load i32* %array.addr, align 4, !dbg !82 ; [#uses=2 type=i32] [debug line = 23:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array.load) nounwind
  %tmp.16 = add nsw i32 %j, -1, !dbg !82          ; [#uses=1 type=i32] [debug line = 23:3]
  %tmp.17 = sdiv i32 %tmp.16, 2, !dbg !82         ; [#uses=1 type=i32] [debug line = 23:3]
  %tmp.18 = sext i32 %tmp.17 to i64, !dbg !82     ; [#uses=1 type=i64] [debug line = 23:3]
  %array.addr.1 = getelementptr inbounds i32* %array, i64 %tmp.18, !dbg !82 ; [#uses=1 type=i32*] [debug line = 23:3]
  %array.load.1 = load i32* %array.addr.1, align 4, !dbg !82 ; [#uses=2 type=i32] [debug line = 23:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array.load.1) nounwind
  %tmp.19 = icmp sgt i32 %array.load, %array.load.1, !dbg !82 ; [#uses=1 type=i1] [debug line = 23:3]
  br i1 %tmp.19, label %.preheader.preheader, label %.loopexit, !dbg !82 ; [debug line = 23:3]

.preheader.preheader:                             ; preds = %2
  br label %.preheader, !dbg !83                  ; [debug line = 28:9]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %j2 = phi i32 [ %j.3, %3 ], [ %j, %.preheader.preheader ] ; [#uses=2 type=i32]
  %tmp.20 = sext i32 %j2 to i64, !dbg !83         ; [#uses=1 type=i64] [debug line = 28:9]
  %array.addr.2 = getelementptr inbounds i32* %array, i64 %tmp.20, !dbg !83 ; [#uses=2 type=i32*] [debug line = 28:9]
  %array.load.2 = load i32* %array.addr.2, align 4, !dbg !83 ; [#uses=2 type=i32] [debug line = 28:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array.load.2) nounwind
  %tmp.21 = add nsw i32 %j2, -1, !dbg !83         ; [#uses=1 type=i32] [debug line = 28:9]
  %j.3 = sdiv i32 %tmp.21, 2, !dbg !83            ; [#uses=2 type=i32] [debug line = 28:9]
  %tmp.23 = sext i32 %j.3 to i64, !dbg !83        ; [#uses=1 type=i64] [debug line = 28:9]
  %array.addr.3 = getelementptr inbounds i32* %array, i64 %tmp.23, !dbg !83 ; [#uses=2 type=i32*] [debug line = 28:9]
  %array.load.3 = load i32* %array.addr.3, align 4, !dbg !83 ; [#uses=2 type=i32] [debug line = 28:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array.load.3) nounwind
  %tmp.24 = icmp sgt i32 %array.load.2, %array.load.3, !dbg !83 ; [#uses=1 type=i1] [debug line = 28:9]
  br i1 %tmp.24, label %3, label %.loopexit.loopexit, !dbg !83 ; [debug line = 28:9]

; <label>:3                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !84 ; [debug line = 28:47]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !84 ; [#uses=1 type=i32] [debug line = 28:47]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !86 ; [debug line = 29:1]
  call fastcc void @swap_hw(i32* %array.addr.2, i32* %array.addr.3), !dbg !87 ; [debug line = 30:2]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !78), !dbg !88 ; [debug line = 31:5] [debug variable = j]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !89 ; [#uses=0 type=i32] [debug line = 32:4]
  br label %.preheader, !dbg !89                  ; [debug line = 32:4]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %2
  %i = add nsw i32 %j, 1, !dbg !90                ; [#uses=1 type=i32] [debug line = 21:26]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !91), !dbg !90 ; [debug line = 21:26] [debug variable = i]
  br label %1, !dbg !90                           ; [debug line = 21:26]

; <label>:4                                       ; preds = %1
  ret void, !dbg !92                              ; [debug line = 35:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=9]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/trabajo_DSE_EnrLuc/hls/heap_sort/heap_sort/solution1/.autopilot/db/heap_sort.pragma.2.cpp", metadata !"D:\5Ctrabajo_DSE_EnrLuc\5Chls\5Cheap_sort", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13, metadata !17}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"swap_hw", metadata !"swap_hw", metadata !"_Z7swap_hwRiS_", metadata !6, i32 9, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @swap_hw, null, null, metadata !11, i32 9} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../../sources/heap_sort.cpp", metadata !"D:\5Ctrabajo_DSE_EnrLuc\5Chls\5Cheap_sort", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"buildMaxHeap_hw", metadata !"buildMaxHeap_hw", metadata !"_Z15buildMaxHeap_hwPi", metadata !6, i32 20, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @buildMaxHeap_hw, null, null, metadata !11, i32 20} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{null, metadata !16}
!16 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"heap_sort", metadata !"heap_sort", metadata !"_Z9heap_sortPiS_", metadata !6, i32 37, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @heap_sort, null, null, metadata !11, i32 37} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !16, metadata !16}
!20 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777225, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 9, i32 19, metadata !5, null}
!22 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 33554441, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 9, i32 27, metadata !5, null}
!24 = metadata !{i32 10, i32 1, metadata !25, null}
!25 = metadata !{i32 786443, metadata !5, i32 9, i32 29, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 12, i32 16, metadata !25, null}
!27 = metadata !{i32 786688, metadata !25, metadata !"tmp", metadata !6, i32 12, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!28 = metadata !{i32 13, i32 5, metadata !25, null}
!29 = metadata !{i32 14, i32 5, metadata !25, null}
!30 = metadata !{i32 15, i32 1, metadata !25, null}
!31 = metadata !{i32 786689, metadata !17, metadata !"array", metadata !6, i32 16777253, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 37, i32 20, metadata !17, null}
!33 = metadata !{i32 786689, metadata !17, metadata !"array_out", metadata !6, i32 33554469, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 37, i32 35, metadata !17, null}
!35 = metadata !{i32 37, i32 50, metadata !36, null}
!36 = metadata !{i32 786443, metadata !17, i32 37, i32 49, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 37, i32 83, metadata !36, null}
!38 = metadata !{i32 38, i32 1, metadata !36, null}
!39 = metadata !{i32 39, i32 1, metadata !36, null}
!40 = metadata !{i32 40, i32 1, metadata !36, null}
!41 = metadata !{i32 43, i32 14, metadata !42, null}
!42 = metadata !{i32 786443, metadata !36, i32 43, i32 10, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 43, i32 28, metadata !44, null}
!44 = metadata !{i32 786443, metadata !42, i32 43, i32 27, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 44, i32 1, metadata !44, null}
!46 = metadata !{i32 45, i32 2, metadata !44, null}
!47 = metadata !{i32 48, i32 5, metadata !44, null}
!48 = metadata !{i32 43, i32 23, metadata !42, null}
!49 = metadata !{i32 786688, metadata !36, metadata !"c", metadata !6, i32 42, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 50, i32 2, metadata !36, null}
!51 = metadata !{i32 52, i32 21, metadata !52, null}
!52 = metadata !{i32 786443, metadata !36, i32 52, i32 2, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 55, i32 3, metadata !54, null}
!54 = metadata !{i32 786443, metadata !52, i32 52, i32 34, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 68, i32 4, metadata !56, null}
!56 = metadata !{i32 786443, metadata !54, i32 62, i32 6, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 786688, metadata !52, metadata !"i", metadata !6, i32 52, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 52, i32 30, metadata !52, null}
!59 = metadata !{i32 62, i32 3, metadata !54, null}
!60 = metadata !{i32 63, i32 4, metadata !56, null}
!61 = metadata !{i32 786688, metadata !54, metadata !"index", metadata !6, i32 60, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 69, i32 8, metadata !63, null}
!63 = metadata !{i32 786443, metadata !56, i32 68, i32 67, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 75, i32 4, metadata !56, null}
!65 = metadata !{i32 76, i32 8, metadata !66, null}
!66 = metadata !{i32 786443, metadata !56, i32 75, i32 53, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 77, i32 4, metadata !66, null}
!68 = metadata !{i32 786688, metadata !54, metadata !"j", metadata !6, i32 59, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 79, i32 4, metadata !56, null}
!70 = metadata !{i32 81, i32 3, metadata !56, null}
!71 = metadata !{i32 84, i32 5, metadata !36, null}
!72 = metadata !{i32 786689, metadata !13, metadata !"array", metadata !6, i32 16777236, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 20, i32 26, metadata !13, null}
!74 = metadata !{i32 20, i32 37, metadata !75, null}
!75 = metadata !{i32 786443, metadata !13, i32 20, i32 36, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 21, i32 16, metadata !77, null}
!77 = metadata !{i32 786443, metadata !75, i32 21, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 786688, metadata !79, metadata !"j", metadata !6, i32 24, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 786443, metadata !80, i32 23, i32 37, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 786443, metadata !77, i32 21, i32 30, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 24, i32 13, metadata !79, null}
!82 = metadata !{i32 23, i32 3, metadata !80, null}
!83 = metadata !{i32 28, i32 9, metadata !79, null}
!84 = metadata !{i32 28, i32 47, metadata !85, null}
!85 = metadata !{i32 786443, metadata !79, i32 28, i32 46, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 29, i32 1, metadata !85, null}
!87 = metadata !{i32 30, i32 2, metadata !85, null}
!88 = metadata !{i32 31, i32 5, metadata !85, null}
!89 = metadata !{i32 32, i32 4, metadata !85, null}
!90 = metadata !{i32 21, i32 26, metadata !77, null}
!91 = metadata !{i32 786688, metadata !77, metadata !"i", metadata !6, i32 21, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 35, i32 1, metadata !75, null}

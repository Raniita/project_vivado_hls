; ModuleID = 'D:/trabajo_DSE_EnrLuc/hls/insertion_sort/insertion_sort/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@insertion_sort.str = internal unnamed_addr constant [15 x i8] c"insertion_sort\00" ; [#uses=1 type=[15 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"LOOP1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [12 x i8] c"INSERT_SORT\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @insertion_sort(i32* %array, i32* %array_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @insertion_sort.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %array}, i64 0, metadata !13), !dbg !14 ; [debug line = 9:25] [debug variable = array]
  call void @llvm.dbg.value(metadata !{i32* %array_out}, i64 0, metadata !15), !dbg !16 ; [debug line = 9:40] [debug variable = array_out]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %array, i32 40) nounwind, !dbg !17 ; [debug line = 9:55]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %array_out, i32 40) nounwind, !dbg !19 ; [debug line = 9:88]
  call void (...)* @_ssdm_op_SpecInterface(i32* %array_out, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !20 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %array, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !21 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !22 ; [debug line = 12:1]
  br label %1, !dbg !23                           ; [debug line = 15:14]

; <label>:1                                       ; preds = %2, %0
  %c = phi i32 [ 0, %0 ], [ %c.1, %2 ]            ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %c, 40, !dbg !23       ; [#uses=1 type=i1] [debug line = 15:14]
  br i1 %exitcond1, label %.preheader.preheader, label %2, !dbg !23 ; [debug line = 15:14]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !25                  ; [debug line = 22:18]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !27 ; [debug line = 15:28]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !27 ; [#uses=1 type=i32] [debug line = 15:28]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !29 ; [debug line = 16:1]
  %tmp = sext i32 %c to i64, !dbg !30             ; [#uses=2 type=i64] [debug line = 17:2]
  %array.addr = getelementptr inbounds i32* %array, i64 %tmp, !dbg !30 ; [#uses=1 type=i32*] [debug line = 17:2]
  %array.load = load i32* %array.addr, align 4, !dbg !30 ; [#uses=2 type=i32] [debug line = 17:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array.load) nounwind
  %array_out.addr = getelementptr inbounds i32* %array_out, i64 %tmp, !dbg !30 ; [#uses=1 type=i32*] [debug line = 17:2]
  store i32 %array.load, i32* %array_out.addr, align 4, !dbg !30 ; [debug line = 17:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !31 ; [#uses=0 type=i32] [debug line = 18:5]
  %c.1 = add nsw i32 %c, 1, !dbg !32              ; [#uses=1 type=i32] [debug line = 15:23]
  call void @llvm.dbg.value(metadata !{i32 %c.1}, i64 0, metadata !33), !dbg !32 ; [debug line = 15:23] [debug variable = c]
  br label %1, !dbg !32                           ; [debug line = 15:23]

.preheader:                                       ; preds = %.critedge, %.preheader.preheader
  %i = phi i32 [ %i.1, %.critedge ], [ 1, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %i, 40, !dbg !25        ; [#uses=1 type=i1] [debug line = 22:18]
  br i1 %exitcond, label %7, label %3, !dbg !25   ; [debug line = 22:18]

; <label>:3                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !34 ; [debug line = 22:32]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !34 ; [#uses=1 type=i32] [debug line = 22:32]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !36 ; [debug line = 23:1]
  %tmp.2 = sext i32 %i to i64, !dbg !37           ; [#uses=1 type=i64] [debug line = 24:2]
  %array_out.addr.1 = getelementptr inbounds i32* %array_out, i64 %tmp.2, !dbg !37 ; [#uses=1 type=i32*] [debug line = 24:2]
  %element = load i32* %array_out.addr.1, align 4, !dbg !37 ; [#uses=3 type=i32] [debug line = 24:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %element) nounwind
  call void @llvm.dbg.value(metadata !{i32 %element}, i64 0, metadata !38), !dbg !37 ; [debug line = 24:2] [debug variable = element]
  br label %4, !dbg !39                           ; [debug line = 26:9]

; <label>:4                                       ; preds = %6, %3
  %j.0.in = phi i32 [ %i, %3 ], [ %j, %6 ]        ; [#uses=5 type=i32]
  %j = add nsw i32 %j.0.in, -1, !dbg !40          ; [#uses=2 type=i32] [debug line = 25:3]
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !41), !dbg !40 ; [debug line = 25:3] [debug variable = j]
  %tmp.3 = icmp sgt i32 %j.0.in, 0, !dbg !39      ; [#uses=1 type=i1] [debug line = 26:9]
  br i1 %tmp.3, label %5, label %.critedge, !dbg !39 ; [debug line = 26:9]

; <label>:5                                       ; preds = %4
  %tmp.4 = sext i32 %j to i64, !dbg !39           ; [#uses=1 type=i64] [debug line = 26:9]
  %array_out.addr.2 = getelementptr inbounds i32* %array_out, i64 %tmp.4, !dbg !39 ; [#uses=1 type=i32*] [debug line = 26:9]
  %array_out.load = load i32* %array_out.addr.2, align 4, !dbg !39 ; [#uses=4 type=i32] [debug line = 26:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array_out.load) nounwind
  %tmp.5 = icmp sgt i32 %array_out.load, %element, !dbg !39 ; [#uses=1 type=i1] [debug line = 26:9]
  br i1 %tmp.5, label %6, label %.critedge

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !42 ; [debug line = 26:49]
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !42 ; [#uses=1 type=i32] [debug line = 26:49]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array_out.load) nounwind
  %tmp.8 = sext i32 %j.0.in to i64, !dbg !44      ; [#uses=1 type=i64] [debug line = 27:4]
  %array_out.addr.4 = getelementptr inbounds i32* %array_out, i64 %tmp.8, !dbg !44 ; [#uses=1 type=i32*] [debug line = 27:4]
  store i32 %array_out.load, i32* %array_out.addr.4, align 4, !dbg !44 ; [debug line = 27:4]
  %rend6 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i32 %rbegin5) nounwind, !dbg !45 ; [#uses=0 type=i32] [debug line = 29:3]
  br label %4, !dbg !45                           ; [debug line = 29:3]

.critedge:                                        ; preds = %5, %4
  %j.0.in.lcssa = phi i32 [ %j.0.in, %5 ], [ %j.0.in, %4 ] ; [#uses=1 type=i32]
  %tmp.6 = sext i32 %j.0.in.lcssa to i64, !dbg !46 ; [#uses=1 type=i64] [debug line = 30:3]
  %array_out.addr.3 = getelementptr inbounds i32* %array_out, i64 %tmp.6, !dbg !46 ; [#uses=1 type=i32*] [debug line = 30:3]
  store i32 %element, i32* %array_out.addr.3, align 4, !dbg !46 ; [debug line = 30:3]
  %rend4 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !47 ; [#uses=0 type=i32] [debug line = 31:2]
  %i.1 = add nsw i32 %i, 1, !dbg !48              ; [#uses=1 type=i32] [debug line = 22:27]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !49), !dbg !48 ; [debug line = 22:27] [debug variable = i]
  br label %.preheader, !dbg !48                  ; [debug line = 22:27]

; <label>:7                                       ; preds = %.preheader
  ret void, !dbg !50                              ; [debug line = 33:5]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=4]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/trabajo_DSE_EnrLuc/hls/insertion_sort/insertion_sort/solution1/.autopilot/db/insertion_sort.pragma.2.cpp", metadata !"D:\5Ctrabajo_DSE_EnrLuc\5Chls\5Cinsertion_sort", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"insertion_sort", metadata !"insertion_sort", metadata !"_Z14insertion_sortPiS_", metadata !6, i32 9, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @insertion_sort, null, null, metadata !11, i32 9} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../../sources/insertion_sort.cpp", metadata !"D:\5Ctrabajo_DSE_EnrLuc\5Chls\5Cinsertion_sort", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786689, metadata !5, metadata !"array", metadata !6, i32 16777225, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!14 = metadata !{i32 9, i32 25, metadata !5, null}
!15 = metadata !{i32 786689, metadata !5, metadata !"array_out", metadata !6, i32 33554441, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!16 = metadata !{i32 9, i32 40, metadata !5, null}
!17 = metadata !{i32 9, i32 55, metadata !18, null}
!18 = metadata !{i32 786443, metadata !5, i32 9, i32 54, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!19 = metadata !{i32 9, i32 88, metadata !18, null}
!20 = metadata !{i32 10, i32 1, metadata !18, null}
!21 = metadata !{i32 11, i32 1, metadata !18, null}
!22 = metadata !{i32 12, i32 1, metadata !18, null}
!23 = metadata !{i32 15, i32 14, metadata !24, null}
!24 = metadata !{i32 786443, metadata !18, i32 15, i32 10, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!25 = metadata !{i32 22, i32 18, metadata !26, null}
!26 = metadata !{i32 786443, metadata !18, i32 22, i32 14, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!27 = metadata !{i32 15, i32 28, metadata !28, null}
!28 = metadata !{i32 786443, metadata !24, i32 15, i32 27, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 16, i32 1, metadata !28, null}
!30 = metadata !{i32 17, i32 2, metadata !28, null}
!31 = metadata !{i32 18, i32 5, metadata !28, null}
!32 = metadata !{i32 15, i32 23, metadata !24, null}
!33 = metadata !{i32 786688, metadata !18, metadata !"c", metadata !6, i32 14, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!34 = metadata !{i32 22, i32 32, metadata !35, null}
!35 = metadata !{i32 786443, metadata !26, i32 22, i32 31, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 23, i32 1, metadata !35, null}
!37 = metadata !{i32 24, i32 2, metadata !35, null}
!38 = metadata !{i32 786688, metadata !18, metadata !"element", metadata !6, i32 21, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!39 = metadata !{i32 26, i32 9, metadata !35, null}
!40 = metadata !{i32 25, i32 3, metadata !35, null}
!41 = metadata !{i32 786688, metadata !18, metadata !"j", metadata !6, i32 20, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 26, i32 49, metadata !43, null}
!43 = metadata !{i32 786443, metadata !35, i32 26, i32 48, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 27, i32 4, metadata !43, null}
!45 = metadata !{i32 29, i32 3, metadata !43, null}
!46 = metadata !{i32 30, i32 3, metadata !35, null}
!47 = metadata !{i32 31, i32 2, metadata !35, null}
!48 = metadata !{i32 22, i32 27, metadata !26, null}
!49 = metadata !{i32 786688, metadata !18, metadata !"i", metadata !6, i32 20, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 33, i32 5, metadata !18, null}

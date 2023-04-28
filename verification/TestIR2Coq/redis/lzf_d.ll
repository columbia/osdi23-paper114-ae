; ModuleID = 'lzf_d.c'
source_filename = "lzf_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @lzf_decompress(i8* noundef readonly %in_data, i32 noundef %in_len, i8* noundef %out_data, i32 noundef %out_len) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata i8* %in_data, metadata !23, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i32 %in_len, metadata !24, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %out_data, metadata !25, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i32 %out_len, metadata !26, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %in_data, metadata !27, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %out_data, metadata !28, metadata !DIExpression()), !dbg !39
  %idx.ext = zext i32 %in_len to i64, !dbg !40
  %add.ptr = getelementptr inbounds i8, i8* %in_data, i64 %idx.ext, !dbg !40
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !29, metadata !DIExpression()), !dbg !39
  %idx.ext1 = zext i32 %out_len to i64, !dbg !41
  %add.ptr2 = getelementptr inbounds i8, i8* %out_data, i64 %idx.ext1, !dbg !41
  call void @llvm.dbg.value(metadata i8* %add.ptr2, metadata !31, metadata !DIExpression()), !dbg !39
  br label %do.body, !dbg !42

do.body:                                          ; preds = %do.cond72, %entry
  %op.0 = phi i8* [ %out_data, %entry ], [ %op.5, %do.cond72 ], !dbg !43
  %ip.0 = phi i8* [ %in_data, %entry ], [ %ip.5, %do.cond72 ], !dbg !39
  call void @llvm.dbg.value(metadata i8* %ip.0, metadata !27, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %op.0, metadata !28, metadata !DIExpression()), !dbg !39
  %incdec.ptr = getelementptr i8, i8* %ip.0, i64 1, !dbg !44
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !27, metadata !DIExpression()), !dbg !39
  %0 = load i8, i8* %ip.0, align 1, !dbg !45, !tbaa !46
  %conv = zext i8 %0 to i32, !dbg !45
  call void @llvm.dbg.value(metadata i32 %conv, metadata !33, metadata !DIExpression()), !dbg !49
  %cmp = icmp ult i8 %0, 32, !dbg !50
  br i1 %cmp, label %if.then, label %if.else, !dbg !51

if.then:                                          ; preds = %do.body
  %inc = add nuw nsw i32 %conv, 1, !dbg !52
  call void @llvm.dbg.value(metadata i32 %inc, metadata !33, metadata !DIExpression()), !dbg !49
  %idx.ext4 = zext i32 %inc to i64, !dbg !54
  %add.ptr5 = getelementptr i8, i8* %op.0, i64 %idx.ext4, !dbg !54
  %cmp6 = icmp ugt i8* %add.ptr5, %add.ptr2, !dbg !56
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !57

if.then8:                                         ; preds = %if.then
  %call = tail call i32* @__errno_location() #3, !dbg !58
  store i32 7, i32* %call, align 4, !dbg !58, !tbaa !60
  br label %cleanup77, !dbg !62

if.end:                                           ; preds = %if.then
  %add.ptr10 = getelementptr i8, i8* %incdec.ptr, i64 %idx.ext4, !dbg !63
  %cmp11 = icmp ugt i8* %add.ptr10, %add.ptr, !dbg !65
  br i1 %cmp11, label %if.then13, label %do.body16.preheader, !dbg !66

do.body16.preheader:                              ; preds = %if.end
  %min.iters.check = icmp ult i8 %0, 15, !dbg !67
  br i1 %min.iters.check, label %do.body16.preheader173, label %vector.memcheck, !dbg !67

vector.memcheck:                                  ; preds = %do.body16.preheader
  %bound0 = icmp ult i8* %op.0, %add.ptr10, !dbg !67
  %bound1 = icmp ult i8* %incdec.ptr, %add.ptr5, !dbg !67
  %found.conflict = and i1 %bound0, %bound1, !dbg !67
  br i1 %found.conflict, label %do.body16.preheader173, label %vector.ph, !dbg !67

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %idx.ext4, 496, !dbg !67
  %ind.end = getelementptr i8, i8* %op.0, i64 %n.vec, !dbg !67
  %ind.end136 = getelementptr i8, i8* %incdec.ptr, i64 %n.vec, !dbg !67
  %cast.crd = trunc i64 %n.vec to i32, !dbg !67
  %ind.end138 = sub nsw i32 %inc, %cast.crd, !dbg !67
  %1 = bitcast i8* %incdec.ptr to <16 x i8>*, !dbg !68
  %wide.load = load <16 x i8>, <16 x i8>* %1, align 1, !dbg !68, !tbaa !46, !alias.scope !69
  %2 = bitcast i8* %op.0 to <16 x i8>*, !dbg !72
  store <16 x i8> %wide.load, <16 x i8>* %2, align 1, !dbg !72, !tbaa !46, !alias.scope !73, !noalias !69
  %3 = icmp eq i64 %n.vec, 16
  br i1 %3, label %middle.block, label %vector.body.1, !llvm.loop !75

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, i8* %op.0, i64 16, !dbg !39
  %next.gep139.1 = getelementptr i8, i8* %ip.0, i64 17, !dbg !49
  %4 = bitcast i8* %next.gep139.1 to <16 x i8>*, !dbg !68
  %wide.load.1 = load <16 x i8>, <16 x i8>* %4, align 1, !dbg !68, !tbaa !46, !alias.scope !69
  %5 = bitcast i8* %next.gep.1 to <16 x i8>*, !dbg !72
  store <16 x i8> %wide.load.1, <16 x i8>* %5, align 1, !dbg !72, !tbaa !46, !alias.scope !73, !noalias !69
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %idx.ext4, !dbg !78
  br i1 %cmp.n, label %do.cond72, label %do.body16.preheader173, !dbg !78

do.body16.preheader173:                           ; preds = %vector.memcheck, %do.body16.preheader, %middle.block
  %op.1.ph = phi i8* [ %op.0, %vector.memcheck ], [ %op.0, %do.body16.preheader ], [ %ind.end, %middle.block ]
  %ip.1.ph = phi i8* [ %incdec.ptr, %vector.memcheck ], [ %incdec.ptr, %do.body16.preheader ], [ %ind.end136, %middle.block ]
  %ctrl.0.ph = phi i32 [ %inc, %vector.memcheck ], [ %inc, %do.body16.preheader ], [ %ind.end138, %middle.block ]
  %6 = add nsw i32 %ctrl.0.ph, -1, !dbg !67
  %xtraiter177 = and i32 %ctrl.0.ph, 7, !dbg !67
  %lcmp.mod178.not = icmp eq i32 %xtraiter177, 0, !dbg !67
  br i1 %lcmp.mod178.not, label %do.body16.prol.loopexit, label %do.body16.prol, !dbg !67

do.body16.prol:                                   ; preds = %do.body16.preheader173, %do.body16.prol
  %op.1.prol = phi i8* [ %incdec.ptr18.prol, %do.body16.prol ], [ %op.1.ph, %do.body16.preheader173 ], !dbg !39
  %ip.1.prol = phi i8* [ %incdec.ptr17.prol, %do.body16.prol ], [ %ip.1.ph, %do.body16.preheader173 ], !dbg !49
  %ctrl.0.prol = phi i32 [ %dec.prol, %do.body16.prol ], [ %ctrl.0.ph, %do.body16.preheader173 ], !dbg !79
  %prol.iter179 = phi i32 [ %prol.iter179.next, %do.body16.prol ], [ 0, %do.body16.preheader173 ]
  call void @llvm.dbg.value(metadata i32 %ctrl.0.prol, metadata !33, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.value(metadata i8* %ip.1.prol, metadata !27, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %op.1.prol, metadata !28, metadata !DIExpression()), !dbg !39
  %incdec.ptr17.prol = getelementptr inbounds i8, i8* %ip.1.prol, i64 1, !dbg !80
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17.prol, metadata !27, metadata !DIExpression()), !dbg !39
  %7 = load i8, i8* %ip.1.prol, align 1, !dbg !68, !tbaa !46
  %incdec.ptr18.prol = getelementptr inbounds i8, i8* %op.1.prol, i64 1, !dbg !81
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18.prol, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %7, i8* %op.1.prol, align 1, !dbg !72, !tbaa !46
  %dec.prol = add nsw i32 %ctrl.0.prol, -1, !dbg !82
  call void @llvm.dbg.value(metadata i32 %dec.prol, metadata !33, metadata !DIExpression()), !dbg !49
  %prol.iter179.next = add i32 %prol.iter179, 1, !dbg !78
  %prol.iter179.cmp.not = icmp eq i32 %prol.iter179.next, %xtraiter177, !dbg !78
  br i1 %prol.iter179.cmp.not, label %do.body16.prol.loopexit, label %do.body16.prol, !dbg !78, !llvm.loop !83

do.body16.prol.loopexit:                          ; preds = %do.body16.prol, %do.body16.preheader173
  %incdec.ptr17.lcssa.unr = phi i8* [ undef, %do.body16.preheader173 ], [ %incdec.ptr17.prol, %do.body16.prol ]
  %incdec.ptr18.lcssa.unr = phi i8* [ undef, %do.body16.preheader173 ], [ %incdec.ptr18.prol, %do.body16.prol ]
  %op.1.unr = phi i8* [ %op.1.ph, %do.body16.preheader173 ], [ %incdec.ptr18.prol, %do.body16.prol ]
  %ip.1.unr = phi i8* [ %ip.1.ph, %do.body16.preheader173 ], [ %incdec.ptr17.prol, %do.body16.prol ]
  %ctrl.0.unr = phi i32 [ %ctrl.0.ph, %do.body16.preheader173 ], [ %dec.prol, %do.body16.prol ]
  %8 = icmp ult i32 %6, 7, !dbg !67
  br i1 %8, label %do.cond72, label %do.body16, !dbg !67

if.then13:                                        ; preds = %if.end
  %call14 = tail call i32* @__errno_location() #3, !dbg !85
  store i32 22, i32* %call14, align 4, !dbg !85, !tbaa !60
  br label %cleanup77, !dbg !87

do.body16:                                        ; preds = %do.body16.prol.loopexit, %do.body16
  %op.1 = phi i8* [ %incdec.ptr18.7, %do.body16 ], [ %op.1.unr, %do.body16.prol.loopexit ], !dbg !39
  %ip.1 = phi i8* [ %incdec.ptr17.7, %do.body16 ], [ %ip.1.unr, %do.body16.prol.loopexit ], !dbg !49
  %ctrl.0 = phi i32 [ %dec.7, %do.body16 ], [ %ctrl.0.unr, %do.body16.prol.loopexit ], !dbg !79
  call void @llvm.dbg.value(metadata i32 %ctrl.0, metadata !33, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.value(metadata i8* %ip.1, metadata !27, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %op.1, metadata !28, metadata !DIExpression()), !dbg !39
  %incdec.ptr17 = getelementptr inbounds i8, i8* %ip.1, i64 1, !dbg !80
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17, metadata !27, metadata !DIExpression()), !dbg !39
  %9 = load i8, i8* %ip.1, align 1, !dbg !68, !tbaa !46
  %incdec.ptr18 = getelementptr inbounds i8, i8* %op.1, i64 1, !dbg !81
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %9, i8* %op.1, align 1, !dbg !72, !tbaa !46
  call void @llvm.dbg.value(metadata i32 %ctrl.0, metadata !33, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !49
  call void @llvm.dbg.value(metadata i32 %ctrl.0, metadata !33, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !49
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17, metadata !27, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18, metadata !28, metadata !DIExpression()), !dbg !39
  %incdec.ptr17.1 = getelementptr inbounds i8, i8* %ip.1, i64 2, !dbg !80
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17.1, metadata !27, metadata !DIExpression()), !dbg !39
  %10 = load i8, i8* %incdec.ptr17, align 1, !dbg !68, !tbaa !46
  %incdec.ptr18.1 = getelementptr inbounds i8, i8* %op.1, i64 2, !dbg !81
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18.1, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %10, i8* %incdec.ptr18, align 1, !dbg !72, !tbaa !46
  call void @llvm.dbg.value(metadata i32 %ctrl.0, metadata !33, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !49
  call void @llvm.dbg.value(metadata i32 %ctrl.0, metadata !33, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !49
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17.1, metadata !27, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18.1, metadata !28, metadata !DIExpression()), !dbg !39
  %incdec.ptr17.2 = getelementptr inbounds i8, i8* %ip.1, i64 3, !dbg !80
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17.2, metadata !27, metadata !DIExpression()), !dbg !39
  %11 = load i8, i8* %incdec.ptr17.1, align 1, !dbg !68, !tbaa !46
  %incdec.ptr18.2 = getelementptr inbounds i8, i8* %op.1, i64 3, !dbg !81
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18.2, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %11, i8* %incdec.ptr18.1, align 1, !dbg !72, !tbaa !46
  call void @llvm.dbg.value(metadata i32 %ctrl.0, metadata !33, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !49
  call void @llvm.dbg.value(metadata i32 %ctrl.0, metadata !33, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !49
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17.2, metadata !27, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18.2, metadata !28, metadata !DIExpression()), !dbg !39
  %incdec.ptr17.3 = getelementptr inbounds i8, i8* %ip.1, i64 4, !dbg !80
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17.3, metadata !27, metadata !DIExpression()), !dbg !39
  %12 = load i8, i8* %incdec.ptr17.2, align 1, !dbg !68, !tbaa !46
  %incdec.ptr18.3 = getelementptr inbounds i8, i8* %op.1, i64 4, !dbg !81
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18.3, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %12, i8* %incdec.ptr18.2, align 1, !dbg !72, !tbaa !46
  call void @llvm.dbg.value(metadata i32 %ctrl.0, metadata !33, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !49
  call void @llvm.dbg.value(metadata i32 %ctrl.0, metadata !33, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !49
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17.3, metadata !27, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18.3, metadata !28, metadata !DIExpression()), !dbg !39
  %incdec.ptr17.4 = getelementptr inbounds i8, i8* %ip.1, i64 5, !dbg !80
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17.4, metadata !27, metadata !DIExpression()), !dbg !39
  %13 = load i8, i8* %incdec.ptr17.3, align 1, !dbg !68, !tbaa !46
  %incdec.ptr18.4 = getelementptr inbounds i8, i8* %op.1, i64 5, !dbg !81
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18.4, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %13, i8* %incdec.ptr18.3, align 1, !dbg !72, !tbaa !46
  call void @llvm.dbg.value(metadata i32 %ctrl.0, metadata !33, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !49
  call void @llvm.dbg.value(metadata i32 %ctrl.0, metadata !33, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !49
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17.4, metadata !27, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18.4, metadata !28, metadata !DIExpression()), !dbg !39
  %incdec.ptr17.5 = getelementptr inbounds i8, i8* %ip.1, i64 6, !dbg !80
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17.5, metadata !27, metadata !DIExpression()), !dbg !39
  %14 = load i8, i8* %incdec.ptr17.4, align 1, !dbg !68, !tbaa !46
  %incdec.ptr18.5 = getelementptr inbounds i8, i8* %op.1, i64 6, !dbg !81
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18.5, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %14, i8* %incdec.ptr18.4, align 1, !dbg !72, !tbaa !46
  call void @llvm.dbg.value(metadata i32 %ctrl.0, metadata !33, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !49
  call void @llvm.dbg.value(metadata i32 %ctrl.0, metadata !33, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !49
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17.5, metadata !27, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18.5, metadata !28, metadata !DIExpression()), !dbg !39
  %incdec.ptr17.6 = getelementptr inbounds i8, i8* %ip.1, i64 7, !dbg !80
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17.6, metadata !27, metadata !DIExpression()), !dbg !39
  %15 = load i8, i8* %incdec.ptr17.5, align 1, !dbg !68, !tbaa !46
  %incdec.ptr18.6 = getelementptr inbounds i8, i8* %op.1, i64 7, !dbg !81
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18.6, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %15, i8* %incdec.ptr18.5, align 1, !dbg !72, !tbaa !46
  call void @llvm.dbg.value(metadata i32 %ctrl.0, metadata !33, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !49
  call void @llvm.dbg.value(metadata i32 %ctrl.0, metadata !33, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !49
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17.6, metadata !27, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18.6, metadata !28, metadata !DIExpression()), !dbg !39
  %incdec.ptr17.7 = getelementptr inbounds i8, i8* %ip.1, i64 8, !dbg !80
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17.7, metadata !27, metadata !DIExpression()), !dbg !39
  %16 = load i8, i8* %incdec.ptr17.6, align 1, !dbg !68, !tbaa !46
  %incdec.ptr18.7 = getelementptr inbounds i8, i8* %op.1, i64 8, !dbg !81
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18.7, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %16, i8* %incdec.ptr18.6, align 1, !dbg !72, !tbaa !46
  %dec.7 = add nsw i32 %ctrl.0, -8, !dbg !82
  call void @llvm.dbg.value(metadata i32 %dec.7, metadata !33, metadata !DIExpression()), !dbg !49
  %tobool.not.7 = icmp eq i32 %dec.7, 0, !dbg !78
  br i1 %tobool.not.7, label %do.cond72, label %do.body16, !dbg !78, !llvm.loop !88

if.else:                                          ; preds = %do.body
  %shr = lshr i32 %conv, 5, !dbg !89
  call void @llvm.dbg.value(metadata i32 %shr, metadata !35, metadata !DIExpression()), !dbg !90
  %and = shl nuw nsw i32 %conv, 8, !dbg !91
  %shl = and i32 %and, 7936, !dbg !91
  %idx.ext19 = zext i32 %shl to i64, !dbg !92
  %idx.neg = sub nsw i64 0, %idx.ext19, !dbg !92
  %add.ptr20 = getelementptr inbounds i8, i8* %op.0, i64 -1, !dbg !92
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr20, i64 %idx.neg, !dbg !93
  call void @llvm.dbg.value(metadata i8* %add.ptr21, metadata !38, metadata !DIExpression()), !dbg !90
  %cmp22.not = icmp ult i8* %incdec.ptr, %add.ptr, !dbg !94
  br i1 %cmp22.not, label %if.end26, label %if.then24, !dbg !96

if.then24:                                        ; preds = %if.else
  %call25 = tail call i32* @__errno_location() #3, !dbg !97
  store i32 22, i32* %call25, align 4, !dbg !97, !tbaa !60
  br label %cleanup77, !dbg !99

if.end26:                                         ; preds = %if.else
  %cmp27 = icmp eq i32 %shr, 7, !dbg !100
  br i1 %cmp27, label %if.then29, label %if.end37, !dbg !102

if.then29:                                        ; preds = %if.end26
  %incdec.ptr30 = getelementptr inbounds i8, i8* %ip.0, i64 2, !dbg !103
  call void @llvm.dbg.value(metadata i8* %incdec.ptr30, metadata !27, metadata !DIExpression()), !dbg !39
  %17 = load i8, i8* %incdec.ptr, align 1, !dbg !105, !tbaa !46
  %conv31 = zext i8 %17 to i32, !dbg !105
  %add = add nuw nsw i32 %conv31, 7, !dbg !106
  call void @llvm.dbg.value(metadata i32 %add, metadata !35, metadata !DIExpression()), !dbg !90
  %cmp32.not = icmp ult i8* %incdec.ptr30, %add.ptr, !dbg !107
  br i1 %cmp32.not, label %if.end37, label %if.then34, !dbg !109

if.then34:                                        ; preds = %if.then29
  %call35 = tail call i32* @__errno_location() #3, !dbg !110
  store i32 22, i32* %call35, align 4, !dbg !110, !tbaa !60
  br label %cleanup77, !dbg !112

if.end37:                                         ; preds = %if.then29, %if.end26
  %ip.2 = phi i8* [ %incdec.ptr30, %if.then29 ], [ %incdec.ptr, %if.end26 ], !dbg !49
  %len.0 = phi i32 [ %add, %if.then29 ], [ %shr, %if.end26 ], !dbg !90
  call void @llvm.dbg.value(metadata i32 %len.0, metadata !35, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i8* %ip.2, metadata !27, metadata !DIExpression()), !dbg !39
  %incdec.ptr38 = getelementptr inbounds i8, i8* %ip.2, i64 1, !dbg !113
  call void @llvm.dbg.value(metadata i8* %incdec.ptr38, metadata !27, metadata !DIExpression()), !dbg !39
  %18 = load i8, i8* %ip.2, align 1, !dbg !114, !tbaa !46
  %19 = zext i8 %18 to i64
  %idx.neg41 = sub nsw i64 0, %19, !dbg !115
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr21, i64 %idx.neg41, !dbg !115
  call void @llvm.dbg.value(metadata i8* %add.ptr42, metadata !38, metadata !DIExpression()), !dbg !90
  %idx.ext43 = zext i32 %len.0 to i64, !dbg !116
  %add.ptr44 = getelementptr inbounds i8, i8* %op.0, i64 2, !dbg !116
  %add.ptr45 = getelementptr inbounds i8, i8* %add.ptr44, i64 %idx.ext43, !dbg !118
  %cmp46 = icmp ugt i8* %add.ptr45, %add.ptr2, !dbg !119
  br i1 %cmp46, label %if.then48, label %if.end50, !dbg !120

if.then48:                                        ; preds = %if.end37
  %call49 = tail call i32* @__errno_location() #3, !dbg !121
  store i32 7, i32* %call49, align 4, !dbg !121, !tbaa !60
  br label %cleanup77, !dbg !123

if.end50:                                         ; preds = %if.end37
  %cmp51 = icmp ult i8* %add.ptr42, %out_data, !dbg !124
  br i1 %cmp51, label %if.then53, label %if.end55, !dbg !126

if.then53:                                        ; preds = %if.end50
  %call54 = tail call i32* @__errno_location() #3, !dbg !127
  store i32 22, i32* %call54, align 4, !dbg !127, !tbaa !60
  br label %cleanup77, !dbg !129

if.end55:                                         ; preds = %if.end50
  %incdec.ptr56 = getelementptr inbounds i8, i8* %add.ptr42, i64 1, !dbg !130
  call void @llvm.dbg.value(metadata i8* %incdec.ptr56, metadata !38, metadata !DIExpression()), !dbg !90
  %20 = load i8, i8* %add.ptr42, align 1, !dbg !131, !tbaa !46
  %incdec.ptr57 = getelementptr inbounds i8, i8* %op.0, i64 1, !dbg !132
  call void @llvm.dbg.value(metadata i8* %incdec.ptr57, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %20, i8* %op.0, align 1, !dbg !133, !tbaa !46
  call void @llvm.dbg.value(metadata i8* %incdec.ptr56, metadata !38, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !90
  %21 = load i8, i8* %incdec.ptr56, align 1, !dbg !134, !tbaa !46
  %incdec.ptr59 = getelementptr i8, i8* %op.0, i64 2, !dbg !135
  call void @llvm.dbg.value(metadata i8* %incdec.ptr59, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %21, i8* %incdec.ptr57, align 1, !dbg !136, !tbaa !46
  %22 = add nsw i32 %len.0, -1, !dbg !137
  %23 = zext i32 %22 to i64, !dbg !137
  %24 = add nuw nsw i64 %23, 1, !dbg !137
  %min.iters.check152 = icmp ult i32 %22, 31, !dbg !137
  br i1 %min.iters.check152, label %do.body60.preheader, label %vector.memcheck140, !dbg !137

vector.memcheck140:                               ; preds = %if.end55
  %scevgep = getelementptr i8, i8* %op.0, i64 3, !dbg !137
  %25 = add nsw i32 %len.0, -1, !dbg !137
  %26 = zext i32 %25 to i64, !dbg !137
  %scevgep141 = getelementptr i8, i8* %scevgep, i64 %26, !dbg !137
  %scevgep142 = getelementptr i8, i8* %op.0, i64 1, !dbg !137
  %27 = sub nsw i64 %idx.neg41, %idx.ext19, !dbg !137
  %scevgep143 = getelementptr i8, i8* %scevgep142, i64 %27, !dbg !137
  %scevgep144 = getelementptr i8, i8* %op.0, i64 2, !dbg !137
  %28 = or i64 %19, %idx.ext19, !dbg !137
  %29 = sub nsw i64 %26, %28, !dbg !137
  %scevgep145 = getelementptr i8, i8* %scevgep144, i64 %29, !dbg !137
  %bound0146 = icmp ult i8* %incdec.ptr59, %scevgep145, !dbg !137
  %bound1147 = icmp ult i8* %scevgep143, %scevgep141, !dbg !137
  %found.conflict148 = and i1 %bound0146, %bound1147, !dbg !137
  br i1 %found.conflict148, label %do.body60.preheader, label %vector.ph153, !dbg !137

vector.ph153:                                     ; preds = %vector.memcheck140
  %n.vec155 = and i64 %24, 8589934560, !dbg !137
  %ind.end157 = getelementptr i8, i8* %incdec.ptr59, i64 %n.vec155, !dbg !137
  %cast.crd159 = trunc i64 %n.vec155 to i32, !dbg !137
  %ind.end160 = sub i32 %len.0, %cast.crd159, !dbg !137
  %ind.end162 = getelementptr i8, i8* %incdec.ptr56, i64 %n.vec155, !dbg !137
  %30 = add nsw i64 %n.vec155, -32, !dbg !137
  %31 = lshr exact i64 %30, 5, !dbg !137
  %32 = add nuw nsw i64 %31, 1, !dbg !137
  %xtraiter = and i64 %32, 3, !dbg !137
  %33 = icmp ult i64 %30, 96, !dbg !137
  br i1 %33, label %middle.block149.unr-lcssa, label %vector.ph153.new, !dbg !137

vector.ph153.new:                                 ; preds = %vector.ph153
  %unroll_iter = and i64 %32, 1152921504606846972, !dbg !137
  %next.gep168 = getelementptr i8, i8* %incdec.ptr56, i64 1
  %next.gep168.1 = getelementptr i8, i8* %incdec.ptr56, i64 1
  %next.gep168.2 = getelementptr i8, i8* %incdec.ptr56, i64 1
  %next.gep168.3 = getelementptr i8, i8* %incdec.ptr56, i64 1
  br label %vector.body151, !dbg !137

vector.body151:                                   ; preds = %vector.body151, %vector.ph153.new
  %index164 = phi i64 [ 0, %vector.ph153.new ], [ %index.next172.3, %vector.body151 ]
  %niter = phi i64 [ 0, %vector.ph153.new ], [ %niter.next.3, %vector.body151 ]
  %next.gep165 = getelementptr i8, i8* %incdec.ptr59, i64 %index164, !dbg !90
  %34 = getelementptr inbounds i8, i8* %next.gep168, i64 %index164, !dbg !90
  %35 = bitcast i8* %34 to <16 x i8>*, !dbg !138
  %wide.load170 = load <16 x i8>, <16 x i8>* %35, align 1, !dbg !138, !tbaa !46, !alias.scope !139
  %36 = getelementptr inbounds i8, i8* %34, i64 16, !dbg !138
  %37 = bitcast i8* %36 to <16 x i8>*, !dbg !138
  %wide.load171 = load <16 x i8>, <16 x i8>* %37, align 1, !dbg !138, !tbaa !46, !alias.scope !139
  %38 = bitcast i8* %next.gep165 to <16 x i8>*, !dbg !142
  store <16 x i8> %wide.load170, <16 x i8>* %38, align 1, !dbg !142, !tbaa !46, !alias.scope !143, !noalias !139
  %39 = getelementptr i8, i8* %next.gep165, i64 16, !dbg !142
  %40 = bitcast i8* %39 to <16 x i8>*, !dbg !142
  store <16 x i8> %wide.load171, <16 x i8>* %40, align 1, !dbg !142, !tbaa !46, !alias.scope !143, !noalias !139
  %index.next172 = or i64 %index164, 32
  %next.gep165.1 = getelementptr i8, i8* %incdec.ptr59, i64 %index.next172, !dbg !90
  %41 = getelementptr inbounds i8, i8* %next.gep168.1, i64 %index.next172, !dbg !90
  %42 = bitcast i8* %41 to <16 x i8>*, !dbg !138
  %wide.load170.1 = load <16 x i8>, <16 x i8>* %42, align 1, !dbg !138, !tbaa !46, !alias.scope !139
  %43 = getelementptr inbounds i8, i8* %41, i64 16, !dbg !138
  %44 = bitcast i8* %43 to <16 x i8>*, !dbg !138
  %wide.load171.1 = load <16 x i8>, <16 x i8>* %44, align 1, !dbg !138, !tbaa !46, !alias.scope !139
  %45 = bitcast i8* %next.gep165.1 to <16 x i8>*, !dbg !142
  store <16 x i8> %wide.load170.1, <16 x i8>* %45, align 1, !dbg !142, !tbaa !46, !alias.scope !143, !noalias !139
  %46 = getelementptr i8, i8* %next.gep165.1, i64 16, !dbg !142
  %47 = bitcast i8* %46 to <16 x i8>*, !dbg !142
  store <16 x i8> %wide.load171.1, <16 x i8>* %47, align 1, !dbg !142, !tbaa !46, !alias.scope !143, !noalias !139
  %index.next172.1 = or i64 %index164, 64
  %next.gep165.2 = getelementptr i8, i8* %incdec.ptr59, i64 %index.next172.1, !dbg !90
  %48 = getelementptr inbounds i8, i8* %next.gep168.2, i64 %index.next172.1, !dbg !90
  %49 = bitcast i8* %48 to <16 x i8>*, !dbg !138
  %wide.load170.2 = load <16 x i8>, <16 x i8>* %49, align 1, !dbg !138, !tbaa !46, !alias.scope !139
  %50 = getelementptr inbounds i8, i8* %48, i64 16, !dbg !138
  %51 = bitcast i8* %50 to <16 x i8>*, !dbg !138
  %wide.load171.2 = load <16 x i8>, <16 x i8>* %51, align 1, !dbg !138, !tbaa !46, !alias.scope !139
  %52 = bitcast i8* %next.gep165.2 to <16 x i8>*, !dbg !142
  store <16 x i8> %wide.load170.2, <16 x i8>* %52, align 1, !dbg !142, !tbaa !46, !alias.scope !143, !noalias !139
  %53 = getelementptr i8, i8* %next.gep165.2, i64 16, !dbg !142
  %54 = bitcast i8* %53 to <16 x i8>*, !dbg !142
  store <16 x i8> %wide.load171.2, <16 x i8>* %54, align 1, !dbg !142, !tbaa !46, !alias.scope !143, !noalias !139
  %index.next172.2 = or i64 %index164, 96
  %next.gep165.3 = getelementptr i8, i8* %incdec.ptr59, i64 %index.next172.2, !dbg !90
  %55 = getelementptr inbounds i8, i8* %next.gep168.3, i64 %index.next172.2, !dbg !90
  %56 = bitcast i8* %55 to <16 x i8>*, !dbg !138
  %wide.load170.3 = load <16 x i8>, <16 x i8>* %56, align 1, !dbg !138, !tbaa !46, !alias.scope !139
  %57 = getelementptr inbounds i8, i8* %55, i64 16, !dbg !138
  %58 = bitcast i8* %57 to <16 x i8>*, !dbg !138
  %wide.load171.3 = load <16 x i8>, <16 x i8>* %58, align 1, !dbg !138, !tbaa !46, !alias.scope !139
  %59 = bitcast i8* %next.gep165.3 to <16 x i8>*, !dbg !142
  store <16 x i8> %wide.load170.3, <16 x i8>* %59, align 1, !dbg !142, !tbaa !46, !alias.scope !143, !noalias !139
  %60 = getelementptr i8, i8* %next.gep165.3, i64 16, !dbg !142
  %61 = bitcast i8* %60 to <16 x i8>*, !dbg !142
  store <16 x i8> %wide.load171.3, <16 x i8>* %61, align 1, !dbg !142, !tbaa !46, !alias.scope !143, !noalias !139
  %index.next172.3 = add nuw i64 %index164, 128
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block149.unr-lcssa, label %vector.body151, !llvm.loop !145

middle.block149.unr-lcssa:                        ; preds = %vector.body151, %vector.ph153
  %index164.unr = phi i64 [ 0, %vector.ph153 ], [ %index.next172.3, %vector.body151 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block149, label %vector.body151.epil.preheader

vector.body151.epil.preheader:                    ; preds = %middle.block149.unr-lcssa
  %next.gep168.epil = getelementptr i8, i8* %incdec.ptr56, i64 1
  br label %vector.body151.epil

vector.body151.epil:                              ; preds = %vector.body151.epil, %vector.body151.epil.preheader
  %index164.epil = phi i64 [ %index164.unr, %vector.body151.epil.preheader ], [ %index.next172.epil, %vector.body151.epil ]
  %epil.iter = phi i64 [ 0, %vector.body151.epil.preheader ], [ %epil.iter.next, %vector.body151.epil ]
  %next.gep165.epil = getelementptr i8, i8* %incdec.ptr59, i64 %index164.epil, !dbg !90
  %62 = getelementptr inbounds i8, i8* %next.gep168.epil, i64 %index164.epil, !dbg !90
  %63 = bitcast i8* %62 to <16 x i8>*, !dbg !138
  %wide.load170.epil = load <16 x i8>, <16 x i8>* %63, align 1, !dbg !138, !tbaa !46, !alias.scope !139
  %64 = getelementptr inbounds i8, i8* %62, i64 16, !dbg !138
  %65 = bitcast i8* %64 to <16 x i8>*, !dbg !138
  %wide.load171.epil = load <16 x i8>, <16 x i8>* %65, align 1, !dbg !138, !tbaa !46, !alias.scope !139
  %66 = bitcast i8* %next.gep165.epil to <16 x i8>*, !dbg !142
  store <16 x i8> %wide.load170.epil, <16 x i8>* %66, align 1, !dbg !142, !tbaa !46, !alias.scope !143, !noalias !139
  %67 = getelementptr i8, i8* %next.gep165.epil, i64 16, !dbg !142
  %68 = bitcast i8* %67 to <16 x i8>*, !dbg !142
  store <16 x i8> %wide.load171.epil, <16 x i8>* %68, align 1, !dbg !142, !tbaa !46, !alias.scope !143, !noalias !139
  %index.next172.epil = add nuw i64 %index164.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block149, label %vector.body151.epil, !llvm.loop !147

middle.block149:                                  ; preds = %vector.body151.epil, %middle.block149.unr-lcssa
  %cmp.n163 = icmp eq i64 %24, %n.vec155, !dbg !148
  br i1 %cmp.n163, label %do.cond72, label %do.body60.preheader, !dbg !148

do.body60.preheader:                              ; preds = %vector.memcheck140, %if.end55, %middle.block149
  %op.2.ph = phi i8* [ %incdec.ptr59, %vector.memcheck140 ], [ %incdec.ptr59, %if.end55 ], [ %ind.end157, %middle.block149 ]
  %len.1.ph = phi i32 [ %len.0, %vector.memcheck140 ], [ %len.0, %if.end55 ], [ %ind.end160, %middle.block149 ]
  %incdec.ptr56.pn.ph = phi i8* [ %incdec.ptr56, %vector.memcheck140 ], [ %incdec.ptr56, %if.end55 ], [ %ind.end162, %middle.block149 ]
  %69 = add i32 %len.1.ph, -1, !dbg !137
  %xtraiter175 = and i32 %len.1.ph, 7, !dbg !137
  %lcmp.mod176.not = icmp eq i32 %xtraiter175, 0, !dbg !137
  br i1 %lcmp.mod176.not, label %do.body60.prol.loopexit, label %do.body60.prol, !dbg !137

do.body60.prol:                                   ; preds = %do.body60.preheader, %do.body60.prol
  %op.2.prol = phi i8* [ %incdec.ptr62.prol, %do.body60.prol ], [ %op.2.ph, %do.body60.preheader ], !dbg !90
  %len.1.prol = phi i32 [ %dec64.prol, %do.body60.prol ], [ %len.1.ph, %do.body60.preheader ], !dbg !90
  %incdec.ptr56.pn.prol = phi i8* [ %ref.0.prol, %do.body60.prol ], [ %incdec.ptr56.pn.ph, %do.body60.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %do.body60.prol ], [ 0, %do.body60.preheader ]
  %ref.0.prol = getelementptr inbounds i8, i8* %incdec.ptr56.pn.prol, i64 1, !dbg !90
  call void @llvm.dbg.value(metadata i8* %ref.0.prol, metadata !38, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 %len.1.prol, metadata !35, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i8* %op.2.prol, metadata !28, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %ref.0.prol, metadata !38, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !90
  %70 = load i8, i8* %ref.0.prol, align 1, !dbg !138, !tbaa !46
  %incdec.ptr62.prol = getelementptr inbounds i8, i8* %op.2.prol, i64 1, !dbg !149
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62.prol, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %70, i8* %op.2.prol, align 1, !dbg !142, !tbaa !46
  %dec64.prol = add i32 %len.1.prol, -1, !dbg !150
  call void @llvm.dbg.value(metadata i32 %dec64.prol, metadata !35, metadata !DIExpression()), !dbg !90
  %prol.iter.next = add i32 %prol.iter, 1, !dbg !148
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter175, !dbg !148
  br i1 %prol.iter.cmp.not, label %do.body60.prol.loopexit, label %do.body60.prol, !dbg !148, !llvm.loop !151

do.body60.prol.loopexit:                          ; preds = %do.body60.prol, %do.body60.preheader
  %incdec.ptr62.lcssa.unr = phi i8* [ undef, %do.body60.preheader ], [ %incdec.ptr62.prol, %do.body60.prol ]
  %op.2.unr = phi i8* [ %op.2.ph, %do.body60.preheader ], [ %incdec.ptr62.prol, %do.body60.prol ]
  %len.1.unr = phi i32 [ %len.1.ph, %do.body60.preheader ], [ %dec64.prol, %do.body60.prol ]
  %incdec.ptr56.pn.unr = phi i8* [ %incdec.ptr56.pn.ph, %do.body60.preheader ], [ %ref.0.prol, %do.body60.prol ]
  %71 = icmp ult i32 %69, 7, !dbg !137
  br i1 %71, label %do.cond72, label %do.body60, !dbg !137

do.body60:                                        ; preds = %do.body60.prol.loopexit, %do.body60
  %op.2 = phi i8* [ %incdec.ptr62.7, %do.body60 ], [ %op.2.unr, %do.body60.prol.loopexit ], !dbg !90
  %len.1 = phi i32 [ %dec64.7, %do.body60 ], [ %len.1.unr, %do.body60.prol.loopexit ], !dbg !90
  %incdec.ptr56.pn = phi i8* [ %ref.0.7, %do.body60 ], [ %incdec.ptr56.pn.unr, %do.body60.prol.loopexit ]
  %ref.0 = getelementptr inbounds i8, i8* %incdec.ptr56.pn, i64 1, !dbg !90
  call void @llvm.dbg.value(metadata i8* %ref.0, metadata !38, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !35, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i8* %op.2, metadata !28, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %ref.0, metadata !38, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !90
  %72 = load i8, i8* %ref.0, align 1, !dbg !138, !tbaa !46
  %incdec.ptr62 = getelementptr inbounds i8, i8* %op.2, i64 1, !dbg !149
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %72, i8* %op.2, align 1, !dbg !142, !tbaa !46
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !35, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !90
  %ref.0.1 = getelementptr inbounds i8, i8* %incdec.ptr56.pn, i64 2, !dbg !90
  call void @llvm.dbg.value(metadata i8* %ref.0.1, metadata !38, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !35, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !90
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62, metadata !28, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %ref.0.1, metadata !38, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !90
  %73 = load i8, i8* %ref.0.1, align 1, !dbg !138, !tbaa !46
  %incdec.ptr62.1 = getelementptr inbounds i8, i8* %op.2, i64 2, !dbg !149
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62.1, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %73, i8* %incdec.ptr62, align 1, !dbg !142, !tbaa !46
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !35, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !90
  %ref.0.2 = getelementptr inbounds i8, i8* %incdec.ptr56.pn, i64 3, !dbg !90
  call void @llvm.dbg.value(metadata i8* %ref.0.2, metadata !38, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !35, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !90
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62.1, metadata !28, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %ref.0.2, metadata !38, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !90
  %74 = load i8, i8* %ref.0.2, align 1, !dbg !138, !tbaa !46
  %incdec.ptr62.2 = getelementptr inbounds i8, i8* %op.2, i64 3, !dbg !149
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62.2, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %74, i8* %incdec.ptr62.1, align 1, !dbg !142, !tbaa !46
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !35, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !90
  %ref.0.3 = getelementptr inbounds i8, i8* %incdec.ptr56.pn, i64 4, !dbg !90
  call void @llvm.dbg.value(metadata i8* %ref.0.3, metadata !38, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !35, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !90
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62.2, metadata !28, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %ref.0.3, metadata !38, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !90
  %75 = load i8, i8* %ref.0.3, align 1, !dbg !138, !tbaa !46
  %incdec.ptr62.3 = getelementptr inbounds i8, i8* %op.2, i64 4, !dbg !149
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62.3, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %75, i8* %incdec.ptr62.2, align 1, !dbg !142, !tbaa !46
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !35, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !90
  %ref.0.4 = getelementptr inbounds i8, i8* %incdec.ptr56.pn, i64 5, !dbg !90
  call void @llvm.dbg.value(metadata i8* %ref.0.4, metadata !38, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !35, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !90
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62.3, metadata !28, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %ref.0.4, metadata !38, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !90
  %76 = load i8, i8* %ref.0.4, align 1, !dbg !138, !tbaa !46
  %incdec.ptr62.4 = getelementptr inbounds i8, i8* %op.2, i64 5, !dbg !149
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62.4, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %76, i8* %incdec.ptr62.3, align 1, !dbg !142, !tbaa !46
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !35, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !90
  %ref.0.5 = getelementptr inbounds i8, i8* %incdec.ptr56.pn, i64 6, !dbg !90
  call void @llvm.dbg.value(metadata i8* %ref.0.5, metadata !38, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !35, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !90
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62.4, metadata !28, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %ref.0.5, metadata !38, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !90
  %77 = load i8, i8* %ref.0.5, align 1, !dbg !138, !tbaa !46
  %incdec.ptr62.5 = getelementptr inbounds i8, i8* %op.2, i64 6, !dbg !149
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62.5, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %77, i8* %incdec.ptr62.4, align 1, !dbg !142, !tbaa !46
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !35, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !90
  %ref.0.6 = getelementptr inbounds i8, i8* %incdec.ptr56.pn, i64 7, !dbg !90
  call void @llvm.dbg.value(metadata i8* %ref.0.6, metadata !38, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !35, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !90
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62.5, metadata !28, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %ref.0.6, metadata !38, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !90
  %78 = load i8, i8* %ref.0.6, align 1, !dbg !138, !tbaa !46
  %incdec.ptr62.6 = getelementptr inbounds i8, i8* %op.2, i64 7, !dbg !149
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62.6, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %78, i8* %incdec.ptr62.5, align 1, !dbg !142, !tbaa !46
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !35, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !90
  %ref.0.7 = getelementptr inbounds i8, i8* %incdec.ptr56.pn, i64 8, !dbg !90
  call void @llvm.dbg.value(metadata i8* %ref.0.7, metadata !38, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !35, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !90
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62.6, metadata !28, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %ref.0.7, metadata !38, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !90
  %79 = load i8, i8* %ref.0.7, align 1, !dbg !138, !tbaa !46
  %incdec.ptr62.7 = getelementptr inbounds i8, i8* %op.2, i64 8, !dbg !149
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62.7, metadata !28, metadata !DIExpression()), !dbg !39
  store i8 %79, i8* %incdec.ptr62.6, align 1, !dbg !142, !tbaa !46
  %dec64.7 = add i32 %len.1, -8, !dbg !150
  call void @llvm.dbg.value(metadata i32 %dec64.7, metadata !35, metadata !DIExpression()), !dbg !90
  %tobool65.not.7 = icmp eq i32 %dec64.7, 0, !dbg !148
  br i1 %tobool65.not.7, label %do.cond72, label %do.body60, !dbg !148, !llvm.loop !152

do.cond72:                                        ; preds = %do.body60.prol.loopexit, %do.body60, %do.body16.prol.loopexit, %do.body16, %middle.block149, %middle.block
  %op.5 = phi i8* [ %ind.end, %middle.block ], [ %ind.end157, %middle.block149 ], [ %incdec.ptr18.lcssa.unr, %do.body16.prol.loopexit ], [ %incdec.ptr18.7, %do.body16 ], [ %incdec.ptr62.lcssa.unr, %do.body60.prol.loopexit ], [ %incdec.ptr62.7, %do.body60 ], !dbg !39
  %ip.5 = phi i8* [ %ind.end136, %middle.block ], [ %incdec.ptr38, %middle.block149 ], [ %incdec.ptr17.lcssa.unr, %do.body16.prol.loopexit ], [ %incdec.ptr17.7, %do.body16 ], [ %incdec.ptr38, %do.body60 ], [ %incdec.ptr38, %do.body60.prol.loopexit ], !dbg !49
  call void @llvm.dbg.value(metadata i8* %ip.5, metadata !27, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8* %op.5, metadata !28, metadata !DIExpression()), !dbg !39
  %cmp73 = icmp ult i8* %ip.5, %add.ptr, !dbg !153
  br i1 %cmp73, label %do.body, label %do.end75, !dbg !154, !llvm.loop !155

do.end75:                                         ; preds = %do.cond72
  %sub.ptr.lhs.cast = ptrtoint i8* %op.5 to i64, !dbg !157
  %sub.ptr.rhs.cast = ptrtoint i8* %out_data to i64, !dbg !157
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !157
  %conv76 = trunc i64 %sub.ptr.sub to i32, !dbg !158
  br label %cleanup77, !dbg !159

cleanup77:                                        ; preds = %if.then53, %if.then48, %if.then34, %if.then24, %if.then13, %if.then8, %do.end75
  %retval.4 = phi i32 [ %conv76, %do.end75 ], [ 0, %if.then8 ], [ 0, %if.then13 ], [ 0, %if.then24 ], [ 0, %if.then34 ], [ 0, %if.then48 ], [ 0, %if.then53 ], !dbg !39
  ret i32 %retval.4, !dbg !160
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lzf_d.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "bbdba6dcbac7c83c3912dea4420ade31")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !6, line: 127, baseType: !7)
!6 = !DIFile(filename: "./lzfP.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "eb8e62f4a90dbcec5b11b84206339703")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{!"clang version 14.0.0"}
!14 = distinct !DISubprogram(name: "lzf_decompress", scope: !1, file: !1, line: 56, type: !15, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !22)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18, !17, !21, !17}
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !38}
!23 = !DILocalVariable(name: "in_data", arg: 1, scope: !14, file: !1, line: 56, type: !18)
!24 = !DILocalVariable(name: "in_len", arg: 2, scope: !14, file: !1, line: 56, type: !17)
!25 = !DILocalVariable(name: "out_data", arg: 3, scope: !14, file: !1, line: 57, type: !21)
!26 = !DILocalVariable(name: "out_len", arg: 4, scope: !14, file: !1, line: 57, type: !17)
!27 = !DILocalVariable(name: "ip", scope: !14, file: !1, line: 59, type: !3)
!28 = !DILocalVariable(name: "op", scope: !14, file: !1, line: 60, type: !8)
!29 = !DILocalVariable(name: "in_end", scope: !14, file: !1, line: 61, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3)
!31 = !DILocalVariable(name: "out_end", scope: !14, file: !1, line: 62, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!33 = !DILocalVariable(name: "ctrl", scope: !34, file: !1, line: 66, type: !17)
!34 = distinct !DILexicalBlock(scope: !14, file: !1, line: 65, column: 5)
!35 = !DILocalVariable(name: "len", scope: !36, file: !1, line: 96, type: !17)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 95, column: 9)
!37 = distinct !DILexicalBlock(scope: !34, file: !1, line: 68, column: 11)
!38 = !DILocalVariable(name: "ref", scope: !36, file: !1, line: 98, type: !8)
!39 = !DILocation(line: 0, scope: !14)
!40 = !DILocation(line: 61, column: 32, scope: !14)
!41 = !DILocation(line: 62, column: 32, scope: !14)
!42 = !DILocation(line: 64, column: 3, scope: !14)
!43 = !DILocation(line: 60, column: 13, scope: !14)
!44 = !DILocation(line: 66, column: 30, scope: !34)
!45 = !DILocation(line: 66, column: 27, scope: !34)
!46 = !{!47, !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !DILocation(line: 0, scope: !34)
!50 = !DILocation(line: 68, column: 16, scope: !37)
!51 = !DILocation(line: 68, column: 11, scope: !34)
!52 = !DILocation(line: 70, column: 15, scope: !53)
!53 = distinct !DILexicalBlock(scope: !37, file: !1, line: 69, column: 9)
!54 = !DILocation(line: 72, column: 18, scope: !55)
!55 = distinct !DILexicalBlock(scope: !53, file: !1, line: 72, column: 15)
!56 = !DILocation(line: 72, column: 25, scope: !55)
!57 = !DILocation(line: 72, column: 15, scope: !53)
!58 = !DILocation(line: 74, column: 15, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 73, column: 13)
!60 = !{!61, !61, i64 0}
!61 = !{!"int", !47, i64 0}
!62 = !DILocation(line: 75, column: 15, scope: !59)
!63 = !DILocation(line: 79, column: 18, scope: !64)
!64 = distinct !DILexicalBlock(scope: !53, file: !1, line: 79, column: 15)
!65 = !DILocation(line: 79, column: 25, scope: !64)
!66 = !DILocation(line: 79, column: 15, scope: !53)
!67 = !DILocation(line: 89, column: 11, scope: !53)
!68 = !DILocation(line: 90, column: 21, scope: !53)
!69 = !{!70}
!70 = distinct !{!70, !71}
!71 = distinct !{!71, !"LVerDomain"}
!72 = !DILocation(line: 90, column: 19, scope: !53)
!73 = !{!74}
!74 = distinct !{!74, !71}
!75 = distinct !{!75, !67, !76, !77}
!76 = !DILocation(line: 91, column: 24, scope: !53)
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !DILocation(line: 90, column: 13, scope: !53)
!79 = !DILocation(line: 0, scope: !53)
!80 = !DILocation(line: 90, column: 24, scope: !53)
!81 = !DILocation(line: 90, column: 16, scope: !53)
!82 = !DILocation(line: 91, column: 18, scope: !53)
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = !DILocation(line: 81, column: 15, scope: !86)
!86 = distinct !DILexicalBlock(scope: !64, file: !1, line: 80, column: 13)
!87 = !DILocation(line: 82, column: 15, scope: !86)
!88 = distinct !{!88, !67, !76, !77}
!89 = !DILocation(line: 96, column: 35, scope: !36)
!90 = !DILocation(line: 0, scope: !36)
!91 = !DILocation(line: 98, column: 41, scope: !36)
!92 = !DILocation(line: 98, column: 24, scope: !36)
!93 = !DILocation(line: 98, column: 47, scope: !36)
!94 = !DILocation(line: 101, column: 18, scope: !95)
!95 = distinct !DILexicalBlock(scope: !36, file: !1, line: 101, column: 15)
!96 = !DILocation(line: 101, column: 15, scope: !36)
!97 = !DILocation(line: 103, column: 15, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 102, column: 13)
!99 = !DILocation(line: 104, column: 15, scope: !98)
!100 = !DILocation(line: 107, column: 19, scope: !101)
!101 = distinct !DILexicalBlock(scope: !36, file: !1, line: 107, column: 15)
!102 = !DILocation(line: 107, column: 15, scope: !36)
!103 = !DILocation(line: 109, column: 25, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 108, column: 13)
!105 = !DILocation(line: 109, column: 22, scope: !104)
!106 = !DILocation(line: 109, column: 19, scope: !104)
!107 = !DILocation(line: 111, column: 22, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 111, column: 19)
!109 = !DILocation(line: 111, column: 19, scope: !104)
!110 = !DILocation(line: 113, column: 19, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !1, line: 112, column: 17)
!112 = !DILocation(line: 114, column: 19, scope: !111)
!113 = !DILocation(line: 119, column: 21, scope: !36)
!114 = !DILocation(line: 119, column: 18, scope: !36)
!115 = !DILocation(line: 119, column: 15, scope: !36)
!116 = !DILocation(line: 121, column: 18, scope: !117)
!117 = distinct !DILexicalBlock(scope: !36, file: !1, line: 121, column: 15)
!118 = !DILocation(line: 121, column: 24, scope: !117)
!119 = !DILocation(line: 121, column: 28, scope: !117)
!120 = !DILocation(line: 121, column: 15, scope: !36)
!121 = !DILocation(line: 123, column: 15, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !1, line: 122, column: 13)
!123 = !DILocation(line: 124, column: 15, scope: !122)
!124 = !DILocation(line: 127, column: 19, scope: !125)
!125 = distinct !DILexicalBlock(scope: !36, file: !1, line: 127, column: 15)
!126 = !DILocation(line: 127, column: 15, scope: !36)
!127 = !DILocation(line: 129, column: 15, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 128, column: 13)
!129 = !DILocation(line: 130, column: 15, scope: !128)
!130 = !DILocation(line: 137, column: 23, scope: !36)
!131 = !DILocation(line: 137, column: 19, scope: !36)
!132 = !DILocation(line: 137, column: 14, scope: !36)
!133 = !DILocation(line: 137, column: 17, scope: !36)
!134 = !DILocation(line: 138, column: 19, scope: !36)
!135 = !DILocation(line: 138, column: 14, scope: !36)
!136 = !DILocation(line: 138, column: 17, scope: !36)
!137 = !DILocation(line: 140, column: 11, scope: !36)
!138 = !DILocation(line: 141, column: 21, scope: !36)
!139 = !{!140}
!140 = distinct !{!140, !141}
!141 = distinct !{!141, !"LVerDomain"}
!142 = !DILocation(line: 141, column: 19, scope: !36)
!143 = !{!144}
!144 = distinct !{!144, !141}
!145 = distinct !{!145, !137, !146, !77}
!146 = !DILocation(line: 142, column: 23, scope: !36)
!147 = distinct !{!147, !84}
!148 = !DILocation(line: 141, column: 13, scope: !36)
!149 = !DILocation(line: 141, column: 16, scope: !36)
!150 = !DILocation(line: 142, column: 18, scope: !36)
!151 = distinct !{!151, !84}
!152 = distinct !{!152, !137, !146, !77}
!153 = !DILocation(line: 146, column: 13, scope: !14)
!154 = !DILocation(line: 145, column: 5, scope: !34)
!155 = distinct !{!155, !42, !156}
!156 = !DILocation(line: 146, column: 21, scope: !14)
!157 = !DILocation(line: 148, column: 13, scope: !14)
!158 = !DILocation(line: 148, column: 10, scope: !14)
!159 = !DILocation(line: 148, column: 3, scope: !14)
!160 = !DILocation(line: 149, column: 1, scope: !14)

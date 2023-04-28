; ModuleID = 'crypto/x509/x509_obj.c'
source_filename = "crypto/x509/x509_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.stack_st = type opaque
%struct.asn1_object_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@X509_NAME_oneline.hex = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/x509_obj.c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"NO X509_NAME\00", align 1
@__func__.X509_NAME_oneline = private unnamed_addr constant [18 x i8] c"X509_NAME_oneline\00", align 1

; Function Attrs: noinline nounwind uwtable
define i8* @X509_NAME_oneline(%struct.X509_name_st* noundef readonly %a, i8* noundef %buf, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %gs_doit = alloca <4 x i32>, align 16
  %tmp_buf = alloca [80 x i8], align 16
  %0 = bitcast <4 x i32>* %gs_doit to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #6
  %1 = getelementptr inbounds [80 x i8], [80 x i8]* %tmp_buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #6
  %cmp = icmp eq i8* %buf, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call %struct.buf_mem_st* @BUF_MEM_new() #7
  %cmp1 = icmp eq %struct.buf_mem_st* %call, null
  br i1 %cmp1, label %end, label %if.end

if.end:                                           ; preds = %if.then
  %call3 = tail call i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef nonnull %call, i64 noundef 200) #7
  %tobool.not = icmp eq i64 %call3, 0
  br i1 %tobool.not, label %end, label %if.end9

if.else:                                          ; preds = %entry
  %cmp6 = icmp eq i32 %len, 0
  br i1 %cmp6, label %cleanup, label %if.end9.thread

if.end9:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %call, i64 0, i32 1
  %2 = load i8*, i8** %data, align 8, !tbaa !4
  store i8 0, i8* %2, align 1, !tbaa !10
  %cmp10 = icmp eq %struct.X509_name_st* %a, null
  br i1 %cmp10, label %if.then13, label %for.cond.preheader

if.end9.thread:                                   ; preds = %if.else
  %cmp10349 = icmp eq %struct.X509_name_st* %a, null
  br i1 %cmp10349, label %if.end15, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end9, %if.end9.thread
  %b.0353.ph = phi %struct.buf_mem_st* [ null, %if.end9.thread ], [ %call, %if.end9 ]
  %len.addr.0351.ph = phi i32 [ %len, %if.end9.thread ], [ 200, %if.end9 ]
  %entries = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %a, i64 0, i32 0
  %3 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries, align 8, !tbaa !11
  %call19378 = call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %3) #8
  %call20379 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call19378) #7
  %cmp21380 = icmp sgt i32 %call20379, 0
  br i1 %cmp21380, label %for.body.lr.ph, label %for.end217

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx87 = getelementptr inbounds <4 x i32>, <4 x i32>* %gs_doit, i64 0, i64 2
  %arrayidx88 = getelementptr inbounds <4 x i32>, <4 x i32>* %gs_doit, i64 0, i64 1
  %arrayidx89 = getelementptr inbounds <4 x i32>, <4 x i32>* %gs_doit, i64 0, i64 0
  %cmp141.not = icmp eq %struct.buf_mem_st* %b.0353.ph, null
  %data150 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %b.0353.ph, i64 0, i32 1
  %4 = getelementptr inbounds <4 x i32>, <4 x i32>* %gs_doit, i64 0, i64 0
  %5 = getelementptr inbounds <4 x i32>, <4 x i32>* %gs_doit, i64 0, i64 1
  %6 = getelementptr inbounds <4 x i32>, <4 x i32>* %gs_doit, i64 0, i64 2
  %7 = getelementptr inbounds <4 x i32>, <4 x i32>* %gs_doit, i64 0, i64 3
  %arrayidx67.prol = getelementptr inbounds <4 x i32>, <4 x i32>* %gs_doit, i64 0, i64 0
  br label %for.body

if.then13:                                        ; preds = %if.end9
  %8 = load i8*, i8** %data, align 8, !tbaa !4
  %9 = bitcast %struct.buf_mem_st* %call to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %9, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 55) #7
  br label %if.end15

if.end15:                                         ; preds = %if.end9.thread, %if.then13
  %len.addr.0350358 = phi i32 [ 200, %if.then13 ], [ %len, %if.end9.thread ]
  %buf.addr.0 = phi i8* [ %8, %if.then13 ], [ %buf, %if.end9.thread ]
  %conv = sext i32 %len.addr.0350358 to i64
  %call16 = tail call i8* @strncpy(i8* noundef %buf.addr.0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 noundef %conv) #7
  %sub = add nsw i32 %len.addr.0350358, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %buf.addr.0, i64 %idxprom
  store i8 0, i8* %arrayidx17, align 1, !tbaa !10
  br label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %for.end213
  %prev_set.0384 = phi i32 [ -1, %for.body.lr.ph ], [ %75, %for.end213 ]
  %l.0383 = phi i32 [ 0, %for.body.lr.ph ], [ %add136, %for.end213 ]
  %i.0381 = phi i32 [ 0, %for.body.lr.ph ], [ %inc216, %for.end213 ]
  %10 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries, align 8, !tbaa !11
  %call24 = call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %10) #8
  %call25 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call24, i32 noundef %i.0381) #7
  %object = bitcast i8* %call25 to %struct.asn1_object_st**
  %11 = load %struct.asn1_object_st*, %struct.asn1_object_st** %object, align 8, !tbaa !14
  %call26 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %11) #7
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call29 = call i8* @OBJ_nid2sn(i32 noundef %call26) #7
  %cmp30 = icmp eq i8* %call29, null
  br i1 %cmp30, label %if.then32, label %if.end36

if.then32:                                        ; preds = %lor.lhs.false, %for.body
  %12 = load %struct.asn1_object_st*, %struct.asn1_object_st** %object, align 8, !tbaa !14
  %call34 = call i32 @i2t_ASN1_OBJECT(i8* noundef nonnull %1, i32 noundef 80, %struct.asn1_object_st* noundef %12) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %lor.lhs.false
  %s.0 = phi i8* [ %1, %if.then32 ], [ %call29, %lor.lhs.false ]
  %call37 = call i64 @strlen(i8* noundef %s.0) #9
  %conv38 = trunc i64 %call37 to i32
  %value = getelementptr inbounds i8, i8* %call25, i64 8
  %13 = bitcast i8* %value to %struct.asn1_string_st**
  %14 = load %struct.asn1_string_st*, %struct.asn1_string_st** %13, align 8, !tbaa !16
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %14, i64 0, i32 0
  %15 = load i32, i32* %length, align 8, !tbaa !17
  %cmp41 = icmp sgt i32 %15, 1048576
  br i1 %cmp41, label %end, label %if.end44

if.end44:                                         ; preds = %if.end36
  %type39 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %14, i64 0, i32 1
  %16 = load i32, i32* %type39, align 4, !tbaa !19
  %data46 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %14, i64 0, i32 2
  %17 = load i8*, i8** %data46, align 8, !tbaa !20
  %cmp47 = icmp eq i32 %16, 27
  %18 = and i32 %15, 3
  %cmp49 = icmp eq i32 %18, 0
  %or.cond = select i1 %cmp47, i1 %cmp49, i1 false
  br i1 %or.cond, label %if.then51, label %if.else85

if.then51:                                        ; preds = %if.end44
  store i32 0, i32* %arrayidx87, align 8, !tbaa !21
  store i32 0, i32* %arrayidx88, align 4, !tbaa !21
  store i32 0, i32* %arrayidx89, align 16, !tbaa !21
  %cmp57366 = icmp sgt i32 %15, 0
  br i1 %cmp57366, label %for.body59.preheader, label %if.else79

for.body59.preheader:                             ; preds = %if.then51
  %wide.trip.count = zext i32 %15 to i64
  %min.iters.check = icmp ult i32 %15, 8
  %19 = add nsw i64 %wide.trip.count, -5
  %20 = icmp ult i64 %19, -4
  %or.cond428 = select i1 %min.iters.check, i1 true, i1 %20
  br i1 %or.cond428, label %for.body59.preheader429, label %vector.ph

vector.ph:                                        ; preds = %for.body59.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288
  %.promoted = load i32, i32* %4, align 1, !tbaa !21
  %.promoted434 = load i32, i32* %5, align 1, !tbaa !21
  %.promoted436 = load i32, i32* %6, align 1, !tbaa !21
  %.promoted438 = load i32, i32* %7, align 1, !tbaa !21
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %21 = phi i32 [ %.promoted438, %vector.ph ], [ %45, %vector.body ]
  %22 = phi i32 [ %.promoted436, %vector.ph ], [ %43, %vector.body ]
  %23 = phi i32 [ %.promoted434, %vector.ph ], [ %41, %vector.body ]
  %24 = phi i32 [ %.promoted, %vector.ph ], [ %39, %vector.body ]
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %25 = getelementptr inbounds i8, i8* %17, i64 %index
  %26 = bitcast i8* %25 to <4 x i8>*
  %wide.load = load <4 x i8>, <4 x i8>* %26, align 1, !tbaa !10
  %27 = getelementptr inbounds i8, i8* %25, i64 4
  %28 = bitcast i8* %27 to <4 x i8>*
  %wide.load412 = load <4 x i8>, <4 x i8>* %28, align 1, !tbaa !10
  %29 = icmp ne <4 x i8> %wide.load, zeroinitializer
  %30 = icmp ne <4 x i8> %wide.load412, zeroinitializer
  %31 = extractelement <4 x i1> %29, i64 0
  %spec.select440 = select i1 %31, i32 1, i32 %24
  %32 = extractelement <4 x i1> %29, i64 1
  %33 = select i1 %32, i32 1, i32 %23
  %34 = extractelement <4 x i1> %29, i64 2
  %35 = select i1 %34, i32 1, i32 %22
  %36 = extractelement <4 x i1> %29, i64 3
  %37 = select i1 %36, i32 1, i32 %21
  %38 = extractelement <4 x i1> %30, i64 0
  %39 = select i1 %38, i32 1, i32 %spec.select440
  %40 = extractelement <4 x i1> %30, i64 1
  %41 = select i1 %40, i32 1, i32 %33
  %42 = extractelement <4 x i1> %30, i64 2
  %43 = select i1 %42, i32 1, i32 %35
  %44 = extractelement <4 x i1> %30, i64 3
  %45 = select i1 %44, i32 1, i32 %37
  %index.next = add nuw i64 %index, 8
  %46 = icmp eq i64 %index.next, %n.vec
  br i1 %46, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  store i32 %39, i32* %4, align 1, !tbaa !21
  store i32 %41, i32* %5, align 1, !tbaa !21
  store i32 %43, i32* %6, align 1, !tbaa !21
  store i32 %45, i32* %7, align 1, !tbaa !21
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end, label %for.body59.preheader429

for.body59.preheader429:                          ; preds = %for.body59.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body59.preheader ], [ %n.vec, %middle.block ]
  %47 = xor i64 %indvars.iv.ph, -1
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body59.prol.loopexit, label %for.body59.prol

for.body59.prol:                                  ; preds = %for.body59.preheader429
  %arrayidx61.prol = getelementptr inbounds i8, i8* %17, i64 %indvars.iv.ph
  %48 = load i8, i8* %arrayidx61.prol, align 1, !tbaa !10
  %cmp63.not.prol = icmp eq i8 %48, 0
  br i1 %cmp63.not.prol, label %for.inc.prol, label %if.then65.prol

if.then65.prol:                                   ; preds = %for.body59.prol
  store i32 1, i32* %arrayidx67.prol, align 16, !tbaa !21
  br label %for.inc.prol

for.inc.prol:                                     ; preds = %if.then65.prol, %for.body59.prol
  %indvars.iv.next.prol = or i64 %indvars.iv.ph, 1
  br label %for.body59.prol.loopexit

for.body59.prol.loopexit:                         ; preds = %for.inc.prol, %for.body59.preheader429
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body59.preheader429 ], [ %indvars.iv.next.prol, %for.inc.prol ]
  %49 = sub nsw i64 0, %wide.trip.count
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %for.end, label %for.body59

for.body59:                                       ; preds = %for.body59.prol.loopexit, %for.inc.1
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.inc.1 ], [ %indvars.iv.unr, %for.body59.prol.loopexit ]
  %arrayidx61 = getelementptr inbounds i8, i8* %17, i64 %indvars.iv
  %51 = load i8, i8* %arrayidx61, align 1, !tbaa !10
  %cmp63.not = icmp eq i8 %51, 0
  br i1 %cmp63.not, label %for.inc, label %if.then65

if.then65:                                        ; preds = %for.body59
  %and = and i64 %indvars.iv, 3
  %arrayidx67 = getelementptr inbounds <4 x i32>, <4 x i32>* %gs_doit, i64 0, i64 %and
  store i32 1, i32* %arrayidx67, align 4, !tbaa !21
  br label %for.inc

for.inc:                                          ; preds = %for.body59, %if.then65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx61.1 = getelementptr inbounds i8, i8* %17, i64 %indvars.iv.next
  %52 = load i8, i8* %arrayidx61.1, align 1, !tbaa !10
  %cmp63.not.1 = icmp eq i8 %52, 0
  br i1 %cmp63.not.1, label %for.inc.1, label %if.then65.1

if.then65.1:                                      ; preds = %for.inc
  %and.1 = and i64 %indvars.iv.next, 3
  %arrayidx67.1 = getelementptr inbounds <4 x i32>, <4 x i32>* %gs_doit, i64 0, i64 %and.1
  store i32 1, i32* %arrayidx67.1, align 4, !tbaa !21
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then65.1, %for.inc
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %for.end, label %for.body59, !llvm.loop !25

for.end:                                          ; preds = %for.body59.prol.loopexit, %for.inc.1, %middle.block
  %.pre = load i32, i32* %arrayidx89, align 16, !tbaa !21
  %.pre401 = load i32, i32* %arrayidx88, align 4, !tbaa !21
  %.pre402 = load i32, i32* %arrayidx87, align 8, !tbaa !21
  %53 = or i32 %.pre401, %.pre
  %54 = or i32 %53, %.pre402
  %tobool73.not = icmp eq i32 %54, 0
  br i1 %tobool73.not, label %if.else79, label %if.then74

if.then74:                                        ; preds = %for.end
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %gs_doit, align 16, !tbaa !21
  br label %if.end90

if.else79:                                        ; preds = %if.then51, %for.end
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, <4 x i32>* %gs_doit, align 16, !tbaa !21
  br label %if.end90

if.else85:                                        ; preds = %if.end44
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %gs_doit, align 16, !tbaa !21
  br label %if.end90

if.end90:                                         ; preds = %if.then74, %if.else79, %if.else85
  %cmp92369 = icmp sgt i32 %15, 0
  br i1 %cmp92369, label %for.body94.preheader, label %for.end132

for.body94.preheader:                             ; preds = %if.end90
  %wide.trip.count394 = zext i32 %15 to i64
  br label %for.body94

for.body94:                                       ; preds = %for.body94.preheader, %for.inc130
  %indvars.iv391 = phi i64 [ 0, %for.body94.preheader ], [ %indvars.iv.next392, %for.inc130 ]
  %l2.0370 = phi i32 [ 0, %for.body94.preheader ], [ %l2.1, %for.inc130 ]
  %and95 = and i64 %indvars.iv391, 3
  %arrayidx97 = getelementptr inbounds <4 x i32>, <4 x i32>* %gs_doit, i64 0, i64 %and95
  %55 = load i32, i32* %arrayidx97, align 4, !tbaa !21
  %tobool98.not = icmp eq i32 %55, 0
  br i1 %tobool98.not, label %for.inc130, label %if.end100

if.end100:                                        ; preds = %for.body94
  %arrayidx103 = getelementptr inbounds i8, i8* %17, i64 %indvars.iv391
  %56 = load i8, i8* %arrayidx103, align 1, !tbaa !10
  switch i8 %56, label %if.else115 [
    i8 47, label %if.then113
    i8 43, label %if.then113
  ]

if.then113:                                       ; preds = %if.end100, %if.end100
  %inc114 = add nsw i32 %l2.0370, 2
  br label %for.inc130

if.else115:                                       ; preds = %if.end100
  %57 = add i8 %56, -127
  %58 = icmp ult i8 %57, -95
  %spec.select.v = select i1 %58, i32 4, i32 1
  %spec.select = add nsw i32 %spec.select.v, %l2.0370
  br label %for.inc130

for.inc130:                                       ; preds = %if.else115, %if.then113, %for.body94
  %l2.1 = phi i32 [ %inc114, %if.then113 ], [ %l2.0370, %for.body94 ], [ %spec.select, %if.else115 ]
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 1
  %exitcond395.not = icmp eq i64 %indvars.iv.next392, %wide.trip.count394
  br i1 %exitcond395.not, label %for.end132, label %for.body94, !llvm.loop !26

for.end132:                                       ; preds = %for.inc130, %if.end90
  %l2.0.lcssa = phi i32 [ 0, %if.end90 ], [ %l2.1, %for.inc130 ]
  %add134 = add i32 %l2.0.lcssa, 2
  %add135 = add i32 %add134, %l.0383
  %add136 = add i32 %add135, %conv38
  %cmp137 = icmp sgt i32 %add136, 1048576
  br i1 %cmp137, label %end, label %if.end140

if.end140:                                        ; preds = %for.end132
  br i1 %cmp141.not, label %if.else153, label %if.then143

if.then143:                                       ; preds = %if.end140
  %add144 = add nsw i32 %add136, 1
  %conv145 = sext i32 %add144 to i64
  %call146 = call i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef nonnull %b.0353.ph, i64 noundef %conv145) #7
  %tobool147.not = icmp eq i64 %call146, 0
  br i1 %tobool147.not, label %end, label %if.end149

if.end149:                                        ; preds = %if.then143
  %59 = load i8*, i8** %data150, align 8, !tbaa !4
  br label %if.end161

if.else153:                                       ; preds = %if.end140
  %cmp154.not = icmp slt i32 %add136, %len.addr.0351.ph
  br i1 %cmp154.not, label %if.end161, label %if.end223

if.end161:                                        ; preds = %if.else153, %if.end149
  %buf.sink = phi i8* [ %59, %if.end149 ], [ %buf, %if.else153 ]
  %idxprom158 = sext i32 %l.0383 to i64
  %arrayidx159 = getelementptr inbounds i8, i8* %buf.sink, i64 %idxprom158
  %set = getelementptr inbounds i8, i8* %call25, i64 16
  %60 = bitcast i8* %set to i32*
  %61 = load i32, i32* %60, align 8, !tbaa !27
  %cmp162 = icmp eq i32 %prev_set.0384, %61
  %conv164 = select i1 %cmp162, i8 43, i8 47
  %incdec.ptr = getelementptr inbounds i8, i8* %arrayidx159, i64 1
  store i8 %conv164, i8* %arrayidx159, align 1, !tbaa !10
  %conv165 = and i64 %call37, 4294967295
  %call166 = call i8* @memcpy(i8* noundef nonnull %incdec.ptr, i8* noundef %s.0, i64 noundef %conv165) #7
  %sext = shl i64 %call37, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8, i8* %incdec.ptr, i64 %idx.ext
  %incdec.ptr167 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  store i8 61, i8* %add.ptr, align 1, !tbaa !10
  %62 = load %struct.asn1_string_st*, %struct.asn1_string_st** %13, align 8, !tbaa !16
  %data169 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %62, i64 0, i32 2
  %63 = load i8*, i8** %data169, align 8, !tbaa !20
  br i1 %cmp92369, label %for.body173.preheader, label %for.end213

for.body173.preheader:                            ; preds = %if.end161
  %wide.trip.count399 = zext i32 %15 to i64
  br label %for.body173

for.body173:                                      ; preds = %for.body173.preheader, %for.inc211
  %indvars.iv396 = phi i64 [ 0, %for.body173.preheader ], [ %indvars.iv.next397, %for.inc211 ]
  %p.1376 = phi i8* [ %incdec.ptr167, %for.body173.preheader ], [ %p.3, %for.inc211 ]
  %and174 = and i64 %indvars.iv396, 3
  %arrayidx176 = getelementptr inbounds <4 x i32>, <4 x i32>* %gs_doit, i64 0, i64 %and174
  %64 = load i32, i32* %arrayidx176, align 4, !tbaa !21
  %tobool177.not = icmp eq i32 %64, 0
  br i1 %tobool177.not, label %for.inc211, label %if.end179

if.end179:                                        ; preds = %for.body173
  %arrayidx181 = getelementptr inbounds i8, i8* %63, i64 %indvars.iv396
  %65 = load i8, i8* %arrayidx181, align 1, !tbaa !10
  %conv182 = zext i8 %65 to i32
  %66 = add i8 %65, -127
  %67 = icmp ult i8 %66, -95
  br i1 %67, label %if.then188, label %if.else199

if.then188:                                       ; preds = %if.end179
  %incdec.ptr189 = getelementptr inbounds i8, i8* %p.1376, i64 1
  store i8 92, i8* %p.1376, align 1, !tbaa !10
  %incdec.ptr190 = getelementptr inbounds i8, i8* %p.1376, i64 2
  store i8 120, i8* %incdec.ptr189, align 1, !tbaa !10
  %68 = lshr i32 %conv182, 4
  %69 = zext i32 %68 to i64
  %arrayidx193 = getelementptr inbounds [17 x i8], [17 x i8]* @X509_NAME_oneline.hex, i64 0, i64 %69
  %70 = load i8, i8* %arrayidx193, align 1, !tbaa !10
  %incdec.ptr194 = getelementptr inbounds i8, i8* %p.1376, i64 3
  store i8 %70, i8* %incdec.ptr190, align 1, !tbaa !10
  %and195 = and i32 %conv182, 15
  %71 = zext i32 %and195 to i64
  %arrayidx197 = getelementptr inbounds [17 x i8], [17 x i8]* @X509_NAME_oneline.hex, i64 0, i64 %71
  %72 = load i8, i8* %arrayidx197, align 1, !tbaa !10
  %incdec.ptr198 = getelementptr inbounds i8, i8* %p.1376, i64 4
  store i8 %72, i8* %incdec.ptr194, align 1, !tbaa !10
  br label %for.inc211

if.else199:                                       ; preds = %if.end179
  %73 = and i8 %65, -5
  %74 = icmp eq i8 %73, 43
  br i1 %74, label %if.then205, label %if.end207

if.then205:                                       ; preds = %if.else199
  %incdec.ptr206 = getelementptr inbounds i8, i8* %p.1376, i64 1
  store i8 92, i8* %p.1376, align 1, !tbaa !10
  br label %if.end207

if.end207:                                        ; preds = %if.else199, %if.then205
  %p.2 = phi i8* [ %incdec.ptr206, %if.then205 ], [ %p.1376, %if.else199 ]
  %incdec.ptr209 = getelementptr inbounds i8, i8* %p.2, i64 1
  store i8 %65, i8* %p.2, align 1, !tbaa !10
  br label %for.inc211

for.inc211:                                       ; preds = %if.then188, %if.end207, %for.body173
  %p.3 = phi i8* [ %incdec.ptr198, %if.then188 ], [ %incdec.ptr209, %if.end207 ], [ %p.1376, %for.body173 ]
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1
  %exitcond400.not = icmp eq i64 %indvars.iv.next397, %wide.trip.count399
  br i1 %exitcond400.not, label %for.end213, label %for.body173, !llvm.loop !28

for.end213:                                       ; preds = %for.inc211, %if.end161
  %p.1.lcssa = phi i8* [ %incdec.ptr167, %if.end161 ], [ %p.3, %for.inc211 ]
  store i8 0, i8* %p.1.lcssa, align 1, !tbaa !10
  %75 = load i32, i32* %60, align 8, !tbaa !27
  %inc216 = add nuw nsw i32 %i.0381, 1
  %76 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries, align 8, !tbaa !11
  %call19 = call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %76) #8
  %call20 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call19) #7
  %cmp21 = icmp slt i32 %inc216, %call20
  br i1 %cmp21, label %for.body, label %for.end217, !llvm.loop !29

for.end217:                                       ; preds = %for.end213, %for.cond.preheader
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %inc216, %for.end213 ]
  %cmp218.not = icmp eq %struct.buf_mem_st* %b.0353.ph, null
  br i1 %cmp218.not, label %if.end223, label %if.then220

if.then220:                                       ; preds = %for.end217
  %data221 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %b.0353.ph, i64 0, i32 1
  %77 = load i8*, i8** %data221, align 8, !tbaa !4
  %78 = bitcast %struct.buf_mem_st* %b.0353.ph to i8*
  call void @CRYPTO_free(i8* noundef nonnull %78, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 176) #7
  br label %if.end223

if.end223:                                        ; preds = %if.else153, %for.end217, %if.then220
  %i.0365 = phi i32 [ %i.0.lcssa, %if.then220 ], [ %i.0.lcssa, %for.end217 ], [ %i.0381, %if.else153 ]
  %p.4 = phi i8* [ %77, %if.then220 ], [ %buf, %for.end217 ], [ %buf, %if.else153 ]
  %cmp224 = icmp eq i32 %i.0365, 0
  br i1 %cmp224, label %if.then226, label %cleanup

if.then226:                                       ; preds = %if.end223
  store i8 0, i8* %p.4, align 1, !tbaa !10
  br label %cleanup

end:                                              ; preds = %if.then143, %for.end132, %if.end36, %if.then, %if.end
  %.sink409 = phi i32 [ 183, %if.end ], [ 183, %if.then ], [ 76, %if.end36 ], [ 122, %for.end132 ], [ 183, %if.then143 ]
  %.sink = phi i32 [ 786688, %if.end ], [ 786688, %if.then ], [ 134, %if.end36 ], [ 134, %for.end132 ], [ 786688, %if.then143 ]
  %b.2 = phi %struct.buf_mem_st* [ %call, %if.end ], [ null, %if.then ], [ %b.0353.ph, %if.end36 ], [ %b.0353.ph, %for.end132 ], [ %b.0353.ph, %if.then143 ]
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink409, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.X509_NAME_oneline, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef %.sink, i8* noundef null) #7
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef %b.2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end223, %if.then226, %if.else, %end, %if.end15
  %retval.0 = phi i8* [ null, %end ], [ %buf.addr.0, %if.end15 ], [ null, %if.else ], [ %p.4, %if.then226 ], [ %p.4, %if.end223 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #6
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.buf_mem_st* @BUF_MEM_new() local_unnamed_addr #2

declare i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME_ENTRY* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @i2t_ASN1_OBJECT(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 8}
!5 = !{!"buf_mem_st", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 24}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !9, i64 0}
!12 = !{!"X509_name_st", !9, i64 0, !13, i64 8, !9, i64 16, !9, i64 24, !13, i64 32}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !9, i64 0}
!15 = !{!"X509_name_entry_st", !9, i64 0, !9, i64 8, !13, i64 16, !13, i64 20}
!16 = !{!15, !9, i64 8}
!17 = !{!18, !13, i64 0}
!18 = !{!"asn1_string_st", !13, i64 0, !13, i64 4, !9, i64 8, !6, i64 16}
!19 = !{!18, !13, i64 4}
!20 = !{!18, !9, i64 8}
!21 = !{!13, !13, i64 0}
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = distinct !{!25, !23, !24}
!26 = distinct !{!26, !23}
!27 = !{!15, !13, i64 16}
!28 = distinct !{!28, !23}
!29 = distinct !{!29, !23}

; ModuleID = 'crypto/lhash/lh_stats.c'
source_filename = "crypto/lhash/lh_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lhash_st = type { %struct.lhash_node_st**, i32 (i8*, i8*)*, i64 (i8*)*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.lhash_node_st = type { i8*, %struct.lhash_node_st*, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque

@.str = private unnamed_addr constant [29 x i8] c"num_items             = %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"num_nodes             = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"num_alloc_nodes       = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"num_expands           = %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"num_expand_reallocs   = %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"num_contracts         = %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"num_contract_reallocs = %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"num_hash_calls        = %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"num_comp_calls        = %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"num_insert            = %lu\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"num_replace           = %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"num_delete            = %lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"num_no_delete         = %lu\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"num_retrieve          = %lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"num_retrieve_miss     = %lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"num_hash_comps        = %lu\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"node %6u -> %3u\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"%lu nodes used out of %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"%lu items\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"load %d.%02d  actual load %d.%02d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_LH_stats(%struct.lhash_st* nocapture noundef readonly %lh, %struct._IO_FILE* noundef %fp) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #2
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #2
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #2
  tail call void @OPENSSL_LH_stats_bio(%struct.lhash_st* noundef %lh, %struct.bio_st* noundef nonnull %call1) #3
  %call3 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_LH_stats_bio(%struct.lhash_st* nocapture noundef readonly %lh, %struct.bio_st* noundef %out) local_unnamed_addr #0 {
entry:
  %num_items = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 9
  %0 = load i64, i64* %num_items, align 8, !tbaa !4
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 noundef %0) #2
  %num_nodes = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 3
  %1 = load i32, i32* %num_nodes, align 8, !tbaa !11
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 noundef %1) #2
  %num_alloc_nodes = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 4
  %2 = load i32, i32* %num_alloc_nodes, align 4, !tbaa !12
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 noundef %2) #2
  %num_expands = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 10
  %3 = load i64, i64* %num_expands, align 8, !tbaa !13
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 noundef %3) #2
  %num_expand_reallocs = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 11
  %4 = load i64, i64* %num_expand_reallocs, align 8, !tbaa !14
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 noundef %4) #2
  %num_contracts = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 12
  %5 = load i64, i64* %num_contracts, align 8, !tbaa !15
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 noundef %5) #2
  %num_contract_reallocs = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 13
  %6 = load i64, i64* %num_contract_reallocs, align 8, !tbaa !16
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 noundef %6) #2
  %num_hash_calls = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 14
  %atomic-load = load atomic i64, i64* %num_hash_calls seq_cst, align 8, !tbaa !17
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 noundef %atomic-load) #2
  %num_comp_calls = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 15
  %atomic-load8 = load atomic i64, i64* %num_comp_calls seq_cst, align 8, !tbaa !18
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i64 noundef %atomic-load8) #2
  %num_insert = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 16
  %7 = load i64, i64* %num_insert, align 8, !tbaa !19
  %call10 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 noundef %7) #2
  %num_replace = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 17
  %8 = load i64, i64* %num_replace, align 8, !tbaa !20
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 noundef %8) #2
  %num_delete = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 18
  %9 = load i64, i64* %num_delete, align 8, !tbaa !21
  %call12 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i64 noundef %9) #2
  %num_no_delete = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 19
  %10 = load i64, i64* %num_no_delete, align 8, !tbaa !22
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i64 noundef %10) #2
  %num_retrieve = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 20
  %atomic-load14 = load atomic i64, i64* %num_retrieve seq_cst, align 8, !tbaa !23
  %call15 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i64 noundef %atomic-load14) #2
  %num_retrieve_miss = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 21
  %atomic-load16 = load atomic i64, i64* %num_retrieve_miss seq_cst, align 8, !tbaa !24
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i64 noundef %atomic-load16) #2
  %num_hash_comps = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 22
  %atomic-load18 = load atomic i64, i64* %num_hash_comps seq_cst, align 8, !tbaa !25
  %call19 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i64 noundef %atomic-load18) #2
  ret void
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_LH_node_stats(%struct.lhash_st* nocapture noundef readonly %lh, %struct._IO_FILE* noundef %fp) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #2
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #2
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #2
  tail call void @OPENSSL_LH_node_stats_bio(%struct.lhash_st* noundef %lh, %struct.bio_st* noundef nonnull %call1) #3
  %call3 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_LH_node_stats_bio(%struct.lhash_st* nocapture noundef readonly %lh, %struct.bio_st* noundef %out) local_unnamed_addr #0 {
entry:
  %num_nodes = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 3
  %0 = load i32, i32* %num_nodes, align 8, !tbaa !11
  %cmp20.not = icmp eq i32 %0, 0
  br i1 %cmp20.not, label %for.end6, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %b = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.end ]
  %1 = load %struct.lhash_node_st**, %struct.lhash_node_st*** %b, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds %struct.lhash_node_st*, %struct.lhash_node_st** %1, i64 %indvars.iv
  %n.016 = load %struct.lhash_node_st*, %struct.lhash_node_st** %arrayidx, align 8, !tbaa !27
  %cmp2.not17 = icmp eq %struct.lhash_node_st* %n.016, null
  br i1 %cmp2.not17, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %n.019 = phi %struct.lhash_node_st* [ %n.0, %for.body3 ], [ %n.016, %for.body ]
  %num.018 = phi i32 [ %inc, %for.body3 ], [ 0, %for.body ]
  %inc = add i32 %num.018, 1
  %next = getelementptr inbounds %struct.lhash_node_st, %struct.lhash_node_st* %n.019, i64 0, i32 1
  %n.0 = load %struct.lhash_node_st*, %struct.lhash_node_st** %next, align 8, !tbaa !27
  %cmp2.not = icmp eq %struct.lhash_node_st* %n.0, null
  br i1 %cmp2.not, label %for.end, label %for.body3, !llvm.loop !28

for.end:                                          ; preds = %for.body3, %for.body
  %num.0.lcssa = phi i32 [ 0, %for.body ], [ %inc, %for.body3 ]
  %2 = trunc i64 %indvars.iv to i32
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 noundef %2, i32 noundef %num.0.lcssa) #2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, i32* %num_nodes, align 8, !tbaa !11
  %4 = zext i32 %3 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.end6, !llvm.loop !30

for.end6:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_LH_node_usage_stats(%struct.lhash_st* nocapture noundef readonly %lh, %struct._IO_FILE* noundef %fp) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #2
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #2
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #2
  tail call void @OPENSSL_LH_node_usage_stats_bio(%struct.lhash_st* noundef %lh, %struct.bio_st* noundef nonnull %call1) #3
  %call3 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_LH_node_usage_stats_bio(%struct.lhash_st* nocapture noundef readonly %lh, %struct.bio_st* noundef %out) local_unnamed_addr #0 {
entry:
  %num_nodes = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 3
  %0 = load i32, i32* %num_nodes, align 8, !tbaa !11
  %cmp64.not = icmp eq i32 %0, 0
  br i1 %cmp64.not, label %for.end8, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %b = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 0
  %1 = load %struct.lhash_node_st**, %struct.lhash_node_st*** %b, align 8, !tbaa !26
  %wide.trip.count = zext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.end ]
  %n_used.067 = phi i64 [ 0, %for.body.lr.ph ], [ %n_used.1, %for.end ]
  %total.066 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.end ]
  %arrayidx = getelementptr inbounds %struct.lhash_node_st*, %struct.lhash_node_st** %1, i64 %indvars.iv
  %n.060 = load %struct.lhash_node_st*, %struct.lhash_node_st** %arrayidx, align 8, !tbaa !27
  %cmp2.not61 = icmp eq %struct.lhash_node_st* %n.060, null
  br i1 %cmp2.not61, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %n.063 = phi %struct.lhash_node_st* [ %n.0, %for.body3 ], [ %n.060, %for.body ]
  %num.062 = phi i64 [ %inc, %for.body3 ], [ 0, %for.body ]
  %inc = add i64 %num.062, 1
  %next = getelementptr inbounds %struct.lhash_node_st, %struct.lhash_node_st* %n.063, i64 0, i32 1
  %n.0 = load %struct.lhash_node_st*, %struct.lhash_node_st** %next, align 8, !tbaa !27
  %cmp2.not = icmp eq %struct.lhash_node_st* %n.0, null
  br i1 %cmp2.not, label %for.end, label %for.body3, !llvm.loop !31

for.end:                                          ; preds = %for.body3, %for.body
  %num.0.lcssa = phi i64 [ 0, %for.body ], [ %inc, %for.body3 ]
  %cmp4.not = icmp ne i64 %num.0.lcssa, 0
  %add = add i64 %num.0.lcssa, %total.066
  %inc5 = zext i1 %cmp4.not to i64
  %n_used.1 = add i64 %n_used.067, %inc5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end8, label %for.body, !llvm.loop !32

for.end8:                                         ; preds = %for.end, %entry
  %total.0.lcssa = phi i64 [ 0, %entry ], [ %add, %for.end ]
  %n_used.0.lcssa = phi i64 [ 0, %entry ], [ %n_used.1, %for.end ]
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i64 noundef %n_used.0.lcssa, i32 noundef %0) #2
  %call10 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i64 noundef %total.0.lcssa) #2
  %cmp11 = icmp eq i64 %n_used.0.lcssa, 0
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %for.end8
  %2 = load i32, i32* %num_nodes, align 8, !tbaa !11
  %conv = zext i32 %2 to i64
  %div = udiv i64 %total.0.lcssa, %conv
  %conv15 = trunc i64 %div to i32
  %rem = urem i64 %total.0.lcssa, %conv
  %mul = mul nuw nsw i64 %rem, 100
  %div20 = udiv i64 %mul, %conv
  %conv21 = trunc i64 %div20 to i32
  %div22 = udiv i64 %total.0.lcssa, %n_used.0.lcssa
  %conv23 = trunc i64 %div22 to i32
  %rem24 = urem i64 %total.0.lcssa, %n_used.0.lcssa
  %mul25 = mul i64 %rem24, 100
  %div26 = udiv i64 %mul25, %n_used.0.lcssa
  %conv27 = trunc i64 %div26 to i32
  %call28 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv15, i32 noundef %conv21, i32 noundef %conv23, i32 noundef %conv27) #2
  br label %cleanup

cleanup:                                          ; preds = %for.end8, %if.end13
  ret void
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !10, i64 56}
!5 = !{!"lhash_st", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !9, i64 168}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !9, i64 24}
!12 = !{!5, !9, i64 28}
!13 = !{!5, !10, i64 64}
!14 = !{!5, !10, i64 72}
!15 = !{!5, !10, i64 80}
!16 = !{!5, !10, i64 88}
!17 = !{!5, !7, i64 96}
!18 = !{!5, !7, i64 104}
!19 = !{!5, !10, i64 112}
!20 = !{!5, !10, i64 120}
!21 = !{!5, !10, i64 128}
!22 = !{!5, !10, i64 136}
!23 = !{!5, !7, i64 144}
!24 = !{!5, !7, i64 152}
!25 = !{!5, !7, i64 160}
!26 = !{!5, !6, i64 0}
!27 = !{!6, !6, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}

; ModuleID = 'crypto/asn1/a_strex.c'
source_filename = "crypto/asn1/a_strex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.X509_name_st = type opaque
%struct.X509_name_entry_st = type opaque
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }

@tag2nbyte = internal unnamed_addr constant [31 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\FF\FF\FF\FF\FF\01\01\01\FF\01\01\01\FF\01\FF\04\FF\02", align 16
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"crypto/asn1/a_strex.c\00", align 1
@__func__.do_dump = private unnamed_addr constant [8 x i8] c"do_dump\00", align 1
@do_hex_dump.hexdig = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@__func__.do_buf = private unnamed_addr constant [7 x i8] c"do_buf\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"\\W%08lX\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"\\U%04lX\00", align 1
@char_type = internal unnamed_addr constant [128 x i16] [i16 1026, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 120, i16 0, i16 1, i16 40, i16 0, i16 0, i16 0, i16 16, i16 1040, i16 1040, i16 -31744, i16 25, i16 25, i16 16400, i16 8208, i16 16, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 16, i16 9, i16 9, i16 16, i16 9, i16 16, i16 0, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 0, i16 1025, i16 0, i16 0, i16 0, i16 0, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 0, i16 0, i16 0, i16 0, i16 2], align 16
@.str.16 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"\\%02X\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_print_ex(%struct.bio_st* noundef %out, %struct.X509_name_st* noundef %nm, i32 noundef %indent, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %flags, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @X509_NAME_print(%struct.bio_st* noundef %out, %struct.X509_name_st* noundef %nm, i32 noundef %indent) #4
  br label %return

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.bio_st* %out to i8*
  %call1 = tail call fastcc i32 @do_name_ex(i32 (i8*, i8*, i32)* noundef nonnull @send_bio_chars, i8* noundef %0, %struct.X509_name_st* noundef %nm, i32 noundef %indent, i64 noundef %flags) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

declare i32 @X509_NAME_print(%struct.bio_st* noundef, %struct.X509_name_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_name_ex(i32 (i8*, i8*, i32)* nocapture noundef readonly %io_ch, i8* noundef %arg, %struct.X509_name_st* noundef %n, i32 noundef %indent, i64 noundef %flags) unnamed_addr #0 {
entry:
  %objtmp = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %objtmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #6
  %1 = icmp sgt i32 %indent, 0
  %spec.store.select = select i1 %1, i32 %indent, i32 0
  %call = tail call fastcc i32 @do_indent(i32 (i8*, i8*, i32)* noundef %io_ch, i8* noundef %arg, i32 noundef %spec.store.select) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup116, label %if.end2

if.end2:                                          ; preds = %entry
  %and = and i64 %flags, 983040
  %2 = add nsw i64 %and, -65536
  %3 = lshr exact i64 %2, 16
  switch i64 %3, label %cleanup116 [
    i64 3, label %sw.epilog
    i64 0, label %sw.bb3
    i64 1, label %sw.bb4
    i64 2, label %sw.bb5
  ]

sw.bb3:                                           ; preds = %if.end2
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end2
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end2, %sw.bb5, %sw.bb4, %sw.bb3
  %indent.addr.0 = phi i32 [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ %spec.store.select, %if.end2 ]
  %sep_dn.0 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %if.end2 ]
  %sep_mv.0 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %if.end2 ]
  %sep_dn_len.0 = phi i32 [ 2, %sw.bb5 ], [ 2, %sw.bb4 ], [ 1, %sw.bb3 ], [ 1, %if.end2 ]
  %sep_mv_len.0 = phi i32 [ 3, %sw.bb5 ], [ 3, %sw.bb4 ], [ 1, %sw.bb3 ], [ 3, %if.end2 ]
  %and6 = and i64 %flags, 8388608
  %tobool7.not = icmp eq i64 %and6, 0
  %. = select i1 %tobool7.not, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %.213 = select i1 %tobool7.not, i32 1, i32 3
  %4 = trunc i64 %flags to i32
  %conv = and i32 %4, 6291456
  %call11 = tail call i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef %n) #4
  %cmp12218 = icmp sgt i32 %call11, 0
  br i1 %cmp12218, label %for.body.lr.ph, label %cleanup116

for.body.lr.ph:                                   ; preds = %sw.epilog
  %and14 = and i64 %flags, 1048576
  %tobool15.not = icmp eq i64 %and14, 0
  %add38 = add nuw i32 %sep_dn_len.0, %indent.addr.0
  %cmp50.not = icmp eq i32 %conv, 6291456
  %cmp53 = icmp eq i32 %conv, 4194304
  %and82 = and i64 %flags, 33554432
  %tobool83.not = icmp eq i64 %and82, 0
  %and104 = and i64 %flags, 16777216
  %tobool105.not = icmp eq i64 %and104, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end114
  %outlen.0222 = phi i32 [ %spec.store.select, %for.body.lr.ph ], [ %add115, %if.end114 ]
  %i.0220 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end114 ]
  %prev.0219 = phi i32 [ -1, %for.body.lr.ph ], [ %call46, %if.end114 ]
  %5 = xor i32 %i.0220, -1
  %sub17 = add i32 %call11, %5
  %i.0220.sink = select i1 %tobool15.not, i32 %i.0220, i32 %sub17
  %call20 = call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef %n, i32 noundef %i.0220.sink) #4
  %cmp22.not = icmp eq i32 %prev.0219, -1
  br i1 %cmp22.not, label %if.end45, label %if.then24

if.then24:                                        ; preds = %for.body
  %call25 = call i32 @X509_NAME_ENTRY_set(%struct.X509_name_entry_st* noundef %call20) #4
  %cmp26 = icmp eq i32 %prev.0219, %call25
  br i1 %cmp26, label %if.then28, label %if.else33

if.then28:                                        ; preds = %if.then24
  %call29 = call i32 %io_ch(i8* noundef %arg, i8* noundef %sep_mv.0, i32 noundef %sep_mv_len.0) #4, !callees !4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup116, label %if.end32

if.end32:                                         ; preds = %if.then28
  %add = add nsw i32 %outlen.0222, %sep_mv_len.0
  br label %if.end45

if.else33:                                        ; preds = %if.then24
  %call34 = call i32 %io_ch(i8* noundef %arg, i8* noundef %sep_dn.0, i32 noundef %sep_dn_len.0) #4, !callees !4
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup116, label %if.end37

if.end37:                                         ; preds = %if.else33
  %call39 = call fastcc i32 @do_indent(i32 (i8*, i8*, i32)* noundef %io_ch, i8* noundef %arg, i32 noundef %indent.addr.0) #5
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %cleanup116, label %if.end42

if.end42:                                         ; preds = %if.end37
  %add43 = add i32 %add38, %outlen.0222
  br label %if.end45

if.end45:                                         ; preds = %if.end32, %if.end42, %for.body
  %outlen.1 = phi i32 [ %add, %if.end32 ], [ %add43, %if.end42 ], [ %outlen.0222, %for.body ]
  %call46 = call i32 @X509_NAME_ENTRY_set(%struct.X509_name_entry_st* noundef %call20) #4
  %call47 = call %struct.asn1_object_st* @X509_NAME_ENTRY_get_object(%struct.X509_name_entry_st* noundef %call20) #4
  %call48 = call %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* noundef %call20) #4
  %call49 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call47) #4
  br i1 %cmp50.not, label %if.end100, label %if.then52

if.then52:                                        ; preds = %if.end45
  %cmp55 = icmp eq i32 %call49, 0
  %or.cond = select i1 %cmp53, i1 true, i1 %cmp55
  br i1 %or.cond, label %if.then57, label %if.else60

if.then57:                                        ; preds = %if.then52
  %call58 = call i32 @OBJ_obj2txt(i8* noundef nonnull %0, i32 noundef 80, %struct.asn1_object_st* noundef %call47, i32 noundef 1) #4
  br label %if.end73

if.else60:                                        ; preds = %if.then52
  switch i32 %conv, label %if.end73 [
    i32 0, label %if.then63
    i32 2097152, label %if.then68
  ]

if.then63:                                        ; preds = %if.else60
  %call64 = call i8* @OBJ_nid2sn(i32 noundef %call49) #4
  br label %if.end73

if.then68:                                        ; preds = %if.else60
  %call69 = call i8* @OBJ_nid2ln(i32 noundef %call49) #4
  br label %if.end73

if.end73:                                         ; preds = %if.else60, %if.then63, %if.then68, %if.then57
  %objbuf.0 = phi i8* [ %0, %if.then57 ], [ %call64, %if.then63 ], [ %call69, %if.then68 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %if.else60 ]
  %fld_len.0 = phi i32 [ 0, %if.then57 ], [ 10, %if.then63 ], [ 25, %if.then68 ], [ 0, %if.else60 ]
  %call74 = call i64 @strlen(i8* noundef %objbuf.0) #7
  %conv75 = trunc i64 %call74 to i32
  %call76 = call i32 %io_ch(i8* noundef %arg, i8* noundef %objbuf.0, i32 noundef %conv75) #4, !callees !4
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %cleanup116, label %if.end79

if.end79:                                         ; preds = %if.end73
  %cmp80 = icmp sle i32 %fld_len.0, %conv75
  %or.cond214 = or i1 %tobool83.not, %cmp80
  br i1 %or.cond214, label %if.end92, label %if.then84

if.then84:                                        ; preds = %if.end79
  %sub85 = sub nsw i32 %fld_len.0, %conv75
  %call86 = call fastcc i32 @do_indent(i32 (i8*, i8*, i32)* noundef %io_ch, i8* noundef %arg, i32 noundef %sub85) #5
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %cleanup116, label %if.end89

if.end89:                                         ; preds = %if.then84
  %add91 = add nsw i32 %sub85, %outlen.1
  br label %if.end92

if.end92:                                         ; preds = %if.end89, %if.end79
  %outlen.2 = phi i32 [ %add91, %if.end89 ], [ %outlen.1, %if.end79 ]
  %call93 = call i32 %io_ch(i8* noundef %arg, i8* noundef %., i32 noundef %.213) #4, !callees !4
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %cleanup116, label %cleanup

cleanup:                                          ; preds = %if.end92
  %add97 = add nsw i32 %.213, %conv75
  %add98 = add nsw i32 %add97, %outlen.2
  br label %if.end100

if.end100:                                        ; preds = %cleanup, %if.end45
  %outlen.4 = phi i32 [ %add98, %cleanup ], [ %outlen.1, %if.end45 ]
  %cmp101 = icmp ne i32 %call49, 0
  %or.cond215 = or i1 %tobool105.not, %cmp101
  %orflags.0 = select i1 %or.cond215, i64 0, i64 128
  %or = or i64 %orflags.0, %flags
  %call110 = call fastcc i32 @do_print_ex(i32 (i8*, i8*, i32)* noundef %io_ch, i8* noundef %arg, i64 noundef %or, %struct.asn1_string_st* noundef %call48) #5
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %cleanup116, label %if.end114

if.end114:                                        ; preds = %if.end100
  %add115 = add nsw i32 %call110, %outlen.4
  %inc = add nuw nsw i32 %i.0220, 1
  %exitcond.not = icmp eq i32 %inc, %call11
  br i1 %exitcond.not, label %cleanup116, label %for.body, !llvm.loop !5

cleanup116:                                       ; preds = %if.then28, %if.else33, %if.end37, %if.end100, %if.end114, %if.end73, %if.then84, %if.end92, %sw.epilog, %if.end2, %entry
  %retval.3 = phi i32 [ -1, %entry ], [ -1, %if.end2 ], [ %spec.store.select, %sw.epilog ], [ -1, %if.then28 ], [ -1, %if.else33 ], [ -1, %if.end37 ], [ -1, %if.end100 ], [ %add115, %if.end114 ], [ -1, %if.end73 ], [ -1, %if.then84 ], [ -1, %if.end92 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #6
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @send_bio_chars(i8* noundef %arg, i8* noundef %buf, i32 noundef %len) #0 {
entry:
  %tobool.not = icmp eq i8* %arg, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %arg to %struct.bio_st*
  %call = tail call i32 @BIO_write(%struct.bio_st* noundef nonnull %0, i8* noundef %buf, i32 noundef %len) #4
  %cmp.not = icmp eq i32 %call, %len
  %. = zext i1 %cmp.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_print_ex_fp(%struct._IO_FILE* noundef %fp, %struct.X509_name_st* noundef %nm, i32 noundef %indent, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %flags, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %fp, i32 noundef 0) #4
  %tobool.not = icmp eq %struct.bio_st* %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %call2 = tail call i32 @X509_NAME_print(%struct.bio_st* noundef nonnull %call, %struct.X509_name_st* noundef %nm, i32 noundef %indent) #4
  %call3 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #4
  br label %return

if.end5:                                          ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call6 = tail call fastcc i32 @do_name_ex(i32 (i8*, i8*, i32)* noundef nonnull @send_fp_chars, i8* noundef %0, %struct.X509_name_st* noundef %nm, i32 noundef %indent, i64 noundef %flags) #5
  br label %return

return:                                           ; preds = %if.end, %if.then, %if.end5
  %retval.1 = phi i32 [ %call6, %if.end5 ], [ %call2, %if.end ], [ -1, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @send_fp_chars(i8* noundef %arg, i8* noundef %buf, i32 noundef %len) #0 {
entry:
  %tobool.not = icmp eq i8* %arg, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %len to i64
  %0 = bitcast i8* %arg to %struct._IO_FILE*
  %call = tail call i64 @fwrite(i8* noundef %buf, i64 noundef 1, i64 noundef %conv, %struct._IO_FILE* noundef nonnull %0) #4
  %conv1 = zext i32 %len to i64
  %cmp.not = icmp eq i64 %call, %conv1
  %. = zext i1 %cmp.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_STRING_print_ex(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %str, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.bio_st* %out to i8*
  %call = tail call fastcc i32 @do_print_ex(i32 (i8*, i8*, i32)* noundef nonnull @send_bio_chars, i8* noundef %0, i64 noundef %flags, %struct.asn1_string_st* noundef %str) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_print_ex(i32 (i8*, i8*, i32)* nocapture noundef readonly %io_ch, i8* noundef %arg, i64 noundef %lflags, %struct.asn1_string_st* noundef %str) unnamed_addr #0 {
entry:
  %quotes = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %quotes) #6
  store i8 0, i8* %quotes, align 1, !tbaa !7
  %0 = trunc i64 %lflags to i16
  %conv = and i16 %0, 1039
  %type1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 1
  %1 = load i32, i32* %type1, align 4, !tbaa !10
  %and2 = and i64 %lflags, 64
  %tobool.not = icmp eq i64 %and2, 0
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @ASN1_tag2str(i32 noundef %1) #4
  %call3 = tail call i64 @strlen(i8* noundef %call) #7
  %conv5 = trunc i64 %call3 to i32
  %call6 = tail call i32 %io_ch(i8* noundef %arg, i8* noundef %call, i32 noundef %conv5) #4, !callees !4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup87, label %cleanup

cleanup:                                          ; preds = %if.then
  %call8 = tail call i32 %io_ch(i8* noundef %arg, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 noundef 1) #4, !callees !4
  %tobool9.not = icmp eq i32 %call8, 0
  %not.tobool9.not = xor i1 %tobool9.not, true
  %inc = zext i1 %not.tobool9.not to i32
  %spec.select143 = add nsw i32 %inc, %conv5
  br i1 %tobool9.not, label %cleanup87, label %if.end11

if.end11:                                         ; preds = %cleanup, %entry
  %outlen.1 = phi i32 [ %spec.select143, %cleanup ], [ 0, %entry ]
  %and12 = and i64 %lflags, 128
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.then37

if.else:                                          ; preds = %if.end11
  %and15 = and i64 %lflags, 32
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.else18, label %if.end44.thread

if.else18:                                        ; preds = %if.else
  %2 = add i32 %1, -1
  %3 = icmp ult i32 %2, 30
  br i1 %3, label %if.end25, label %land.lhs.true28

if.end25:                                         ; preds = %if.else18
  %idxprom165 = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [31 x i8], [31 x i8]* @tag2nbyte, i64 0, i64 %idxprom165
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv23 = sext i8 %4 to i32
  %5 = lshr i64 706998271, %idxprom165
  %6 = and i64 %5, 1
  %cmp26.not = icmp eq i64 %6, 0
  br i1 %cmp26.not, label %if.end44, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.else18, %if.end25
  %and29 = and i64 %lflags, 256
  %tobool30.not = icmp eq i64 %and29, 0
  br i1 %tobool30.not, label %if.end44.thread, label %if.then37

if.then37:                                        ; preds = %land.lhs.true28, %if.end11
  %call38 = tail call fastcc i32 @do_dump(i64 noundef %lflags, i32 (i8*, i8*, i32)* noundef %io_ch, i8* noundef %arg, %struct.asn1_string_st* noundef nonnull %str) #5
  %add43 = add nsw i32 %call38, %outlen.1
  %cmp39.inv = icmp sgt i32 %call38, -1
  %spec.select145 = select i1 %cmp39.inv, i32 %add43, i32 -1
  br label %cleanup87

if.end44:                                         ; preds = %if.end25
  %tobool48.not = icmp eq i32 %1, 12
  %or = or i32 %conv23, 8
  %spec.select = select i1 %tobool48.not, i32 0, i32 %conv23
  %spec.select166 = select i1 %tobool48.not, i32 1, i32 %or
  br label %if.end44.thread

if.end44.thread:                                  ; preds = %if.else, %land.lhs.true28, %if.end44
  %type.1157163 = phi i32 [ %spec.select, %if.end44 ], [ 1, %land.lhs.true28 ], [ 1, %if.else ]
  %7 = phi i32 [ %spec.select166, %if.end44 ], [ 9, %land.lhs.true28 ], [ 9, %if.else ]
  %tobool46.not164.in = and i64 %lflags, 16
  %tobool46.not164 = icmp eq i64 %tobool46.not164.in, 0
  %type.2 = select i1 %tobool46.not164, i32 %type.1157163, i32 %7
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 2
  %8 = load i8*, i8** %data, align 8, !tbaa !15
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 0
  %9 = load i32, i32* %length, align 8, !tbaa !16
  %call53 = call fastcc i32 @do_buf(i8* noundef %8, i32 noundef %9, i32 noundef %type.2, i16 noundef zeroext %conv, i8* noundef nonnull %quotes, i32 (i8*, i8*, i32)* noundef %io_ch, i8* noundef null) #5
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %cleanup87, label %if.end57

if.end57:                                         ; preds = %if.end44.thread
  %add58 = add nsw i32 %call53, %outlen.1
  %10 = load i8, i8* %quotes, align 1, !tbaa !7
  %tobool59.not = icmp eq i8 %10, 0
  %add61 = add nsw i32 %add58, 2
  %spec.select142 = select i1 %tobool59.not, i32 %add58, i32 %add61
  %tobool63.not = icmp eq i8* %arg, null
  br i1 %tobool63.not, label %cleanup87, label %if.end65

if.end65:                                         ; preds = %if.end57
  br i1 %tobool59.not, label %if.end72, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %if.end65
  %call69 = call i32 %io_ch(i8* noundef nonnull %arg, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1) #4, !callees !4
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %cleanup87, label %if.end72

if.end72:                                         ; preds = %land.lhs.true68, %if.end65
  %11 = load i8*, i8** %data, align 8, !tbaa !15
  %12 = load i32, i32* %length, align 8, !tbaa !16
  %call75 = call fastcc i32 @do_buf(i8* noundef %11, i32 noundef %12, i32 noundef %type.2, i16 noundef zeroext %conv, i8* noundef null, i32 (i8*, i8*, i32)* noundef %io_ch, i8* noundef nonnull %arg) #5
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %cleanup87, label %if.end79

if.end79:                                         ; preds = %if.end72
  %13 = load i8, i8* %quotes, align 1, !tbaa !7
  %tobool81.not = icmp eq i8 %13, 0
  br i1 %tobool81.not, label %if.end86, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %if.end79
  %call83 = call i32 %io_ch(i8* noundef nonnull %arg, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1) #4, !callees !4
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %cleanup87, label %if.end86

if.end86:                                         ; preds = %land.lhs.true82, %if.end79
  br label %cleanup87

cleanup87:                                        ; preds = %if.then, %if.then37, %land.lhs.true82, %if.end72, %land.lhs.true68, %if.end57, %if.end44.thread, %cleanup, %if.end86
  %retval.1 = phi i32 [ %spec.select142, %if.end86 ], [ -1, %cleanup ], [ -1, %if.end44.thread ], [ %spec.select142, %if.end57 ], [ -1, %land.lhs.true68 ], [ -1, %if.end72 ], [ -1, %land.lhs.true82 ], [ %spec.select145, %if.then37 ], [ -1, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %quotes) #6
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_STRING_print_ex_fp(%struct._IO_FILE* noundef %fp, %struct.asn1_string_st* noundef %str, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call = tail call fastcc i32 @do_print_ex(i32 (i8*, i8*, i32)* noundef nonnull @send_fp_chars, i8* noundef %0, i64 noundef %flags, %struct.asn1_string_st* noundef %str) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_STRING_to_UTF8(i8** nocapture noundef writeonly %out, %struct.asn1_string_st* noundef readonly %in) local_unnamed_addr #0 {
entry:
  %stmp = alloca %struct.asn1_string_st, align 8
  %str = alloca %struct.asn1_string_st*, align 8
  %0 = bitcast %struct.asn1_string_st* %stmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6
  %1 = bitcast %struct.asn1_string_st** %str to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store %struct.asn1_string_st* %stmp, %struct.asn1_string_st** %str, align 8, !tbaa !17
  %tobool.not = icmp eq %struct.asn1_string_st* %in, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %type1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %in, i64 0, i32 1
  %2 = load i32, i32* %type1, align 4, !tbaa !10
  %3 = icmp ugt i32 %2, 30
  br i1 %3, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %idxprom32 = zext i32 %2 to i64
  %4 = lshr i64 706998271, %idxprom32
  %5 = and i64 %4, 1
  %cmp5.not = icmp eq i64 %5, 0
  br i1 %cmp5.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end4
  %arrayidx = getelementptr inbounds [31 x i8], [31 x i8]* @tag2nbyte, i64 0, i64 %idxprom32
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %6 to i32
  %or = or i32 %conv, 4096
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %stmp, i64 0, i32 2
  store i8* null, i8** %data, align 8, !tbaa !15
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %stmp, i64 0, i32 0
  store i32 0, i32* %length, align 8, !tbaa !16
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %stmp, i64 0, i32 3
  store i64 0, i64* %flags, align 8, !tbaa !18
  %data9 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %in, i64 0, i32 2
  %7 = load i8*, i8** %data9, align 8, !tbaa !15
  %length10 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %in, i64 0, i32 0
  %8 = load i32, i32* %length10, align 8, !tbaa !16
  %call = call i32 @ASN1_mbstring_copy(%struct.asn1_string_st** noundef nonnull %str, i8* noundef %7, i32 noundef %8, i32 noundef %or, i64 noundef 8192) #4
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end8
  %9 = load i8*, i8** %data, align 8, !tbaa !15
  store i8* %9, i8** %out, align 8, !tbaa !17
  %10 = load i32, i32* %length, align 8, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4, %if.end, %entry, %if.end14
  %retval.0 = phi i32 [ %10, %if.end14 ], [ -1, %entry ], [ -1, %if.end ], [ -1, %if.end4 ], [ %call, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare i32 @ASN1_mbstring_copy(%struct.asn1_string_st** noundef, i8* noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_indent(i32 (i8*, i8*, i32)* nocapture noundef readonly %io_ch, i8* noundef %arg, i32 noundef %indent) unnamed_addr #0 {
entry:
  %cmp3 = icmp sgt i32 %indent, 0
  br i1 %cmp3, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %indent
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !19

for.body:                                         ; preds = %entry, %for.cond
  %i.04 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %call = tail call i32 %io_ch(i8* noundef %arg, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef 1) #4, !callees !4
  %tobool.not = icmp eq i32 %call, 0
  %inc = add nuw nsw i32 %i.04, 1
  br i1 %tobool.not, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %for.cond ], [ 0, %for.body ]
  ret i32 %retval.0
}

declare i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef) local_unnamed_addr #1

declare %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @X509_NAME_ENTRY_set(%struct.X509_name_entry_st* noundef) local_unnamed_addr #1

declare %struct.asn1_object_st* @X509_NAME_ENTRY_get_object(%struct.X509_name_entry_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2ln(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #1

declare i8* @ASN1_tag2str(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_dump(i64 noundef %lflags, i32 (i8*, i8*, i32)* nocapture noundef readonly %io_ch, i8* noundef %arg, %struct.asn1_string_st* noundef %str) unnamed_addr #0 {
entry:
  %t = alloca %struct.asn1_type_st, align 8
  %p = alloca i8*, align 8
  %0 = bitcast %struct.asn1_type_st* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #6
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %call = tail call i32 %io_ch(i8* noundef %arg, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1) #4, !callees !4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i64 %lflags, 512
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !15
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 0
  %3 = load i32, i32* %length, align 8, !tbaa !16
  %call3 = tail call fastcc i32 @do_hex_dump(i32 (i8*, i8*, i32)* noundef %io_ch, i8* noundef %arg, i8* noundef %2, i32 noundef %3) #5
  %add = add nsw i32 %call3, 1
  %cmp.inv = icmp sgt i32 %call3, -1
  %spec.select = select i1 %cmp.inv, i32 %add, i32 -1
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 1
  %4 = load i32, i32* %type, align 4, !tbaa !10
  %type7 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %t, i64 0, i32 0
  store i32 %4, i32* %type7, align 8, !tbaa !20
  %ptr = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %t, i64 0, i32 1, i32 0
  %5 = bitcast i8** %ptr to %struct.asn1_string_st**
  store %struct.asn1_string_st* %str, %struct.asn1_string_st** %5, align 8, !tbaa !7
  %call8 = call i32 @i2d_ASN1_TYPE(%struct.asn1_type_st* noundef nonnull %t, i8** noundef null) #4
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end6
  %conv46 = zext i32 %call8 to i64
  %call12 = call i8* @CRYPTO_malloc(i64 noundef %conv46, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 noundef 285) #4
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.do_dump, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  store i8* %call12, i8** %p, align 8, !tbaa !17
  %call17 = call i32 @i2d_ASN1_TYPE(%struct.asn1_type_st* noundef nonnull %t, i8** noundef nonnull %p) #4
  %call18 = call fastcc i32 @do_hex_dump(i32 (i8*, i8*, i32)* noundef %io_ch, i8* noundef %arg, i8* noundef nonnull %call12, i32 noundef %call8) #5
  call void @CRYPTO_free(i8* noundef nonnull %call12, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 noundef 292) #4
  %add23 = add nsw i32 %call18, 1
  %cmp19.inv = icmp sgt i32 %call18, -1
  %spec.select45 = select i1 %cmp19.inv, i32 %add23, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then2, %if.end6, %entry, %if.then15
  %retval.0 = phi i32 [ -1, %if.then15 ], [ -1, %entry ], [ -1, %if.end6 ], [ %spec.select, %if.then2 ], [ %spec.select45, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_buf(i8* noundef %buf, i32 noundef %buflen, i32 noundef %type, i16 noundef zeroext %flags, i8* noundef %quotes, i32 (i8*, i8*, i32)* nocapture noundef readonly %io_ch, i8* noundef %arg) unnamed_addr #0 {
entry:
  %c = alloca i64, align 8
  %utfbuf = alloca [6 x i8], align 1
  %0 = bitcast i64* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %idx.ext = sext i32 %buflen to i64
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 %idx.ext
  %and = and i32 %type, 7
  switch i32 %and, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %and1 = and i32 %buflen, 3
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %sw.epilog, label %if.then

if.then:                                          ; preds = %sw.bb
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.do_buf, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 133, i8* noundef null) #4
  br label %cleanup80

sw.bb2:                                           ; preds = %entry
  %and3 = and i32 %buflen, 1
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %sw.epilog, label %if.then5

if.then5:                                         ; preds = %sw.bb2
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.do_buf, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 129, i8* noundef null) #4
  br label %cleanup80

sw.epilog:                                        ; preds = %entry, %sw.bb2, %sw.bb
  %cmp.not141 = icmp eq i32 %buflen, 0
  br i1 %cmp.not141, label %cleanup80, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %sw.epilog
  %1 = and i16 %flags, 1
  %tobool9.not = icmp eq i16 %1, 0
  %and51 = and i32 %type, 8
  %tobool52.not = icmp eq i32 %and51, 0
  %2 = getelementptr inbounds [6 x i8], [6 x i8]* %utfbuf, i64 0, i64 0
  switch i32 %and, label %cleanup80 [
    i32 4, label %while.body.preheader
    i32 2, label %while.body.preheader
    i32 1, label %while.body.preheader
    i32 0, label %while.body.preheader
  ]

while.body.preheader:                             ; preds = %while.body.lr.ph, %while.body.lr.ph, %while.body.lr.ph, %while.body.lr.ph
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end79
  %buflen.addr.0144 = phi i32 [ %buflen.addr.1, %if.end79 ], [ %buflen, %while.body.preheader ]
  %p.0143 = phi i8* [ %p.1, %if.end79 ], [ %buf, %while.body.preheader ]
  %outlen.0142 = phi i32 [ %outlen.2, %if.end79 ], [ 0, %while.body.preheader ]
  %cmp7 = icmp ne i8* %p.0143, %buf
  %or.cond = or i1 %tobool9.not, %cmp7
  %orflags.0 = select i1 %or.cond, i16 0, i16 32
  switch i32 %and, label %sw.bb34 [
    i32 4, label %sw.bb12
    i32 2, label %sw.bb24
    i32 1, label %sw.bb31
  ]

sw.bb12:                                          ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0143, i64 1
  %3 = load i8, i8* %p.0143, align 1, !tbaa !7
  %conv13 = zext i8 %3 to i64
  %shl = shl nuw nsw i64 %conv13, 24
  store i64 %shl, i64* %c, align 8, !tbaa !22
  %incdec.ptr14 = getelementptr inbounds i8, i8* %p.0143, i64 2
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !7
  %conv15 = zext i8 %4 to i64
  %shl16 = shl nuw nsw i64 %conv15, 16
  %or = or i64 %shl16, %shl
  store i64 %or, i64* %c, align 8, !tbaa !22
  %incdec.ptr17 = getelementptr inbounds i8, i8* %p.0143, i64 3
  %5 = load i8, i8* %incdec.ptr14, align 1, !tbaa !7
  %conv18 = zext i8 %5 to i64
  %shl19 = shl nuw nsw i64 %conv18, 8
  %or20 = or i64 %shl19, %or
  store i64 %or20, i64* %c, align 8, !tbaa !22
  %incdec.ptr21 = getelementptr inbounds i8, i8* %p.0143, i64 4
  %6 = load i8, i8* %incdec.ptr17, align 1, !tbaa !7
  %conv22 = zext i8 %6 to i64
  %or23 = or i64 %or20, %conv22
  store i64 %or23, i64* %c, align 8, !tbaa !22
  br label %sw.epilog42

sw.bb24:                                          ; preds = %while.body
  %incdec.ptr25 = getelementptr inbounds i8, i8* %p.0143, i64 1
  %7 = load i8, i8* %p.0143, align 1, !tbaa !7
  %conv26 = zext i8 %7 to i64
  %shl27 = shl nuw nsw i64 %conv26, 8
  store i64 %shl27, i64* %c, align 8, !tbaa !22
  %incdec.ptr28 = getelementptr inbounds i8, i8* %p.0143, i64 2
  %8 = load i8, i8* %incdec.ptr25, align 1, !tbaa !7
  %conv29 = zext i8 %8 to i64
  %or30 = or i64 %shl27, %conv29
  store i64 %or30, i64* %c, align 8, !tbaa !22
  br label %sw.epilog42

sw.bb31:                                          ; preds = %while.body
  %incdec.ptr32 = getelementptr inbounds i8, i8* %p.0143, i64 1
  %9 = load i8, i8* %p.0143, align 1, !tbaa !7
  %conv33 = zext i8 %9 to i64
  store i64 %conv33, i64* %c, align 8, !tbaa !22
  br label %sw.epilog42

sw.bb34:                                          ; preds = %while.body
  %call = call i32 @UTF8_getc(i8* noundef %p.0143, i32 noundef %buflen.addr.0144, i64* noundef nonnull %c) #4
  %cmp35 = icmp slt i32 %call, 0
  br i1 %cmp35, label %cleanup80, label %if.end38

if.end38:                                         ; preds = %sw.bb34
  %sub = sub nsw i32 %buflen.addr.0144, %call
  %idx.ext39136 = zext i32 %call to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %p.0143, i64 %idx.ext39136
  br label %sw.epilog42

sw.epilog42:                                      ; preds = %if.end38, %sw.bb31, %sw.bb24, %sw.bb12
  %p.1 = phi i8* [ %add.ptr40, %if.end38 ], [ %incdec.ptr32, %sw.bb31 ], [ %incdec.ptr28, %sw.bb24 ], [ %incdec.ptr21, %sw.bb12 ]
  %buflen.addr.1 = phi i32 [ %sub, %if.end38 ], [ %buflen.addr.0144, %sw.bb31 ], [ %buflen.addr.0144, %sw.bb24 ], [ %buflen.addr.0144, %sw.bb12 ]
  %cmp43 = icmp ne i8* %p.1, %add.ptr
  %or.cond135 = or i1 %tobool9.not, %cmp43
  %orflags.1 = select i1 %or.cond135, i16 %orflags.0, i16 64
  br i1 %tobool52.not, label %if.else68, label %if.then53

if.then53:                                        ; preds = %sw.epilog42
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %2) #6
  %10 = load i64, i64* %c, align 8, !tbaa !22
  %call54 = call i32 @UTF8_putc(i8* noundef nonnull %2, i32 noundef 6, i64 noundef %10) #4
  %cmp55138 = icmp sgt i32 %call54, 0
  br i1 %cmp55138, label %for.body.lr.ph, label %if.end79.critedge

for.body.lr.ph:                                   ; preds = %if.then53
  %or60134 = or i16 %orflags.1, %flags
  %wide.trip.count = zext i32 %call54 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end66
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end66 ]
  %outlen.1139 = phi i32 [ %outlen.0142, %for.body.lr.ph ], [ %add, %if.end66 ]
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* %utfbuf, i64 0, i64 %indvars.iv
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv57 = zext i8 %11 to i64
  %call62 = call fastcc i32 @do_esc_char(i64 noundef %conv57, i16 noundef zeroext %or60134, i8* noundef %quotes, i32 (i8*, i8*, i32)* noundef %io_ch, i8* noundef %arg) #5
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %cleanup, label %if.end66

if.end66:                                         ; preds = %for.body
  %add = add nsw i32 %call62, %outlen.1139
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end79.critedge, label %for.body, !llvm.loop !23

cleanup:                                          ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %2) #6
  br label %cleanup80

if.else68:                                        ; preds = %sw.epilog42
  %12 = load i64, i64* %c, align 8, !tbaa !22
  %or71133 = or i16 %orflags.1, %flags
  %call73 = call fastcc i32 @do_esc_char(i64 noundef %12, i16 noundef zeroext %or71133, i8* noundef %quotes, i32 (i8*, i8*, i32)* noundef %io_ch, i8* noundef %arg) #5
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %cleanup80, label %if.end77

if.end77:                                         ; preds = %if.else68
  %add78 = add nsw i32 %call73, %outlen.0142
  br label %if.end79

if.end79.critedge:                                ; preds = %if.end66, %if.then53
  %outlen.1.lcssa = phi i32 [ %outlen.0142, %if.then53 ], [ %add, %if.end66 ]
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %2) #6
  br label %if.end79

if.end79:                                         ; preds = %if.end79.critedge, %if.end77
  %outlen.2 = phi i32 [ %add78, %if.end77 ], [ %outlen.1.lcssa, %if.end79.critedge ]
  %cmp.not = icmp eq i8* %p.1, %add.ptr
  br i1 %cmp.not, label %cleanup80, label %while.body, !llvm.loop !24

cleanup80:                                        ; preds = %sw.bb34, %if.else68, %if.end79, %sw.epilog, %while.body.lr.ph, %cleanup, %if.then5, %if.then
  %retval.3 = phi i32 [ -1, %cleanup ], [ -1, %if.then5 ], [ -1, %if.then ], [ 0, %sw.epilog ], [ -1, %while.body.lr.ph ], [ -1, %sw.bb34 ], [ -1, %if.else68 ], [ %outlen.2, %if.end79 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_hex_dump(i32 (i8*, i8*, i32)* nocapture noundef readonly %io_ch, i8* noundef %arg, i8* noundef readonly %buf, i32 noundef %buflen) unnamed_addr #0 {
entry:
  %hextmp = alloca [2 x i8], align 1
  %0 = getelementptr inbounds [2 x i8], [2 x i8]* %hextmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %0) #6
  %tobool.not = icmp eq i8* %arg, null
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %idx.ext = sext i32 %buflen to i64
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 %idx.ext
  %cmp.not19 = icmp eq i32 %buflen, 0
  br i1 %cmp.not19, label %if.end8, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then
  %arrayidx5 = getelementptr inbounds [2 x i8], [2 x i8]* %hextmp, i64 0, i64 1
  br label %while.body

while.cond:                                       ; preds = %while.body
  %cmp.not = icmp eq i8* %incdec.ptr, %add.ptr
  br i1 %cmp.not, label %if.end8, label %while.body, !llvm.loop !25

while.body:                                       ; preds = %while.body.lr.ph, %while.cond
  %p.020 = phi i8* [ %buf, %while.body.lr.ph ], [ %incdec.ptr, %while.cond ]
  %1 = load i8, i8* %p.020, align 1, !tbaa !7
  %2 = lshr i8 %1, 4
  %3 = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* @do_hex_dump.hexdig, i64 0, i64 %3
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  store i8 %4, i8* %0, align 1, !tbaa !7
  %5 = and i8 %1, 15
  %6 = zext i8 %5 to i64
  %arrayidx4 = getelementptr inbounds [17 x i8], [17 x i8]* @do_hex_dump.hexdig, i64 0, i64 %6
  %7 = load i8, i8* %arrayidx4, align 1, !tbaa !7
  store i8 %7, i8* %arrayidx5, align 1, !tbaa !7
  %call = call i32 %io_ch(i8* noundef nonnull %arg, i8* noundef nonnull %0, i32 noundef 2) #4, !callees !4
  %tobool6.not = icmp eq i32 %call, 0
  %incdec.ptr = getelementptr inbounds i8, i8* %p.020, i64 1
  br i1 %tobool6.not, label %cleanup, label %while.cond

if.end8:                                          ; preds = %while.cond, %if.then, %entry
  %shl = shl i32 %buflen, 1
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.end8
  %retval.0 = phi i32 [ %shl, %if.end8 ], [ -1, %while.body ]
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare i32 @i2d_ASN1_TYPE(%struct.asn1_type_st* noundef, i8** noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @UTF8_getc(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #1

declare i32 @UTF8_putc(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_esc_char(i64 noundef %c, i16 noundef zeroext %flags, i8* noundef writeonly %do_quotes, i32 (i8*, i8*, i32)* nocapture noundef readonly %io_ch, i8* noundef %arg) unnamed_addr #0 {
entry:
  %chtmp = alloca i8, align 1
  %tmphex = alloca [19 x i8], align 16
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %chtmp) #6
  %0 = getelementptr inbounds [19 x i8], [19 x i8]* %tmphex, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %0) #6
  %cmp = icmp ugt i64 %c, 4294967295
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i64 %c, 65535
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 19, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i64 noundef %c) #4
  %call4 = call i32 %io_ch(i8* noundef %arg, i8* noundef nonnull %0, i32 noundef 10) #4, !callees !4
  %tobool.not = icmp eq i32 %call4, 0
  %. = select i1 %tobool.not, i32 -1, i32 10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp ugt i64 %c, 255
  br i1 %cmp8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end7
  %call11 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 19, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i64 noundef %c) #4
  %call13 = call i32 %io_ch(i8* noundef %arg, i8* noundef nonnull %0, i32 noundef 6) #4, !callees !4
  %tobool14.not = icmp eq i32 %call13, 0
  %.112 = select i1 %tobool14.not, i32 -1, i32 6
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %conv = trunc i64 %c to i8
  store i8 %conv, i8* %chtmp, align 1, !tbaa !7
  %conv18110 = and i64 %c, 128
  %cmp19.not = icmp eq i64 %conv18110, 0
  br i1 %cmp19.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end17
  %1 = and i16 %flags, 4
  br label %if.end28

if.else:                                          ; preds = %if.end17
  %arrayidx = getelementptr inbounds [128 x i16], [128 x i16]* @char_type, i64 0, i64 %c
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !26
  %and26111 = and i16 %2, %flags
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then21
  %chflgs.0 = phi i16 [ %1, %if.then21 ], [ %and26111, %if.else ]
  %conv29 = zext i16 %chflgs.0 to i32
  %and30 = and i32 %conv29, 97
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end53, label %if.then32

if.then32:                                        ; preds = %if.end28
  %and34 = and i32 %conv29, 8
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end44, label %if.then36

if.then36:                                        ; preds = %if.then32
  %tobool37.not = icmp eq i8* %do_quotes, null
  br i1 %tobool37.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.then36
  store i8 1, i8* %do_quotes, align 1, !tbaa !7
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.then36
  %call40 = call i32 %io_ch(i8* noundef %arg, i8* noundef nonnull %chtmp, i32 noundef 1) #4, !callees !4
  %tobool41.not = icmp eq i32 %call40, 0
  %.113 = select i1 %tobool41.not, i32 -1, i32 1
  br label %cleanup

if.end44:                                         ; preds = %if.then32
  %call45 = tail call i32 %io_ch(i8* noundef %arg, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1) #4, !callees !4
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cleanup, label %if.end48

if.end48:                                         ; preds = %if.end44
  %call49 = call i32 %io_ch(i8* noundef %arg, i8* noundef nonnull %chtmp, i32 noundef 1) #4, !callees !4
  %tobool50.not = icmp eq i32 %call49, 0
  %.114 = select i1 %tobool50.not, i32 -1, i32 2
  br label %cleanup

if.end53:                                         ; preds = %if.end28
  %and55 = and i32 %conv29, 1030
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end66, label %if.then57

if.then57:                                        ; preds = %if.end53
  %3 = trunc i64 %c to i32
  %call60 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 11, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 noundef %3) #4
  %call62 = call i32 %io_ch(i8* noundef %arg, i8* noundef nonnull %0, i32 noundef 3) #4, !callees !4
  %tobool63.not = icmp eq i32 %call62, 0
  %.115 = select i1 %tobool63.not, i32 -1, i32 3
  br label %cleanup

if.end66:                                         ; preds = %if.end53
  %cmp68 = icmp ne i8 %conv, 92
  %4 = and i16 %flags, 1039
  %tobool72.not = icmp eq i16 %4, 0
  %or.cond = or i1 %cmp68, %tobool72.not
  br i1 %or.cond, label %if.end78, label %if.then73

if.then73:                                        ; preds = %if.end66
  %call74 = tail call i32 %io_ch(i8* noundef %arg, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2) #4, !callees !4
  %tobool75.not = icmp eq i32 %call74, 0
  %.116 = select i1 %tobool75.not, i32 -1, i32 2
  br label %cleanup

if.end78:                                         ; preds = %if.end66
  %call79 = call i32 %io_ch(i8* noundef %arg, i8* noundef nonnull %chtmp, i32 noundef 1) #4, !callees !4
  %tobool80.not = icmp eq i32 %call79, 0
  %.117 = select i1 %tobool80.not, i32 -1, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.then73, %if.then57, %if.end48, %if.end44, %if.end39, %if.then9, %if.then2, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %., %if.then2 ], [ %.112, %if.then9 ], [ %.113, %if.end39 ], [ -1, %if.end44 ], [ %.114, %if.end48 ], [ %.115, %if.then57 ], [ %.116, %if.then73 ], [ %.117, %if.end78 ]
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %0) #6
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %chtmp) #6
  ret i32 %retval.0
}

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{i32 (i8*, i8*, i32)* @send_bio_chars, i32 (i8*, i8*, i32)* @send_fp_chars}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 4}
!11 = !{!"asn1_string_st", !12, i64 0, !12, i64 4, !13, i64 8, !14, i64 16}
!12 = !{!"int", !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!11, !13, i64 8}
!16 = !{!11, !12, i64 0}
!17 = !{!13, !13, i64 0}
!18 = !{!11, !14, i64 16}
!19 = distinct !{!19, !6}
!20 = !{!21, !12, i64 0}
!21 = !{!"asn1_type_st", !12, i64 0, !8, i64 8}
!22 = !{!14, !14, i64 0}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = !{!27, !27, i64 0}
!27 = !{!"short", !8, i64 0}

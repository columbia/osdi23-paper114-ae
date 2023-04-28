; ModuleID = 'crypto/cmp/cmp_util.c'
source_filename = "crypto/cmp/cmp_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bio_st = type opaque
%struct.x509_store_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st = type opaque
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.stack_st_GENERAL_NAME = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_ASN1_UTF8STRING = type opaque

@.str = private unnamed_addr constant [22 x i8] c"crypto/cmp/cmp_util.c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"EMERG\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ALERT\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"CRIT\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"NOTE\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"(unknown level)\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"CMP %s: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"reason(%lu)\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@__func__.ossl_cmp_X509_STORE_add1_certs = private unnamed_addr constant [31 x i8] c"ossl_cmp_X509_STORE_add1_certs\00", align 1
@__func__.ossl_cmp_asn1_octet_string_set1 = private unnamed_addr constant [32 x i8] c"ossl_cmp_asn1_octet_string_set1\00", align 1
@__func__.ossl_cmp_asn1_octet_string_set1_bytes = private unnamed_addr constant [38 x i8] c"ossl_cmp_asn1_octet_string_set1_bytes\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"CMP \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"WARN\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"(unknown function)\00", align 1
@reltable.OSSL_CMP_print_to_bio = private unnamed_addr constant [7 x i32] [i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.1 to i64), i64 ptrtoint ([7 x i32]* @reltable.OSSL_CMP_print_to_bio to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.2 to i64), i64 ptrtoint ([7 x i32]* @reltable.OSSL_CMP_print_to_bio to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.3 to i64), i64 ptrtoint ([7 x i32]* @reltable.OSSL_CMP_print_to_bio to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.4 to i64), i64 ptrtoint ([7 x i32]* @reltable.OSSL_CMP_print_to_bio to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([8 x i8]* @.str.5 to i64), i64 ptrtoint ([7 x i32]* @reltable.OSSL_CMP_print_to_bio to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.6 to i64), i64 ptrtoint ([7 x i32]* @reltable.OSSL_CMP_print_to_bio to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.7 to i64), i64 ptrtoint ([7 x i32]* @reltable.OSSL_CMP_print_to_bio to i64)) to i32)], align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @OSSL_CMP_log_open() local_unnamed_addr #0 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_log_close() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @OSSL_trace_set_channel(i32 noundef 13, %struct.bio_st* noundef null) #8
  ret void
}

declare i32 @OSSL_trace_set_channel(i32 noundef, %struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_cmp_log_parse_metadata(i8* noundef %buf, i32* nocapture noundef writeonly %level, i8** nocapture noundef writeonly %func, i8** nocapture noundef writeonly %file, i32* nocapture noundef writeonly %line) local_unnamed_addr #1 {
entry:
  %p_level_tmp = alloca i8*, align 8
  %cmp = icmp eq i8* %buf, null
  br i1 %cmp, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %entry
  store i32 -1, i32* %level, align 4, !tbaa !4
  store i8* null, i8** %func, align 8, !tbaa !8
  store i8* null, i8** %file, align 8, !tbaa !8
  store i32 0, i32* %line, align 4, !tbaa !4
  br label %if.end36

cond.end:                                         ; preds = %entry
  %call = tail call i8* @strchr(i8* noundef nonnull %buf, i32 noundef 58) #9
  store i32 -1, i32* %level, align 4, !tbaa !4
  store i8* null, i8** %func, align 8, !tbaa !8
  store i8* null, i8** %file, align 8, !tbaa !8
  store i32 0, i32* %line, align 4, !tbaa !4
  %cmp1.not = icmp eq i8* %call, null
  br i1 %cmp1.not, label %if.end36, label %if.then

if.then:                                          ; preds = %cond.end
  %incdec.ptr = getelementptr inbounds i8, i8* %call, i64 1
  %call2 = tail call i8* @strchr(i8* noundef nonnull %incdec.ptr, i32 noundef 58) #9
  %call3 = tail call fastcc i32 @parse_level(i8* noundef nonnull %buf) #10
  store i32 %call3, i32* %level, align 4, !tbaa !4
  %cmp4 = icmp slt i32 %call3, 0
  %cmp5 = icmp ne i8* %call2, null
  %or.cond = select i1 %cmp4, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.then6, label %if.end36

if.then6:                                         ; preds = %if.then
  %0 = bitcast i8** %p_level_tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i8* %buf, i8** %p_level_tmp, align 8, !tbaa !8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %call2, i64 1
  %call8 = call i64 @strtol(i8* noundef nonnull %incdec.ptr7, i8** noundef nonnull %p_level_tmp, i32 noundef 10) #8
  %1 = load i8*, i8** %p_level_tmp, align 8, !tbaa !8
  %cmp9 = icmp ugt i8* %1, %incdec.ptr7
  br i1 %cmp9, label %land.lhs.true10, label %if.end34

land.lhs.true10:                                  ; preds = %if.then6
  %incdec.ptr11 = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %1, align 1, !tbaa !10
  %cmp12 = icmp eq i8 %2, 58
  br i1 %cmp12, label %if.then14, label %if.end34

if.then14:                                        ; preds = %land.lhs.true10
  %call15 = call fastcc i32 @parse_level(i8* noundef nonnull %incdec.ptr11) #10
  store i32 %call15, i32* %level, align 4, !tbaa !4
  %cmp16 = icmp sgt i32 %call15, -1
  br i1 %cmp16, label %if.then18, label %if.end34

if.then18:                                        ; preds = %if.then14
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %buf to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call19 = call i8* @CRYPTO_strndup(i8* noundef nonnull %buf, i64 noundef %sub.ptr.sub, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 100) #8
  store i8* %call19, i8** %func, align 8, !tbaa !8
  %sub.ptr.lhs.cast21 = ptrtoint i8* %call2 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %incdec.ptr to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %call24 = call i8* @CRYPTO_strndup(i8* noundef nonnull %incdec.ptr, i64 noundef %sub.ptr.sub23, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 101) #8
  store i8* %call24, i8** %file, align 8, !tbaa !8
  %conv25 = trunc i64 %call8 to i32
  store i32 %conv25, i32* %line, align 4, !tbaa !4
  %call26 = call i8* @strchr(i8* noundef nonnull %incdec.ptr11, i32 noundef 58) #9
  %add.ptr27 = getelementptr inbounds i8, i8* %call26, i64 1
  %3 = load i8, i8* %add.ptr27, align 1, !tbaa !10
  %cmp29 = icmp eq i8 %3, 32
  %incdec.ptr32 = getelementptr inbounds i8, i8* %call26, i64 2
  %spec.select = select i1 %cmp29, i8* %incdec.ptr32, i8* %add.ptr27
  br label %if.end34

if.end34:                                         ; preds = %if.then18, %if.then14, %land.lhs.true10, %if.then6
  %msg.0 = phi i8* [ %buf, %if.then14 ], [ %buf, %land.lhs.true10 ], [ %buf, %if.then6 ], [ %spec.select, %if.then18 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  br label %if.end36

if.end36:                                         ; preds = %cond.end.thread, %if.then, %if.end34, %cond.end
  %msg.2 = phi i8* [ %buf, %cond.end ], [ %msg.0, %if.end34 ], [ %buf, %if.then ], [ null, %cond.end.thread ]
  ret i8* %msg.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_level(i8* noundef %level) unnamed_addr #1 {
entry:
  %level_copy = alloca [6 x i8], align 1
  %call = tail call i8* @strchr(i8* noundef %level, i32 noundef 58) #9
  %0 = getelementptr inbounds [6 x i8], [6 x i8]* %level_copy, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %0) #11
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #9
  %call2 = tail call i32 @strncmp(i8* noundef %level, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 noundef %call1) #9
  %cmp3 = icmp eq i32 %call2, 0
  %spec.select.idx = select i1 %cmp3, i64 %call1, i64 0
  %spec.select = getelementptr i8, i8* %level, i64 %spec.select.idx
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %spec.select to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %cmp7 = icmp sgt i32 %conv, 5
  br i1 %cmp7, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end
  %add = shl i64 %sub.ptr.sub, 32
  %sext = add i64 %add, 4294967296
  %conv11 = ashr exact i64 %sext, 32
  %call12 = call i64 @OPENSSL_strlcpy(i8* noundef nonnull %0, i8* noundef %spec.select, i64 noundef %conv11) #8
  %call14 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #9
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %cleanup, label %cond.false

cond.false:                                       ; preds = %if.end10
  %call18 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #9
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %cleanup, label %cond.false22

cond.false22:                                     ; preds = %cond.false
  %call24 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #9
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %cleanup, label %cond.false28

cond.false28:                                     ; preds = %cond.false22
  %call30 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #9
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %cleanup, label %cond.false34

cond.false34:                                     ; preds = %cond.false28
  %call36 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #9
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %cleanup, label %cond.false40

cond.false40:                                     ; preds = %cond.false34
  %call42 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #9
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %cleanup, label %cond.false46

cond.false46:                                     ; preds = %cond.false40
  %call48 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #9
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %cleanup, label %cond.false52

cond.false52:                                     ; preds = %cond.false46
  %call54 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #9
  %cmp55 = icmp eq i32 %call54, 0
  %cond = select i1 %cmp55, i32 7, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %cond.false22, %cond.false34, %cond.false52, %cond.false46, %cond.false40, %cond.false28, %cond.false, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ 0, %if.end10 ], [ 1, %cond.false ], [ 2, %cond.false22 ], [ 3, %cond.false28 ], [ 4, %cond.false34 ], [ 5, %cond.false40 ], [ %cond, %cond.false52 ], [ 6, %cond.false46 ]
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i64 @strtol(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #5

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_print_to_bio(%struct.bio_st* noundef %bio, i8* nocapture readnone %component, i8* nocapture readnone %file, i32 %line, i32 noundef %level, i8* noundef %msg) local_unnamed_addr #1 {
entry:
  %0 = icmp ult i32 %level, 7
  br i1 %0, label %switch.lookup, label %cond.false18

cond.false18:                                     ; preds = %entry
  %cmp19 = icmp eq i32 %level, 7
  %cond = select i1 %cmp19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0)
  br label %cond.end31

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %level to i64
  %reltable.shift = shl i64 %1, 2
  %reltable.intrinsic = call i8* @llvm.load.relative.i64(i8* bitcast ([7 x i32]* @reltable.OSSL_CMP_print_to_bio to i8*), i64 %reltable.shift)
  br label %cond.end31

cond.end31:                                       ; preds = %switch.lookup, %cond.false18
  %cond32 = phi i8* [ %cond, %cond.false18 ], [ %reltable.intrinsic, %switch.lookup ]
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* noundef %cond32, i8* noundef %msg) #8
  %2 = xor i32 %call, -1
  %call.lobit.not = lshr i32 %2, 31
  ret i32 %call.lobit.not
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_print_errors_cb(i32 (i8*, i8*, i32, i32, i8*)* noundef readonly %log_fn) local_unnamed_addr #1 {
entry:
  %msg = alloca [4096 x i8], align 16
  %file = alloca i8*, align 8
  %func = alloca i8*, align 8
  %data = alloca i8*, align 8
  %line = alloca i32, align 4
  %flags = alloca i32, align 4
  %rsbuf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [4096 x i8], [4096 x i8]* %msg, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %0) #11
  %1 = bitcast i8** %file to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  store i8* null, i8** %file, align 8, !tbaa !8
  %2 = bitcast i8** %func to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #11
  store i8* null, i8** %func, align 8, !tbaa !8
  %3 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11
  store i8* null, i8** %data, align 8, !tbaa !8
  %4 = bitcast i32* %line to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #11
  %5 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #11
  %call75 = call i64 @ERR_get_error_all(i8** noundef nonnull %file, i32* noundef nonnull %line, i8** noundef nonnull %func, i8** noundef nonnull %data, i32* noundef nonnull %flags) #8
  %cmp.not76 = icmp eq i64 %call75, 0
  br i1 %cmp.not76, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %rsbuf, i64 0, i64 0
  %cmp31 = icmp eq i32 (i8*, i8*, i32, i32, i8*)* %log_fn, null
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %call77 = phi i64 [ %call75, %while.body.lr.ph ], [ %call, %cleanup ]
  %7 = load i8*, i8** %func, align 8, !tbaa !8
  %call1 = call i8* @ERR_lib_error_string(i64 noundef %call77) #8
  %call2 = call fastcc i8* @improve_location_name(i8* noundef %7, i8* noundef %call1) #10
  %call3 = call fastcc i32 @ERR_GET_REASON(i64 noundef %call77) #10
  %8 = zext i32 %call3 to i64
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %6) #11
  %and = and i64 %call77, 2147483648
  %cmp4.not = icmp eq i64 %and, 0
  br i1 %cmp4.not, label %if.end11, label %if.then

if.then:                                          ; preds = %while.body
  %call7 = call i32 @openssl_strerror_r(i32 noundef %call3, i8* noundef nonnull %6, i64 noundef 256) #8
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then14, label %if.end18

if.end11:                                         ; preds = %while.body
  %call10 = call i8* @ERR_reason_error_string(i64 noundef %call77) #8
  %cmp12 = icmp eq i8* %call10, null
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.then, %if.end11
  %call16 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %6, i64 noundef 256, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 noundef %8) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then, %if.then14, %if.end11
  %rs.1 = phi i8* [ %6, %if.then14 ], [ %call10, %if.end11 ], [ %6, %if.then ]
  %9 = load i8*, i8** %data, align 8, !tbaa !8
  %cmp19.not = icmp eq i8* %9, null
  br i1 %cmp19.not, label %if.else27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end18
  %10 = load i32, i32* %flags, align 4, !tbaa !4
  %and21 = and i32 %10, 2
  %cmp22.not = icmp eq i32 %and21, 0
  br i1 %cmp22.not, label %if.else27, label %if.then24

if.then24:                                        ; preds = %land.lhs.true
  %call26 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 4096, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %rs.1, i8* noundef nonnull %9) #8
  br label %if.end30

if.else27:                                        ; preds = %land.lhs.true, %if.end18
  %call29 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 4096, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %rs.1) #8
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then24
  br i1 %cmp31, label %if.then33, label %if.else42

if.then33:                                        ; preds = %if.end30
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %call34 = call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %11, i32 noundef 0) #8
  %cmp35.not = icmp eq %struct.bio_st* %call34, null
  br i1 %cmp35.not, label %cleanup, label %if.then37

if.then37:                                        ; preds = %if.then33
  %call39 = call i32 @OSSL_CMP_print_to_bio(%struct.bio_st* noundef nonnull %call34, i8* undef, i8* undef, i32 undef, i32 noundef 3, i8* noundef nonnull %0) #10
  %call40 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call34) #8
  br label %cleanup

if.else42:                                        ; preds = %if.end30
  %12 = load i8*, i8** %file, align 8, !tbaa !8
  %13 = load i32, i32* %line, align 4, !tbaa !4
  %call44 = call i32 %log_fn(i8* noundef %call2, i8* noundef %12, i32 noundef %13, i32 noundef 3, i8* noundef nonnull %0) #8
  %cmp45 = icmp slt i32 %call44, 1
  br i1 %cmp45, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.else42
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %6) #11
  br label %while.end

cleanup:                                          ; preds = %if.else42, %if.then37, %if.then33
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %6) #11
  %call = call i64 @ERR_get_error_all(i8** noundef nonnull %file, i32* noundef nonnull %line, i8** noundef nonnull %func, i8** noundef nonnull %data, i32* noundef nonnull %flags) #8
  %cmp.not = icmp eq i64 %call, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %entry, %cleanup.thread
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %0) #11
  ret void
}

declare i64 @ERR_get_error_all(i8** noundef, i32* noundef, i8** noundef, i8** noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i8* @improve_location_name(i8* noundef readonly %func, i8* noundef readnone %fallback) unnamed_addr #6 {
entry:
  %cmp = icmp eq i8* %fallback, null
  %cmp1 = icmp eq i8* %func, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cond = select i1 %cmp1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* %func
  br label %return

if.end:                                           ; preds = %entry
  br i1 %cmp1, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %0 = load i8, i8* %func, align 1, !tbaa !10
  %cmp3 = icmp eq i8 %0, 0
  br i1 %cmp3, label %return, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @strcmp(i8* noundef nonnull %func, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0)) #9
  %cmp6 = icmp eq i32 %call, 0
  %spec.select = select i1 %cmp6, i8* %fallback, i8* %func
  br label %return

return:                                           ; preds = %lor.lhs.false5, %lor.lhs.false, %if.end, %if.then
  %retval.0 = phi i8* [ %cond, %if.then ], [ %fallback, %lor.lhs.false ], [ %fallback, %if.end ], [ %spec.select, %lor.lhs.false5 ]
  ret i8* %retval.0
}

declare i8* @ERR_lib_error_string(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #0 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare i32 @openssl_strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @ERR_reason_error_string(i64 noundef) local_unnamed_addr #2

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_X509_STORE_add1_certs(%struct.x509_store_st* noundef %store, %struct.stack_st_X509* noundef %certs, i32 noundef %only_self_signed) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.x509_store_st* %store, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.ossl_cmp_X509_STORE_add1_certs, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #8
  br label %cleanup16

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.stack_st_X509* %certs, null
  br i1 %cmp1, label %cleanup16, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %certs) #10
  %call425 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp526 = icmp sgt i32 %call425, 0
  br i1 %cmp526, label %for.body.lr.ph, label %cleanup16

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool.not = icmp eq i32 %only_self_signed, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc.critedge
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.critedge ]
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.027) #8
  %0 = bitcast i8* %call7 to %struct.x509_st*
  br i1 %tobool.not, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call8 = tail call i32 @X509_self_signed(%struct.x509_st* noundef %0, i32 noundef 0) #8
  %cmp9 = icmp eq i32 %call8, 1
  br i1 %cmp9, label %if.then10, label %for.inc.critedge

if.then10:                                        ; preds = %lor.lhs.false, %for.body
  %call11 = tail call i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef nonnull %store, %struct.x509_st* noundef %0) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup16, label %for.inc.critedge

for.inc.critedge:                                 ; preds = %lor.lhs.false, %if.then10
  %inc = add nuw nsw i32 %i.027, 1
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %cleanup16, !llvm.loop !11

cleanup16:                                        ; preds = %if.then10, %for.inc.critedge, %for.cond.preheader, %if.end, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 1, %if.end ], [ 1, %for.cond.preheader ], [ 0, %if.then10 ], [ 1, %for.inc.critedge ]
  ret i32 %retval.2
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_self_signed(%struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_sk_ASN1_UTF8STRING_push_str(%struct.stack_st_ASN1_UTF8STRING* noundef %sk, i8* noundef %text, i32 noundef %len) local_unnamed_addr #1 {
entry:
  %cmp = icmp ne %struct.stack_st_ASN1_UTF8STRING* %sk, null
  %cmp1 = icmp ne i8* %text, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.asn1_string_st* @ASN1_UTF8STRING_new() #8
  %cmp3 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call, i8* noundef nonnull %text, i32 noundef %len) #8
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %err, label %if.end8

if.end8:                                          ; preds = %if.end5
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef nonnull %sk) #10
  %1 = bitcast %struct.asn1_string_st* %call to i8*
  %call11 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call9, i8* noundef nonnull %1) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %cleanup

err:                                              ; preds = %if.end8, %if.end5
  tail call void @ASN1_UTF8STRING_free(%struct.asn1_string_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end, %entry, %err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end8 ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_UTF8STRING_new() local_unnamed_addr #2

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_UTF8STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_UTF8STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_asn1_octet_string_set1(%struct.asn1_string_st** noundef %tgt, %struct.asn1_string_st* noundef %src) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.asn1_string_st** %tgt, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_cmp_asn1_octet_string_set1, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %tgt, align 8, !tbaa !8
  %cmp1 = icmp eq %struct.asn1_string_st* %0, %src
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp4.not = icmp eq %struct.asn1_string_st* %src, null
  br i1 %cmp4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end3
  %call = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_dup(%struct.asn1_string_st* noundef nonnull %src) #8
  %cmp6 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp6, label %cleanup, label %if.then5.if.end9_crit_edge

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  %.pre = load %struct.asn1_string_st*, %struct.asn1_string_st** %tgt, align 8, !tbaa !8
  br label %if.end9

if.end9:                                          ; preds = %if.then5.if.end9_crit_edge, %if.end3
  %1 = phi %struct.asn1_string_st* [ %.pre, %if.then5.if.end9_crit_edge ], [ %0, %if.end3 ]
  %new.0 = phi %struct.asn1_string_st* [ %call, %if.then5.if.end9_crit_edge ], [ null, %if.end3 ]
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %1) #8
  store %struct.asn1_string_st* %new.0, %struct.asn1_string_st** %tgt, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end, %if.end9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end9 ], [ 1, %if.end ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_asn1_octet_string_set1_bytes(%struct.asn1_string_st** noundef %tgt, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.asn1_string_st** %tgt, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.ossl_cmp_asn1_octet_string_set1_bytes, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8* %bytes, null
  br i1 %cmp1.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #8
  %cmp3 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %call4 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %call, i8* noundef nonnull %bytes, i32 noundef %len) #8
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %lor.lhs.false, %if.then2
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %call) #8
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false, %if.end
  %new.0 = phi %struct.asn1_string_st* [ %call, %lor.lhs.false ], [ null, %if.end ]
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %tgt, align 8, !tbaa !8
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %0) #8
  store %struct.asn1_string_st* %new.0, %struct.asn1_string_st** %tgt, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 1, %if.end7 ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

declare i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare i8* @llvm.load.relative.i64(i8*, i64) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}

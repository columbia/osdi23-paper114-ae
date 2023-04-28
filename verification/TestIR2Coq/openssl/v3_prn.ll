; ModuleID = 'crypto/x509/v3_prn.c'
source_filename = "crypto/x509/v3_prn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.stack_st = type opaque
%struct.X509_extension_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.ASN1_ITEM_st = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.x509_st = type opaque
%struct.X509_req_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }
%struct.stack_st_X509_EXTENSION = type opaque
%struct.asn1_object_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"<EMPTY>\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%*s%s\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"crypto/x509/v3_prn.c\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%*s%s:\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"%*s<Parse Error>\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"%*s<Not Supported>\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @X509V3_EXT_val_prn(%struct.bio_st* noundef %out, %struct.stack_st_CONF_VALUE* noundef %val, i32 noundef %indent, i32 noundef %ml) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.stack_st_CONF_VALUE* %val, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i32 %ml, 0
  br i1 %tobool1.not, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %val) #4
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end12.thread

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %val) #4
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.then4
  %call10 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then4, %if.then9
  %call1470 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #5
  %cmp71 = icmp sgt i32 %call1470, 0
  br i1 %cmp71, label %for.body.preheader, label %cleanup

if.end12.thread:                                  ; preds = %lor.lhs.false
  %call147076 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp7177 = icmp sgt i32 %call147076, 0
  br i1 %cmp7177, label %if.end20.peel, label %cleanup

for.body.preheader:                               ; preds = %if.end12
  br i1 %tobool1.not, label %if.end26.peel, label %if.end20.peel

if.end20.peel:                                    ; preds = %if.end12.thread, %for.body.preheader
  %call13.pre-phi7881 = phi %struct.stack_st* [ %call6, %for.body.preheader ], [ %call, %if.end12.thread ]
  %call21.peel = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %if.end26.peel

if.end26.peel:                                    ; preds = %for.body.preheader, %if.end20.peel
  %call13.pre-phi7880 = phi %struct.stack_st* [ %call13.pre-phi7881, %if.end20.peel ], [ %call6, %for.body.preheader ]
  %call28.peel = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call13.pre-phi7880, i32 noundef 0) #5
  %name.peel = getelementptr inbounds i8, i8* %call28.peel, i64 8
  %0 = bitcast i8* %name.peel to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !4
  %tobool29.not.peel = icmp eq i8* %1, null
  %value.peel = getelementptr inbounds i8, i8* %call28.peel, i64 16
  %2 = bitcast i8* %value.peel to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !9
  br i1 %tobool29.not.peel, label %if.then30.peel, label %if.else32.peel

if.else32.peel:                                   ; preds = %if.end26.peel
  %tobool34.not.peel = icmp eq i8* %3, null
  br i1 %tobool34.not.peel, label %if.then35.peel, label %if.else38.peel

if.else38.peel:                                   ; preds = %if.else32.peel
  %call41.peel = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef nonnull %3) #5
  br label %for.inc.peel

if.then35.peel:                                   ; preds = %if.else32.peel
  %call37.peel = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef nonnull %1) #5
  br label %for.inc.peel

if.then30.peel:                                   ; preds = %if.end26.peel
  %call31.peel = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef %3) #5
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.then30.peel, %if.then35.peel, %if.else38.peel
  %call14.peel = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13.pre-phi7880) #5
  %cmp.peel = icmp sgt i32 %call14.peel, 1
  br i1 %cmp.peel, label %for.body, label %cleanup

for.body:                                         ; preds = %for.inc.peel, %for.inc
  %i.072 = phi i32 [ %inc, %for.inc ], [ 1, %for.inc.peel ]
  br i1 %tobool1.not, label %if.then23, label %if.end20

if.end20:                                         ; preds = %for.body
  %call19 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #5
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %if.end26

if.then23:                                        ; preds = %for.body
  %call24 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20
  %call28 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call13.pre-phi7880, i32 noundef %i.072) #5
  %name = getelementptr inbounds i8, i8* %call28, i64 8
  %4 = bitcast i8* %name to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !4
  %tobool29.not = icmp eq i8* %5, null
  %value = getelementptr inbounds i8, i8* %call28, i64 16
  %6 = bitcast i8* %value to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !9
  br i1 %tobool29.not, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.end26
  %call31 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef %7) #5
  br label %for.inc

if.else32:                                        ; preds = %if.end26
  %tobool34.not = icmp eq i8* %7, null
  br i1 %tobool34.not, label %if.then35, label %if.else38

if.then35:                                        ; preds = %if.else32
  %call37 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef nonnull %5) #5
  br label %for.inc

if.else38:                                        ; preds = %if.else32
  %call41 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %5, i8* noundef nonnull %7) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %if.else38, %if.then35
  %inc = add nuw nsw i32 %i.072, 1
  %call14 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13.pre-phi7880) #5
  %cmp = icmp slt i32 %inc, %call14
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !10

cleanup:                                          ; preds = %for.inc, %for.inc.peel, %if.end12.thread, %if.end12, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_EXT_print(%struct.bio_st* noundef %out, %struct.X509_extension_st* noundef %ext, i64 noundef %flag, i32 noundef %indent) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %call = tail call %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef %ext) #5
  %call1 = tail call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %call) #5
  store i8* %call1, i8** %p, align 8, !tbaa !13
  %call2 = tail call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %call) #5
  %call3 = tail call %struct.v3_ext_method* @X509V3_EXT_get(%struct.X509_extension_st* noundef %ext) #5
  %cmp = icmp eq %struct.v3_ext_method* %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = tail call fastcc i32 @unknown_ext_print(%struct.bio_st* noundef %out, i8* noundef %call1, i32 noundef %call2, i64 noundef %flag, i32 noundef %indent, i32 noundef 0) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %it = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %call3, i64 0, i32 2
  %1 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %it, align 8, !tbaa !14
  %tobool.not = icmp eq %struct.ASN1_ITEM_st* ()* %1, null
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %conv = sext i32 %call2 to i64
  %call7 = tail call %struct.ASN1_ITEM_st* %1() #5
  %call8 = call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv, %struct.ASN1_ITEM_st* noundef %call7) #5
  %2 = bitcast %struct.ASN1_VALUE_st* %call8 to i8*
  br label %if.end11

if.else:                                          ; preds = %if.end
  %d2i = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %call3, i64 0, i32 5
  %3 = load i8* (i8*, i8**, i64)*, i8* (i8*, i8**, i64)** %d2i, align 8, !tbaa !17
  %conv9 = sext i32 %call2 to i64
  %call10 = call i8* %3(i8* noundef null, i8** noundef nonnull %p, i64 noundef %conv9) #5
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5
  %ext_str.0 = phi i8* [ %2, %if.then5 ], [ %call10, %if.else ]
  %tobool12.not = icmp eq i8* %ext_str.0, null
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %4 = load i8*, i8** %p, align 8, !tbaa !13
  %call14 = call fastcc i32 @unknown_ext_print(%struct.bio_st* noundef %out, i8* noundef %4, i32 noundef %call2, i64 noundef %flag, i32 noundef %indent, i32 noundef 1) #4
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %i2s = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %call3, i64 0, i32 7
  %5 = load i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, i8*)** %i2s, align 8, !tbaa !18
  %tobool16.not = icmp eq i8* (%struct.v3_ext_method*, i8*)* %5, null
  br i1 %tobool16.not, label %if.else25, label %if.then17

if.then17:                                        ; preds = %if.end15
  %call19 = call i8* %5(%struct.v3_ext_method* noundef nonnull %call3, i8* noundef nonnull %ext_str.0) #5
  %cmp20 = icmp eq i8* %call19, null
  br i1 %cmp20, label %err, label %if.end23

if.end23:                                         ; preds = %if.then17
  %call24 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %call19) #5
  br label %err

if.else25:                                        ; preds = %if.end15
  %i2v = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %call3, i64 0, i32 9
  %6 = load %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)** %i2v, align 8, !tbaa !19
  %tobool26.not = icmp eq %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* %6, null
  br i1 %tobool26.not, label %if.else34, label %if.then27

if.then27:                                        ; preds = %if.else25
  %call29 = call %struct.stack_st_CONF_VALUE* %6(%struct.v3_ext_method* noundef nonnull %call3, i8* noundef nonnull %ext_str.0, %struct.stack_st_CONF_VALUE* noundef null) #5
  %cmp30 = icmp eq %struct.stack_st_CONF_VALUE* %call29, null
  br i1 %cmp30, label %err, label %if.end33

if.end33:                                         ; preds = %if.then27
  %ext_flags = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %call3, i64 0, i32 1
  %7 = load i32, i32* %ext_flags, align 4, !tbaa !20
  %and = and i32 %7, 4
  call void @X509V3_EXT_val_prn(%struct.bio_st* noundef %out, %struct.stack_st_CONF_VALUE* noundef nonnull %call29, i32 noundef %indent, i32 noundef %and) #4
  br label %err

if.else34:                                        ; preds = %if.else25
  %i2r = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %call3, i64 0, i32 11
  %8 = load i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)** %i2r, align 8, !tbaa !21
  %tobool35.not = icmp eq i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* %8, null
  br i1 %tobool35.not, label %err, label %if.then36

if.then36:                                        ; preds = %if.else34
  %call38 = call i32 %8(%struct.v3_ext_method* noundef nonnull %call3, i8* noundef nonnull %ext_str.0, %struct.bio_st* noundef %out, i32 noundef %indent) #5
  %tobool39.not = icmp ne i32 %call38, 0
  %spec.select = zext i1 %tobool39.not to i32
  br label %err

err:                                              ; preds = %if.then36, %if.else34, %if.then27, %if.then17, %if.end23, %if.end33
  %value.0 = phi i8* [ %call19, %if.end23 ], [ null, %if.end33 ], [ null, %if.then17 ], [ null, %if.then27 ], [ null, %if.then36 ], [ null, %if.else34 ]
  %nval.0 = phi %struct.stack_st_CONF_VALUE* [ null, %if.end23 ], [ %call29, %if.end33 ], [ null, %if.then17 ], [ null, %if.then27 ], [ null, %if.then36 ], [ null, %if.else34 ]
  %ok.0 = phi i32 [ 1, %if.end23 ], [ 1, %if.end33 ], [ 0, %if.then17 ], [ 0, %if.then27 ], [ %spec.select, %if.then36 ], [ 0, %if.else34 ]
  %call46 = call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nval.0) #4
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call46, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #5
  call void @CRYPTO_free(i8* noundef %value.0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 noundef 131) #5
  %9 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %it, align 8, !tbaa !14
  %tobool49.not = icmp eq %struct.ASN1_ITEM_st* ()* %9, null
  br i1 %tobool49.not, label %if.else53, label %if.then50

if.then50:                                        ; preds = %err
  %10 = bitcast i8* %ext_str.0 to %struct.ASN1_VALUE_st*
  %call52 = call %struct.ASN1_ITEM_st* %9() #5
  call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef nonnull %10, %struct.ASN1_ITEM_st* noundef %call52) #5
  br label %cleanup

if.else53:                                        ; preds = %err
  %ext_free = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %call3, i64 0, i32 4
  %11 = load void (i8*)*, void (i8*)** %ext_free, align 8, !tbaa !22
  call void %11(i8* noundef nonnull %ext_str.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %if.else53, %if.then13, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %call14, %if.then13 ], [ %ok.0, %if.else53 ], [ %ok.0, %if.then50 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef) local_unnamed_addr #2

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.v3_ext_method* @X509V3_EXT_get(%struct.X509_extension_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @unknown_ext_print(%struct.bio_st* noundef %out, i8* noundef %ext, i32 noundef %extlen, i64 noundef %flag, i32 noundef %indent, i32 noundef %supported) unnamed_addr #0 {
entry:
  %and = lshr i64 %flag, 16
  %0 = and i64 %and, 15
  switch i64 %0, label %sw.default [
    i64 0, label %return
    i64 1, label %sw.bb1
    i64 2, label %sw.bb3
    i64 3, label %sw.bb5
  ]

sw.bb1:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %supported, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb1
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %return

if.else:                                          ; preds = %sw.bb1
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %return

sw.bb3:                                           ; preds = %entry
  %conv = sext i32 %extlen to i64
  %call4 = tail call i32 @ASN1_parse_dump(%struct.bio_st* noundef %out, i8* noundef %ext, i64 noundef %conv, i32 noundef %indent, i32 noundef -1) #5
  br label %return

sw.bb5:                                           ; preds = %entry
  %call6 = tail call i32 @BIO_dump_indent(%struct.bio_st* noundef %out, i8* noundef %ext, i32 noundef %extlen, i32 noundef %indent) #5
  br label %return

sw.default:                                       ; preds = %entry
  br label %return

return:                                           ; preds = %if.then, %if.else, %entry, %sw.default, %sw.bb5, %sw.bb3
  %retval.0 = phi i32 [ 1, %sw.default ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ 0, %entry ], [ 1, %if.else ], [ 1, %if.then ]
  ret i32 %retval.0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509V3_conf_free(%struct.CONF_VALUE* noundef) #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_extensions_print(%struct.bio_st* noundef %bp, i8* noundef %title, %struct.stack_st_X509_EXTENSION* noundef %exts, i64 noundef %flag, i32 noundef %indent) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %exts) #4
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %cleanup46, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i8* %title, null
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %title) #5
  %add = add nsw i32 %indent, 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %indent.addr.0 = phi i32 [ %add, %if.then2 ], [ %indent, %if.end ]
  %call676 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp777 = icmp sgt i32 %call676, 0
  br i1 %cmp777, label %for.body.lr.ph, label %cleanup46

for.body.lr.ph:                                   ; preds = %if.end4
  %and = and i64 %flag, 8192
  %cmp11.not = icmp eq i64 %and, 0
  %tobool19.not = icmp eq i32 %indent.addr.0, 0
  %add32 = add nsw i32 %indent.addr.0, 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call9 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.078) #5
  %0 = bitcast i8* %call9 to %struct.X509_extension_st*
  %call10 = tail call %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef %0) #5
  br i1 %cmp11.not, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call12 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call10) #5
  %cmp13.not = icmp eq i32 %call12, 82
  br i1 %cmp13.not, label %if.end18, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true
  %call15 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call10) #5
  %cmp16.not = icmp eq i32 %call15, 90
  br i1 %cmp16.not, label %if.end18, label %for.inc

if.end18:                                         ; preds = %land.lhs.true14, %land.lhs.true, %for.body
  br i1 %tobool19.not, label %if.end24, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %if.end18
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %indent.addr.0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5
  %cmp22 = icmp slt i32 %call21, 1
  br i1 %cmp22, label %cleanup46, label %if.end24

if.end24:                                         ; preds = %land.lhs.true20, %if.end18
  %call25 = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bp, %struct.asn1_object_st* noundef %call10) #5
  %call26 = tail call i32 @X509_EXTENSION_get_critical(%struct.X509_extension_st* noundef %0) #5
  %tobool27.not = icmp eq i32 %call26, 0
  %cond = select i1 %tobool27.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)
  %call28 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* noundef %cond) #5
  %cmp29 = icmp slt i32 %call28, 1
  br i1 %cmp29, label %cleanup46, label %if.end31

if.end31:                                         ; preds = %if.end24
  %call33 = tail call i32 @X509V3_EXT_print(%struct.bio_st* noundef %bp, %struct.X509_extension_st* noundef %0, i64 noundef %flag, i32 noundef %add32) #4
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %if.end40

if.then35:                                        ; preds = %if.end31
  %call37 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %add32, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5
  %call38 = tail call %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef %0) #5
  %call39 = tail call i32 @ASN1_STRING_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %call38) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.end31
  %call41 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 noundef 1) #5
  %cmp42 = icmp slt i32 %call41, 1
  br i1 %cmp42, label %cleanup46, label %for.inc

for.inc:                                          ; preds = %land.lhs.true14, %if.end40
  %inc = add nuw nsw i32 %i.078, 1
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp7 = icmp slt i32 %inc, %call6
  br i1 %cmp7, label %for.body, label %cleanup46, !llvm.loop !23

cleanup46:                                        ; preds = %for.inc, %land.lhs.true20, %if.end24, %if.end40, %if.end4, %entry
  %retval.2 = phi i32 [ 1, %entry ], [ 1, %if.end4 ], [ 1, %for.inc ], [ 0, %land.lhs.true20 ], [ 0, %if.end24 ], [ 0, %if.end40 ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @X509_EXTENSION_get_critical(%struct.X509_extension_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_EXT_print_fp(%struct._IO_FILE* noundef %fp, %struct.X509_extension_st* noundef %ext, i32 noundef %flag, i32 noundef %indent) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %fp, i32 noundef 0) #5
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %flag to i64
  %call1 = tail call i32 @X509V3_EXT_print(%struct.bio_st* noundef nonnull %call, %struct.X509_extension_st* noundef %ext, i64 noundef %conv, i32 noundef %indent) #4
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_parse_dump(%struct.bio_st* noundef, i8* noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_dump_indent(%struct.bio_st* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 16}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.peeled.count", i32 1}
!13 = !{!6, !6, i64 0}
!14 = !{!15, !6, i64 8}
!15 = !{!"v3_ext_method", !16, i64 0, !16, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96}
!16 = !{!"int", !7, i64 0}
!17 = !{!15, !6, i64 32}
!18 = !{!15, !6, i64 48}
!19 = !{!15, !6, i64 64}
!20 = !{!15, !16, i64 4}
!21 = !{!15, !6, i64 80}
!22 = !{!15, !6, i64 24}
!23 = distinct !{!23, !11}

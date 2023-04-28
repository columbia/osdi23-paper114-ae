; ModuleID = 'crypto/x509/t_req.c'
source_filename = "crypto/x509/t_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.X509_req_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_object_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_name_st = type opaque
%struct.X509_pubkey_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.asn1_pctx_st = type opaque
%struct.x509_attributes_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.stack_st = type opaque
%struct.X509_extension_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/x509/t_req.c\00", align 1
@__func__.X509_REQ_print_fp = private unnamed_addr constant [18 x i8] c"X509_REQ_print_fp\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Certificate Request:\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"    Data:\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%8sVersion: %ld (0x%lx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%8sVersion: Unknown (%ld)\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"        Subject:%c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"        Subject Public Key Info:\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"%12sPublic Key Algorithm: \00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%12sUnable to load Public Key\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"%8sAttributes:\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"%12s(none)\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%12s\00", align 1
@__func__.X509_REQ_print_ex = private unnamed_addr constant [18 x i8] c"X509_REQ_print_ex\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"unable to print attribute\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"%12sRequested Extensions:\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%16s\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%20s\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_print_fp(%struct._IO_FILE* noundef %fp, %struct.X509_req_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #5
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #5
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.X509_REQ_print_fp, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524295, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #5
  %call3 = tail call i32 @X509_REQ_print(%struct.bio_st* noundef nonnull %call1, %struct.X509_req_st* noundef %x) #6
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_print(%struct.bio_st* noundef %bp, %struct.X509_req_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_REQ_print_ex(%struct.bio_st* noundef %bp, %struct.X509_req_st* noundef %x, i64 noundef 0, i64 noundef 0) #6
  ret i32 %call
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_print_ex(%struct.bio_st* noundef %bp, %struct.X509_req_st* noundef %x, i64 noundef %nmflags, i64 noundef %cflag) local_unnamed_addr #0 {
entry:
  %koid = alloca %struct.asn1_object_st*, align 8
  %sig_alg = alloca %struct.X509_algor_st*, align 8
  %sig = alloca %struct.asn1_string_st*, align 8
  %and = and i64 %nmflags, 983040
  %cmp = icmp eq i64 %and, 262144
  %spec.select = select i1 %cmp, i32 12, i32 0
  %spec.select365 = select i1 %cmp, i32 10, i32 32
  %cmp1 = icmp eq i64 %nmflags, 0
  %nmindent.1 = select i1 %cmp1, i32 16, i32 %spec.select
  %and4 = and i64 %cflag, 1
  %tobool.not = icmp eq i64 %and4, 0
  br i1 %tobool.not, label %if.then5, label %if.end13

if.then5:                                         ; preds = %entry
  %call = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 21) #5
  %cmp6 = icmp slt i32 %call, 1
  br i1 %cmp6, label %cleanup266.sink.split, label %if.end8

if.end8:                                          ; preds = %if.then5
  %call9 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 noundef 10) #5
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %cleanup266.sink.split, label %if.end13

if.end13:                                         ; preds = %if.end8, %entry
  %and14 = and i64 %cflag, 2
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end29

if.then16:                                        ; preds = %if.end13
  %call17 = tail call i64 @X509_REQ_get_version(%struct.X509_req_st* noundef %x) #5
  %cmp18 = icmp eq i64 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then16
  %call20 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i64 noundef 1, i64 noundef 0) #5
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %cleanup266.sink.split, label %if.end29

if.else:                                          ; preds = %if.then16
  %call24 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i64 noundef %call17) #5
  %cmp25 = icmp slt i32 %call24, 1
  br i1 %cmp25, label %cleanup266.sink.split, label %if.end29

if.end29:                                         ; preds = %if.then19, %if.else, %if.end13
  %and30 = and i64 %cflag, 64
  %tobool31.not = icmp eq i64 %and30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end49

if.then32:                                        ; preds = %if.end29
  %call33 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 noundef %spec.select365) #5
  %cmp34 = icmp slt i32 %call33, 1
  br i1 %cmp34, label %cleanup266.sink.split, label %if.end37

if.end37:                                         ; preds = %if.then32
  %call38 = tail call %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef %x) #5
  %call39 = tail call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %bp, %struct.X509_name_st* noundef %call38, i32 noundef %nmindent.1, i64 noundef %nmflags) #5
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %cleanup266.sink.split, label %if.end43

if.end43:                                         ; preds = %if.end37
  %call44 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1) #5
  %cmp45 = icmp slt i32 %call44, 1
  br i1 %cmp45, label %cleanup266.sink.split, label %if.end49

if.end49:                                         ; preds = %if.end43, %if.end29
  %and50 = and i64 %cflag, 128
  %tobool51.not = icmp eq i64 %and50, 0
  br i1 %tobool51.not, label %if.then52, label %if.end92

if.then52:                                        ; preds = %if.end49
  %0 = bitcast %struct.asn1_object_st** %koid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %call53 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 noundef 33) #5
  %cmp54 = icmp slt i32 %call53, 1
  br i1 %cmp54, label %cleanup.thread, label %if.end57

if.end57:                                         ; preds = %if.then52
  %call58 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #5
  %cmp59 = icmp slt i32 %call58, 1
  br i1 %cmp59, label %cleanup.thread, label %if.end62

if.end62:                                         ; preds = %if.end57
  %call63 = tail call %struct.X509_pubkey_st* @X509_REQ_get_X509_PUBKEY(%struct.X509_req_st* noundef %x) #5
  %call64 = call i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef nonnull %koid, i8** noundef null, i32* noundef null, %struct.X509_algor_st** noundef null, %struct.X509_pubkey_st* noundef %call63) #5
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %koid, align 8, !tbaa !4
  %call65 = call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bp, %struct.asn1_object_st* noundef %1) #5
  %cmp66 = icmp slt i32 %call65, 1
  br i1 %cmp66, label %cleanup.thread, label %if.end69

if.end69:                                         ; preds = %if.end62
  %call70 = call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #5
  %cmp71 = icmp slt i32 %call70, 1
  br i1 %cmp71, label %cleanup.thread, label %if.end74

if.end74:                                         ; preds = %if.end69
  %call75 = call %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef %x) #5
  %cmp76 = icmp eq %struct.evp_pkey_st* %call75, null
  br i1 %cmp76, label %if.then78, label %if.else84

if.then78:                                        ; preds = %if.end74
  %call79 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #5
  %cmp80 = icmp slt i32 %call79, 1
  br i1 %cmp80, label %cleanup.thread, label %if.end83

if.end83:                                         ; preds = %if.then78
  call void @ERR_print_errors(%struct.bio_st* noundef %bp) #5
  br label %cleanup

if.else84:                                        ; preds = %if.end74
  %call85 = call i32 @EVP_PKEY_print_public(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef nonnull %call75, i32 noundef 16, %struct.asn1_pctx_st* noundef null) #5
  %cmp86 = icmp slt i32 %call85, 1
  br i1 %cmp86, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then52, %if.end57, %if.end62, %if.end69, %if.then78, %if.else84
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  br label %cleanup266.sink.split

cleanup:                                          ; preds = %if.end83, %if.else84
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  br label %if.end92

if.end92:                                         ; preds = %cleanup, %if.end49
  %and93 = and i64 %cflag, 2048
  %tobool94.not = icmp eq i64 %and93, 0
  br i1 %tobool94.not, label %if.then95, label %if.end186

if.then95:                                        ; preds = %if.end92
  %call96 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #5
  %cmp97 = icmp slt i32 %call96, 1
  br i1 %cmp97, label %cleanup266.sink.split, label %if.end100

if.end100:                                        ; preds = %if.then95
  %call101 = call i32 @X509_REQ_get_attr_count(%struct.X509_req_st* noundef %x) #5
  %cmp102 = icmp eq i32 %call101, 0
  br i1 %cmp102, label %if.then104, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end100
  %call111383 = call i32 @X509_REQ_get_attr_count(%struct.X509_req_st* noundef %x) #5
  %cmp112384 = icmp sgt i32 %call111383, 0
  br i1 %cmp112384, label %for.body, label %if.end186

if.then104:                                       ; preds = %if.end100
  %call105 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #5
  %cmp106 = icmp slt i32 %call105, 1
  br i1 %cmp106, label %cleanup266.sink.split, label %if.end186

for.body:                                         ; preds = %for.cond.preheader, %for.inc182
  %i.0385 = phi i32 [ %inc183, %for.inc182 ], [ 0, %for.cond.preheader ]
  %call114 = call %struct.x509_attributes_st* @X509_REQ_get_attr(%struct.X509_req_st* noundef %x, i32 noundef %i.0385) #5
  %call115 = call %struct.asn1_object_st* @X509_ATTRIBUTE_get0_object(%struct.x509_attributes_st* noundef %call114) #5
  %call116 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call115) #5
  %call117 = call i32 @X509_REQ_extension_nid(i32 noundef %call116) #5
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %for.inc182

if.end120:                                        ; preds = %for.body
  %call121 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #5
  %cmp122 = icmp slt i32 %call121, 1
  br i1 %cmp122, label %cleanup266.sink.split, label %if.end125

if.end125:                                        ; preds = %if.end120
  %call126 = call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bp, %struct.asn1_object_st* noundef %call115) #5
  %cmp127 = icmp sgt i32 %call126, 0
  br i1 %cmp127, label %if.then129, label %if.end137.thread

if.end137.thread:                                 ; preds = %if.end125
  %sub396 = sub i32 25, %call126
  br label %for.body141.preheader

if.then129:                                       ; preds = %if.end125
  %call130 = call i32 @X509_ATTRIBUTE_count(%struct.x509_attributes_st* noundef %call114) #5
  %cmp131 = icmp eq i32 %call130, 0
  br i1 %cmp131, label %cleanup266.sink.split, label %if.end137

if.end137:                                        ; preds = %if.then129, %sw.epilog
  %j.0 = phi i32 [ %call126, %if.then129 ], [ %j.2.lcssa, %sw.epilog ]
  %count.0 = phi i32 [ %call130, %if.then129 ], [ %count.1402, %sw.epilog ]
  %ii.0 = phi i32 [ 0, %if.then129 ], [ %inc, %sw.epilog ]
  %call135 = call %struct.asn1_type_st* @X509_ATTRIBUTE_get0_type(%struct.x509_attributes_st* noundef %call114, i32 noundef %ii.0) #5
  %type136 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call135, i64 0, i32 0
  %2 = load i32, i32* %type136, align 8, !tbaa !8
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call135, i64 0, i32 1
  %asn1_string = bitcast %union.anon* %value to %struct.asn1_string_st**
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %asn1_string, align 8, !tbaa !11
  %sub = sub i32 25, %j.0
  %cmp139381 = icmp slt i32 %j.0, 25
  br i1 %cmp139381, label %for.body141.preheader, label %for.end

for.body141.preheader:                            ; preds = %if.end137.thread, %if.end137
  %sub406 = phi i32 [ %sub396, %if.end137.thread ], [ %sub, %if.end137 ]
  %ii.1405 = phi i32 [ 0, %if.end137.thread ], [ %ii.0, %if.end137 ]
  %count.1403 = phi i32 [ 1, %if.end137.thread ], [ %count.0, %if.end137 ]
  %type.0401 = phi i32 [ 0, %if.end137.thread ], [ %2, %if.end137 ]
  %bs.0399 = phi %struct.asn1_string_st* [ null, %if.end137.thread ], [ %3, %if.end137 ]
  %smin = call i32 @llvm.smin.i32(i32 %sub406, i32 1)
  %4 = add i32 %smin, -1
  br label %for.body141

for.body141:                                      ; preds = %for.body141.preheader, %for.inc
  %j.2382 = phi i32 [ %dec, %for.inc ], [ %sub406, %for.body141.preheader ]
  %call142 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef 1) #5
  %cmp143.not = icmp eq i32 %call142, 1
  br i1 %cmp143.not, label %for.inc, label %cleanup266.sink.split

for.inc:                                          ; preds = %for.body141
  %dec = add nsw i32 %j.2382, -1
  %cmp139 = icmp sgt i32 %j.2382, 1
  br i1 %cmp139, label %for.body141, label %for.end, !llvm.loop !12

for.end:                                          ; preds = %for.inc, %if.end137
  %ii.1404 = phi i32 [ %ii.0, %if.end137 ], [ %ii.1405, %for.inc ]
  %count.1402 = phi i32 [ %count.0, %if.end137 ], [ %count.1403, %for.inc ]
  %type.0400 = phi i32 [ %2, %if.end137 ], [ %type.0401, %for.inc ]
  %bs.0398 = phi %struct.asn1_string_st* [ %3, %if.end137 ], [ %bs.0399, %for.inc ]
  %j.2.lcssa = phi i32 [ %sub, %if.end137 ], [ %4, %for.inc ]
  %call147 = call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #5
  %cmp148 = icmp slt i32 %call147, 1
  br i1 %cmp148, label %cleanup266.sink.split, label %if.end151

if.end151:                                        ; preds = %for.end
  switch i32 %type.0400, label %sw.default [
    i32 19, label %sw.bb
    i32 20, label %sw.bb
    i32 18, label %sw.bb
    i32 12, label %sw.bb
    i32 22, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end151, %if.end151, %if.end151, %if.end151, %if.end151
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %bs.0398, i64 0, i32 2
  %5 = load i8*, i8** %data, align 8, !tbaa !14
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %bs.0398, i64 0, i32 0
  %6 = load i32, i32* %length, align 8, !tbaa !17
  %call152 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef %5, i32 noundef %6) #5
  %7 = load i32, i32* %length, align 8, !tbaa !17
  %cmp154.not = icmp eq i32 %call152, %7
  br i1 %cmp154.not, label %if.end157, label %cleanup266.sink.split

if.end157:                                        ; preds = %sw.bb
  %call158 = call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #5
  %cmp159 = icmp slt i32 %call158, 1
  br i1 %cmp159, label %cleanup266.sink.split, label %sw.epilog

sw.default:                                       ; preds = %if.end151
  %call163 = call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0)) #5
  %cmp164 = icmp slt i32 %call163, 1
  br i1 %cmp164, label %cleanup266.sink.split, label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end157
  %inc = add nsw i32 %ii.1404, 1
  %cmp168 = icmp slt i32 %inc, %count.1402
  br i1 %cmp168, label %if.end137, label %for.inc182

for.inc182:                                       ; preds = %for.body, %sw.epilog
  %inc183 = add nuw nsw i32 %i.0385, 1
  %call111 = call i32 @X509_REQ_get_attr_count(%struct.X509_req_st* noundef %x) #5
  %cmp112 = icmp slt i32 %inc183, %call111
  br i1 %cmp112, label %for.body, label %if.end186, !llvm.loop !18

if.end186:                                        ; preds = %for.inc182, %for.cond.preheader, %if.then104, %if.end92
  %and187 = and i64 %cflag, 256
  %tobool188.not = icmp eq i64 %and187, 0
  br i1 %tobool188.not, label %if.then189, label %if.end253

if.then189:                                       ; preds = %if.end186
  %call190 = call %struct.stack_st_X509_EXTENSION* @X509_REQ_get_extensions(%struct.X509_req_st* noundef %x) #5
  %tobool191.not = icmp eq %struct.stack_st_X509_EXTENSION* %call190, null
  br i1 %tobool191.not, label %if.end253, label %if.then192

if.then192:                                       ; preds = %if.then189
  %call193 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #5
  %cmp194 = icmp slt i32 %call193, 1
  br i1 %cmp194, label %cleanup266.sink.split, label %for.cond198.preheader

for.cond198.preheader:                            ; preds = %if.then192
  %call199 = call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef nonnull %call190) #6
  %call200386 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call199) #5
  %cmp201387 = icmp sgt i32 %call200386, 0
  br i1 %cmp201387, label %for.body203, label %for.end249

for.cond198:                                      ; preds = %if.end236
  %call200 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call199) #5
  %cmp201 = icmp slt i32 %inc248, %call200
  br i1 %cmp201, label %for.body203, label %for.end249, !llvm.loop !19

for.body203:                                      ; preds = %for.cond198.preheader, %for.cond198
  %i.1388 = phi i32 [ %inc248, %for.cond198 ], [ 0, %for.cond198.preheader ]
  %call205 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call199, i32 noundef %i.1388) #5
  %8 = bitcast i8* %call205 to %struct.X509_extension_st*
  %call206 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #5
  %cmp207 = icmp slt i32 %call206, 1
  br i1 %cmp207, label %cleanup266.sink.split, label %if.end210

if.end210:                                        ; preds = %for.body203
  %call211 = call %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef %8) #5
  %call212 = call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bp, %struct.asn1_object_st* noundef %call211) #5
  %cmp213 = icmp slt i32 %call212, 1
  br i1 %cmp213, label %cleanup266.sink.split, label %if.end216

if.end216:                                        ; preds = %if.end210
  %call217 = call i32 @X509_EXTENSION_get_critical(%struct.X509_extension_st* noundef %8) #5
  %tobool218.not = icmp eq i32 %call217, 0
  %cond = select i1 %tobool218.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)
  %call219 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef %cond) #5
  %cmp220 = icmp slt i32 %call219, 1
  br i1 %cmp220, label %cleanup266.sink.split, label %if.end223

if.end223:                                        ; preds = %if.end216
  %call224 = call i32 @X509V3_EXT_print(%struct.bio_st* noundef %bp, %struct.X509_extension_st* noundef %8, i64 noundef %cflag, i32 noundef 20) #5
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.then226, label %if.end236

if.then226:                                       ; preds = %if.end223
  %call227 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #5
  %cmp228 = icmp slt i32 %call227, 1
  br i1 %cmp228, label %cleanup266.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then226
  %call230 = call %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef %8) #5
  %call231 = call i32 @ASN1_STRING_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %call230) #5
  %cmp232 = icmp slt i32 %call231, 1
  br i1 %cmp232, label %cleanup266.sink.split, label %if.end236

if.end236:                                        ; preds = %lor.lhs.false, %if.end223
  %call237 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1) #5
  %cmp238 = icmp slt i32 %call237, 1
  %inc248 = add nuw nsw i32 %i.1388, 1
  br i1 %cmp238, label %cleanup266.sink.split, label %for.cond198

for.end249:                                       ; preds = %for.cond198, %for.cond198.preheader
  %call250 = call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef nonnull %call190) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call250, void (i8*)* noundef bitcast (void (%struct.X509_extension_st*)* @X509_EXTENSION_free to void (i8*)*)) #5
  br label %if.end253

if.end253:                                        ; preds = %if.then189, %for.end249, %if.end186
  %and254 = and i64 %cflag, 512
  %tobool255.not = icmp eq i64 %and254, 0
  br i1 %tobool255.not, label %if.then256, label %cleanup266

if.then256:                                       ; preds = %if.end253
  %9 = bitcast %struct.X509_algor_st** %sig_alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #7
  %10 = bitcast %struct.asn1_string_st** %sig to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7
  call void @X509_REQ_get0_signature(%struct.X509_req_st* noundef %x, %struct.asn1_string_st** noundef nonnull %sig, %struct.X509_algor_st** noundef nonnull %sig_alg) #5
  %11 = load %struct.X509_algor_st*, %struct.X509_algor_st** %sig_alg, align 8, !tbaa !4
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %sig, align 8, !tbaa !4
  %call257 = call i32 @X509_signature_print(%struct.bio_st* noundef %bp, %struct.X509_algor_st* noundef %11, %struct.asn1_string_st* noundef %12) #5
  %tobool258.not = icmp eq i32 %call257, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #7
  br i1 %tobool258.not, label %cleanup266.sink.split, label %cleanup266

cleanup266.sink.split:                            ; preds = %if.end120, %for.end, %sw.bb, %if.end157, %sw.default, %if.then129, %for.body141, %for.body203, %if.end210, %if.end216, %lor.lhs.false, %if.then226, %if.end236, %if.then5, %if.end8, %if.then19, %if.else, %if.then32, %if.end37, %if.end43, %if.then95, %if.then104, %if.then192, %if.then256, %cleanup.thread
  %.sink409 = phi i32 [ 207, %cleanup.thread ], [ 207, %if.then256 ], [ 207, %if.then192 ], [ 207, %if.then104 ], [ 207, %if.then95 ], [ 207, %if.end43 ], [ 207, %if.end37 ], [ 207, %if.then32 ], [ 207, %if.else ], [ 207, %if.then19 ], [ 207, %if.end8 ], [ 207, %if.then5 ], [ 207, %if.end236 ], [ 207, %if.then226 ], [ 207, %lor.lhs.false ], [ 207, %if.end216 ], [ 207, %if.end210 ], [ 207, %for.body203 ], [ 207, %for.body141 ], [ 131, %if.then129 ], [ 207, %sw.default ], [ 207, %if.end157 ], [ 207, %sw.bb ], [ 207, %for.end ], [ 207, %if.end120 ]
  %.sink = phi i32 [ 524295, %cleanup.thread ], [ 524295, %if.then256 ], [ 524295, %if.then192 ], [ 524295, %if.then104 ], [ 524295, %if.then95 ], [ 524295, %if.end43 ], [ 524295, %if.end37 ], [ 524295, %if.then32 ], [ 524295, %if.else ], [ 524295, %if.then19 ], [ 524295, %if.end8 ], [ 524295, %if.then5 ], [ 524295, %if.end236 ], [ 524295, %if.then226 ], [ 524295, %lor.lhs.false ], [ 524295, %if.end216 ], [ 524295, %if.end210 ], [ 524295, %for.body203 ], [ 524295, %for.body141 ], [ 138, %if.then129 ], [ 524295, %sw.default ], [ 524295, %if.end157 ], [ 524295, %sw.bb ], [ 524295, %for.end ], [ 524295, %if.end120 ]
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink409, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.X509_REQ_print_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef %.sink, i8* noundef null) #5
  br label %cleanup266

cleanup266:                                       ; preds = %cleanup266.sink.split, %if.end253, %if.then256
  %retval.3 = phi i32 [ 1, %if.then256 ], [ 1, %if.end253 ], [ 0, %cleanup266.sink.split ]
  ret i32 %retval.3
}

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @X509_REQ_get_version(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @X509_NAME_print_ex(%struct.bio_st* noundef, %struct.X509_name_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare %struct.X509_pubkey_st* @X509_REQ_get_X509_PUBKEY(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef, i8** noundef, i32* noundef, %struct.X509_algor_st** noundef, %struct.X509_pubkey_st* noundef) local_unnamed_addr #2

declare i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_print_public(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare i32 @X509_REQ_get_attr_count(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare %struct.x509_attributes_st* @X509_REQ_get_attr(%struct.X509_req_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @X509_ATTRIBUTE_get0_object(%struct.x509_attributes_st* noundef) local_unnamed_addr #2

declare i32 @X509_REQ_extension_nid(i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @X509_ATTRIBUTE_count(%struct.x509_attributes_st* noundef) local_unnamed_addr #2

declare %struct.asn1_type_st* @X509_ATTRIBUTE_get0_type(%struct.x509_attributes_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st_X509_EXTENSION* @X509_REQ_get_extensions(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef) local_unnamed_addr #2

declare i32 @X509_EXTENSION_get_critical(%struct.X509_extension_st* noundef) local_unnamed_addr #2

declare i32 @X509V3_EXT_print(%struct.bio_st* noundef, %struct.X509_extension_st* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_EXTENSION_free(%struct.X509_extension_st* noundef) #2

declare void @X509_REQ_get0_signature(%struct.X509_req_st* noundef, %struct.asn1_string_st** noundef, %struct.X509_algor_st** noundef) local_unnamed_addr #2

declare i32 @X509_signature_print(%struct.bio_st* noundef, %struct.X509_algor_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"asn1_type_st", !10, i64 0, !6, i64 8}
!10 = !{!"int", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !5, i64 8}
!15 = !{!"asn1_string_st", !10, i64 0, !10, i64 4, !5, i64 8, !16, i64 16}
!16 = !{!"long", !6, i64 0}
!17 = !{!15, !10, i64 0}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}

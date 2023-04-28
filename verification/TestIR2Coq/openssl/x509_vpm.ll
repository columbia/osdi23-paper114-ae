; ModuleID = 'crypto/x509/x509_vpm.c'
source_filename = "crypto/x509/x509_vpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_st_X509_VERIFY_PARAM = type opaque
%struct.X509_VERIFY_PARAM_st = type { i8*, i64, i32, i64, i32, i32, i32, i32, %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_OPENSSL_STRING*, i32, i8*, i8*, i64, i8*, i64 }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.stack_st = type opaque
%struct.asn1_object_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/x509_vpm.c\00", align 1
@__func__.X509_VERIFY_PARAM_new = private unnamed_addr constant [22 x i8] c"X509_VERIFY_PARAM_new\00", align 1
@param_table = internal unnamed_addr global %struct.stack_st_X509_VERIFY_PARAM* null, align 8
@default_table = internal constant [5 x %struct.X509_VERIFY_PARAM_st] [%struct.X509_VERIFY_PARAM_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 0, i32 0, i64 32768, i32 0, i32 0, i32 100, i32 -1, %struct.stack_st_ASN1_OBJECT* null, %struct.stack_st_OPENSSL_STRING* null, i32 0, i8* null, i8* null, i64 0, i8* null, i64 0 }, %struct.X509_VERIFY_PARAM_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 0, i32 0, i64 0, i32 4, i32 4, i32 -1, i32 -1, %struct.stack_st_ASN1_OBJECT* null, %struct.stack_st_OPENSSL_STRING* null, i32 0, i8* null, i8* null, i64 0, i8* null, i64 0 }, %struct.X509_VERIFY_PARAM_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i64 0, i32 0, i64 0, i32 4, i32 4, i32 -1, i32 -1, %struct.stack_st_ASN1_OBJECT* null, %struct.stack_st_OPENSSL_STRING* null, i32 0, i8* null, i8* null, i64 0, i8* null, i64 0 }, %struct.X509_VERIFY_PARAM_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i64 0, i32 0, i64 0, i32 1, i32 2, i32 -1, i32 -1, %struct.stack_st_ASN1_OBJECT* null, %struct.stack_st_OPENSSL_STRING* null, i32 0, i8* null, i8* null, i64 0, i8* null, i64 0 }, %struct.X509_VERIFY_PARAM_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i64 0, i32 0, i64 0, i32 2, i32 3, i32 -1, i32 -1, %struct.stack_st_ASN1_OBJECT* null, %struct.stack_st_OPENSSL_STRING* null, i32 0, i8* null, i8* null, i64 0, i8* null, i64 0 }], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pkcs7\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"smime_sign\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ssl_client\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ssl_server\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 112, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 86) #10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.X509_VERIFY_PARAM_new, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.X509_VERIFY_PARAM_st*
  %trust = getelementptr inbounds i8, i8* %call, i64 36
  %1 = bitcast i8* %trust to i32*
  store i32 0, i32* %1, align 4, !tbaa !4
  %depth = getelementptr inbounds i8, i8* %call, i64 40
  %2 = bitcast i8* %depth to i32*
  store i32 -1, i32* %2, align 8, !tbaa !11
  %auth_level = getelementptr inbounds i8, i8* %call, i64 44
  %3 = bitcast i8* %auth_level to i32*
  store i32 -1, i32* %3, align 4, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.X509_VERIFY_PARAM_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.X509_VERIFY_PARAM_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef %param) #0 {
entry:
  %cmp = icmp eq %struct.X509_VERIFY_PARAM_st* %param, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %policies = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 8
  %0 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %policies, align 8, !tbaa !13
  %call = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %0) #11
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.asn1_object_st*)* @ASN1_OBJECT_free to void (i8*)*)) #10
  %hosts = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 9
  %1 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %hosts, align 8, !tbaa !14
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %1) #11
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call2, void (i8*)* noundef nonnull @str_free) #10
  %peername = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 11
  %2 = load i8*, i8** %peername, align 8, !tbaa !15
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 104) #10
  %email = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 12
  %3 = load i8*, i8** %email, align 8, !tbaa !16
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 105) #10
  %ip = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 14
  %4 = load i8*, i8** %ip, align 8, !tbaa !17
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 106) #10
  %5 = bitcast %struct.X509_VERIFY_PARAM_st* %param to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 107) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal void @str_free(i8* noundef %s) #0 {
entry:
  tail call void @CRYPTO_free(i8* noundef %s, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 33) #10
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_VERIFY_PARAM_inherit(%struct.X509_VERIFY_PARAM_st* noundef %dest, %struct.X509_VERIFY_PARAM_st* noundef readonly %src) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.X509_VERIFY_PARAM_st* %src, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %inh_flags1 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 2
  %0 = load i32, i32* %inh_flags1, align 8, !tbaa !18
  %inh_flags2 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 2
  %1 = load i32, i32* %inh_flags2, align 8, !tbaa !18
  %or = or i32 %1, %0
  %conv = zext i32 %or to i64
  %and = and i64 %conv, 16
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %inh_flags1, align 8, !tbaa !18
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %and7 = and i64 %conv, 8
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end6
  %and11 = and i64 %conv, 1
  %tobool12.not = icmp eq i64 %and11, 0
  %and15 = and i64 %conv, 2
  %tobool16.not = icmp eq i64 %and15, 0
  %purpose = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 4
  %2 = load i32, i32* %purpose, align 8, !tbaa !19
  br i1 %tobool16.not, label %lor.lhs.false, label %if.end72

lor.lhs.false:                                    ; preds = %if.end10
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %lor.lhs.false32, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  br i1 %tobool12.not, label %lor.lhs.false23, label %if.end30.thread263

lor.lhs.false23:                                  ; preds = %land.lhs.true
  %purpose24 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 4
  %3 = load i32, i32* %purpose24, align 8, !tbaa !19
  %cmp25 = icmp eq i32 %3, 0
  br i1 %cmp25, label %if.end30.thread263, label %lor.lhs.false32.thread

if.end30.thread263:                               ; preds = %land.lhs.true, %lor.lhs.false23
  %purpose29265 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 4
  store i32 %2, i32* %purpose29265, align 8, !tbaa !19
  br label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false, %if.end30.thread263
  %trust = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 5
  %4 = load i32, i32* %trust, align 4, !tbaa !4
  %cmp33.not = icmp eq i32 %4, 0
  br i1 %cmp33.not, label %lor.lhs.false46, label %land.lhs.true35

lor.lhs.false32.thread:                           ; preds = %lor.lhs.false23
  %trust286 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 5
  %5 = load i32, i32* %trust286, align 4, !tbaa !4
  %cmp33.not287 = icmp eq i32 %5, 0
  br i1 %cmp33.not287, label %lor.lhs.false46, label %lor.lhs.false37

land.lhs.true35:                                  ; preds = %lor.lhs.false32
  br i1 %tobool12.not, label %lor.lhs.false37, label %if.end44.thread267

lor.lhs.false37:                                  ; preds = %lor.lhs.false32.thread, %land.lhs.true35
  %6 = phi i32 [ %5, %lor.lhs.false32.thread ], [ %4, %land.lhs.true35 ]
  %trust38 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 5
  %7 = load i32, i32* %trust38, align 4, !tbaa !4
  %cmp39 = icmp eq i32 %7, 0
  br i1 %cmp39, label %if.end44.thread267, label %lor.lhs.false46

if.end44.thread267:                               ; preds = %land.lhs.true35, %lor.lhs.false37
  %8 = phi i32 [ %4, %land.lhs.true35 ], [ %6, %lor.lhs.false37 ]
  %trust43269 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 5
  store i32 %8, i32* %trust43269, align 4, !tbaa !4
  br label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false32.thread, %lor.lhs.false32, %lor.lhs.false37, %if.end44.thread267
  %depth = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 6
  %9 = load i32, i32* %depth, align 8, !tbaa !11
  %cmp47.not = icmp eq i32 %9, -1
  br i1 %cmp47.not, label %lor.lhs.false60, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %lor.lhs.false46
  br i1 %tobool12.not, label %lor.lhs.false51, label %if.end58.thread271

lor.lhs.false51:                                  ; preds = %land.lhs.true49
  %depth52 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 6
  %10 = load i32, i32* %depth52, align 8, !tbaa !11
  %cmp53 = icmp eq i32 %10, -1
  br i1 %cmp53, label %if.end58.thread271, label %lor.lhs.false60.thread

if.end58.thread271:                               ; preds = %land.lhs.true49, %lor.lhs.false51
  %depth57273 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 6
  store i32 %9, i32* %depth57273, align 8, !tbaa !11
  br label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false46, %if.end58.thread271
  %auth_level = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 7
  %11 = load i32, i32* %auth_level, align 4, !tbaa !12
  %cmp61.not = icmp eq i32 %11, -1
  br i1 %cmp61.not, label %lor.lhs.false74, label %land.lhs.true63

lor.lhs.false60.thread:                           ; preds = %lor.lhs.false51
  %auth_level288 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 7
  %12 = load i32, i32* %auth_level288, align 4, !tbaa !12
  %cmp61.not289 = icmp eq i32 %12, -1
  br i1 %cmp61.not289, label %lor.lhs.false74, label %lor.lhs.false65

land.lhs.true63:                                  ; preds = %lor.lhs.false60
  br i1 %tobool12.not, label %lor.lhs.false65, label %if.end72.thread275

lor.lhs.false65:                                  ; preds = %lor.lhs.false60.thread, %land.lhs.true63
  %13 = phi i32 [ %12, %lor.lhs.false60.thread ], [ %11, %land.lhs.true63 ]
  %auth_level66 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 7
  %14 = load i32, i32* %auth_level66, align 4, !tbaa !12
  %cmp67 = icmp eq i32 %14, -1
  br i1 %cmp67, label %if.end72.thread275, label %lor.lhs.false74

if.end72.thread275:                               ; preds = %land.lhs.true63, %lor.lhs.false65
  %15 = phi i32 [ %11, %land.lhs.true63 ], [ %13, %lor.lhs.false65 ]
  %auth_level71277 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 7
  store i32 %15, i32* %auth_level71277, align 4, !tbaa !12
  br label %lor.lhs.false74

if.end72:                                         ; preds = %if.end10
  %purpose29 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 4
  store i32 %2, i32* %purpose29, align 8, !tbaa !19
  %trust42 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 5
  %16 = load i32, i32* %trust42, align 4, !tbaa !4
  %trust43 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 5
  store i32 %16, i32* %trust43, align 4, !tbaa !4
  %depth56 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 6
  %17 = load i32, i32* %depth56, align 8, !tbaa !11
  %depth57 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 6
  store i32 %17, i32* %depth57, align 8, !tbaa !11
  %auth_level70 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 7
  %18 = load i32, i32* %auth_level70, align 4, !tbaa !12
  %auth_level71 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 7
  store i32 %18, i32* %auth_level71, align 4, !tbaa !12
  %flags79.phi.trans.insert = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 3
  %.pre = load i64, i64* %flags79.phi.trans.insert, align 8, !tbaa !20
  br label %if.then77

lor.lhs.false74:                                  ; preds = %lor.lhs.false60.thread, %lor.lhs.false60, %lor.lhs.false65, %if.end72.thread275
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 3
  %19 = load i64, i64* %flags, align 8, !tbaa !20
  %and75 = and i64 %19, 2
  %tobool76.not = icmp eq i64 %and75, 0
  br i1 %tobool76.not, label %if.then77, label %if.end81

if.then77:                                        ; preds = %if.end72, %lor.lhs.false74
  %20 = phi i64 [ %.pre, %if.end72 ], [ %19, %lor.lhs.false74 ]
  %check_time = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 1
  %21 = load i64, i64* %check_time, align 8, !tbaa !21
  %check_time78 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 1
  store i64 %21, i64* %check_time78, align 8, !tbaa !21
  %flags79 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 3
  %and80 = and i64 %20, -3
  store i64 %and80, i64* %flags79, align 8, !tbaa !20
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %lor.lhs.false74
  %22 = phi i64 [ %and80, %if.then77 ], [ %19, %lor.lhs.false74 ]
  %and82 = and i64 %conv, 4
  %tobool83.not = icmp eq i64 %and82, 0
  br i1 %tobool83.not, label %if.end86, label %if.then84

if.then84:                                        ; preds = %if.end81
  %flags85 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 3
  store i64 0, i64* %flags85, align 8, !tbaa !20
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end81
  %23 = phi i64 [ 0, %if.then84 ], [ %22, %if.end81 ]
  %flags87 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 3
  %24 = load i64, i64* %flags87, align 8, !tbaa !20
  %flags88 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 3
  %or89 = or i64 %23, %24
  store i64 %or89, i64* %flags88, align 8, !tbaa !20
  %policies = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 8
  %25 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %policies, align 8, !tbaa !13
  br i1 %tobool16.not, label %lor.lhs.false91, label %if.then100.thread

lor.lhs.false91:                                  ; preds = %if.end86
  %cmp92.not = icmp eq %struct.stack_st_ASN1_OBJECT* %25, null
  br i1 %cmp92.not, label %lor.lhs.false107, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %lor.lhs.false91
  br i1 %tobool12.not, label %lor.lhs.false96, label %if.then100

lor.lhs.false96:                                  ; preds = %land.lhs.true94
  %policies97 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 8
  %26 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %policies97, align 8, !tbaa !13
  %cmp98 = icmp eq %struct.stack_st_ASN1_OBJECT* %26, null
  br i1 %cmp98, label %if.then100, label %lor.lhs.false107.thread

if.then100:                                       ; preds = %lor.lhs.false96, %land.lhs.true94
  %call = tail call i32 @X509_VERIFY_PARAM_set1_policies(%struct.X509_VERIFY_PARAM_st* noundef nonnull %dest, %struct.stack_st_ASN1_OBJECT* noundef nonnull %25) #11
  %tobool102.not = icmp eq i32 %call, 0
  br i1 %tobool102.not, label %cleanup, label %lor.lhs.false107

if.then100.thread:                                ; preds = %if.end86
  %call279 = tail call i32 @X509_VERIFY_PARAM_set1_policies(%struct.X509_VERIFY_PARAM_st* noundef nonnull %dest, %struct.stack_st_ASN1_OBJECT* noundef %25) #11
  %tobool102.not280 = icmp eq i32 %call279, 0
  br i1 %tobool102.not280, label %cleanup, label %if.end119

lor.lhs.false107:                                 ; preds = %if.then100, %lor.lhs.false91
  %hostflags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 10
  %27 = load i32, i32* %hostflags, align 8, !tbaa !22
  %cmp108.not = icmp eq i32 %27, 0
  br i1 %cmp108.not, label %lor.lhs.false121, label %land.lhs.true110

lor.lhs.false107.thread:                          ; preds = %lor.lhs.false96
  %hostflags290 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 10
  %28 = load i32, i32* %hostflags290, align 8, !tbaa !22
  %cmp108.not291 = icmp eq i32 %28, 0
  br i1 %cmp108.not291, label %lor.lhs.false121, label %lor.lhs.false112

land.lhs.true110:                                 ; preds = %lor.lhs.false107
  br i1 %tobool12.not, label %lor.lhs.false112, label %if.end119.thread283

lor.lhs.false112:                                 ; preds = %lor.lhs.false107.thread, %land.lhs.true110
  %29 = phi i32 [ %28, %lor.lhs.false107.thread ], [ %27, %land.lhs.true110 ]
  %hostflags113 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 10
  %30 = load i32, i32* %hostflags113, align 8, !tbaa !22
  %cmp114 = icmp eq i32 %30, 0
  br i1 %cmp114, label %if.end119.thread283, label %lor.lhs.false121

if.end119.thread283:                              ; preds = %land.lhs.true110, %lor.lhs.false112
  %31 = phi i32 [ %27, %land.lhs.true110 ], [ %29, %lor.lhs.false112 ]
  %hostflags118285 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 10
  store i32 %31, i32* %hostflags118285, align 8, !tbaa !22
  br label %lor.lhs.false121

if.end119:                                        ; preds = %if.then100.thread
  %hostflags117 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 10
  %32 = load i32, i32* %hostflags117, align 8, !tbaa !22
  %hostflags118 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 10
  store i32 %32, i32* %hostflags118, align 8, !tbaa !22
  br label %if.then130

lor.lhs.false121:                                 ; preds = %lor.lhs.false107.thread, %lor.lhs.false107, %lor.lhs.false112, %if.end119.thread283
  %hosts = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 9
  %33 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %hosts, align 8, !tbaa !14
  %cmp122.not = icmp eq %struct.stack_st_OPENSSL_STRING* %33, null
  br i1 %cmp122.not, label %lor.lhs.false152, label %land.lhs.true124

land.lhs.true124:                                 ; preds = %lor.lhs.false121
  br i1 %tobool12.not, label %lor.lhs.false126, label %if.then130

lor.lhs.false126:                                 ; preds = %land.lhs.true124
  %hosts127 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 9
  %34 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %hosts127, align 8, !tbaa !14
  %cmp128 = icmp eq %struct.stack_st_OPENSSL_STRING* %34, null
  br i1 %cmp128, label %if.then130, label %lor.lhs.false152.thread

if.then130:                                       ; preds = %if.end119, %lor.lhs.false126, %land.lhs.true124
  %hosts131 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 9
  %35 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %hosts131, align 8, !tbaa !14
  %call132 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %35) #11
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call132, void (i8*)* noundef nonnull @str_free) #10
  store %struct.stack_st_OPENSSL_STRING* null, %struct.stack_st_OPENSSL_STRING** %hosts131, align 8, !tbaa !14
  %hosts135 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 9
  %36 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %hosts135, align 8, !tbaa !14
  %tobool136.not = icmp eq %struct.stack_st_OPENSSL_STRING* %36, null
  br i1 %tobool136.not, label %if.end150, label %if.then137

if.then137:                                       ; preds = %if.then130
  %call139 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %36) #11
  %call142 = tail call %struct.stack_st* @OPENSSL_sk_deep_copy(%struct.stack_st* noundef %call139, i8* (i8*)* noundef nonnull @str_copy, void (i8*)* noundef nonnull @str_free) #10
  %37 = bitcast %struct.stack_st_OPENSSL_STRING** %hosts131 to %struct.stack_st**
  store %struct.stack_st* %call142, %struct.stack_st** %37, align 8, !tbaa !14
  %cmp145 = icmp eq %struct.stack_st* %call142, null
  br i1 %cmp145, label %cleanup, label %if.end150

if.end150:                                        ; preds = %if.then130, %if.then137
  br i1 %tobool16.not, label %lor.lhs.false152, label %if.then161.thread

lor.lhs.false152:                                 ; preds = %lor.lhs.false121, %if.end150
  %email = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 12
  %38 = load i8*, i8** %email, align 8, !tbaa !16
  %cmp153.not = icmp eq i8* %38, null
  br i1 %cmp153.not, label %lor.lhs.false169, label %land.lhs.true155

lor.lhs.false152.thread:                          ; preds = %lor.lhs.false126
  %email292 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 12
  %39 = load i8*, i8** %email292, align 8, !tbaa !16
  %cmp153.not293 = icmp eq i8* %39, null
  br i1 %cmp153.not293, label %lor.lhs.false169, label %lor.lhs.false157

land.lhs.true155:                                 ; preds = %lor.lhs.false152
  br i1 %tobool12.not, label %lor.lhs.false157, label %if.then161

lor.lhs.false157:                                 ; preds = %lor.lhs.false152.thread, %land.lhs.true155
  %40 = phi i8* [ %39, %lor.lhs.false152.thread ], [ %38, %land.lhs.true155 ]
  %email158 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 12
  %41 = load i8*, i8** %email158, align 8, !tbaa !16
  %cmp159 = icmp eq i8* %41, null
  br i1 %cmp159, label %if.then161, label %lor.lhs.false169

if.then161:                                       ; preds = %lor.lhs.false157, %land.lhs.true155
  %42 = phi i8* [ %40, %lor.lhs.false157 ], [ %38, %land.lhs.true155 ]
  %emaillen = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 13
  %43 = load i64, i64* %emaillen, align 8, !tbaa !23
  %call163 = tail call i32 @X509_VERIFY_PARAM_set1_email(%struct.X509_VERIFY_PARAM_st* noundef nonnull %dest, i8* noundef nonnull %42, i64 noundef %43) #11
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %cleanup, label %if.end167

if.then161.thread:                                ; preds = %if.end150
  %email162.phi.trans.insert = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 12
  %.pre294 = load i8*, i8** %email162.phi.trans.insert, align 8, !tbaa !16
  %emaillen296 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 13
  %44 = load i64, i64* %emaillen296, align 8, !tbaa !23
  %call163297 = tail call i32 @X509_VERIFY_PARAM_set1_email(%struct.X509_VERIFY_PARAM_st* noundef nonnull %dest, i8* noundef %.pre294, i64 noundef %44) #11
  %tobool164.not298 = icmp eq i32 %call163297, 0
  br i1 %tobool164.not298, label %cleanup, label %if.end167.if.then178_crit_edge

if.end167:                                        ; preds = %if.then161
  br i1 %tobool16.not, label %lor.lhs.false169, label %if.end167.if.then178_crit_edge

if.end167.if.then178_crit_edge:                   ; preds = %if.then161.thread, %if.end167
  %ip179.phi.trans.insert = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 14
  %.pre295 = load i8*, i8** %ip179.phi.trans.insert, align 8, !tbaa !17
  br label %if.then178

lor.lhs.false169:                                 ; preds = %lor.lhs.false152.thread, %lor.lhs.false152, %lor.lhs.false157, %if.end167
  %ip = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 14
  %45 = load i8*, i8** %ip, align 8, !tbaa !17
  %cmp170.not = icmp eq i8* %45, null
  br i1 %cmp170.not, label %if.end184, label %land.lhs.true172

land.lhs.true172:                                 ; preds = %lor.lhs.false169
  br i1 %tobool12.not, label %lor.lhs.false174, label %if.then178

lor.lhs.false174:                                 ; preds = %land.lhs.true172
  %ip175 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %dest, i64 0, i32 14
  %46 = load i8*, i8** %ip175, align 8, !tbaa !17
  %cmp176 = icmp eq i8* %46, null
  br i1 %cmp176, label %if.then178, label %if.end184

if.then178:                                       ; preds = %if.end167.if.then178_crit_edge, %lor.lhs.false174, %land.lhs.true172
  %47 = phi i8* [ %.pre295, %if.end167.if.then178_crit_edge ], [ %45, %lor.lhs.false174 ], [ %45, %land.lhs.true172 ]
  %iplen = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %src, i64 0, i32 15
  %48 = load i64, i64* %iplen, align 8, !tbaa !24
  %call180 = tail call i32 @X509_VERIFY_PARAM_set1_ip(%struct.X509_VERIFY_PARAM_st* noundef nonnull %dest, i8* noundef %47, i64 noundef %48) #11
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %cleanup, label %if.end184

if.end184:                                        ; preds = %if.then178, %lor.lhs.false174, %lor.lhs.false169
  br label %cleanup

cleanup:                                          ; preds = %if.then161.thread, %if.then100.thread, %if.then178, %if.then161, %if.then137, %if.then100, %if.end6, %entry, %if.end184
  %retval.0 = phi i32 [ 1, %if.end184 ], [ 1, %entry ], [ 1, %if.end6 ], [ 0, %if.then100 ], [ 0, %if.then137 ], [ 0, %if.then161 ], [ 0, %if.then178 ], [ 0, %if.then100.thread ], [ 0, %if.then161.thread ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_VERIFY_PARAM_set1_policies(%struct.X509_VERIFY_PARAM_st* noundef %param, %struct.stack_st_ASN1_OBJECT* noundef %policies) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_VERIFY_PARAM_st* %param, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %policies1 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 8
  %0 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %policies1, align 8, !tbaa !13
  %call = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %0) #11
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.asn1_object_st*)* @ASN1_OBJECT_free to void (i8*)*)) #10
  %cmp3 = icmp eq %struct.stack_st_ASN1_OBJECT* %policies, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  store %struct.stack_st_ASN1_OBJECT* null, %struct.stack_st_ASN1_OBJECT** %policies1, align 8, !tbaa !13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #10
  %1 = bitcast %struct.stack_st_ASN1_OBJECT** %policies1 to %struct.stack_st**
  store %struct.stack_st* %call7, %struct.stack_st** %1, align 8, !tbaa !13
  %cmp10 = icmp eq %struct.stack_st* %call7, null
  br i1 %cmp10, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end6
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef nonnull %policies) #11
  %call1446 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13) #10
  %cmp1547 = icmp sgt i32 %call1446, 0
  br i1 %cmp1547, label %for.body, label %for.end

for.cond:                                         ; preds = %if.end20
  %call14 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13) #10
  %cmp15 = icmp slt i32 %inc, %call14
  br i1 %cmp15, label %for.body, label %for.end, !llvm.loop !25

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.048 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call17 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call13, i32 noundef %i.048) #10
  %2 = bitcast i8* %call17 to %struct.asn1_object_st*
  %call18 = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef %2) #10
  %tobool.not = icmp eq %struct.asn1_object_st* %call18, null
  br i1 %tobool.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %for.body
  %3 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %policies1, align 8, !tbaa !13
  %call22 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %3) #11
  %4 = bitcast %struct.asn1_object_st* %call18 to i8*
  %call24 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call22, i8* noundef nonnull %4) #10
  %tobool25.not = icmp eq i32 %call24, 0
  %inc = add nuw nsw i32 %i.048, 1
  br i1 %tobool25.not, label %if.then26, label %for.cond

if.then26:                                        ; preds = %if.end20
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef nonnull %call18) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 3
  %5 = load i64, i64* %flags, align 8, !tbaa !20
  %or = or i64 %5, 128
  store i64 %or, i64* %flags, align 8, !tbaa !20
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end6, %entry, %for.end, %if.then26, %if.then4
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 0, %if.then26 ], [ 1, %for.end ], [ 0, %entry ], [ 0, %if.end6 ], [ 0, %for.body ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_deep_copy(%struct.stack_st* noundef, i8* (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @str_copy(i8* noundef %s) #0 {
entry:
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %s, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 28) #10
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_VERIFY_PARAM_set1_email(%struct.X509_VERIFY_PARAM_st* noundef %param, i8* noundef %email, i64 noundef %emaillen) local_unnamed_addr #0 {
entry:
  %email1 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 12
  %emaillen2 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 13
  %call = tail call fastcc i32 @int_x509_param_set1(i8** noundef nonnull %email1, i64* noundef nonnull %emaillen2, i8* noundef %email, i64 noundef %emaillen) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_VERIFY_PARAM_set1_ip(%struct.X509_VERIFY_PARAM_st* noundef %param, i8* noundef %ip, i64 noundef %iplen) local_unnamed_addr #0 {
entry:
  switch i64 %iplen, label %return [
    i64 16, label %if.end
    i64 4, label %if.end
    i64 0, label %if.end
  ]

if.end:                                           ; preds = %entry, %entry, %entry
  %ip4 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 14
  %iplen5 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 15
  %call = tail call fastcc i32 @int_x509_param_set1(i8** noundef nonnull %ip4, i64* noundef nonnull %iplen5, i8* noundef %ip, i64 noundef %iplen) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_VERIFY_PARAM_set1(%struct.X509_VERIFY_PARAM_st* noundef %to, %struct.X509_VERIFY_PARAM_st* noundef %from) local_unnamed_addr #0 {
entry:
  %inh_flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %to, i64 0, i32 2
  %0 = load i32, i32* %inh_flags, align 8, !tbaa !18
  %or = or i32 %0, 1
  store i32 %or, i32* %inh_flags, align 8, !tbaa !18
  %call = tail call i32 @X509_VERIFY_PARAM_inherit(%struct.X509_VERIFY_PARAM_st* noundef %to, %struct.X509_VERIFY_PARAM_st* noundef %from) #11
  store i32 %0, i32* %inh_flags, align 8, !tbaa !18
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_VERIFY_PARAM_set1_name(%struct.X509_VERIFY_PARAM_st* nocapture noundef %param, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %name1 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 0
  %0 = load i8*, i8** %name1, align 8, !tbaa !27
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 265) #10
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %name, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 266) #10
  store i8* %call, i8** %name1, align 8, !tbaa !27
  %tobool.not = icmp ne i8* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* nocapture noundef %param, i64 noundef %flags) local_unnamed_addr #4 {
entry:
  %flags1 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 3
  %0 = load i64, i64* %flags1, align 8, !tbaa !20
  %or = or i64 %0, %flags
  %and = and i64 %flags, 1920
  %tobool.not = icmp eq i64 %and, 0
  %or3 = or i64 %or, 128
  %spec.select = select i1 %tobool.not, i64 %or, i64 %or3
  store i64 %spec.select, i64* %flags1, align 8, !tbaa !20
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @X509_VERIFY_PARAM_clear_flags(%struct.X509_VERIFY_PARAM_st* nocapture noundef %param, i64 noundef %flags) local_unnamed_addr #4 {
entry:
  %neg = xor i64 %flags, -1
  %flags1 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 3
  %0 = load i64, i64* %flags1, align 8, !tbaa !20
  %and = and i64 %0, %neg
  store i64 %and, i64* %flags1, align 8, !tbaa !20
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @X509_VERIFY_PARAM_get_flags(%struct.X509_VERIFY_PARAM_st* nocapture noundef readonly %param) local_unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8, !tbaa !20
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_VERIFY_PARAM_get_inh_flags(%struct.X509_VERIFY_PARAM_st* nocapture noundef readonly %param) local_unnamed_addr #5 {
entry:
  %inh_flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 2
  %0 = load i32, i32* %inh_flags, align 8, !tbaa !18
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @X509_VERIFY_PARAM_set_inh_flags(%struct.X509_VERIFY_PARAM_st* nocapture noundef writeonly %param, i32 noundef %flags) local_unnamed_addr #6 {
entry:
  %inh_flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 2
  store i32 %flags, i32* %inh_flags, align 8, !tbaa !18
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_VERIFY_PARAM_set_purpose(%struct.X509_VERIFY_PARAM_st* noundef %param, i32 noundef %purpose) local_unnamed_addr #0 {
entry:
  %purpose1 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 4
  %call = tail call i32 @X509_PURPOSE_set(i32* noundef nonnull %purpose1, i32 noundef %purpose) #10
  ret i32 %call
}

declare i32 @X509_PURPOSE_set(i32* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_VERIFY_PARAM_set_trust(%struct.X509_VERIFY_PARAM_st* noundef %param, i32 noundef %trust) local_unnamed_addr #0 {
entry:
  %trust1 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 5
  %call = tail call i32 @X509_TRUST_set(i32* noundef nonnull %trust1, i32 noundef %trust) #10
  ret i32 %call
}

declare i32 @X509_TRUST_set(i32* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_VERIFY_PARAM_set_depth(%struct.X509_VERIFY_PARAM_st* nocapture noundef writeonly %param, i32 noundef %depth) local_unnamed_addr #6 {
entry:
  %depth1 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 6
  store i32 %depth, i32* %depth1, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_VERIFY_PARAM_set_auth_level(%struct.X509_VERIFY_PARAM_st* nocapture noundef writeonly %param, i32 noundef %auth_level) local_unnamed_addr #6 {
entry:
  %auth_level1 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 7
  store i32 %auth_level, i32* %auth_level1, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @X509_VERIFY_PARAM_get_time(%struct.X509_VERIFY_PARAM_st* nocapture noundef readonly %param) local_unnamed_addr #5 {
entry:
  %check_time = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 1
  %0 = load i64, i64* %check_time, align 8, !tbaa !21
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @X509_VERIFY_PARAM_set_time(%struct.X509_VERIFY_PARAM_st* nocapture noundef %param, i64 noundef %t) local_unnamed_addr #4 {
entry:
  %check_time = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 1
  store i64 %t, i64* %check_time, align 8, !tbaa !21
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8, !tbaa !20
  %or = or i64 %0, 2
  store i64 %or, i64* %flags, align 8, !tbaa !20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_VERIFY_PARAM_add0_policy(%struct.X509_VERIFY_PARAM_st* nocapture noundef %param, %struct.asn1_object_st* noundef %policy) local_unnamed_addr #0 {
entry:
  %policies = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 8
  %0 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %policies, align 8, !tbaa !13
  %cmp = icmp eq %struct.stack_st_ASN1_OBJECT* %0, null
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #10
  %1 = bitcast %struct.stack_st_ASN1_OBJECT** %policies to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %1, align 8, !tbaa !13
  %cmp3 = icmp eq %struct.stack_st* %call, null
  %2 = bitcast %struct.stack_st* %call to %struct.stack_st_ASN1_OBJECT*
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  %3 = phi %struct.stack_st_ASN1_OBJECT* [ %2, %if.then ], [ %0, %entry ]
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %3) #11
  %4 = bitcast %struct.asn1_object_st* %policy to i8*
  %call9 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call7, i8* noundef %4) #10
  %tobool.not = icmp ne i32 %call9, 0
  %. = zext i1 %tobool.not to i32
  br label %return

return:                                           ; preds = %if.end5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %., %if.end5 ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @X509_VERIFY_PARAM_get0_host(%struct.X509_VERIFY_PARAM_st* nocapture noundef readonly %param, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %hosts = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 9
  %0 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %hosts, align 8, !tbaa !14
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %0) #11
  %call1 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %idx) #10
  ret i8* %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_VERIFY_PARAM_set1_host(%struct.X509_VERIFY_PARAM_st* nocapture noundef %param, i8* noundef %name, i64 noundef %namelen) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @int_x509_param_set_hosts(%struct.X509_VERIFY_PARAM_st* noundef %param, i32 noundef 0, i8* noundef %name, i64 noundef %namelen) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @int_x509_param_set_hosts(%struct.X509_VERIFY_PARAM_st* nocapture noundef %vpm, i32 noundef %mode, i8* noundef %name, i64 noundef %namelen) unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %namelen, 0
  %cmp1 = icmp eq i8* %name, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %land.lhs.true

if.then:                                          ; preds = %entry
  br i1 %cmp1, label %if.end18, label %if.end11

land.lhs.true:                                    ; preds = %entry
  %cmp3 = icmp ugt i64 %namelen, 1
  %sub = sext i1 %cmp3 to i64
  %cond7 = add i64 %sub, %namelen
  %call8 = tail call i8* @memchr(i8* noundef nonnull %name, i32 noundef 0, i64 noundef %cond7) #12
  %tobool9.not = icmp eq i8* %call8, null
  br i1 %tobool9.not, label %land.lhs.true13, label %cleanup

if.end11:                                         ; preds = %if.then
  %call = tail call i64 @strlen(i8* noundef nonnull %name) #12
  %cmp12.not = icmp eq i64 %call, 0
  br i1 %cmp12.not, label %if.end18, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true, %if.end11
  %namelen.addr.097 = phi i64 [ %call, %if.end11 ], [ %namelen, %land.lhs.true ]
  %sub14 = add i64 %namelen.addr.097, -1
  %arrayidx = getelementptr inbounds i8, i8* %name, i64 %sub14
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %cmp15 = icmp eq i8 %0, 0
  %spec.select = select i1 %cmp15, i64 %sub14, i64 %namelen.addr.097
  br label %if.end18

if.end18:                                         ; preds = %if.then, %land.lhs.true13, %if.end11
  %namelen.addr.1 = phi i64 [ 0, %if.end11 ], [ %spec.select, %land.lhs.true13 ], [ 0, %if.then ]
  %cmp19 = icmp eq i32 %mode, 0
  br i1 %cmp19, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end18
  %hosts = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %vpm, i64 0, i32 9
  %1 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %hosts, align 8, !tbaa !14
  %call22 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %1) #11
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call22, void (i8*)* noundef nonnull @str_free) #10
  store %struct.stack_st_OPENSSL_STRING* null, %struct.stack_st_OPENSSL_STRING** %hosts, align 8, !tbaa !14
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end18
  %cmp29 = icmp eq i64 %namelen.addr.1, 0
  %or.cond65 = select i1 %cmp1, i1 true, i1 %cmp29
  br i1 %or.cond65, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.end25
  %call33 = tail call i8* @CRYPTO_strndup(i8* noundef nonnull %name, i64 noundef %namelen.addr.1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 59) #10
  %cmp34 = icmp eq i8* %call33, null
  br i1 %cmp34, label %cleanup, label %if.end37

if.end37:                                         ; preds = %if.end32
  %hosts38 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %vpm, i64 0, i32 9
  %2 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %hosts38, align 8, !tbaa !14
  %cmp39 = icmp eq %struct.stack_st_OPENSSL_STRING* %2, null
  br i1 %cmp39, label %land.lhs.true41, label %if.end47

land.lhs.true41:                                  ; preds = %if.end37
  %call42 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #10
  %3 = bitcast %struct.stack_st_OPENSSL_STRING** %hosts38 to %struct.stack_st**
  store %struct.stack_st* %call42, %struct.stack_st** %3, align 8, !tbaa !14
  %cmp44 = icmp eq %struct.stack_st* %call42, null
  %4 = bitcast %struct.stack_st* %call42 to %struct.stack_st_OPENSSL_STRING*
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true41
  tail call void @CRYPTO_free(i8* noundef nonnull %call33, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 65) #10
  br label %cleanup

if.end47:                                         ; preds = %land.lhs.true41, %if.end37
  %5 = phi %struct.stack_st_OPENSSL_STRING* [ %4, %land.lhs.true41 ], [ %2, %if.end37 ]
  %call49 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %5) #11
  %call51 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call49, i8* noundef nonnull %call33) #10
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %cleanup

if.then53:                                        ; preds = %if.end47
  tail call void @CRYPTO_free(i8* noundef nonnull %call33, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 70) #10
  %6 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %hosts38, align 8, !tbaa !14
  %call55 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %6) #11
  %call56 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call55) #10
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then59, label %cleanup

if.then59:                                        ; preds = %if.then53
  %7 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %hosts38, align 8, !tbaa !14
  %call61 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %7) #11
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call61) #10
  store %struct.stack_st_OPENSSL_STRING* null, %struct.stack_st_OPENSSL_STRING** %hosts38, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then53, %if.then59, %if.end32, %if.end25, %land.lhs.true, %if.then46
  %retval.0 = phi i32 [ 0, %if.then46 ], [ 0, %land.lhs.true ], [ 1, %if.end25 ], [ 0, %if.end32 ], [ 0, %if.then59 ], [ 0, %if.then53 ], [ 1, %if.end47 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_VERIFY_PARAM_add1_host(%struct.X509_VERIFY_PARAM_st* nocapture noundef %param, i8* noundef %name, i64 noundef %namelen) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @int_x509_param_set_hosts(%struct.X509_VERIFY_PARAM_st* noundef %param, i32 noundef 1, i8* noundef %name, i64 noundef %namelen) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_VERIFY_PARAM_set_hostflags(%struct.X509_VERIFY_PARAM_st* nocapture noundef writeonly %param, i32 noundef %flags) local_unnamed_addr #6 {
entry:
  %hostflags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 10
  store i32 %flags, i32* %hostflags, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_VERIFY_PARAM_get_hostflags(%struct.X509_VERIFY_PARAM_st* nocapture noundef readonly %param) local_unnamed_addr #5 {
entry:
  %hostflags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 10
  %0 = load i32, i32* %hostflags, align 8, !tbaa !22
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @X509_VERIFY_PARAM_get0_peername(%struct.X509_VERIFY_PARAM_st* nocapture noundef readonly %param) local_unnamed_addr #5 {
entry:
  %peername = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 11
  %0 = load i8*, i8** %peername, align 8, !tbaa !15
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define void @X509_VERIFY_PARAM_move_peername(%struct.X509_VERIFY_PARAM_st* nocapture noundef %to, %struct.X509_VERIFY_PARAM_st* noundef %from) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.X509_VERIFY_PARAM_st* %from, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %peername1 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %from, i64 0, i32 11
  %0 = load i8*, i8** %peername1, align 8, !tbaa !15
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %0, %cond.true ], [ null, %entry ]
  %peername2 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %to, i64 0, i32 11
  %1 = load i8*, i8** %peername2, align 8, !tbaa !15
  %cmp3.not = icmp eq i8* %1, %cond
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 424) #10
  store i8* %cond, i8** %peername2, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  br i1 %cmp.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %peername7 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %from, i64 0, i32 11
  store i8* null, i8** %peername7, align 8, !tbaa !15
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @X509_VERIFY_PARAM_get0_email(%struct.X509_VERIFY_PARAM_st* nocapture noundef readonly %param) local_unnamed_addr #5 {
entry:
  %email = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 12
  %0 = load i8*, i8** %email, align 8, !tbaa !16
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @int_x509_param_set1(i8** nocapture noundef %pdest, i64* noundef writeonly %pdestlen, i8* noundef %src, i64 noundef %srclen) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %src, null
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp eq i64 %srclen, 0
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %call = tail call i64 @strlen(i8* noundef nonnull %src) #12
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %srclen.addr.0 = phi i64 [ %call, %if.then1 ], [ %srclen, %if.then ]
  %add = add i64 %srclen.addr.0, 1
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 247) #10
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call i8* @memcpy(i8* noundef nonnull %call2, i8* noundef nonnull %src, i64 noundef %srclen.addr.0) #10
  %arrayidx = getelementptr inbounds i8, i8* %call2, i64 %srclen.addr.0
  store i8 0, i8* %arrayidx, align 1, !tbaa !28
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.end5
  %srclen.addr.1 = phi i64 [ %srclen.addr.0, %if.end5 ], [ 0, %entry ]
  %tmp.0 = phi i8* [ %call2, %if.end5 ], [ null, %entry ]
  %0 = load i8*, i8** %pdest, align 8, !tbaa !29
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 256) #10
  store i8* %tmp.0, i8** %pdest, align 8, !tbaa !29
  %cmp8.not = icmp eq i64* %pdestlen, null
  br i1 %cmp8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end7
  store i64 %srclen.addr.1, i64* %pdestlen, align 8, !tbaa !30
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then9, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %if.then9 ], [ 1, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @X509_VERIFY_PARAM_get1_ip_asc(%struct.X509_VERIFY_PARAM_st* noundef %param) local_unnamed_addr #0 {
entry:
  %iplen = alloca i64, align 8
  %0 = bitcast i64* %iplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %call = call fastcc i8* @int_X509_VERIFY_PARAM_get0_ip(%struct.X509_VERIFY_PARAM_st* noundef %param, i64* noundef nonnull %iplen) #11
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %iplen, align 8, !tbaa !30
  %conv = trunc i64 %1 to i32
  %call1 = call i8* @ossl_ipaddr_to_asc(i8* noundef nonnull %call, i32 noundef %conv) #10
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i8* [ %call1, %cond.false ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i8* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i8* @int_X509_VERIFY_PARAM_get0_ip(%struct.X509_VERIFY_PARAM_st* noundef readonly %param, i64* noundef writeonly %plen) unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.X509_VERIFY_PARAM_st* %param, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %ip = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 14
  %0 = load i8*, i8** %ip, align 8, !tbaa !17
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp2.not = icmp eq i64* %plen, null
  br i1 %cmp2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %iplen = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 15
  %1 = load i64, i64* %iplen, align 8, !tbaa !24
  store i64 %1, i64* %plen, align 8, !tbaa !30
  br label %return

return:                                           ; preds = %if.end, %if.then3, %entry, %lor.lhs.false
  %retval.0 = phi i8* [ null, %lor.lhs.false ], [ null, %entry ], [ %0, %if.then3 ], [ %0, %if.end ]
  ret i8* %retval.0
}

declare i8* @ossl_ipaddr_to_asc(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_VERIFY_PARAM_set1_ip_asc(%struct.X509_VERIFY_PARAM_st* noundef %param, i8* noundef %ipasc) local_unnamed_addr #0 {
entry:
  %ipout = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %ipout, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %call = call i32 @ossl_a2i_ipadd(i8* noundef nonnull %0, i8* noundef %ipasc) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %call to i64
  %call3 = call i32 @X509_VERIFY_PARAM_set1_ip(%struct.X509_VERIFY_PARAM_st* noundef %param, i8* noundef nonnull %0, i64 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i32 @ossl_a2i_ipadd(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_VERIFY_PARAM_get_depth(%struct.X509_VERIFY_PARAM_st* nocapture noundef readonly %param) local_unnamed_addr #5 {
entry:
  %depth = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 6
  %0 = load i32, i32* %depth, align 8, !tbaa !11
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_VERIFY_PARAM_get_auth_level(%struct.X509_VERIFY_PARAM_st* nocapture noundef readonly %param) local_unnamed_addr #5 {
entry:
  %auth_level = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 7
  %0 = load i32, i32* %auth_level, align 4, !tbaa !12
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @X509_VERIFY_PARAM_get0_name(%struct.X509_VERIFY_PARAM_st* nocapture noundef readonly %param) local_unnamed_addr #5 {
entry:
  %name = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %param, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8, !tbaa !27
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_VERIFY_PARAM_add0_table(%struct.X509_VERIFY_PARAM_st* noundef %param) local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_X509_VERIFY_PARAM*, %struct.stack_st_X509_VERIFY_PARAM** @param_table, align 8, !tbaa !29
  %cmp = icmp eq %struct.stack_st_X509_VERIFY_PARAM* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.X509_VERIFY_PARAM_st**, %struct.X509_VERIFY_PARAM_st**)* @param_cmp to i32 (i8*, i8*)*)) #10
  store %struct.stack_st* %call1, %struct.stack_st** bitcast (%struct.stack_st_X509_VERIFY_PARAM** @param_table to %struct.stack_st**), align 8, !tbaa !29
  %cmp2 = icmp eq %struct.stack_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end12

if.else:                                          ; preds = %entry
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_X509_VERIFY_PARAM_sk_type(%struct.stack_st_X509_VERIFY_PARAM* noundef nonnull %0) #11
  %1 = bitcast %struct.X509_VERIFY_PARAM_st* %param to i8*
  %call6 = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call4, i8* noundef %1) #10
  %cmp7 = icmp sgt i32 %call6, -1
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.else
  %2 = load %struct.stack_st_X509_VERIFY_PARAM*, %struct.stack_st_X509_VERIFY_PARAM** @param_table, align 8, !tbaa !29
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_X509_VERIFY_PARAM_sk_type(%struct.stack_st_X509_VERIFY_PARAM* noundef %2) #11
  %call10 = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %call9, i32 noundef %call6) #10
  %3 = bitcast i8* %call10 to %struct.X509_VERIFY_PARAM_st*
  tail call void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef %3) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then, %if.else, %if.then8
  %.pre-phi = bitcast %struct.X509_VERIFY_PARAM_st* %param to i8*
  %4 = load %struct.stack_st_X509_VERIFY_PARAM*, %struct.stack_st_X509_VERIFY_PARAM** @param_table, align 8, !tbaa !29
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_X509_VERIFY_PARAM_sk_type(%struct.stack_st_X509_VERIFY_PARAM* noundef %4) #11
  %call15 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call13, i8* noundef %.pre-phi) #10
  %tobool.not = icmp ne i32 %call15, 0
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %., %if.end12 ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @param_cmp(%struct.X509_VERIFY_PARAM_st** nocapture noundef readonly %a, %struct.X509_VERIFY_PARAM_st** nocapture noundef readonly %b) #7 {
entry:
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %a, align 8, !tbaa !29
  %name = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %0, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8, !tbaa !27
  %2 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %b, align 8, !tbaa !29
  %name1 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %2, i64 0, i32 0
  %3 = load i8*, i8** %name1, align 8, !tbaa !27
  %call = tail call i32 @strcmp(i8* noundef %1, i8* noundef %3) #12
  ret i32 %call
}

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_VERIFY_PARAM_sk_type(%struct.stack_st_X509_VERIFY_PARAM* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_VERIFY_PARAM* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_delete(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_VERIFY_PARAM_get_count() local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_X509_VERIFY_PARAM*, %struct.stack_st_X509_VERIFY_PARAM** @param_table, align 8, !tbaa !29
  %tobool.not = icmp eq %struct.stack_st_X509_VERIFY_PARAM* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_VERIFY_PARAM_sk_type(%struct.stack_st_X509_VERIFY_PARAM* noundef nonnull %0) #11
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %add = add nsw i32 %call1, 5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %num.0 = phi i32 [ %add, %if.then ], [ 5, %entry ]
  ret i32 %num.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_VERIFY_PARAM_sk_type(%struct.stack_st_X509_VERIFY_PARAM* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_VERIFY_PARAM* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_get0(i32 noundef %id) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %id, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %idx.ext = sext i32 %id to i64
  %add.ptr = getelementptr inbounds [5 x %struct.X509_VERIFY_PARAM_st], [5 x %struct.X509_VERIFY_PARAM_st]* @default_table, i64 0, i64 %idx.ext
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load %struct.stack_st_X509_VERIFY_PARAM*, %struct.stack_st_X509_VERIFY_PARAM** @param_table, align 8, !tbaa !29
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_VERIFY_PARAM_sk_type(%struct.stack_st_X509_VERIFY_PARAM* noundef %0) #11
  %sub = add nsw i32 %id, -5
  %call1 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %sub) #10
  %1 = bitcast i8* %call1 to %struct.X509_VERIFY_PARAM_st*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.X509_VERIFY_PARAM_st* [ %add.ptr, %if.then ], [ %1, %if.end ]
  ret %struct.X509_VERIFY_PARAM_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_lookup(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %pm = alloca %struct.X509_VERIFY_PARAM_st, align 8
  %0 = bitcast %struct.X509_VERIFY_PARAM_st* %pm to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #13
  %name1 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %pm, i64 0, i32 0
  store i8* %name, i8** %name1, align 8, !tbaa !27
  %1 = load %struct.stack_st_X509_VERIFY_PARAM*, %struct.stack_st_X509_VERIFY_PARAM** @param_table, align 8, !tbaa !29
  %cmp.not = icmp eq %struct.stack_st_X509_VERIFY_PARAM* %1, null
  br i1 %cmp.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_VERIFY_PARAM_sk_type(%struct.stack_st_X509_VERIFY_PARAM* noundef nonnull %1) #11
  %call3 = call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call, i8* noundef nonnull %0) #10
  %cmp4 = icmp sgt i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.then
  %2 = load %struct.stack_st_X509_VERIFY_PARAM*, %struct.stack_st_X509_VERIFY_PARAM** @param_table, align 8, !tbaa !29
  %call6 = call fastcc %struct.stack_st* @ossl_check_const_X509_VERIFY_PARAM_sk_type(%struct.stack_st_X509_VERIFY_PARAM* noundef %2) #11
  %call7 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call6, i32 noundef %call3) #10
  %3 = bitcast i8* %call7 to %struct.X509_VERIFY_PARAM_st*
  br label %cleanup

if.end8:                                          ; preds = %if.then, %entry
  %call9 = call fastcc %struct.X509_VERIFY_PARAM_st* @OBJ_bsearch_table(%struct.X509_VERIFY_PARAM_st* noundef nonnull %pm) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then5
  %retval.0 = phi %struct.X509_VERIFY_PARAM_st* [ %3, %if.then5 ], [ %call9, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #13
  ret %struct.X509_VERIFY_PARAM_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_VERIFY_PARAM_st* @OBJ_bsearch_table(%struct.X509_VERIFY_PARAM_st* noundef %key) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_VERIFY_PARAM_st* %key to i8*
  %call = tail call i8* @OBJ_bsearch_(i8* noundef %0, i8* noundef bitcast ([5 x %struct.X509_VERIFY_PARAM_st]* @default_table to i8*), i32 noundef 5, i32 noundef 112, i32 (i8*, i8*)* noundef nonnull @table_cmp_BSEARCH_CMP_FN) #10
  %1 = bitcast i8* %call to %struct.X509_VERIFY_PARAM_st*
  ret %struct.X509_VERIFY_PARAM_st* %1
}

; Function Attrs: noinline nounwind uwtable
define void @X509_VERIFY_PARAM_table_cleanup() local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_X509_VERIFY_PARAM*, %struct.stack_st_X509_VERIFY_PARAM** @param_table, align 8, !tbaa !29
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_VERIFY_PARAM_sk_type(%struct.stack_st_X509_VERIFY_PARAM* noundef %0) #11
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.X509_VERIFY_PARAM_st*)* @X509_VERIFY_PARAM_free to void (i8*)*)) #10
  store %struct.stack_st_X509_VERIFY_PARAM* null, %struct.stack_st_X509_VERIFY_PARAM** @param_table, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #8

declare i8* @OBJ_bsearch_(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @table_cmp_BSEARCH_CMP_FN(i8* nocapture noundef readonly %a_, i8* nocapture noundef readonly %b_) #7 {
entry:
  %0 = bitcast i8* %a_ to %struct.X509_VERIFY_PARAM_st*
  %1 = bitcast i8* %b_ to %struct.X509_VERIFY_PARAM_st*
  %call = tail call fastcc i32 @table_cmp(%struct.X509_VERIFY_PARAM_st* noundef %0, %struct.X509_VERIFY_PARAM_st* noundef %1) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i32 @table_cmp(%struct.X509_VERIFY_PARAM_st* nocapture noundef readonly %a, %struct.X509_VERIFY_PARAM_st* nocapture noundef readonly %b) unnamed_addr #7 {
entry:
  %name = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %a, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8, !tbaa !27
  %name1 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %b, i64 0, i32 0
  %1 = load i8*, i8** %name1, align 8, !tbaa !27
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef %1) #12
  ret i32 %call
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !10, i64 36}
!5 = !{!"X509_VERIFY_PARAM_st", !6, i64 0, !9, i64 8, !10, i64 16, !9, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !6, i64 48, !6, i64 56, !10, i64 64, !6, i64 72, !6, i64 80, !9, i64 88, !6, i64 96, !9, i64 104}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!5, !10, i64 40}
!12 = !{!5, !10, i64 44}
!13 = !{!5, !6, i64 48}
!14 = !{!5, !6, i64 56}
!15 = !{!5, !6, i64 72}
!16 = !{!5, !6, i64 80}
!17 = !{!5, !6, i64 96}
!18 = !{!5, !10, i64 16}
!19 = !{!5, !10, i64 32}
!20 = !{!5, !9, i64 24}
!21 = !{!5, !9, i64 8}
!22 = !{!5, !10, i64 64}
!23 = !{!5, !9, i64 88}
!24 = !{!5, !9, i64 104}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!5, !6, i64 0}
!28 = !{!7, !7, i64 0}
!29 = !{!6, !6, i64 0}
!30 = !{!9, !9, i64 0}

; ModuleID = 'crypto/pkcs12/p12_npas.c'
source_filename = "crypto/pkcs12/p12_npas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PKCS12_st = type { %struct.asn1_string_st*, %struct.PKCS12_MAC_DATA_st*, %struct.pkcs7_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.PKCS12_MAC_DATA_st = type { %struct.X509_sig_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_sig_st = type opaque
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_PKCS7 = type opaque
%struct.stack_st = type opaque
%struct.stack_st_PKCS12_SAFEBAG = type opaque
%struct.pkcs7_encrypted_st = type { %struct.asn1_string_st*, %struct.pkcs7_enc_content_st* }
%struct.pkcs7_enc_content_st = type { %struct.asn1_object_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_cipher_st*, %struct.PKCS7_CTX_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.evp_cipher_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.PBEPARAM_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.PKCS12_SAFEBAG_st = type { %struct.asn1_object_st*, %union.anon.1, %struct.stack_st_X509_ATTRIBUTE* }
%union.anon.1 = type { %struct.pkcs12_bag_st* }
%struct.pkcs12_bag_st = type { %struct.asn1_object_st*, %union.anon.2 }
%union.anon.2 = type { %struct.asn1_string_st* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.pkcs8_priv_key_info_st = type opaque

@.str = private unnamed_addr constant [25 x i8] c"crypto/pkcs12/p12_npas.c\00", align 1
@__func__.PKCS12_newpass = private unnamed_addr constant [15 x i8] c"PKCS12_newpass\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_newpass(%struct.PKCS12_st* noundef %p12, i8* noundef %oldpass, i8* noundef %newpass) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.PKCS12_st* %p12, null
  br i1 %cmp, label %return.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @PKCS12_verify_mac(%struct.PKCS12_st* noundef nonnull %p12, i8* noundef %oldpass, i32 noundef -1) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return.sink.split, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = tail call fastcc i32 @newpass_p12(%struct.PKCS12_st* noundef nonnull %p12, i8* noundef %oldpass, i8* noundef %newpass) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.end2, %if.end, %entry
  %.sink10 = phi i32 [ 37, %entry ], [ 44, %if.end ], [ 49, %if.end2 ]
  %.sink = phi i32 [ 105, %entry ], [ 113, %if.end ], [ 114, %if.end2 ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink10, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.PKCS12_newpass, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef %.sink, i8* noundef null) #4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end2
  %retval.0 = phi i32 [ 1, %if.end2 ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @PKCS12_verify_mac(%struct.PKCS12_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @newpass_p12(%struct.PKCS12_st* noundef %p12, i8* noundef %oldpass, i8* noundef %newpass) unnamed_addr #0 {
entry:
  %pbe_nid = alloca i32, align 4
  %pbe_iter = alloca i32, align 4
  %pbe_saltlen = alloca i32, align 4
  %macoct = alloca %struct.asn1_string_st*, align 8
  %mac = alloca [64 x i8], align 16
  %maclen = alloca i32, align 4
  %0 = bitcast i32* %pbe_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  store i32 0, i32* %pbe_nid, align 4, !tbaa !4
  %1 = bitcast i32* %pbe_iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  store i32 0, i32* %pbe_iter, align 4, !tbaa !4
  %2 = bitcast i32* %pbe_saltlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #6
  store i32 0, i32* %pbe_saltlen, align 4, !tbaa !4
  %3 = bitcast %struct.asn1_string_st** %macoct to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %macoct, align 8, !tbaa !8
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %mac, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #6
  %5 = bitcast i32* %maclen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #6
  %call = tail call %struct.stack_st_PKCS7* @PKCS12_unpack_authsafes(%struct.PKCS12_st* noundef %p12) #4
  %cmp = icmp eq %struct.stack_st_PKCS7* %call, null
  br i1 %cmp, label %if.end79, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #4
  %6 = bitcast %struct.stack_st* %call1 to %struct.stack_st_PKCS7*
  %cmp2 = icmp eq %struct.stack_st* %call1, null
  br i1 %cmp2, label %if.end79, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef nonnull %call) #5
  %call6151 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #4
  %cmp7152 = icmp sgt i32 %call6151, 0
  br i1 %cmp7152, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0153 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call9 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call5, i32 noundef %i.0153) #4
  %7 = bitcast i8* %call9 to %struct.pkcs7_st*
  %type = getelementptr inbounds i8, i8* %call9, i64 24
  %8 = bitcast i8* %type to %struct.asn1_object_st**
  %9 = load %struct.asn1_object_st*, %struct.asn1_object_st** %8, align 8, !tbaa !10
  %call10 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %9) #4
  switch i32 %call10, label %for.inc [
    i32 21, label %if.then12
    i32 26, label %if.then15
  ]

if.then12:                                        ; preds = %for.body
  %call13 = tail call %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_unpack_p7data(%struct.pkcs7_st* noundef nonnull %7) #4
  %cmp23.old = icmp eq %struct.stack_st_PKCS12_SAFEBAG* %call13, null
  br i1 %cmp23.old, label %if.end79, label %if.end25

if.then15:                                        ; preds = %for.body
  %call16 = tail call %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_unpack_p7encdata(%struct.pkcs7_st* noundef nonnull %7, i8* noundef %oldpass, i32 noundef -1) #4
  %d = getelementptr inbounds i8, i8* %call9, i64 32
  %encrypted = bitcast i8* %d to %struct.pkcs7_encrypted_st**
  %10 = load %struct.pkcs7_encrypted_st*, %struct.pkcs7_encrypted_st** %encrypted, align 8, !tbaa !14
  %enc_data = getelementptr inbounds %struct.pkcs7_encrypted_st, %struct.pkcs7_encrypted_st* %10, i64 0, i32 1
  %11 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data, align 8, !tbaa !15
  %algorithm = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %11, i64 0, i32 1
  %12 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algorithm, align 8, !tbaa !17
  %call17 = call fastcc i32 @alg_get(%struct.X509_algor_st* noundef %12, i32* noundef nonnull %pbe_nid, i32* noundef nonnull %pbe_iter, i32* noundef nonnull %pbe_saltlen) #5
  %tobool = icmp eq i32 %call17, 0
  %cmp23 = icmp eq %struct.stack_st_PKCS12_SAFEBAG* %call16, null
  %or.cond = select i1 %tobool, i1 true, i1 %cmp23
  br i1 %or.cond, label %if.end79, label %if.end25.thread

if.end25:                                         ; preds = %if.then12
  %call26 = tail call fastcc i32 @newpass_bags(%struct.stack_st_PKCS12_SAFEBAG* noundef nonnull %call13, i8* noundef %oldpass, i8* noundef %newpass) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end79, label %if.then31

if.end25.thread:                                  ; preds = %if.then15
  %call26127 = tail call fastcc i32 @newpass_bags(%struct.stack_st_PKCS12_SAFEBAG* noundef nonnull %call16, i8* noundef %oldpass, i8* noundef %newpass) #5
  %tobool27.not128 = icmp eq i32 %call26127, 0
  br i1 %tobool27.not128, label %if.end79, label %if.else33

if.then31:                                        ; preds = %if.end25
  %call32 = tail call %struct.pkcs7_st* @PKCS12_pack_p7data(%struct.stack_st_PKCS12_SAFEBAG* noundef nonnull %call13) #4
  br label %if.end35

if.else33:                                        ; preds = %if.end25.thread
  %13 = load i32, i32* %pbe_nid, align 4, !tbaa !4
  %14 = load i32, i32* %pbe_saltlen, align 4, !tbaa !4
  %15 = load i32, i32* %pbe_iter, align 4, !tbaa !4
  %call34 = tail call %struct.pkcs7_st* @PKCS12_pack_p7encdata(i32 noundef %13, i8* noundef %newpass, i32 noundef -1, i8* noundef null, i32 noundef %14, i32 noundef %15, %struct.stack_st_PKCS12_SAFEBAG* noundef nonnull %call16) #4
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then31
  %bags.1130 = phi %struct.stack_st_PKCS12_SAFEBAG* [ %call13, %if.then31 ], [ %call16, %if.else33 ]
  %p7new.0 = phi %struct.pkcs7_st* [ %call32, %if.then31 ], [ %call34, %if.else33 ]
  %cmp36 = icmp eq %struct.pkcs7_st* %p7new.0, null
  br i1 %cmp36, label %if.end79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end35
  %call37 = tail call fastcc %struct.stack_st* @ossl_check_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef nonnull %6) #5
  %16 = bitcast %struct.pkcs7_st* %p7new.0 to i8*
  %call39 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call37, i8* noundef nonnull %16) #4
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end79, label %if.end42

if.end42:                                         ; preds = %lor.lhs.false
  %call43 = tail call fastcc %struct.stack_st* @ossl_check_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef nonnull %bags.1130) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call43, void (i8*)* noundef bitcast (void (%struct.PKCS12_SAFEBAG_st*)* @PKCS12_SAFEBAG_free to void (i8*)*)) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end42
  %inc = add nuw nsw i32 %i.0153, 1
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #4
  %cmp7 = icmp slt i32 %inc, %call6
  br i1 %cmp7, label %for.body, label %for.end, !llvm.loop !19

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %authsafes = getelementptr inbounds %struct.PKCS12_st, %struct.PKCS12_st* %p12, i64 0, i32 2
  %17 = load %struct.pkcs7_st*, %struct.pkcs7_st** %authsafes, align 8, !tbaa !21
  %d45 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %17, i64 0, i32 5
  %data = bitcast %union.anon* %d45 to %struct.asn1_string_st**
  %18 = load %struct.asn1_string_st*, %struct.asn1_string_st** %data, align 8, !tbaa !14
  %call46 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #4
  %19 = load %struct.pkcs7_st*, %struct.pkcs7_st** %authsafes, align 8, !tbaa !21
  %d48 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %19, i64 0, i32 5
  %data49 = bitcast %union.anon* %d48 to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call46, %struct.asn1_string_st** %data49, align 8, !tbaa !14
  %cmp50 = icmp eq %struct.asn1_string_st* %call46, null
  br i1 %cmp50, label %if.else69, label %if.end52

if.end52:                                         ; preds = %for.end
  %call53 = tail call i32 @PKCS12_pack_authsafes(%struct.PKCS12_st* noundef nonnull %p12, %struct.stack_st_PKCS7* noundef nonnull %6) #4
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.else69, label %if.end56

if.end56:                                         ; preds = %if.end52
  %call57 = call i32 @PKCS12_gen_mac(%struct.PKCS12_st* noundef nonnull %p12, i8* noundef %newpass, i32 noundef -1, i8* noundef nonnull %4, i32* noundef nonnull %maclen) #4
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.else69, label %err

err:                                              ; preds = %if.end56
  %mac61 = getelementptr inbounds %struct.PKCS12_st, %struct.PKCS12_st* %p12, i64 0, i32 1
  %20 = load %struct.PKCS12_MAC_DATA_st*, %struct.PKCS12_MAC_DATA_st** %mac61, align 8, !tbaa !23
  %dinfo = getelementptr inbounds %struct.PKCS12_MAC_DATA_st, %struct.PKCS12_MAC_DATA_st* %20, i64 0, i32 0
  %21 = load %struct.X509_sig_st*, %struct.X509_sig_st** %dinfo, align 8, !tbaa !24
  call void @X509_SIG_getm(%struct.X509_sig_st* noundef %21, %struct.X509_algor_st** noundef null, %struct.asn1_string_st** noundef nonnull %macoct) #4
  %22 = load %struct.asn1_string_st*, %struct.asn1_string_st** %macoct, align 8, !tbaa !8
  %23 = load i32, i32* %maclen, align 4, !tbaa !4
  %call63 = call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef %22, i8* noundef nonnull %4, i32 noundef %23) #4
  %tobool64.not = icmp eq i32 %call63, 0
  %not.tobool64.not150 = xor i1 %tobool64.not, true
  %spec.select125 = zext i1 %not.tobool64.not150 to i32
  br i1 %tobool64.not, label %if.else69, label %if.then68

if.then68:                                        ; preds = %err
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %18) #4
  br label %if.end79

if.else69:                                        ; preds = %if.end52, %if.end56, %for.end, %err
  %rv.0144 = phi i32 [ %spec.select125, %err ], [ 0, %for.end ], [ 0, %if.end56 ], [ 0, %if.end52 ]
  %cmp70.not = icmp eq %struct.asn1_string_st* %18, null
  br i1 %cmp70.not, label %if.end79, label %if.then71

if.then71:                                        ; preds = %if.else69
  %24 = load %struct.pkcs7_st*, %struct.pkcs7_st** %authsafes, align 8, !tbaa !21
  %d73 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %24, i64 0, i32 5
  %data74 = bitcast %union.anon* %d73 to %struct.asn1_string_st**
  %25 = load %struct.asn1_string_st*, %struct.asn1_string_st** %data74, align 8, !tbaa !14
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %25) #4
  %26 = load %struct.pkcs7_st*, %struct.pkcs7_st** %authsafes, align 8, !tbaa !21
  %d76 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %26, i64 0, i32 5
  %data77 = bitcast %union.anon* %d76 to %struct.asn1_string_st**
  store %struct.asn1_string_st* %18, %struct.asn1_string_st** %data77, align 8, !tbaa !14
  br label %if.end79

if.end79:                                         ; preds = %if.then12, %if.end35, %lor.lhs.false, %if.end25, %if.then15, %if.end25.thread, %entry, %if.end, %if.else69, %if.then71, %if.then68
  %rv.0143 = phi i32 [ %rv.0144, %if.else69 ], [ %rv.0144, %if.then71 ], [ %spec.select125, %if.then68 ], [ 0, %if.end ], [ 0, %entry ], [ 0, %if.end25.thread ], [ 0, %if.then15 ], [ 0, %if.end25 ], [ 0, %lor.lhs.false ], [ 0, %if.end35 ], [ 0, %if.then12 ]
  %newsafes.0140 = phi %struct.stack_st_PKCS7* [ %6, %if.else69 ], [ %6, %if.then71 ], [ %6, %if.then68 ], [ null, %if.end ], [ null, %entry ], [ %6, %if.end25.thread ], [ %6, %if.then15 ], [ %6, %if.end25 ], [ %6, %lor.lhs.false ], [ %6, %if.end35 ], [ %6, %if.then12 ]
  %bags.3138 = phi %struct.stack_st_PKCS12_SAFEBAG* [ null, %if.else69 ], [ null, %if.then71 ], [ null, %if.then68 ], [ null, %if.end ], [ null, %entry ], [ null, %if.then12 ], [ %bags.1130, %if.end35 ], [ %bags.1130, %lor.lhs.false ], [ %call13, %if.end25 ], [ %call16, %if.then15 ], [ %call16, %if.end25.thread ]
  %call80 = call fastcc %struct.stack_st* @ossl_check_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %bags.3138) #5
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call80, void (i8*)* noundef bitcast (void (%struct.PKCS12_SAFEBAG_st*)* @PKCS12_SAFEBAG_free to void (i8*)*)) #4
  %call82 = call fastcc %struct.stack_st* @ossl_check_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef %call) #5
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call82, void (i8*)* noundef bitcast (void (%struct.pkcs7_st*)* @PKCS7_free to void (i8*)*)) #4
  %call84 = call fastcc %struct.stack_st* @ossl_check_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef %newsafes.0140) #5
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call84, void (i8*)* noundef bitcast (void (%struct.pkcs7_st*)* @PKCS7_free to void (i8*)*)) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %rv.0143
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.stack_st_PKCS7* @PKCS12_unpack_authsafes(%struct.PKCS12_st* noundef) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_unpack_p7data(%struct.pkcs7_st* noundef) local_unnamed_addr #1

declare %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_unpack_p7encdata(%struct.pkcs7_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @alg_get(%struct.X509_algor_st* nocapture noundef readonly %alg, i32* nocapture noundef writeonly %pnid, i32* nocapture noundef writeonly %piter, i32* nocapture noundef writeonly %psaltlen) unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @PBEPARAM_it() #4
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %alg, i64 0, i32 1
  %0 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !26
  %call1 = tail call i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef %call, %struct.asn1_type_st* noundef %0) #4
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call1 to %struct.PBEPARAM_st*
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %alg, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !28
  %call2 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #4
  store i32 %call2, i32* %pnid, align 4, !tbaa !4
  %iter = getelementptr inbounds i8, i8* %call1, i64 8
  %3 = bitcast i8* %iter to %struct.asn1_string_st**
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %3, align 8, !tbaa !29
  %call3 = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %4) #4
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %piter, align 4, !tbaa !4
  %salt = bitcast i8* %call1 to %struct.asn1_string_st**
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %salt, align 8, !tbaa !31
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %5, i64 0, i32 0
  %6 = load i32, i32* %length, align 8, !tbaa !32
  store i32 %6, i32* %psaltlen, align 4, !tbaa !4
  tail call void @PBEPARAM_free(%struct.PBEPARAM_st* noundef nonnull %1) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @newpass_bags(%struct.stack_st_PKCS12_SAFEBAG* noundef %bags, i8* noundef %oldpass, i8* noundef %newpass) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %bags) #5
  %call19 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #4
  %cmp10 = icmp sgt i32 %call19, 0
  br i1 %cmp10, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #4
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !34

for.body:                                         ; preds = %entry, %for.cond
  %i.011 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.011) #4
  %0 = bitcast i8* %call3 to %struct.PKCS12_SAFEBAG_st*
  %call4 = tail call fastcc i32 @newpass_bag(%struct.PKCS12_SAFEBAG_st* noundef %0, i8* noundef %oldpass, i8* noundef %newpass) #5
  %tobool.not = icmp eq i32 %call4, 0
  %inc = add nuw nsw i32 %i.011, 1
  br i1 %tobool.not, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %for.cond ], [ 0, %for.body ]
  ret i32 %retval.0
}

declare %struct.pkcs7_st* @PKCS12_pack_p7data(%struct.stack_st_PKCS12_SAFEBAG* noundef) local_unnamed_addr #1

declare %struct.pkcs7_st* @PKCS12_pack_p7encdata(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, %struct.stack_st_PKCS12_SAFEBAG* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS12_SAFEBAG* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @PKCS12_SAFEBAG_free(%struct.PKCS12_SAFEBAG_st* noundef) #1

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #1

declare i32 @PKCS12_pack_authsafes(%struct.PKCS12_st* noundef, %struct.stack_st_PKCS7* noundef) local_unnamed_addr #1

declare i32 @PKCS12_gen_mac(%struct.PKCS12_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare void @X509_SIG_getm(%struct.X509_sig_st* noundef, %struct.X509_algor_st** noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #1

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare void @PKCS7_free(%struct.pkcs7_st* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @PBEPARAM_it() local_unnamed_addr #1

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare void @PBEPARAM_free(%struct.PBEPARAM_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS12_SAFEBAG* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @newpass_bag(%struct.PKCS12_SAFEBAG_st* noundef %bag, i8* noundef %oldpass, i8* noundef %newpass) unnamed_addr #0 {
entry:
  %p8_nid = alloca i32, align 4
  %p8_saltlen = alloca i32, align 4
  %p8_iter = alloca i32, align 4
  %shalg = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast i32* %p8_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %1 = bitcast i32* %p8_saltlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  %2 = bitcast i32* %p8_iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #6
  %3 = bitcast %struct.X509_algor_st** %shalg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %call = tail call i32 @PKCS12_SAFEBAG_get_nid(%struct.PKCS12_SAFEBAG_st* noundef %bag) #4
  %cmp.not = icmp eq i32 %call, 151
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 1
  %shkeybag = bitcast %union.anon.1* %value to %struct.X509_sig_st**
  %4 = load %struct.X509_sig_st*, %struct.X509_sig_st** %shkeybag, align 8, !tbaa !14
  %call1 = tail call %struct.pkcs8_priv_key_info_st* @PKCS8_decrypt(%struct.X509_sig_st* noundef %4, i8* noundef %oldpass, i32 noundef -1) #4
  %cmp2 = icmp eq %struct.pkcs8_priv_key_info_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %5 = load %struct.X509_sig_st*, %struct.X509_sig_st** %shkeybag, align 8, !tbaa !14
  call void @X509_SIG_get0(%struct.X509_sig_st* noundef %5, %struct.X509_algor_st** noundef nonnull %shalg, %struct.asn1_string_st** noundef null) #4
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %shalg, align 8, !tbaa !8
  %call7 = call fastcc i32 @alg_get(%struct.X509_algor_st* noundef %6, i32* noundef nonnull %p8_nid, i32* noundef nonnull %p8_iter, i32* noundef nonnull %p8_saltlen) #5
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef nonnull %call1) #4
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %7 = load i32, i32* %p8_nid, align 4, !tbaa !4
  %8 = load i32, i32* %p8_saltlen, align 4, !tbaa !4
  %9 = load i32, i32* %p8_iter, align 4, !tbaa !4
  %call10 = call %struct.X509_sig_st* @PKCS8_encrypt(i32 noundef %7, %struct.evp_cipher_st* noundef null, i8* noundef %newpass, i32 noundef -1, i8* noundef null, i32 noundef %8, i32 noundef %9, %struct.pkcs8_priv_key_info_st* noundef nonnull %call1) #4
  call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef nonnull %call1) #4
  %cmp11 = icmp eq %struct.X509_sig_st* %call10, null
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end9
  %10 = load %struct.X509_sig_st*, %struct.X509_sig_st** %shkeybag, align 8, !tbaa !14
  call void @X509_SIG_free(%struct.X509_sig_st* noundef %10) #4
  store %struct.X509_sig_st* %call10, %struct.X509_sig_st** %shkeybag, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end, %entry, %if.end13, %if.then8
  %retval.0 = phi i32 [ 1, %if.end13 ], [ 0, %if.then8 ], [ 1, %entry ], [ 0, %if.end ], [ 0, %if.end9 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare i32 @PKCS12_SAFEBAG_get_nid(%struct.PKCS12_SAFEBAG_st* noundef) local_unnamed_addr #1

declare %struct.pkcs8_priv_key_info_st* @PKCS8_decrypt(%struct.X509_sig_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @X509_SIG_get0(%struct.X509_sig_st* noundef, %struct.X509_algor_st** noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #1

declare void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #1

declare %struct.X509_sig_st* @PKCS8_encrypt(i32 noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, %struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #1

declare void @X509_SIG_free(%struct.X509_sig_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

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
!10 = !{!11, !9, i64 24}
!11 = !{!"pkcs7_st", !9, i64 0, !12, i64 8, !5, i64 16, !5, i64 20, !9, i64 24, !6, i64 32, !13, i64 40}
!12 = !{!"long", !6, i64 0}
!13 = !{!"PKCS7_CTX_st", !9, i64 0, !9, i64 8}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !9, i64 8}
!16 = !{!"pkcs7_encrypted_st", !9, i64 0, !9, i64 8}
!17 = !{!18, !9, i64 8}
!18 = !{!"pkcs7_enc_content_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!22, !9, i64 16}
!22 = !{!"PKCS12_st", !9, i64 0, !9, i64 8, !9, i64 16}
!23 = !{!22, !9, i64 8}
!24 = !{!25, !9, i64 0}
!25 = !{!"PKCS12_MAC_DATA_st", !9, i64 0, !9, i64 8, !9, i64 16}
!26 = !{!27, !9, i64 8}
!27 = !{!"X509_algor_st", !9, i64 0, !9, i64 8}
!28 = !{!27, !9, i64 0}
!29 = !{!30, !9, i64 8}
!30 = !{!"PBEPARAM_st", !9, i64 0, !9, i64 8}
!31 = !{!30, !9, i64 0}
!32 = !{!33, !5, i64 0}
!33 = !{!"asn1_string_st", !5, i64 0, !5, i64 4, !9, i64 8, !12, i64 16}
!34 = distinct !{!34, !20}

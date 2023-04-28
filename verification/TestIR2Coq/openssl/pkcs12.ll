; ModuleID = 'test/helpers/pkcs12.c'
source_filename = "test/helpers/pkcs12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_st = type opaque
%struct.pkcs12_builder = type { i8*, i32, %struct.bio_st*, %struct.stack_st_PKCS7*, i32, %struct.stack_st_PKCS12_SAFEBAG*, i32 }
%struct.bio_st = type opaque
%struct.stack_st_PKCS7 = type opaque
%struct.stack_st_PKCS12_SAFEBAG = type opaque
%struct.pkcs12_enc = type { i32, i8*, i32 }
%struct.bio_method_st = type opaque
%struct.PKCS12_st = type opaque
%struct.stack_st = type opaque
%struct.evp_md_st = type opaque
%struct.PKCS12_SAFEBAG_st = type opaque
%struct.pkcs12_attr = type { i8*, i8* }
%struct.x509_st = type opaque
%struct.X509_name_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.x509_attributes_st = type opaque
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.pkcs8_priv_key_info_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon.0, %struct.PKCS7_CTX_st }
%union.anon.0 = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }

@write_files = internal unnamed_addr global i32 0, align 4
@legacy = internal unnamed_addr global i32 0, align 4
@test_ctx = internal unnamed_addr global %struct.ossl_lib_ctx_st* null, align 8
@test_propq = internal unnamed_addr global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"test/helpers/pkcs12.c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"pb\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"PKCS12_add_safe(&pb->safes, pb->bags, -1, 0, NULL)\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"PKCS12_add_safe(&pb->safes, pb->bags, enc->nid, enc->iter, enc->pass)\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"PKCS12_add_safe_ex(&pb->safes, pb->bags, enc->nid, enc->iter, enc->pass, test_ctx, test_propq)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Adding certificate <%s>\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"bag\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"add_attributes(bag, attrs)\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Adding key\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"pkey\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Adding secret <%s>\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"PKCS12_SAFEBAG_get_nid(bag)\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"NID_certBag\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"PKCS12_SAFEBAG_get_bag_nid(bag)\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"NID_x509Certificate\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"x509\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"X509_cmp(x509, ref_x509)\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"pkey = EVP_PKCS82PKEY(p8c)\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"p8\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"pkey = EVP_PKCS82PKEY(p8)\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_eq(pkey, ref_pkey)\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"NID_secretBag\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"secret_nid\00", align 1
@.str.24 = private unnamed_addr constant [60 x i8] c"check_asn1_string(PKCS12_SAFEBAG_get0_bag_obj(bag), secret)\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"p12\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"pb->safes\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"pb->bags\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Decoding %d bags\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"sk_PKCS12_SAFEBAG_num(pb->bags)\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"pb->bag_idx\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"pb->p12bio\00", align 1
@.str.32 = private unnamed_addr constant [74 x i8] c"PKCS12_set_mac(p12, mac->pass, strlen(mac->pass), NULL, 0, mac->iter, md)\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"i2d_PKCS12_bio(out, p12)\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"Adding attribute %s = %s\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"PKCS12_add_friendlyname(bag, p_attr->value, -1)\00", align 1
@.str.38 = private unnamed_addr constant [82 x i8] c"PKCS12_add_localkeyid(bag, (unsigned char *)p_attr->value, strlen(p_attr->value))\00", align 1
@.str.39 = private unnamed_addr constant [111 x i8] c"PKCS12_add1_attr_by_txt(bag, p_attr->oid, MBSTRING_ASC, (unsigned char *)p_attr->value, strlen(p_attr->value))\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"X509_ATTRIBUTE_count(attr)\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"check_asn1_string(av, p_attr->value)\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"av\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"(char *)value\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"(char *)av->value.utf8string->data\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"(char *)av->value.octet_string->data\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"PKCS12_mac_present(p12)\00", align 1
@.str.48 = private unnamed_addr constant [53 x i8] c"PKCS12_verify_mac(p12, mac->pass, strlen(mac->pass))\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"p7\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"bagnid\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"NID_pkcs7_encrypted\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"NID_pkcs7_data\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"bags\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @PKCS12_helper_set_write_files(i32 noundef %enable) local_unnamed_addr #0 {
entry:
  store i32 %enable, i32* @write_files, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @PKCS12_helper_set_legacy(i32 noundef %enable) local_unnamed_addr #0 {
entry:
  store i32 %enable, i32* @legacy, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @PKCS12_helper_set_libctx(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** @test_ctx, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @PKCS12_helper_set_propq(i8* noundef %propq) local_unnamed_addr #0 {
entry:
  store i8* %propq, i8** @test_propq, align 8, !tbaa !7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.pkcs12_builder* @new_pkcs12_builder(i8* noundef %filename) local_unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 56, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 105) #6
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.pkcs12_builder*
  %filename2 = bitcast i8* %call to i8**
  store i8* %filename, i8** %filename2, align 8, !tbaa !9
  %success = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %success to i32*
  store i32 1, i32* %1, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.pkcs12_builder* [ %0, %if.end ], [ null, %entry ]
  ret %struct.pkcs12_builder* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @end_pkcs12_builder(%struct.pkcs12_builder* noundef %pb) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %1 = bitcast %struct.pkcs12_builder* %pb to i8*
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 118) #6
  ret i32 %0
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @start_pkcs12(%struct.pkcs12_builder* nocapture noundef writeonly %pb) local_unnamed_addr #0 {
entry:
  %safes = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 3
  store %struct.stack_st_PKCS7* null, %struct.stack_st_PKCS7** %safes, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @end_pkcs12(%struct.pkcs12_builder* nocapture noundef %pb) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @generate_p12(%struct.pkcs12_builder* noundef nonnull %pb, %struct.pkcs12_enc* noundef null) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @generate_p12(%struct.pkcs12_builder* nocapture noundef %pb, %struct.pkcs12_enc* noundef readonly %mac) unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #6
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #6
  %p12bio = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 2
  store %struct.bio_st* %call1, %struct.bio_st** %p12bio, align 8, !tbaa !13
  %1 = bitcast %struct.bio_st* %call1 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* noundef %1) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %2 = load i32, i32* @legacy, align 4, !tbaa !3
  %tobool8.not = icmp eq i32 %2, 0
  %safes11 = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 3
  %3 = load %struct.stack_st_PKCS7*, %struct.stack_st_PKCS7** %safes11, align 8, !tbaa !12
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = tail call %struct.PKCS12_st* @PKCS12_add_safes(%struct.stack_st_PKCS7* noundef %3, i32 noundef 0) #6
  br label %if.end13

if.else:                                          ; preds = %if.end7
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @test_ctx, align 8, !tbaa !7
  %5 = load i8*, i8** @test_propq, align 8, !tbaa !7
  %call12 = tail call %struct.PKCS12_st* @PKCS12_add_safes_ex(%struct.stack_st_PKCS7* noundef %3, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef %4, i8* noundef %5) #6
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %p12.0 = phi %struct.PKCS12_st* [ %call10, %if.then9 ], [ %call12, %if.else ]
  %6 = bitcast %struct.PKCS12_st* %p12.0 to i8*
  %call14 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* noundef %6) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err.thread, label %if.end18

err.thread:                                       ; preds = %if.end13
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %if.end53

if.end18:                                         ; preds = %if.end13
  %safes19 = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 3
  %7 = load %struct.stack_st_PKCS7*, %struct.stack_st_PKCS7** %safes19, align 8, !tbaa !12
  %call20 = tail call fastcc %struct.stack_st* @ossl_check_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef %7) #7
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call20, void (i8*)* noundef bitcast (void (%struct.pkcs7_st*)* @PKCS7_free to void (i8*)*)) #6
  %cmp.not = icmp eq %struct.pkcs12_enc* %mac, null
  br i1 %cmp.not, label %if.end42, label %if.then22

if.then22:                                        ; preds = %if.end18
  %8 = load i32, i32* @legacy, align 4, !tbaa !3
  %tobool23.not = icmp eq i32 %8, 0
  br i1 %tobool23.not, label %if.else27, label %if.then24

if.then24:                                        ; preds = %if.then22
  %nid = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %mac, i64 0, i32 0
  %9 = load i32, i32* %nid, align 8, !tbaa !14
  %call25 = tail call i8* @OBJ_nid2sn(i32 noundef %9) #6
  %call26 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call25) #6
  br label %if.end31

if.else27:                                        ; preds = %if.then22
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @test_ctx, align 8, !tbaa !7
  %nid28 = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %mac, i64 0, i32 0
  %11 = load i32, i32* %nid28, align 8, !tbaa !14
  %call29 = tail call i8* @OBJ_nid2sn(i32 noundef %11) #6
  %12 = load i8*, i8** @test_propq, align 8, !tbaa !7
  %call30 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %10, i8* noundef %call29, i8* noundef %12) #6
  br label %if.end31

if.end31:                                         ; preds = %if.else27, %if.then24
  %md.0 = phi %struct.evp_md_st* [ %call26, %if.then24 ], [ %call30, %if.else27 ]
  %pass = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %mac, i64 0, i32 1
  %13 = load i8*, i8** %pass, align 8, !tbaa !16
  %call33 = tail call i64 @strlen(i8* noundef %13) #8
  %conv = trunc i64 %call33 to i32
  %iter = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %mac, i64 0, i32 2
  %14 = load i32, i32* %iter, align 8, !tbaa !17
  %call34 = tail call i32 @PKCS12_set_mac(%struct.PKCS12_st* noundef %p12.0, i8* noundef %13, i32 noundef %conv, i8* noundef null, i32 noundef 0, i32 noundef %14, %struct.evp_md_st* noundef %md.0) #6
  %cmp35 = icmp ne i32 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv36) #6
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end31
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %err

if.end42:                                         ; preds = %if.end31, %if.end18
  %md.1 = phi %struct.evp_md_st* [ %md.0, %if.end31 ], [ null, %if.end18 ]
  %15 = load %struct.bio_st*, %struct.bio_st** %p12bio, align 8, !tbaa !13
  %call44 = tail call i32 @i2d_PKCS12_bio(%struct.bio_st* noundef %15, %struct.PKCS12_st* noundef %p12.0) #6
  %16 = load i32, i32* @write_files, align 4, !tbaa !3
  %tobool45.not = icmp eq i32 %16, 0
  br i1 %tobool45.not, label %err, label %if.then46

if.then46:                                        ; preds = %if.end42
  %filename = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 0
  %17 = load i8*, i8** %filename, align 8, !tbaa !9
  tail call fastcc void @write_p12(%struct.PKCS12_st* noundef %p12.0, i8* noundef %17) #7
  br label %err

err:                                              ; preds = %if.end42, %if.then46, %if.then39
  %md.2 = phi %struct.evp_md_st* [ %md.1, %if.then46 ], [ %md.1, %if.end42 ], [ %md.0, %if.then39 ]
  %18 = load i32, i32* @legacy, align 4, !tbaa !3
  %tobool49 = icmp eq i32 %18, 0
  %cmp50 = icmp ne %struct.evp_md_st* %md.2, null
  %or.cond = and i1 %cmp50, %tobool49
  br i1 %or.cond, label %if.then52, label %if.end53

if.then52:                                        ; preds = %err
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %md.2) #6
  br label %if.end53

if.end53:                                         ; preds = %err.thread, %if.then52, %err
  tail call void @PKCS12_free(%struct.PKCS12_st* noundef %p12.0) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end53, %if.then5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @end_pkcs12_with_mac(%struct.pkcs12_builder* nocapture noundef %pb, %struct.pkcs12_enc* noundef %mac) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @generate_p12(%struct.pkcs12_builder* noundef nonnull %pb, %struct.pkcs12_enc* noundef %mac) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @start_contentinfo(%struct.pkcs12_builder* nocapture noundef writeonly %pb) local_unnamed_addr #0 {
entry:
  %bags = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 5
  store %struct.stack_st_PKCS12_SAFEBAG* null, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @end_contentinfo(%struct.pkcs12_builder* noundef %pb) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %bags = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 5
  %1 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !18
  %cmp.not = icmp eq %struct.stack_st_PKCS12_SAFEBAG* %1, null
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %safes = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 3
  %call = tail call i32 @PKCS12_add_safe(%struct.stack_st_PKCS7** noundef nonnull %safes, %struct.stack_st_PKCS12_SAFEBAG* noundef nonnull %1, i32 noundef -1, i32 noundef 0, i8* noundef null) #6
  %cmp2 = icmp ne i32 %call, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 282, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 noundef %conv) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.then5, %land.lhs.true, %entry
  %bags8 = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 5
  %2 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %bags8, align 8, !tbaa !18
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %2) #7
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call9, void (i8*)* noundef bitcast (void (%struct.PKCS12_SAFEBAG_st*)* @PKCS12_SAFEBAG_free to void (i8*)*)) #6
  store %struct.stack_st_PKCS12_SAFEBAG* null, %struct.stack_st_PKCS12_SAFEBAG** %bags8, align 8, !tbaa !18
  ret void
}

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @PKCS12_add_safe(%struct.stack_st_PKCS7** noundef, %struct.stack_st_PKCS12_SAFEBAG* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_PKCS12_SAFEBAG* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @PKCS12_SAFEBAG_free(%struct.PKCS12_SAFEBAG_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @end_contentinfo_encrypted(%struct.pkcs12_builder* noundef %pb, %struct.pkcs12_enc* nocapture noundef readonly %enc) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end23, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %bags = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 5
  %1 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !18
  %cmp.not = icmp eq %struct.stack_st_PKCS12_SAFEBAG* %1, null
  br i1 %cmp.not, label %if.end23, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* @legacy, align 4, !tbaa !3
  %tobool1.not = icmp eq i32 %2, 0
  %safes9 = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 3
  %nid11 = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 0
  %3 = load i32, i32* %nid11, align 8, !tbaa !14
  %iter12 = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 2
  %4 = load i32, i32* %iter12, align 8, !tbaa !17
  %pass13 = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 1
  %5 = load i8*, i8** %pass13, align 8, !tbaa !16
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %call = tail call i32 @PKCS12_add_safe(%struct.stack_st_PKCS7** noundef nonnull %safes9, %struct.stack_st_PKCS12_SAFEBAG* noundef nonnull %1, i32 noundef %3, i32 noundef %4, i8* noundef %5) #6
  %cmp4 = icmp ne i32 %call, 0
  %conv = zext i1 %cmp4 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end23.sink.split, label %if.end23

if.else:                                          ; preds = %if.then
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @test_ctx, align 8, !tbaa !7
  %7 = load i8*, i8** @test_propq, align 8, !tbaa !7
  %call14 = tail call i32 @PKCS12_add_safe_ex(%struct.stack_st_PKCS7** noundef nonnull %safes9, %struct.stack_st_PKCS12_SAFEBAG* noundef nonnull %1, i32 noundef %3, i32 noundef %4, i8* noundef %5, %struct.ossl_lib_ctx_st* noundef %6, i8* noundef %7) #6
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv16) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end23.sink.split, label %if.end23

if.end23.sink.split:                              ; preds = %if.else, %if.then2
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.then2, %if.else, %land.lhs.true, %entry
  %bags24 = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 5
  %8 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %bags24, align 8, !tbaa !18
  %call25 = tail call fastcc %struct.stack_st* @ossl_check_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %8) #7
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call25, void (i8*)* noundef bitcast (void (%struct.PKCS12_SAFEBAG_st*)* @PKCS12_SAFEBAG_free to void (i8*)*)) #6
  store %struct.stack_st_PKCS12_SAFEBAG* null, %struct.stack_st_PKCS12_SAFEBAG** %bags24, align 8, !tbaa !18
  ret void
}

declare dso_local i32 @PKCS12_add_safe_ex(%struct.stack_st_PKCS7** noundef, %struct.stack_st_PKCS12_SAFEBAG* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_certbag(%struct.pkcs12_builder* noundef %pb, i8* noundef %bytes, i32 noundef %len, %struct.pkcs12_attr* noundef %attrs) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc %struct.x509_st* @load_cert_asn1(i8* noundef %bytes, i32 noundef %len) #7
  %1 = bitcast %struct.x509_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 386, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef %1) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %call) #6
  %call7 = tail call i8* @X509_NAME_oneline(%struct.X509_name_st* noundef %call6, i8* noundef null, i32 noundef 0) #6
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 392, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call7) #6
  tail call void @CRYPTO_free(i8* noundef %call7, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 393) #6
  %bags = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 5
  %call8 = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_add_cert(%struct.stack_st_PKCS12_SAFEBAG** noundef nonnull %bags, %struct.x509_st* noundef %call) #6
  %2 = bitcast %struct.PKCS12_SAFEBAG_st* %call8 to i8*
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 396, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* noundef %2) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err.sink.split, label %if.end13

if.end13:                                         ; preds = %if.end5
  %call14 = tail call fastcc i32 @add_attributes(%struct.PKCS12_SAFEBAG_st* noundef %call8, %struct.pkcs12_attr* noundef %attrs) #7
  %cmp = icmp ne i32 %call14, 0
  %conv = zext i1 %cmp to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 401, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err.sink.split, label %err

err.sink.split:                                   ; preds = %if.end13, %if.end5
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %err

err:                                              ; preds = %err.sink.split, %if.end13
  tail call void @X509_free(%struct.x509_st* noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.then3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.x509_st* @load_cert_asn1(i8* noundef %bytes, i32 noundef %len) unnamed_addr #1 {
entry:
  %bytes.addr = alloca i8*, align 8
  store i8* %bytes, i8** %bytes.addr, align 8, !tbaa !7
  %conv = sext i32 %len to i64
  %call = call %struct.x509_st* @d2i_X509(%struct.x509_st** noundef null, i8** noundef nonnull %bytes.addr, i64 noundef %conv) #6
  %0 = bitcast %struct.x509_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef %0) #6
  ret %struct.x509_st* %call
}

declare dso_local i8* @X509_NAME_oneline(%struct.X509_name_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local %struct.PKCS12_SAFEBAG_st* @PKCS12_add_cert(%struct.stack_st_PKCS12_SAFEBAG** noundef, %struct.x509_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_attributes(%struct.PKCS12_SAFEBAG_st* noundef %bag, %struct.pkcs12_attr* noundef readonly %attrs) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.pkcs12_attr* %attrs, null
  br i1 %cmp, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %oid60 = getelementptr inbounds %struct.pkcs12_attr, %struct.pkcs12_attr* %attrs, i64 0, i32 0
  %0 = load i8*, i8** %oid60, align 8, !tbaa !19
  %cmp1.not61 = icmp eq i8* %0, null
  br i1 %cmp1.not61, label %cleanup, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %if.end40
  %1 = phi i8* [ %9, %if.end40 ], [ %0, %while.cond.preheader ]
  %oid63 = phi i8** [ %incdec.ptr, %if.end40 ], [ %oid60, %while.cond.preheader ]
  %2 = getelementptr inbounds i8*, i8** %oid63, i64 1
  %3 = load i8*, i8** %2, align 8, !tbaa !21
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 351, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %3) #6
  %4 = load i8*, i8** %oid63, align 8, !tbaa !19
  %call = tail call i32 @OBJ_txt2nid(i8* noundef %4) #6
  switch i32 %call, label %if.else26 [
    i32 156, label %if.then5
    i32 157, label %if.then14
  ]

if.then5:                                         ; preds = %while.body
  %5 = load i8*, i8** %2, align 8, !tbaa !21
  %call7 = tail call i32 @PKCS12_add_friendlyname_utf8(%struct.PKCS12_SAFEBAG_st* noundef %bag, i8* noundef %5, i32 noundef -1) #6
  %cmp8 = icmp ne i32 %call7, 0
  %conv = zext i1 %cmp8 to i32
  %call9 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 355, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv) #6
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %cleanup, label %if.end40

if.then14:                                        ; preds = %while.body
  %6 = load i8*, i8** %2, align 8, !tbaa !21
  %call17 = tail call i64 @strlen(i8* noundef %6) #8
  %conv18 = trunc i64 %call17 to i32
  %call19 = tail call i32 @PKCS12_add_localkeyid(%struct.PKCS12_SAFEBAG_st* noundef %bag, i8* noundef %6, i32 noundef %conv18) #6
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 359, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv21) #6
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup, label %if.end40

if.else26:                                        ; preds = %while.body
  %7 = load i8*, i8** %oid63, align 8, !tbaa !19
  %8 = load i8*, i8** %2, align 8, !tbaa !21
  %call30 = tail call i64 @strlen(i8* noundef %8) #8
  %conv31 = trunc i64 %call30 to i32
  %call32 = tail call i32 @PKCS12_add1_attr_by_txt(%struct.PKCS12_SAFEBAG_st* noundef %bag, i8* noundef %7, i32 noundef 4097, i8* noundef %8, i32 noundef %conv31) #6
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([111 x i8], [111 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv34) #6
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup, label %if.end40

if.end40:                                         ; preds = %if.then14, %if.else26, %if.then5
  %incdec.ptr = getelementptr inbounds i8*, i8** %oid63, i64 2
  %9 = load i8*, i8** %incdec.ptr, align 8, !tbaa !19
  %cmp1.not = icmp eq i8* %9, null
  br i1 %cmp1.not, label %cleanup, label %while.body, !llvm.loop !22

cleanup:                                          ; preds = %if.end40, %if.else26, %if.then14, %if.then5, %while.cond.preheader, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %while.cond.preheader ], [ 1, %if.end40 ], [ 0, %if.else26 ], [ 0, %if.then14 ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_keybag(%struct.pkcs12_builder* noundef %pb, i8* noundef %bytes, i32 noundef %len, %struct.pkcs12_attr* noundef %attrs, %struct.pkcs12_enc* nocapture noundef readonly %enc) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 418, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #6
  %call = tail call fastcc %struct.evp_pkey_st* @load_pkey_asn1(i8* noundef %bytes, i32 noundef %len) #7
  %1 = bitcast %struct.evp_pkey_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 421, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* noundef %1) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = load i32, i32* @legacy, align 4, !tbaa !3
  %tobool6.not = icmp eq i32 %2, 0
  %bags9 = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 5
  %iter10 = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 2
  %3 = load i32, i32* %iter10, align 8, !tbaa !17
  %nid11 = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 0
  %4 = load i32, i32* %nid11, align 8, !tbaa !14
  %pass12 = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 1
  %5 = load i8*, i8** %pass12, align 8, !tbaa !16
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  %call8 = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_add_key(%struct.stack_st_PKCS12_SAFEBAG** noundef nonnull %bags9, %struct.evp_pkey_st* noundef %call, i32 noundef 0, i32 noundef %3, i32 noundef %4, i8* noundef %5) #6
  br label %if.end14

if.else:                                          ; preds = %if.end5
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @test_ctx, align 8, !tbaa !7
  %7 = load i8*, i8** @test_propq, align 8, !tbaa !7
  %call13 = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_add_key_ex(%struct.stack_st_PKCS12_SAFEBAG** noundef nonnull %bags9, %struct.evp_pkey_st* noundef %call, i32 noundef 0, i32 noundef %3, i32 noundef %4, i8* noundef %5, %struct.ossl_lib_ctx_st* noundef %6, i8* noundef %7) #6
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then7
  %bag.0 = phi %struct.PKCS12_SAFEBAG_st* [ %call8, %if.then7 ], [ %call13, %if.else ]
  %8 = bitcast %struct.PKCS12_SAFEBAG_st* %bag.0 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 431, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* noundef %8) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err.sink.split, label %if.end19

if.end19:                                         ; preds = %if.end14
  %call20 = tail call fastcc i32 @add_attributes(%struct.PKCS12_SAFEBAG_st* noundef %bag.0, %struct.pkcs12_attr* noundef %attrs) #7
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err.sink.split, label %err

err.sink.split:                                   ; preds = %if.end19, %if.end14
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %err

err:                                              ; preds = %err.sink.split, %if.end19
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.then3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @load_pkey_asn1(i8* noundef %bytes, i32 noundef %len) unnamed_addr #1 {
entry:
  %bytes.addr = alloca i8*, align 8
  store i8* %bytes, i8** %bytes.addr, align 8, !tbaa !7
  %conv = sext i32 %len to i64
  %call = call %struct.evp_pkey_st* @d2i_AutoPrivateKey(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %bytes.addr, i64 noundef %conv) #6
  %0 = bitcast %struct.evp_pkey_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* noundef %0) #6
  ret %struct.evp_pkey_st* %call
}

declare dso_local %struct.PKCS12_SAFEBAG_st* @PKCS12_add_key(%struct.stack_st_PKCS12_SAFEBAG** noundef, %struct.evp_pkey_st* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.PKCS12_SAFEBAG_st* @PKCS12_add_key_ex(%struct.stack_st_PKCS12_SAFEBAG** noundef, %struct.evp_pkey_st* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_secretbag(%struct.pkcs12_builder* noundef %pb, i32 noundef %secret_nid, i8* noundef %secret, %struct.pkcs12_attr* noundef %attrs) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 449, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* noundef %secret) #6
  %bags = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 5
  %call = tail call i64 @strlen(i8* noundef %secret) #8
  %conv = trunc i64 %call to i32
  %call1 = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_add_secret(%struct.stack_st_PKCS12_SAFEBAG** noundef nonnull %bags, i32 noundef %secret_nid, i8* noundef %secret, i32 noundef %conv) #6
  %1 = bitcast %struct.PKCS12_SAFEBAG_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 452, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* noundef %1) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup.sink.split, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc i32 @add_attributes(%struct.PKCS12_SAFEBAG_st* noundef %call1, %struct.pkcs12_attr* noundef %attrs) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end6, %if.end
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6, %entry
  ret void
}

declare dso_local %struct.PKCS12_SAFEBAG_st* @PKCS12_add_secret(%struct.stack_st_PKCS12_SAFEBAG** noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_certbag(%struct.pkcs12_builder* nocapture noundef %pb, i8* noundef %bytes, i32 noundef %len, %struct.pkcs12_attr* nocapture noundef readonly %attrs) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bags = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 5
  %1 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !18
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %1) #7
  %bag_idx = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 6
  %2 = load i32, i32* %bag_idx, align 8, !tbaa !24
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %bag_idx, align 8, !tbaa !24
  %call1 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %2) #6
  %3 = bitcast i8* %call1 to %struct.PKCS12_SAFEBAG_st*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 553, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* noundef %call1) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.stack_st_X509_ATTRIBUTE* @PKCS12_SAFEBAG_get0_attrs(%struct.PKCS12_SAFEBAG_st* noundef %3) #6
  %call8 = tail call fastcc i32 @check_attrs(%struct.stack_st_X509_ATTRIBUTE* noundef %call7, %struct.pkcs12_attr* noundef %attrs) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %call10 = tail call i32 @PKCS12_SAFEBAG_get_nid(%struct.PKCS12_SAFEBAG_st* noundef %3) #6
  %call11 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 558, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 noundef %call10, i32 noundef 152) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then17, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %call14 = tail call i32 @PKCS12_SAFEBAG_get_bag_nid(%struct.PKCS12_SAFEBAG_st* noundef %3) #6
  %call15 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 559, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call14, i32 noundef 158) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %lor.lhs.false13, %lor.lhs.false, %if.end6
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false13
  %call20 = tail call %struct.x509_st* @PKCS12_SAFEBAG_get1_cert(%struct.PKCS12_SAFEBAG_st* noundef %3) #6
  %4 = bitcast %struct.x509_st* %call20 to i8*
  %call21 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 564, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* noundef %4) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err.sink.split, label %if.end25

if.end25:                                         ; preds = %if.end19
  %call26 = tail call fastcc %struct.x509_st* @load_cert_asn1(i8* noundef %bytes, i32 noundef %len) #7
  %call27 = tail call i32 @X509_cmp(%struct.x509_st* noundef %call20, %struct.x509_st* noundef %call26) #6
  %cmp = icmp ne i32 %call27, 0
  %conv = zext i1 %cmp to i32
  %call28 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 569, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv) #6
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err.sink.split, label %err

err.sink.split:                                   ; preds = %if.end25, %if.end19
  %ref_x509.0.ph = phi %struct.x509_st* [ null, %if.end19 ], [ %call26, %if.end25 ]
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %err

err:                                              ; preds = %err.sink.split, %if.end25
  %ref_x509.0 = phi %struct.x509_st* [ %call26, %if.end25 ], [ %ref_x509.0.ph, %err.sink.split ]
  tail call void @X509_free(%struct.x509_st* noundef %call20) #6
  tail call void @X509_free(%struct.x509_st* noundef %ref_x509.0) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.then17, %if.then4
  ret void
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_PKCS12_SAFEBAG* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_attrs(%struct.stack_st_X509_ATTRIBUTE* noundef %bag_attrs, %struct.pkcs12_attr* nocapture noundef readonly %attrs) unnamed_addr #1 {
entry:
  %attr_txt = alloca [100 x i8], align 16
  %0 = getelementptr inbounds [100 x i8], [100 x i8]* %attr_txt, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %0) #9
  %call = call fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %bag_attrs) #7
  %call165 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp66 = icmp sgt i32 %call165, 0
  br i1 %cmp66, label %for.body.lr.ph, label %cleanup30

for.body.lr.ph:                                   ; preds = %entry
  %oid59 = getelementptr inbounds %struct.pkcs12_attr, %struct.pkcs12_attr* %attrs, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc27
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc28, %for.inc27 ]
  %call3 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.067) #6
  %1 = bitcast i8* %call3 to %struct.x509_attributes_st*
  %call4 = call %struct.asn1_object_st* @X509_ATTRIBUTE_get0_object(%struct.x509_attributes_st* noundef %1) #6
  %call5 = call i32 @OBJ_obj2txt(i8* noundef nonnull %0, i32 noundef 100, %struct.asn1_object_st* noundef %call4, i32 noundef 0) #6
  %2 = load i8*, i8** %oid59, align 8, !tbaa !19
  %cmp6.not60 = icmp eq i8* %2, null
  br i1 %cmp6.not60, label %for.inc27, label %while.body

while.body:                                       ; preds = %for.body, %if.end25
  %3 = phi i8* [ %5, %if.end25 ], [ %2, %for.body ]
  %p_attr.061 = phi %struct.pkcs12_attr* [ %incdec.ptr, %if.end25 ], [ %attrs, %for.body ]
  %call9 = call i32 @strcmp(i8* noundef nonnull %3, i8* noundef nonnull %0) #8
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then, label %if.end25

if.then:                                          ; preds = %while.body
  %call11 = call i32 @X509_ATTRIBUTE_count(%struct.x509_attributes_st* noundef %1) #6
  %call12 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 523, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i32 noundef %call11, i32 noundef 1) #6
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %cleanup30, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %if.then
  %call1562 = call i32 @X509_ATTRIBUTE_count(%struct.x509_attributes_st* noundef %1) #6
  %cmp1663 = icmp sgt i32 %call1562, 0
  br i1 %cmp1663, label %for.body17.lr.ph, label %for.inc27

for.body17.lr.ph:                                 ; preds = %for.cond14.preheader
  %value = getelementptr inbounds %struct.pkcs12_attr, %struct.pkcs12_attr* %p_attr.061, i64 0, i32 1
  br label %for.body17

for.cond14:                                       ; preds = %for.body17
  %call15 = call i32 @X509_ATTRIBUTE_count(%struct.x509_attributes_st* noundef %1) #6
  %cmp16 = icmp slt i32 %inc, %call15
  br i1 %cmp16, label %for.body17, label %for.inc27, !llvm.loop !25

for.body17:                                       ; preds = %for.body17.lr.ph, %for.cond14
  %j.064 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc, %for.cond14 ]
  %call18 = call %struct.asn1_type_st* @X509_ATTRIBUTE_get0_type(%struct.x509_attributes_st* noundef %1, i32 noundef %j.064) #6
  %4 = load i8*, i8** %value, align 8, !tbaa !21
  %call19 = call fastcc i32 @check_asn1_string(%struct.asn1_type_st* noundef %call18, i8* noundef %4) #7
  %cmp20 = icmp ne i32 %call19, 0
  %conv = zext i1 %cmp20 to i32
  %call21 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 529, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv) #6
  %tobool22.not = icmp eq i32 %call21, 0
  %inc = add nuw nsw i32 %j.064, 1
  br i1 %tobool22.not, label %cleanup30, label %for.cond14

if.end25:                                         ; preds = %while.body
  %incdec.ptr = getelementptr inbounds %struct.pkcs12_attr, %struct.pkcs12_attr* %p_attr.061, i64 1
  %oid = getelementptr inbounds %struct.pkcs12_attr, %struct.pkcs12_attr* %incdec.ptr, i64 0, i32 0
  %5 = load i8*, i8** %oid, align 8, !tbaa !19
  %cmp6.not = icmp eq i8* %5, null
  br i1 %cmp6.not, label %for.inc27, label %while.body, !llvm.loop !26

for.inc27:                                        ; preds = %if.end25, %for.cond14, %for.body, %for.cond14.preheader
  %inc28 = add nuw nsw i32 %i.067, 1
  %call1 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp = icmp slt i32 %inc28, %call1
  br i1 %cmp, label %for.body, label %cleanup30, !llvm.loop !27

cleanup30:                                        ; preds = %for.inc27, %if.then, %for.body17, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %for.body17 ], [ 1, %for.inc27 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare dso_local %struct.stack_st_X509_ATTRIBUTE* @PKCS12_SAFEBAG_get0_attrs(%struct.PKCS12_SAFEBAG_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @PKCS12_SAFEBAG_get_nid(%struct.PKCS12_SAFEBAG_st* noundef) local_unnamed_addr #3

declare dso_local i32 @PKCS12_SAFEBAG_get_bag_nid(%struct.PKCS12_SAFEBAG_st* noundef) local_unnamed_addr #3

declare dso_local %struct.x509_st* @PKCS12_SAFEBAG_get1_cert(%struct.PKCS12_SAFEBAG_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @X509_cmp(%struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_keybag(%struct.pkcs12_builder* nocapture noundef %pb, i8* noundef %bytes, i32 noundef %len, %struct.pkcs12_attr* nocapture noundef readonly %attrs, %struct.pkcs12_enc* nocapture noundef readonly %enc) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bags = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 5
  %1 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !18
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %1) #7
  %bag_idx = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 6
  %2 = load i32, i32* %bag_idx, align 8, !tbaa !24
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %bag_idx, align 8, !tbaa !24
  %call1 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %2) #6
  %3 = bitcast i8* %call1 to %struct.PKCS12_SAFEBAG_st*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 589, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* noundef %call1) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.stack_st_X509_ATTRIBUTE* @PKCS12_SAFEBAG_get0_attrs(%struct.PKCS12_SAFEBAG_st* noundef %3) #6
  %call8 = tail call fastcc i32 @check_attrs(%struct.stack_st_X509_ATTRIBUTE* noundef %call7, %struct.pkcs12_attr* noundef %attrs) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call13 = tail call i32 @PKCS12_SAFEBAG_get_nid(%struct.PKCS12_SAFEBAG_st* noundef %3) #6
  switch i32 %call13, label %err.sink.split [
    i32 150, label %sw.bb
    i32 151, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end12
  %call14 = tail call %struct.pkcs8_priv_key_info_st* @PKCS12_SAFEBAG_get0_p8inf(%struct.PKCS12_SAFEBAG_st* noundef %3) #6
  %call15 = tail call %struct.evp_pkey_st* @EVP_PKCS82PKEY(%struct.pkcs8_priv_key_info_st* noundef %call14) #6
  %4 = bitcast %struct.evp_pkey_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 602, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8* noundef %4) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err.sink.split, label %sw.epilog

sw.bb21:                                          ; preds = %if.end12
  %5 = load i32, i32* @legacy, align 4, !tbaa !3
  %tobool22.not = icmp eq i32 %5, 0
  %pass27 = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 1
  %6 = load i8*, i8** %pass27, align 8, !tbaa !16
  %call29 = tail call i64 @strlen(i8* noundef %6) #8
  %conv30 = trunc i64 %call29 to i32
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %sw.bb21
  %call26 = tail call %struct.pkcs8_priv_key_info_st* @PKCS12_decrypt_skey(%struct.PKCS12_SAFEBAG_st* noundef %3, i8* noundef %6, i32 noundef %conv30) #6
  br label %if.end32

if.else:                                          ; preds = %sw.bb21
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @test_ctx, align 8, !tbaa !7
  %8 = load i8*, i8** @test_propq, align 8, !tbaa !7
  %call31 = tail call %struct.pkcs8_priv_key_info_st* @PKCS12_decrypt_skey_ex(%struct.PKCS12_SAFEBAG_st* noundef %3, i8* noundef %6, i32 noundef %conv30, %struct.ossl_lib_ctx_st* noundef %7, i8* noundef %8) #6
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then23
  %p8.0 = phi %struct.pkcs8_priv_key_info_st* [ %call26, %if.then23 ], [ %call31, %if.else ]
  %9 = bitcast %struct.pkcs8_priv_key_info_st* %p8.0 to i8*
  %call33 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 613, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* noundef %9) #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err.sink.split, label %if.end37

if.end37:                                         ; preds = %if.end32
  %call38 = tail call %struct.evp_pkey_st* @EVP_PKCS82PKEY(%struct.pkcs8_priv_key_info_st* noundef %p8.0) #6
  %10 = bitcast %struct.evp_pkey_st* %call38 to i8*
  %call39 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 617, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i8* noundef %10) #6
  %tobool40.not = icmp eq i32 %call39, 0
  tail call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef %p8.0) #6
  br i1 %tobool40.not, label %err.sink.split, label %sw.epilog

sw.epilog:                                        ; preds = %if.end37, %sw.bb
  %pkey.0 = phi %struct.evp_pkey_st* [ %call15, %sw.bb ], [ %call38, %if.end37 ]
  %call45 = tail call fastcc %struct.evp_pkey_st* @load_pkey_asn1(i8* noundef %bytes, i32 noundef %len) #7
  %call46 = tail call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %pkey.0, %struct.evp_pkey_st* noundef %call45) #6
  %cmp = icmp ne i32 %call46, 0
  %conv47 = zext i1 %cmp to i32
  %call48 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 632, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv47) #6
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err.sink.split, label %err

err.sink.split:                                   ; preds = %sw.epilog, %if.end12, %if.end37, %if.end32, %sw.bb
  %ref_pkey.0.ph = phi %struct.evp_pkey_st* [ null, %sw.bb ], [ null, %if.end32 ], [ null, %if.end37 ], [ null, %if.end12 ], [ %call45, %sw.epilog ]
  %pkey.1.ph = phi %struct.evp_pkey_st* [ %call15, %sw.bb ], [ null, %if.end32 ], [ %call38, %if.end37 ], [ null, %if.end12 ], [ %pkey.0, %sw.epilog ]
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %err

err:                                              ; preds = %err.sink.split, %sw.epilog
  %ref_pkey.0 = phi %struct.evp_pkey_st* [ %call45, %sw.epilog ], [ %ref_pkey.0.ph, %err.sink.split ]
  %pkey.1 = phi %struct.evp_pkey_st* [ %pkey.0, %sw.epilog ], [ %pkey.1.ph, %err.sink.split ]
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.1) #6
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %ref_pkey.0) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.then10, %if.then4
  ret void
}

declare dso_local %struct.pkcs8_priv_key_info_st* @PKCS12_SAFEBAG_get0_p8inf(%struct.PKCS12_SAFEBAG_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @EVP_PKCS82PKEY(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #3

declare dso_local %struct.pkcs8_priv_key_info_st* @PKCS12_decrypt_skey(%struct.PKCS12_SAFEBAG_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.pkcs8_priv_key_info_st* @PKCS12_decrypt_skey_ex(%struct.PKCS12_SAFEBAG_st* noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_secretbag(%struct.pkcs12_builder* nocapture noundef %pb, i32 noundef %secret_nid, i8* noundef %secret, %struct.pkcs12_attr* nocapture noundef readonly %attrs) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bags = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 5
  %1 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !18
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %1) #7
  %bag_idx = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 6
  %2 = load i32, i32* %bag_idx, align 8, !tbaa !24
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %bag_idx, align 8, !tbaa !24
  %call1 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %2) #6
  %3 = bitcast i8* %call1 to %struct.PKCS12_SAFEBAG_st*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 647, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* noundef %call1) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup.sink.split, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.stack_st_X509_ATTRIBUTE* @PKCS12_SAFEBAG_get0_attrs(%struct.PKCS12_SAFEBAG_st* noundef %3) #6
  %call8 = tail call fastcc i32 @check_attrs(%struct.stack_st_X509_ATTRIBUTE* noundef %call7, %struct.pkcs12_attr* noundef %attrs) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %call10 = tail call i32 @PKCS12_SAFEBAG_get_nid(%struct.PKCS12_SAFEBAG_st* noundef %3) #6
  %call11 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 653, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 noundef %call10, i32 noundef 154) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup.sink.split, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %call14 = tail call i32 @PKCS12_SAFEBAG_get_bag_nid(%struct.PKCS12_SAFEBAG_st* noundef %3) #6
  %call15 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 654, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 noundef %call14, i32 noundef %secret_nid) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup.sink.split, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = tail call %struct.asn1_type_st* @PKCS12_SAFEBAG_get0_bag_obj(%struct.PKCS12_SAFEBAG_st* noundef %3) #6
  %call19 = tail call fastcc i32 @check_asn1_string(%struct.asn1_type_st* noundef %call18, i8* noundef %secret) #7
  %cmp = icmp ne i32 %call19, 0
  %conv = zext i1 %cmp to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 655, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end6, %lor.lhs.false, %lor.lhs.false13, %lor.lhs.false17, %if.end
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false17, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_asn1_string(%struct.asn1_type_st* noundef %av, i8* noundef %txt) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_type_st* %av to i8*
  %call = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 470, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %av, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !28
  switch i32 %1, label %err [
    i32 30, label %sw.bb
    i32 12, label %sw.bb9
    i32 4, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end
  %value1 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %av, i64 0, i32 1
  %bmpstring = bitcast %union.anon* %value1 to %struct.asn1_string_st**
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %bmpstring, align 8, !tbaa !30
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 2
  %3 = load i8*, i8** %data, align 8, !tbaa !31
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 0
  %4 = load i32, i32* %length, align 8, !tbaa !34
  %call4 = tail call i8* @OPENSSL_uni2asc(i8* noundef %3, i32 noundef %4) #6
  %call5 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 477, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i8* noundef %txt, i8* noundef %call4) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %call10 = tail call i64 @strlen(i8* noundef %txt) #8
  %value11 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %av, i64 0, i32 1
  %utf8string = bitcast %union.anon* %value11 to %struct.asn1_string_st**
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %utf8string, align 8, !tbaa !30
  %data12 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %5, i64 0, i32 2
  %6 = load i8*, i8** %data12, align 8, !tbaa !31
  %length15 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %5, i64 0, i32 0
  %7 = load i32, i32* %length15, align 8, !tbaa !34
  %conv = sext i32 %7 to i64
  %call16 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 483, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.45, i64 0, i64 0), i8* noundef %txt, i64 noundef %call10, i8* noundef %6, i64 noundef %conv) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  %call21 = tail call i64 @strlen(i8* noundef %txt) #8
  %value22 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %av, i64 0, i32 1
  %octet_string = bitcast %union.anon* %value22 to %struct.asn1_string_st**
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %octet_string, align 8, !tbaa !30
  %data23 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %8, i64 0, i32 2
  %9 = load i8*, i8** %data23, align 8, !tbaa !31
  %length26 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %8, i64 0, i32 0
  %10 = load i32, i32* %length26, align 8, !tbaa !34
  %conv27 = sext i32 %10 to i64
  %call28 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 490, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i8* noundef %txt, i64 noundef %call21, i8* noundef %9, i64 noundef %conv27) #6
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb9, %sw.bb
  %value.0 = phi i8* [ null, %sw.bb20 ], [ null, %sw.bb9 ], [ %call4, %sw.bb ]
  br label %err

err:                                              ; preds = %if.end, %sw.bb20, %sw.bb9, %sw.bb, %entry, %sw.epilog
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %sw.epilog ], [ 0, %sw.bb20 ], [ 0, %sw.bb9 ], [ 0, %sw.bb ], [ 0, %entry ]
  %value.1 = phi i8* [ null, %if.end ], [ %value.0, %sw.epilog ], [ null, %sw.bb20 ], [ null, %sw.bb9 ], [ %call4, %sw.bb ], [ null, %entry ]
  tail call void @CRYPTO_free(i8* noundef %value.1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 500) #6
  ret i32 %ret.0
}

declare dso_local %struct.asn1_type_st* @PKCS12_SAFEBAG_get0_bag_obj(%struct.PKCS12_SAFEBAG_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @start_check_pkcs12(%struct.pkcs12_builder* nocapture noundef %pb) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %p12bio = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 2
  %1 = load %struct.bio_st*, %struct.bio_st** %p12bio, align 8, !tbaa !13
  %call = tail call fastcc %struct.PKCS12_st* @from_bio_p12(%struct.bio_st* noundef %1, %struct.pkcs12_enc* noundef null) #7
  %2 = bitcast %struct.PKCS12_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 668, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* noundef %2) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.stack_st_PKCS7* @PKCS12_unpack_authsafes(%struct.PKCS12_st* noundef %call) #6
  %safes = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 3
  store %struct.stack_st_PKCS7* %call6, %struct.stack_st_PKCS7** %safes, align 8, !tbaa !12
  %3 = bitcast %struct.stack_st_PKCS7* %call6 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 673, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i8* noundef %3) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5
  %safe_idx = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 4
  store i32 0, i32* %safe_idx, align 8, !tbaa !35
  tail call void @PKCS12_free(%struct.PKCS12_st* noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12, %if.then3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.PKCS12_st* @from_bio_p12(%struct.bio_st* noundef %bio, %struct.pkcs12_enc* noundef readonly %mac) unnamed_addr #1 {
entry:
  %p12 = alloca %struct.PKCS12_st*, align 8
  %0 = bitcast %struct.PKCS12_st** %p12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.PKCS12_st* null, %struct.PKCS12_st** %p12, align 8, !tbaa !7
  %1 = load i32, i32* @legacy, align 4, !tbaa !3
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @test_ctx, align 8, !tbaa !7
  %3 = load i8*, i8** @test_propq, align 8, !tbaa !7
  %call = tail call %struct.PKCS12_st* @PKCS12_init_ex(i32 noundef 21, %struct.ossl_lib_ctx_st* noundef %2, i8* noundef %3) #6
  store %struct.PKCS12_st* %call, %struct.PKCS12_st** %p12, align 8, !tbaa !7
  %4 = bitcast %struct.PKCS12_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 216, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* noundef %4) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %err, label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %call5 = call %struct.PKCS12_st* @d2i_PKCS12_bio(%struct.bio_st* noundef %bio, %struct.PKCS12_st** noundef nonnull %p12) #6
  store %struct.PKCS12_st* %call5, %struct.PKCS12_st** %p12, align 8, !tbaa !7
  %call6 = call i32 @BIO_free(%struct.bio_st* noundef %bio) #6
  %5 = bitcast %struct.PKCS12_st** %p12 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !7
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* noundef %6) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end10

if.end10:                                         ; preds = %if.end4
  %cmp = icmp eq %struct.pkcs12_enc* %mac, null
  %7 = load %struct.PKCS12_st*, %struct.PKCS12_st** %p12, align 8, !tbaa !7
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end10
  %call12 = call i32 @PKCS12_mac_present(%struct.PKCS12_st* noundef %7) #6
  %cmp13 = icmp ne i32 %call12, 0
  %conv = zext i1 %cmp13 to i32
  %call14 = call i32 @test_false(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i64 0, i64 0), i32 noundef %conv) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end22

if.else:                                          ; preds = %if.end10
  %call18 = call fastcc i32 @check_p12_mac(%struct.PKCS12_st* noundef %7, %struct.pkcs12_enc* noundef nonnull %mac) #7
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end22

if.end22:                                         ; preds = %if.else, %if.then11
  %8 = load %struct.PKCS12_st*, %struct.PKCS12_st** %p12, align 8, !tbaa !7
  br label %cleanup

err:                                              ; preds = %if.else, %if.then11, %if.end4, %if.then
  %9 = load %struct.PKCS12_st*, %struct.PKCS12_st** %p12, align 8, !tbaa !7
  call void @PKCS12_free(%struct.PKCS12_st* noundef %9) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end22
  %retval.0 = phi %struct.PKCS12_st* [ %8, %if.end22 ], [ null, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret %struct.PKCS12_st* %retval.0
}

declare dso_local %struct.stack_st_PKCS7* @PKCS12_unpack_authsafes(%struct.PKCS12_st* noundef) local_unnamed_addr #3

declare dso_local void @PKCS12_free(%struct.PKCS12_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @start_check_pkcs12_with_mac(%struct.pkcs12_builder* nocapture noundef %pb, %struct.pkcs12_enc* noundef %mac) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %p12bio = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 2
  %1 = load %struct.bio_st*, %struct.bio_st** %p12bio, align 8, !tbaa !13
  %call = tail call fastcc %struct.PKCS12_st* @from_bio_p12(%struct.bio_st* noundef %1, %struct.pkcs12_enc* noundef %mac) #7
  %2 = bitcast %struct.PKCS12_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 688, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* noundef %2) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.stack_st_PKCS7* @PKCS12_unpack_authsafes(%struct.PKCS12_st* noundef %call) #6
  %safes = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 3
  store %struct.stack_st_PKCS7* %call6, %struct.stack_st_PKCS7** %safes, align 8, !tbaa !12
  %3 = bitcast %struct.stack_st_PKCS7* %call6 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 693, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i8* noundef %3) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5
  %safe_idx = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 4
  store i32 0, i32* %safe_idx, align 8, !tbaa !35
  tail call void @PKCS12_free(%struct.PKCS12_st* noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12, %if.then3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @start_check_pkcs12_file(%struct.pkcs12_builder* nocapture noundef %pb) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %filename = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 0
  %1 = load i8*, i8** %filename, align 8, !tbaa !9
  %call = tail call fastcc %struct.PKCS12_st* @read_p12(i8* noundef %1, %struct.pkcs12_enc* noundef null) #7
  %2 = bitcast %struct.PKCS12_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 708, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* noundef %2) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.stack_st_PKCS7* @PKCS12_unpack_authsafes(%struct.PKCS12_st* noundef %call) #6
  %safes = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 3
  store %struct.stack_st_PKCS7* %call6, %struct.stack_st_PKCS7** %safes, align 8, !tbaa !12
  %3 = bitcast %struct.stack_st_PKCS7* %call6 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 713, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i8* noundef %3) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5
  %safe_idx = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 4
  store i32 0, i32* %safe_idx, align 8, !tbaa !35
  tail call void @PKCS12_free(%struct.PKCS12_st* noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12, %if.then3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.PKCS12_st* @read_p12(i8* noundef %infile, %struct.pkcs12_enc* noundef readonly %mac) unnamed_addr #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %infile, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.PKCS12_st* @d2i_PKCS12_bio(%struct.bio_st* noundef nonnull %call, %struct.PKCS12_st** noundef null) #6
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #6
  %0 = bitcast %struct.PKCS12_st* %call1 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 247, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp eq %struct.pkcs12_enc* %mac, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i32 @PKCS12_mac_present(%struct.PKCS12_st* noundef %call1) #6
  %cmp9 = icmp ne i32 %call8, 0
  %conv = zext i1 %cmp9 to i32
  %call10 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i64 0, i64 0), i32 noundef %conv) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %cleanup

if.else:                                          ; preds = %if.end5
  %call14 = tail call fastcc i32 @check_p12_mac(%struct.PKCS12_st* noundef %call1, %struct.pkcs12_enc* noundef nonnull %mac) #7
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %cleanup

err:                                              ; preds = %if.else, %if.then7, %if.end, %entry
  %p12.0 = phi %struct.PKCS12_st* [ null, %entry ], [ %call1, %if.then7 ], [ %call1, %if.else ], [ %call1, %if.end ]
  tail call void @PKCS12_free(%struct.PKCS12_st* noundef %p12.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.else, %err
  %retval.0 = phi %struct.PKCS12_st* [ null, %err ], [ %call1, %if.else ], [ %call1, %if.then7 ]
  ret %struct.PKCS12_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @start_check_pkcs12_file_with_mac(%struct.pkcs12_builder* nocapture noundef %pb, %struct.pkcs12_enc* noundef %mac) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %filename = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 0
  %1 = load i8*, i8** %filename, align 8, !tbaa !9
  %call = tail call fastcc %struct.PKCS12_st* @read_p12(i8* noundef %1, %struct.pkcs12_enc* noundef %mac) #7
  %2 = bitcast %struct.PKCS12_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 728, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* noundef %2) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.stack_st_PKCS7* @PKCS12_unpack_authsafes(%struct.PKCS12_st* noundef %call) #6
  %safes = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 3
  store %struct.stack_st_PKCS7* %call6, %struct.stack_st_PKCS7** %safes, align 8, !tbaa !12
  %3 = bitcast %struct.stack_st_PKCS7* %call6 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i8* noundef %3) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5
  %safe_idx = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 4
  store i32 0, i32* %safe_idx, align 8, !tbaa !35
  tail call void @PKCS12_free(%struct.PKCS12_st* noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12, %if.then3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @end_check_pkcs12(%struct.pkcs12_builder* nocapture noundef readonly %pb) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %safes = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 3
  %1 = load %struct.stack_st_PKCS7*, %struct.stack_st_PKCS7** %safes, align 8, !tbaa !12
  %call = tail call fastcc %struct.stack_st* @ossl_check_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef %1) #7
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.pkcs7_st*)* @PKCS7_free to void (i8*)*)) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @PKCS7_free(%struct.pkcs7_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @start_check_contentinfo(%struct.pkcs12_builder* nocapture noundef %pb) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %bag_idx = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 6
  store i32 0, i32* %bag_idx, align 8, !tbaa !24
  %safes = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 3
  %1 = load %struct.stack_st_PKCS7*, %struct.stack_st_PKCS7** %safes, align 8, !tbaa !12
  %safe_idx = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 4
  %2 = load i32, i32* %safe_idx, align 8, !tbaa !35
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %safe_idx, align 8, !tbaa !35
  %call = tail call fastcc %struct.stack_st_PKCS12_SAFEBAG* @decode_contentinfo(%struct.stack_st_PKCS7* noundef %1, i32 noundef %2, %struct.pkcs12_enc* noundef null) #7
  %bags = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 5
  store %struct.stack_st_PKCS12_SAFEBAG* %call, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !18
  %3 = bitcast %struct.stack_st_PKCS12_SAFEBAG* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* noundef %3) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %return

if.end6:                                          ; preds = %if.end
  %4 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !18
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %4) #7
  %call9 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call8) #6
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 760, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32 noundef %call9) #6
  br label %return

return:                                           ; preds = %entry, %if.end6, %if.then4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_PKCS12_SAFEBAG* @decode_contentinfo(%struct.stack_st_PKCS7* noundef %safes, i32 noundef %idx, %struct.pkcs12_enc* noundef readonly %enc) unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef %safes) #7
  %call1 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %idx) #6
  %0 = bitcast i8* %call1 to %struct.pkcs7_st*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 315, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), i8* noundef %call1) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds i8, i8* %call1, i64 24
  %1 = bitcast i8* %type to %struct.asn1_object_st**
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %1, align 8, !tbaa !36
  %call3 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #6
  %tobool4.not = icmp eq %struct.pkcs12_enc* %enc, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 320, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i64 0, i64 0), i32 noundef %call3, i32 noundef 26) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end9

if.end9:                                          ; preds = %if.then5
  %pass = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 1
  %3 = load i8*, i8** %pass, align 8, !tbaa !16
  %call11 = tail call i64 @strlen(i8* noundef %3) #8
  %conv = trunc i64 %call11 to i32
  %call12 = tail call %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_unpack_p7encdata(%struct.pkcs7_st* noundef nonnull %0, i8* noundef %3, i32 noundef %conv) #6
  br label %if.end18

if.else:                                          ; preds = %if.end
  %call13 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i64 0, i64 0), i32 noundef %call3, i32 noundef 21) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %if.end16

if.end16:                                         ; preds = %if.else
  %call17 = tail call %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_unpack_p7data(%struct.pkcs7_st* noundef nonnull %0) #6
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.end9
  %bags.0 = phi %struct.stack_st_PKCS12_SAFEBAG* [ %call12, %if.end9 ], [ %call17, %if.end16 ]
  %4 = bitcast %struct.stack_st_PKCS12_SAFEBAG* %bags.0 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* noundef %4) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %cleanup

err:                                              ; preds = %if.end18, %if.else, %if.then5, %entry
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %err
  %retval.0 = phi %struct.stack_st_PKCS12_SAFEBAG* [ null, %err ], [ %bags.0, %if.end18 ]
  ret %struct.stack_st_PKCS12_SAFEBAG* %retval.0
}

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @start_check_contentinfo_encrypted(%struct.pkcs12_builder* nocapture noundef %pb, %struct.pkcs12_enc* noundef %enc) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %bag_idx = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 6
  store i32 0, i32* %bag_idx, align 8, !tbaa !24
  %safes = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 3
  %1 = load %struct.stack_st_PKCS7*, %struct.stack_st_PKCS7** %safes, align 8, !tbaa !12
  %safe_idx = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 4
  %2 = load i32, i32* %safe_idx, align 8, !tbaa !35
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %safe_idx, align 8, !tbaa !35
  %call = tail call fastcc %struct.stack_st_PKCS12_SAFEBAG* @decode_contentinfo(%struct.stack_st_PKCS7* noundef %1, i32 noundef %2, %struct.pkcs12_enc* noundef %enc) #7
  %bags = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 5
  store %struct.stack_st_PKCS12_SAFEBAG* %call, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !18
  %3 = bitcast %struct.stack_st_PKCS12_SAFEBAG* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 770, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* noundef %3) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %return

if.end6:                                          ; preds = %if.end
  %4 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !18
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %4) #7
  %call9 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call8) #6
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 774, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32 noundef %call9) #6
  br label %return

return:                                           ; preds = %entry, %if.end6, %if.then4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @end_check_contentinfo(%struct.pkcs12_builder* nocapture noundef %pb) local_unnamed_addr #1 {
entry:
  %success = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 1
  %0 = load i32, i32* %success, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %bags = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 5
  %1 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !18
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %1) #7
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %bag_idx = getelementptr inbounds %struct.pkcs12_builder, %struct.pkcs12_builder* %pb, i64 0, i32 6
  %2 = load i32, i32* %bag_idx, align 8, !tbaa !24
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call1, i32 noundef %2) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %success, align 8, !tbaa !11
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %3 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !18
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %3) #7
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call8, void (i8*)* noundef bitcast (void (%struct.PKCS12_SAFEBAG_st*)* @PKCS12_SAFEBAG_free to void (i8*)*)) #6
  store %struct.stack_st_PKCS12_SAFEBAG* null, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !18
  br label %return

return:                                           ; preds = %entry, %if.end6
  ret void
}

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #3

declare dso_local %struct.PKCS12_st* @PKCS12_add_safes(%struct.stack_st_PKCS7* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.PKCS12_st* @PKCS12_add_safes_ex(%struct.stack_st_PKCS7* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #3

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @PKCS12_set_mac(%struct.PKCS12_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, %struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local i32 @i2d_PKCS12_bio(%struct.bio_st* noundef, %struct.PKCS12_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @write_p12(%struct.PKCS12_st* noundef %p12, i8* noundef %outfile) unnamed_addr #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %outfile, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @i2d_PKCS12_bio(%struct.bio_st* noundef nonnull %call, %struct.PKCS12_st* noundef %p12) #6
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 201, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i32 noundef %call1, i32 noundef 1) #6
  br label %err

err:                                              ; preds = %if.end, %entry
  %call5 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #6
  ret void
}

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local %struct.x509_st* @d2i_X509(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @OBJ_txt2nid(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @PKCS12_add_friendlyname_utf8(%struct.PKCS12_SAFEBAG_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @PKCS12_add_localkeyid(%struct.PKCS12_SAFEBAG_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @PKCS12_add1_attr_by_txt(%struct.PKCS12_SAFEBAG_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @d2i_AutoPrivateKey(%struct.evp_pkey_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_ATTRIBUTE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local %struct.asn1_object_st* @X509_ATTRIBUTE_get0_object(%struct.x509_attributes_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local i32 @X509_ATTRIBUTE_count(%struct.x509_attributes_st* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_type_st* @X509_ATTRIBUTE_get0_type(%struct.x509_attributes_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i8* @OPENSSL_uni2asc(i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.PKCS12_st* @PKCS12_init_ex(i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.PKCS12_st* @d2i_PKCS12_bio(%struct.bio_st* noundef, %struct.PKCS12_st** noundef) local_unnamed_addr #3

declare dso_local i32 @PKCS12_mac_present(%struct.PKCS12_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_p12_mac(%struct.PKCS12_st* noundef %p12, %struct.pkcs12_enc* nocapture noundef readonly %mac) unnamed_addr #1 {
entry:
  %call = tail call i32 @PKCS12_mac_present(%struct.PKCS12_st* noundef %p12) #6
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i64 0, i64 0), i32 noundef %conv) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %pass = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %mac, i64 0, i32 1
  %0 = load i8*, i8** %pass, align 8, !tbaa !16
  %call3 = tail call i64 @strlen(i8* noundef %0) #8
  %conv4 = trunc i64 %call3 to i32
  %call5 = tail call i32 @PKCS12_verify_mac(%struct.PKCS12_st* noundef %p12, i8* noundef %0, i32 noundef %conv4) #6
  %cmp6 = icmp ne i32 %call5, 0
  %conv7 = zext i1 %cmp6 to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv7) #6
  %tobool9 = icmp ne i32 %call8, 0
  %phi.cast = zext i1 %tobool9 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

declare dso_local i32 @PKCS12_verify_mac(%struct.PKCS12_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #3

declare dso_local %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_unpack_p7encdata(%struct.pkcs7_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_unpack_p7data(%struct.pkcs7_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !8, i64 0}
!10 = !{!"pkcs12_builder", !8, i64 0, !4, i64 8, !8, i64 16, !8, i64 24, !4, i64 32, !8, i64 40, !4, i64 48}
!11 = !{!10, !4, i64 8}
!12 = !{!10, !8, i64 24}
!13 = !{!10, !8, i64 16}
!14 = !{!15, !4, i64 0}
!15 = !{!"pkcs12_enc", !4, i64 0, !8, i64 8, !4, i64 16}
!16 = !{!15, !8, i64 8}
!17 = !{!15, !4, i64 16}
!18 = !{!10, !8, i64 40}
!19 = !{!20, !8, i64 0}
!20 = !{!"pkcs12_attr", !8, i64 0, !8, i64 8}
!21 = !{!20, !8, i64 8}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!10, !4, i64 48}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !23}
!27 = distinct !{!27, !23}
!28 = !{!29, !4, i64 0}
!29 = !{!"asn1_type_st", !4, i64 0, !5, i64 8}
!30 = !{!5, !5, i64 0}
!31 = !{!32, !8, i64 8}
!32 = !{!"asn1_string_st", !4, i64 0, !4, i64 4, !8, i64 8, !33, i64 16}
!33 = !{!"long", !5, i64 0}
!34 = !{!32, !4, i64 0}
!35 = !{!10, !4, i64 32}
!36 = !{!37, !8, i64 24}
!37 = !{!"pkcs7_st", !8, i64 0, !33, i64 8, !4, i64 16, !4, i64 20, !8, i64 24, !5, i64 32, !38, i64 40}
!38 = !{!"PKCS7_CTX_st", !8, i64 0, !8, i64 8}

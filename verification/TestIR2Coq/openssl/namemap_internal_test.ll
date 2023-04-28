; ModuleID = 'test/namemap_internal_test.c'
source_filename = "test/namemap_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_namemap_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_cipher_st = type opaque

@.str = private unnamed_addr constant [19 x i8] c"test_namemap_empty\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"test_namemap_independent\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"test_namemap_stored\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"test_digestbyname\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"test_cipherbyname\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"test_digest_is_a\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"test_cipher_is_a\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"test/namemap_internal_test.c\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"ossl_namemap_empty(NULL)\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"nm = ossl_namemap_new()\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"ossl_namemap_empty(nm)\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"ossl_namemap_add_name(nm, 0, NAME1)\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"name1\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"nm\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"name2\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"alias1\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"ALIAS1\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"cookie\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"num1\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"num2\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"num3\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"num4\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"check1\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"check2\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"check3\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"check4\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"false1\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"ossl_namemap_add_name(nm, id, \22foo\22)\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"AES-128-CBC\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"ossl_namemap_add_name(nm, id, \22bar\22)\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"aes128\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"SHA2-512\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"fetched\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"EVP_MD_is_a(fetched, \22SHA512\22)\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"SHA512\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"EVP_MD_is_a(fetched, \22SHA1\22)\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.44 = private unnamed_addr constant [38 x i8] c"EVP_MD_is_a(EVP_sha256(), \22SHA2-256\22)\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"EVP_MD_is_a(EVP_sha256(), \22SHA3-256\22)\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"SHA3-256\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"AES-256-CCM\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"EVP_CIPHER_is_a(fetched, \22id-aes256-CCM\22)\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"id-aes256-CCM\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"EVP_CIPHER_is_a(fetched, \22AES-128-GCM\22)\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"AES-128-GCM\00", align 1
@.str.53 = private unnamed_addr constant [50 x i8] c"EVP_CIPHER_is_a(EVP_aes_256_gcm(), \22AES-256-GCM\22)\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"AES-256-GCM\00", align 1
@.str.55 = private unnamed_addr constant [50 x i8] c"EVP_CIPHER_is_a(EVP_aes_256_gcm(), \22AES-128-CCM\22)\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"AES-128-CCM\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_namemap_empty) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_namemap_independent) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_namemap_stored) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_digestbyname) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_cipherbyname) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_digest_is_a) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_cipher_is_a) #2
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_namemap_empty() #0 {
entry:
  %call = tail call i32 @ossl_namemap_empty(%struct.ossl_namemap_st* noundef null) #2
  %call1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef %call, i32 noundef 1) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call %struct.ossl_namemap_st* @ossl_namemap_new() #2
  %0 = bitcast %struct.ossl_namemap_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* noundef %0) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @ossl_namemap_empty(%struct.ossl_namemap_st* noundef %call2) #2
  %call7 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef %call6, i32 noundef 1) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = tail call i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %call2, i32 noundef 0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #2
  %call11 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 noundef %call10, i32 noundef 0) #2
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true9
  %call13 = tail call i32 @ossl_namemap_empty(%struct.ossl_namemap_st* noundef %call2) #2
  %call14 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 noundef %call13, i32 noundef 0) #2
  %tobool15 = icmp ne i32 %call14, 0
  %phi.cast = zext i1 %tobool15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  %nm.0 = phi %struct.ossl_namemap_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true9 ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %1 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  tail call void @ossl_namemap_free(%struct.ossl_namemap_st* noundef %nm.0) #2
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_namemap_independent() #0 {
entry:
  %call = tail call %struct.ossl_namemap_st* @ossl_namemap_new() #2
  %0 = bitcast %struct.ossl_namemap_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call2 = tail call fastcc i32 @test_namemap(%struct.ossl_namemap_st* noundef %call) #3
  %tobool3 = icmp ne i32 %call2, 0
  %phi.cast = zext i1 %tobool3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  tail call void @ossl_namemap_free(%struct.ossl_namemap_st* noundef %call) #2
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_namemap_stored() #0 {
entry:
  %call = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef null) #2
  %0 = bitcast %struct.ossl_namemap_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call2 = tail call fastcc i32 @test_namemap(%struct.ossl_namemap_st* noundef %call) #3
  %tobool3 = icmp ne i32 %call2, 0
  %phi.cast = zext i1 %tobool3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_digestbyname() #0 {
entry:
  %call = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef null) #2
  %0 = bitcast %struct.ossl_namemap_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %call, i32 noundef 0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)) #2
  %call3 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 noundef %call2, i32 noundef 0) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %call, i32 noundef %call2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #2
  %call8 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call7, i32 noundef %call2) #2
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end6
  %call12 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)) #2
  %1 = bitcast %struct.evp_md_st* %call12 to i8*
  %call13 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* noundef %1) #2
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end11
  %call17 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #2
  %2 = bitcast %struct.evp_md_st* %call17 to i8*
  %call18 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* noundef %1, i8* noundef %2) #2
  %tobool19.not = icmp ne i32 %call18, 0
  %. = zext i1 %tobool19.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end11, %if.end6, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end6 ], [ 0, %if.end11 ], [ %., %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cipherbyname() #0 {
entry:
  %call = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef null) #2
  %0 = bitcast %struct.ossl_namemap_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %call, i32 noundef 0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0)) #2
  %call3 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 noundef %call2, i32 noundef 0) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %call, i32 noundef %call2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #2
  %call8 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call7, i32 noundef %call2) #2
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end6
  %call12 = tail call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0)) #2
  %1 = bitcast %struct.evp_cipher_st* %call12 to i8*
  %call13 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8* noundef %1) #2
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end11
  %call17 = tail call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #2
  %2 = bitcast %struct.evp_cipher_st* %call17 to i8*
  %call18 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i8* noundef %1, i8* noundef %2) #2
  %tobool19.not = icmp ne i32 %call18, 0
  %. = zext i1 %tobool19.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end11, %if.end6, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end6 ], [ 0, %if.end11 ], [ %., %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_digest_is_a() #0 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8* noundef null) #2
  %0 = bitcast %struct.evp_md_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0)) #2
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #2
  %cmp6 = icmp ne i32 %call5, 0
  %conv7 = zext i1 %cmp6 to i32
  %call8 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv7) #2
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  %rv.0 = phi i32 [ 1, %lor.lhs.false ], [ 0, %if.then10 ]
  %call12 = tail call %struct.evp_md_st* @EVP_sha256() #2
  %call13 = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %call12, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0)) #2
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv15) #2
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then25, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end11
  %call19 = tail call %struct.evp_md_st* @EVP_sha256() #2
  %call20 = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %call19, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0)) #2
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.46, i64 0, i64 0), i32 noundef %conv22) #2
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %lor.lhs.false18, %if.end11
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %lor.lhs.false18
  %rv.1 = phi i32 [ %rv.0, %lor.lhs.false18 ], [ 0, %if.then25 ]
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call) #2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end26
  %retval.0 = phi i32 [ %rv.1, %if.end26 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cipher_is_a() #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8* noundef null) #2
  %0 = bitcast %struct.evp_cipher_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* noundef %call, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0)) #2
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.49, i64 0, i64 0), i32 noundef %conv) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* noundef %call, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0)) #2
  %cmp6 = icmp ne i32 %call5, 0
  %conv7 = zext i1 %cmp6 to i32
  %call8 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv7) #2
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  %rv.0 = phi i32 [ 1, %lor.lhs.false ], [ 0, %if.then10 ]
  %call12 = tail call %struct.evp_cipher_st* @EVP_aes_256_gcm() #2
  %call13 = tail call i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* noundef %call12, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0)) #2
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv15) #2
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then25, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end11
  %call19 = tail call %struct.evp_cipher_st* @EVP_aes_256_gcm() #2
  %call20 = tail call i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* noundef %call19, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0)) #2
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv22) #2
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %lor.lhs.false18, %if.end11
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %lor.lhs.false18
  %rv.1 = phi i32 [ %rv.0, %lor.lhs.false18 ], [ 0, %if.then25 ]
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call) #2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end26
  %retval.0 = phi i32 [ %rv.1, %if.end26 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_namemap_empty(%struct.ossl_namemap_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_namemap_st* @ossl_namemap_new() local_unnamed_addr #1

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @ossl_namemap_free(%struct.ossl_namemap_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_namemap(%struct.ossl_namemap_st* noundef %nm) unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %nm, i32 noundef 0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #2
  %call1 = tail call i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %nm, i32 noundef 0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #2
  %call2 = tail call i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %nm, i32 noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)) #2
  %call3 = tail call i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %nm, i32 noundef 0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)) #2
  %call4 = tail call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef %nm, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #2
  %call5 = tail call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef %nm, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #2
  %call6 = tail call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef %nm, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)) #2
  %call7 = tail call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef %nm, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)) #2
  %call8 = tail call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef %nm, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0)) #2
  %call9 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 noundef %call, i32 noundef 0) #2
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call10 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 noundef %call1, i32 noundef 0) #2
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.end, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 noundef %call, i32 noundef %call2) #2
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.end, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %call16 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 noundef %call2, i32 noundef %call3) #2
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.end, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %call19 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 noundef %call, i32 noundef %call4) #2
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.end, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %call22 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call1, i32 noundef %call5) #2
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.end, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %call25 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i32 noundef %call2, i32 noundef %call6) #2
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.end, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %call28 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call3, i32 noundef %call7) #2
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true27
  %call30 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 noundef %call8, i32 noundef 0) #2
  %tobool31 = icmp ne i32 %call30, 0
  %phi.cast = zext i1 %tobool31 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true27, %land.lhs.true24, %land.lhs.true21, %land.lhs.true18, %land.lhs.true15, %land.lhs.true12, %land.lhs.true, %entry
  %0 = phi i32 [ 0, %land.lhs.true27 ], [ 0, %land.lhs.true24 ], [ 0, %land.lhs.true21 ], [ 0, %land.lhs.true18 ], [ 0, %land.lhs.true15 ], [ 0, %land.lhs.true12 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

declare dso_local i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_MD_is_a(%struct.evp_md_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_sha256() local_unnamed_addr #1

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_aes_256_gcm() local_unnamed_addr #1

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}

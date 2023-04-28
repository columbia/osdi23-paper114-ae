; ModuleID = 'test/asn1_internal_test.c'
source_filename = "test/asn1_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_string_table_st = type { i32, i64, i64, i64, i64 }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.evp_pkey_st = type opaque
%struct.X509_pubkey_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.x509_sig_info_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.rsa_st = type opaque
%struct.bignum_st = type opaque

@.str = private unnamed_addr constant [18 x i8] c"test_tbl_standard\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"test_standard_methods\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"test_empty_nonoptional_content\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"test_unicode_range\00", align 1
@tbl_standard = internal unnamed_addr constant [28 x %struct.asn1_string_table_st] [%struct.asn1_string_table_st { i32 13, i64 1, i64 64, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 14, i64 2, i64 2, i64 2, i64 2 }, %struct.asn1_string_table_st { i32 15, i64 1, i64 128, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 16, i64 1, i64 128, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 17, i64 1, i64 64, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 18, i64 1, i64 64, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 48, i64 1, i64 128, i64 16, i64 2 }, %struct.asn1_string_table_st { i32 49, i64 1, i64 -1, i64 10262, i64 0 }, %struct.asn1_string_table_st { i32 54, i64 1, i64 -1, i64 10262, i64 0 }, %struct.asn1_string_table_st { i32 55, i64 1, i64 -1, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 99, i64 1, i64 32768, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 100, i64 1, i64 32768, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 101, i64 1, i64 32768, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 105, i64 1, i64 64, i64 2, i64 2 }, %struct.asn1_string_table_st { i32 156, i64 -1, i64 -1, i64 2048, i64 2 }, %struct.asn1_string_table_st { i32 173, i64 1, i64 32768, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 174, i64 -1, i64 -1, i64 2, i64 2 }, %struct.asn1_string_table_st { i32 391, i64 1, i64 -1, i64 16, i64 2 }, %struct.asn1_string_table_st { i32 417, i64 -1, i64 -1, i64 2048, i64 2 }, %struct.asn1_string_table_st { i32 460, i64 1, i64 256, i64 16, i64 2 }, %struct.asn1_string_table_st { i32 957, i64 2, i64 2, i64 2, i64 2 }, %struct.asn1_string_table_st { i32 1004, i64 1, i64 12, i64 1, i64 2 }, %struct.asn1_string_table_st { i32 1005, i64 1, i64 13, i64 1, i64 2 }, %struct.asn1_string_table_st { i32 1006, i64 1, i64 11, i64 1, i64 2 }, %struct.asn1_string_table_st { i32 1090, i64 3, i64 3, i64 2, i64 2 }, %struct.asn1_string_table_st { i32 1091, i64 3, i64 3, i64 1, i64 2 }, %struct.asn1_string_table_st { i32 1092, i64 0, i64 -1, i64 8192, i64 2 }, %struct.asn1_string_table_st { i32 1208, i64 1, i64 128, i64 8192, i64 2 }], align 16
@.str.4 = private unnamed_addr constant [26 x i8] c"test/asn1_internal_test.c\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"last_nid\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"asn1 tbl_standard: Table order OK\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"asn1 tbl_standard: out of order\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"asn1 tbl_standard: Index %zu, NID %d, Name=%s\00", align 1
@standard_methods = internal unnamed_addr constant [16 x %struct.evp_pkey_asn1_method_st*] [%struct.evp_pkey_asn1_method_st* getelementptr inbounds ([2 x %struct.evp_pkey_asn1_method_st], [2 x %struct.evp_pkey_asn1_method_st]* @ossl_rsa_asn1_meths, i32 0, i32 0), %struct.evp_pkey_asn1_method_st* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x %struct.evp_pkey_asn1_method_st]* @ossl_rsa_asn1_meths to i8*), i64 320) to %struct.evp_pkey_asn1_method_st*), %struct.evp_pkey_asn1_method_st* @ossl_dh_asn1_meth, %struct.evp_pkey_asn1_method_st* getelementptr inbounds ([5 x %struct.evp_pkey_asn1_method_st], [5 x %struct.evp_pkey_asn1_method_st]* @ossl_dsa_asn1_meths, i32 0, i32 0), %struct.evp_pkey_asn1_method_st* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %struct.evp_pkey_asn1_method_st]* @ossl_dsa_asn1_meths to i8*), i64 320) to %struct.evp_pkey_asn1_method_st*), %struct.evp_pkey_asn1_method_st* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %struct.evp_pkey_asn1_method_st]* @ossl_dsa_asn1_meths to i8*), i64 640) to %struct.evp_pkey_asn1_method_st*), %struct.evp_pkey_asn1_method_st* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %struct.evp_pkey_asn1_method_st]* @ossl_dsa_asn1_meths to i8*), i64 960) to %struct.evp_pkey_asn1_method_st*), %struct.evp_pkey_asn1_method_st* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %struct.evp_pkey_asn1_method_st]* @ossl_dsa_asn1_meths to i8*), i64 1280) to %struct.evp_pkey_asn1_method_st*), %struct.evp_pkey_asn1_method_st* @ossl_eckey_asn1_meth, %struct.evp_pkey_asn1_method_st* @ossl_rsa_pss_asn1_meth, %struct.evp_pkey_asn1_method_st* @ossl_dhx_asn1_meth, %struct.evp_pkey_asn1_method_st* @ossl_ecx25519_asn1_meth, %struct.evp_pkey_asn1_method_st* @ossl_ecx448_asn1_meth, %struct.evp_pkey_asn1_method_st* @ossl_ed25519_asn1_meth, %struct.evp_pkey_asn1_method_st* @ossl_ed448_asn1_meth, %struct.evp_pkey_asn1_method_st* @ossl_sm2_asn1_meth], align 16
@.str.10 = private unnamed_addr constant [149 x i8] c"((*tmp)->pem_str == NULL && ((*tmp)->pkey_flags & ASN1_PKEY_ALIAS) != 0) || ((*tmp)->pem_str != NULL && ((*tmp)->pkey_flags & ASN1_PKEY_ALIAS) == 0)\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"asn1 standard methods: Index %zu, pkey ID %d, Name=%s\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"last_pkey_id\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"asn1 standard methods: Table order OK\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"asn1 standard methods: out of order\00", align 1
@ossl_rsa_asn1_meths = external dso_local constant [2 x %struct.evp_pkey_asn1_method_st], align 16
@ossl_dh_asn1_meth = external dso_local constant %struct.evp_pkey_asn1_method_st, align 8
@ossl_dsa_asn1_meths = external dso_local constant [5 x %struct.evp_pkey_asn1_method_st], align 16
@ossl_eckey_asn1_meth = external dso_local constant %struct.evp_pkey_asn1_method_st, align 8
@ossl_rsa_pss_asn1_meth = external dso_local constant %struct.evp_pkey_asn1_method_st, align 8
@ossl_dhx_asn1_meth = external dso_local constant %struct.evp_pkey_asn1_method_st, align 8
@ossl_ecx25519_asn1_meth = external dso_local constant %struct.evp_pkey_asn1_method_st, align 8
@ossl_ecx448_asn1_meth = external dso_local constant %struct.evp_pkey_asn1_method_st, align 8
@ossl_ed25519_asn1_meth = external dso_local constant %struct.evp_pkey_asn1_method_st, align 8
@ossl_ed448_asn1_meth = external dso_local constant %struct.evp_pkey_asn1_method_st, align 8
@ossl_sm2_asn1_meth = external dso_local constant %struct.evp_pkey_asn1_method_st, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"rsa = RSA_new()\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"n = BN_new()\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"e = BN_new()\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"RSA_set0_key(rsa, n, e, NULL)\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"i2d_RSAPrivateKey(rsa, NULL)\00", align 1
@__const.test_unicode_range.univ_ok = private unnamed_addr constant [17 x i8] c"\00\00\00\00\00\00\D7\FF\00\00\E0\00\00\10\FF\FF\00", align 16
@__const.test_unicode_range.univ_bad = private unnamed_addr constant [21 x i8] c"\00\00\D8\00\00\00\DF\FF\00\11\00\00\80\00\00\00\FF\FF\FF\FF\00", align 16
@.str.20 = private unnamed_addr constant [68 x i8] c"ASN1_mbstring_copy(NULL, univ, 4, MBSTRING_UNIV, B_ASN1_UTF8STRING)\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"expected\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_tbl_standard) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_standard_methods) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_empty_nonoptional_content) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_unicode_range) #4
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_tbl_standard() #0 {
for.end:
  %call = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef 1208, i32 noundef 0) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %for.end
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0)) #4
  br label %cleanup

if.end4:                                          ; preds = %for.end
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0)) #4
  br label %for.body7

for.body7:                                        ; preds = %if.end4, %for.body7
  %i.134 = phi i64 [ 0, %if.end4 ], [ %inc12, %for.body7 ]
  %tmp.133 = phi %struct.asn1_string_table_st* [ getelementptr inbounds ([28 x %struct.asn1_string_table_st], [28 x %struct.asn1_string_table_st]* @tbl_standard, i64 0, i64 0), %if.end4 ], [ %incdec.ptr13, %for.body7 ]
  %nid8 = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %tmp.133, i64 0, i32 0
  %0 = load i32, i32* %nid8, align 8, !tbaa !3
  %call10 = tail call i8* @OBJ_nid2ln(i32 noundef %0) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i64 noundef %i.134, i32 noundef %0, i8* noundef %call10) #4
  %inc12 = add nuw nsw i64 %i.134, 1
  %incdec.ptr13 = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %tmp.133, i64 1
  %exitcond.not = icmp eq i64 %inc12, 28
  br i1 %exitcond.not, label %cleanup, label %for.body7, !llvm.loop !9

cleanup:                                          ; preds = %for.body7, %if.then3
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %for.body7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_standard_methods() #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %ok.059 = phi i32 [ 1, %entry ], [ %ok.1, %for.inc ]
  %i.058 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  %last_pkey_id.057 = phi i32 [ -1, %entry ], [ %1, %for.inc ]
  %tmp.055 = phi %struct.evp_pkey_asn1_method_st** [ getelementptr inbounds ([16 x %struct.evp_pkey_asn1_method_st*], [16 x %struct.evp_pkey_asn1_method_st*]* @standard_methods, i64 0, i64 0), %entry ], [ %incdec.ptr, %for.inc ]
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %tmp.055, align 8, !tbaa !11
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %pkey_id, align 8, !tbaa !13
  %cmp1 = icmp slt i32 %1, %last_pkey_id.057
  br i1 %cmp1, label %for.end, label %if.end

if.end:                                           ; preds = %for.body
  %pem_str = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 3
  %2 = load i8*, i8** %pem_str, align 8, !tbaa !15
  %cmp3 = icmp eq i8* %2, null
  %pkey_flags = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 2
  %3 = load i64, i64* %pkey_flags, align 8, !tbaa !16
  %and = and i64 %3, 1
  %cmp9 = icmp eq i64 %and, 0
  %cmp4.not = icmp ne i64 %and, 0
  %4 = select i1 %cmp3, i1 %cmp4.not, i1 %cmp9
  %lor.ext = zext i1 %4 to i32
  %call = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([149 x i8], [149 x i8]* @.str.10, i64 0, i64 0), i32 noundef %lor.ext) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then11, label %for.inc

if.then11:                                        ; preds = %if.end
  %5 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %tmp.055, align 8, !tbaa !11
  %pkey_id12 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %5, i64 0, i32 0
  %6 = load i32, i32* %pkey_id12, align 8, !tbaa !13
  %call14 = tail call i8* @OBJ_nid2sn(i32 noundef %6) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef %i.058, i32 noundef %6, i8* noundef %call14) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then11
  %ok.1 = phi i32 [ %ok.059, %if.end ], [ 0, %if.then11 ]
  %inc = add nuw nsw i64 %i.058, 1
  %incdec.ptr = getelementptr inbounds %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %tmp.055, i64 1
  %exitcond.not = icmp eq i64 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !17

for.end:                                          ; preds = %for.body, %for.inc
  %ok.0.lcssa = phi i32 [ %ok.059, %for.body ], [ %ok.1, %for.inc ]
  %last_pkey_id.1 = phi i32 [ 0, %for.body ], [ %1, %for.inc ]
  %call16 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %last_pkey_id.1, i32 noundef 0) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %for.end
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0)) #4
  br label %cleanup

if.end19:                                         ; preds = %for.end
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0)) #4
  %7 = load i32, i32* getelementptr inbounds ([2 x %struct.evp_pkey_asn1_method_st], [2 x %struct.evp_pkey_asn1_method_st]* @ossl_rsa_asn1_meths, i64 0, i64 0, i32 0), align 16, !tbaa !13
  %call26 = tail call i8* @OBJ_nid2sn(i32 noundef %7) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef 0, i32 noundef %7, i8* noundef %call26) #4
  %8 = load i32, i32* getelementptr inbounds ([2 x %struct.evp_pkey_asn1_method_st], [2 x %struct.evp_pkey_asn1_method_st]* @ossl_rsa_asn1_meths, i64 0, i64 1, i32 0), align 16, !tbaa !13
  %call26.1 = tail call i8* @OBJ_nid2sn(i32 noundef %8) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef 1, i32 noundef %8, i8* noundef %call26.1) #4
  %9 = load i32, i32* getelementptr inbounds (%struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* @ossl_dh_asn1_meth, i64 0, i32 0), align 8, !tbaa !13
  %call26.2 = tail call i8* @OBJ_nid2sn(i32 noundef %9) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef 2, i32 noundef %9, i8* noundef %call26.2) #4
  %10 = load i32, i32* getelementptr inbounds ([5 x %struct.evp_pkey_asn1_method_st], [5 x %struct.evp_pkey_asn1_method_st]* @ossl_dsa_asn1_meths, i64 0, i64 0, i32 0), align 16, !tbaa !13
  %call26.3 = tail call i8* @OBJ_nid2sn(i32 noundef %10) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef 3, i32 noundef %10, i8* noundef %call26.3) #4
  %11 = load i32, i32* getelementptr inbounds ([5 x %struct.evp_pkey_asn1_method_st], [5 x %struct.evp_pkey_asn1_method_st]* @ossl_dsa_asn1_meths, i64 0, i64 1, i32 0), align 16, !tbaa !13
  %call26.4 = tail call i8* @OBJ_nid2sn(i32 noundef %11) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef 4, i32 noundef %11, i8* noundef %call26.4) #4
  %12 = load i32, i32* getelementptr inbounds ([5 x %struct.evp_pkey_asn1_method_st], [5 x %struct.evp_pkey_asn1_method_st]* @ossl_dsa_asn1_meths, i64 0, i64 2, i32 0), align 16, !tbaa !13
  %call26.5 = tail call i8* @OBJ_nid2sn(i32 noundef %12) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef 5, i32 noundef %12, i8* noundef %call26.5) #4
  %13 = load i32, i32* getelementptr inbounds ([5 x %struct.evp_pkey_asn1_method_st], [5 x %struct.evp_pkey_asn1_method_st]* @ossl_dsa_asn1_meths, i64 0, i64 3, i32 0), align 16, !tbaa !13
  %call26.6 = tail call i8* @OBJ_nid2sn(i32 noundef %13) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef 6, i32 noundef %13, i8* noundef %call26.6) #4
  %14 = load i32, i32* getelementptr inbounds ([5 x %struct.evp_pkey_asn1_method_st], [5 x %struct.evp_pkey_asn1_method_st]* @ossl_dsa_asn1_meths, i64 0, i64 4, i32 0), align 16, !tbaa !13
  %call26.7 = tail call i8* @OBJ_nid2sn(i32 noundef %14) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef 7, i32 noundef %14, i8* noundef %call26.7) #4
  %15 = load i32, i32* getelementptr inbounds (%struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* @ossl_eckey_asn1_meth, i64 0, i32 0), align 8, !tbaa !13
  %call26.8 = tail call i8* @OBJ_nid2sn(i32 noundef %15) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef 8, i32 noundef %15, i8* noundef %call26.8) #4
  %16 = load i32, i32* getelementptr inbounds (%struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* @ossl_rsa_pss_asn1_meth, i64 0, i32 0), align 8, !tbaa !13
  %call26.9 = tail call i8* @OBJ_nid2sn(i32 noundef %16) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef 9, i32 noundef %16, i8* noundef %call26.9) #4
  %17 = load i32, i32* getelementptr inbounds (%struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* @ossl_dhx_asn1_meth, i64 0, i32 0), align 8, !tbaa !13
  %call26.10 = tail call i8* @OBJ_nid2sn(i32 noundef %17) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef 10, i32 noundef %17, i8* noundef %call26.10) #4
  %18 = load i32, i32* getelementptr inbounds (%struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* @ossl_ecx25519_asn1_meth, i64 0, i32 0), align 8, !tbaa !13
  %call26.11 = tail call i8* @OBJ_nid2sn(i32 noundef %18) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef 11, i32 noundef %18, i8* noundef %call26.11) #4
  %19 = load i32, i32* getelementptr inbounds (%struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* @ossl_ecx448_asn1_meth, i64 0, i32 0), align 8, !tbaa !13
  %call26.12 = tail call i8* @OBJ_nid2sn(i32 noundef %19) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef 12, i32 noundef %19, i8* noundef %call26.12) #4
  %20 = load i32, i32* getelementptr inbounds (%struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* @ossl_ed25519_asn1_meth, i64 0, i32 0), align 8, !tbaa !13
  %call26.13 = tail call i8* @OBJ_nid2sn(i32 noundef %20) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef 13, i32 noundef %20, i8* noundef %call26.13) #4
  %21 = load i32, i32* getelementptr inbounds (%struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* @ossl_ed448_asn1_meth, i64 0, i32 0), align 8, !tbaa !13
  %call26.14 = tail call i8* @OBJ_nid2sn(i32 noundef %21) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef 14, i32 noundef %21, i8* noundef %call26.14) #4
  %22 = load i32, i32* getelementptr inbounds (%struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* @ossl_sm2_asn1_meth, i64 0, i32 0), align 8, !tbaa !13
  %call26.15 = tail call i8* @OBJ_nid2sn(i32 noundef %22) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 noundef 15, i32 noundef %22, i8* noundef %call26.15) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then18
  %retval.0 = phi i32 [ %ok.0.lcssa, %if.then18 ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_empty_nonoptional_content() #0 {
entry:
  %call = tail call %struct.rsa_st* @RSA_new() #4
  %0 = bitcast %struct.rsa_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #4
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* noundef %1) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #4
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* noundef %2) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call i32 @RSA_set0_key(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef null) #4
  %cmp = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 noundef 134, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  %call13 = tail call i32 @i2d_RSAPrivateKey(%struct.rsa_st* noundef %call, i8** noundef null) #4
  %call14 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %call13, i32 noundef 0) #4
  %tobool15.not = icmp ne i32 %call14, 0
  %spec.select = zext i1 %tobool15.not to i32
  br label %end

end:                                              ; preds = %if.end, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9
  %n.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ]
  %e.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ]
  %ok.0 = phi i32 [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end ]
  tail call void @RSA_free(%struct.rsa_st* noundef %call) #4
  tail call void @BN_free(%struct.bignum_st* noundef %n.0) #4
  tail call void @BN_free(%struct.bignum_st* noundef %e.0) #4
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unicode_range() #0 {
entry:
  %univ_ok = alloca [17 x i8], align 16
  %univ_bad = alloca [21 x i8], align 16
  %0 = getelementptr inbounds [17 x i8], [17 x i8]* %univ_ok, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 17, i8* nonnull %0) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(17) %0, i8* noundef nonnull align 16 dereferenceable(17) getelementptr inbounds ([17 x i8], [17 x i8]* @__const.test_unicode_range.univ_ok, i64 0, i64 0), i64 17, i1 false)
  %1 = getelementptr inbounds [21 x i8], [21 x i8]* %univ_bad, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %1) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(21) %1, i8* noundef nonnull align 16 dereferenceable(21) getelementptr inbounds ([21 x i8], [21 x i8]* @__const.test_unicode_range.univ_bad, i64 0, i64 0), i64 21, i1 false)
  %call = call fastcc i32 @test_unicode(i8* noundef nonnull %0, i64 noundef 16, i32 noundef 12) #6
  %tobool.not = icmp ne i32 %call, 0
  %call2 = call fastcc i32 @test_unicode(i8* noundef nonnull %1, i64 noundef 20, i32 noundef -1) #6
  %tobool3.not = icmp ne i32 %call2, 0
  %narrow = select i1 %tobool3.not, i1 %tobool.not, i1 false
  %ok.1 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 17, i8* nonnull %0) #5
  ret i32 %ok.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #1

declare dso_local i8* @OBJ_nid2ln(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.rsa_st* @RSA_new() local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare dso_local i32 @RSA_set0_key(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_RSAPrivateKey(%struct.rsa_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @RSA_free(%struct.rsa_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_unicode(i8* noundef %univ, i64 noundef %len, i32 noundef %expected) unnamed_addr #0 {
entry:
  %add.ptr = getelementptr inbounds i8, i8* %univ, i64 %len
  %cmp8 = icmp sgt i64 %len, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %ok.010 = phi i32 [ %spec.select, %for.body ], [ 1, %entry ]
  %univ.addr.09 = phi i8* [ %add.ptr2, %for.body ], [ %univ, %entry ]
  %call = tail call i32 @ASN1_mbstring_copy(%struct.asn1_string_st** noundef null, i8* noundef %univ.addr.09, i32 noundef 4, i32 noundef 4100, i64 noundef 8192) #4
  %call1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call, i32 noundef %expected) #4
  %tobool.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %ok.010
  %add.ptr2 = getelementptr inbounds i8, i8* %univ.addr.09, i64 4
  %cmp = icmp ult i8* %add.ptr2, %add.ptr
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !18

for.end:                                          ; preds = %for.body, %entry
  %ok.0.lcssa = phi i32 [ 1, %entry ], [ %spec.select, %for.body ]
  ret i32 %ok.0.lcssa
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ASN1_mbstring_copy(%struct.asn1_string_st** noundef, i8* noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 0}
!4 = !{!"asn1_string_table_st", !5, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"long", !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !5, i64 0}
!14 = !{!"evp_pkey_asn1_method_st", !5, i64 0, !5, i64 4, !8, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312}
!15 = !{!14, !12, i64 16}
!16 = !{!14, !8, i64 8}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}

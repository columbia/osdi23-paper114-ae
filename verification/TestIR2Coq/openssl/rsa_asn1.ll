; ModuleID = 'crypto/rsa/rsa_asn1.c'
source_filename = "crypto/rsa/rsa_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.rsa_pss_params_st = type { %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.rsa_oaep_params_st = type { %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.X509_algor_st* }
%struct.rsa_st = type { i32, %struct.ossl_lib_ctx_st*, i32, %struct.rsa_meth_st*, %struct.engine_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_st*, %struct.stack_st_RSA_PRIME_INFO*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_blinding_st*, %struct.bn_blinding_st*, i8*, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)*, i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.engine_st = type opaque
%struct.bignum_st = type opaque
%struct.rsa_pss_params_30_st = type { i32, %struct.anon, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.stack_st_RSA_PRIME_INFO = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.bn_blinding_st = type opaque

@RSA_PRIME_INFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @RSA_PRIME_INFO_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [15 x i8] c"RSA_PRIME_INFO\00", align 1
@RSAPrivateKey_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([10 x %struct.ASN1_TEMPLATE_st], [10 x %struct.ASN1_TEMPLATE_st]* bitcast ([10 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @RSAPrivateKey_seq_tt to [10 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 10, i8* bitcast (%struct.ASN1_AUX_st* @RSAPrivateKey_aux to i8*), i64 224, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0) }, align 8
@RSAPrivateKey_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @rsa_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"RSAPrivateKey\00", align 1
@RSAPublicKey_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @RSAPublicKey_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* bitcast (%struct.ASN1_AUX_st* @RSAPublicKey_aux to i8*), i64 224, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0) }, align 8
@RSAPublicKey_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @rsa_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"RSAPublicKey\00", align 1
@RSA_PSS_PARAMS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @RSA_PSS_PARAMS_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* bitcast (%struct.ASN1_AUX_st* @RSA_PSS_PARAMS_aux to i8*), i64 40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0) }, align 8
@RSA_PSS_PARAMS_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @rsa_pss_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"RSA_PSS_PARAMS\00", align 1
@RSA_OAEP_PARAMS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @RSA_OAEP_PARAMS_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* bitcast (%struct.ASN1_AUX_st* @RSA_OAEP_PARAMS_aux to i8*), i64 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0) }, align 8
@RSA_OAEP_PARAMS_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @rsa_oaep_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"RSA_OAEP_PARAMS\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@RSA_PRIME_INFO_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CBIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CBIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CBIGNUM_it }], align 16
@.str.9 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"dmp1\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"dmq1\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"iqmp\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"prime_infos\00", align 1
@RSAPrivateKey_seq_tt = internal constant [10 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @BIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @BIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CBIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CBIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CBIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CBIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CBIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CBIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @RSA_PRIME_INFO_it }], align 16
@RSAPublicKey_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @BIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @BIGNUM_it }], align 16
@.str.20 = private unnamed_addr constant [14 x i8] c"hashAlgorithm\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"maskGenAlgorithm\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"saltLength\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"trailerField\00", align 1
@RSA_PSS_PARAMS_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 1, i64 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 2, i64 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 3, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16
@.str.25 = private unnamed_addr constant [9 x i8] c"hashFunc\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"maskGenFunc\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"pSourceFunc\00", align 1
@RSA_OAEP_PARAMS_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 1, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 2, i64 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @RSA_PRIME_INFO_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @RSA_PRIME_INFO_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @RSAPrivateKey_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @RSAPrivateKey_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @RSAPublicKey_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @RSAPublicKey_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @RSA_PSS_PARAMS_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @RSA_PSS_PARAMS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_pss_params_st* @d2i_RSA_PSS_PARAMS(%struct.rsa_pss_params_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.rsa_pss_params_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @RSA_PSS_PARAMS_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.rsa_pss_params_st*
  ret %struct.rsa_pss_params_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_RSA_PSS_PARAMS(%struct.rsa_pss_params_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.rsa_pss_params_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @RSA_PSS_PARAMS_it.local_it) #3
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_pss_params_st* @RSA_PSS_PARAMS_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @RSA_PSS_PARAMS_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.rsa_pss_params_st*
  ret %struct.rsa_pss_params_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @RSA_PSS_PARAMS_free(%struct.rsa_pss_params_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.rsa_pss_params_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @RSA_PSS_PARAMS_it.local_it) #3
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_pss_params_st* @RSA_PSS_PARAMS_dup(%struct.rsa_pss_params_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.rsa_pss_params_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @RSA_PSS_PARAMS_it.local_it, i8* noundef %0) #3
  %1 = bitcast i8* %call1 to %struct.rsa_pss_params_st*
  ret %struct.rsa_pss_params_st* %1
}

declare i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @RSA_OAEP_PARAMS_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @RSA_OAEP_PARAMS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_oaep_params_st* @d2i_RSA_OAEP_PARAMS(%struct.rsa_oaep_params_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.rsa_oaep_params_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @RSA_OAEP_PARAMS_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.rsa_oaep_params_st*
  ret %struct.rsa_oaep_params_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_RSA_OAEP_PARAMS(%struct.rsa_oaep_params_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.rsa_oaep_params_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @RSA_OAEP_PARAMS_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_oaep_params_st* @RSA_OAEP_PARAMS_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @RSA_OAEP_PARAMS_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.rsa_oaep_params_st*
  ret %struct.rsa_oaep_params_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @RSA_OAEP_PARAMS_free(%struct.rsa_oaep_params_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.rsa_oaep_params_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @RSA_OAEP_PARAMS_it.local_it) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @d2i_RSAPrivateKey(%struct.rsa_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.rsa_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @RSAPrivateKey_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.rsa_st*
  ret %struct.rsa_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_RSAPrivateKey(%struct.rsa_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.rsa_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @RSAPrivateKey_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @d2i_RSAPublicKey(%struct.rsa_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.rsa_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @RSAPublicKey_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.rsa_st*
  ret %struct.rsa_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_RSAPublicKey(%struct.rsa_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.rsa_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @RSAPublicKey_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @RSAPublicKey_dup(%struct.rsa_st* noundef %rsa) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.rsa_st* %rsa to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @RSAPublicKey_it.local_it, i8* noundef %0) #3
  %1 = bitcast i8* %call1 to %struct.rsa_st*
  ret %struct.rsa_st* %1
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @RSAPrivateKey_dup(%struct.rsa_st* noundef %rsa) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.rsa_st* %rsa to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @RSAPrivateKey_it.local_it, i8* noundef %0) #3
  %1 = bitcast i8* %call1 to %struct.rsa_st*
  ret %struct.rsa_st* %1
}

declare %struct.ASN1_ITEM_st* @CBIGNUM_it() #2

declare %struct.ASN1_ITEM_st* @INT32_it() #2

declare %struct.ASN1_ITEM_st* @BIGNUM_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %exarg) #1 {
entry:
  switch i32 %operation, label %return [
    i32 0, label %if.then
    i32 2, label %if.then4
    i32 5, label %if.then7
  ]

if.then:                                          ; preds = %entry
  %call = tail call %struct.rsa_st* @RSA_new() #3
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.rsa_st**
  store %struct.rsa_st* %call, %struct.rsa_st** %0, align 8, !tbaa !4
  %cmp1.not = icmp eq %struct.rsa_st* %call, null
  %. = select i1 %cmp1.not, i32 0, i32 2
  br label %return

if.then4:                                         ; preds = %entry
  %1 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.rsa_st**
  %2 = load %struct.rsa_st*, %struct.rsa_st** %1, align 8, !tbaa !4
  tail call void @RSA_free(%struct.rsa_st* noundef %2) #3
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  br label %return

if.then7:                                         ; preds = %entry
  %3 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.rsa_st**
  %4 = load %struct.rsa_st*, %struct.rsa_st** %3, align 8, !tbaa !4
  %version = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %4, i64 0, i32 2
  %5 = load i32, i32* %version, align 8, !tbaa !8
  %cmp8.not = icmp eq i32 %5, 1
  br i1 %cmp8.not, label %if.end10, label %return

if.end10:                                         ; preds = %if.then7
  %call11 = tail call i32 @ossl_rsa_multip_calc_product(%struct.rsa_st* noundef nonnull %4) #3
  %cmp12 = icmp eq i32 %call11, 1
  %cond = select i1 %cmp12, i32 2, i32 0
  br label %return

return:                                           ; preds = %entry, %if.then7, %if.then, %if.end10, %if.then4
  %retval.0 = phi i32 [ 2, %if.then4 ], [ %cond, %if.end10 ], [ %., %if.then ], [ 1, %if.then7 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.rsa_st* @RSA_new() local_unnamed_addr #2

declare void @RSA_free(%struct.rsa_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_multip_calc_product(%struct.rsa_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_pss_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %exarg) #1 {
entry:
  %cmp = icmp eq i32 %operation, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.rsa_pss_params_st**
  %1 = load %struct.rsa_pss_params_st*, %struct.rsa_pss_params_st** %0, align 8, !tbaa !4
  %maskHash = getelementptr inbounds %struct.rsa_pss_params_st, %struct.rsa_pss_params_st* %1, i64 0, i32 4
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %maskHash, align 8, !tbaa !14
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_oaep_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %exarg) #1 {
entry:
  %cmp = icmp eq i32 %operation, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.rsa_oaep_params_st**
  %1 = load %struct.rsa_oaep_params_st*, %struct.rsa_oaep_params_st** %0, align 8, !tbaa !4
  %maskHash = getelementptr inbounds %struct.rsa_oaep_params_st, %struct.rsa_oaep_params_st* %1, i64 0, i32 3
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %maskHash, align 8, !tbaa !16
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!9, !10, i64 16}
!9 = !{!"rsa_st", !10, i64 0, !5, i64 8, !10, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !11, i64 104, !5, i64 128, !5, i64 136, !13, i64 144, !6, i64 160, !10, i64 164, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !10, i64 216}
!10 = !{!"int", !6, i64 0}
!11 = !{!"rsa_pss_params_30_st", !10, i64 0, !12, i64 4, !10, i64 12, !10, i64 16}
!12 = !{!"", !10, i64 0, !10, i64 4}
!13 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!14 = !{!15, !5, i64 32}
!15 = !{!"rsa_pss_params_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!16 = !{!17, !5, i64 24}
!17 = !{!"rsa_oaep_params_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}

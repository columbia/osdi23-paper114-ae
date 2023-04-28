; ModuleID = 'crypto/x509/x_x509.c'
source_filename = "crypto/x509/x_x509.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
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
%struct.stack_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.IPAddressFamily_st = type { %struct.asn1_string_st*, %struct.IPAddressChoice_st* }
%struct.IPAddressChoice_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i32* }

@X509_CINF_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([10 x %struct.ASN1_TEMPLATE_st], [10 x %struct.ASN1_TEMPLATE_st]* bitcast ([10 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @X509_CINF_seq_tt to [10 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 10, i8* bitcast (%struct.ASN1_AUX_st* @X509_CINF_aux to i8*), i64 136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0) }, align 8
@X509_CINF_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 2, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null, i32 112, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str = private unnamed_addr constant [10 x i8] c"X509_CINF\00", align 1
@X509_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @X509_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* bitcast (%struct.ASN1_AUX_st* @X509_aux to i8*), i64 384, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0) }, align 8
@X509_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 1, i32 192, i32 344, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @x509_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"X509\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"crypto/x509/x_x509.c\00", align 1
@__func__.i2d_X509_AUX = private unnamed_addr constant [13 x i8] c"i2d_X509_AUX\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"serialNumber\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"issuer\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"validity\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"issuerUID\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"subjectUID\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"extensions\00", align 1
@X509_CINF_seq_tt = internal constant [10 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_VAL_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_PUBKEY_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 1, i64 88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 2, i64 96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 3, i64 104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_EXTENSION_it }], align 16
@.str.14 = private unnamed_addr constant [10 x i8] c"cert_info\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"sig_alg\00", align 1
@X509_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_CINF_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }], align 16
@__func__.x509_cb = private unnamed_addr constant [8 x i8] c"x509_cb\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @X509_CINF_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @X509_CINF_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_cinf_st* @d2i_X509_CINF(%struct.x509_cinf_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_cinf_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_CINF_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.x509_cinf_st*
  ret %struct.x509_cinf_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_CINF(%struct.x509_cinf_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_cinf_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @X509_CINF_it.local_it) #6
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_cinf_st* @X509_CINF_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X509_CINF_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.x509_cinf_st*
  ret %struct.x509_cinf_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_CINF_free(%struct.x509_cinf_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_cinf_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X509_CINF_it.local_it) #6
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @X509_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @X509_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @d2i_X509(%struct.x509_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.x509_st*
  ret %struct.x509_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509(%struct.x509_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @X509_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @X509_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X509_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.x509_st*
  ret %struct.x509_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @X509_free(%struct.x509_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X509_it.local_it) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @X509_dup(%struct.x509_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @X509_it.local_it, i8* noundef %0) #6
  %1 = bitcast i8* %call1 to %struct.x509_st*
  ret %struct.x509_st* %1
}

declare i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_x509_set0_libctx(%struct.x509_st* noundef %x, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp eq %struct.x509_st* %x, null
  br i1 %cmp.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %libctx1 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 25
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !4
  %propq2 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 26
  %0 = load i8*, i8** %propq2, align 8, !tbaa !18
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 165) #6
  store i8* null, i8** %propq2, align 8, !tbaa !18
  %cmp4.not = icmp eq i8* %propq, null
  br i1 %cmp4.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.then
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 168) #6
  store i8* %call, i8** %propq2, align 8, !tbaa !18
  %cmp8 = icmp eq i8* %call, null
  br i1 %cmp8, label %return, label %if.end11

if.end11:                                         ; preds = %if.then, %if.then5, %entry
  br label %return

return:                                           ; preds = %if.then5, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new_ex(%struct.ASN1_ITEM_st* noundef nonnull @X509_it.local_it, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.x509_st*
  %call2 = tail call i32 @ossl_x509_set0_libctx(%struct.x509_st* noundef %0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @X509_free(%struct.x509_st* noundef %0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cert.0 = phi %struct.x509_st* [ %0, %entry ], [ null, %if.then ]
  ret %struct.x509_st* %cert.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.ASN1_VALUE_st* @ASN1_item_new_ex(%struct.ASN1_ITEM_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define i32 @X509_set_ex_data(%struct.x509_st* noundef %r, i32 noundef %idx, i8* noundef %arg) local_unnamed_addr #1 {
entry:
  %ex_data = getelementptr inbounds %struct.x509_st, %struct.x509_st* %r, i64 0, i32 5
  %call = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx, i8* noundef %arg) #6
  ret i32 %call
}

declare i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @X509_get_ex_data(%struct.x509_st* noundef %r, i32 noundef %idx) local_unnamed_addr #1 {
entry:
  %ex_data = getelementptr inbounds %struct.x509_st, %struct.x509_st* %r, i64 0, i32 5
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx) #6
  ret i8* %call
}

declare i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @d2i_X509_AUX(%struct.x509_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length) local_unnamed_addr #1 {
entry:
  %q = alloca i8*, align 8
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %1 = load i8*, i8** %pp, align 8, !tbaa !19
  store i8* %1, i8** %q, align 8, !tbaa !19
  %cmp = icmp eq %struct.x509_st** %a, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.x509_st*, %struct.x509_st** %a, align 8, !tbaa !19
  %cmp1 = icmp eq %struct.x509_st* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %tobool9.not = phi i1 [ false, %if.then ], [ true, %lor.lhs.false ]
  %call = call %struct.x509_st* @d2i_X509(%struct.x509_st** noundef %a, i8** noundef nonnull %q, i64 noundef %length) #7
  %cmp2 = icmp eq %struct.x509_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %3 = load i8*, i8** %q, align 8, !tbaa !19
  %4 = load i8*, i8** %pp, align 8, !tbaa !19
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub = add i64 %sub.ptr.sub.neg, %length
  %cmp5 = icmp sgt i64 %sub, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %aux = getelementptr inbounds %struct.x509_st, %struct.x509_st* %call, i64 0, i32 21
  %call6 = call %struct.x509_cert_aux_st* @d2i_X509_CERT_AUX(%struct.x509_cert_aux_st** noundef nonnull %aux, i8** noundef nonnull %q, i64 noundef %sub) #6
  %tobool.not = icmp eq %struct.x509_cert_aux_st* %call6, null
  br i1 %tobool.not, label %err, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  %.pre = load i8*, i8** %q, align 8, !tbaa !19
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end4
  %5 = phi i8* [ %.pre, %land.lhs.true.if.end8_crit_edge ], [ %3, %if.end4 ]
  store i8* %5, i8** %pp, align 8, !tbaa !19
  br label %cleanup

err:                                              ; preds = %land.lhs.true
  br i1 %tobool9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %err
  call void @X509_free(%struct.x509_st* noundef nonnull %call) #7
  br i1 %cmp, label %cleanup, label %if.then12

if.then12:                                        ; preds = %if.then10
  store %struct.x509_st* null, %struct.x509_st** %a, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then12, %if.then10, %if.end, %if.end8
  %retval.0 = phi %struct.x509_st* [ %call, %if.end8 ], [ null, %if.end ], [ null, %if.then10 ], [ null, %if.then12 ], [ null, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret %struct.x509_st* %retval.0
}

declare %struct.x509_cert_aux_st* @d2i_X509_CERT_AUX(%struct.x509_cert_aux_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_AUX(%struct.x509_st* noundef %a, i8** noundef %pp) local_unnamed_addr #1 {
entry:
  %tmp = alloca i8*, align 8
  %0 = bitcast i8** %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %cmp = icmp eq i8** %pp, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %pp, align 8, !tbaa !19
  %cmp1.not = icmp eq i8* %1, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call fastcc i32 @i2d_x509_aux_internal(%struct.x509_st* noundef %a, i8** noundef %pp) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call fastcc i32 @i2d_x509_aux_internal(%struct.x509_st* noundef %a, i8** noundef null) #7
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %conv28 = zext i32 %call2 to i64
  %call6 = tail call i8* @CRYPTO_malloc(i64 noundef %conv28, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 289) #6
  store i8* %call6, i8** %tmp, align 8, !tbaa !19
  store i8* %call6, i8** %pp, align 8, !tbaa !19
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.i2d_X509_AUX, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call11 = call fastcc i32 @i2d_x509_aux_internal(%struct.x509_st* noundef %a, i8** noundef nonnull %tmp) #7
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %if.then14, label %cleanup

if.then14:                                        ; preds = %if.end10
  %2 = load i8*, i8** %pp, align 8, !tbaa !19
  call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 298) #6
  store i8* null, i8** %pp, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then14, %if.end, %if.then9, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -1, %if.then9 ], [ %call2, %if.end ], [ %call11, %if.then14 ], [ %call11, %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @i2d_x509_aux_internal(%struct.x509_st* noundef %a, i8** noundef %pp) unnamed_addr #1 {
entry:
  %cmp.not = icmp eq i8** %pp, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load i8*, i8** %pp, align 8, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %0, %cond.true ], [ null, %entry ]
  %call = tail call i32 @i2d_X509(%struct.x509_st* noundef %a, i8** noundef %pp) #7
  %cmp1 = icmp slt i32 %call, 1
  %cmp2 = icmp eq %struct.x509_st* %a, null
  %or.cond = or i1 %cmp2, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %cond.end
  %aux = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 21
  %1 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux, align 8, !tbaa !20
  %call3 = tail call i32 @i2d_X509_CERT_AUX(%struct.x509_cert_aux_st* noundef %1, i8** noundef %pp) #6
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %cmp6.not = icmp eq i8* %cond, null
  br i1 %cmp6.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %if.then5
  store i8* %cond, i8** %pp, align 8, !tbaa !19
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %add = add nuw nsw i32 %call3, %call
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.then7, %cond.end, %if.end9
  %retval.0 = phi i32 [ %add, %if.end9 ], [ %call, %cond.end ], [ %call3, %if.then7 ], [ %call3, %if.then5 ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_re_X509_tbs(%struct.x509_st* noundef %x, i8** noundef %pp) local_unnamed_addr #1 {
entry:
  %cert_info = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0
  %modified = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 10, i32 2
  store i32 1, i32* %modified, align 8, !tbaa !21
  %call = tail call i32 @i2d_X509_CINF(%struct.x509_cinf_st* noundef %cert_info, i8** noundef %pp) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_get0_signature(%struct.asn1_string_st** noundef writeonly %psig, %struct.X509_algor_st** noundef writeonly %palg, %struct.x509_st* noundef %x) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.asn1_string_st** %psig, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %signature = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 2
  store %struct.asn1_string_st* %signature, %struct.asn1_string_st** %psig, align 8, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq %struct.X509_algor_st** %palg, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %sig_alg = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 1
  store %struct.X509_algor_st* %sig_alg, %struct.X509_algor_st** %palg, align 8, !tbaa !19
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_get_signature_nid(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #1 {
entry:
  %algorithm = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 1, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !22
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #6
  ret i32 %call
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_set0_distinguishing_id(%struct.x509_st* nocapture noundef %x, %struct.asn1_string_st* noundef %d_id) local_unnamed_addr #1 {
entry:
  %distinguishing_id = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 24
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %distinguishing_id, align 8, !tbaa !23
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %0) #6
  store %struct.asn1_string_st* %d_id, %struct.asn1_string_st** %distinguishing_id, align 8, !tbaa !23
  ret void
}

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @X509_get0_distinguishing_id(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #5 {
entry:
  %distinguishing_id = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 24
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %distinguishing_id, align 8, !tbaa !23
  ret %struct.asn1_string_st* %0
}

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #2

declare %struct.ASN1_ITEM_st* @X509_NAME_it() #2

declare %struct.ASN1_ITEM_st* @X509_VAL_it() #2

declare %struct.ASN1_ITEM_st* @X509_PUBKEY_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #2

declare %struct.ASN1_ITEM_st* @X509_EXTENSION_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @x509_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef %exarg) #1 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.x509_st**
  %1 = load %struct.x509_st*, %struct.x509_st** %0, align 8, !tbaa !19
  switch i32 %operation, label %sw.epilog [
    i32 4, label %sw.bb
    i32 1, label %sw.bb2
    i32 3, label %sw.bb15
    i32 15, label %sw.bb29
    i32 16, label %sw.bb56
    i32 17, label %sw.bb59
  ]

sw.bb:                                            ; preds = %entry
  %2 = bitcast %struct.x509_st* %1 to i8*
  %ex_data = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 5
  tail call void @CRYPTO_free_ex_data(i32 noundef 3, i8* noundef %2, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #6
  %aux = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 21
  %3 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux, align 8, !tbaa !20
  tail call void @X509_CERT_AUX_free(%struct.x509_cert_aux_st* noundef %3) #6
  %skid = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 12
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %skid, align 8, !tbaa !24
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %4) #6
  %akid = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 13
  %5 = load %struct.AUTHORITY_KEYID_st*, %struct.AUTHORITY_KEYID_st** %akid, align 8, !tbaa !25
  tail call void @AUTHORITY_KEYID_free(%struct.AUTHORITY_KEYID_st* noundef %5) #6
  %crldp = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 15
  %6 = load %struct.stack_st_DIST_POINT*, %struct.stack_st_DIST_POINT** %crldp, align 8, !tbaa !26
  tail call void @CRL_DIST_POINTS_free(%struct.stack_st_DIST_POINT* noundef %6) #6
  %policy_cache = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 14
  %7 = load %struct.X509_POLICY_CACHE_st*, %struct.X509_POLICY_CACHE_st** %policy_cache, align 8, !tbaa !27
  tail call void @ossl_policy_cache_free(%struct.X509_POLICY_CACHE_st* noundef %7) #6
  %altname = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 16
  %8 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %altname, align 8, !tbaa !28
  tail call void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef %8) #6
  %nc = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 17
  %9 = load %struct.NAME_CONSTRAINTS_st*, %struct.NAME_CONSTRAINTS_st** %nc, align 8, !tbaa !29
  tail call void @NAME_CONSTRAINTS_free(%struct.NAME_CONSTRAINTS_st* noundef %9) #6
  %rfc3779_addr = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 18
  %10 = load %struct.stack_st_IPAddressFamily*, %struct.stack_st_IPAddressFamily** %rfc3779_addr, align 8, !tbaa !30
  %call = tail call fastcc %struct.stack_st* @ossl_check_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef %10) #7
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.IPAddressFamily_st*)* @IPAddressFamily_free to void (i8*)*)) #6
  %rfc3779_asid = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 19
  %11 = load %struct.ASIdentifiers_st*, %struct.ASIdentifiers_st** %rfc3779_asid, align 8, !tbaa !31
  tail call void @ASIdentifiers_free(%struct.ASIdentifiers_st* noundef %11) #6
  %distinguishing_id = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 24
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %distinguishing_id, align 8, !tbaa !23
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %12) #6
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb
  %.pre-phi = bitcast %struct.x509_st* %1 to i8*
  %ex_cached = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 23
  store volatile i32 0, i32* %ex_cached, align 8, !tbaa !32
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 8
  %13 = bitcast i32* %ex_flags to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %13, align 8, !tbaa !33
  %ex_pathlen = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 6
  %14 = bitcast i64* %ex_pathlen to <2 x i64>*
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %14, align 8, !tbaa !34
  %skid3 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 12
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %skid3, align 8, !tbaa !24
  %akid4 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 13
  store %struct.AUTHORITY_KEYID_st* null, %struct.AUTHORITY_KEYID_st** %akid4, align 8, !tbaa !25
  %policy_cache5 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 14
  store %struct.X509_POLICY_CACHE_st* null, %struct.X509_POLICY_CACHE_st** %policy_cache5, align 8, !tbaa !27
  %altname6 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 16
  store %struct.stack_st_GENERAL_NAME* null, %struct.stack_st_GENERAL_NAME** %altname6, align 8, !tbaa !28
  %nc7 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 17
  store %struct.NAME_CONSTRAINTS_st* null, %struct.NAME_CONSTRAINTS_st** %nc7, align 8, !tbaa !29
  %rfc3779_addr8 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 18
  store %struct.stack_st_IPAddressFamily* null, %struct.stack_st_IPAddressFamily** %rfc3779_addr8, align 8, !tbaa !30
  %rfc3779_asid9 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 19
  store %struct.ASIdentifiers_st* null, %struct.ASIdentifiers_st** %rfc3779_asid9, align 8, !tbaa !31
  %distinguishing_id10 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 24
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %distinguishing_id10, align 8, !tbaa !23
  %aux11 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 21
  store %struct.x509_cert_aux_st* null, %struct.x509_cert_aux_st** %aux11, align 8, !tbaa !20
  %crldp12 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 15
  store %struct.stack_st_DIST_POINT* null, %struct.stack_st_DIST_POINT** %crldp12, align 8, !tbaa !26
  %ex_data13 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 5
  %call14 = tail call i32 @CRYPTO_new_ex_data(i32 noundef 3, i8* noundef %.pre-phi, %struct.crypto_ex_data_st* noundef nonnull %ex_data13) #6
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup62, label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %15 = bitcast %struct.x509_st* %1 to i8*
  %ex_data16 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 5
  tail call void @CRYPTO_free_ex_data(i32 noundef 3, i8* noundef %15, %struct.crypto_ex_data_st* noundef nonnull %ex_data16) #6
  %aux17 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 21
  %16 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux17, align 8, !tbaa !20
  tail call void @X509_CERT_AUX_free(%struct.x509_cert_aux_st* noundef %16) #6
  %skid18 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 12
  %17 = load %struct.asn1_string_st*, %struct.asn1_string_st** %skid18, align 8, !tbaa !24
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %17) #6
  %akid19 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 13
  %18 = load %struct.AUTHORITY_KEYID_st*, %struct.AUTHORITY_KEYID_st** %akid19, align 8, !tbaa !25
  tail call void @AUTHORITY_KEYID_free(%struct.AUTHORITY_KEYID_st* noundef %18) #6
  %crldp20 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 15
  %19 = load %struct.stack_st_DIST_POINT*, %struct.stack_st_DIST_POINT** %crldp20, align 8, !tbaa !26
  tail call void @CRL_DIST_POINTS_free(%struct.stack_st_DIST_POINT* noundef %19) #6
  %policy_cache21 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 14
  %20 = load %struct.X509_POLICY_CACHE_st*, %struct.X509_POLICY_CACHE_st** %policy_cache21, align 8, !tbaa !27
  tail call void @ossl_policy_cache_free(%struct.X509_POLICY_CACHE_st* noundef %20) #6
  %altname22 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 16
  %21 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %altname22, align 8, !tbaa !28
  tail call void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef %21) #6
  %nc23 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 17
  %22 = load %struct.NAME_CONSTRAINTS_st*, %struct.NAME_CONSTRAINTS_st** %nc23, align 8, !tbaa !29
  tail call void @NAME_CONSTRAINTS_free(%struct.NAME_CONSTRAINTS_st* noundef %22) #6
  %rfc3779_addr24 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 18
  %23 = load %struct.stack_st_IPAddressFamily*, %struct.stack_st_IPAddressFamily** %rfc3779_addr24, align 8, !tbaa !30
  %call25 = tail call fastcc %struct.stack_st* @ossl_check_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef %23) #7
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call25, void (i8*)* noundef bitcast (void (%struct.IPAddressFamily_st*)* @IPAddressFamily_free to void (i8*)*)) #6
  %rfc3779_asid27 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 19
  %24 = load %struct.ASIdentifiers_st*, %struct.ASIdentifiers_st** %rfc3779_asid27, align 8, !tbaa !31
  tail call void @ASIdentifiers_free(%struct.ASIdentifiers_st* noundef %24) #6
  %distinguishing_id28 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 24
  %25 = load %struct.asn1_string_st*, %struct.asn1_string_st** %distinguishing_id28, align 8, !tbaa !23
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %25) #6
  %propq = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 26
  %26 = load i8*, i8** %propq, align 8, !tbaa !18
  tail call void @CRYPTO_free(i8* noundef %26, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 98) #6
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %libctx = getelementptr inbounds i8, i8* %exarg, i64 368
  %27 = bitcast i8* %libctx to %struct.ossl_lib_ctx_st**
  %28 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %27, align 8, !tbaa !4
  %propq30 = getelementptr inbounds i8, i8* %exarg, i64 376
  %29 = bitcast i8* %propq30 to i8**
  %30 = load i8*, i8** %29, align 8, !tbaa !18
  %call31 = tail call i32 @ossl_x509_set0_libctx(%struct.x509_st* noundef %1, %struct.ossl_lib_ctx_st* noundef %28, i8* noundef %30) #7
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %cleanup62, label %if.end34

if.end34:                                         ; preds = %sw.bb29
  %key = getelementptr inbounds i8, i8* %exarg, i64 80
  %31 = bitcast i8* %key to %struct.X509_pubkey_st**
  %32 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %31, align 8, !tbaa !35
  %cmp.not = icmp eq %struct.X509_pubkey_st* %32, null
  br i1 %cmp.not, label %sw.epilog, label %if.then35

if.then35:                                        ; preds = %if.end34
  %call38 = tail call %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef nonnull %32) #6
  %cmp39.not = icmp eq %struct.evp_pkey_st* %call38, null
  br i1 %cmp39.not, label %sw.epilog, label %if.then40

if.then40:                                        ; preds = %if.then35
  %call41 = tail call %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef nonnull %call38) #6
  %cmp42 = icmp eq %struct.evp_pkey_st* %call41, null
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then40
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.x509_cb, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup62

if.end44:                                         ; preds = %if.then40
  %key46 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 0, i32 6
  %call47 = tail call i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef nonnull %key46, %struct.evp_pkey_st* noundef nonnull %call41) #6
  %tobool48.not = icmp eq i32 %call47, 0
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call41) #6
  br i1 %tobool48.not, label %if.then49, label %sw.epilog

if.then49:                                        ; preds = %if.end44
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.x509_cb, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786691, i8* noundef null) #6
  br label %cleanup62

sw.bb56:                                          ; preds = %entry
  %33 = bitcast i8* %exarg to %struct.ossl_lib_ctx_st**
  %libctx58 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 25
  %34 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx58, align 8, !tbaa !4
  store %struct.ossl_lib_ctx_st* %34, %struct.ossl_lib_ctx_st** %33, align 8, !tbaa !19
  br label %sw.epilog

sw.bb59:                                          ; preds = %entry
  %35 = bitcast i8* %exarg to i8**
  %propq61 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 26
  %36 = load i8*, i8** %propq61, align 8, !tbaa !18
  store i8* %36, i8** %35, align 8, !tbaa !19
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end44, %if.then35, %if.end34, %entry, %sw.bb2, %sw.bb59, %sw.bb56, %sw.bb15
  br label %cleanup62

cleanup62:                                        ; preds = %sw.bb29, %if.then43, %if.then49, %sw.bb2, %sw.epilog
  %retval.3 = phi i32 [ 1, %sw.epilog ], [ 0, %sw.bb2 ], [ 0, %if.then49 ], [ 0, %if.then43 ], [ 0, %sw.bb29 ]
  ret i32 %retval.3
}

declare void @CRYPTO_free_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

declare void @X509_CERT_AUX_free(%struct.x509_cert_aux_st* noundef) local_unnamed_addr #2

declare void @AUTHORITY_KEYID_free(%struct.AUTHORITY_KEYID_st* noundef) local_unnamed_addr #2

declare void @CRL_DIST_POINTS_free(%struct.stack_st_DIST_POINT* noundef) local_unnamed_addr #2

declare void @ossl_policy_cache_free(%struct.X509_POLICY_CACHE_st* noundef) local_unnamed_addr #2

declare void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef) local_unnamed_addr #2

declare void @NAME_CONSTRAINTS_free(%struct.NAME_CONSTRAINTS_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_IPAddressFamily* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @IPAddressFamily_free(%struct.IPAddressFamily_st* noundef) #2

declare void @ASIdentifiers_free(%struct.ASIdentifiers_st* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_new_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @i2d_X509_CERT_AUX(%struct.x509_cert_aux_st* noundef, i8** noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !7, i64 368}
!5 = !{!"x509_st", !6, i64 0, !13, i64 136, !10, i64 152, !16, i64 176, !8, i64 192, !17, i64 200, !12, i64 216, !12, i64 224, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !8, i64 312, !7, i64 336, !7, i64 344, !11, i64 352, !7, i64 360, !7, i64 368, !7, i64 376}
!6 = !{!"x509_cinf_st", !7, i64 0, !10, i64 8, !13, i64 32, !7, i64 48, !14, i64 56, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !15, i64 112}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"asn1_string_st", !11, i64 0, !11, i64 4, !7, i64 8, !12, i64 16}
!11 = !{!"int", !8, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"X509_algor_st", !7, i64 0, !7, i64 8}
!14 = !{!"X509_val_st", !7, i64 0, !7, i64 8}
!15 = !{!"ASN1_ENCODING_st", !7, i64 0, !12, i64 8, !11, i64 16}
!16 = !{!"x509_sig_info_st", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!17 = !{!"crypto_ex_data_st", !7, i64 0, !7, i64 8}
!18 = !{!5, !7, i64 376}
!19 = !{!7, !7, i64 0}
!20 = !{!5, !7, i64 336}
!21 = !{!5, !11, i64 128}
!22 = !{!5, !7, i64 136}
!23 = !{!5, !7, i64 360}
!24 = !{!5, !7, i64 248}
!25 = !{!5, !7, i64 256}
!26 = !{!5, !7, i64 272}
!27 = !{!5, !7, i64 264}
!28 = !{!5, !7, i64 280}
!29 = !{!5, !7, i64 288}
!30 = !{!5, !7, i64 296}
!31 = !{!5, !7, i64 304}
!32 = !{!5, !11, i64 352}
!33 = !{!11, !11, i64 0}
!34 = !{!12, !12, i64 0}
!35 = !{!5, !7, i64 80}

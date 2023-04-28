; ModuleID = 'crypto/x509/v3_ncons.c'
source_filename = "crypto/x509/v3_ncons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, {}*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
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
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
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
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.1, %struct.X509_name_st* }
%union.anon.1 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }
%struct.stack_st = type opaque
%struct.GENERAL_SUBTREE_st = type { %struct.GENERAL_NAME_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.GENERAL_NAME_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i8* }
%struct.ASN1_VALUE_st = type opaque
%struct.X509_name_entry_st = type { %struct.asn1_object_st*, %struct.asn1_string_st*, i32, i32 }
%struct.otherName_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.bignum_st = type opaque

@ossl_v3_name_constraints = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 666, i32 0, %struct.ASN1_ITEM_st* ()* @NAME_CONSTRAINTS_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_NAME_CONSTRAINTS, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* @i2r_NAME_CONSTRAINTS, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@GENERAL_SUBTREE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @GENERAL_SUBTREE_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"GENERAL_SUBTREE\00", align 1
@NAME_CONSTRAINTS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @NAME_CONSTRAINTS_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"NAME_CONSTRAINTS\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"crypto/x509/v3_ncons.c\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@GENERAL_SUBTREE_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16
@.str.7 = private unnamed_addr constant [18 x i8] c"permittedSubtrees\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"excludedSubtrees\00", align 1
@NAME_CONSTRAINTS_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 141, i64 0, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_SUBTREE_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 141, i64 1, i64 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_SUBTREE_it }], align 16
@.str.10 = private unnamed_addr constant [10 x i8] c"permitted\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"excluded\00", align 1
@__func__.v2i_NAME_CONSTRAINTS = private unnamed_addr constant [21 x i8] c"v2i_NAME_CONSTRAINTS\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Permitted\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Excluded\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"%*s%s:\0A\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"IP:%s/%s\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @NAME_CONSTRAINTS_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @NAME_CONSTRAINTS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @v2i_NAME_CONSTRAINTS(%struct.v3_ext_method* noundef %method, %struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef %nval) #1 {
entry:
  %tval = alloca %struct.CONF_VALUE, align 8
  %0 = bitcast %struct.CONF_VALUE* %tval to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  %call = tail call %struct.NAME_CONSTRAINTS_st* @NAME_CONSTRAINTS_new() #10
  %cmp = icmp eq %struct.NAME_CONSTRAINTS_st* %call, null
  br i1 %cmp, label %err.sink.split, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1 = call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nval) #10
  %call282 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #11
  %cmp383 = icmp sgt i32 %call282, 0
  br i1 %cmp383, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %permittedSubtrees = getelementptr inbounds %struct.NAME_CONSTRAINTS_st, %struct.NAME_CONSTRAINTS_st* %call, i64 0, i32 0
  %name11 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %tval, i64 0, i32 1
  %excludedSubtrees = getelementptr inbounds %struct.NAME_CONSTRAINTS_st, %struct.NAME_CONSTRAINTS_st* %call, i64 0, i32 1
  %value28 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %tval, i64 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false
  %call2 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #11
  %cmp3 = icmp slt i32 %inc, %call2
  br i1 %cmp3, label %for.body, label %for.end, !llvm.loop !4

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %call5 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.084) #11
  %name = getelementptr inbounds i8, i8* %call5, i64 8
  %1 = bitcast i8* %name to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !6
  %call6 = call i32 @strncmp(i8* noundef %2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i64 noundef 9) #12
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 9
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.end27

if.else:                                          ; preds = %land.lhs.true, %for.body
  %call13 = call i32 @strncmp(i8* noundef %2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i64 noundef 8) #12
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true16, label %err.sink.split

land.lhs.true16:                                  ; preds = %if.else
  %arrayidx18 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = load i8, i8* %arrayidx18, align 1, !tbaa !11
  %tobool20.not = icmp eq i8 %4, 0
  br i1 %tobool20.not, label %err.sink.split, label %if.end27

if.end27:                                         ; preds = %land.lhs.true16, %land.lhs.true
  %.sink = phi i64 [ 10, %land.lhs.true ], [ 9, %land.lhs.true16 ]
  %ptree.0 = phi %struct.stack_st_GENERAL_SUBTREE** [ %permittedSubtrees, %land.lhs.true ], [ %excludedSubtrees, %land.lhs.true16 ]
  %add.ptr23 = getelementptr inbounds i8, i8* %2, i64 %.sink
  store i8* %add.ptr23, i8** %name11, align 8, !tbaa !6
  %value = getelementptr inbounds i8, i8* %call5, i64 16
  %5 = bitcast i8* %value to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !12
  store i8* %6, i8** %value28, align 8, !tbaa !12
  %call29 = call %struct.GENERAL_SUBTREE_st* @GENERAL_SUBTREE_new() #10
  %cmp30 = icmp eq %struct.GENERAL_SUBTREE_st* %call29, null
  br i1 %cmp30, label %err.sink.split, label %if.end33

if.end33:                                         ; preds = %if.end27
  %base = getelementptr inbounds %struct.GENERAL_SUBTREE_st, %struct.GENERAL_SUBTREE_st* %call29, i64 0, i32 0
  %7 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %base, align 8, !tbaa !13
  %call34 = call %struct.GENERAL_NAME_st* @v2i_GENERAL_NAME_ex(%struct.GENERAL_NAME_st* noundef %7, %struct.v3_ext_method* noundef %method, %struct.v3_ext_ctx* noundef %ctx, %struct.CONF_VALUE* noundef nonnull %tval, i32 noundef 1) #11
  %tobool35.not = icmp eq %struct.GENERAL_NAME_st* %call34, null
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %if.end33
  %8 = load %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE** %ptree.0, align 8, !tbaa !15
  %cmp38 = icmp eq %struct.stack_st_GENERAL_SUBTREE* %8, null
  br i1 %cmp38, label %if.end42, label %lor.lhs.false

if.end42:                                         ; preds = %if.end37
  %call41 = call %struct.stack_st* @OPENSSL_sk_new_null() #11
  %9 = bitcast %struct.stack_st_GENERAL_SUBTREE** %ptree.0 to %struct.stack_st**
  store %struct.stack_st* %call41, %struct.stack_st** %9, align 8, !tbaa !15
  %10 = bitcast %struct.stack_st* %call41 to %struct.stack_st_GENERAL_SUBTREE*
  %cmp43 = icmp eq %struct.stack_st* %call41, null
  br i1 %cmp43, label %err.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end37, %if.end42
  %11 = phi %struct.stack_st_GENERAL_SUBTREE* [ %10, %if.end42 ], [ %8, %if.end37 ]
  %call45 = call fastcc %struct.stack_st* @ossl_check_GENERAL_SUBTREE_sk_type(%struct.stack_st_GENERAL_SUBTREE* noundef nonnull %11) #10
  %12 = bitcast %struct.GENERAL_SUBTREE_st* %call29 to i8*
  %call47 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call45, i8* noundef nonnull %12) #11
  %tobool48.not = icmp eq i32 %call47, 0
  %inc = add nuw nsw i32 %i.084, 1
  br i1 %tobool48.not, label %err.sink.split, label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %13 = bitcast %struct.NAME_CONSTRAINTS_st* %call to i8*
  br label %cleanup

err.sink.split:                                   ; preds = %if.end27, %lor.lhs.false, %if.end42, %if.else, %land.lhs.true16, %entry
  %.sink90 = phi i32 [ 164, %entry ], [ 145, %land.lhs.true16 ], [ 145, %if.else ], [ 164, %if.end42 ], [ 164, %lor.lhs.false ], [ 164, %if.end27 ]
  %.sink89 = phi i32 [ 786688, %entry ], [ 143, %land.lhs.true16 ], [ 143, %if.else ], [ 786688, %if.end42 ], [ 786688, %lor.lhs.false ], [ 786688, %if.end27 ]
  %sub.2.ph = phi %struct.GENERAL_SUBTREE_st* [ null, %entry ], [ null, %land.lhs.true16 ], [ null, %if.else ], [ %call29, %if.end42 ], [ %call29, %lor.lhs.false ], [ null, %if.end27 ]
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.sink90, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.v2i_NAME_CONSTRAINTS, i64 0, i64 0)) #11
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef %.sink89, i8* noundef null) #11
  br label %err

err:                                              ; preds = %if.end33, %err.sink.split
  %sub.2 = phi %struct.GENERAL_SUBTREE_st* [ %sub.2.ph, %err.sink.split ], [ %call29, %if.end33 ]
  call void @NAME_CONSTRAINTS_free(%struct.NAME_CONSTRAINTS_st* noundef %call) #10
  call void @GENERAL_SUBTREE_free(%struct.GENERAL_SUBTREE_st* noundef %sub.2) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %for.end
  %retval.0 = phi i8* [ null, %err ], [ %13, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2r_NAME_CONSTRAINTS(%struct.v3_ext_method* nocapture noundef readnone %method, i8* nocapture noundef readonly %a, %struct.bio_st* noundef %bp, i32 noundef %ind) #1 {
entry:
  %permittedSubtrees = bitcast i8* %a to %struct.stack_st_GENERAL_SUBTREE**
  %0 = load %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE** %permittedSubtrees, align 8, !tbaa !16
  tail call fastcc void @do_i2r_name_constraints(%struct.stack_st_GENERAL_SUBTREE* noundef %0, %struct.bio_st* noundef %bp, i32 noundef %ind, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #10
  %1 = load %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE** %permittedSubtrees, align 8, !tbaa !16
  %tobool.not = icmp eq %struct.stack_st_GENERAL_SUBTREE* %1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %excludedSubtrees = getelementptr inbounds i8, i8* %a, i64 8
  %2 = bitcast i8* %excludedSubtrees to %struct.stack_st_GENERAL_SUBTREE**
  %3 = load %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE** %2, align 8, !tbaa !18
  %tobool2.not = icmp eq %struct.stack_st_GENERAL_SUBTREE* %3, null
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #11
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  %excludedSubtrees4 = getelementptr inbounds i8, i8* %a, i64 8
  %4 = bitcast i8* %excludedSubtrees4 to %struct.stack_st_GENERAL_SUBTREE**
  %5 = load %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE** %4, align 8, !tbaa !18
  tail call fastcc void @do_i2r_name_constraints(%struct.stack_st_GENERAL_SUBTREE* noundef %5, %struct.bio_st* noundef %bp, i32 noundef %ind, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0)) #10
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @GENERAL_SUBTREE_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @GENERAL_SUBTREE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.GENERAL_SUBTREE_st* @GENERAL_SUBTREE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @GENERAL_SUBTREE_it.local_it) #11
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.GENERAL_SUBTREE_st*
  ret %struct.GENERAL_SUBTREE_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @GENERAL_SUBTREE_free(%struct.GENERAL_SUBTREE_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.GENERAL_SUBTREE_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @GENERAL_SUBTREE_it.local_it) #11
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.NAME_CONSTRAINTS_st* @NAME_CONSTRAINTS_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @NAME_CONSTRAINTS_it.local_it) #11
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.NAME_CONSTRAINTS_st*
  ret %struct.NAME_CONSTRAINTS_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @NAME_CONSTRAINTS_free(%struct.NAME_CONSTRAINTS_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.NAME_CONSTRAINTS_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @NAME_CONSTRAINTS_it.local_it) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @NAME_CONSTRAINTS_check(%struct.x509_st* noundef %x, %struct.NAME_CONSTRAINTS_st* nocapture noundef readonly %nc) local_unnamed_addr #1 {
entry:
  %name_count = alloca i32, align 4
  %constraint_count = alloca i32, align 4
  %gntmp = alloca %struct.GENERAL_NAME_st, align 8
  %0 = bitcast i32* %name_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %1 = bitcast i32* %constraint_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %call = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %x) #11
  %call1 = tail call i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef %call) #11
  %altname = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 16
  %2 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %altname, align 8, !tbaa !19
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %2) #10
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #11
  %call4 = call fastcc i32 @add_lengths(i32* noundef nonnull %name_count, i32 noundef %call1, i32 noundef %call3) #10
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %permittedSubtrees = getelementptr inbounds %struct.NAME_CONSTRAINTS_st, %struct.NAME_CONSTRAINTS_st* %nc, i64 0, i32 0
  %3 = load %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE** %permittedSubtrees, align 8, !tbaa !16
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_SUBTREE_sk_type(%struct.stack_st_GENERAL_SUBTREE* noundef %3) #10
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #11
  %excludedSubtrees = getelementptr inbounds %struct.NAME_CONSTRAINTS_st, %struct.NAME_CONSTRAINTS_st* %nc, i64 0, i32 1
  %4 = load %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE** %excludedSubtrees, align 8, !tbaa !18
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_SUBTREE_sk_type(%struct.stack_st_GENERAL_SUBTREE* noundef %4) #10
  %call8 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #11
  %call9 = call fastcc i32 @add_lengths(i32* noundef nonnull %constraint_count, i32 noundef %call6, i32 noundef %call8) #10
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup58, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %name_count, align 4, !tbaa !30
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false11
  %6 = load i32, i32* %constraint_count, align 4, !tbaa !30
  %div101 = udiv i32 1048576, %5
  %cmp12 = icmp sgt i32 %6, %div101
  br i1 %cmp12, label %cleanup58, label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false11
  %call13 = tail call i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef %call) #11
  %cmp14 = icmp sgt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end41

if.then15:                                        ; preds = %if.end
  %7 = bitcast %struct.GENERAL_NAME_st* %gntmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #9
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gntmp, i64 0, i32 0
  store i32 4, i32* %type, align 8, !tbaa !31
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gntmp, i64 0, i32 1
  %directoryName = bitcast %union.anon.2* %d to %struct.X509_name_st**
  store %struct.X509_name_st* %call, %struct.X509_name_st** %directoryName, align 8, !tbaa !11
  %call16 = call fastcc i32 @nc_match(%struct.GENERAL_NAME_st* noundef nonnull %gntmp, %struct.NAME_CONSTRAINTS_st* noundef nonnull %nc) #10
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end19, label %cleanup38.thread

if.end19:                                         ; preds = %if.then15
  store i32 1, i32* %type, align 8, !tbaa !31
  %rfc822Name = bitcast %union.anon.2* %d to %struct.asn1_string_st**
  br label %for.cond

for.cond:                                         ; preds = %if.end33, %if.end19
  %i.0 = phi i32 [ -1, %if.end19 ], [ %call21, %if.end33 ]
  %call21 = tail call i32 @X509_NAME_get_index_by_NID(%struct.X509_name_st* noundef %call, i32 noundef 48, i32 noundef %i.0) #11
  %cmp22 = icmp eq i32 %call21, -1
  br i1 %cmp22, label %cleanup38, label %if.end24

if.end24:                                         ; preds = %for.cond
  %call25 = tail call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef %call, i32 noundef %call21) #11
  %call26 = tail call %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* noundef %call25) #11
  store %struct.asn1_string_st* %call26, %struct.asn1_string_st** %rfc822Name, align 8, !tbaa !11
  %type30 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call26, i64 0, i32 1
  %8 = load i32, i32* %type30, align 4, !tbaa !33
  %cmp31.not = icmp eq i32 %8, 22
  br i1 %cmp31.not, label %if.end33, label %cleanup38.thread

if.end33:                                         ; preds = %if.end24
  %call34 = call fastcc i32 @nc_match(%struct.GENERAL_NAME_st* noundef nonnull %gntmp, %struct.NAME_CONSTRAINTS_st* noundef %nc) #10
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %for.cond, label %cleanup38.thread

cleanup38.thread:                                 ; preds = %if.end24, %if.end33, %if.then15
  %retval.2.ph = phi i32 [ %call16, %if.then15 ], [ 53, %if.end24 ], [ %call34, %if.end33 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #9
  br label %cleanup58

cleanup38:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #9
  br label %if.end41

if.end41:                                         ; preds = %cleanup38, %if.end
  %9 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %altname, align 8, !tbaa !19
  %call44102 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %9) #10
  %call45103 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call44102) #11
  %cmp46104 = icmp sgt i32 %call45103, 0
  br i1 %cmp46104, label %for.body, label %cleanup58

for.cond42:                                       ; preds = %for.body
  %10 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %altname, align 8, !tbaa !19
  %call44 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %10) #10
  %call45 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call44) #11
  %cmp46 = icmp slt i32 %inc, %call45
  br i1 %cmp46, label %for.body, label %cleanup58, !llvm.loop !34

for.body:                                         ; preds = %if.end41, %for.cond42
  %i.1105 = phi i32 [ %inc, %for.cond42 ], [ 0, %if.end41 ]
  %11 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %altname, align 8, !tbaa !19
  %call48 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %11) #10
  %call49 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call48, i32 noundef %i.1105) #11
  %12 = bitcast i8* %call49 to %struct.GENERAL_NAME_st*
  %call50 = tail call fastcc i32 @nc_match(%struct.GENERAL_NAME_st* noundef %12, %struct.NAME_CONSTRAINTS_st* noundef %nc) #10
  %cmp51.not = icmp eq i32 %call50, 0
  %inc = add nuw nsw i32 %i.1105, 1
  br i1 %cmp51.not, label %for.cond42, label %cleanup58

cleanup58:                                        ; preds = %for.body, %for.cond42, %if.end41, %cleanup38.thread, %entry, %lor.lhs.false, %land.lhs.true
  %retval.6 = phi i32 [ 1, %land.lhs.true ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ %retval.2.ph, %cleanup38.thread ], [ 0, %if.end41 ], [ %call50, %for.body ], [ 0, %for.cond42 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.6
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc i32 @add_lengths(i32* nocapture noundef writeonly %out, i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
entry:
  %0 = icmp sgt i32 %a, 0
  %spec.store.select = select i1 %0, i32 %a, i32 0
  %1 = icmp sgt i32 %b, 0
  %spec.store.select7 = select i1 %1, i32 %b, i32 0
  %sub = xor i32 %spec.store.select7, 2147483647
  %cmp4 = icmp sgt i32 %spec.store.select, %sub
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %entry
  %add = add nuw nsw i32 %spec.store.select7, %spec.store.select
  store i32 %add, i32* %out, align 4, !tbaa !30
  br label %return

return:                                           ; preds = %entry, %if.end6
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_GENERAL_SUBTREE_sk_type(%struct.stack_st_GENERAL_SUBTREE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_SUBTREE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @nc_match(%struct.GENERAL_NAME_st* nocapture noundef readonly %gen, %struct.NAME_CONSTRAINTS_st* nocapture noundef readonly %nc) unnamed_addr #1 {
entry:
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !31
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %cond.end

land.lhs.true:                                    ; preds = %entry
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %otherName = bitcast %union.anon.2* %d to %struct.otherName_st**
  %1 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !11
  %type_id = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %1, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type_id, align 8, !tbaa !35
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #11
  %cmp1 = icmp eq i32 %call, 1208
  br i1 %cmp1, label %cond.end, label %land.lhs.true.cond.false_crit_edge

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  %.pre = load i32, i32* %type, align 8, !tbaa !31
  br label %cond.end

cond.end:                                         ; preds = %entry, %land.lhs.true.cond.false_crit_edge, %land.lhs.true
  %cond = phi i32 [ 1, %land.lhs.true ], [ %.pre, %land.lhs.true.cond.false_crit_edge ], [ %0, %entry ]
  %permittedSubtrees = getelementptr inbounds %struct.NAME_CONSTRAINTS_st, %struct.NAME_CONSTRAINTS_st* %nc, i64 0, i32 0
  %3 = load %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE** %permittedSubtrees, align 8, !tbaa !16
  %call397 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_SUBTREE_sk_type(%struct.stack_st_GENERAL_SUBTREE* noundef %3) #10
  %call498 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call397) #11
  %cmp599 = icmp sgt i32 %call498, 0
  br i1 %cmp599, label %for.body, label %for.cond31.preheader

for.body:                                         ; preds = %cond.end, %for.inc
  %match.0101 = phi i32 [ %match.1, %for.inc ], [ 0, %cond.end ]
  %i.0100 = phi i32 [ %inc, %for.inc ], [ 0, %cond.end ]
  %4 = load %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE** %permittedSubtrees, align 8, !tbaa !16
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_SUBTREE_sk_type(%struct.stack_st_GENERAL_SUBTREE* noundef %4) #10
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call7, i32 noundef %i.0100) #11
  %base = bitcast i8* %call8 to %struct.GENERAL_NAME_st**
  %5 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %base, align 8, !tbaa !13
  %type9 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %5, i64 0, i32 0
  %6 = load i32, i32* %type9, align 8, !tbaa !31
  %cmp10.not = icmp eq i32 %cond, %6
  br i1 %cmp10.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %7 = bitcast i8* %call8 to %struct.GENERAL_SUBTREE_st*
  %call11 = tail call fastcc i32 @nc_minmax_valid(%struct.GENERAL_SUBTREE_st* noundef %7) #10
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end
  %cmp14 = icmp eq i32 %match.0101, 2
  br i1 %cmp14, label %for.inc, label %if.end16

if.end16:                                         ; preds = %if.end13
  %8 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %base, align 8, !tbaa !13
  %call21 = tail call fastcc i32 @nc_match_single(%struct.GENERAL_NAME_st* noundef %gen, %struct.GENERAL_NAME_st* noundef %8) #10
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %for.inc, label %if.else

if.else:                                          ; preds = %if.end16
  %cmp17 = icmp eq i32 %match.0101, 0
  %spec.store.select = select i1 %cmp17, i32 1, i32 %match.0101
  %cmp24.not = icmp eq i32 %call21, 47
  br i1 %cmp24.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %if.end16, %if.else, %if.end13, %for.body
  %match.1 = phi i32 [ %match.0101, %for.body ], [ 2, %if.end13 ], [ %spec.store.select, %if.else ], [ 2, %if.end16 ]
  %inc = add nuw nsw i32 %i.0100, 1
  %9 = load %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE** %permittedSubtrees, align 8, !tbaa !16
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_SUBTREE_sk_type(%struct.stack_st_GENERAL_SUBTREE* noundef %9) #10
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #11
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %for.end, !llvm.loop !37

for.end:                                          ; preds = %for.inc
  %cmp28 = icmp eq i32 %match.1, 1
  br i1 %cmp28, label %cleanup, label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %cond.end, %for.end
  %excludedSubtrees = getelementptr inbounds %struct.NAME_CONSTRAINTS_st, %struct.NAME_CONSTRAINTS_st* %nc, i64 0, i32 1
  %10 = load %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE** %excludedSubtrees, align 8, !tbaa !18
  %call32102 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_SUBTREE_sk_type(%struct.stack_st_GENERAL_SUBTREE* noundef %10) #10
  %call33103 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call32102) #11
  %cmp34104 = icmp sgt i32 %call33103, 0
  br i1 %cmp34104, label %for.body35, label %cleanup

for.body35:                                       ; preds = %for.cond31.preheader, %for.inc57
  %i.1105 = phi i32 [ %inc58, %for.inc57 ], [ 0, %for.cond31.preheader ]
  %11 = load %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE** %excludedSubtrees, align 8, !tbaa !18
  %call37 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_SUBTREE_sk_type(%struct.stack_st_GENERAL_SUBTREE* noundef %11) #10
  %call38 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call37, i32 noundef %i.1105) #11
  %base39 = bitcast i8* %call38 to %struct.GENERAL_NAME_st**
  %12 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %base39, align 8, !tbaa !13
  %type40 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %12, i64 0, i32 0
  %13 = load i32, i32* %type40, align 8, !tbaa !31
  %cmp41.not = icmp eq i32 %cond, %13
  br i1 %cmp41.not, label %if.end43, label %for.inc57

if.end43:                                         ; preds = %for.body35
  %14 = bitcast i8* %call38 to %struct.GENERAL_SUBTREE_st*
  %call44 = tail call fastcc i32 @nc_minmax_valid(%struct.GENERAL_SUBTREE_st* noundef %14) #10
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cleanup.loopexit, label %if.end47

if.end47:                                         ; preds = %if.end43
  %15 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %base39, align 8, !tbaa !13
  %call49 = tail call fastcc i32 @nc_match_single(%struct.GENERAL_NAME_st* noundef %gen, %struct.GENERAL_NAME_st* noundef %15) #10
  switch i32 %call49, label %cleanup [
    i32 0, label %cleanup.loopexit
    i32 47, label %for.inc57
  ]

for.inc57:                                        ; preds = %if.end47, %for.body35
  %inc58 = add nuw nsw i32 %i.1105, 1
  %16 = load %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE** %excludedSubtrees, align 8, !tbaa !18
  %call32 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_SUBTREE_sk_type(%struct.stack_st_GENERAL_SUBTREE* noundef %16) #10
  %call33 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call32) #11
  %cmp34 = icmp slt i32 %inc58, %call33
  br i1 %cmp34, label %for.body35, label %cleanup.loopexit, !llvm.loop !38

cleanup.loopexit:                                 ; preds = %for.inc57, %if.end47, %if.end43
  %retval.0.ph = phi i32 [ 0, %for.inc57 ], [ 48, %if.end47 ], [ 49, %if.end43 ]
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %if.end47, %cleanup.loopexit, %for.cond31.preheader, %for.end
  %retval.0 = phi i32 [ 47, %for.end ], [ 0, %for.cond31.preheader ], [ %retval.0.ph, %cleanup.loopexit ], [ %call49, %if.end47 ], [ %call21, %if.else ], [ 49, %if.end ]
  ret i32 %retval.0
}

declare i32 @X509_NAME_get_index_by_NID(%struct.X509_name_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @NAME_CONSTRAINTS_check_CN(%struct.x509_st* noundef %x, %struct.NAME_CONSTRAINTS_st* nocapture noundef readonly %nc) local_unnamed_addr #1 {
entry:
  %stmp = alloca %struct.asn1_string_st, align 8
  %gntmp = alloca %struct.GENERAL_NAME_st, align 8
  %idval = alloca i8*, align 8
  %idlen = alloca i64, align 8
  %call = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %x) #11
  %0 = bitcast %struct.asn1_string_st* %stmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  %1 = bitcast %struct.GENERAL_NAME_st* %gntmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #9
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %stmp, i64 0, i32 3
  store i64 0, i64* %flags, align 8, !tbaa !39
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %stmp, i64 0, i32 1
  store i32 22, i32* %type, align 4, !tbaa !33
  %type1 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gntmp, i64 0, i32 0
  store i32 2, i32* %type1, align 8, !tbaa !31
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gntmp, i64 0, i32 1
  %dNSName = bitcast %union.anon.2* %d to %struct.asn1_string_st**
  store %struct.asn1_string_st* %stmp, %struct.asn1_string_st** %dNSName, align 8, !tbaa !11
  %2 = bitcast i8** %idval to i8*
  %3 = bitcast i64* %idlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  %call243 = call i32 @X509_NAME_get_index_by_NID(%struct.X509_name_st* noundef %call, i32 noundef 13, i32 noundef -1) #11
  %cmp44 = icmp eq i32 %call243, -1
  br i1 %cmp44, label %for.end, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %stmp, i64 0, i32 0
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %stmp, i64 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %cleanup
  %call245 = phi i32 [ %call243, %if.end.lr.ph ], [ %call2, %cleanup ]
  %call3 = call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef %call, i32 noundef %call245) #11
  %call4 = call %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* noundef %call3) #11
  %call5 = call fastcc i32 @cn2dnsid(%struct.asn1_string_st* noundef %call4, i8** noundef nonnull %idval, i64* noundef nonnull %idlen) #10
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end8, label %cleanup.thread

if.end8:                                          ; preds = %if.end
  %4 = load i64, i64* %idlen, align 8, !tbaa !40
  %cmp9 = icmp eq i64 %4, 0
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end8
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %length, align 8, !tbaa !41
  %5 = load i8*, i8** %idval, align 8, !tbaa !15
  store i8* %5, i8** %data, align 8, !tbaa !42
  %call12 = call fastcc i32 @nc_match(%struct.GENERAL_NAME_st* noundef nonnull %gntmp, %struct.NAME_CONSTRAINTS_st* noundef %nc) #10
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 443) #11
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end, %if.end11
  %retval.1.ph = phi i32 [ %call12, %if.end11 ], [ %call5, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  br label %cleanup20

cleanup:                                          ; preds = %if.end11, %if.end8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  %call2 = call i32 @X509_NAME_get_index_by_NID(%struct.X509_name_st* noundef %call, i32 noundef 13, i32 noundef %call245) #11
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %for.end, label %if.end

for.end:                                          ; preds = %cleanup, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup.thread, %for.end
  %retval.2 = phi i32 [ 0, %for.end ], [ %retval.1.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cn2dnsid(%struct.asn1_string_st* noundef %cn, i8** nocapture noundef writeonly %dnsid, i64* nocapture noundef writeonly %idlen) unnamed_addr #1 {
entry:
  %utf8_value = alloca i8*, align 8
  %0 = bitcast i8** %utf8_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %dnsid, align 8, !tbaa !15
  store i64 0, i64* %idlen, align 8, !tbaa !40
  %call = call i32 @ASN1_STRING_to_UTF8(i8** noundef nonnull %utf8_value, %struct.asn1_string_st* noundef %cn) #11
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup82, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %1 = load i8*, i8** %utf8_value, align 8
  %2 = zext i32 %call to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %land.rhs
  %indvars.iv = phi i64 [ %2, %while.cond.preheader ], [ %indvars.iv.next, %land.rhs ]
  %cmp1 = icmp sgt i64 %indvars.iv, 0
  br i1 %cmp1, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %3 = and i64 %indvars.iv.next, 4294967295
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %3
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %cmp2 = icmp eq i8 %4, 0
  br i1 %cmp2, label %while.cond, label %while.end.split.loop.exit139, !llvm.loop !43

while.end.split.loop.exit139:                     ; preds = %land.rhs
  %5 = trunc i64 %indvars.iv to i32
  br label %while.end

while.end:                                        ; preds = %while.cond, %while.end.split.loop.exit139
  %utf8_length.0.lcssa = phi i32 [ %5, %while.end.split.loop.exit139 ], [ 0, %while.cond ]
  %conv4 = sext i32 %utf8_length.0.lcssa to i64
  %call5 = call i8* @memchr(i8* noundef %1, i32 noundef 0, i64 noundef %conv4) #12
  %cmp6.not = icmp eq i8* %call5, null
  br i1 %cmp6.not, label %for.cond.preheader, label %if.then8

for.cond.preheader:                               ; preds = %while.end
  %cmp10126 = icmp sgt i32 %utf8_length.0.lcssa, 0
  br i1 %cmp10126, label %for.body.lr.ph, label %if.end81

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub44 = add nsw i32 %utf8_length.0.lcssa, -1
  %6 = zext i32 %sub44 to i64
  %wide.trip.count = zext i32 %utf8_length.0.lcssa to i64
  br label %for.body

if.then8:                                         ; preds = %while.end
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 353) #11
  br label %cleanup82

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv131 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next132, %for.inc ]
  %isdnsname.0129 = phi i32 [ 0, %for.body.lr.ph ], [ %isdnsname.1.ph, %for.inc ]
  %arrayidx13 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv131
  %7 = load i8, i8* %arrayidx13, align 1, !tbaa !11
  %8 = and i8 %7, -33
  %9 = add i8 %8, -65
  %10 = icmp ult i8 %9, 26
  br i1 %10, label %for.inc, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %for.body
  %11 = add i8 %7, -48
  %12 = icmp ult i8 %11, 10
  %cmp37 = icmp eq i8 %7, 95
  %or.cond88 = or i1 %cmp37, %12
  br i1 %or.cond88, label %for.inc, label %if.end40

if.end40:                                         ; preds = %lor.lhs.false27
  %cmp41.not = icmp ne i64 %indvars.iv131, 0
  %cmp45 = icmp ult i64 %indvars.iv131, %6
  %or.cond116 = select i1 %cmp41.not, i1 %cmp45, i1 false
  br i1 %or.cond116, label %if.then47, label %if.end81

if.then47:                                        ; preds = %if.end40
  switch i8 %7, label %if.end81 [
    i8 45, label %for.inc
    i8 46, label %land.lhs.true56
  ]

land.lhs.true56:                                  ; preds = %if.then47
  %13 = add nuw nsw i64 %indvars.iv131, 1
  %arrayidx58 = getelementptr inbounds i8, i8* %1, i64 %13
  %14 = load i8, i8* %arrayidx58, align 1, !tbaa !11
  %cmp60.not = icmp eq i8 %14, 46
  br i1 %cmp60.not, label %if.end81, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true56
  %15 = add nuw i64 %indvars.iv131, 4294967295
  %16 = and i64 %15, 4294967295
  %arrayidx65 = getelementptr inbounds i8, i8* %1, i64 %16
  %17 = load i8, i8* %arrayidx65, align 1, !tbaa !11
  %cmp67.not = icmp eq i8 %17, 45
  %cmp74.not = icmp eq i8 %14, 45
  %or.cond117 = select i1 %cmp67.not, i1 true, i1 %cmp74.not
  br i1 %or.cond117, label %if.end81, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false27, %for.body, %if.then47, %land.lhs.true62
  %isdnsname.1.ph = phi i32 [ 1, %land.lhs.true62 ], [ %isdnsname.0129, %if.then47 ], [ %isdnsname.0129, %for.body ], [ %isdnsname.0129, %lor.lhs.false27 ]
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !44

for.end:                                          ; preds = %for.inc
  %tobool.not = icmp eq i32 %isdnsname.1.ph, 0
  br i1 %tobool.not, label %if.end81, label %if.then79

if.then79:                                        ; preds = %for.end
  store i8* %1, i8** %dnsid, align 8, !tbaa !15
  store i64 %conv4, i64* %idlen, align 8, !tbaa !40
  br label %cleanup82

if.end81:                                         ; preds = %if.end40, %land.lhs.true62, %land.lhs.true56, %if.then47, %for.cond.preheader, %for.end
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 401) #11
  br label %cleanup82

cleanup82:                                        ; preds = %entry, %if.end81, %if.then79, %if.then8
  %retval.0 = phi i32 [ 53, %if.then8 ], [ 0, %if.then79 ], [ 0, %if.end81 ], [ 17, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @GENERAL_NAME_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.GENERAL_NAME_st* @v2i_GENERAL_NAME_ex(%struct.GENERAL_NAME_st* noundef, %struct.v3_ext_method* noundef, %struct.v3_ext_ctx* noundef, %struct.CONF_VALUE* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_GENERAL_SUBTREE_sk_type(%struct.stack_st_GENERAL_SUBTREE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_SUBTREE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @do_i2r_name_constraints(%struct.stack_st_GENERAL_SUBTREE* noundef %trees, %struct.bio_st* noundef %bp, i32 noundef %ind, i8* noundef %name) unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_SUBTREE_sk_type(%struct.stack_st_GENERAL_SUBTREE* noundef %trees) #10
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #11
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* noundef %name) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call41 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #11
  %cmp52 = icmp sgt i32 %call41, 0
  br i1 %cmp52, label %if.end9.peel, label %for.end

if.end9.peel:                                     ; preds = %if.end
  %add = add nsw i32 %ind, 2
  %call11.peel = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef 0) #11
  %call12.peel = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)) #11
  %base.peel = bitcast i8* %call11.peel to %struct.GENERAL_NAME_st**
  %0 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %base.peel, align 8, !tbaa !13
  %type.peel = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type.peel, align 8, !tbaa !31
  %cmp13.peel = icmp eq i32 %1, 7
  br i1 %cmp13.peel, label %if.then14.peel, label %if.else.peel

if.else.peel:                                     ; preds = %if.end9.peel
  %call18.peel = tail call i32 @GENERAL_NAME_print(%struct.bio_st* noundef %bp, %struct.GENERAL_NAME_st* noundef nonnull %0) #11
  br label %for.inc.peel

if.then14.peel:                                   ; preds = %if.end9.peel
  %d.peel = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %0, i64 0, i32 1
  %ip.peel = bitcast %union.anon.2* %d.peel to %struct.asn1_string_st**
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ip.peel, align 8, !tbaa !11
  tail call fastcc void @print_nc_ipadd(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %2) #10
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.then14.peel, %if.else.peel
  %call4.peel = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #11
  %cmp5.peel = icmp sgt i32 %call4.peel, 1
  br i1 %cmp5.peel, label %if.end9, label %for.end

if.end9:                                          ; preds = %for.inc.peel, %for.inc
  %i.03 = phi i32 [ %inc, %for.inc ], [ 1, %for.inc.peel ]
  %call8 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #11
  %call11 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.03) #11
  %call12 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)) #11
  %base = bitcast i8* %call11 to %struct.GENERAL_NAME_st**
  %3 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %base, align 8, !tbaa !13
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %3, i64 0, i32 0
  %4 = load i32, i32* %type, align 8, !tbaa !31
  %cmp13 = icmp eq i32 %4, 7
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end9
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %3, i64 0, i32 1
  %ip = bitcast %union.anon.2* %d to %struct.asn1_string_st**
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ip, align 8, !tbaa !11
  tail call fastcc void @print_nc_ipadd(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %5) #10
  br label %for.inc

if.else:                                          ; preds = %if.end9
  %call18 = tail call i32 @GENERAL_NAME_print(%struct.bio_st* noundef %bp, %struct.GENERAL_NAME_st* noundef nonnull %3) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.else
  %inc = add nuw nsw i32 %i.03, 1
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #11
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %if.end9, label %for.end, !llvm.loop !45

for.end:                                          ; preds = %for.inc, %for.inc.peel, %if.end
  ret void
}

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_nc_ipadd(%struct.bio_st* noundef %bp, %struct.asn1_string_st* nocapture noundef readonly %ip) unnamed_addr #1 {
entry:
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ip, i64 0, i32 0
  %0 = load i32, i32* %length, align 8, !tbaa !41
  %cmp2.inv = icmp slt i32 %0, 4
  %spec.select = select i1 %cmp2.inv, i32 %0, i32 4
  %cmp.inv = icmp slt i32 %0, 16
  %cond7 = select i1 %cmp.inv, i32 %spec.select, i32 16
  %sub = sub nsw i32 %0, %cond7
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ip, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !42
  %call = tail call i8* @ossl_ipaddr_to_asc(i8* noundef %1, i32 noundef %cond7) #11
  %2 = load i8*, i8** %data, align 8, !tbaa !42
  %idx.ext = sext i32 %cond7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %call10 = tail call i8* @ossl_ipaddr_to_asc(i8* noundef %add.ptr, i32 noundef %sub) #11
  %cmp11 = icmp ne i8* %call, null
  %cmp12 = icmp ne i8* %call10, null
  %or.cond = select i1 %cmp11, i1 %cmp12, i1 false
  br i1 %or.cond, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* noundef nonnull %call, i8* noundef nonnull %call10) #11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 216) #11
  tail call void @CRYPTO_free(i8* noundef %call10, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 217) #11
  ret void
}

declare i32 @GENERAL_NAME_print(%struct.bio_st* noundef, %struct.GENERAL_NAME_st* noundef) local_unnamed_addr #2

declare i8* @ossl_ipaddr_to_asc(i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_to_UTF8(i8** noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @nc_minmax_valid(%struct.GENERAL_SUBTREE_st* nocapture noundef readonly %sub) unnamed_addr #1 {
entry:
  %maximum = getelementptr inbounds %struct.GENERAL_SUBTREE_st, %struct.GENERAL_SUBTREE_st* %sub, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %maximum, align 8, !tbaa !47
  %tobool.not = icmp eq %struct.asn1_string_st* %0, null
  %spec.store.select = zext i1 %tobool.not to i32
  %minimum = getelementptr inbounds %struct.GENERAL_SUBTREE_st, %struct.GENERAL_SUBTREE_st* %sub, i64 0, i32 1
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %minimum, align 8, !tbaa !48
  %tobool1.not = icmp eq %struct.asn1_string_st* %1, null
  br i1 %tobool1.not, label %if.end8, label %if.then2

if.then2:                                         ; preds = %entry
  %call = tail call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef nonnull %1, %struct.bignum_st* noundef null) #11
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %call4 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call) #11
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %if.then2
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %lor.lhs.false
  %ok.0 = phi i32 [ 0, %if.then6 ], [ %spec.store.select, %lor.lhs.false ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry
  %ok.1 = phi i32 [ %ok.0, %if.end7 ], [ %spec.store.select, %entry ]
  ret i32 %ok.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @nc_match_single(%struct.GENERAL_NAME_st* nocapture noundef readonly %gen, %struct.GENERAL_NAME_st* nocapture noundef readonly %base) unnamed_addr #1 {
entry:
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !31
  switch i32 %0, label %return [
    i32 0, label %sw.bb
    i32 4, label %sw.bb2
    i32 2, label %sw.bb7
    i32 1, label %sw.bb12
    i32 6, label %sw.bb18
    i32 7, label %sw.bb23
  ]

sw.bb:                                            ; preds = %entry
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %otherName = bitcast %union.anon.2* %d to %struct.otherName_st**
  %1 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !11
  %value = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %1, i64 0, i32 1
  %2 = load %struct.asn1_type_st*, %struct.asn1_type_st** %value, align 8, !tbaa !49
  %d1 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %base, i64 0, i32 1
  %rfc822Name = bitcast %union.anon.2* %d1 to %struct.asn1_string_st**
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %rfc822Name, align 8, !tbaa !11
  %call = tail call fastcc i32 @nc_email_eai(%struct.asn1_type_st* noundef %2, %struct.asn1_string_st* noundef %3) #10
  br label %return

sw.bb2:                                           ; preds = %entry
  %d3 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %directoryName = bitcast %union.anon.2* %d3 to %struct.X509_name_st**
  %4 = load %struct.X509_name_st*, %struct.X509_name_st** %directoryName, align 8, !tbaa !11
  %d4 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %base, i64 0, i32 1
  %directoryName5 = bitcast %union.anon.2* %d4 to %struct.X509_name_st**
  %5 = load %struct.X509_name_st*, %struct.X509_name_st** %directoryName5, align 8, !tbaa !11
  %call6 = tail call fastcc i32 @nc_dn(%struct.X509_name_st* noundef %4, %struct.X509_name_st* noundef %5) #10
  br label %return

sw.bb7:                                           ; preds = %entry
  %d8 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %dNSName = bitcast %union.anon.2* %d8 to %struct.asn1_string_st**
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %dNSName, align 8, !tbaa !11
  %d9 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %base, i64 0, i32 1
  %dNSName10 = bitcast %union.anon.2* %d9 to %struct.asn1_string_st**
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %dNSName10, align 8, !tbaa !11
  %call11 = tail call fastcc i32 @nc_dns(%struct.asn1_string_st* noundef %6, %struct.asn1_string_st* noundef %7) #10
  br label %return

sw.bb12:                                          ; preds = %entry
  %d13 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %rfc822Name14 = bitcast %union.anon.2* %d13 to %struct.asn1_string_st**
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %rfc822Name14, align 8, !tbaa !11
  %d15 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %base, i64 0, i32 1
  %rfc822Name16 = bitcast %union.anon.2* %d15 to %struct.asn1_string_st**
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %rfc822Name16, align 8, !tbaa !11
  %call17 = tail call fastcc i32 @nc_email(%struct.asn1_string_st* noundef %8, %struct.asn1_string_st* noundef %9) #10
  br label %return

sw.bb18:                                          ; preds = %entry
  %d19 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %uniformResourceIdentifier = bitcast %union.anon.2* %d19 to %struct.asn1_string_st**
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %uniformResourceIdentifier, align 8, !tbaa !11
  %d20 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %base, i64 0, i32 1
  %uniformResourceIdentifier21 = bitcast %union.anon.2* %d20 to %struct.asn1_string_st**
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %uniformResourceIdentifier21, align 8, !tbaa !11
  %call22 = tail call fastcc i32 @nc_uri(%struct.asn1_string_st* noundef %10, %struct.asn1_string_st* noundef %11) #10
  br label %return

sw.bb23:                                          ; preds = %entry
  %d24 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %iPAddress = bitcast %union.anon.2* %d24 to %struct.asn1_string_st**
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %iPAddress, align 8, !tbaa !11
  %d25 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %base, i64 0, i32 1
  %iPAddress26 = bitcast %union.anon.2* %d25 to %struct.asn1_string_st**
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %iPAddress26, align 8, !tbaa !11
  %call27 = tail call fastcc i32 @nc_ip(%struct.asn1_string_st* noundef %12, %struct.asn1_string_st* noundef %13) #10
  br label %return

return:                                           ; preds = %entry, %sw.bb23, %sw.bb18, %sw.bb12, %sw.bb7, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ %call27, %sw.bb23 ], [ %call22, %sw.bb18 ], [ %call17, %sw.bb12 ], [ %call11, %sw.bb7 ], [ %call6, %sw.bb2 ], [ %call, %sw.bb ], [ 51, %entry ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @nc_email_eai(%struct.asn1_type_st* nocapture noundef readonly %emltype, %struct.asn1_string_st* nocapture noundef readonly %base) unnamed_addr #1 {
entry:
  %ulabel = alloca [256 x i8], align 16
  %size = alloca i64, align 8
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %ulabel, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #9
  %1 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i64 255, i64* %size, align 8, !tbaa !40
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %base, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !41
  %cmp = icmp sgt i32 %2, 0
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %base, i64 0, i32 2
  %3 = load i8*, i8** %data, align 8, !tbaa !42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %conv109 = zext i32 %2 to i64
  %call = tail call i8* @memchr(i8* noundef %3, i32 noundef 0, i64 noundef %conv109) #12
  %cmp2.not = icmp eq i8* %call, null
  br i1 %cmp2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry, %land.lhs.true
  %conv6 = sext i32 %2 to i64
  %call7 = tail call i8* @CRYPTO_strndup(i8* noundef %3, i64 noundef %conv6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 635) #11
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %emltype, i64 0, i32 0
  %4 = load i32, i32* %type, align 8, !tbaa !50
  %cmp12.not = icmp eq i32 %4, 12
  br i1 %cmp12.not, label %if.end15, label %end

if.end15:                                         ; preds = %if.end11
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %emltype, i64 0, i32 1
  %utf8string = bitcast %union.anon* %value to %struct.asn1_string_st**
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %utf8string, align 8, !tbaa !11
  %data16 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %5, i64 0, i32 2
  %6 = load i8*, i8** %data16, align 8, !tbaa !42
  %call17 = tail call fastcc i8* @ia5memrchr(%struct.asn1_string_st* noundef %5) #10
  %cmp18 = icmp eq i8* %call17, null
  br i1 %cmp18, label %end, label %if.end21

if.end21:                                         ; preds = %if.end15
  %call22 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 256) #11
  %7 = load i8, i8* %call7, align 1, !tbaa !11
  %cmp24 = icmp eq i8 %7, 46
  br i1 %cmp24, label %if.then26, label %if.end55

if.then26:                                        ; preds = %if.end21
  store i8 46, i8* %0, align 16, !tbaa !11
  store i64 254, i64* %size, align 8, !tbaa !40
  %add.ptr = getelementptr inbounds [256 x i8], [256 x i8]* %ulabel, i64 0, i64 1
  %call28 = call i32 @ossl_a2ulabel(i8* noundef nonnull %call7, i8* noundef nonnull %add.ptr, i64* noundef nonnull %size) #11
  %cmp29 = icmp slt i32 %call28, 1
  br i1 %cmp29, label %end, label %if.end32

if.end32:                                         ; preds = %if.then26
  %length33 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %5, i64 0, i32 0
  %8 = load i32, i32* %length33, align 8, !tbaa !41
  %conv34 = sext i32 %8 to i64
  %call36 = call i64 @strlen(i8* noundef nonnull %0) #12
  %cmp37 = icmp ult i64 %call36, %conv34
  br i1 %cmp37, label %if.then39, label %if.end54

if.then39:                                        ; preds = %if.end32
  %sub44 = sub i64 %conv34, %call36
  %add.ptr45 = getelementptr inbounds i8, i8* %6, i64 %sub44
  %call49 = call fastcc i32 @ia5ncasecmp(i8* noundef nonnull %0, i8* noundef %add.ptr45, i64 noundef %call36) #10
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %end, label %if.end54

if.end54:                                         ; preds = %if.then39, %if.end32
  br label %end

if.end55:                                         ; preds = %if.end21
  %call57 = call i32 @ossl_a2ulabel(i8* noundef nonnull %call7, i8* noundef nonnull %0, i64* noundef nonnull %size) #11
  %cmp58 = icmp slt i32 %call57, 1
  br i1 %cmp58, label %end, label %if.end61

if.end61:                                         ; preds = %if.end55
  %add.ptr62 = getelementptr inbounds i8, i8* %call17, i64 1
  %length63 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %5, i64 0, i32 0
  %9 = load i32, i32* %length63, align 8, !tbaa !41
  %conv64 = sext i32 %9 to i64
  %10 = load i8*, i8** %data16, align 8, !tbaa !42
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr62 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub66 = add i64 %sub.ptr.sub.neg, %conv64
  %call68 = call i64 @strlen(i8* noundef nonnull %0) #12
  %cmp69.not = icmp eq i64 %sub66, %call68
  br i1 %cmp69.not, label %lor.lhs.false, label %if.then75

lor.lhs.false:                                    ; preds = %if.end61
  %call72 = call fastcc i32 @ia5ncasecmp(i8* noundef nonnull %0, i8* noundef nonnull %add.ptr62, i64 noundef %sub66) #10
  %cmp73.not = icmp eq i32 %call72, 0
  br i1 %cmp73.not, label %end, label %if.then75

if.then75:                                        ; preds = %lor.lhs.false, %if.end61
  br label %end

end:                                              ; preds = %if.end55, %if.then26, %if.end15, %if.end11, %lor.lhs.false, %if.then39, %if.then75, %if.end54
  %ret.0 = phi i32 [ 0, %if.then39 ], [ 47, %if.end54 ], [ 47, %if.then75 ], [ 0, %lor.lhs.false ], [ 53, %if.end11 ], [ 53, %if.end15 ], [ 1, %if.then26 ], [ 1, %if.end55 ]
  call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 687) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %end
  %retval.0 = phi i32 [ %ret.0, %end ], [ 53, %land.lhs.true ], [ 17, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @nc_dn(%struct.X509_name_st* noundef %nm, %struct.X509_name_st* noundef %base) unnamed_addr #1 {
entry:
  %modified = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %nm, i64 0, i32 1
  %0 = load i32, i32* %modified, align 8, !tbaa !52
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @i2d_X509_NAME(%struct.X509_name_st* noundef nonnull %nm, i8** noundef null) #11
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %modified1 = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %base, i64 0, i32 1
  %1 = load i32, i32* %modified1, align 8, !tbaa !52
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end7, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %if.end
  %call4 = tail call i32 @i2d_X509_NAME(%struct.X509_name_st* noundef nonnull %base, i8** noundef null) #11
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %land.lhs.true3, %if.end
  %canon_enclen = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %base, i64 0, i32 4
  %2 = load i32, i32* %canon_enclen, align 8, !tbaa !54
  %canon_enclen8 = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %nm, i64 0, i32 4
  %3 = load i32, i32* %canon_enclen8, align 8, !tbaa !54
  %cmp9 = icmp sgt i32 %2, %3
  br i1 %cmp9, label %return, label %if.end11

if.end11:                                         ; preds = %if.end7
  %canon_enc = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %base, i64 0, i32 3
  %4 = load i8*, i8** %canon_enc, align 8, !tbaa !55
  %canon_enc12 = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %nm, i64 0, i32 3
  %5 = load i8*, i8** %canon_enc12, align 8, !tbaa !55
  %conv = sext i32 %2 to i64
  %call14 = tail call i32 @memcmp(i8* noundef %4, i8* noundef %5, i64 noundef %conv) #12
  %tobool15.not = icmp eq i32 %call14, 0
  %. = select i1 %tobool15.not, i32 0, i32 47
  br label %return

return:                                           ; preds = %if.end11, %if.end7, %land.lhs.true3, %land.lhs.true
  %retval.0 = phi i32 [ 17, %land.lhs.true ], [ 17, %land.lhs.true3 ], [ 47, %if.end7 ], [ %., %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i32 @nc_dns(%struct.asn1_string_st* nocapture noundef readonly %dns, %struct.asn1_string_st* nocapture noundef readonly %base) unnamed_addr #6 {
entry:
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %base, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !42
  %data1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %dns, i64 0, i32 2
  %1 = load i8*, i8** %data1, align 8, !tbaa !42
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %base, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !41
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %length2 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %dns, i64 0, i32 0
  %3 = load i32, i32* %length2, align 8, !tbaa !41
  %cmp4 = icmp slt i32 %3, %2
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %cmp9 = icmp sgt i32 %3, %2
  br i1 %cmp9, label %if.then10, label %if.end20

if.then10:                                        ; preds = %if.end6
  %sub = sub nsw i32 %3, %2
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %4 = load i8, i8* %0, align 1, !tbaa !11
  %cmp13.not = icmp eq i8 %4, 46
  br i1 %cmp13.not, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then10
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %cmp16.not = icmp eq i8 %5, 46
  br i1 %cmp16.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.then10, %land.lhs.true, %if.end6
  %dnsptr.0 = phi i8* [ %add.ptr, %land.lhs.true ], [ %add.ptr, %if.then10 ], [ %1, %if.end6 ]
  %conv22 = sext i32 %2 to i64
  %call = tail call fastcc i32 @ia5ncasecmp(i8* noundef %0, i8* noundef %dnsptr.0, i64 noundef %conv22) #10
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 47
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %land.lhs.true, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 47, %if.end ], [ 47, %land.lhs.true ], [ %., %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal fastcc i32 @nc_email(%struct.asn1_string_st* nocapture noundef readonly %eml, %struct.asn1_string_st* nocapture noundef readonly %base) unnamed_addr #7 {
entry:
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %base, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !42
  %data1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %eml, i64 0, i32 2
  %1 = load i8*, i8** %data1, align 8, !tbaa !42
  %call = tail call fastcc i8* @ia5memrchr(%struct.asn1_string_st* noundef %base) #10
  %call2 = tail call fastcc i8* @ia5memrchr(%struct.asn1_string_st* noundef %eml) #10
  %tobool.not = icmp eq i8* %call2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq i8* %call, null
  br i1 %tobool3.not, label %land.lhs.true, label %if.then25

land.lhs.true:                                    ; preds = %if.end
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %base, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !41
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.lhs.true4, label %if.end45

land.lhs.true4:                                   ; preds = %land.lhs.true
  %3 = load i8, i8* %0, align 1, !tbaa !11
  %cmp5 = icmp eq i8 %3, 46
  br i1 %cmp5, label %if.then7, label %if.end45

if.then7:                                         ; preds = %land.lhs.true4
  %length8 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %eml, i64 0, i32 0
  %4 = load i32, i32* %length8, align 8, !tbaa !41
  %cmp10 = icmp sgt i32 %4, %2
  br i1 %cmp10, label %if.then12, label %if.end22

if.then12:                                        ; preds = %if.then7
  %sub = sub nsw i32 %4, %2
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %conv16112 = zext i32 %2 to i64
  %call17 = tail call fastcc i32 @ia5ncasecmp(i8* noundef nonnull %0, i8* noundef %add.ptr, i64 noundef %conv16112) #10
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.then12, %if.then7
  br label %cleanup

if.then25:                                        ; preds = %if.end
  %cmp26.not = icmp eq i8* %call, %0
  br i1 %cmp26.not, label %if.end43, label %if.then28

if.then28:                                        ; preds = %if.then25
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.lhs.cast29 = ptrtoint i8* %call2 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %1 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %cmp32.not = icmp eq i64 %sub.ptr.sub, %sub.ptr.sub31
  br i1 %cmp32.not, label %if.end35, label %cleanup

if.end35:                                         ; preds = %if.then28
  %call39 = tail call i32 @strncmp(i8* noundef %0, i8* noundef %1, i64 noundef %sub.ptr.sub) #12
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end43, label %cleanup

if.end43:                                         ; preds = %if.end35, %if.then25
  %add.ptr44 = getelementptr inbounds i8, i8* %call, i64 1
  %length47.phi.trans.insert = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %base, i64 0, i32 0
  %.pre = load i32, i32* %length47.phi.trans.insert, align 8, !tbaa !41
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true, %land.lhs.true4, %if.end43
  %5 = phi i32 [ %.pre, %if.end43 ], [ %2, %land.lhs.true4 ], [ %2, %land.lhs.true ]
  %baseptr.0 = phi i8* [ %add.ptr44, %if.end43 ], [ %0, %land.lhs.true4 ], [ %0, %land.lhs.true ]
  %add.ptr46 = getelementptr inbounds i8, i8* %call2, i64 1
  %conv48 = sext i32 %5 to i64
  %sub.ptr.lhs.cast50 = ptrtoint i8* %baseptr.0 to i64
  %sub.ptr.rhs.cast51 = ptrtoint i8* %0 to i64
  %sub.ptr.sub52.neg = sub i64 %sub.ptr.rhs.cast51, %sub.ptr.lhs.cast50
  %sub53 = add i64 %sub.ptr.sub52.neg, %conv48
  %length54 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %eml, i64 0, i32 0
  %6 = load i32, i32* %length54, align 8, !tbaa !41
  %conv55 = sext i32 %6 to i64
  %sub.ptr.lhs.cast57 = ptrtoint i8* %add.ptr46 to i64
  %sub.ptr.rhs.cast58 = ptrtoint i8* %1 to i64
  %sub.ptr.sub59.neg = sub i64 %sub.ptr.rhs.cast58, %sub.ptr.lhs.cast57
  %sub60 = add i64 %sub.ptr.sub59.neg, %conv55
  %cmp61.not = icmp eq i64 %sub53, %sub60
  br i1 %cmp61.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end45
  %call63 = tail call fastcc i32 @ia5ncasecmp(i8* noundef %baseptr.0, i8* noundef nonnull %add.ptr46, i64 noundef %sub53) #10
  %tobool64.not = icmp eq i32 %call63, 0
  %spec.select = select i1 %tobool64.not, i32 0, i32 47
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end45, %if.end35, %if.then28, %if.then12, %entry, %if.end22
  %retval.0 = phi i32 [ 47, %if.end22 ], [ 53, %entry ], [ 0, %if.then12 ], [ 47, %if.then28 ], [ 47, %if.end35 ], [ 47, %if.end45 ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal fastcc i32 @nc_uri(%struct.asn1_string_st* nocapture noundef readonly %uri, %struct.asn1_string_st* nocapture noundef readonly %base) unnamed_addr #7 {
entry:
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %base, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !42
  %data1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %uri, i64 0, i32 2
  %1 = load i8*, i8** %data1, align 8, !tbaa !42
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %uri, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !41
  %conv = sext i32 %2 to i64
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %call = tail call i8* @memchr(i8* noundef %1, i32 noundef 58, i64 noundef %conv) #12
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %sub.ptr.lhs.cast9 = ptrtoint i8* %call to i64
  %sub.ptr.sub11.neg = add i64 %conv, %sub.ptr.lhs.cast
  %sub12 = sub i64 %sub.ptr.sub11.neg, %sub.ptr.lhs.cast9
  %cmp13 = icmp slt i64 %sub12, 3
  br i1 %cmp13, label %cleanup, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 1
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %cmp17.not = icmp eq i8 %3, 47
  br i1 %cmp17.not, label %lor.lhs.false19, label %cleanup

lor.lhs.false19:                                  ; preds = %lor.lhs.false15
  %arrayidx20 = getelementptr inbounds i8, i8* %call, i64 2
  %4 = load i8, i8* %arrayidx20, align 1, !tbaa !11
  %cmp22.not = icmp eq i8 %4, 47
  br i1 %cmp22.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false19
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 3
  %sub.ptr.lhs.cast27 = ptrtoint i8* %add.ptr to i64
  %sub.ptr.sub29.neg = sub i64 %sub.ptr.lhs.cast, %sub.ptr.lhs.cast27
  %sub30 = add i64 %sub.ptr.sub29.neg, %conv
  %call31 = tail call i8* @memchr(i8* noundef nonnull %add.ptr, i32 noundef 58, i64 noundef %sub30) #12
  %cmp32 = icmp eq i8* %call31, null
  br i1 %cmp32, label %if.end43, label %if.else

if.end43:                                         ; preds = %if.end
  %call42 = tail call i8* @memchr(i8* noundef nonnull %add.ptr, i32 noundef 47, i64 noundef %sub30) #12
  %cmp44 = icmp eq i8* %call42, null
  br i1 %cmp44, label %if.end59, label %if.else

if.else:                                          ; preds = %if.end, %if.end43
  %p.0144 = phi i8* [ %call42, %if.end43 ], [ %call31, %if.end ]
  %sub.ptr.lhs.cast55 = ptrtoint i8* %p.0144 to i64
  %sub.ptr.sub57 = sub i64 %sub.ptr.lhs.cast55, %sub.ptr.lhs.cast27
  br label %if.end59

if.end59:                                         ; preds = %if.end43, %if.else
  %hostlen.0.in = phi i64 [ %sub.ptr.sub57, %if.else ], [ %sub30, %if.end43 ]
  %hostlen.0 = trunc i64 %hostlen.0.in to i32
  %cmp60 = icmp eq i32 %hostlen.0, 0
  br i1 %cmp60, label %cleanup, label %if.end63

if.end63:                                         ; preds = %if.end59
  %length64 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %base, i64 0, i32 0
  %5 = load i32, i32* %length64, align 8, !tbaa !41
  %cmp65 = icmp sgt i32 %5, 0
  br i1 %cmp65, label %land.lhs.true, label %if.end87

land.lhs.true:                                    ; preds = %if.end63
  %6 = load i8, i8* %0, align 1, !tbaa !11
  %cmp68 = icmp eq i8 %6, 46
  br i1 %cmp68, label %if.then70, label %if.end87

if.then70:                                        ; preds = %land.lhs.true
  %cmp72 = icmp slt i32 %5, %hostlen.0
  br i1 %cmp72, label %if.then74, label %if.end86

if.then74:                                        ; preds = %if.then70
  %sext141 = shl i64 %hostlen.0.in, 32
  %idx.ext = ashr exact i64 %sext141, 32
  %add.ptr75 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  %idx.ext77145 = zext i32 %5 to i64
  %idx.neg = sub nsw i64 0, %idx.ext77145
  %add.ptr78 = getelementptr inbounds i8, i8* %add.ptr75, i64 %idx.neg
  %call81 = tail call fastcc i32 @ia5ncasecmp(i8* noundef nonnull %add.ptr78, i8* noundef nonnull %0, i64 noundef %idx.ext77145) #10
  %cmp82 = icmp eq i32 %call81, 0
  br i1 %cmp82, label %cleanup, label %if.end86

if.end86:                                         ; preds = %if.then74, %if.then70
  br label %cleanup

if.end87:                                         ; preds = %land.lhs.true, %if.end63
  %cmp89.not = icmp eq i32 %5, %hostlen.0
  br i1 %cmp89.not, label %lor.lhs.false91, label %cleanup

lor.lhs.false91:                                  ; preds = %if.end87
  %sext = shl i64 %hostlen.0.in, 32
  %conv92 = ashr exact i64 %sext, 32
  %call93 = tail call fastcc i32 @ia5ncasecmp(i8* noundef nonnull %add.ptr, i8* noundef %0, i64 noundef %conv92) #10
  %tobool.not = icmp eq i32 %call93, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 47
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false91, %if.end87, %if.then74, %if.end59, %entry, %lor.lhs.false, %lor.lhs.false15, %lor.lhs.false19, %if.end86
  %retval.0 = phi i32 [ 47, %if.end86 ], [ 53, %lor.lhs.false19 ], [ 53, %lor.lhs.false15 ], [ 53, %lor.lhs.false ], [ 53, %entry ], [ 53, %if.end59 ], [ 0, %if.then74 ], [ 47, %if.end87 ], [ %spec.select, %lor.lhs.false91 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i32 @nc_ip(%struct.asn1_string_st* nocapture noundef readonly %ip, %struct.asn1_string_st* nocapture noundef readonly %base) unnamed_addr #6 {
entry:
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ip, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !42
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ip, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !41
  %data1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %base, i64 0, i32 2
  %2 = load i8*, i8** %data1, align 8, !tbaa !42
  %length2 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %base, i64 0, i32 0
  %3 = load i32, i32* %length2, align 8, !tbaa !41
  switch i32 %1, label %cleanup [
    i32 16, label %if.end
    i32 4, label %if.end
  ]

if.end:                                           ; preds = %entry, %entry
  switch i32 %3, label %cleanup [
    i32 32, label %if.end8
    i32 8, label %if.end8
  ]

if.end8:                                          ; preds = %if.end, %if.end
  %mul = shl nuw nsw i32 %1, 1
  %cmp9.not = icmp eq i32 %mul, %3
  br i1 %cmp9.not, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %if.end8
  %idx.ext57 = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext57
  br label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %indvars.iv.next, %idx.ext57
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !56

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %indvars.iv
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %arrayidx15 = getelementptr inbounds i8, i8* %add.ptr, i64 %indvars.iv
  %5 = load i8, i8* %arrayidx15, align 1, !tbaa !11
  %arrayidx18 = getelementptr inbounds i8, i8* %2, i64 %indvars.iv
  %6 = load i8, i8* %arrayidx18, align 1, !tbaa !11
  %7 = xor i8 %6, %4
  %8 = and i8 %7, %5
  %cmp24.not = icmp eq i8 %8, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp24.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %for.body, %for.cond, %if.end8, %if.end, %entry
  %retval.0 = phi i32 [ 53, %entry ], [ 53, %if.end ], [ 47, %if.end8 ], [ 47, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i8* @ia5memrchr(%struct.asn1_string_st* nocapture noundef readonly %str) unnamed_addr #6 {
entry:
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 0
  %0 = load i32, i32* %length, align 8, !tbaa !41
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 2
  %1 = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %land.rhs, %entry
  %indvars.iv = phi i64 [ %4, %land.rhs ], [ %1, %entry ]
  %2 = trunc i64 %indvars.iv to i32
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i8*, i8** %data, align 8, !tbaa !42
  %4 = add nsw i64 %indvars.iv, -1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %cmp1.not = icmp eq i8 %5, 64
  br i1 %cmp1.not, label %if.end, label %for.cond, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  %6 = trunc i64 %indvars.iv to i32
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %cleanup, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  %.pre = load i8*, i8** %data, align 8, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %land.rhs, %for.end.if.end_crit_edge
  %7 = phi i8* [ %.pre, %for.end.if.end_crit_edge ], [ %3, %land.rhs ]
  %sub6 = shl i64 %indvars.iv, 32
  %sext = add i64 %sub6, -4294967296
  %idxprom7 = ashr exact i64 %sext, 32
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 %idxprom7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end
  %retval.0 = phi i8* [ %arrayidx8, %if.end ], [ null, %for.end ]
  ret i8* %retval.0
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

declare i32 @ossl_a2ulabel(i8* noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i32 @ia5ncasecmp(i8* nocapture noundef readonly %s1, i8* nocapture noundef readonly %s2, i64 noundef %n) unnamed_addr #6 {
entry:
  %cmp.not56 = icmp eq i64 %n, 0
  br i1 %cmp.not56, label %return, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %n.addr.059 = phi i64 [ %dec, %for.inc ], [ %n, %entry ]
  %s2.addr.058 = phi i8* [ %incdec.ptr39, %for.inc ], [ %s2, %entry ]
  %s1.addr.057 = phi i8* [ %incdec.ptr, %for.inc ], [ %s1, %entry ]
  %0 = load i8, i8* %s1.addr.057, align 1, !tbaa !11
  %1 = load i8, i8* %s2.addr.058, align 1, !tbaa !11
  %cmp2.not = icmp eq i8 %0, %1
  br i1 %cmp2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %2 = add i8 %0, -65
  %3 = icmp ult i8 %2, 26
  %add = add i8 %0, 32
  %spec.select = select i1 %3, i8 %add, i8 %0
  %4 = add i8 %1, -65
  %5 = icmp ult i8 %4, 26
  %add22 = add i8 %1, 32
  %c2.0 = select i1 %5, i8 %add22, i8 %1
  %cmp27 = icmp eq i8 %spec.select, %c2.0
  br i1 %cmp27, label %for.inc, label %return.split.loop.exit

for.inc:                                          ; preds = %if.then, %for.body
  %dec = add i64 %n.addr.059, -1
  %incdec.ptr = getelementptr inbounds i8, i8* %s1.addr.057, i64 1
  %incdec.ptr39 = getelementptr inbounds i8, i8* %s2.addr.058, i64 1
  %cmp.not = icmp eq i64 %dec, 0
  br i1 %cmp.not, label %return, label %for.body, !llvm.loop !58

return.split.loop.exit:                           ; preds = %if.then
  %cmp33.le = icmp ult i8 %spec.select, %c2.0
  %..le = select i1 %cmp33.le, i32 -1, i32 1
  br label %return

return:                                           ; preds = %for.inc, %entry, %return.split.loop.exit
  %retval.3 = phi i32 [ %..le, %return.split.loop.exit ], [ 0, %entry ], [ 0, %for.inc ]
  ret i32 %retval.3
}

declare i32 @i2d_X509_NAME(%struct.X509_name_st* noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !8, i64 8}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = !{!7, !8, i64 16}
!13 = !{!14, !8, i64 0}
!14 = !{!"GENERAL_SUBTREE_st", !8, i64 0, !8, i64 8, !8, i64 16}
!15 = !{!8, !8, i64 0}
!16 = !{!17, !8, i64 0}
!17 = !{!"NAME_CONSTRAINTS_st", !8, i64 0, !8, i64 8}
!18 = !{!17, !8, i64 8}
!19 = !{!20, !8, i64 280}
!20 = !{!"x509_st", !21, i64 0, !25, i64 136, !22, i64 152, !28, i64 176, !9, i64 192, !29, i64 200, !24, i64 216, !24, i64 224, !23, i64 232, !23, i64 236, !23, i64 240, !23, i64 244, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !9, i64 312, !8, i64 336, !8, i64 344, !23, i64 352, !8, i64 360, !8, i64 368, !8, i64 376}
!21 = !{!"x509_cinf_st", !8, i64 0, !22, i64 8, !25, i64 32, !8, i64 48, !26, i64 56, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !27, i64 112}
!22 = !{!"asn1_string_st", !23, i64 0, !23, i64 4, !8, i64 8, !24, i64 16}
!23 = !{!"int", !9, i64 0}
!24 = !{!"long", !9, i64 0}
!25 = !{!"X509_algor_st", !8, i64 0, !8, i64 8}
!26 = !{!"X509_val_st", !8, i64 0, !8, i64 8}
!27 = !{!"ASN1_ENCODING_st", !8, i64 0, !24, i64 8, !23, i64 16}
!28 = !{!"x509_sig_info_st", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12}
!29 = !{!"crypto_ex_data_st", !8, i64 0, !8, i64 8}
!30 = !{!23, !23, i64 0}
!31 = !{!32, !23, i64 0}
!32 = !{!"GENERAL_NAME_st", !23, i64 0, !9, i64 8}
!33 = !{!22, !23, i64 4}
!34 = distinct !{!34, !5}
!35 = !{!36, !8, i64 0}
!36 = !{!"otherName_st", !8, i64 0, !8, i64 8}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = !{!22, !24, i64 16}
!40 = !{!24, !24, i64 0}
!41 = !{!22, !23, i64 0}
!42 = !{!22, !8, i64 8}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5, !46}
!46 = !{!"llvm.loop.peeled.count", i32 1}
!47 = !{!14, !8, i64 16}
!48 = !{!14, !8, i64 8}
!49 = !{!36, !8, i64 8}
!50 = !{!51, !23, i64 0}
!51 = !{!"asn1_type_st", !23, i64 0, !9, i64 8}
!52 = !{!53, !23, i64 8}
!53 = !{!"X509_name_st", !8, i64 0, !23, i64 8, !8, i64 16, !8, i64 24, !23, i64 32}
!54 = !{!53, !23, i64 32}
!55 = !{!53, !8, i64 24}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}

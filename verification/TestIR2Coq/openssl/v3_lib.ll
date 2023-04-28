; ModuleID = 'crypto/x509/v3_lib.c'
source_filename = "crypto/x509/v3_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_st_X509V3_EXT_METHOD = type opaque
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.ASN1_ITEM_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.x509_st = type opaque
%struct.X509_req_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.stack_st = type opaque
%struct.X509_extension_st = type opaque
%struct.asn1_object_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_VALUE_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque

@ext_list = internal unnamed_addr global %struct.stack_st_X509V3_EXT_METHOD* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"crypto/x509/v3_lib.c\00", align 1
@__func__.X509V3_EXT_add = private unnamed_addr constant [15 x i8] c"X509V3_EXT_add\00", align 1
@standard_exts = internal global [49 x %struct.v3_ext_method*] [%struct.v3_ext_method* @ossl_v3_nscert, %struct.v3_ext_method* getelementptr inbounds ([8 x %struct.v3_ext_method], [8 x %struct.v3_ext_method]* @ossl_v3_ns_ia5_list, i32 0, i32 0), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x %struct.v3_ext_method]* @ossl_v3_ns_ia5_list to i8*), i64 104) to %struct.v3_ext_method*), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x %struct.v3_ext_method]* @ossl_v3_ns_ia5_list to i8*), i64 208) to %struct.v3_ext_method*), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x %struct.v3_ext_method]* @ossl_v3_ns_ia5_list to i8*), i64 312) to %struct.v3_ext_method*), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x %struct.v3_ext_method]* @ossl_v3_ns_ia5_list to i8*), i64 416) to %struct.v3_ext_method*), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x %struct.v3_ext_method]* @ossl_v3_ns_ia5_list to i8*), i64 520) to %struct.v3_ext_method*), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x %struct.v3_ext_method]* @ossl_v3_ns_ia5_list to i8*), i64 624) to %struct.v3_ext_method*), %struct.v3_ext_method* @ossl_v3_skey_id, %struct.v3_ext_method* @ossl_v3_key_usage, %struct.v3_ext_method* @ossl_v3_pkey_usage_period, %struct.v3_ext_method* getelementptr inbounds ([3 x %struct.v3_ext_method], [3 x %struct.v3_ext_method]* @ossl_v3_alt, i32 0, i32 0), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.v3_ext_method]* @ossl_v3_alt to i8*), i64 104) to %struct.v3_ext_method*), %struct.v3_ext_method* @ossl_v3_bcons, %struct.v3_ext_method* @ossl_v3_crl_num, %struct.v3_ext_method* @ossl_v3_cpols, %struct.v3_ext_method* @ossl_v3_akey_id, %struct.v3_ext_method* @ossl_v3_crld, %struct.v3_ext_method* @ossl_v3_ext_ku, %struct.v3_ext_method* @ossl_v3_delta_crl, %struct.v3_ext_method* @ossl_v3_crl_reason, %struct.v3_ext_method* @ossl_v3_crl_invdate, %struct.v3_ext_method* @ossl_v3_sxnet, %struct.v3_ext_method* @ossl_v3_info, %struct.v3_ext_method* @ossl_v3_addr, %struct.v3_ext_method* @ossl_v3_asid, %struct.v3_ext_method* @ossl_v3_ocsp_nonce, %struct.v3_ext_method* @ossl_v3_ocsp_crlid, %struct.v3_ext_method* @ossl_v3_ocsp_accresp, %struct.v3_ext_method* @ossl_v3_ocsp_nocheck, %struct.v3_ext_method* @ossl_v3_ocsp_acutoff, %struct.v3_ext_method* @ossl_v3_ocsp_serviceloc, %struct.v3_ext_method* @ossl_v3_sinfo, %struct.v3_ext_method* @ossl_v3_policy_constraints, %struct.v3_ext_method* @ossl_v3_crl_hold, %struct.v3_ext_method* @ossl_v3_pci, %struct.v3_ext_method* @ossl_v3_name_constraints, %struct.v3_ext_method* @ossl_v3_policy_mappings, %struct.v3_ext_method* @ossl_v3_inhibit_anyp, %struct.v3_ext_method* @ossl_v3_idp, %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.v3_ext_method]* @ossl_v3_alt to i8*), i64 208) to %struct.v3_ext_method*), %struct.v3_ext_method* @ossl_v3_freshest_crl, %struct.v3_ext_method* getelementptr inbounds ([3 x %struct.v3_ext_method], [3 x %struct.v3_ext_method]* @ossl_v3_ct_scts, i32 0, i32 0), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.v3_ext_method]* @ossl_v3_ct_scts to i8*), i64 104) to %struct.v3_ext_method*), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.v3_ext_method]* @ossl_v3_ct_scts to i8*), i64 208) to %struct.v3_ext_method*), %struct.v3_ext_method* getelementptr inbounds ([1 x %struct.v3_ext_method], [1 x %struct.v3_ext_method]* @ossl_v3_utf8_list, i32 0, i32 0), %struct.v3_ext_method* @ossl_v3_issuer_sign_tool, %struct.v3_ext_method* @ossl_v3_tls_feature, %struct.v3_ext_method* @ossl_v3_ext_admission], align 16
@__func__.X509V3_EXT_add_alias = private unnamed_addr constant [21 x i8] c"X509V3_EXT_add_alias\00", align 1
@__func__.X509V3_add1_i2d = private unnamed_addr constant [16 x i8] c"X509V3_add1_i2d\00", align 1
@ossl_v3_nscert = external constant %struct.v3_ext_method, align 8
@ossl_v3_ns_ia5_list = external constant [8 x %struct.v3_ext_method], align 16
@ossl_v3_skey_id = external constant %struct.v3_ext_method, align 8
@ossl_v3_key_usage = external constant %struct.v3_ext_method, align 8
@ossl_v3_pkey_usage_period = external constant %struct.v3_ext_method, align 8
@ossl_v3_alt = external constant [3 x %struct.v3_ext_method], align 16
@ossl_v3_bcons = external constant %struct.v3_ext_method, align 8
@ossl_v3_crl_num = external constant %struct.v3_ext_method, align 8
@ossl_v3_cpols = external constant %struct.v3_ext_method, align 8
@ossl_v3_akey_id = external constant %struct.v3_ext_method, align 8
@ossl_v3_crld = external constant %struct.v3_ext_method, align 8
@ossl_v3_ext_ku = external constant %struct.v3_ext_method, align 8
@ossl_v3_delta_crl = external constant %struct.v3_ext_method, align 8
@ossl_v3_crl_reason = external constant %struct.v3_ext_method, align 8
@ossl_v3_crl_invdate = external constant %struct.v3_ext_method, align 8
@ossl_v3_sxnet = external constant %struct.v3_ext_method, align 8
@ossl_v3_info = external constant %struct.v3_ext_method, align 8
@ossl_v3_addr = external constant %struct.v3_ext_method, align 8
@ossl_v3_asid = external constant %struct.v3_ext_method, align 8
@ossl_v3_ocsp_nonce = external constant %struct.v3_ext_method, align 8
@ossl_v3_ocsp_crlid = external constant %struct.v3_ext_method, align 8
@ossl_v3_ocsp_accresp = external constant %struct.v3_ext_method, align 8
@ossl_v3_ocsp_nocheck = external constant %struct.v3_ext_method, align 8
@ossl_v3_ocsp_acutoff = external constant %struct.v3_ext_method, align 8
@ossl_v3_ocsp_serviceloc = external constant %struct.v3_ext_method, align 8
@ossl_v3_sinfo = external constant %struct.v3_ext_method, align 8
@ossl_v3_policy_constraints = external constant %struct.v3_ext_method, align 8
@ossl_v3_crl_hold = external constant %struct.v3_ext_method, align 8
@ossl_v3_pci = external constant %struct.v3_ext_method, align 8
@ossl_v3_name_constraints = external constant %struct.v3_ext_method, align 8
@ossl_v3_policy_mappings = external constant %struct.v3_ext_method, align 8
@ossl_v3_inhibit_anyp = external constant %struct.v3_ext_method, align 8
@ossl_v3_idp = external constant %struct.v3_ext_method, align 8
@ossl_v3_freshest_crl = external constant %struct.v3_ext_method, align 8
@ossl_v3_ct_scts = external constant [3 x %struct.v3_ext_method], align 16
@ossl_v3_utf8_list = external constant [1 x %struct.v3_ext_method], align 16
@ossl_v3_issuer_sign_tool = external constant %struct.v3_ext_method, align 8
@ossl_v3_tls_feature = external constant %struct.v3_ext_method, align 8
@ossl_v3_ext_admission = external constant %struct.v3_ext_method, align 8

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_EXT_add(%struct.v3_ext_method* noundef %ext) local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_X509V3_EXT_METHOD*, %struct.stack_st_X509V3_EXT_METHOD** @ext_list, align 8, !tbaa !4
  %cmp = icmp eq %struct.stack_st_X509V3_EXT_METHOD* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.v3_ext_method**, %struct.v3_ext_method**)* @ext_cmp to i32 (i8*, i8*)*)) #6
  store %struct.stack_st* %call1, %struct.stack_st** bitcast (%struct.stack_st_X509V3_EXT_METHOD** @ext_list to %struct.stack_st**), align 8, !tbaa !4
  %cmp2 = icmp eq %struct.stack_st* %call1, null
  %1 = bitcast %struct.stack_st* %call1 to %struct.stack_st_X509V3_EXT_METHOD*
  br i1 %cmp2, label %return.sink.split, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = phi %struct.stack_st_X509V3_EXT_METHOD* [ %1, %land.lhs.true ], [ %0, %entry ]
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_X509V3_EXT_METHOD_sk_type(%struct.stack_st_X509V3_EXT_METHOD* noundef %2) #7
  %3 = bitcast %struct.v3_ext_method* %ext to i8*
  %call5 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call3, i8* noundef %3) #6
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.end, %land.lhs.true
  %.sink = phi i32 [ 29, %land.lhs.true ], [ 33, %if.end ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.X509V3_EXT_add, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  br label %return

return:                                           ; preds = %return.sink.split, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @ext_cmp(%struct.v3_ext_method** nocapture noundef readonly %a, %struct.v3_ext_method** nocapture noundef readonly %b) #2 {
entry:
  %0 = load %struct.v3_ext_method*, %struct.v3_ext_method** %a, align 8, !tbaa !4
  %ext_nid = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %0, i64 0, i32 0
  %1 = load i32, i32* %ext_nid, align 8, !tbaa !8
  %2 = load %struct.v3_ext_method*, %struct.v3_ext_method** %b, align 8, !tbaa !4
  %ext_nid1 = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %2, i64 0, i32 0
  %3 = load i32, i32* %ext_nid1, align 8, !tbaa !8
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509V3_EXT_METHOD_sk_type(%struct.stack_st_X509V3_EXT_METHOD* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509V3_EXT_METHOD* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.v3_ext_method* @X509V3_EXT_get_nid(i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %tmp = alloca %struct.v3_ext_method, align 8
  %t = alloca %struct.v3_ext_method*, align 8
  %0 = bitcast %struct.v3_ext_method* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %0) #8
  %1 = bitcast %struct.v3_ext_method** %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store %struct.v3_ext_method* %tmp, %struct.v3_ext_method** %t, align 8, !tbaa !4
  %cmp = icmp slt i32 %nid, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ext_nid = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %tmp, i64 0, i32 0
  store i32 %nid, i32* %ext_nid, align 8, !tbaa !8
  %call = call fastcc %struct.v3_ext_method** @OBJ_bsearch_ext(%struct.v3_ext_method** noundef nonnull %t) #7
  %tobool.not = icmp eq %struct.v3_ext_method** %call, null
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %2 = load %struct.v3_ext_method*, %struct.v3_ext_method** %call, align 8, !tbaa !4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %3 = load %struct.stack_st_X509V3_EXT_METHOD*, %struct.stack_st_X509V3_EXT_METHOD** @ext_list, align 8, !tbaa !4
  %tobool3.not = icmp eq %struct.stack_st_X509V3_EXT_METHOD* %3, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end2
  %call6 = call fastcc %struct.stack_st* @ossl_check_X509V3_EXT_METHOD_sk_type(%struct.stack_st_X509V3_EXT_METHOD* noundef nonnull %3) #7
  %call8 = call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call6, i8* noundef nonnull %0) #6
  %4 = load %struct.stack_st_X509V3_EXT_METHOD*, %struct.stack_st_X509V3_EXT_METHOD** @ext_list, align 8, !tbaa !4
  %call9 = call fastcc %struct.stack_st* @ossl_check_const_X509V3_EXT_METHOD_sk_type(%struct.stack_st_X509V3_EXT_METHOD* noundef %4) #7
  %call10 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call9, i32 noundef %call8) #6
  %5 = bitcast i8* %call10 to %struct.v3_ext_method*
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry, %if.end5, %if.then1
  %retval.0 = phi %struct.v3_ext_method* [ %2, %if.then1 ], [ %5, %if.end5 ], [ null, %entry ], [ null, %if.end2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %0) #8
  ret %struct.v3_ext_method* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.v3_ext_method** @OBJ_bsearch_ext(%struct.v3_ext_method** noundef %key) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.v3_ext_method** %key to i8*
  %call = tail call i8* @OBJ_bsearch_(i8* noundef %0, i8* noundef bitcast ([49 x %struct.v3_ext_method*]* @standard_exts to i8*), i32 noundef 49, i32 noundef 8, i32 (i8*, i8*)* noundef nonnull @ext_cmp_BSEARCH_CMP_FN) #6
  %1 = bitcast i8* %call to %struct.v3_ext_method**
  ret %struct.v3_ext_method** %1
}

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509V3_EXT_METHOD_sk_type(%struct.stack_st_X509V3_EXT_METHOD* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509V3_EXT_METHOD* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind uwtable
define %struct.v3_ext_method* @X509V3_EXT_get(%struct.X509_extension_st* noundef %ext) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef %ext) #6
  %call1 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call) #6
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.v3_ext_method* @X509V3_EXT_get_nid(i32 noundef %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.v3_ext_method* [ %call2, %if.end ], [ null, %entry ]
  ret %struct.v3_ext_method* %retval.0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_EXT_add_list(%struct.v3_ext_method* noundef %extlist) local_unnamed_addr #0 {
entry:
  %ext_nid3 = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %extlist, i64 0, i32 0
  %0 = load i32, i32* %ext_nid3, align 8, !tbaa !8
  %cmp.not4 = icmp eq i32 %0, -1
  br i1 %cmp.not4, label %return, label %for.body

for.cond:                                         ; preds = %for.body
  %ext_nid = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %incdec.ptr, i64 0, i32 0
  %1 = load i32, i32* %ext_nid, align 8, !tbaa !8
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %return, label %for.body, !llvm.loop !11

for.body:                                         ; preds = %entry, %for.cond
  %extlist.addr.05 = phi %struct.v3_ext_method* [ %incdec.ptr, %for.cond ], [ %extlist, %entry ]
  %call = tail call i32 @X509V3_EXT_add(%struct.v3_ext_method* noundef nonnull %extlist.addr.05) #7
  %tobool.not = icmp eq i32 %call, 0
  %incdec.ptr = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %extlist.addr.05, i64 1
  br i1 %tobool.not, label %return, label %for.cond

return:                                           ; preds = %for.body, %for.cond, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %for.cond ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_EXT_add_alias(i32 noundef %nid_to, i32 noundef %nid_from) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.v3_ext_method* @X509V3_EXT_get_nid(i32 noundef %nid_from) #7
  %cmp = icmp eq %struct.v3_ext_method* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.X509V3_EXT_add_alias, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 102, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef 104, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 95) #6
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.X509V3_EXT_add_alias, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = bitcast i8* %call1 to %struct.v3_ext_method*
  %1 = bitcast %struct.v3_ext_method* %call to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(104) %call1, i8* noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false), !tbaa.struct !13
  %ext_nid = bitcast i8* %call1 to i32*
  store i32 %nid_to, i32* %ext_nid, align 8, !tbaa !8
  %ext_flags = getelementptr inbounds i8, i8* %call1, i64 4
  %2 = bitcast i8* %ext_flags to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !15
  %or = or i32 %3, 1
  store i32 %or, i32* %2, align 4, !tbaa !15
  %call5 = tail call i32 @X509V3_EXT_add(%struct.v3_ext_method* noundef nonnull %0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ %call5, %if.end4 ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define void @X509V3_EXT_cleanup() local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_X509V3_EXT_METHOD*, %struct.stack_st_X509V3_EXT_METHOD** @ext_list, align 8, !tbaa !4
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509V3_EXT_METHOD_sk_type(%struct.stack_st_X509V3_EXT_METHOD* noundef %0) #7
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.v3_ext_method*)* @ext_list_free to void (i8*)*)) #6
  store %struct.stack_st_X509V3_EXT_METHOD* null, %struct.stack_st_X509V3_EXT_METHOD** @ext_list, align 8, !tbaa !4
  ret void
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @ext_list_free(%struct.v3_ext_method* noundef %ext) #0 {
entry:
  %ext_flags = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %ext, i64 0, i32 1
  %0 = load i32, i32* %ext_flags, align 4, !tbaa !15
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.v3_ext_method* %ext to i8*
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 114) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @X509V3_add_standard_extensions() local_unnamed_addr #3 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i8* @X509V3_EXT_d2i(%struct.X509_extension_st* noundef %ext) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %call = tail call %struct.v3_ext_method* @X509V3_EXT_get(%struct.X509_extension_st* noundef %ext) #7
  %cmp = icmp eq %struct.v3_ext_method* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef %ext) #6
  %call2 = tail call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %call1) #6
  store i8* %call2, i8** %p, align 8, !tbaa !4
  %call3 = tail call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %call1) #6
  %it = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %call, i64 0, i32 2
  %1 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %it, align 8, !tbaa !16
  %tobool.not = icmp eq %struct.ASN1_ITEM_st* ()* %1, null
  br i1 %tobool.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  %conv = sext i32 %call3 to i64
  %call6 = tail call %struct.ASN1_ITEM_st* %1() #6
  %call7 = call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv, %struct.ASN1_ITEM_st* noundef %call6) #6
  %2 = bitcast %struct.ASN1_VALUE_st* %call7 to i8*
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %d2i = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %call, i64 0, i32 5
  %3 = load i8* (i8*, i8**, i64)*, i8* (i8*, i8**, i64)** %d2i, align 8, !tbaa !17
  %conv9 = sext i32 %call3 to i64
  %call10 = call i8* %3(i8* noundef null, i8** noundef nonnull %p, i64 noundef %conv9) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8, %if.then4
  %retval.0 = phi i8* [ %2, %if.then4 ], [ %call10, %if.end8 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i8* %retval.0
}

declare %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef) local_unnamed_addr #1

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef %x, i32 noundef %nid, i32* noundef writeonly %crit, i32* noundef %idx) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.stack_st_X509_EXTENSION* %x, null
  %tobool1.not = icmp eq i32* %idx, null
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 -1, i32* %idx, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %tobool3.not = icmp eq i32* %crit, null
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  store i32 -1, i32* %crit, align 4, !tbaa !14
  br label %cleanup

if.end6:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.end9.thread, label %if.end9

if.end9:                                          ; preds = %if.end6
  %0 = load i32, i32* %idx, align 4, !tbaa !14
  %1 = icmp sgt i32 %0, -1
  %2 = select i1 %1, i32 %0, i32 -1
  %spec.select = add nsw i32 %2, 1
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %if.end9, %if.end6
  %3 = phi i32 [ 0, %if.end6 ], [ %spec.select, %if.end9 ]
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef nonnull %x) #7
  %call1288 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp1389 = icmp slt i32 %3, %call1288
  br i1 %cmp1389, label %for.body, label %if.end38

for.body:                                         ; preds = %if.end9.thread, %for.inc
  %found_ex.092 = phi %struct.X509_extension_st* [ %found_ex.1, %for.inc ], [ null, %if.end9.thread ]
  %i.090 = phi i32 [ %inc, %for.inc ], [ %3, %if.end9.thread ]
  %call15 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.090) #6
  %4 = bitcast i8* %call15 to %struct.X509_extension_st*
  %call16 = tail call %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef %4) #6
  %call17 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call16) #6
  %cmp18 = icmp eq i32 %call17, %nid
  br i1 %cmp18, label %if.then19, label %for.inc

if.then19:                                        ; preds = %for.body
  br i1 %tobool1.not, label %if.else22, label %for.end.thread

if.else22:                                        ; preds = %if.then19
  %tobool23.not = icmp eq %struct.X509_extension_st* %found_ex.092, null
  br i1 %tobool23.not, label %for.inc, label %if.then24

if.then24:                                        ; preds = %if.else22
  %tobool25.not = icmp eq i32* %crit, null
  br i1 %tobool25.not, label %cleanup, label %if.then26

if.then26:                                        ; preds = %if.then24
  store i32 -2, i32* %crit, align 4, !tbaa !14
  br label %cleanup

for.inc:                                          ; preds = %if.else22, %for.body
  %found_ex.1 = phi %struct.X509_extension_st* [ %found_ex.092, %for.body ], [ %4, %if.else22 ]
  %inc = add nuw nsw i32 %i.090, 1
  %call12 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp13 = icmp slt i32 %inc, %call12
  br i1 %cmp13, label %for.body, label %for.end, !llvm.loop !18

for.end:                                          ; preds = %for.inc
  %tobool31.not = icmp eq %struct.X509_extension_st* %found_ex.1, null
  br i1 %tobool31.not, label %if.end38, label %if.then32

for.end.thread:                                   ; preds = %if.then19
  %5 = bitcast i8* %call15 to %struct.X509_extension_st*
  store i32 %i.090, i32* %idx, align 4, !tbaa !14
  %tobool31.not79 = icmp eq i8* %call15, null
  br i1 %tobool31.not79, label %if.then40, label %if.then32

if.then32:                                        ; preds = %for.end.thread, %for.end
  %found_ex.280 = phi %struct.X509_extension_st* [ %5, %for.end.thread ], [ %found_ex.1, %for.end ]
  %tobool33.not = icmp eq i32* %crit, null
  br i1 %tobool33.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.then32
  %call35 = tail call i32 @X509_EXTENSION_get_critical(%struct.X509_extension_st* noundef nonnull %found_ex.280) #6
  store i32 %call35, i32* %crit, align 4, !tbaa !14
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then32
  %call37 = tail call i8* @X509V3_EXT_d2i(%struct.X509_extension_st* noundef nonnull %found_ex.280) #7
  br label %cleanup

if.end38:                                         ; preds = %if.end9.thread, %for.end
  br i1 %tobool1.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %for.end.thread, %if.end38
  store i32 -1, i32* %idx, align 4, !tbaa !14
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38
  %tobool42.not = icmp eq i32* %crit, null
  br i1 %tobool42.not, label %cleanup, label %if.then43

if.then43:                                        ; preds = %if.end41
  store i32 -1, i32* %crit, align 4, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then43, %if.then24, %if.then26, %if.end, %if.then4, %if.end36
  %retval.0 = phi i8* [ %call37, %if.end36 ], [ null, %if.then4 ], [ null, %if.end ], [ null, %if.then26 ], [ null, %if.then24 ], [ null, %if.then43 ], [ null, %if.end41 ]
  ret i8* %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509_EXTENSION_get_critical(%struct.X509_extension_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_add1_i2d(%struct.stack_st_X509_EXTENSION** nocapture noundef %x, i32 noundef %nid, i8* noundef %value, i32 noundef %crit, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %and = and i64 %flags, 15
  %cmp.not = icmp eq i64 %and, 1
  br i1 %cmp.not, label %if.end20.thread, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %x, align 8, !tbaa !4
  %call = tail call i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32 noundef -1) #6
  %cmp1 = icmp sgt i32 %call, -1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  switch i64 %and, label %if.end20 [
    i64 4, label %cleanup
    i64 0, label %err
    i64 5, label %if.then10
  ]

if.then10:                                        ; preds = %if.then2
  %1 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %x, align 8, !tbaa !4
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %1) #7
  %call12 = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %call11, i32 noundef %call) #6
  %tobool.not = icmp eq i8* %call12, null
  %. = select i1 %tobool.not, i32 -1, i32 1
  br label %cleanup

if.else:                                          ; preds = %if.end
  switch i64 %and, label %if.end20.thread112 [
    i64 5, label %err
    i64 3, label %err
  ]

if.end20:                                         ; preds = %if.then2
  %call21 = tail call %struct.X509_extension_st* @X509V3_EXT_i2d(i32 noundef %nid, i32 noundef %crit, i8* noundef %value) #6
  %tobool22.not = icmp eq %struct.X509_extension_st* %call21, null
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.end20.thread112:                               ; preds = %if.else
  %call21113 = tail call %struct.X509_extension_st* @X509V3_EXT_i2d(i32 noundef %nid, i32 noundef %crit, i8* noundef %value) #6
  %tobool22.not114 = icmp eq %struct.X509_extension_st* %call21113, null
  br i1 %tobool22.not114, label %if.then23, label %if.end35

if.end20.thread:                                  ; preds = %entry
  %call21102 = tail call %struct.X509_extension_st* @X509V3_EXT_i2d(i32 noundef %nid, i32 noundef %crit, i8* noundef %value) #6
  %tobool22.not103 = icmp eq %struct.X509_extension_st* %call21102, null
  br i1 %tobool22.not103, label %if.then23, label %if.end35

if.then23:                                        ; preds = %if.end20.thread112, %if.end20.thread, %if.end20
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509V3_add1_i2d, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 144, i8* noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  br i1 %cmp1, label %if.then26, label %if.end35

if.then26:                                        ; preds = %if.end24
  %2 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %x, align 8, !tbaa !4
  %call27 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %2) #7
  %call28 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call27, i32 noundef %call) #6
  %3 = bitcast i8* %call28 to %struct.X509_extension_st*
  tail call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef %3) #6
  %4 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %x, align 8, !tbaa !4
  %call29 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %4) #7
  %5 = bitcast %struct.X509_extension_st* %call21 to i8*
  %call31 = tail call i8* @OPENSSL_sk_set(%struct.stack_st* noundef %call29, i32 noundef %call, i8* noundef nonnull %5) #6
  %tobool32.not = icmp eq i8* %call31, null
  %.91 = select i1 %tobool32.not, i32 -1, i32 1
  br label %cleanup

if.end35:                                         ; preds = %if.end20.thread112, %if.end20.thread, %if.end24
  %call21106111 = phi %struct.X509_extension_st* [ %call21, %if.end24 ], [ %call21102, %if.end20.thread ], [ %call21113, %if.end20.thread112 ]
  %6 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %x, align 8, !tbaa !4
  %cmp36 = icmp eq %struct.stack_st_X509_EXTENSION* %6, null
  br i1 %cmp36, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.end35
  %call37 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %7 = bitcast %struct.stack_st* %call37 to %struct.stack_st_X509_EXTENSION*
  %cmp38 = icmp eq %struct.stack_st* %call37, null
  br i1 %cmp38, label %m_fail, label %if.end40

if.end40:                                         ; preds = %land.lhs.true, %if.end35
  %ret.0 = phi %struct.stack_st_X509_EXTENSION* [ %7, %land.lhs.true ], [ %6, %if.end35 ]
  %call41 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %ret.0) #7
  %8 = bitcast %struct.X509_extension_st* %call21106111 to i8*
  %call43 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call41, i8* noundef %8) #6
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %m_fail, label %if.end46

if.end46:                                         ; preds = %if.end40
  store %struct.stack_st_X509_EXTENSION* %ret.0, %struct.stack_st_X509_EXTENSION** %x, align 8, !tbaa !4
  br label %cleanup

m_fail:                                           ; preds = %if.end40, %land.lhs.true
  %ret.1 = phi %struct.stack_st_X509_EXTENSION* [ null, %land.lhs.true ], [ %ret.0, %if.end40 ]
  %9 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %x, align 8, !tbaa !4
  %cmp47.not = icmp eq %struct.stack_st_X509_EXTENSION* %ret.1, %9
  br i1 %cmp47.not, label %if.end50, label %if.then48

if.then48:                                        ; preds = %m_fail
  %call49 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %ret.1) #7
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call49) #6
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %m_fail
  tail call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef nonnull %call21106111) #6
  br label %cleanup

err:                                              ; preds = %if.else, %if.else, %if.then2
  %errcode.0 = phi i32 [ 145, %if.then2 ], [ 102, %if.else ], [ 102, %if.else ]
  %and51 = and i64 %flags, 16
  %tobool52.not = icmp eq i64 %and51, 0
  br i1 %tobool52.not, label %if.then53, label %cleanup

if.then53:                                        ; preds = %err
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509V3_add1_i2d, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef %errcode.0, i8* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then53, %if.then26, %if.then10, %if.then2, %if.end50, %if.end46, %if.then23
  %retval.0 = phi i32 [ -1, %if.end50 ], [ 1, %if.end46 ], [ 0, %if.then23 ], [ 1, %if.then2 ], [ %., %if.then10 ], [ %.91, %if.then26 ], [ 0, %if.then53 ], [ 0, %err ]
  ret i32 %retval.0
}

declare i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_delete(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.X509_extension_st* @X509V3_EXT_i2d(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @X509_EXTENSION_free(%struct.X509_extension_st* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_set(%struct.stack_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

declare i8* @OBJ_bsearch_(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @ext_cmp_BSEARCH_CMP_FN(i8* nocapture noundef readonly %a_, i8* nocapture noundef readonly %b_) #2 {
entry:
  %0 = bitcast i8* %a_ to %struct.v3_ext_method**
  %1 = bitcast i8* %b_ to %struct.v3_ext_method**
  %call = tail call i32 @ext_cmp(%struct.v3_ext_method** noundef %0, %struct.v3_ext_method** noundef %1) #7
  ret i32 %call
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

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
!9 = !{!"v3_ext_method", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96}
!10 = !{!"int", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 8, !4, i64 16, i64 8, !4, i64 24, i64 8, !4, i64 32, i64 8, !4, i64 40, i64 8, !4, i64 48, i64 8, !4, i64 56, i64 8, !4, i64 64, i64 8, !4, i64 72, i64 8, !4, i64 80, i64 8, !4, i64 88, i64 8, !4, i64 96, i64 8, !4}
!14 = !{!10, !10, i64 0}
!15 = !{!9, !10, i64 4}
!16 = !{!9, !5, i64 8}
!17 = !{!9, !5, i64 32}
!18 = distinct !{!18, !12}

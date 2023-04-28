; ModuleID = 'crypto/pkcs12/p12_sbag.c'
source_filename = "crypto/pkcs12/p12_sbag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.PKCS12_SAFEBAG_st = type { %struct.asn1_object_st*, %union.anon.0, %struct.stack_st_X509_ATTRIBUTE* }
%struct.asn1_object_st = type opaque
%union.anon.0 = type { %struct.pkcs12_bag_st* }
%struct.pkcs12_bag_st = type { %struct.asn1_object_st*, %union.anon.1 }
%union.anon.1 = type { %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.X509_sig_st = type opaque
%struct.stack_st_PKCS12_SAFEBAG = type opaque
%struct.x509_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.X509_crl_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_cipher_st = type opaque

@.str = private unnamed_addr constant [25 x i8] c"crypto/pkcs12/p12_sbag.c\00", align 1
@__func__.PKCS12_SAFEBAG_create_secret = private unnamed_addr constant [29 x i8] c"PKCS12_SAFEBAG_create_secret\00", align 1
@__func__.PKCS12_SAFEBAG_create0_p8inf = private unnamed_addr constant [29 x i8] c"PKCS12_SAFEBAG_create0_p8inf\00", align 1
@__func__.PKCS12_SAFEBAG_create0_pkcs8 = private unnamed_addr constant [29 x i8] c"PKCS12_SAFEBAG_create0_pkcs8\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_type_st* @PKCS12_get_attr(%struct.PKCS12_SAFEBAG_st* nocapture noundef readonly %bag, i32 noundef %attr_nid) local_unnamed_addr #0 {
entry:
  %attrib = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 2
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attrib, align 8, !tbaa !4
  %call = tail call %struct.asn1_type_st* @PKCS12_get_attr_gen(%struct.stack_st_X509_ATTRIBUTE* noundef %0, i32 noundef %attr_nid) #3
  ret %struct.asn1_type_st* %call
}

declare %struct.asn1_type_st* @PKCS12_get_attr_gen(%struct.stack_st_X509_ATTRIBUTE* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_type_st* @PKCS12_SAFEBAG_get0_attr(%struct.PKCS12_SAFEBAG_st* nocapture noundef readonly %bag, i32 noundef %attr_nid) local_unnamed_addr #0 {
entry:
  %attrib = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 2
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attrib, align 8, !tbaa !4
  %call = tail call %struct.asn1_type_st* @PKCS12_get_attr_gen(%struct.stack_st_X509_ATTRIBUTE* noundef %0, i32 noundef %attr_nid) #3
  ret %struct.asn1_type_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_type_st* @PKCS8_get_attr(%struct.pkcs8_priv_key_info_st* noundef %p8, i32 noundef %attr_nid) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @PKCS8_pkey_get0_attrs(%struct.pkcs8_priv_key_info_st* noundef %p8) #3
  %call1 = tail call %struct.asn1_type_st* @PKCS12_get_attr_gen(%struct.stack_st_X509_ATTRIBUTE* noundef %call, i32 noundef %attr_nid) #3
  ret %struct.asn1_type_st* %call1
}

declare %struct.stack_st_X509_ATTRIBUTE* @PKCS8_pkey_get0_attrs(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs8_priv_key_info_st* @PKCS12_SAFEBAG_get0_p8inf(%struct.PKCS12_SAFEBAG_st* nocapture noundef readonly %bag) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @PKCS12_SAFEBAG_get_nid(%struct.PKCS12_SAFEBAG_st* noundef %bag) #4
  %cmp.not = icmp eq i32 %call, 150
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 1
  %keybag = bitcast %union.anon.0* %value to %struct.pkcs8_priv_key_info_st**
  %0 = load %struct.pkcs8_priv_key_info_st*, %struct.pkcs8_priv_key_info_st** %keybag, align 8, !tbaa !9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.pkcs8_priv_key_info_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.pkcs8_priv_key_info_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_SAFEBAG_get_nid(%struct.PKCS12_SAFEBAG_st* nocapture noundef readonly %bag) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !10
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_sig_st* @PKCS12_SAFEBAG_get0_pkcs8(%struct.PKCS12_SAFEBAG_st* nocapture noundef readonly %bag) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !10
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #3
  %cmp.not = icmp eq i32 %call, 151
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 1
  %shkeybag = bitcast %union.anon.0* %value to %struct.X509_sig_st**
  %1 = load %struct.X509_sig_st*, %struct.X509_sig_st** %shkeybag, align 8, !tbaa !9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.X509_sig_st* [ %1, %if.end ], [ null, %entry ]
  ret %struct.X509_sig_st* %retval.0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_SAFEBAG_get0_safes(%struct.PKCS12_SAFEBAG_st* nocapture noundef readonly %bag) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !10
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #3
  %cmp.not = icmp eq i32 %call, 155
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 1
  %safes = bitcast %union.anon.0* %value to %struct.stack_st_PKCS12_SAFEBAG**
  %1 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %safes, align 8, !tbaa !9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.stack_st_PKCS12_SAFEBAG* [ %1, %if.end ], [ null, %entry ]
  ret %struct.stack_st_PKCS12_SAFEBAG* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_object_st* @PKCS12_SAFEBAG_get0_type(%struct.PKCS12_SAFEBAG_st* nocapture noundef readonly %bag) local_unnamed_addr #2 {
entry:
  %type = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !10
  ret %struct.asn1_object_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_SAFEBAG_get_bag_nid(%struct.PKCS12_SAFEBAG_st* nocapture noundef readonly %bag) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @PKCS12_SAFEBAG_get_nid(%struct.PKCS12_SAFEBAG_st* noundef %bag) #4
  %call.off = add i32 %call, -152
  %switch = icmp ult i32 %call.off, 3
  br i1 %switch, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %bag4 = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 1, i32 0
  %0 = load %struct.pkcs12_bag_st*, %struct.pkcs12_bag_st** %bag4, align 8, !tbaa !9
  %type = getelementptr inbounds %struct.pkcs12_bag_st, %struct.pkcs12_bag_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !11
  %call5 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call5, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_object_st* @PKCS12_SAFEBAG_get0_bag_type(%struct.PKCS12_SAFEBAG_st* nocapture noundef readonly %bag) local_unnamed_addr #2 {
entry:
  %bag1 = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 1, i32 0
  %0 = load %struct.pkcs12_bag_st*, %struct.pkcs12_bag_st** %bag1, align 8, !tbaa !9
  %type = getelementptr inbounds %struct.pkcs12_bag_st, %struct.pkcs12_bag_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !11
  ret %struct.asn1_object_st* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_type_st* @PKCS12_SAFEBAG_get0_bag_obj(%struct.PKCS12_SAFEBAG_st* nocapture noundef readonly %bag) local_unnamed_addr #2 {
entry:
  %bag1 = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 1, i32 0
  %0 = load %struct.pkcs12_bag_st*, %struct.pkcs12_bag_st** %bag1, align 8, !tbaa !9
  %value2 = getelementptr inbounds %struct.pkcs12_bag_st, %struct.pkcs12_bag_st* %0, i64 0, i32 1
  %other = bitcast %union.anon.1* %value2 to %struct.asn1_type_st**
  %1 = load %struct.asn1_type_st*, %struct.asn1_type_st** %other, align 8, !tbaa !9
  ret %struct.asn1_type_st* %1
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @PKCS12_SAFEBAG_get1_cert(%struct.PKCS12_SAFEBAG_st* nocapture noundef readonly %bag) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @PKCS12_SAFEBAG_get_nid(%struct.PKCS12_SAFEBAG_st* noundef %bag) #4
  %cmp.not = icmp eq i32 %call, 152
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %bag1 = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 1, i32 0
  %0 = load %struct.pkcs12_bag_st*, %struct.pkcs12_bag_st** %bag1, align 8, !tbaa !9
  %type = getelementptr inbounds %struct.pkcs12_bag_st, %struct.pkcs12_bag_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !11
  %call2 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #3
  %cmp3.not = icmp eq i32 %call2, 158
  br i1 %cmp3.not, label %if.end5, label %return

if.end5:                                          ; preds = %if.end
  %2 = load %struct.pkcs12_bag_st*, %struct.pkcs12_bag_st** %bag1, align 8, !tbaa !9
  %octet = getelementptr inbounds %struct.pkcs12_bag_st, %struct.pkcs12_bag_st* %2, i64 0, i32 1, i32 0
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %octet, align 8, !tbaa !9
  %call9 = tail call %struct.ASN1_ITEM_st* @X509_it() #3
  %call10 = tail call i8* @ASN1_item_unpack(%struct.asn1_string_st* noundef %3, %struct.ASN1_ITEM_st* noundef %call9) #3
  %4 = bitcast i8* %call10 to %struct.x509_st*
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi %struct.x509_st* [ %4, %if.end5 ], [ null, %entry ], [ null, %if.end ]
  ret %struct.x509_st* %retval.0
}

declare i8* @ASN1_item_unpack(%struct.asn1_string_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @X509_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_crl_st* @PKCS12_SAFEBAG_get1_crl(%struct.PKCS12_SAFEBAG_st* nocapture noundef readonly %bag) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @PKCS12_SAFEBAG_get_nid(%struct.PKCS12_SAFEBAG_st* noundef %bag) #4
  %cmp.not = icmp eq i32 %call, 153
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %bag1 = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 1, i32 0
  %0 = load %struct.pkcs12_bag_st*, %struct.pkcs12_bag_st** %bag1, align 8, !tbaa !9
  %type = getelementptr inbounds %struct.pkcs12_bag_st, %struct.pkcs12_bag_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !11
  %call2 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #3
  %cmp3.not = icmp eq i32 %call2, 160
  br i1 %cmp3.not, label %if.end5, label %return

if.end5:                                          ; preds = %if.end
  %2 = load %struct.pkcs12_bag_st*, %struct.pkcs12_bag_st** %bag1, align 8, !tbaa !9
  %octet = getelementptr inbounds %struct.pkcs12_bag_st, %struct.pkcs12_bag_st* %2, i64 0, i32 1, i32 0
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %octet, align 8, !tbaa !9
  %call9 = tail call %struct.ASN1_ITEM_st* @X509_CRL_it() #3
  %call10 = tail call i8* @ASN1_item_unpack(%struct.asn1_string_st* noundef %3, %struct.ASN1_ITEM_st* noundef %call9) #3
  %4 = bitcast i8* %call10 to %struct.X509_crl_st*
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi %struct.X509_crl_st* [ %4, %if.end5 ], [ null, %entry ], [ null, %if.end ]
  ret %struct.X509_crl_st* %retval.0
}

declare %struct.ASN1_ITEM_st* @X509_CRL_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create_cert(%struct.x509_st* noundef %x509) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x509_st* %x509 to i8*
  %call = tail call %struct.ASN1_ITEM_st* @X509_it() #3
  %call1 = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_item_pack_safebag(i8* noundef %0, %struct.ASN1_ITEM_st* noundef %call, i32 noundef 158, i32 noundef 152) #3
  ret %struct.PKCS12_SAFEBAG_st* %call1
}

declare %struct.PKCS12_SAFEBAG_st* @PKCS12_item_pack_safebag(i8* noundef, %struct.ASN1_ITEM_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create_crl(%struct.X509_crl_st* noundef %crl) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_crl_st* %crl to i8*
  %call = tail call %struct.ASN1_ITEM_st* @X509_CRL_it() #3
  %call1 = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_item_pack_safebag(i8* noundef %0, %struct.ASN1_ITEM_st* noundef %call, i32 noundef 160, i32 noundef 153) #3
  ret %struct.PKCS12_SAFEBAG_st* %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create_secret(i32 noundef %type, i32 noundef %vtype, i8* noundef %value, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs12_bag_st* @PKCS12_BAGS_new() #3
  %cmp = icmp eq %struct.pkcs12_bag_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.PKCS12_SAFEBAG_create_secret, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup27

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %type) #3
  %type2 = getelementptr inbounds %struct.pkcs12_bag_st, %struct.pkcs12_bag_st* %call, i64 0, i32 0
  store %struct.asn1_object_st* %call1, %struct.asn1_object_st** %type2, align 8, !tbaa !11
  %cond = icmp eq i32 %vtype, 4
  br i1 %cond, label %sw.bb, label %err

sw.bb:                                            ; preds = %if.end
  %call3 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #3
  %cmp4 = icmp eq %struct.asn1_string_st* %call3, null
  br i1 %cmp4, label %err, label %if.end6

if.end6:                                          ; preds = %sw.bb
  %call7 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %call3, i8* noundef %value, i32 noundef %len) #3
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %err.sink.split, label %if.end9

if.end9:                                          ; preds = %if.end6
  %call10 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #3
  %value11 = getelementptr inbounds %struct.pkcs12_bag_st, %struct.pkcs12_bag_st* %call, i64 0, i32 1
  %other = bitcast %union.anon.1* %value11 to %struct.asn1_type_st**
  store %struct.asn1_type_st* %call10, %struct.asn1_type_st** %other, align 8, !tbaa !9
  %cmp14 = icmp eq %struct.asn1_type_st* %call10, null
  br i1 %cmp14, label %err.sink.split, label %sw.epilog

sw.epilog:                                        ; preds = %if.end9
  %0 = bitcast %struct.asn1_string_st* %call3 to i8*
  tail call void @ASN1_TYPE_set(%struct.asn1_type_st* noundef nonnull %call10, i32 noundef 4, i8* noundef nonnull %0) #3
  %call19 = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_new() #3
  %cmp20 = icmp eq %struct.PKCS12_SAFEBAG_st* %call19, null
  br i1 %cmp20, label %err, label %if.end22

if.end22:                                         ; preds = %sw.epilog
  %bag24 = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %call19, i64 0, i32 1, i32 0
  store %struct.pkcs12_bag_st* %call, %struct.pkcs12_bag_st** %bag24, align 8, !tbaa !9
  %call25 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 154) #3
  %type26 = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %call19, i64 0, i32 0
  store %struct.asn1_object_st* %call25, %struct.asn1_object_st** %type26, align 8, !tbaa !10
  br label %cleanup27

err.sink.split:                                   ; preds = %if.end9, %if.end6
  %.sink45.ph = phi i32 [ 139, %if.end6 ], [ 145, %if.end9 ]
  %.sink.ph = phi i32 [ 102, %if.end6 ], [ 786688, %if.end9 ]
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call3) #3
  br label %err

err:                                              ; preds = %err.sink.split, %sw.epilog, %if.end, %sw.bb
  %.sink45 = phi i32 [ 133, %sw.bb ], [ 153, %if.end ], [ 158, %sw.epilog ], [ %.sink45.ph, %err.sink.split ]
  %.sink = phi i32 [ 786688, %sw.bb ], [ 112, %if.end ], [ 786688, %sw.epilog ], [ %.sink.ph, %err.sink.split ]
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink45, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.PKCS12_SAFEBAG_create_secret, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef %.sink, i8* noundef null) #3
  tail call void @PKCS12_BAGS_free(%struct.pkcs12_bag_st* noundef nonnull %call) #3
  br label %cleanup27

cleanup27:                                        ; preds = %err, %if.end22, %if.then
  %retval.0 = phi %struct.PKCS12_SAFEBAG_st* [ null, %if.then ], [ null, %err ], [ %call19, %if.end22 ]
  ret %struct.PKCS12_SAFEBAG_st* %retval.0
}

declare %struct.pkcs12_bag_st* @PKCS12_BAGS_new() local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #1

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #1

declare void @ASN1_TYPE_set(%struct.asn1_type_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_new() local_unnamed_addr #1

declare void @PKCS12_BAGS_free(%struct.pkcs12_bag_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create0_p8inf(%struct.pkcs8_priv_key_info_st* noundef %p8) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_new() #3
  %cmp = icmp eq %struct.PKCS12_SAFEBAG_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.PKCS12_SAFEBAG_create0_p8inf, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 150) #3
  %type = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %call, i64 0, i32 0
  store %struct.asn1_object_st* %call1, %struct.asn1_object_st** %type, align 8, !tbaa !10
  %value = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %call, i64 0, i32 1
  %keybag = bitcast %union.anon.0* %value to %struct.pkcs8_priv_key_info_st**
  store %struct.pkcs8_priv_key_info_st* %p8, %struct.pkcs8_priv_key_info_st** %keybag, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret %struct.PKCS12_SAFEBAG_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create0_pkcs8(%struct.X509_sig_st* noundef %p8) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_new() #3
  %cmp = icmp eq %struct.PKCS12_SAFEBAG_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.PKCS12_SAFEBAG_create0_pkcs8, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 151) #3
  %type = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %call, i64 0, i32 0
  store %struct.asn1_object_st* %call1, %struct.asn1_object_st** %type, align 8, !tbaa !10
  %value = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %call, i64 0, i32 1
  %shkeybag = bitcast %union.anon.0* %value to %struct.X509_sig_st**
  store %struct.X509_sig_st* %p8, %struct.X509_sig_st** %shkeybag, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret %struct.PKCS12_SAFEBAG_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create_pkcs8_encrypt_ex(i32 noundef %pbe_nid, i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, %struct.pkcs8_priv_key_info_st* noundef %p8inf, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ERR_set_mark() #3
  %call1 = tail call i8* @OBJ_nid2sn(i32 noundef %pbe_nid) #3
  %call2 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %call1, i8* noundef %propq) #3
  %cmp = icmp eq %struct.evp_cipher_st* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = tail call i8* @OBJ_nid2sn(i32 noundef %pbe_nid) #3
  %call4 = tail call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef %call3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pbe_ciph.0 = phi %struct.evp_cipher_st* [ %call4, %if.then ], [ %call2, %entry ]
  %call5 = tail call i32 @ERR_pop_to_mark() #3
  %cmp6.not = icmp eq %struct.evp_cipher_st* %pbe_ciph.0, null
  %spec.select = select i1 %cmp6.not, i32 %pbe_nid, i32 -1
  %call9 = tail call %struct.X509_sig_st* @PKCS8_encrypt_ex(i32 noundef %spec.select, %struct.evp_cipher_st* noundef %pbe_ciph.0, i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, %struct.pkcs8_priv_key_info_st* noundef %p8inf, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #3
  %cmp10 = icmp eq %struct.X509_sig_st* %call9, null
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end
  %call13 = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create0_pkcs8(%struct.X509_sig_st* noundef nonnull %call9) #4
  %cmp14 = icmp eq %struct.PKCS12_SAFEBAG_st* %call13, null
  br i1 %cmp14, label %if.then15, label %err

if.then15:                                        ; preds = %if.end12
  tail call void @X509_SIG_free(%struct.X509_sig_st* noundef nonnull %call9) #3
  br label %err

err:                                              ; preds = %if.end12, %if.then15, %if.end
  %bag.0 = phi %struct.PKCS12_SAFEBAG_st* [ null, %if.end ], [ null, %if.then15 ], [ %call13, %if.end12 ]
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call2) #3
  ret %struct.PKCS12_SAFEBAG_st* %bag.0
}

declare i32 @ERR_set_mark() local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #1

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

declare %struct.X509_sig_st* @PKCS8_encrypt_ex(i32 noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, %struct.pkcs8_priv_key_info_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @X509_SIG_free(%struct.X509_sig_st* noundef) local_unnamed_addr #1

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create_pkcs8_encrypt(i32 noundef %pbe_nid, i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, %struct.pkcs8_priv_key_info_st* noundef %p8inf) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create_pkcs8_encrypt_ex(i32 noundef %pbe_nid, i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, %struct.pkcs8_priv_key_info_st* noundef %p8inf, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #4
  ret %struct.PKCS12_SAFEBAG_st* %call
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 16}
!5 = !{!"PKCS12_SAFEBAG_st", !6, i64 0, !7, i64 8, !6, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = !{!12, !6, i64 0}
!12 = !{!"pkcs12_bag_st", !6, i64 0, !7, i64 8}

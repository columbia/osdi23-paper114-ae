; ModuleID = 'crypto/ts/ts_conf.c'
source_filename = "crypto/ts/ts_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_st = type opaque
%struct.bio_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st = type opaque
%struct.stack_st_X509_INFO = type opaque
%struct.X509_info_st = type { %struct.x509_st*, %struct.X509_crl_st*, %struct.private_key_st*, %struct.evp_cipher_info_st, i32, i8* }
%struct.X509_crl_st = type opaque
%struct.private_key_st = type { i32, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*, i32, i8*, i32, %struct.evp_cipher_info_st }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_pkey_st = type opaque
%struct.evp_cipher_info_st = type { %struct.evp_cipher_st*, [16 x i8] }
%struct.evp_cipher_st = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.TS_resp_ctx = type opaque
%struct.engine_st = type opaque
%struct.evp_md_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"crypto/ts/ts_conf.c\00", align 1
@__func__.TS_CONF_load_cert = private unnamed_addr constant [18 x i8] c"TS_CONF_load_cert\00", align 1
@__func__.TS_CONF_load_certs = private unnamed_addr constant [19 x i8] c"TS_CONF_load_certs\00", align 1
@__func__.TS_CONF_load_key = private unnamed_addr constant [17 x i8] c"TS_CONF_load_key\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tsa\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"default_tsa\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"crypto_device\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"builtin\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"chil\00", align 1
@__func__.TS_CONF_set_default_engine = private unnamed_addr constant [27 x i8] c"TS_CONF_set_default_engine\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"engine:%s\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"signer_cert\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"certs\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"signer_key\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"signer_digest\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"default_policy\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"other_policies\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"digests\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"accuracy\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"secs\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"millisecs\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"microsecs\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"clock_precision_digits\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"ordering\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"tsa_name\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"ess_cert_id_chain\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"ess_cert_id_alg\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@__func__.ts_CONF_lookup_fail = private unnamed_addr constant [20 x i8] c"ts_CONF_lookup_fail\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"%s::%s\00", align 1
@__func__.ts_CONF_invalid = private unnamed_addr constant [16 x i8] c"ts_CONF_invalid\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @TS_CONF_load_cert(i8* noundef %file) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %file, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then3, label %end

end:                                              ; preds = %entry
  %call1 = tail call %struct.x509_st* @PEM_read_bio_X509_AUX(%struct.bio_st* noundef nonnull %call, %struct.x509_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  %cmp2 = icmp eq %struct.x509_st* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %entry, %end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.TS_CONF_load_cert, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 137, i8* noundef null) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %end
  %x.012 = phi %struct.x509_st* [ null, %if.then3 ], [ %call1, %end ]
  %call5 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #5
  ret %struct.x509_st* %x.012
}

declare %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.x509_st* @PEM_read_bio_X509_AUX(%struct.bio_st* noundef, %struct.x509_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509* @TS_CONF_load_certs(i8* noundef %file) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %file, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then22, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %cmp2 = icmp eq %struct.stack_st* %call1, null
  br i1 %cmp2, label %if.then22, label %if.end4

if.end4:                                          ; preds = %if.end
  %0 = bitcast %struct.stack_st* %call1 to %struct.stack_st_X509*
  %call5 = tail call %struct.stack_st_X509_INFO* @PEM_X509_INFO_read_bio(%struct.bio_st* noundef nonnull %call, %struct.stack_st_X509_INFO* noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef %call5) #6
  %call759 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #5
  %cmp860 = icmp sgt i32 %call759, 0
  br i1 %cmp860, label %for.body, label %if.end23

for.body:                                         ; preds = %if.end4, %for.inc
  %i.061 = phi i32 [ %inc, %for.inc ], [ 0, %if.end4 ]
  %call10 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call6, i32 noundef %i.061) #5
  %x509 = bitcast i8* %call10 to %struct.x509_st**
  %1 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !4
  %cmp11.not = icmp eq %struct.x509_st* %1, null
  br i1 %cmp11.not, label %for.inc, label %if.then12

if.then12:                                        ; preds = %for.body
  %call14 = tail call i32 @X509_add_cert(%struct.stack_st_X509* noundef nonnull %0, %struct.x509_st* noundef nonnull %1, i32 noundef 0) #5
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.then12
  store %struct.x509_st* null, %struct.x509_st** %x509, align 8, !tbaa !4
  br label %for.inc

cleanup:                                          ; preds = %if.then12
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %0) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call16, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #5
  br label %if.then22

for.inc:                                          ; preds = %if.end18, %for.body
  %inc = add nuw nsw i32 %i.061, 1
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #5
  %cmp8 = icmp slt i32 %inc, %call7
  br i1 %cmp8, label %for.body, label %if.end23, !llvm.loop !11

if.then22:                                        ; preds = %cleanup, %if.end, %entry
  %allcerts.058 = phi %struct.stack_st_X509_INFO* [ %call5, %cleanup ], [ null, %if.end ], [ null, %entry ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.TS_CONF_load_certs, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 137, i8* noundef null) #5
  br label %if.end23

if.end23:                                         ; preds = %for.inc, %if.end4, %if.then22
  %allcerts.057 = phi %struct.stack_st_X509_INFO* [ %allcerts.058, %if.then22 ], [ %call5, %if.end4 ], [ %call5, %for.inc ]
  %othercerts.255 = phi %struct.stack_st_X509* [ null, %if.then22 ], [ %0, %if.end4 ], [ %0, %for.inc ]
  %call24 = tail call fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef %allcerts.057) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call24, void (i8*)* noundef bitcast (void (%struct.X509_info_st*)* @X509_INFO_free to void (i8*)*)) #5
  %call26 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #5
  ret %struct.stack_st_X509* %othercerts.255
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare %struct.stack_st_X509_INFO* @PEM_X509_INFO_read_bio(%struct.bio_st* noundef, %struct.stack_st_X509_INFO* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_X509_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @X509_add_cert(%struct.stack_st_X509* noundef, %struct.x509_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_free(%struct.x509_st* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_X509_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_INFO_free(%struct.X509_info_st* noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @TS_CONF_load_key(i8* noundef %file, i8* noundef %pass) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %file, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then3, label %end

end:                                              ; preds = %entry
  %call1 = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef nonnull %call, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef %pass) #5
  %cmp2 = icmp eq %struct.evp_pkey_st* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %entry, %end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.TS_CONF_load_key, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 138, i8* noundef null) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %end
  %pkey.012 = phi %struct.evp_pkey_st* [ null, %if.then3 ], [ %call1, %end ]
  %call5 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #5
  ret %struct.evp_pkey_st* %pkey.012
}

declare %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @TS_CONF_get_tsa_section(%struct.conf_st* noundef %conf, i8* noundef readnone %section) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %section, null
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #5
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  tail call fastcc void @ts_CONF_lookup_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then, %if.then2, %entry
  %section.addr.0 = phi i8* [ %section, %entry ], [ %call, %if.then ], [ null, %if.then2 ]
  ret i8* %section.addr.0
}

declare i8* @NCONF_get_string(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ts_CONF_lookup_fail(i8* noundef %name, i8* noundef %tag) unnamed_addr #0 {
entry:
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ts_CONF_lookup_fail, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 136, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* noundef %name, i8* noundef %tag) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_CONF_set_serial(%struct.conf_st* noundef %conf, i8* noundef %section, %struct.asn1_string_st* (%struct.TS_resp_ctx*, i8*)* noundef %cb, %struct.TS_resp_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #5
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @ts_CONF_lookup_fail(i8* noundef %section, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %err

if.end:                                           ; preds = %entry
  tail call void @TS_RESP_CTX_set_serial_cb(%struct.TS_resp_ctx* noundef %ctx, %struct.asn1_string_st* (%struct.TS_resp_ctx*, i8*)* noundef %cb, i8* noundef nonnull %call) #5
  br label %err

err:                                              ; preds = %if.end, %if.then
  %ret.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %ret.0
}

declare void @TS_RESP_CTX_set_serial_cb(%struct.TS_resp_ctx* noundef, %struct.asn1_string_st* (%struct.TS_resp_ctx*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_CONF_set_crypto_device(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %device) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %device, null
  br i1 %cmp, label %if.end, label %land.lhs.true

if.end:                                           ; preds = %entry
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #5
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry, %if.end
  %device.addr.011 = phi i8* [ %call, %if.end ], [ %device, %entry ]
  %call1 = tail call i32 @TS_CONF_set_default_engine(i8* noundef nonnull %device.addr.011) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %err

if.then3:                                         ; preds = %land.lhs.true
  tail call fastcc void @ts_CONF_invalid(i8* noundef %section, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #6
  br label %err

err:                                              ; preds = %if.end, %land.lhs.true, %if.then3
  %ret.0 = phi i32 [ 0, %if.then3 ], [ 1, %land.lhs.true ], [ 1, %if.end ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_CONF_set_default_engine(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.engine_st* @ENGINE_by_id(i8* noundef %name) #5
  %cmp2 = icmp eq %struct.engine_st* %call1, null
  br i1 %cmp2, label %if.then14, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #7
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %err

if.then7:                                         ; preds = %if.end4
  %call8 = tail call i32 @ENGINE_ctrl(%struct.engine_st* noundef nonnull %call1, i32 noundef 100, i64 noundef 1, i8* noundef null, void ()* noundef null) #5
  br label %err

err:                                              ; preds = %if.end4, %if.then7
  %call10 = tail call i32 @ENGINE_set_default(%struct.engine_st* noundef nonnull %call1, i32 noundef 65535) #5
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end, %err
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.TS_CONF_set_default_engine, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 127, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef %name) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %err
  %ret.029 = phi i32 [ 0, %if.then14 ], [ 1, %err ]
  %call16 = tail call i32 @ENGINE_free(%struct.engine_st* noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end15
  %retval.0 = phi i32 [ %ret.029, %if.end15 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ts_CONF_invalid(i8* noundef %name, i8* noundef %tag) unnamed_addr #0 {
entry:
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ts_CONF_invalid, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 135, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* noundef %name, i8* noundef %tag) #5
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare %struct.engine_st* @ENGINE_by_id(i8* noundef) local_unnamed_addr #1

declare i32 @ENGINE_ctrl(%struct.engine_st* noundef, i32 noundef, i64 noundef, i8* noundef, void ()* noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_default(%struct.engine_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ENGINE_free(%struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_CONF_set_signer_cert(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %cert, %struct.TS_resp_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %cert, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)) #5
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  tail call fastcc void @ts_CONF_lookup_fail(i8* noundef %section, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)) #6
  br label %err

if.end3:                                          ; preds = %if.then, %entry
  %cert.addr.0 = phi i8* [ %call, %if.then ], [ %cert, %entry ]
  %call4 = tail call %struct.x509_st* @TS_CONF_load_cert(i8* noundef nonnull %cert.addr.0) #6
  %cmp5 = icmp eq %struct.x509_st* %call4, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @TS_RESP_CTX_set_signer_cert(%struct.TS_resp_ctx* noundef %ctx, %struct.x509_st* noundef nonnull %call4) #5
  %tobool.not = icmp ne i32 %call8, 0
  %spec.select = zext i1 %tobool.not to i32
  br label %err

err:                                              ; preds = %if.end7, %if.end3, %if.then2
  %ret.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.end3 ], [ %spec.select, %if.end7 ]
  %cert_obj.0 = phi %struct.x509_st* [ null, %if.then2 ], [ null, %if.end3 ], [ %call4, %if.end7 ]
  tail call void @X509_free(%struct.x509_st* noundef %cert_obj.0) #5
  ret i32 %ret.0
}

declare i32 @TS_RESP_CTX_set_signer_cert(%struct.TS_resp_ctx* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_CONF_set_certs(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %certs, %struct.TS_resp_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %certs, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #5
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %end, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %certs.addr.0 = phi i8* [ %call, %if.then ], [ %certs, %entry ]
  %call4 = tail call %struct.stack_st_X509* @TS_CONF_load_certs(i8* noundef nonnull %certs.addr.0) #6
  %cmp5 = icmp eq %struct.stack_st_X509* %call4, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @TS_RESP_CTX_set_certs(%struct.TS_resp_ctx* noundef %ctx, %struct.stack_st_X509* noundef nonnull %call4) #5
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %err, label %end

end:                                              ; preds = %if.end7, %if.then
  %certs_obj.0 = phi %struct.stack_st_X509* [ null, %if.then ], [ %call4, %if.end7 ]
  br label %err

err:                                              ; preds = %if.end7, %if.end3, %end
  %ret.0 = phi i32 [ 1, %end ], [ 0, %if.end3 ], [ 0, %if.end7 ]
  %certs_obj.1 = phi %struct.stack_st_X509* [ %certs_obj.0, %end ], [ null, %if.end3 ], [ %call4, %if.end7 ]
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %certs_obj.1) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call11, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #5
  ret i32 %ret.0
}

declare i32 @TS_RESP_CTX_set_certs(%struct.TS_resp_ctx* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_CONF_set_signer_key(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %key, i8* noundef %pass, %struct.TS_resp_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %key, null
  br i1 %tobool.not, label %if.end, label %if.end3

if.end:                                           ; preds = %entry
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0)) #5
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call fastcc void @ts_CONF_lookup_fail(i8* noundef %section, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0)) #6
  br label %err

if.end3:                                          ; preds = %entry, %if.end
  %key.addr.019 = phi i8* [ %call, %if.end ], [ %key, %entry ]
  %call4 = tail call %struct.evp_pkey_st* @TS_CONF_load_key(i8* noundef nonnull %key.addr.019, i8* noundef %pass) #6
  %cmp = icmp eq %struct.evp_pkey_st* %call4, null
  br i1 %cmp, label %err, label %if.end6

if.end6:                                          ; preds = %if.end3
  %call7 = tail call i32 @TS_RESP_CTX_set_signer_key(%struct.TS_resp_ctx* noundef %ctx, %struct.evp_pkey_st* noundef nonnull %call4) #5
  %tobool8.not = icmp ne i32 %call7, 0
  %spec.select = zext i1 %tobool8.not to i32
  br label %err

err:                                              ; preds = %if.end6, %if.end3, %if.then2
  %ret.0 = phi i32 [ 0, %if.end3 ], [ 0, %if.then2 ], [ %spec.select, %if.end6 ]
  %key_obj.0 = phi %struct.evp_pkey_st* [ null, %if.end3 ], [ null, %if.then2 ], [ %call4, %if.end6 ]
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %key_obj.0) #5
  ret i32 %ret.0
}

declare i32 @TS_RESP_CTX_set_signer_key(%struct.TS_resp_ctx* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_CONF_set_signer_digest(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %md, %struct.TS_resp_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %md, null
  br i1 %cmp, label %if.end, label %if.end3

if.end:                                           ; preds = %entry
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0)) #5
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call fastcc void @ts_CONF_lookup_fail(i8* noundef %section, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0)) #6
  br label %err

if.end3:                                          ; preds = %entry, %if.end
  %md.addr.020 = phi i8* [ %call, %if.end ], [ %md, %entry ]
  %call4 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef nonnull %md.addr.020) #5
  %cmp5 = icmp eq %struct.evp_md_st* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  tail call fastcc void @ts_CONF_invalid(i8* noundef %section, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0)) #6
  br label %err

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @TS_RESP_CTX_set_signer_digest(%struct.TS_resp_ctx* noundef %ctx, %struct.evp_md_st* noundef nonnull %call4) #5
  %tobool.not = icmp ne i32 %call8, 0
  %spec.select = zext i1 %tobool.not to i32
  br label %err

err:                                              ; preds = %if.end7, %if.then6, %if.then2
  %ret.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then6 ], [ %spec.select, %if.end7 ]
  ret i32 %ret.0
}

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #1

declare i32 @TS_RESP_CTX_set_signer_digest(%struct.TS_resp_ctx* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_CONF_set_def_policy(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %policy, %struct.TS_resp_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %policy, null
  br i1 %cmp, label %if.end, label %if.end3

if.end:                                           ; preds = %entry
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0)) #5
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call fastcc void @ts_CONF_lookup_fail(i8* noundef %section, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0)) #6
  br label %err

if.end3:                                          ; preds = %entry, %if.end
  %policy.addr.020 = phi i8* [ %call, %if.end ], [ %policy, %entry ]
  %call4 = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef nonnull %policy.addr.020, i32 noundef 0) #5
  %cmp5 = icmp eq %struct.asn1_object_st* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  tail call fastcc void @ts_CONF_invalid(i8* noundef %section, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0)) #6
  br label %err

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @TS_RESP_CTX_set_def_policy(%struct.TS_resp_ctx* noundef %ctx, %struct.asn1_object_st* noundef nonnull %call4) #5
  %tobool.not = icmp ne i32 %call8, 0
  %spec.select = zext i1 %tobool.not to i32
  br label %err

err:                                              ; preds = %if.end7, %if.then6, %if.then2
  %ret.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then6 ], [ %spec.select, %if.end7 ]
  %policy_obj.0 = phi %struct.asn1_object_st* [ null, %if.then2 ], [ null, %if.then6 ], [ %call4, %if.end7 ]
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %policy_obj.0) #5
  ret i32 %ret.0
}

declare %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @TS_RESP_CTX_set_def_policy(%struct.TS_resp_ctx* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #1

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_CONF_set_policies(%struct.conf_st* noundef %conf, i8* noundef %section, %struct.TS_resp_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0)) #5
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef nonnull %call) #5
  %cmp = icmp eq %struct.stack_st_CONF_VALUE* %call1, null
  br i1 %cmp, label %err.sink.split, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %list.0 = phi %struct.stack_st_CONF_VALUE* [ %call1, %land.lhs.true ], [ null, %entry ]
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %list.0) #6
  %call345 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #5
  %cmp446 = icmp sgt i32 %call345, 0
  br i1 %cmp446, label %for.body, label %err

for.body:                                         ; preds = %if.end, %for.inc
  %i.047 = phi i32 [ %inc, %for.inc ], [ 0, %if.end ]
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.047) #5
  %value = getelementptr inbounds i8, i8* %call6, i64 16
  %0 = bitcast i8* %value to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !13
  %tobool7.not = icmp eq i8* %1, null
  br i1 %tobool7.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %for.body
  %name = getelementptr inbounds i8, i8* %call6, i64 8
  %2 = bitcast i8* %name to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !15
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi i8* [ %3, %cond.false ], [ %1, %for.body ]
  %call9 = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef %cond, i32 noundef 0) #5
  %cmp10 = icmp eq %struct.asn1_object_st* %call9, null
  br i1 %cmp10, label %err.sink.split, label %if.end12

if.end12:                                         ; preds = %cond.end
  %call13 = tail call i32 @TS_RESP_CTX_add_policy(%struct.TS_resp_ctx* noundef %ctx, %struct.asn1_object_st* noundef nonnull %call9) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %for.inc

for.inc:                                          ; preds = %if.end12
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef nonnull %call9) #5
  %inc = add nuw nsw i32 %i.047, 1
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #5
  %cmp4 = icmp slt i32 %inc, %call3
  br i1 %cmp4, label %for.body, label %err, !llvm.loop !16

err.sink.split:                                   ; preds = %cond.end, %land.lhs.true
  %list.1.ph = phi %struct.stack_st_CONF_VALUE* [ null, %land.lhs.true ], [ %list.0, %cond.end ]
  tail call fastcc void @ts_CONF_invalid(i8* noundef %section, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0)) #6
  br label %err

err:                                              ; preds = %for.inc, %if.end12, %err.sink.split, %if.end
  %list.1 = phi %struct.stack_st_CONF_VALUE* [ %list.0, %if.end ], [ %list.1.ph, %err.sink.split ], [ %list.0, %if.end12 ], [ %list.0, %for.inc ]
  %ret.0 = phi i32 [ 1, %if.end ], [ 0, %err.sink.split ], [ 1, %for.inc ], [ 0, %if.end12 ]
  %call19 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %list.1) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call19, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #5
  ret i32 %ret.0
}

declare %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @TS_RESP_CTX_add_policy(%struct.TS_resp_ctx* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509V3_conf_free(%struct.CONF_VALUE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_CONF_set_digests(%struct.conf_st* noundef %conf, i8* noundef %section, %struct.TS_resp_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @ts_CONF_lookup_fail(i8* noundef %section, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #6
  br label %err

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef nonnull %call) #5
  %cmp2 = icmp eq %struct.stack_st_CONF_VALUE* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call fastcc void @ts_CONF_invalid(i8* noundef %section, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #6
  br label %err

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call1) #6
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #5
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end4
  %call1154 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #5
  %cmp1255 = icmp sgt i32 %call1154, 0
  br i1 %cmp1255, label %for.body, label %err

if.then8:                                         ; preds = %if.end4
  tail call fastcc void @ts_CONF_invalid(i8* noundef %section, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #6
  br label %err

for.cond:                                         ; preds = %if.end19
  %call11 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #5
  %cmp12 = icmp slt i32 %inc, %call11
  br i1 %cmp12, label %for.body, label %err, !llvm.loop !17

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.056 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call14 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call5, i32 noundef %i.056) #5
  %value = getelementptr inbounds i8, i8* %call14, i64 16
  %0 = bitcast i8* %value to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !13
  %tobool.not = icmp eq i8* %1, null
  br i1 %tobool.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %for.body
  %name = getelementptr inbounds i8, i8* %call14, i64 8
  %2 = bitcast i8* %name to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !15
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi i8* [ %3, %cond.false ], [ %1, %for.body ]
  %call16 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %cond) #5
  %cmp17 = icmp eq %struct.evp_md_st* %call16, null
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %cond.end
  tail call fastcc void @ts_CONF_invalid(i8* noundef %section, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #6
  br label %err

if.end19:                                         ; preds = %cond.end
  %call20 = tail call i32 @TS_RESP_CTX_add_md(%struct.TS_resp_ctx* noundef %ctx, %struct.evp_md_st* noundef nonnull %call16) #5
  %tobool21.not = icmp eq i32 %call20, 0
  %inc = add nuw nsw i32 %i.056, 1
  br i1 %tobool21.not, label %err, label %for.cond

err:                                              ; preds = %for.cond, %if.end19, %for.cond.preheader, %if.then18, %if.then8, %if.then3, %if.then
  %list.0 = phi %struct.stack_st_CONF_VALUE* [ null, %if.then ], [ null, %if.then3 ], [ %call1, %if.then8 ], [ %call1, %if.then18 ], [ %call1, %for.cond.preheader ], [ %call1, %if.end19 ], [ %call1, %for.cond ]
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 0, %if.then8 ], [ 0, %if.then18 ], [ 1, %for.cond.preheader ], [ 1, %for.cond ], [ 0, %if.end19 ]
  %call26 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %list.0) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call26, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #5
  ret i32 %ret.0
}

declare i32 @TS_RESP_CTX_add_md(%struct.TS_resp_ctx* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_CONF_set_accuracy(%struct.conf_st* noundef %conf, i8* noundef %section, %struct.TS_resp_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)) #5
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef nonnull %call) #5
  %cmp = icmp eq %struct.stack_st_CONF_VALUE* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @ts_CONF_invalid(i8* noundef %section, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)) #6
  br label %err

if.end:                                           ; preds = %land.lhs.true, %entry
  %list.0 = phi %struct.stack_st_CONF_VALUE* [ %call1, %land.lhs.true ], [ null, %entry ]
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %list.0) #6
  %call390 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #5
  %cmp491 = icmp sgt i32 %call390, 0
  br i1 %cmp491, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.inc
  %micros.095 = phi i32 [ %micros.2.ph, %for.inc ], [ 0, %if.end ]
  %millis.094 = phi i32 [ %millis.2.ph, %for.inc ], [ 0, %if.end ]
  %secs.093 = phi i32 [ %secs.2.ph, %for.inc ], [ 0, %if.end ]
  %i.092 = phi i32 [ %inc, %for.inc ], [ 0, %if.end ]
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.092) #5
  %name = getelementptr inbounds i8, i8* %call6, i64 8
  %0 = bitcast i8* %name to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !15
  %call7 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #7
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body
  %value = getelementptr inbounds i8, i8* %call6, i64 16
  %2 = bitcast i8* %value to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !13
  %tobool10.not = icmp eq i8* %3, null
  br i1 %tobool10.not, label %for.inc, label %if.then11

if.then11:                                        ; preds = %if.then9
  %call13 = tail call i32 @atoi(i8* noundef %3) #7
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call16 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #7
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.else25

if.then18:                                        ; preds = %if.else
  %value19 = getelementptr inbounds i8, i8* %call6, i64 16
  %4 = bitcast i8* %value19 to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !13
  %tobool20.not = icmp eq i8* %5, null
  br i1 %tobool20.not, label %for.inc, label %if.then21

if.then21:                                        ; preds = %if.then18
  %call23 = tail call i32 @atoi(i8* noundef %5) #7
  br label %for.inc

if.else25:                                        ; preds = %if.else
  %call27 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #7
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %cleanup

if.then29:                                        ; preds = %if.else25
  %value30 = getelementptr inbounds i8, i8* %call6, i64 16
  %6 = bitcast i8* %value30 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !13
  %tobool31.not = icmp eq i8* %7, null
  br i1 %tobool31.not, label %for.inc, label %if.then32

if.then32:                                        ; preds = %if.then29
  %call34 = tail call i32 @atoi(i8* noundef %7) #7
  br label %for.inc

cleanup:                                          ; preds = %if.else25
  tail call fastcc void @ts_CONF_invalid(i8* noundef %section, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)) #6
  br label %err

for.inc:                                          ; preds = %if.then21, %if.then18, %if.then29, %if.then32, %if.then9, %if.then11
  %secs.2.ph = phi i32 [ %secs.093, %if.then29 ], [ %secs.093, %if.then32 ], [ %secs.093, %if.then18 ], [ %secs.093, %if.then21 ], [ %secs.093, %if.then9 ], [ %call13, %if.then11 ]
  %millis.2.ph = phi i32 [ %millis.094, %if.then29 ], [ %millis.094, %if.then32 ], [ %millis.094, %if.then18 ], [ %call23, %if.then21 ], [ %millis.094, %if.then9 ], [ %millis.094, %if.then11 ]
  %micros.2.ph = phi i32 [ %micros.095, %if.then29 ], [ %call34, %if.then32 ], [ %micros.095, %if.then18 ], [ %micros.095, %if.then21 ], [ %micros.095, %if.then9 ], [ %micros.095, %if.then11 ]
  %inc = add nuw nsw i32 %i.092, 1
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #5
  %cmp4 = icmp slt i32 %inc, %call3
  br i1 %cmp4, label %for.body, label %for.end, !llvm.loop !18

for.end:                                          ; preds = %for.inc, %if.end
  %secs.0.lcssa = phi i32 [ 0, %if.end ], [ %secs.2.ph, %for.inc ]
  %millis.0.lcssa = phi i32 [ 0, %if.end ], [ %millis.2.ph, %for.inc ]
  %micros.0.lcssa = phi i32 [ 0, %if.end ], [ %micros.2.ph, %for.inc ]
  %call40 = tail call i32 @TS_RESP_CTX_set_accuracy(%struct.TS_resp_ctx* noundef %ctx, i32 noundef %secs.0.lcssa, i32 noundef %millis.0.lcssa, i32 noundef %micros.0.lcssa) #5
  %tobool41.not = icmp ne i32 %call40, 0
  %spec.select = zext i1 %tobool41.not to i32
  br label %err

err:                                              ; preds = %cleanup, %for.end, %if.then
  %list.1 = phi %struct.stack_st_CONF_VALUE* [ null, %if.then ], [ %list.0, %cleanup ], [ %list.0, %for.end ]
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %cleanup ], [ %spec.select, %for.end ]
  %call44 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %list.1) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call44, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #5
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare i32 @atoi(i8* noundef nonnull) local_unnamed_addr #4

declare i32 @TS_RESP_CTX_set_accuracy(%struct.TS_resp_ctx* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_CONF_set_clock_precision_digits(%struct.conf_st* noundef %conf, i8* noundef %section, %struct.TS_resp_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @_CONF_get_number(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0)) #5
  %0 = icmp ugt i64 %call, 6
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @ts_CONF_invalid(i8* noundef %section, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0)) #6
  br label %err

if.end:                                           ; preds = %entry
  %conv = trunc i64 %call to i32
  %call2 = tail call i32 @TS_RESP_CTX_set_clock_precision_digits(%struct.TS_resp_ctx* noundef %ctx, i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end, %if.then
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i64 @_CONF_get_number(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @TS_RESP_CTX_set_clock_precision_digits(%struct.TS_resp_ctx* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_CONF_set_ordering(%struct.conf_st* noundef %conf, i8* noundef %section, %struct.TS_resp_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ts_CONF_add_flag(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 noundef 2, %struct.TS_resp_ctx* noundef %ctx) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ts_CONF_add_flag(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %field, i32 noundef %flag, %struct.TS_resp_ctx* noundef %ctx) unnamed_addr #0 {
entry:
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %field) #5
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @strcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0)) #7
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  tail call void @TS_RESP_CTX_add_flags(%struct.TS_resp_ctx* noundef %ctx, i32 noundef %flag) #5
  br label %cleanup

if.else:                                          ; preds = %if.then
  %call3 = tail call i32 @strcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0)) #7
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.else
  tail call fastcc void @ts_CONF_invalid(i8* noundef %section, i8* noundef %field) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else, %if.then2, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 1, %if.then2 ], [ 1, %if.else ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_CONF_set_tsa_name(%struct.conf_st* noundef %conf, i8* noundef %section, %struct.TS_resp_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ts_CONF_add_flag(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 noundef 1, %struct.TS_resp_ctx* noundef %ctx) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_CONF_set_ess_cert_id_chain(%struct.conf_st* noundef %conf, i8* noundef %section, %struct.TS_resp_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ts_CONF_add_flag(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 4, %struct.TS_resp_ctx* noundef %ctx) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_CONF_set_ess_cert_id_digest(%struct.conf_st* noundef %conf, i8* noundef %section, %struct.TS_resp_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0)) #5
  %cmp = icmp eq i8* %call, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* %call
  %call1 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %spec.store.select) #5
  %cmp2 = icmp eq %struct.evp_md_st* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %entry
  tail call fastcc void @ts_CONF_invalid(i8* noundef %section, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0)) #6
  br label %err

if.end4:                                          ; preds = %entry
  %call5 = tail call i32 @TS_RESP_CTX_set_ess_cert_id_digest(%struct.TS_resp_ctx* noundef %ctx, %struct.evp_md_st* noundef nonnull %call1) #5
  %tobool.not = icmp ne i32 %call5, 0
  %spec.select = zext i1 %tobool.not to i32
  br label %err

err:                                              ; preds = %if.end4, %if.then3
  %ret.0 = phi i32 [ 0, %if.then3 ], [ %spec.select, %if.end4 ]
  ret i32 %ret.0
}

declare i32 @TS_RESP_CTX_set_ess_cert_id_digest(%struct.TS_resp_ctx* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #1

declare void @TS_RESP_CTX_add_flags(%struct.TS_resp_ctx* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"X509_info_st", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24, !10, i64 48, !6, i64 56}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"evp_cipher_info_st", !6, i64 0, !7, i64 8}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !6, i64 16}
!14 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!15 = !{!14, !6, i64 8}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}

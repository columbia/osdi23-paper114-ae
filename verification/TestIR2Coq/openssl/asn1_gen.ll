; ModuleID = 'crypto/asn1/asn1_gen.c'
source_filename = "crypto/asn1/asn1_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tag_name_st = type { i8*, i32, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.bio_st = type opaque
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.x509_st = type opaque
%struct.X509_req_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.evp_pkey_st = type opaque
%struct.tag_exp_arg = type { i32, i32, i32, i32, i8*, [20 x %struct.tag_exp_type], i32 }
%struct.tag_exp_type = type { i32, i32, i32, i32, i64 }
%struct.stack_st = type opaque
%struct.stack_st_ASN1_TYPE = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.CONF_VALUE = type { i8*, i8*, i8* }
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.ASN1_ITEM_st = type opaque
%struct.asn1_object_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/asn1_gen.c\00", align 1
@__func__.ASN1_generate_v3 = private unnamed_addr constant [17 x i8] c"ASN1_generate_v3\00", align 1
@__func__.asn1_cb = private unnamed_addr constant [8 x i8] c"asn1_cb\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tag=%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"HEX\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"BITLIST\00", align 1
@asn1_str2tag.tntmp = internal unnamed_addr global %struct.tag_name_st* null, align 8
@asn1_str2tag.tnst = internal constant [49 x %struct.tag_name_st] [%struct.tag_name_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 4, i32 1 }, %struct.tag_name_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 7, i32 1 }, %struct.tag_name_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 4, i32 5 }, %struct.tag_name_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 3, i32 2 }, %struct.tag_name_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 7, i32 2 }, %struct.tag_name_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 4, i32 10 }, %struct.tag_name_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 10, i32 10 }, %struct.tag_name_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 3, i32 6 }, %struct.tag_name_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 6, i32 6 }, %struct.tag_name_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 7, i32 23 }, %struct.tag_name_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 3, i32 23 }, %struct.tag_name_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i32 15, i32 24 }, %struct.tag_name_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 7, i32 24 }, %struct.tag_name_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 3, i32 4 }, %struct.tag_name_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 11, i32 4 }, %struct.tag_name_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 6, i32 3 }, %struct.tag_name_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 9, i32 3 }, %struct.tag_name_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i32 15, i32 28 }, %struct.tag_name_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 4, i32 28 }, %struct.tag_name_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 3, i32 22 }, %struct.tag_name_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 9, i32 22 }, %struct.tag_name_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 4, i32 12 }, %struct.tag_name_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 10, i32 12 }, %struct.tag_name_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 3, i32 30 }, %struct.tag_name_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i32 9, i32 30 }, %struct.tag_name_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 13, i32 26 }, %struct.tag_name_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i32 7, i32 26 }, %struct.tag_name_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i32 15, i32 19 }, %struct.tag_name_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 9, i32 19 }, %struct.tag_name_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i32 3, i32 20 }, %struct.tag_name_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 9, i32 20 }, %struct.tag_name_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i32 13, i32 20 }, %struct.tag_name_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i32 13, i32 27 }, %struct.tag_name_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 6, i32 27 }, %struct.tag_name_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 7, i32 18 }, %struct.tag_name_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i32 13, i32 18 }, %struct.tag_name_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 8, i32 16 }, %struct.tag_name_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i32 3, i32 16 }, %struct.tag_name_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 3, i32 17 }, %struct.tag_name_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i32 3, i32 65538 }, %struct.tag_name_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 8, i32 65538 }, %struct.tag_name_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i32 3, i32 65537 }, %struct.tag_name_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 8, i32 65537 }, %struct.tag_name_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32 7, i32 65541 }, %struct.tag_name_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i32 7, i32 65542 }, %struct.tag_name_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i32 7, i32 65543 }, %struct.tag_name_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 7, i32 65540 }, %struct.tag_name_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 4, i32 65544 }, %struct.tag_name_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 6, i32 65544 }], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"BOOL\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"ENUM\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"ENUMERATED\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"OID\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"UTCTIME\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"UTC\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"GENERALIZEDTIME\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"GENTIME\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"OCT\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"OCTETSTRING\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"BITSTR\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"BITSTRING\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"UNIVERSALSTRING\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"UNIV\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"IA5\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"IA5STRING\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"UTF8String\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"BMP\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"BMPSTRING\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"VISIBLESTRING\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"VISIBLE\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"PRINTABLESTRING\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"PRINTABLE\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"T61\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"T61STRING\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"TELETEXSTRING\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"GeneralString\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"GENSTR\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"NUMERIC\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"NUMERICSTRING\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"SEQUENCE\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"SEQ\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"EXP\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"EXPLICIT\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"IMP\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"IMPLICIT\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"OCTWRAP\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"SEQWRAP\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"SETWRAP\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"BITWRAP\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"FORM\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"FORMAT\00", align 1
@__func__.parse_tagging = private unnamed_addr constant [14 x i8] c"parse_tagging\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"Char=%c\00", align 1
@__func__.append_exp = private unnamed_addr constant [11 x i8] c"append_exp\00", align 1
@__func__.asn1_str2type = private unnamed_addr constant [14 x i8] c"asn1_str2type\00", align 1
@.str.55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"string=\00", align 1
@__func__.bitstr_cb = private unnamed_addr constant [10 x i8] c"bitstr_cb\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_type_st* @ASN1_generate_nconf(i8* noundef %str, %struct.conf_st* noundef %nconf) local_unnamed_addr #0 {
entry:
  %cnf = alloca %struct.v3_ext_ctx, align 8
  %0 = bitcast %struct.v3_ext_ctx* %cnf to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7
  %tobool.not = icmp eq %struct.conf_st* %nconf, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.asn1_type_st* @ASN1_generate_v3(i8* noundef %str, %struct.v3_ext_ctx* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @X509V3_set_nconf(%struct.v3_ext_ctx* noundef nonnull %cnf, %struct.conf_st* noundef nonnull %nconf) #9
  %call1 = call %struct.asn1_type_st* @ASN1_generate_v3(i8* noundef %str, %struct.v3_ext_ctx* noundef nonnull %cnf) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.asn1_type_st* [ %call1, %if.end ], [ %call, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7
  ret %struct.asn1_type_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_type_st* @ASN1_generate_v3(i8* noundef %str, %struct.v3_ext_ctx* noundef %cnf) local_unnamed_addr #0 {
entry:
  %err = alloca i32, align 4
  %0 = bitcast i32* %err to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 0, i32* %err, align 4, !tbaa !4
  %call = call fastcc %struct.asn1_type_st* @generate_v3(i8* noundef %str, %struct.v3_ext_ctx* noundef %cnf, i32 noundef 0, i32* noundef nonnull %err) #8
  %1 = load i32, i32* %err, align 4, !tbaa !4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ASN1_generate_v3, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef %1, i8* noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret %struct.asn1_type_st* %call
}

declare void @X509V3_set_nconf(%struct.v3_ext_ctx* noundef, %struct.conf_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_type_st* @generate_v3(i8* noundef %str, %struct.v3_ext_ctx* noundef %cnf, i32 noundef %depth, i32* nocapture noundef writeonly %perr) unnamed_addr #0 {
entry:
  %asn1_tags = alloca %struct.tag_exp_arg, align 8
  %orig_der = alloca i8*, align 8
  %cpy_start = alloca i8*, align 8
  %p = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %hdr_len = alloca i64, align 8
  %hdr_tag = alloca i32, align 4
  %hdr_class = alloca i32, align 4
  %0 = bitcast %struct.tag_exp_arg* %asn1_tags to i8*
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %0) #7
  %1 = bitcast i8** %orig_der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store i8* null, i8** %orig_der, align 8, !tbaa !8
  %2 = bitcast i8** %cpy_start to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  %4 = bitcast i8** %cp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7
  %5 = bitcast i64* %hdr_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7
  store i64 0, i64* %hdr_len, align 8, !tbaa !10
  %6 = bitcast i32* %hdr_tag to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #7
  %7 = bitcast i32* %hdr_class to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #7
  %imp_tag = getelementptr inbounds %struct.tag_exp_arg, %struct.tag_exp_arg* %asn1_tags, i64 0, i32 0
  store i32 -1, i32* %imp_tag, align 8, !tbaa !12
  %imp_class = getelementptr inbounds %struct.tag_exp_arg, %struct.tag_exp_arg* %asn1_tags, i64 0, i32 1
  store i32 -1, i32* %imp_class, align 4, !tbaa !14
  %format = getelementptr inbounds %struct.tag_exp_arg, %struct.tag_exp_arg* %asn1_tags, i64 0, i32 3
  store i32 1, i32* %format, align 4, !tbaa !15
  %exp_count = getelementptr inbounds %struct.tag_exp_arg, %struct.tag_exp_arg* %asn1_tags, i64 0, i32 6
  store i32 0, i32* %exp_count, align 8, !tbaa !16
  %call = call i32 @CONF_parse_list(i8* noundef %str, i32 noundef 44, i32 noundef 1, i32 (i8*, i32, i8*)* noundef nonnull @asn1_cb, i8* noundef nonnull %0) #9
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 194, i32* %perr, align 4, !tbaa !4
  br label %cleanup

if.end:                                           ; preds = %entry
  %utype = getelementptr inbounds %struct.tag_exp_arg, %struct.tag_exp_arg* %asn1_tags, i64 0, i32 2
  %8 = load i32, i32* %utype, align 8, !tbaa !17
  %9 = and i32 %8, -2
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %tobool.not = icmp eq %struct.v3_ext_ctx* %cnf, null
  br i1 %tobool.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then4
  store i32 192, i32* %perr, align 4, !tbaa !4
  br label %cleanup

if.end6:                                          ; preds = %if.then4
  %cmp7 = icmp sgt i32 %depth, 49
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i32 181, i32* %perr, align 4, !tbaa !4
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %str11 = getelementptr inbounds %struct.tag_exp_arg, %struct.tag_exp_arg* %asn1_tags, i64 0, i32 4
  %11 = load i8*, i8** %str11, align 8, !tbaa !18
  %call12 = call fastcc %struct.asn1_type_st* @asn1_multi(i32 noundef %8, i8* noundef %11, %struct.v3_ext_ctx* noundef nonnull %cnf, i32 noundef %depth, i32* noundef %perr) #8
  br label %if.end17

if.else:                                          ; preds = %if.end
  %str13 = getelementptr inbounds %struct.tag_exp_arg, %struct.tag_exp_arg* %asn1_tags, i64 0, i32 4
  %12 = load i8*, i8** %str13, align 8, !tbaa !18
  %13 = load i32, i32* %format, align 4, !tbaa !15
  %call16 = call fastcc %struct.asn1_type_st* @asn1_str2type(i8* noundef %12, i32 noundef %13, i32 noundef %8) #8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end9
  %ret.0 = phi %struct.asn1_type_st* [ %call12, %if.end9 ], [ %call16, %if.else ]
  %tobool18.not = icmp eq %struct.asn1_type_st* %ret.0, null
  br i1 %tobool18.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end17
  %14 = load i32, i32* %imp_tag, align 8, !tbaa !12
  %cmp22 = icmp eq i32 %14, -1
  %15 = load i32, i32* %exp_count, align 8
  %cmp24 = icmp eq i32 %15, 0
  %or.cond120 = select i1 %cmp22, i1 %cmp24, i1 false
  br i1 %or.cond120, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end20
  %call27 = call i32 @i2d_ASN1_TYPE(%struct.asn1_type_st* noundef nonnull %ret.0, i8** noundef nonnull %orig_der) #9
  call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef nonnull %ret.0) #9
  %16 = load i8*, i8** %orig_der, align 8, !tbaa !8
  store i8* %16, i8** %cpy_start, align 8, !tbaa !8
  %17 = load i32, i32* %imp_tag, align 8, !tbaa !12
  %cmp29.not = icmp eq i32 %17, -1
  br i1 %cmp29.not, label %if.end47, label %if.then30

if.then30:                                        ; preds = %if.end26
  %conv = sext i32 %call27 to i64
  %call31 = call i32 @ASN1_get_object(i8** noundef nonnull %cpy_start, i64* noundef nonnull %hdr_len, i32* noundef nonnull %hdr_tag, i32* noundef nonnull %hdr_class, i64 noundef %conv) #9
  %and = and i32 %call31, 128
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.end34, label %err

if.end34:                                         ; preds = %if.then30
  %18 = load i8*, i8** %cpy_start, align 8, !tbaa !8
  %19 = load i8*, i8** %orig_der, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %20 = trunc i64 %sub.ptr.sub.neg to i32
  %conv36 = add i32 %call27, %20
  %and37 = and i32 %call31, 1
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else40, label %if.then39

if.then39:                                        ; preds = %if.end34
  store i64 0, i64* %hdr_len, align 8, !tbaa !10
  br label %if.end42

if.else40:                                        ; preds = %if.end34
  %and41 = and i32 %call31, 32
  %.pre = load i64, i64* %hdr_len, align 8, !tbaa !10
  %phi.cast = trunc i64 %.pre to i32
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then39
  %21 = phi i32 [ 0, %if.then39 ], [ %phi.cast, %if.else40 ]
  %hdr_constructed.0 = phi i32 [ 2, %if.then39 ], [ %and41, %if.else40 ]
  %22 = load i32, i32* %imp_tag, align 8, !tbaa !12
  %call45 = call i32 @ASN1_object_size(i32 noundef 0, i32 noundef %21, i32 noundef %22) #9
  br label %if.end47

if.end47:                                         ; preds = %if.end26, %if.end42
  %len.0 = phi i32 [ %call45, %if.end42 ], [ %call27, %if.end26 ]
  %cpy_len.0 = phi i32 [ %conv36, %if.end42 ], [ %call27, %if.end26 ]
  %hdr_constructed.1 = phi i32 [ %hdr_constructed.0, %if.end42 ], [ 0, %if.end26 ]
  %arraydecay = getelementptr inbounds %struct.tag_exp_arg, %struct.tag_exp_arg* %asn1_tags, i64 0, i32 5, i64 0
  %23 = load i32, i32* %exp_count, align 8, !tbaa !16
  %cmp51166 = icmp sgt i32 %23, 0
  br i1 %cmp51166, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end47
  %idx.ext174 = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds %struct.tag_exp_arg, %struct.tag_exp_arg* %asn1_tags, i64 0, i32 5, i64 %idx.ext174
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %len.1169 = phi i32 [ %call54, %for.body ], [ %len.0, %for.body.preheader ]
  %i.0168 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %add.ptr.pn167 = phi %struct.tag_exp_type* [ %etmp.0170, %for.body ], [ %add.ptr, %for.body.preheader ]
  %etmp.0170 = getelementptr inbounds %struct.tag_exp_type, %struct.tag_exp_type* %add.ptr.pn167, i64 -1
  %exp_pad = getelementptr inbounds %struct.tag_exp_type, %struct.tag_exp_type* %add.ptr.pn167, i64 -1, i32 3
  %24 = load i32, i32* %exp_pad, align 4, !tbaa !19
  %add = add nsw i32 %24, %len.1169
  %conv53 = sext i32 %add to i64
  %exp_len = getelementptr inbounds %struct.tag_exp_type, %struct.tag_exp_type* %add.ptr.pn167, i64 -1, i32 4
  store i64 %conv53, i64* %exp_len, align 8, !tbaa !21
  %exp_tag = getelementptr inbounds %struct.tag_exp_type, %struct.tag_exp_type* %etmp.0170, i64 0, i32 0
  %25 = load i32, i32* %exp_tag, align 8, !tbaa !22
  %call54 = call i32 @ASN1_object_size(i32 noundef 0, i32 noundef %add, i32 noundef %25) #9
  %inc = add nuw nsw i32 %i.0168, 1
  %26 = load i32, i32* %exp_count, align 8, !tbaa !16
  %cmp51 = icmp slt i32 %inc, %26
  br i1 %cmp51, label %for.body, label %for.end, !llvm.loop !23

for.end:                                          ; preds = %for.body, %if.end47
  %len.1.lcssa = phi i32 [ %len.0, %if.end47 ], [ %call54, %for.body ]
  %conv55 = sext i32 %len.1.lcssa to i64
  %call56 = call i8* @CRYPTO_malloc(i64 noundef %conv55, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 196) #9
  %cmp57 = icmp eq i8* %call56, null
  br i1 %cmp57, label %err, label %if.end60

if.end60:                                         ; preds = %for.end
  store i8* %call56, i8** %p, align 8, !tbaa !8
  %27 = load i32, i32* %exp_count, align 8, !tbaa !16
  %cmp65171 = icmp sgt i32 %27, 0
  br i1 %cmp65171, label %for.body67, label %for.end79

for.body67:                                       ; preds = %if.end60, %for.inc76
  %i.1173 = phi i32 [ %inc77, %for.inc76 ], [ 0, %if.end60 ]
  %etmp.1172 = phi %struct.tag_exp_type* [ %incdec.ptr78, %for.inc76 ], [ %arraydecay, %if.end60 ]
  %exp_constructed = getelementptr inbounds %struct.tag_exp_type, %struct.tag_exp_type* %etmp.1172, i64 0, i32 2
  %28 = load i32, i32* %exp_constructed, align 8, !tbaa !25
  %exp_len68 = getelementptr inbounds %struct.tag_exp_type, %struct.tag_exp_type* %etmp.1172, i64 0, i32 4
  %29 = load i64, i64* %exp_len68, align 8, !tbaa !21
  %conv69 = trunc i64 %29 to i32
  %exp_tag70 = getelementptr inbounds %struct.tag_exp_type, %struct.tag_exp_type* %etmp.1172, i64 0, i32 0
  %30 = load i32, i32* %exp_tag70, align 8, !tbaa !22
  %exp_class = getelementptr inbounds %struct.tag_exp_type, %struct.tag_exp_type* %etmp.1172, i64 0, i32 1
  %31 = load i32, i32* %exp_class, align 4, !tbaa !26
  call void @ASN1_put_object(i8** noundef nonnull %p, i32 noundef %28, i32 noundef %conv69, i32 noundef %30, i32 noundef %31) #9
  %exp_pad71 = getelementptr inbounds %struct.tag_exp_type, %struct.tag_exp_type* %etmp.1172, i64 0, i32 3
  %32 = load i32, i32* %exp_pad71, align 4, !tbaa !19
  %tobool72.not = icmp eq i32 %32, 0
  br i1 %tobool72.not, label %for.inc76, label %if.then73

if.then73:                                        ; preds = %for.body67
  %33 = load i8*, i8** %p, align 8, !tbaa !8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %incdec.ptr74, i8** %p, align 8, !tbaa !8
  store i8 0, i8* %33, align 1, !tbaa !27
  br label %for.inc76

for.inc76:                                        ; preds = %for.body67, %if.then73
  %inc77 = add nuw nsw i32 %i.1173, 1
  %incdec.ptr78 = getelementptr inbounds %struct.tag_exp_type, %struct.tag_exp_type* %etmp.1172, i64 1
  %34 = load i32, i32* %exp_count, align 8, !tbaa !16
  %cmp65 = icmp slt i32 %inc77, %34
  br i1 %cmp65, label %for.body67, label %for.end79, !llvm.loop !28

for.end79:                                        ; preds = %for.inc76, %if.end60
  %35 = load i32, i32* %imp_tag, align 8, !tbaa !12
  %cmp81.not = icmp eq i32 %35, -1
  br i1 %cmp81.not, label %if.end100, label %if.then83

if.then83:                                        ; preds = %for.end79
  %36 = load i32, i32* %imp_class, align 4, !tbaa !14
  %cmp85 = icmp eq i32 %36, 0
  %37 = and i32 %35, -2
  %38 = icmp eq i32 %37, 16
  %or.cond = select i1 %cmp85, i1 %38, i1 false
  %hdr_constructed.2 = select i1 %or.cond, i32 32, i32 %hdr_constructed.1
  %39 = load i64, i64* %hdr_len, align 8, !tbaa !10
  %conv97 = trunc i64 %39 to i32
  call void @ASN1_put_object(i8** noundef nonnull %p, i32 noundef %hdr_constructed.2, i32 noundef %conv97, i32 noundef %35, i32 noundef %36) #9
  br label %if.end100

if.end100:                                        ; preds = %if.then83, %for.end79
  %40 = load i8*, i8** %p, align 8, !tbaa !8
  %41 = load i8*, i8** %cpy_start, align 8, !tbaa !8
  %conv101 = sext i32 %cpy_len.0 to i64
  %call102 = call i8* @memcpy(i8* noundef %40, i8* noundef %41, i64 noundef %conv101) #9
  store i8* %call56, i8** %cp, align 8, !tbaa !8
  %call104 = call %struct.asn1_type_st* @d2i_ASN1_TYPE(%struct.asn1_type_st** noundef null, i8** noundef nonnull %cp, i64 noundef %conv55) #9
  br label %err

err:                                              ; preds = %for.end, %if.then30, %if.end100
  %ret.1 = phi %struct.asn1_type_st* [ null, %if.then30 ], [ null, %for.end ], [ %call104, %if.end100 ]
  %new_der.0 = phi i8* [ null, %if.then30 ], [ null, %for.end ], [ %call56, %if.end100 ]
  %42 = load i8*, i8** %orig_der, align 8, !tbaa !8
  call void @CRYPTO_free(i8* noundef %42, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 234) #9
  call void @CRYPTO_free(i8* noundef %new_der.0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 235) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end17, %err, %if.then8, %if.then5, %if.then
  %retval.0 = phi %struct.asn1_type_st* [ null, %if.then ], [ null, %if.then8 ], [ %ret.1, %err ], [ null, %if.then5 ], [ null, %if.end17 ], [ %ret.0, %if.end20 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %0) #7
  ret %struct.asn1_type_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_str2mask(i8* noundef %str, i64* noundef %pmask) local_unnamed_addr #0 {
entry:
  store i64 0, i64* %pmask, align 8, !tbaa !10
  %0 = bitcast i64* %pmask to i8*
  %call = tail call i32 @CONF_parse_list(i8* noundef %str, i32 noundef 124, i32 noundef 1, i32 (i8*, i32, i8*)* noundef nonnull @mask_cb, i8* noundef nonnull %0) #9
  ret i32 %call
}

declare i32 @CONF_parse_list(i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @mask_cb(i8* noundef %elem, i32 noundef %len, i8* nocapture noundef %arg) #0 {
entry:
  %0 = bitcast i8* %arg to i64*
  %cmp = icmp eq i8* %elem, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %len, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @strncmp(i8* noundef nonnull %elem, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i64 noundef 3) #10
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %cleanup.sink.split, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %call5 = tail call fastcc i32 @asn1_str2tag(i8* noundef nonnull %elem, i32 noundef %len) #8
  %tobool.not = icmp ne i32 %call5, 0
  %and = and i32 %call5, 65536
  %tobool6.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool.not, %tobool6.not
  br i1 %or.cond, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i64 @ASN1_tag2bit(i32 noundef %call5) #9
  %tobool10.not = icmp eq i64 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8, %land.lhs.true
  %call9.sink = phi i64 [ 10502, %land.lhs.true ], [ %call9, %if.end8 ]
  %1 = load i64, i64* %0, align 8, !tbaa !10
  %or13 = or i64 %1, %call9.sink
  store i64 %or13, i64* %0, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8, %if.end4, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end4 ], [ 0, %if.end8 ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @asn1_cb(i8* noundef %elem, i32 noundef %len, i8* nocapture noundef %bitstr) #0 {
entry:
  %tmp_tag = alloca i32, align 4
  %tmp_class = alloca i32, align 4
  %0 = bitcast i8* %bitstr to %struct.tag_exp_arg*
  %1 = bitcast i32* %tmp_tag to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  %2 = bitcast i32* %tmp_class to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  %cmp = icmp eq i8* %elem, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp1146 = icmp sgt i32 %len, 0
  br i1 %cmp1146, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %p.0148 = phi i8* [ %add.ptr, %for.inc ], [ %elem, %for.cond.preheader ]
  %i.0147 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %3 = load i8, i8* %p.0148, align 1, !tbaa !27
  %cmp2 = icmp eq i8 %3, 58
  %add.ptr = getelementptr inbounds i8, i8* %p.0148, i64 1
  br i1 %cmp2, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %elem to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %4 = trunc i64 %sub.ptr.sub.neg to i32
  %conv6 = add i32 %4, %len
  %sub.ptr.lhs.cast7 = ptrtoint i8* %p.0148 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast
  %conv10 = trunc i64 %sub.ptr.sub9 to i32
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0147, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !29

for.end:                                          ; preds = %for.inc, %for.cond.preheader, %if.then4
  %len.addr.0 = phi i32 [ %conv10, %if.then4 ], [ %len, %for.cond.preheader ], [ %len, %for.inc ]
  %vlen.0 = phi i32 [ %conv6, %if.then4 ], [ 0, %for.cond.preheader ], [ 0, %for.inc ]
  %vstart.0 = phi i8* [ %add.ptr, %if.then4 ], [ null, %for.cond.preheader ], [ null, %for.inc ]
  %call = tail call fastcc i32 @asn1_str2tag(i8* noundef nonnull %elem, i32 noundef %len.addr.0) #8
  %cmp12 = icmp eq i32 %call, -1
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.asn1_cb, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 194, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %elem) #9
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %and = and i32 %call, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then16, label %if.end23

if.then16:                                        ; preds = %if.end15
  %utype17 = getelementptr inbounds i8, i8* %bitstr, i64 8
  %5 = bitcast i8* %utype17 to i32*
  store i32 %call, i32* %5, align 8, !tbaa !17
  %str = getelementptr inbounds i8, i8* %bitstr, i64 16
  %6 = bitcast i8* %str to i8**
  store i8* %vstart.0, i8** %6, align 8, !tbaa !18
  %tobool18.not = icmp eq i8* %vstart.0, null
  br i1 %tobool18.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.then16
  %idxprom = sext i32 %len.addr.0 to i64
  %arrayidx = getelementptr inbounds i8, i8* %elem, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %tobool20.not = icmp eq i8 %7, 0
  br i1 %tobool20.not, label %cleanup, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.asn1_cb, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 189, i8* noundef null) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  switch i32 %call, label %sw.epilog [
    i32 65537, label %sw.bb
    i32 65538, label %sw.bb33
    i32 65542, label %sw.bb42
    i32 65543, label %sw.bb47
    i32 65540, label %sw.bb52
    i32 65541, label %sw.bb57
    i32 65544, label %sw.bb62
  ]

sw.bb:                                            ; preds = %if.end23
  %imp_tag = bitcast i8* %bitstr to i32*
  %8 = load i32, i32* %imp_tag, align 8, !tbaa !12
  %cmp24.not = icmp eq i32 %8, -1
  br i1 %cmp24.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %sw.bb
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.asn1_cb, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 181, i8* noundef null) #9
  br label %cleanup

if.end27:                                         ; preds = %sw.bb
  %imp_class = getelementptr inbounds i8, i8* %bitstr, i64 4
  %9 = bitcast i8* %imp_class to i32*
  %call29 = tail call fastcc i32 @parse_tagging(i8* noundef %vstart.0, i32 noundef %vlen.0, i32* noundef nonnull %imp_tag, i32* noundef nonnull %9) #8
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup, label %sw.epilog

sw.bb33:                                          ; preds = %if.end23
  %call34 = call fastcc i32 @parse_tagging(i8* noundef %vstart.0, i32 noundef %vlen.0, i32* noundef nonnull %tmp_tag, i32* noundef nonnull %tmp_class) #8
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup, label %if.end37

if.end37:                                         ; preds = %sw.bb33
  %10 = load i32, i32* %tmp_tag, align 4, !tbaa !4
  %11 = load i32, i32* %tmp_class, align 4, !tbaa !4
  %call38 = tail call fastcc i32 @append_exp(%struct.tag_exp_arg* noundef %0, i32 noundef %10, i32 noundef %11, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %sw.epilog

sw.bb42:                                          ; preds = %if.end23
  %call43 = tail call fastcc i32 @append_exp(%struct.tag_exp_arg* noundef %0, i32 noundef 16, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1) #8
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %cleanup, label %sw.epilog

sw.bb47:                                          ; preds = %if.end23
  %call48 = tail call fastcc i32 @append_exp(%struct.tag_exp_arg* noundef %0, i32 noundef 17, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1) #8
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %cleanup, label %sw.epilog

sw.bb52:                                          ; preds = %if.end23
  %call53 = tail call fastcc i32 @append_exp(%struct.tag_exp_arg* noundef %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1) #8
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %cleanup, label %sw.epilog

sw.bb57:                                          ; preds = %if.end23
  %call58 = tail call fastcc i32 @append_exp(%struct.tag_exp_arg* noundef %0, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1) #8
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %cleanup, label %sw.epilog

sw.bb62:                                          ; preds = %if.end23
  %tobool63.not = icmp eq i8* %vstart.0, null
  br i1 %tobool63.not, label %if.then64, label %if.end65

if.then64:                                        ; preds = %sw.bb62
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 325, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.asn1_cb, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 160, i8* noundef null) #9
  br label %cleanup

if.end65:                                         ; preds = %sw.bb62
  %call66 = tail call i32 @strncmp(i8* noundef nonnull %vstart.0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 noundef 5) #10
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %sw.epilog.sink.split, label %if.else

if.else:                                          ; preds = %if.end65
  %call70 = tail call i32 @strncmp(i8* noundef nonnull %vstart.0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef 4) #10
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %sw.epilog.sink.split, label %if.else75

if.else75:                                        ; preds = %if.else
  %call76 = tail call i32 @strncmp(i8* noundef nonnull %vstart.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 noundef 3) #10
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %sw.epilog.sink.split, label %if.else81

if.else81:                                        ; preds = %if.else75
  %call82 = tail call i32 @strncmp(i8* noundef nonnull %vstart.0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 noundef 7) #10
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %sw.epilog.sink.split, label %if.else87

if.else87:                                        ; preds = %if.else81
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 337, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.asn1_cb, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 160, i8* noundef null) #9
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %if.else81, %if.else75, %if.else, %if.end65
  %.sink = phi i32 [ 1, %if.end65 ], [ 2, %if.else ], [ 3, %if.else75 ], [ 4, %if.else81 ]
  %format = getelementptr inbounds i8, i8* %bitstr, i64 12
  %12 = bitcast i8* %format to i32*
  store i32 %.sink, i32* %12, align 4, !tbaa !15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb57, %sw.bb52, %sw.bb47, %sw.bb42, %if.end37, %if.end27, %if.end23
  br label %cleanup

cleanup:                                          ; preds = %sw.bb57, %sw.bb52, %sw.bb47, %sw.bb42, %if.end37, %sw.bb33, %if.end27, %if.then16, %land.lhs.true, %entry, %sw.epilog, %if.else87, %if.then64, %if.then26, %if.then21, %if.then14
  %retval.0 = phi i32 [ -1, %if.then14 ], [ 1, %sw.epilog ], [ -1, %if.else87 ], [ -1, %if.then64 ], [ -1, %if.then26 ], [ -1, %if.then21 ], [ -1, %entry ], [ 0, %land.lhs.true ], [ 0, %if.then16 ], [ -1, %if.end27 ], [ -1, %sw.bb33 ], [ -1, %if.end37 ], [ -1, %sw.bb42 ], [ -1, %sw.bb47 ], [ -1, %sw.bb52 ], [ -1, %sw.bb57 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_type_st* @asn1_multi(i32 noundef %utype, i8* noundef %section, %struct.v3_ext_ctx* noundef %cnf, i32 noundef %depth, i32* nocapture noundef writeonly %perr) unnamed_addr #0 {
entry:
  %der = alloca i8*, align 8
  %0 = bitcast i8** %der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i8* null, i8** %der, align 8, !tbaa !8
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_ASN1_TYPE*
  %tobool.not = icmp eq %struct.stack_st* %call, null
  br i1 %tobool.not, label %bad, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i8* %section, null
  br i1 %tobool1.not, label %if.end24, label %if.then2

if.then2:                                         ; preds = %if.end
  %tobool3.not = icmp eq %struct.v3_ext_ctx* %cnf, null
  br i1 %tobool3.not, label %bad, label %if.end5

if.end5:                                          ; preds = %if.then2
  %call6 = tail call %struct.stack_st_CONF_VALUE* @X509V3_get_section(%struct.v3_ext_ctx* noundef nonnull %cnf, i8* noundef nonnull %section) #9
  %tobool7.not = icmp eq %struct.stack_st_CONF_VALUE* %call6, null
  br i1 %tobool7.not, label %bad, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end5
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call6) #8
  %call1184 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call10) #9
  %cmp85 = icmp sgt i32 %call1184, 0
  br i1 %cmp85, label %for.body.lr.ph, label %if.end24

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add = add nsw i32 %depth, 1
  br label %for.body

for.cond:                                         ; preds = %if.end17
  %call11 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call10) #9
  %cmp = icmp slt i32 %inc, %call11
  br i1 %cmp, label %for.body, label %if.end24, !llvm.loop !30

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %call13 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call10, i32 noundef %i.086) #9
  %value = getelementptr inbounds i8, i8* %call13, i64 16
  %2 = bitcast i8* %value to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !31
  %call14 = tail call fastcc %struct.asn1_type_st* @generate_v3(i8* noundef %3, %struct.v3_ext_ctx* noundef nonnull %cnf, i32 noundef %add, i32* noundef %perr) #8
  %tobool15.not = icmp eq %struct.asn1_type_st* %call14, null
  br i1 %tobool15.not, label %bad, label %if.end17

if.end17:                                         ; preds = %for.body
  %call18 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_TYPE_sk_type(%struct.stack_st_ASN1_TYPE* noundef nonnull %1) #8
  %4 = bitcast %struct.asn1_type_st* %call14 to i8*
  %call20 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call18, i8* noundef nonnull %4) #9
  %tobool21.not = icmp eq i32 %call20, 0
  %inc = add nuw nsw i32 %i.086, 1
  br i1 %tobool21.not, label %bad, label %for.cond

if.end24:                                         ; preds = %for.cond, %for.cond.preheader, %if.end
  %sect.0 = phi %struct.stack_st_CONF_VALUE* [ null, %if.end ], [ %call6, %for.cond.preheader ], [ %call6, %for.cond ]
  %cmp25 = icmp eq i32 %utype, 17
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end24
  %call27 = call i32 @i2d_ASN1_SET_ANY(%struct.stack_st_ASN1_TYPE* noundef nonnull %1, i8** noundef nonnull %der) #9
  br label %if.end29

if.else:                                          ; preds = %if.end24
  %call28 = call i32 @i2d_ASN1_SEQUENCE_ANY(%struct.stack_st_ASN1_TYPE* noundef nonnull %1, i8** noundef nonnull %der) #9
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  %derlen.0 = phi i32 [ %call27, %if.then26 ], [ %call28, %if.else ]
  %cmp30 = icmp slt i32 %derlen.0, 0
  br i1 %cmp30, label %bad, label %if.end32

if.end32:                                         ; preds = %if.end29
  %call33 = call %struct.asn1_type_st* @ASN1_TYPE_new() #9
  %cmp34 = icmp eq %struct.asn1_type_st* %call33, null
  br i1 %cmp34, label %bad, label %if.end36

if.end36:                                         ; preds = %if.end32
  %call37 = call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef %utype) #9
  %value38 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call33, i64 0, i32 1
  %asn1_string = bitcast %union.anon* %value38 to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call37, %struct.asn1_string_st** %asn1_string, align 8, !tbaa !27
  %cmp39 = icmp eq %struct.asn1_string_st* %call37, null
  br i1 %cmp39, label %bad, label %if.end41

if.end41:                                         ; preds = %if.end36
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call33, i64 0, i32 0
  store i32 %utype, i32* %type, align 8, !tbaa !33
  %5 = load i8*, i8** %der, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call37, i64 0, i32 2
  store i8* %5, i8** %data, align 8, !tbaa !35
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %asn1_string, align 8, !tbaa !27
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 0
  store i32 %derlen.0, i32* %length, align 8, !tbaa !37
  store i8* null, i8** %der, align 8, !tbaa !8
  br label %bad

bad:                                              ; preds = %if.end17, %for.body, %if.end36, %if.end32, %if.end29, %if.end5, %if.then2, %entry, %if.end41
  %ret.0 = phi %struct.asn1_type_st* [ null, %if.end29 ], [ null, %if.end32 ], [ %call33, %if.end36 ], [ %call33, %if.end41 ], [ null, %if.end5 ], [ null, %if.then2 ], [ null, %entry ], [ null, %for.body ], [ null, %if.end17 ]
  %sect.1 = phi %struct.stack_st_CONF_VALUE* [ %sect.0, %if.end29 ], [ %sect.0, %if.end32 ], [ %sect.0, %if.end36 ], [ %sect.0, %if.end41 ], [ null, %if.end5 ], [ null, %if.then2 ], [ null, %entry ], [ %call6, %for.body ], [ %call6, %if.end17 ]
  %7 = load i8*, i8** %der, align 8, !tbaa !8
  call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 455) #9
  %call46 = call fastcc %struct.stack_st* @ossl_check_ASN1_TYPE_sk_type(%struct.stack_st_ASN1_TYPE* noundef %1) #8
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call46, void (i8*)* noundef bitcast (void (%struct.asn1_type_st*)* @ASN1_TYPE_free to void (i8*)*)) #9
  call void @X509V3_section_free(%struct.v3_ext_ctx* noundef %cnf, %struct.stack_st_CONF_VALUE* noundef %sect.1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.asn1_type_st* %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_type_st* @asn1_str2type(i8* noundef %str, i32 noundef %format, i32 noundef %utype) unnamed_addr #0 {
entry:
  %vtmp = alloca %struct.CONF_VALUE, align 16
  %rdlen = alloca i64, align 8
  %0 = bitcast %struct.CONF_VALUE* %vtmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7
  %1 = bitcast i64* %rdlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %call = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #9
  %cmp = icmp eq %struct.asn1_type_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 584, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i8* %str, null
  %spec.store.select = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i64 0, i64 0), i8* %str
  switch i32 %utype, label %sw.default [
    i32 5, label %land.lhs.true
    i32 1, label %sw.bb7
    i32 2, label %sw.bb17
    i32 10, label %sw.bb17
    i32 6, label %sw.bb28
    i32 23, label %sw.bb39
    i32 24, label %sw.bb39
    i32 30, label %sw.bb64
    i32 19, label %sw.bb64
    i32 22, label %sw.bb64
    i32 20, label %sw.bb64
    i32 12, label %sw.bb64
    i32 26, label %sw.bb64
    i32 28, label %sw.bb64
    i32 27, label %sw.bb64
    i32 18, label %sw.bb64
    i32 3, label %sw.bb82
    i32 4, label %sw.bb82
  ]

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, i8* %spec.store.select, align 1, !tbaa !27
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %sw.epilog, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 595, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 182, i8* noundef null) #9
  br label %bad_form

sw.bb7:                                           ; preds = %if.end
  %cmp8.not = icmp eq i32 %format, 1
  br i1 %cmp8.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %sw.bb7
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 602, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 190, i8* noundef null) #9
  br label %bad_form

if.end11:                                         ; preds = %sw.bb7
  %3 = bitcast %struct.CONF_VALUE* %vtmp to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %3, align 16, !tbaa !8
  %value = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %vtmp, i64 0, i32 2
  store i8* %spec.store.select, i8** %value, align 16, !tbaa !31
  %value12 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call, i64 0, i32 1
  %boolean = bitcast %union.anon* %value12 to i32*
  %call13 = call i32 @X509V3_get_value_bool(%struct.CONF_VALUE* noundef nonnull %vtmp, i32* noundef nonnull %boolean) #9
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %sw.epilog

if.then15:                                        ; preds = %if.end11
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 609, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 176, i8* noundef null) #9
  br label %bad_str

sw.bb17:                                          ; preds = %if.end, %if.end
  %cmp18.not = icmp eq i32 %format, 1
  br i1 %cmp18.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %sw.bb17
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 617, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 185, i8* noundef null) #9
  br label %bad_form

if.end21:                                         ; preds = %sw.bb17
  %call22 = tail call %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* noundef null, i8* noundef %spec.store.select) #9
  %value23 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call, i64 0, i32 1
  %integer = bitcast %union.anon* %value23 to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call22, %struct.asn1_string_st** %integer, align 8, !tbaa !27
  %cmp24 = icmp eq %struct.asn1_string_st* %call22, null
  br i1 %cmp24, label %if.then26, label %sw.epilog

if.then26:                                        ; preds = %if.end21
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 622, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 180, i8* noundef null) #9
  br label %bad_str

sw.bb28:                                          ; preds = %if.end
  %cmp29.not = icmp eq i32 %format, 1
  br i1 %cmp29.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %sw.bb28
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 629, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 191, i8* noundef null) #9
  br label %bad_form

if.end32:                                         ; preds = %sw.bb28
  %call33 = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef %spec.store.select, i32 noundef 0) #9
  %value34 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call, i64 0, i32 1
  %object = bitcast %union.anon* %value34 to %struct.asn1_object_st**
  store %struct.asn1_object_st* %call33, %struct.asn1_object_st** %object, align 8, !tbaa !27
  %cmp35 = icmp eq %struct.asn1_object_st* %call33, null
  br i1 %cmp35, label %if.then37, label %sw.epilog

if.then37:                                        ; preds = %if.end32
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 633, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 183, i8* noundef null) #9
  br label %bad_str

sw.bb39:                                          ; preds = %if.end, %if.end
  %cmp40.not = icmp eq i32 %format, 1
  br i1 %cmp40.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %sw.bb39
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 641, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 193, i8* noundef null) #9
  br label %bad_form

if.end43:                                         ; preds = %sw.bb39
  %call44 = tail call %struct.asn1_string_st* @ASN1_STRING_new() #9
  %value45 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call, i64 0, i32 1
  %asn1_string = bitcast %union.anon* %value45 to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call44, %struct.asn1_string_st** %asn1_string, align 8, !tbaa !27
  %cmp46 = icmp eq %struct.asn1_string_st* %call44, null
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end43
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 645, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #9
  br label %bad_str

if.end49:                                         ; preds = %if.end43
  %call52 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call44, i8* noundef %spec.store.select, i32 noundef -1) #9
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end49
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 649, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #9
  br label %bad_str

if.end55:                                         ; preds = %if.end49
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %asn1_string, align 8, !tbaa !27
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %4, i64 0, i32 1
  store i32 %utype, i32* %type, align 4, !tbaa !38
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %asn1_string, align 8, !tbaa !27
  %call60 = tail call i32 @ASN1_TIME_check(%struct.asn1_string_st* noundef %5) #9
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then62, label %sw.epilog

if.then62:                                        ; preds = %if.end55
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 654, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 184, i8* noundef null) #9
  br label %bad_str

sw.bb64:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  switch i32 %format, label %if.else71 [
    i32 1, label %if.end73
    i32 2, label %if.then70
  ]

if.then70:                                        ; preds = %sw.bb64
  br label %if.end73

if.else71:                                        ; preds = %sw.bb64
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 674, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 177, i8* noundef null) #9
  br label %bad_form

if.end73:                                         ; preds = %sw.bb64, %if.then70
  %format.addr.0 = phi i32 [ 4096, %if.then70 ], [ 4097, %sw.bb64 ]
  %value74 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call, i64 0, i32 1
  %asn1_string75 = bitcast %union.anon* %value74 to %struct.asn1_string_st**
  %call76 = tail call i64 @ASN1_tag2bit(i32 noundef %utype) #9
  %call77 = tail call i32 @ASN1_mbstring_copy(%struct.asn1_string_st** noundef nonnull %asn1_string75, i8* noundef %spec.store.select, i32 noundef -1, i32 noundef %format.addr.0, i64 noundef %call76) #9
  %cmp78 = icmp slt i32 %call77, 1
  br i1 %cmp78, label %if.then80, label %sw.epilog

if.then80:                                        ; preds = %if.end73
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 680, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #9
  br label %bad_str

sw.bb82:                                          ; preds = %if.end, %if.end
  %call83 = tail call %struct.asn1_string_st* @ASN1_STRING_new() #9
  %value84 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call, i64 0, i32 1
  %asn1_string85 = bitcast %union.anon* %value84 to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call83, %struct.asn1_string_st** %asn1_string85, align 8, !tbaa !27
  %cmp86 = icmp eq %struct.asn1_string_st* %call83, null
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %sw.bb82
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 689, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #9
  br label %bad_form

if.end89:                                         ; preds = %sw.bb82
  switch i32 %format, label %if.else113 [
    i32 3, label %if.then92
    i32 1, label %if.then109
  ]

if.then92:                                        ; preds = %if.end89
  %call93 = call i8* @OPENSSL_hexstr2buf(i8* noundef %spec.store.select, i64* noundef nonnull %rdlen) #9
  %cmp94 = icmp eq i8* %call93, null
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.then92
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 695, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 178, i8* noundef null) #9
  br label %bad_str

if.end97:                                         ; preds = %if.then92
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %asn1_string85, align 8, !tbaa !27
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 2
  store i8* %call93, i8** %data, align 8, !tbaa !35
  %7 = load i64, i64* %rdlen, align 8, !tbaa !10
  %conv100 = trunc i64 %7 to i32
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %asn1_string85, align 8, !tbaa !27
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %8, i64 0, i32 0
  store i32 %conv100, i32* %length, align 8, !tbaa !37
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %asn1_string85, align 8, !tbaa !27
  %type105 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %9, i64 0, i32 1
  store i32 %utype, i32* %type105, align 4, !tbaa !38
  br label %if.end128

if.then109:                                       ; preds = %if.end89
  %call112 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call83, i8* noundef %spec.store.select, i32 noundef -1) #9
  br label %if.end128

if.else113:                                       ; preds = %if.end89
  %cmp114 = icmp eq i32 %format, 4
  %cmp117 = icmp eq i32 %utype, 3
  %or.cond = and i1 %cmp114, %cmp117
  br i1 %or.cond, label %if.then119, label %if.else125

if.then119:                                       ; preds = %if.else113
  %10 = bitcast %struct.asn1_string_st* %call83 to i8*
  %call121 = tail call i32 @CONF_parse_list(i8* noundef %spec.store.select, i32 noundef 44, i32 noundef 1, i32 (i8*, i32, i8*)* noundef nonnull @bitstr_cb, i8* noundef nonnull %10) #9
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then123, label %sw.epilog

if.then123:                                       ; preds = %if.then119
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 707, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 188, i8* noundef null) #9
  br label %bad_str

if.else125:                                       ; preds = %if.else113
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 713, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 175, i8* noundef null) #9
  br label %bad_form

if.end128:                                        ; preds = %if.then109, %if.end97
  %cmp129 = icmp eq i32 %utype, 3
  br i1 %cmp129, label %if.then133, label %sw.epilog

if.then133:                                       ; preds = %if.end128
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %asn1_string85, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %11, i64 0, i32 3
  %12 = load i64, i64* %flags, align 8, !tbaa !39
  %and = and i64 %12, -16
  store i64 %and, i64* %flags, align 8, !tbaa !39
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %asn1_string85, align 8, !tbaa !27
  %flags138 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %13, i64 0, i32 3
  %14 = load i64, i64* %flags138, align 8, !tbaa !39
  %or = or i64 %14, 8
  store i64 %or, i64* %flags138, align 8, !tbaa !39
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 726, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_str2type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 196, i8* noundef null) #9
  br label %bad_str

sw.epilog:                                        ; preds = %if.then119, %if.end128, %if.then133, %if.end73, %if.end55, %if.end32, %if.end21, %if.end11, %land.lhs.true
  %type140 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call, i64 0, i32 0
  store i32 %utype, i32* %type140, align 8, !tbaa !33
  br label %cleanup

bad_str:                                          ; preds = %sw.default, %if.then123, %if.then96, %if.then80, %if.then62, %if.then54, %if.then48, %if.then37, %if.then26, %if.then15
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i8* noundef %spec.store.select) #9
  br label %bad_form

bad_form:                                         ; preds = %bad_str, %if.else125, %if.then88, %if.else71, %if.then42, %if.then31, %if.then20, %if.then10, %if.then5
  call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %bad_form, %sw.epilog, %if.then
  %retval.0 = phi %struct.asn1_type_st* [ null, %if.then ], [ null, %bad_form ], [ %call, %sw.epilog ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7
  ret %struct.asn1_type_st* %retval.0
}

declare i32 @i2d_ASN1_TYPE(%struct.asn1_type_st* noundef, i8** noundef) local_unnamed_addr #2

declare void @ASN1_TYPE_free(%struct.asn1_type_st* noundef) #2

declare i32 @ASN1_get_object(i8** noundef, i64* noundef, i32* noundef, i32* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ASN1_object_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_put_object(i8** noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare %struct.asn1_type_st* @d2i_ASN1_TYPE(%struct.asn1_type_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind uwtable
define internal fastcc i32 @asn1_str2tag(i8* noundef %tagstr, i32 noundef %len) unnamed_addr #4 {
entry:
  %cmp = icmp eq i32 %len, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef %tagstr) #10
  %conv = trunc i64 %call to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %len.addr.0 = phi i32 [ %conv, %if.then ], [ %len, %entry ]
  %conv7 = sext i32 %len.addr.0 to i64
  br label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %i.021 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ]
  %storemerge19 = phi %struct.tag_name_st* [ getelementptr inbounds ([49 x %struct.tag_name_st], [49 x %struct.tag_name_st]* @asn1_str2tag.tnst, i64 0, i64 0), %if.end ], [ %incdec.ptr, %for.inc ]
  %len4 = getelementptr inbounds %struct.tag_name_st, %struct.tag_name_st* %storemerge19, i64 0, i32 1
  %0 = load i32, i32* %len4, align 8, !tbaa !40
  %cmp5 = icmp eq i32 %len.addr.0, %0
  br i1 %cmp5, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %strnam = getelementptr inbounds %struct.tag_name_st, %struct.tag_name_st* %storemerge19, i64 0, i32 0
  %1 = load i8*, i8** %strnam, align 8, !tbaa !42
  %call8 = tail call i32 @strncasecmp(i8* noundef %1, i8* noundef %tagstr, i64 noundef %conv7) #10
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %for.inc

if.then11:                                        ; preds = %land.lhs.true
  %tag = getelementptr inbounds %struct.tag_name_st, %struct.tag_name_st* %storemerge19, i64 0, i32 2
  %2 = load i32, i32* %tag, align 4, !tbaa !43
  br label %cleanup

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %inc = add nuw nsw i32 %i.021, 1
  %incdec.ptr = getelementptr inbounds %struct.tag_name_st, %struct.tag_name_st* %storemerge19, i64 1
  store %struct.tag_name_st* %incdec.ptr, %struct.tag_name_st** @asn1_str2tag.tntmp, align 8, !tbaa !8
  %exitcond.not = icmp eq i32 %inc, 49
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !44

cleanup:                                          ; preds = %for.inc, %if.then11
  %retval.0 = phi i32 [ %2, %if.then11 ], [ -1, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_tagging(i8* noundef %vstart, i32 noundef %vlen, i32* nocapture noundef writeonly %ptag, i32* nocapture noundef writeonly %pclass) unnamed_addr #0 {
entry:
  %eptr = alloca i8*, align 8
  %0 = bitcast i8** %eptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %tobool.not = icmp eq i8* %vstart, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @strtoul(i8* noundef nonnull %vstart, i8** noundef nonnull %eptr, i32 noundef 10) #9
  %1 = load i8*, i8** %eptr, align 8, !tbaa !8
  %tobool1.not = icmp eq i8* %1, null
  br i1 %tobool1.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, i8* %1, align 1, !tbaa !27
  %tobool2.not = icmp ne i8 %2, 0
  %idx.ext = sext i32 %vlen to i64
  %add.ptr = getelementptr inbounds i8, i8* %vstart, i64 %idx.ext
  %cmp = icmp ugt i8* %1, %add.ptr
  %or.cond = select i1 %tobool2.not, i1 %cmp, i1 false
  br i1 %or.cond, label %cleanup, label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %cmp7 = icmp slt i64 %call, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 359, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.parse_tagging, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 187, i8* noundef null) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %conv11 = trunc i64 %call to i32
  store i32 %conv11, i32* %ptag, align 4, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %vstart to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %3 = trunc i64 %sub.ptr.sub.neg to i32
  %conv15 = sub i32 0, %vlen
  %phi.cmp = icmp eq i32 %3, %conv15
  %vlen.addr.0 = select i1 %tobool1.not, i1 true, i1 %phi.cmp
  br i1 %vlen.addr.0, label %if.else24, label %if.then18

if.then18:                                        ; preds = %if.end10
  %4 = load i8, i8* %1, align 1, !tbaa !27
  %conv19 = sext i8 %4 to i32
  switch i32 %conv19, label %sw.default [
    i32 85, label %sw.bb
    i32 65, label %sw.bb20
    i32 80, label %sw.bb21
    i32 67, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.then18
  store i32 0, i32* %pclass, align 4, !tbaa !4
  br label %cleanup

sw.bb20:                                          ; preds = %if.then18
  store i32 64, i32* %pclass, align 4, !tbaa !4
  br label %cleanup

sw.bb21:                                          ; preds = %if.then18
  store i32 192, i32* %pclass, align 4, !tbaa !4
  br label %cleanup

sw.bb22:                                          ; preds = %if.then18
  store i32 128, i32* %pclass, align 4, !tbaa !4
  br label %cleanup

sw.default:                                       ; preds = %if.then18
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 388, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.parse_tagging, i64 0, i64 0)) #9
  %5 = load i8*, i8** %eptr, align 8, !tbaa !8
  %6 = load i8, i8* %5, align 1, !tbaa !27
  %conv23 = sext i8 %6 to i32
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 186, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv23) #9
  br label %cleanup

if.else24:                                        ; preds = %if.end10
  store i32 128, i32* %pclass, align 4, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.else24, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb, %land.lhs.true, %entry, %sw.default, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %sw.default ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 1, %sw.bb ], [ 1, %sw.bb20 ], [ 1, %sw.bb21 ], [ 1, %sw.bb22 ], [ 1, %if.else24 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @append_exp(%struct.tag_exp_arg* nocapture noundef %arg, i32 noundef %exp_tag, i32 noundef %exp_class, i32 noundef %exp_constructed, i32 noundef %exp_pad, i32 noundef %imp_ok) unnamed_addr #0 {
entry:
  %imp_tag = getelementptr inbounds %struct.tag_exp_arg, %struct.tag_exp_arg* %arg, i64 0, i32 0
  %0 = load i32, i32* %imp_tag, align 8, !tbaa !12
  %cmp = icmp eq i32 %0, -1
  %tobool = icmp ne i32 %imp_ok, 0
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 469, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.append_exp, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 179, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %exp_count = getelementptr inbounds %struct.tag_exp_arg, %struct.tag_exp_arg* %arg, i64 0, i32 6
  %1 = load i32, i32* %exp_count, align 8, !tbaa !16
  %cmp1 = icmp eq i32 %1, 20
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 474, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.append_exp, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 174, i8* noundef null) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %exp_count, align 8, !tbaa !16
  %idxprom = sext i32 %1 to i64
  br i1 %cmp, label %if.end15, label %if.then7

if.then7:                                         ; preds = %if.end3
  %imp_class = getelementptr inbounds %struct.tag_exp_arg, %struct.tag_exp_arg* %arg, i64 0, i32 1
  %2 = load i32, i32* %imp_class, align 4, !tbaa !14
  store i32 -1, i32* %imp_tag, align 8, !tbaa !12
  store i32 -1, i32* %imp_class, align 4, !tbaa !14
  br label %if.end15

if.end15:                                         ; preds = %if.end3, %if.then7
  %.sink33 = phi i32 [ %0, %if.then7 ], [ %exp_tag, %if.end3 ]
  %.sink = phi i32 [ %2, %if.then7 ], [ %exp_class, %if.end3 ]
  %3 = getelementptr inbounds %struct.tag_exp_arg, %struct.tag_exp_arg* %arg, i64 0, i32 5, i64 %idxprom, i32 0
  store i32 %.sink33, i32* %3, align 8
  %4 = getelementptr inbounds %struct.tag_exp_arg, %struct.tag_exp_arg* %arg, i64 0, i32 5, i64 %idxprom, i32 1
  store i32 %.sink, i32* %4, align 4
  %exp_constructed16 = getelementptr inbounds %struct.tag_exp_arg, %struct.tag_exp_arg* %arg, i64 0, i32 5, i64 %idxprom, i32 2
  store i32 %exp_constructed, i32* %exp_constructed16, align 8, !tbaa !25
  %exp_pad17 = getelementptr inbounds %struct.tag_exp_arg, %struct.tag_exp_arg* %arg, i64 0, i32 5, i64 %idxprom, i32 3
  store i32 %exp_pad, i32* %exp_pad17, align 4, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.end15 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncasecmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #3

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare %struct.stack_st_CONF_VALUE* @X509V3_get_section(%struct.v3_ext_ctx* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_TYPE_sk_type(%struct.stack_st_ASN1_TYPE* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_TYPE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @i2d_ASN1_SET_ANY(%struct.stack_st_ASN1_TYPE* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @i2d_ASN1_SEQUENCE_ANY(%struct.stack_st_ASN1_TYPE* noundef, i8** noundef) local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare void @X509V3_section_free(%struct.v3_ext_ctx* noundef, %struct.stack_st_CONF_VALUE* noundef) local_unnamed_addr #2

declare i32 @X509V3_get_value_bool(%struct.CONF_VALUE* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_STRING_new() local_unnamed_addr #2

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_TIME_check(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_mbstring_copy(%struct.asn1_string_st** noundef, i8* noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ASN1_tag2bit(i32 noundef) local_unnamed_addr #2

declare i8* @OPENSSL_hexstr2buf(i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @bitstr_cb(i8* noundef %elem, i32 noundef %len, i8* noundef %bitstr) #0 {
entry:
  %eptr = alloca i8*, align 8
  %0 = bitcast i8** %eptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %tobool.not = icmp eq i8* %elem, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @strtoul(i8* noundef nonnull %elem, i8** noundef nonnull %eptr, i32 noundef 10) #9
  %1 = load i8*, i8** %eptr, align 8, !tbaa !8
  %tobool1.not = icmp eq i8* %1, null
  br i1 %tobool1.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, i8* %1, align 1, !tbaa !27
  %tobool2.not = icmp eq i8 %2, 0
  %idx.ext = sext i32 %len to i64
  %add.ptr = getelementptr inbounds i8, i8* %elem, i64 %idx.ext
  %cmp.not = icmp eq i8* %1, %add.ptr
  %or.cond = select i1 %tobool2.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end6, label %cleanup

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %cmp7 = icmp slt i64 %call, 0
  br i1 %cmp7, label %cleanup.sink.split, label %if.end10

if.end10:                                         ; preds = %if.end6
  %3 = bitcast i8* %bitstr to %struct.asn1_string_st*
  %conv11 = trunc i64 %call to i32
  %call12 = call i32 @ASN1_BIT_STRING_set_bit(%struct.asn1_string_st* noundef %3, i32 noundef %conv11, i32 noundef 1) #9
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end10, %if.end6
  %.sink21 = phi i32 [ 752, %if.end6 ], [ 756, %if.end10 ]
  %.sink = phi i32 [ 187, %if.end6 ], [ 786688, %if.end10 ]
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink21, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.bitstr_cb, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef %.sink, i8* noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10, %land.lhs.true, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %land.lhs.true ], [ 1, %if.end10 ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #2

declare i32 @ASN1_BIT_STRING_set_bit(%struct.asn1_string_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !5, i64 0}
!13 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !9, i64 16, !6, i64 24, !5, i64 504}
!14 = !{!13, !5, i64 4}
!15 = !{!13, !5, i64 12}
!16 = !{!13, !5, i64 504}
!17 = !{!13, !5, i64 8}
!18 = !{!13, !9, i64 16}
!19 = !{!20, !5, i64 12}
!20 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !11, i64 16}
!21 = !{!20, !11, i64 16}
!22 = !{!20, !5, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!20, !5, i64 8}
!26 = !{!20, !5, i64 4}
!27 = !{!6, !6, i64 0}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = !{!32, !9, i64 16}
!32 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16}
!33 = !{!34, !5, i64 0}
!34 = !{!"asn1_type_st", !5, i64 0, !6, i64 8}
!35 = !{!36, !9, i64 8}
!36 = !{!"asn1_string_st", !5, i64 0, !5, i64 4, !9, i64 8, !11, i64 16}
!37 = !{!36, !5, i64 0}
!38 = !{!36, !5, i64 4}
!39 = !{!36, !11, i64 16}
!40 = !{!41, !5, i64 8}
!41 = !{!"tag_name_st", !9, i64 0, !5, i64 8, !5, i64 12}
!42 = !{!41, !9, i64 0}
!43 = !{!41, !5, i64 12}
!44 = distinct !{!44, !24}

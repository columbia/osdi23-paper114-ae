; ModuleID = 'crypto/ec/eck_prn.c'
source_filename = "crypto/ec/eck_prn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ec_group_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.bignum_ctx = type opaque
%struct.bignum_st = type opaque
%struct.ec_point_st = type opaque
%struct.ec_key_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/ec/eck_prn.c\00", align 1
@__func__.ECPKParameters_print_fp = private unnamed_addr constant [24 x i8] c"ECPKParameters_print_fp\00", align 1
@__func__.EC_KEY_print_fp = private unnamed_addr constant [16 x i8] c"EC_KEY_print_fp\00", align 1
@__func__.ECParameters_print_fp = private unnamed_addr constant [22 x i8] c"ECParameters_print_fp\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Generator (compressed):\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Generator (uncompressed):\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Generator (hybrid):\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ASN1 OID: %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"NIST CURVE: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Field Type: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Basis Type: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Polynomial:\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Prime:\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"A:   \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"B:   \00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Order: \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Cofactor: \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Seed:\00", align 1
@__func__.ECPKParameters_print = private unnamed_addr constant [21 x i8] c"ECPKParameters_print\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ECPKParameters_print_fp(%struct._IO_FILE* noundef %fp, %struct.ec_group_st* noundef %x, i32 noundef %off) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ECPKParameters_print_fp, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524295, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #4
  %call3 = tail call i32 @ECPKParameters_print(%struct.bio_st* noundef nonnull %call1, %struct.ec_group_st* noundef %x, i32 noundef %off) #5
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ECPKParameters_print(%struct.bio_st* noundef %bp, %struct.ec_group_st* noundef %x, i32 noundef %off) local_unnamed_addr #0 {
entry:
  %gen_buf = alloca i8*, align 8
  %0 = bitcast i8** %gen_buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store i8* null, i8** %gen_buf, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.ec_group_st* %x, null
  br i1 %tobool.not, label %if.then164, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %cmp = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp, label %if.then164, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef nonnull %x) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end2
  %call6 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %off, i32 noundef 128) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then164, label %if.end9

if.end9:                                          ; preds = %if.then5
  %call10 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef nonnull %x) #4
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then164, label %if.end13

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i8* @OBJ_nid2sn(i32 noundef %call10) #4
  %call15 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* noundef %call14) #4
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %if.then164, label %if.end18

if.end18:                                         ; preds = %if.end13
  %call19 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #4
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %if.then164, label %if.end22

if.end22:                                         ; preds = %if.end18
  %call23 = tail call i8* @EC_curve_nid2nist(i32 noundef %call10) #4
  %tobool24.not = icmp eq i8* %call23, null
  br i1 %tobool24.not, label %if.end165, label %if.then25

if.then25:                                        ; preds = %if.end22
  %call26 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %off, i32 noundef 128) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then164, label %if.end29

if.end29:                                         ; preds = %if.then25
  %call30 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %call23) #4
  %cmp31 = icmp slt i32 %call30, 1
  br i1 %cmp31, label %if.then164, label %if.end165

if.else:                                          ; preds = %if.end2
  %call36 = tail call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef nonnull %x) #4
  %cmp37 = icmp eq i32 %call36, 407
  %call40 = tail call %struct.bignum_st* @BN_new() #4
  %cmp41 = icmp eq %struct.bignum_st* %call40, null
  br i1 %cmp41, label %if.then164, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call42 = tail call %struct.bignum_st* @BN_new() #4
  %cmp43 = icmp eq %struct.bignum_st* %call42, null
  br i1 %cmp43, label %if.then164, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false
  %call45 = tail call %struct.bignum_st* @BN_new() #4
  %cmp46 = icmp eq %struct.bignum_st* %call45, null
  br i1 %cmp46, label %if.then164, label %if.end48

if.end48:                                         ; preds = %lor.lhs.false44
  %call49 = tail call i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef nonnull %x, %struct.bignum_st* noundef nonnull %call40, %struct.bignum_st* noundef nonnull %call42, %struct.bignum_st* noundef nonnull %call45, %struct.bignum_ctx* noundef nonnull %call) #4
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then164, label %if.end52

if.end52:                                         ; preds = %if.end48
  %call53 = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef nonnull %x) #4
  %cmp54 = icmp eq %struct.ec_point_st* %call53, null
  br i1 %cmp54, label %if.then164, label %if.end56

if.end56:                                         ; preds = %if.end52
  %call57 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef nonnull %x) #4
  %call58 = tail call %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef nonnull %x) #4
  %cmp59 = icmp eq %struct.bignum_st* %call57, null
  br i1 %cmp59, label %if.then164, label %if.end61

if.end61:                                         ; preds = %if.end56
  %call62 = tail call i32 @EC_GROUP_get_point_conversion_form(%struct.ec_group_st* noundef nonnull %x) #4
  %call63 = call i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef nonnull %x, %struct.ec_point_st* noundef nonnull %call53, i32 noundef %call62, i8** noundef nonnull %gen_buf, %struct.bignum_ctx* noundef nonnull %call) #4
  %cmp64 = icmp eq i64 %call63, 0
  br i1 %cmp64, label %if.then164, label %if.end66

if.end66:                                         ; preds = %if.end61
  %call67 = call i8* @EC_GROUP_get0_seed(%struct.ec_group_st* noundef nonnull %x) #4
  %cmp68.not = icmp eq i8* %call67, null
  br i1 %cmp68.not, label %if.end71, label %if.then69

if.then69:                                        ; preds = %if.end66
  %call70 = call i64 @EC_GROUP_get_seed_len(%struct.ec_group_st* noundef nonnull %x) #4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end66
  %seed_len.0 = phi i64 [ %call70, %if.then69 ], [ 0, %if.end66 ]
  %call72 = call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %off, i32 noundef 128) #4
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then164, label %if.end75

if.end75:                                         ; preds = %if.end71
  %call76 = call i8* @OBJ_nid2sn(i32 noundef %call36) #4
  %call77 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* noundef %call76) #4
  %cmp78 = icmp slt i32 %call77, 1
  br i1 %cmp78, label %if.then164, label %if.end80

if.end80:                                         ; preds = %if.end75
  br i1 %cmp37, label %if.then82, label %land.lhs.true106

if.then82:                                        ; preds = %if.end80
  %call83 = call i32 @EC_GROUP_get_basis_type(%struct.ec_group_st* noundef nonnull %x) #4
  %cmp84 = icmp eq i32 %call83, 0
  br i1 %cmp84, label %if.then164, label %if.end86

if.end86:                                         ; preds = %if.then82
  %call87 = call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %off, i32 noundef 128) #4
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then164, label %if.end90

if.end90:                                         ; preds = %if.end86
  %call91 = call i8* @OBJ_nid2sn(i32 noundef %call83) #4
  %call92 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* noundef %call91) #4
  %cmp93 = icmp slt i32 %call92, 1
  br i1 %cmp93, label %if.then164, label %cleanup101

cleanup101:                                       ; preds = %if.end90
  %call97 = call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call40, i8* noundef null, i32 noundef %off) #4
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then164, label %land.lhs.true113

land.lhs.true106:                                 ; preds = %if.end80
  %call107 = call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call40, i8* noundef null, i32 noundef %off) #4
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then164, label %land.lhs.true113

land.lhs.true113:                                 ; preds = %cleanup101, %land.lhs.true106
  %call114 = call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call42, i8* noundef null, i32 noundef %off) #4
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.then164, label %land.lhs.true119

land.lhs.true119:                                 ; preds = %land.lhs.true113
  %call120 = call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call45, i8* noundef null, i32 noundef %off) #4
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then164, label %if.end123

if.end123:                                        ; preds = %land.lhs.true119
  %1 = load i8*, i8** %gen_buf, align 8, !tbaa !4
  %cmp132.not = icmp eq i8* %1, null
  br i1 %cmp132.not, label %land.lhs.true139, label %land.lhs.true133

land.lhs.true133:                                 ; preds = %if.end123
  %switch.selectcmp269 = icmp eq i32 %call62, 2
  %switch.selectcmp = icmp eq i32 %call62, 4
  %switch.select = select i1 %switch.selectcmp, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0)
  %switch.select270 = select i1 %switch.selectcmp269, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %switch.select
  %call134 = call fastcc i32 @print_bin(%struct.bio_st* noundef %bp, i8* noundef %switch.select270, i8* noundef nonnull %1, i64 noundef %call63, i32 noundef %off) #5
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.then164, label %land.lhs.true139

land.lhs.true139:                                 ; preds = %if.end123, %land.lhs.true133
  %call140 = call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call57, i8* noundef null, i32 noundef %off) #4
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.then164, label %if.end143

if.end143:                                        ; preds = %land.lhs.true139
  %cmp144.not = icmp eq %struct.bignum_st* %call58, null
  br i1 %cmp144.not, label %if.end149, label %land.lhs.true145

land.lhs.true145:                                 ; preds = %if.end143
  %call146 = call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call58, i8* noundef null, i32 noundef %off) #4
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.then164, label %if.end149

if.end149:                                        ; preds = %land.lhs.true145, %if.end143
  br i1 %cmp68.not, label %if.end165, label %land.lhs.true151

land.lhs.true151:                                 ; preds = %if.end149
  %call152 = call fastcc i32 @print_bin(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* noundef nonnull %call67, i64 noundef %seed_len.0, i32 noundef %off) #5
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.then164, label %if.end165

if.then164:                                       ; preds = %cleanup101, %if.end90, %if.end86, %if.then82, %land.lhs.true151, %land.lhs.true145, %land.lhs.true139, %land.lhs.true133, %land.lhs.true119, %land.lhs.true113, %land.lhs.true106, %if.end75, %if.end71, %if.end61, %if.end56, %if.end52, %if.end48, %if.else, %lor.lhs.false, %lor.lhs.false44, %if.end29, %if.then25, %if.end18, %if.end13, %if.end9, %if.then5, %entry, %if.end
  %a.3.ph = phi %struct.bignum_st* [ null, %if.end ], [ null, %entry ], [ null, %if.then5 ], [ null, %if.end9 ], [ null, %if.end13 ], [ null, %if.end18 ], [ null, %if.then25 ], [ null, %if.end29 ], [ %call42, %land.lhs.true151 ], [ %call42, %land.lhs.true145 ], [ %call42, %land.lhs.true139 ], [ %call42, %land.lhs.true133 ], [ %call42, %land.lhs.true119 ], [ %call42, %land.lhs.true113 ], [ %call42, %land.lhs.true106 ], [ %call42, %if.end75 ], [ %call42, %if.end71 ], [ %call42, %if.end61 ], [ %call42, %if.end56 ], [ %call42, %if.end52 ], [ %call42, %if.end48 ], [ %call42, %lor.lhs.false44 ], [ null, %lor.lhs.false ], [ null, %if.else ], [ %call42, %if.then82 ], [ %call42, %if.end86 ], [ %call42, %if.end90 ], [ %call42, %cleanup101 ]
  %b.3.ph = phi %struct.bignum_st* [ null, %if.end ], [ null, %entry ], [ null, %if.then5 ], [ null, %if.end9 ], [ null, %if.end13 ], [ null, %if.end18 ], [ null, %if.then25 ], [ null, %if.end29 ], [ %call45, %land.lhs.true151 ], [ %call45, %land.lhs.true145 ], [ %call45, %land.lhs.true139 ], [ %call45, %land.lhs.true133 ], [ %call45, %land.lhs.true119 ], [ %call45, %land.lhs.true113 ], [ %call45, %land.lhs.true106 ], [ %call45, %if.end75 ], [ %call45, %if.end71 ], [ %call45, %if.end61 ], [ %call45, %if.end56 ], [ %call45, %if.end52 ], [ %call45, %if.end48 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false ], [ null, %if.else ], [ %call45, %if.then82 ], [ %call45, %if.end86 ], [ %call45, %if.end90 ], [ %call45, %cleanup101 ]
  %p.1.ph = phi %struct.bignum_st* [ null, %if.end ], [ null, %entry ], [ null, %if.then5 ], [ null, %if.end9 ], [ null, %if.end13 ], [ null, %if.end18 ], [ null, %if.then25 ], [ null, %if.end29 ], [ %call40, %land.lhs.true151 ], [ %call40, %land.lhs.true145 ], [ %call40, %land.lhs.true139 ], [ %call40, %land.lhs.true133 ], [ %call40, %land.lhs.true119 ], [ %call40, %land.lhs.true113 ], [ %call40, %land.lhs.true106 ], [ %call40, %if.end75 ], [ %call40, %if.end71 ], [ %call40, %if.end61 ], [ %call40, %if.end56 ], [ %call40, %if.end52 ], [ %call40, %if.end48 ], [ %call40, %lor.lhs.false44 ], [ %call40, %lor.lhs.false ], [ null, %if.else ], [ %call40, %if.then82 ], [ %call40, %if.end86 ], [ %call40, %if.end90 ], [ %call40, %cleanup101 ]
  %gen_buf_len.2.ph = phi i64 [ 0, %if.end ], [ 0, %entry ], [ 0, %if.then5 ], [ 0, %if.end9 ], [ 0, %if.end13 ], [ 0, %if.end18 ], [ 0, %if.then25 ], [ 0, %if.end29 ], [ %call63, %land.lhs.true151 ], [ %call63, %land.lhs.true145 ], [ %call63, %land.lhs.true139 ], [ %call63, %land.lhs.true133 ], [ %call63, %land.lhs.true119 ], [ %call63, %land.lhs.true113 ], [ %call63, %land.lhs.true106 ], [ %call63, %if.end75 ], [ %call63, %if.end71 ], [ 0, %if.end61 ], [ 0, %if.end56 ], [ 0, %if.end52 ], [ 0, %if.end48 ], [ 0, %lor.lhs.false44 ], [ 0, %lor.lhs.false ], [ 0, %if.else ], [ %call63, %if.then82 ], [ %call63, %if.end86 ], [ %call63, %if.end90 ], [ %call63, %cleanup101 ]
  %ctx.0.ph = phi %struct.bignum_ctx* [ null, %if.end ], [ null, %entry ], [ %call, %if.then5 ], [ %call, %if.end9 ], [ %call, %if.end13 ], [ %call, %if.end18 ], [ %call, %if.then25 ], [ %call, %if.end29 ], [ %call, %land.lhs.true151 ], [ %call, %land.lhs.true145 ], [ %call, %land.lhs.true139 ], [ %call, %land.lhs.true133 ], [ %call, %land.lhs.true119 ], [ %call, %land.lhs.true113 ], [ %call, %land.lhs.true106 ], [ %call, %if.end75 ], [ %call, %if.end71 ], [ %call, %if.end61 ], [ %call, %if.end56 ], [ %call, %if.end52 ], [ %call, %if.end48 ], [ %call, %lor.lhs.false44 ], [ %call, %lor.lhs.false ], [ %call, %if.else ], [ %call, %if.then82 ], [ %call, %if.end86 ], [ %call, %if.end90 ], [ %call, %cleanup101 ]
  %reason.2.ph = phi i32 [ 786688, %if.end ], [ 786690, %entry ], [ 524320, %if.then5 ], [ 524320, %if.end9 ], [ 524320, %if.end13 ], [ 524320, %if.end18 ], [ 524320, %if.then25 ], [ 524320, %if.end29 ], [ 524320, %land.lhs.true151 ], [ 524320, %land.lhs.true145 ], [ 524320, %land.lhs.true139 ], [ 524320, %land.lhs.true133 ], [ 524320, %land.lhs.true119 ], [ 524320, %land.lhs.true113 ], [ 524320, %land.lhs.true106 ], [ 524320, %if.end75 ], [ 524320, %if.end71 ], [ 524304, %if.end61 ], [ 524304, %if.end56 ], [ 524304, %if.end52 ], [ 524304, %if.end48 ], [ 786688, %lor.lhs.false44 ], [ 786688, %lor.lhs.false ], [ 786688, %if.else ], [ 524320, %if.then82 ], [ 524320, %if.end86 ], [ 524320, %if.end90 ], [ 524320, %cleanup101 ]
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 216, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ECPKParameters_print, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %reason.2.ph, i8* noundef null) #4
  br label %if.end165

if.end165:                                        ; preds = %land.lhs.true151, %if.end149, %if.end29, %if.end22, %if.then164
  %ret.0305 = phi i32 [ 0, %if.then164 ], [ 1, %if.end22 ], [ 1, %if.end29 ], [ 1, %if.end149 ], [ 1, %land.lhs.true151 ]
  %ctx.0302 = phi %struct.bignum_ctx* [ %ctx.0.ph, %if.then164 ], [ %call, %if.end22 ], [ %call, %if.end29 ], [ %call, %if.end149 ], [ %call, %land.lhs.true151 ]
  %gen_buf_len.2300 = phi i64 [ %gen_buf_len.2.ph, %if.then164 ], [ 0, %if.end22 ], [ 0, %if.end29 ], [ %call63, %if.end149 ], [ %call63, %land.lhs.true151 ]
  %p.1298 = phi %struct.bignum_st* [ %p.1.ph, %if.then164 ], [ null, %if.end22 ], [ null, %if.end29 ], [ %call40, %if.end149 ], [ %call40, %land.lhs.true151 ]
  %b.3296 = phi %struct.bignum_st* [ %b.3.ph, %if.then164 ], [ null, %if.end22 ], [ null, %if.end29 ], [ %call45, %if.end149 ], [ %call45, %land.lhs.true151 ]
  %a.3294 = phi %struct.bignum_st* [ %a.3.ph, %if.then164 ], [ null, %if.end22 ], [ null, %if.end29 ], [ %call42, %if.end149 ], [ %call42, %land.lhs.true151 ]
  call void @BN_free(%struct.bignum_st* noundef %p.1298) #4
  call void @BN_free(%struct.bignum_st* noundef %a.3294) #4
  call void @BN_free(%struct.bignum_st* noundef %b.3296) #4
  %2 = load i8*, i8** %gen_buf, align 8, !tbaa !4
  call void @CRYPTO_clear_free(i8* noundef %2, i64 noundef %gen_buf_len.2300, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 220) #4
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0302) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %ret.0305
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @EC_KEY_print_fp(%struct._IO_FILE* noundef %fp, %struct.ec_key_st* noundef %x, i32 noundef %off) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EC_KEY_print_fp, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524320, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #4
  %call3 = tail call i32 @EC_KEY_print(%struct.bio_st* noundef nonnull %call1, %struct.ec_key_st* noundef %x, i32 noundef %off) #4
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

declare i32 @EC_KEY_print(%struct.bio_st* noundef, %struct.ec_key_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ECParameters_print_fp(%struct._IO_FILE* noundef %fp, %struct.ec_key_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ECParameters_print_fp, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524320, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #4
  %call3 = tail call i32 @ECParameters_print(%struct.bio_st* noundef nonnull %call1, %struct.ec_key_st* noundef %x) #4
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

declare i32 @ECParameters_print(%struct.bio_st* noundef, %struct.ec_key_st* noundef) local_unnamed_addr #2

declare %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #2

declare i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare i32 @BIO_indent(%struct.bio_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i8* @EC_curve_nid2nist(i32 noundef) local_unnamed_addr #2

declare i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare i32 @EC_GROUP_get_point_conversion_form(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i32 noundef, i8** noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i8* @EC_GROUP_get0_seed(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare i64 @EC_GROUP_get_seed_len(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare i32 @EC_GROUP_get_basis_type(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_bn_print(%struct.bio_st* noundef, i8* noundef, %struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @print_bin(%struct.bio_st* noundef %fp, i8* noundef %name, i8* noundef readonly %buf, i64 noundef %len, i32 noundef %off) unnamed_addr #0 {
entry:
  %str = alloca [133 x i8], align 16
  %0 = getelementptr inbounds [133 x i8], [133 x i8]* %str, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 133, i8* nonnull %0) #6
  %cmp = icmp eq i8* %buf, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %off, 0
  br i1 %cmp1, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.end
  %1 = icmp ult i32 %off, 128
  %spec.store.select = select i1 %1, i32 %off, i32 128
  %conv67 = zext i32 %spec.store.select to i64
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 32, i64 noundef %conv67) #4
  %call7 = call i32 @BIO_write(%struct.bio_st* noundef %fp, i8* noundef nonnull %0, i32 noundef %spec.store.select) #4
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end, %if.then2
  %off.addr.0 = phi i32 [ %spec.store.select, %if.then2 ], [ 0, %if.end ]
  %call13 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %fp, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* noundef %name) #4
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end12
  %arrayidx23 = getelementptr inbounds [133 x i8], [133 x i8]* %str, i64 0, i64 1
  %add = add nuw nsw i32 %off.addr.0, 4
  %conv24 = zext i32 %add to i64
  %add28 = add nuw nsw i32 %off.addr.0, 5
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %if.end34
  %i.0 = phi i64 [ %add37, %if.end34 ], [ 0, %for.cond.preheader ]
  %exitcond.not = icmp eq i64 %i.0, %len
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %rem = urem i64 %i.0, 15
  %cmp20 = icmp eq i64 %rem, 0
  br i1 %cmp20, label %if.then22, label %if.end34

if.then22:                                        ; preds = %for.body
  store i8 10, i8* %0, align 16, !tbaa !8
  %call25 = call i8* @memset(i8* noundef nonnull %arrayidx23, i32 noundef 32, i64 noundef %conv24) #4
  %call29 = call i32 @BIO_write(%struct.bio_st* noundef %fp, i8* noundef nonnull %0, i32 noundef %add28) #4
  %cmp30 = icmp slt i32 %call29, 1
  br i1 %cmp30, label %cleanup, label %if.end34

if.end34:                                         ; preds = %if.then22, %for.body
  %arrayidx35 = getelementptr inbounds i8, i8* %buf, i64 %i.0
  %2 = load i8, i8* %arrayidx35, align 1, !tbaa !8
  %conv36 = zext i8 %2 to i32
  %add37 = add i64 %i.0, 1
  %cmp38 = icmp eq i64 %add37, %len
  %cond = select i1 %cmp38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)
  %call40 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %fp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv36, i8* noundef %cond) #4
  %cmp41 = icmp slt i32 %call40, 1
  br i1 %cmp41, label %cleanup, label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call45 = call i32 @BIO_write(%struct.bio_st* noundef %fp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 noundef 1) #4
  %cmp46 = icmp sgt i32 %call45, 0
  %. = zext i1 %cmp46 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then22, %for.end, %if.end12, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ 0, %if.end12 ], [ %., %for.end ], [ 0, %if.then22 ], [ 0, %if.end34 ]
  call void @llvm.lifetime.end.p0i8(i64 133, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

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
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}

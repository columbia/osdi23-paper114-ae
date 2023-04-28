; ModuleID = 'crypto/engine/eng_fat.c'
source_filename = "crypto/engine/eng_fat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.engine_st = type { i8*, i8*, %struct.rsa_meth_st*, %struct.dsa_method*, %struct.dh_method*, %struct.ec_key_method_st*, %struct.rand_meth_st*, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)*, %struct.ENGINE_CMD_DEFN_st*, i32, i32, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.engine_st* }
%struct.rsa_meth_st = type opaque
%struct.dsa_method = type opaque
%struct.dh_method = type opaque
%struct.ec_key_method_st = type opaque
%struct.rand_meth_st = type { i32 (i8*, i32)*, i32 (i8*, i32)*, void ()*, i32 (i8*, i32, double)*, i32 (i8*, i32)*, i32 ()* }
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_pkey_method_st = type opaque
%struct.evp_pkey_asn1_method_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ui_method_st = type opaque
%struct.ssl_st = type opaque
%struct.stack_st_X509_NAME = type opaque
%struct.x509_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.ENGINE_CMD_DEFN_st = type { i32, i8*, i8*, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque

@.str = private unnamed_addr constant [24 x i8] c"crypto/engine/eng_fat.c\00", align 1
@__func__.ENGINE_set_default_string = private unnamed_addr constant [26 x i8] c"ENGINE_set_default_string\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"str=%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"RAND\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"CIPHERS\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"DIGESTS\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"PKEY\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"PKEY_CRYPTO\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"PKEY_ASN1\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_set_default(%struct.engine_st* noundef %e, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %and = and i32 %flags, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @ENGINE_set_default_ciphers(%struct.engine_st* noundef %e) #5
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %and2 = and i32 %flags, 128
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end8, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.end
  %call5 = tail call i32 @ENGINE_set_default_digests(%struct.engine_st* noundef %e) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return, label %if.end8

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  %and9 = and i32 %flags, 1
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end15, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end8
  %call12 = tail call i32 @ENGINE_set_default_RSA(%struct.engine_st* noundef %e) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %return, label %if.end15

if.end15:                                         ; preds = %land.lhs.true11, %if.end8
  %and16 = and i32 %flags, 2
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end22, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end15
  %call19 = tail call i32 @ENGINE_set_default_DSA(%struct.engine_st* noundef %e) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %return, label %if.end22

if.end22:                                         ; preds = %land.lhs.true18, %if.end15
  %and23 = and i32 %flags, 4
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end29, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.end22
  %call26 = tail call i32 @ENGINE_set_default_DH(%struct.engine_st* noundef %e) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %return, label %if.end29

if.end29:                                         ; preds = %land.lhs.true25, %if.end22
  %and30 = and i32 %flags, 2048
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end36, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.end29
  %call33 = tail call i32 @ENGINE_set_default_EC(%struct.engine_st* noundef %e) #5
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %return, label %if.end36

if.end36:                                         ; preds = %land.lhs.true32, %if.end29
  %and37 = and i32 %flags, 8
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end43, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.end36
  %call40 = tail call i32 @ENGINE_set_default_RAND(%struct.engine_st* noundef %e) #5
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %return, label %if.end43

if.end43:                                         ; preds = %land.lhs.true39, %if.end36
  %and44 = and i32 %flags, 512
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end50, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %if.end43
  %call47 = tail call i32 @ENGINE_set_default_pkey_meths(%struct.engine_st* noundef %e) #5
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %return, label %if.end50

if.end50:                                         ; preds = %land.lhs.true46, %if.end43
  %and51 = and i32 %flags, 1024
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end57, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %if.end50
  %call54 = tail call i32 @ENGINE_set_default_pkey_asn1_meths(%struct.engine_st* noundef %e) #5
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %return, label %if.end57

if.end57:                                         ; preds = %land.lhs.true53, %if.end50
  br label %return

return:                                           ; preds = %land.lhs.true53, %land.lhs.true46, %land.lhs.true39, %land.lhs.true32, %land.lhs.true25, %land.lhs.true18, %land.lhs.true11, %land.lhs.true4, %land.lhs.true, %if.end57
  %retval.0 = phi i32 [ 1, %if.end57 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true4 ], [ 0, %land.lhs.true11 ], [ 0, %land.lhs.true18 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true32 ], [ 0, %land.lhs.true39 ], [ 0, %land.lhs.true46 ], [ 0, %land.lhs.true53 ]
  ret i32 %retval.0
}

declare i32 @ENGINE_set_default_ciphers(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_default_digests(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_default_RSA(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_default_DSA(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_default_DH(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_default_EC(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_default_RAND(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_default_pkey_meths(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_default_pkey_asn1_meths(%struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_set_default_string(%struct.engine_st* noundef %e, i8* noundef %def_list) local_unnamed_addr #0 {
entry:
  %flags = alloca i32, align 4
  %0 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  store i32 0, i32* %flags, align 4, !tbaa !4
  %call = call i32 @CONF_parse_list(i8* noundef %def_list, i32 noundef 44, i32 noundef 1, i32 (i8*, i32, i8*)* noundef nonnull @int_def_cb, i8* noundef nonnull %0) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ENGINE_set_default_string, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 150, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef %def_list) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %flags, align 4, !tbaa !4
  %call1 = call i32 @ENGINE_set_default(%struct.engine_st* noundef %e, i32 noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @CONF_parse_list(i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @int_def_cb(i8* noundef readonly %alg, i32 noundef %len, i8* noundef %arg) #3 {
entry:
  %0 = bitcast i8* %arg to i32*
  %cmp = icmp eq i8* %alg, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %len to i64
  %call = tail call i32 @strncmp(i8* noundef nonnull %alg, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 noundef %conv) #8
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %cleanup.sink.split, label %if.else

if.else:                                          ; preds = %if.end
  %call5 = tail call i32 @strncmp(i8* noundef nonnull %alg, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 noundef %conv) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cleanup.sink.split, label %if.else10

if.else10:                                        ; preds = %if.else
  %call12 = tail call i32 @strncmp(i8* noundef nonnull %alg, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 noundef %conv) #8
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %cleanup.sink.split, label %if.else17

if.else17:                                        ; preds = %if.else10
  %call19 = tail call i32 @strncmp(i8* noundef nonnull %alg, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 noundef %conv) #8
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %cleanup.sink.split, label %if.else24

if.else24:                                        ; preds = %if.else17
  %call26 = tail call i32 @strncmp(i8* noundef nonnull %alg, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 noundef %conv) #8
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %cleanup.sink.split, label %if.else31

if.else31:                                        ; preds = %if.else24
  %call33 = tail call i32 @strncmp(i8* noundef nonnull %alg, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 noundef %conv) #8
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %cleanup.sink.split, label %if.else38

if.else38:                                        ; preds = %if.else31
  %call40 = tail call i32 @strncmp(i8* noundef nonnull %alg, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 noundef %conv) #8
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %cleanup.sink.split, label %if.else45

if.else45:                                        ; preds = %if.else38
  %call47 = tail call i32 @strncmp(i8* noundef nonnull %alg, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i64 noundef %conv) #8
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %cleanup.sink.split, label %if.else52

if.else52:                                        ; preds = %if.else45
  %call54 = tail call i32 @strncmp(i8* noundef nonnull %alg, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 noundef %conv) #8
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %cleanup.sink.split, label %if.else59

if.else59:                                        ; preds = %if.else52
  %call61 = tail call i32 @strncmp(i8* noundef nonnull %alg, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 noundef %conv) #8
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %cleanup.sink.split, label %if.else66

if.else66:                                        ; preds = %if.else59
  %call68 = tail call i32 @strncmp(i8* noundef nonnull %alg, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i64 noundef %conv) #8
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.else66, %if.else59, %if.else52, %if.else45, %if.else38, %if.else31, %if.else24, %if.else17, %if.else10, %if.else, %if.end
  %.sink117 = phi i32 [ 65535, %if.end ], [ 1, %if.else ], [ 2, %if.else10 ], [ 4, %if.else17 ], [ 2048, %if.else24 ], [ 8, %if.else31 ], [ 64, %if.else38 ], [ 128, %if.else45 ], [ 1536, %if.else52 ], [ 512, %if.else59 ], [ 1024, %if.else66 ]
  %1 = load i32, i32* %0, align 4, !tbaa !4
  %or = or i32 %1, %.sink117
  store i32 %or, i32* %0, align 4, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else66, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.else66 ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_register_complete(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ENGINE_register_ciphers(%struct.engine_st* noundef %e) #5
  %call1 = tail call i32 @ENGINE_register_digests(%struct.engine_st* noundef %e) #5
  %call2 = tail call i32 @ENGINE_register_RSA(%struct.engine_st* noundef %e) #5
  %call3 = tail call i32 @ENGINE_register_DSA(%struct.engine_st* noundef %e) #5
  %call4 = tail call i32 @ENGINE_register_DH(%struct.engine_st* noundef %e) #5
  %call5 = tail call i32 @ENGINE_register_EC(%struct.engine_st* noundef %e) #5
  %call6 = tail call i32 @ENGINE_register_RAND(%struct.engine_st* noundef %e) #5
  %call7 = tail call i32 @ENGINE_register_pkey_meths(%struct.engine_st* noundef %e) #5
  %call8 = tail call i32 @ENGINE_register_pkey_asn1_meths(%struct.engine_st* noundef %e) #5
  ret i32 1
}

declare i32 @ENGINE_register_ciphers(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_register_digests(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_register_RSA(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_register_DSA(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_register_DH(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_register_EC(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_register_RAND(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_register_pkey_meths(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_register_pkey_asn1_meths(%struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_register_all_complete() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.engine_st* @ENGINE_get_first() #5
  %tobool.not8 = icmp eq %struct.engine_st* %call, null
  br i1 %tobool.not8, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %e.09 = phi %struct.engine_st* [ %call3, %for.inc ], [ %call, %entry ]
  %flags = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e.09, i64 0, i32 19
  %0 = load i32, i32* %flags, align 8, !tbaa !8
  %and = and i32 %0, 8
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %call2 = tail call i32 @ENGINE_register_complete(%struct.engine_st* noundef nonnull %e.09) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %call3 = tail call %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef nonnull %e.09) #5
  %tobool.not = icmp eq %struct.engine_st* %call3, null
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %for.inc, %entry
  ret i32 1
}

declare %struct.engine_st* @ENGINE_get_first() local_unnamed_addr #1

declare %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!9, !5, i64 152}
!9 = !{!"engine_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !5, i64 152, !6, i64 156, !5, i64 160, !11, i64 168, !10, i64 184, !10, i64 192}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}

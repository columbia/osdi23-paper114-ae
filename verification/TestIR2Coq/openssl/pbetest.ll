; ModuleID = 'test/pbetest.c'
source_filename = "test/pbetest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c"test_pkcs5_pbe_rc4_md5\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"test_pkcs5_pbe_des_sha1\00", align 1
@pbe_ciphertext_rc4_md5 = internal constant [24 x i8] c"!\90\FA\EE\95fYE\FA\1E\9F\E2%\D2\F9q\94\E4=\C9|\B0\07#", align 16
@.str.2 = private unnamed_addr constant [15 x i8] c"test/pbetest.c\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"algor\00", align 1
@.str.5 = private unnamed_addr constant [90 x i8] c"PKCS5_pbe_set0_algor(algor, EVP_CIPHER_nid(cipher), pbe_iter, pbe_salt, sizeof(pbe_salt))\00", align 1
@pbe_salt = internal global [8 x i8] c"\01\02\03\04\05\06\07\08", align 1
@.str.6 = private unnamed_addr constant [93 x i8] c"PKCS5_PBE_keyivgen(ctx, pbe_password, strlen(pbe_password), algor->parameter, cipher, md, 1)\00", align 1
@pbe_password = internal constant [20 x i8] c"MyVoiceIsMyPassport\00", align 16
@.str.7 = private unnamed_addr constant [69 x i8] c"EVP_CipherUpdate(ctx, out, &i, pbe_plaintext, sizeof(pbe_plaintext))\00", align 1
@pbe_plaintext = internal global [24 x i8] c"We are all made of stars", align 16
@.str.8 = private unnamed_addr constant [37 x i8] c"EVP_CipherFinal_ex(ctx, out + i, &i)\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.11 = private unnamed_addr constant [93 x i8] c"PKCS5_PBE_keyivgen(ctx, pbe_password, strlen(pbe_password), algor->parameter, cipher, md, 0)\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"EVP_CipherUpdate(ctx, out, &i, exp, exp_len)\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"pbe_plaintext\00", align 1
@pbe_ciphertext_des_sha1 = internal constant [32 x i8] c"\CEK\B0\0A{H\D7\E3\9A\9FF\D6ABKD6E_`\8F<\D0U\D0\8D\A9\ABx[c\AF", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_pkcs5_pbe_rc4_md5) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_pkcs5_pbe_des_sha1) #4
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_pkcs5_pbe_rc4_md5() #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_rc4() #4
  %call1 = tail call %struct.evp_md_st* @EVP_md5() #4
  %call2 = tail call fastcc i32 @test_pkcs5_pbe(%struct.evp_cipher_st* noundef %call, %struct.evp_md_st* noundef %call1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @pbe_ciphertext_rc4_md5, i64 0, i64 0), i32 noundef 24) #5
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_pkcs5_pbe_des_sha1() #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_des_cbc() #4
  %call1 = tail call %struct.evp_md_st* @EVP_sha1() #4
  %call2 = tail call fastcc i32 @test_pkcs5_pbe(%struct.evp_cipher_st* noundef %call, %struct.evp_md_st* noundef %call1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @pbe_ciphertext_des_sha1, i64 0, i64 0), i32 noundef 32) #5
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_pkcs5_pbe(%struct.evp_cipher_st* noundef %cipher, %struct.evp_md_st* noundef %md, i8* noundef %exp, i32 noundef %exp_len) unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %out = alloca [32 x i8], align 16
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #6
  %call = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #4
  %2 = bitcast %struct.evp_cipher_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.X509_algor_st* @X509_ALGOR_new() #4
  %3 = bitcast %struct.X509_algor_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef %3) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @EVP_CIPHER_get_nid(%struct.evp_cipher_st* noundef %cipher) #4
  %call8 = tail call i32 @PKCS5_pbe_set0_algor(%struct.X509_algor_st* noundef %call2, i32 noundef %call7, i32 noundef 1000, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @pbe_salt, i64 0, i64 0), i32 noundef 8) #4
  %cmp = icmp ne i32 %call8, 0
  %conv = zext i1 %cmp to i32
  %call9 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %call11 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @pbe_password, i64 0, i64 0)) #7
  %conv12 = trunc i64 %call11 to i32
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call2, i64 0, i32 1
  %4 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !3
  %call13 = tail call i32 @PKCS5_PBE_keyivgen(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @pbe_password, i64 0, i64 0), i32 noundef %conv12, %struct.asn1_type_st* noundef %4, %struct.evp_cipher_st* noundef %cipher, %struct.evp_md_st* noundef %md, i32 noundef 1) #4
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv15) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %call19 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %1, i32* noundef nonnull %i, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @pbe_plaintext, i64 0, i64 0), i32 noundef 24) #4
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv21) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %if.end25

if.end25:                                         ; preds = %lor.lhs.false18
  %5 = load i32, i32* %i, align 4, !tbaa !8
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds [32 x i8], [32 x i8]* %out, i64 0, i64 %idx.ext
  %call27 = call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %add.ptr, i32* noundef nonnull %i) #4
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv29) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %if.end33

if.end33:                                         ; preds = %if.end25
  %6 = load i32, i32* %i, align 4, !tbaa !8
  %add = add nsw i32 %6, %5
  %conv35 = sext i32 %add to i64
  %7 = zext i32 %exp_len to i64
  %call37 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef %conv35, i8* noundef %exp, i64 noundef %7) #4
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %if.end40

if.end40:                                         ; preds = %if.end33
  %call41 = call i64 @strlen(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @pbe_password, i64 0, i64 0)) #7
  %conv42 = trunc i64 %call41 to i32
  %8 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !3
  %call44 = call i32 @PKCS5_PBE_keyivgen(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @pbe_password, i64 0, i64 0), i32 noundef %conv42, %struct.asn1_type_st* noundef %8, %struct.evp_cipher_st* noundef %cipher, %struct.evp_md_st* noundef %md, i32 noundef 0) #4
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv46) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.end40
  %call51 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %1, i32* noundef nonnull %i, i8* noundef %exp, i32 noundef %exp_len) #4
  %cmp52 = icmp ne i32 %call51, 0
  %conv53 = zext i1 %cmp52 to i32
  %call54 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv53) #4
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %if.end57

if.end57:                                         ; preds = %lor.lhs.false49
  %9 = load i32, i32* %i, align 4, !tbaa !8
  %idx.ext59 = sext i32 %9 to i64
  %add.ptr60 = getelementptr inbounds [32 x i8], [32 x i8]* %out, i64 0, i64 %idx.ext59
  %call61 = call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %add.ptr60, i32* noundef nonnull %i) #4
  %cmp62 = icmp ne i32 %call61, 0
  %conv63 = zext i1 %cmp62 to i32
  %call64 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv63) #4
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %if.end67

if.end67:                                         ; preds = %if.end57
  %call70 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef %idx.ext59, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @pbe_plaintext, i64 0, i64 0), i64 noundef 24) #4
  %tobool71.not = icmp ne i32 %call70, 0
  %spec.select = zext i1 %tobool71.not to i32
  br label %err

err:                                              ; preds = %if.end67, %if.end57, %if.end40, %lor.lhs.false49, %if.end33, %if.end25, %if.end6, %lor.lhs.false, %lor.lhs.false18, %if.end, %entry
  %ret.0 = phi i32 [ 0, %if.end57 ], [ 0, %lor.lhs.false49 ], [ 0, %if.end40 ], [ 0, %if.end33 ], [ 0, %if.end25 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false ], [ 0, %if.end6 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end67 ]
  %algor.0 = phi %struct.X509_algor_st* [ %call2, %if.end57 ], [ %call2, %lor.lhs.false49 ], [ %call2, %if.end40 ], [ %call2, %if.end33 ], [ %call2, %if.end25 ], [ %call2, %lor.lhs.false18 ], [ %call2, %lor.lhs.false ], [ %call2, %if.end6 ], [ %call2, %if.end ], [ null, %entry ], [ %call2, %if.end67 ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call) #4
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %algor.0) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %ret.0
}

declare dso_local %struct.evp_cipher_st* @EVP_rc4() local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_md5() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @PKCS5_pbe_set0_algor(%struct.X509_algor_st* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_CIPHER_get_nid(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare dso_local i32 @PKCS5_PBE_keyivgen(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32 noundef, %struct.asn1_type_st* noundef, %struct.evp_cipher_st* noundef, %struct.evp_md_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.evp_cipher_st* @EVP_des_cbc() local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 8}
!4 = !{!"X509_algor_st", !5, i64 0, !5, i64 8}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}

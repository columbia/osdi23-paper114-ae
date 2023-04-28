; ModuleID = 'crypto/evp/pbe_scrypt.c'
source_filename = "crypto/evp/pbe_scrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_kdf_st = type opaque
%struct.evp_kdf_ctx_st = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"crypto/evp/pbe_scrypt.c\00", align 1
@__func__.EVP_PBE_scrypt_ex = private unnamed_addr constant [18 x i8] c"EVP_PBE_scrypt_ex\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SCRYPT\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"maxmem_bytes\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PBE_scrypt_ex(i8* noundef %pass, i64 noundef %passlen, i8* noundef %salt, i64 noundef %saltlen, i64 noundef %N, i64 noundef %r, i64 noundef %p, i64 noundef %maxmem, i8* noundef %key, i64 noundef %keylen, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %N.addr = alloca i64, align 8
  %r.addr = alloca i64, align 8
  %p.addr = alloca i64, align 8
  %maxmem.addr = alloca i64, align 8
  %params = alloca [7 x %struct.ossl_param_st], align 16
  %tmp16 = alloca %struct.ossl_param_st, align 8
  %tmp18 = alloca %struct.ossl_param_st, align 8
  %tmp20 = alloca %struct.ossl_param_st, align 8
  %tmp22 = alloca %struct.ossl_param_st, align 8
  %tmp24 = alloca %struct.ossl_param_st, align 8
  %tmp25 = alloca %struct.ossl_param_st, align 8
  store i64 %N, i64* %N.addr, align 8, !tbaa !4
  store i64 %r, i64* %r.addr, align 8, !tbaa !4
  store i64 %p, i64* %p.addr, align 8, !tbaa !4
  store i64 %maxmem, i64* %maxmem.addr, align 8, !tbaa !4
  %0 = bitcast [7 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 280, i8* nonnull %0) #4
  %arraydecay = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %1 = or i64 %p, %r
  %.not = icmp ult i64 %1, 4294967296
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_PBE_scrypt_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 187, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i8* %pass, null
  %spec.select = select i1 %cmp2, i64 0, i64 %passlen
  %spec.select53 = select i1 %cmp2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %pass
  %cmp5 = icmp eq i8* %salt, null
  %saltlen.addr.0 = select i1 %cmp5, i64 0, i64 %saltlen
  %salt.addr.0 = select i1 %cmp5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %salt
  %cmp8 = icmp eq i64 %maxmem, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i64 33554432, i64* %maxmem.addr, align 8, !tbaa !4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %call = tail call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef %propq) #5
  %call11 = tail call %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef %call) #5
  tail call void @EVP_KDF_free(%struct.evp_kdf_st* noundef %call) #5
  %cmp12 = icmp eq %struct.evp_kdf_ctx_st* %call11, null
  br i1 %cmp12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end10
  %incdec.ptr = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params55 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params55, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %spec.select53, i64 noundef %spec.select) #5
  %incdec.ptr15 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %2 = bitcast %struct.ossl_param_st* %tmp16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #4
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef %salt.addr.0, i64 noundef %saltlen.addr.0) #5
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #4
  %incdec.ptr17 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %4 = bitcast %struct.ossl_param_st* %tmp18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #4
  call void @OSSL_PARAM_construct_uint64(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp18, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64* noundef nonnull %N.addr) #5
  %5 = bitcast %struct.ossl_param_st* %incdec.ptr15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #4
  %incdec.ptr19 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %6 = bitcast %struct.ossl_param_st* %tmp20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #4
  call void @OSSL_PARAM_construct_uint64(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp20, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i64* noundef nonnull %r.addr) #5
  %7 = bitcast %struct.ossl_param_st* %incdec.ptr17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #4
  %incdec.ptr21 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 5
  %8 = bitcast %struct.ossl_param_st* %tmp22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #4
  call void @OSSL_PARAM_construct_uint64(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64* noundef nonnull %p.addr) #5
  %9 = bitcast %struct.ossl_param_st* %incdec.ptr19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #4
  %incdec.ptr23 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 6
  %10 = bitcast %struct.ossl_param_st* %tmp24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #4
  call void @OSSL_PARAM_construct_uint64(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp24, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i64* noundef nonnull %maxmem.addr) #5
  %11 = bitcast %struct.ossl_param_st* %incdec.ptr21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #4
  %12 = bitcast %struct.ossl_param_st* %tmp25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp25) #5
  %13 = bitcast %struct.ossl_param_st* %incdec.ptr23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %13, i8* noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #4
  %call27 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef nonnull %call11, i8* noundef %key, i64 noundef %keylen, %struct.ossl_param_st* noundef nonnull %arraydecay) #5
  %cmp28.not = icmp eq i32 %call27, 1
  %spec.select54 = zext i1 %cmp28.not to i32
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef nonnull %call11) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %spec.select54, %if.end14 ], [ 0, %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 280, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

declare void @EVP_KDF_free(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @OSSL_PARAM_construct_uint64(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PBE_scrypt(i8* noundef %pass, i64 noundef %passlen, i8* noundef %salt, i64 noundef %saltlen, i64 noundef %N, i64 noundef %r, i64 noundef %p, i64 noundef %maxmem, i8* noundef %key, i64 noundef %keylen) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PBE_scrypt_ex(i8* noundef %pass, i64 noundef %passlen, i8* noundef %salt, i64 noundef %saltlen, i64 noundef %N, i64 noundef %r, i64 noundef %p, i64 noundef %maxmem, i8* noundef %key, i64 noundef %keylen, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret i32 %call
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{i64 0, i64 8, !9, i64 8, i64 4, !11, i64 16, i64 8, !9, i64 24, i64 8, !4, i64 32, i64 8, !4}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}

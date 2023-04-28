; ModuleID = 'crypto/dsa/dsa_gen.c'
source_filename = "crypto/dsa/dsa_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_st = type { i32, i32, %struct.ffc_params_st, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.dsa_method*, %struct.engine_st*, i8*, %struct.ossl_lib_ctx_st*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bignum_st = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.dsa_method = type { i8*, %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*)*, i32 (%struct.dsa_st*)*, i32, i8*, i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)*, i32 (%struct.dsa_st*)* }
%struct.DSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.bignum_ctx = type opaque
%struct.engine_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bn_gencb_st = type opaque

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dsa_generate_ffc_parameters(%struct.dsa_st* noundef %dsa, i32 noundef %type, i32 noundef %pbits, i32 noundef %qbits, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %res = alloca i32, align 4
  %0 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  %cmp = icmp eq i32 %type, 1
  %libctx = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 12
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2
  %conv = sext i32 %pbits to i64
  %conv1 = sext i32 %qbits to i64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @ossl_ffc_params_FIPS186_2_generate(%struct.ossl_lib_ctx_st* noundef %1, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i64 noundef %conv, i64 noundef %conv1, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef %cb) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %call6 = call i32 @ossl_ffc_params_FIPS186_4_generate(%struct.ossl_lib_ctx_st* noundef %1, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i64 noundef %conv, i64 noundef %conv1, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef %cb) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %call6, %if.else ]
  %cmp7 = icmp sgt i32 %ret.0, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %dirty_cnt = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 13
  %2 = load i64, i64* %dirty_cnt, align 8, !tbaa !13
  %inc = add i64 %2, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !13
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @ossl_ffc_params_FIPS186_2_generate(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i64 noundef, i64 noundef, i32* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_params_FIPS186_4_generate(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i64 noundef, i64 noundef, i32* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @DSA_generate_parameters_ex(%struct.dsa_st* noundef %dsa, i32 noundef %bits, i8* noundef %seed_in, i32 noundef %seed_len, i32* noundef %counter_ret, i64* noundef %h_ret, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 9
  %0 = load %struct.dsa_method*, %struct.dsa_method** %meth, align 8, !tbaa !14
  %dsa_paramgen = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %0, i64 0, i32 10
  %1 = load i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)*, i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)** %dsa_paramgen, align 8, !tbaa !15
  %tobool.not = icmp eq i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(%struct.dsa_st* noundef nonnull %dsa, i32 noundef %bits, i8* noundef %seed_in, i32 noundef %seed_len, i32* noundef %counter_ret, i64* noundef %h_ret, %struct.bn_gencb_st* noundef %cb) #4
  br label %return

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq i8* %seed_in, null
  br i1 %cmp.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %params = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2
  %conv = sext i32 %seed_len to i64
  %call3 = tail call i32 @ossl_ffc_params_set_validate_params(%struct.ffc_params_st* noundef nonnull %params, i8* noundef nonnull %seed_in, i64 noundef %conv, i32 noundef -1) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %return, label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %cmp7 = icmp slt i32 %bits, 2048
  %cmp10 = icmp slt i32 %seed_len, 21
  %or.cond = and i1 %cmp7, %cmp10
  br i1 %or.cond, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end6
  %call13 = tail call i32 @ossl_dsa_generate_ffc_parameters(%struct.dsa_st* noundef nonnull %dsa, i32 noundef 1, i32 noundef %bits, i32 noundef 160, %struct.bn_gencb_st* noundef %cb) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %return, label %if.end21

if.else:                                          ; preds = %if.end6
  %call17 = tail call i32 @ossl_dsa_generate_ffc_parameters(%struct.dsa_st* noundef nonnull %dsa, i32 noundef 0, i32 noundef %bits, i32 noundef 0, %struct.bn_gencb_st* noundef %cb) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %return, label %if.end21

if.end21:                                         ; preds = %if.else, %if.then12
  %cmp22.not = icmp eq i32* %counter_ret, null
  br i1 %cmp22.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end21
  %pcounter = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 6
  %2 = load i32, i32* %pcounter, align 8, !tbaa !17
  store i32 %2, i32* %counter_ret, align 4, !tbaa !18
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21
  %cmp27.not = icmp eq i64* %h_ret, null
  br i1 %cmp27.not, label %return, label %if.then29

if.then29:                                        ; preds = %if.end26
  %h = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 9
  %3 = load i32, i32* %h, align 4, !tbaa !19
  %conv31 = sext i32 %3 to i64
  store i64 %conv31, i64* %h_ret, align 8, !tbaa !20
  br label %return

return:                                           ; preds = %if.end26, %if.then29, %if.else, %if.then12, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true ], [ 0, %if.then12 ], [ 0, %if.else ], [ 1, %if.then29 ], [ 1, %if.end26 ]
  ret i32 %retval.0
}

declare i32 @ossl_ffc_params_set_validate_params(%struct.ffc_params_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !10, i64 176}
!5 = !{!"dsa_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 96, !10, i64 104, !6, i64 112, !10, i64 120, !7, i64 128, !12, i64 136, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !11, i64 184}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"ffc_params_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !10, i64 72, !10, i64 80}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!13 = !{!5, !11, i64 184}
!14 = !{!5, !10, i64 152}
!15 = !{!16, !10, i64 80}
!16 = !{!"dsa_method", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !6, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!17 = !{!5, !6, i64 56}
!18 = !{!6, !6, i64 0}
!19 = !{!5, !6, i64 68}
!20 = !{!11, !11, i64 0}

; ModuleID = 'crypto/dsa/dsa_sign.c'
source_filename = "crypto/dsa/dsa_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.bignum_st = type opaque
%struct.dsa_st = type { i32, i32, %struct.ffc_params_st, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.dsa_method*, %struct.engine_st*, i8*, %struct.ossl_lib_ctx_st*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bn_mont_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.dsa_method = type { i8*, {}*, i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*)*, i32 (%struct.dsa_st*)*, i32, i8*, i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)*, i32 (%struct.dsa_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.engine_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"crypto/dsa/dsa_sign.c\00", align 1
@__func__.DSA_SIG_new = private unnamed_addr constant [12 x i8] c"DSA_SIG_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.DSA_SIG_st* @DSA_do_sign(i8* noundef %dgst, i32 noundef %dlen, %struct.dsa_st* noundef %dsa) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 9
  %0 = load %struct.dsa_method*, %struct.dsa_method** %meth, align 8, !tbaa !4
  %dsa_do_sign = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %0, i64 0, i32 1
  %dsa_do_sign1 = bitcast {}** %dsa_do_sign to %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)**
  %1 = load %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)*, %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)** %dsa_do_sign1, align 8, !tbaa !13
  %call = tail call %struct.DSA_SIG_st* %1(i8* noundef %dgst, i32 noundef %dlen, %struct.dsa_st* noundef %dsa) #5
  ret %struct.DSA_SIG_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @DSA_sign_setup(%struct.dsa_st* noundef %dsa, %struct.bignum_ctx* noundef %ctx_in, %struct.bignum_st** noundef %kinvp, %struct.bignum_st** noundef %rp) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 9
  %0 = load %struct.dsa_method*, %struct.dsa_method** %meth, align 8, !tbaa !4
  %dsa_sign_setup = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %0, i64 0, i32 2
  %1 = load i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)** %dsa_sign_setup, align 8, !tbaa !15
  %call = tail call i32 %1(%struct.dsa_st* noundef %dsa, %struct.bignum_ctx* noundef %ctx_in, %struct.bignum_st** noundef %kinvp, %struct.bignum_st** noundef %rp) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.DSA_SIG_st* @DSA_SIG_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 36) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.DSA_SIG_new, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 786688, i8* noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = bitcast i8* %call to %struct.DSA_SIG_st*
  ret %struct.DSA_SIG_st* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @DSA_SIG_free(%struct.DSA_SIG_st* noundef %sig) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.DSA_SIG_st* %sig, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.DSA_SIG_st, %struct.DSA_SIG_st* %sig, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !16
  tail call void @BN_clear_free(%struct.bignum_st* noundef %0) #5
  %s = getelementptr inbounds %struct.DSA_SIG_st, %struct.DSA_SIG_st* %sig, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !18
  tail call void @BN_clear_free(%struct.bignum_st* noundef %1) #5
  %2 = bitcast %struct.DSA_SIG_st* %sig to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 48) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.DSA_SIG_st* @d2i_DSA_SIG(%struct.DSA_SIG_st** noundef %psig, i8** noundef %ppin, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i64 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.DSA_SIG_st** %psig, null
  br i1 %cmp1.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %0 = load %struct.DSA_SIG_st*, %struct.DSA_SIG_st** %psig, align 8, !tbaa !19
  %cmp2.not = icmp eq %struct.DSA_SIG_st* %0, null
  br i1 %cmp2.not, label %if.else, label %if.end7

if.else:                                          ; preds = %land.lhs.true, %if.end
  %call = tail call %struct.DSA_SIG_st* @DSA_SIG_new() #6
  %cmp4 = icmp eq %struct.DSA_SIG_st* %call, null
  br i1 %cmp4, label %cleanup, label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.else
  %sig.0 = phi %struct.DSA_SIG_st* [ %call, %if.else ], [ %0, %land.lhs.true ]
  %r = getelementptr inbounds %struct.DSA_SIG_st, %struct.DSA_SIG_st* %sig.0, i64 0, i32 0
  %1 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !16
  %cmp8 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end7
  %call10 = tail call %struct.bignum_st* @BN_new() #5
  store %struct.bignum_st* %call10, %struct.bignum_st** %r, align 8, !tbaa !16
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7
  %2 = phi %struct.bignum_st* [ %call10, %if.then9 ], [ %1, %if.end7 ]
  %s = getelementptr inbounds %struct.DSA_SIG_st, %struct.DSA_SIG_st* %sig.0, i64 0, i32 1
  %3 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !18
  %cmp13 = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end12
  %call15 = tail call %struct.bignum_st* @BN_new() #5
  store %struct.bignum_st* %call15, %struct.bignum_st** %s, align 8, !tbaa !18
  %.pre = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !16
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12
  %4 = phi %struct.bignum_st* [ %call15, %if.then14 ], [ %3, %if.end12 ]
  %5 = phi %struct.bignum_st* [ %.pre, %if.then14 ], [ %2, %if.end12 ]
  %call20 = tail call i64 @ossl_decode_der_dsa_sig(%struct.bignum_st* noundef %5, %struct.bignum_st* noundef %4, i8** noundef %ppin, i64 noundef %len) #5
  %cmp21 = icmp eq i64 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end17
  br i1 %cmp1.not, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then22
  %6 = load %struct.DSA_SIG_st*, %struct.DSA_SIG_st** %psig, align 8, !tbaa !19
  %cmp24 = icmp eq %struct.DSA_SIG_st* %6, null
  br i1 %cmp24, label %if.then25, label %cleanup

if.then25:                                        ; preds = %lor.lhs.false, %if.then22
  tail call void @DSA_SIG_free(%struct.DSA_SIG_st* noundef nonnull %sig.0) #6
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  br i1 %cmp1.not, label %cleanup, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %if.end27
  %7 = load %struct.DSA_SIG_st*, %struct.DSA_SIG_st** %psig, align 8, !tbaa !19
  %cmp30 = icmp eq %struct.DSA_SIG_st* %7, null
  br i1 %cmp30, label %if.then31, label %cleanup

if.then31:                                        ; preds = %land.lhs.true29
  store %struct.DSA_SIG_st* %sig.0, %struct.DSA_SIG_st** %psig, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %land.lhs.true29, %if.then31, %lor.lhs.false, %if.then25, %if.else, %entry
  %retval.0 = phi %struct.DSA_SIG_st* [ null, %entry ], [ null, %if.else ], [ null, %if.then25 ], [ null, %lor.lhs.false ], [ %sig.0, %if.then31 ], [ %sig.0, %land.lhs.true29 ], [ %sig.0, %if.end27 ]
  ret %struct.DSA_SIG_st* %retval.0
}

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare i64 @ossl_decode_der_dsa_sig(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_DSA_SIG(%struct.DSA_SIG_st* nocapture noundef readonly %sig, i8** noundef %ppout) local_unnamed_addr #0 {
entry:
  %encoded_len = alloca i64, align 8
  %pkt = alloca %struct.wpacket_st, align 8
  %0 = bitcast i64* %encoded_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.wpacket_st* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #7
  %cmp = icmp eq i8** %ppout, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @WPACKET_init_null(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 0) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end16

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %ppout, align 8, !tbaa !19
  %cmp2 = icmp eq i8* %2, null
  br i1 %cmp2, label %if.then3, label %if.else10

if.then3:                                         ; preds = %if.else
  %call4 = tail call %struct.buf_mem_st* @BUF_MEM_new() #5
  %cmp5 = icmp eq %struct.buf_mem_st* %call4, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then3
  %call6 = call i32 @WPACKET_init_len(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef nonnull %call4, i64 noundef 0) #5
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end16

if.then8:                                         ; preds = %lor.lhs.false, %if.then3
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef %call4) #5
  br label %cleanup

if.else10:                                        ; preds = %if.else
  %call11 = call i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef nonnull %pkt, i8* noundef nonnull %2, i64 noundef -1, i64 noundef 0) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false, %if.else10, %if.then
  %buf.0 = phi %struct.buf_mem_st* [ null, %if.then ], [ %call4, %lor.lhs.false ], [ null, %if.else10 ]
  %r = getelementptr inbounds %struct.DSA_SIG_st, %struct.DSA_SIG_st* %sig, i64 0, i32 0
  %3 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !16
  %s = getelementptr inbounds %struct.DSA_SIG_st, %struct.DSA_SIG_st* %sig, i64 0, i32 1
  %4 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !18
  %call17 = call i32 @ossl_encode_der_dsa_sig(%struct.wpacket_st* noundef nonnull %pkt, %struct.bignum_st* noundef %3, %struct.bignum_st* noundef %4) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then25, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end16
  %call20 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %encoded_len) #5
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then25, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %call23 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %lor.lhs.false22, %lor.lhs.false19, %if.end16
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef %buf.0) #5
  call void @WPACKET_cleanup(%struct.wpacket_st* noundef nonnull %pkt) #5
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false22
  br i1 %cmp, label %if.end34, label %if.then28

if.then28:                                        ; preds = %if.end26
  %5 = load i8*, i8** %ppout, align 8, !tbaa !19
  %cmp29 = icmp eq i8* %5, null
  br i1 %cmp29, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.then28
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %buf.0, i64 0, i32 1
  %6 = load i8*, i8** %data, align 8, !tbaa !20
  store i8* %6, i8** %ppout, align 8, !tbaa !19
  store i8* null, i8** %data, align 8, !tbaa !20
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef %buf.0) #5
  br label %if.end34

if.else32:                                        ; preds = %if.then28
  %7 = load i64, i64* %encoded_len, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %7
  store i8* %add.ptr, i8** %ppout, align 8, !tbaa !19
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.else32, %if.end26
  %8 = load i64, i64* %encoded_len, align 8, !tbaa !22
  %conv = trunc i64 %8 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else10, %if.then, %if.end34, %if.then25, %if.then8
  %retval.0 = phi i32 [ %conv, %if.end34 ], [ -1, %if.then25 ], [ -1, %if.then8 ], [ -1, %if.then ], [ -1, %if.else10 ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @WPACKET_init_null(%struct.wpacket_st* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.buf_mem_st* @BUF_MEM_new() local_unnamed_addr #2

declare i32 @WPACKET_init_len(%struct.wpacket_st* noundef, %struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #2

declare void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #2

declare i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ossl_encode_der_dsa_sig(%struct.wpacket_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef, i64* noundef) local_unnamed_addr #2

declare i32 @WPACKET_finish(%struct.wpacket_st* noundef) local_unnamed_addr #2

declare void @WPACKET_cleanup(%struct.wpacket_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @DSA_size(%struct.dsa_st* nocapture noundef readonly %dsa) local_unnamed_addr #0 {
entry:
  %sig = alloca %struct.DSA_SIG_st, align 8
  %0 = bitcast %struct.DSA_SIG_st* %sig to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  %q = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !23
  %cmp.not = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %s = getelementptr inbounds %struct.DSA_SIG_st, %struct.DSA_SIG_st* %sig, i64 0, i32 1
  store %struct.bignum_st* %1, %struct.bignum_st** %s, align 8, !tbaa !18
  %r = getelementptr inbounds %struct.DSA_SIG_st, %struct.DSA_SIG_st* %sig, i64 0, i32 0
  store %struct.bignum_st* %1, %struct.bignum_st** %r, align 8, !tbaa !16
  %call = call i32 @i2d_DSA_SIG(%struct.DSA_SIG_st* noundef nonnull %sig, i8** noundef null) #6
  %2 = icmp sgt i32 %call, 0
  %spec.store.select = select i1 %2, i32 %call, i32 0
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %spec.store.select, %if.then ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @DSA_SIG_get0(%struct.DSA_SIG_st* nocapture noundef readonly %sig, %struct.bignum_st** noundef writeonly %pr, %struct.bignum_st** noundef writeonly %ps) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.bignum_st** %pr, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %r = getelementptr inbounds %struct.DSA_SIG_st, %struct.DSA_SIG_st* %sig, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !16
  store %struct.bignum_st* %0, %struct.bignum_st** %pr, align 8, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq %struct.bignum_st** %ps, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %s = getelementptr inbounds %struct.DSA_SIG_st, %struct.DSA_SIG_st* %sig, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !18
  store %struct.bignum_st* %1, %struct.bignum_st** %ps, align 8, !tbaa !19
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @DSA_SIG_set0(%struct.DSA_SIG_st* nocapture noundef %sig, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %s) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %r, null
  %cmp1 = icmp eq %struct.bignum_st* %s, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %r2 = getelementptr inbounds %struct.DSA_SIG_st, %struct.DSA_SIG_st* %sig, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %r2, align 8, !tbaa !16
  tail call void @BN_clear_free(%struct.bignum_st* noundef %0) #5
  %s3 = getelementptr inbounds %struct.DSA_SIG_st, %struct.DSA_SIG_st* %sig, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %s3, align 8, !tbaa !18
  tail call void @BN_clear_free(%struct.bignum_st* noundef %1) #5
  store %struct.bignum_st* %r, %struct.bignum_st** %r2, align 8, !tbaa !16
  store %struct.bignum_st* %s, %struct.bignum_st** %s3, align 8, !tbaa !18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dsa_sign_int(i32 %type, i8* noundef %dgst, i32 noundef %dlen, i8* noundef %sig, i32* nocapture noundef writeonly %siglen, %struct.dsa_st* noundef %dsa) local_unnamed_addr #0 {
entry:
  %sig.addr = alloca i8*, align 8
  store i8* %sig, i8** %sig.addr, align 8, !tbaa !19
  %libctx = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 12
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !24
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %meth = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 9
  %1 = load %struct.dsa_method*, %struct.dsa_method** %meth, align 8, !tbaa !4
  %call = tail call %struct.dsa_method* @DSA_get_default_method() #5
  %cmp1.not = icmp eq %struct.dsa_method* %1, %call
  br i1 %cmp1.not, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call2 = tail call %struct.DSA_SIG_st* @DSA_do_sign(i8* noundef %dgst, i32 noundef %dlen, %struct.dsa_st* noundef nonnull %dsa) #6
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %call3 = tail call %struct.DSA_SIG_st* @ossl_dsa_do_sign_int(i8* noundef %dgst, i32 noundef %dlen, %struct.dsa_st* noundef nonnull %dsa) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %s.0 = phi %struct.DSA_SIG_st* [ %call2, %if.then ], [ %call3, %if.else ]
  %cmp4 = icmp eq %struct.DSA_SIG_st* %s.0, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %siglen, align 4, !tbaa !25
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @i2d_DSA_SIG(%struct.DSA_SIG_st* noundef nonnull %s.0, i8** noundef nonnull %sig.addr) #6
  store i32 %call7, i32* %siglen, align 4, !tbaa !25
  call void @DSA_SIG_free(%struct.DSA_SIG_st* noundef nonnull %s.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

declare %struct.dsa_method* @DSA_get_default_method() local_unnamed_addr #2

declare %struct.DSA_SIG_st* @ossl_dsa_do_sign_int(i8* noundef, i32 noundef, %struct.dsa_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @DSA_sign(i32 noundef %type, i8* noundef %dgst, i32 noundef %dlen, i8* noundef %sig, i32* nocapture noundef writeonly %siglen, %struct.dsa_st* noundef %dsa) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_dsa_sign_int(i32 undef, i8* noundef %dgst, i32 noundef %dlen, i8* noundef %sig, i32* noundef %siglen, %struct.dsa_st* noundef %dsa) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @DSA_verify(i32 noundef %type, i8* noundef %dgst, i32 noundef %dgst_len, i8* noundef %sigbuf, i32 noundef %siglen, %struct.dsa_st* noundef %dsa) local_unnamed_addr #0 {
entry:
  %s = alloca %struct.DSA_SIG_st*, align 8
  %p = alloca i8*, align 8
  %der = alloca i8*, align 8
  %0 = bitcast %struct.DSA_SIG_st** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store i8* %sigbuf, i8** %p, align 8, !tbaa !19
  %2 = bitcast i8** %der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store i8* null, i8** %der, align 8, !tbaa !19
  %call = tail call %struct.DSA_SIG_st* @DSA_SIG_new() #6
  store %struct.DSA_SIG_st* %call, %struct.DSA_SIG_st** %s, align 8, !tbaa !19
  %cmp = icmp eq %struct.DSA_SIG_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %siglen to i64
  %call1 = call %struct.DSA_SIG_st* @d2i_DSA_SIG(%struct.DSA_SIG_st** noundef nonnull %s, i8** noundef nonnull %p, i64 noundef %conv) #6
  %cmp2 = icmp eq %struct.DSA_SIG_st* %call1, null
  br i1 %cmp2, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %3 = load %struct.DSA_SIG_st*, %struct.DSA_SIG_st** %s, align 8, !tbaa !19
  %call6 = call i32 @i2d_DSA_SIG(%struct.DSA_SIG_st* noundef %3, i8** noundef nonnull %der) #6
  %cmp7.not = icmp eq i32 %call6, %siglen
  br i1 %cmp7.not, label %lor.lhs.false, label %err

lor.lhs.false:                                    ; preds = %if.end5
  %4 = load i8*, i8** %der, align 8, !tbaa !19
  %call10 = call i32 @memcmp(i8* noundef %sigbuf, i8* noundef %4, i64 noundef %conv) #8
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %err

if.end12:                                         ; preds = %lor.lhs.false
  %5 = load %struct.DSA_SIG_st*, %struct.DSA_SIG_st** %s, align 8, !tbaa !19
  %call13 = call i32 @DSA_do_verify(i8* noundef %dgst, i32 noundef %dgst_len, %struct.DSA_SIG_st* noundef %5, %struct.dsa_st* noundef %dsa) #5
  br label %err

err:                                              ; preds = %if.end5, %lor.lhs.false, %if.end, %if.end12
  %derlen.0 = phi i32 [ -1, %if.end ], [ %call6, %if.end5 ], [ %siglen, %lor.lhs.false ], [ %siglen, %if.end12 ]
  %ret.0 = phi i32 [ -1, %if.end ], [ -1, %if.end5 ], [ -1, %lor.lhs.false ], [ %call13, %if.end12 ]
  %6 = load i8*, i8** %der, align 8, !tbaa !19
  %conv14 = sext i32 %derlen.0 to i64
  call void @CRYPTO_clear_free(i8* noundef %6, i64 noundef %conv14, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 205) #5
  %7 = load %struct.DSA_SIG_st*, %struct.DSA_SIG_st** %s, align 8, !tbaa !19
  call void @DSA_SIG_free(%struct.DSA_SIG_st* noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @DSA_do_verify(i8* noundef, i32 noundef, %struct.DSA_SIG_st* noundef, %struct.dsa_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !10, i64 152}
!5 = !{!"dsa_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 96, !10, i64 104, !6, i64 112, !10, i64 120, !7, i64 128, !12, i64 136, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !11, i64 184}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"ffc_params_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !10, i64 72, !10, i64 80}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!13 = !{!14, !10, i64 8}
!14 = !{!"dsa_method", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !6, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!15 = !{!14, !10, i64 16}
!16 = !{!17, !10, i64 0}
!17 = !{!"DSA_SIG_st", !10, i64 0, !10, i64 8}
!18 = !{!17, !10, i64 8}
!19 = !{!10, !10, i64 0}
!20 = !{!21, !10, i64 8}
!21 = !{!"buf_mem_st", !11, i64 0, !10, i64 8, !11, i64 16, !11, i64 24}
!22 = !{!11, !11, i64 0}
!23 = !{!5, !10, i64 16}
!24 = !{!5, !10, i64 176}
!25 = !{!6, !6, i64 0}

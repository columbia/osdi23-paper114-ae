; ModuleID = 'crypto/evp/e_chacha20_poly1305.c'
source_filename = "crypto/evp/e_chacha20_poly1305.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8], i8*, %struct.evp_cipher_st* }
%struct.engine_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.EVP_CHACHA_KEY = type { %union.anon.0, [4 x i32], [64 x i8], i32 }
%union.anon.0 = type { double, [24 x i8] }
%struct.EVP_CHACHA_AEAD_CTX = type { %struct.EVP_CHACHA_KEY, [3 x i32], [16 x i8], [16 x i8], %struct.anon, i32, i32, i32, i32, i64 }
%struct.anon = type { i64, i64 }
%struct.poly1305_context = type { [24 x double], [4 x i32], [16 x i8], i64, %struct.anon.1 }
%struct.anon.1 = type { void (i8*, i8*, i64, i32)*, void (i8*, i8*, i32*)* }

@chacha20 = internal constant %struct.evp_cipher_st { i32 1019, i32 1, i32 32, i32 16, i64 48, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @chacha_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @chacha_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 120, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@chacha20_poly1305 = internal global %struct.evp_cipher_st { i32 1018, i32 1, i32 32, i32 12, i64 3148912, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @chacha20_poly1305_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @chacha20_poly1305_cipher, i32 (%struct.evp_cipher_ctx_st*)* @chacha20_poly1305_cleanup, i32 0, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @chacha20_poly1305_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@zero = internal constant [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [33 x i8] c"crypto/evp/e_chacha20_poly1305.c\00", align 1
@__func__.chacha20_poly1305_ctrl = private unnamed_addr constant [23 x i8] c"chacha20_poly1305_ctrl\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_chacha20() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @chacha20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_chacha20_poly1305() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @chacha20_poly1305
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @chacha_init_key(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx, i8* noundef readonly %user_key, i8* noundef readonly %iv, i32 noundef %enc) #1 {
entry:
  %cipher_data = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 11
  %0 = bitcast i8** %cipher_data to %struct.EVP_CHACHA_KEY**
  %1 = load %struct.EVP_CHACHA_KEY*, %struct.EVP_CHACHA_KEY** %0, align 8, !tbaa !4
  %tobool.not = icmp eq i8* %user_key, null
  br i1 %tobool.not, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %d = bitcast %struct.EVP_CHACHA_KEY* %1 to [8 x i32]*
  %2 = load i8, i8* %user_key, align 1, !tbaa !11
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %user_key, i64 1
  %3 = load i8, i8* %arrayidx3, align 1, !tbaa !11
  %conv4 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl, %conv
  %arrayidx7 = getelementptr inbounds i8, i8* %user_key, i64 2
  %4 = load i8, i8* %arrayidx7, align 1, !tbaa !11
  %conv8 = zext i8 %4 to i32
  %shl9 = shl nuw nsw i32 %conv8, 16
  %or10 = or i32 %or, %shl9
  %arrayidx13 = getelementptr inbounds i8, i8* %user_key, i64 3
  %5 = load i8, i8* %arrayidx13, align 1, !tbaa !11
  %conv14 = zext i8 %5 to i32
  %shl15 = shl nuw i32 %conv14, 24
  %or16 = or i32 %or10, %shl15
  %arrayidx18 = bitcast %struct.EVP_CHACHA_KEY* %1 to i32*
  store i32 %or16, i32* %arrayidx18, align 4, !tbaa !11
  %add.ptr.1 = getelementptr inbounds i8, i8* %user_key, i64 4
  %6 = load i8, i8* %add.ptr.1, align 1, !tbaa !11
  %conv.1 = zext i8 %6 to i32
  %arrayidx3.1 = getelementptr inbounds i8, i8* %user_key, i64 5
  %7 = load i8, i8* %arrayidx3.1, align 1, !tbaa !11
  %conv4.1 = zext i8 %7 to i32
  %shl.1 = shl nuw nsw i32 %conv4.1, 8
  %or.1 = or i32 %shl.1, %conv.1
  %arrayidx7.1 = getelementptr inbounds i8, i8* %user_key, i64 6
  %8 = load i8, i8* %arrayidx7.1, align 1, !tbaa !11
  %conv8.1 = zext i8 %8 to i32
  %shl9.1 = shl nuw nsw i32 %conv8.1, 16
  %or10.1 = or i32 %or.1, %shl9.1
  %arrayidx13.1 = getelementptr inbounds i8, i8* %user_key, i64 7
  %9 = load i8, i8* %arrayidx13.1, align 1, !tbaa !11
  %conv14.1 = zext i8 %9 to i32
  %shl15.1 = shl nuw i32 %conv14.1, 24
  %or16.1 = or i32 %or10.1, %shl15.1
  %arrayidx18.1 = getelementptr inbounds [8 x i32], [8 x i32]* %d, i64 0, i64 1
  store i32 %or16.1, i32* %arrayidx18.1, align 4, !tbaa !11
  %add.ptr.2 = getelementptr inbounds i8, i8* %user_key, i64 8
  %10 = load i8, i8* %add.ptr.2, align 1, !tbaa !11
  %conv.2 = zext i8 %10 to i32
  %arrayidx3.2 = getelementptr inbounds i8, i8* %user_key, i64 9
  %11 = load i8, i8* %arrayidx3.2, align 1, !tbaa !11
  %conv4.2 = zext i8 %11 to i32
  %shl.2 = shl nuw nsw i32 %conv4.2, 8
  %or.2 = or i32 %shl.2, %conv.2
  %arrayidx7.2 = getelementptr inbounds i8, i8* %user_key, i64 10
  %12 = load i8, i8* %arrayidx7.2, align 1, !tbaa !11
  %conv8.2 = zext i8 %12 to i32
  %shl9.2 = shl nuw nsw i32 %conv8.2, 16
  %or10.2 = or i32 %or.2, %shl9.2
  %arrayidx13.2 = getelementptr inbounds i8, i8* %user_key, i64 11
  %13 = load i8, i8* %arrayidx13.2, align 1, !tbaa !11
  %conv14.2 = zext i8 %13 to i32
  %shl15.2 = shl nuw i32 %conv14.2, 24
  %or16.2 = or i32 %or10.2, %shl15.2
  %arrayidx18.2 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 0, i32 1
  %14 = bitcast [24 x i8]* %arrayidx18.2 to i32*
  store i32 %or16.2, i32* %14, align 4, !tbaa !11
  %add.ptr.3 = getelementptr inbounds i8, i8* %user_key, i64 12
  %15 = load i8, i8* %add.ptr.3, align 1, !tbaa !11
  %conv.3 = zext i8 %15 to i32
  %arrayidx3.3 = getelementptr inbounds i8, i8* %user_key, i64 13
  %16 = load i8, i8* %arrayidx3.3, align 1, !tbaa !11
  %conv4.3 = zext i8 %16 to i32
  %shl.3 = shl nuw nsw i32 %conv4.3, 8
  %or.3 = or i32 %shl.3, %conv.3
  %arrayidx7.3 = getelementptr inbounds i8, i8* %user_key, i64 14
  %17 = load i8, i8* %arrayidx7.3, align 1, !tbaa !11
  %conv8.3 = zext i8 %17 to i32
  %shl9.3 = shl nuw nsw i32 %conv8.3, 16
  %or10.3 = or i32 %or.3, %shl9.3
  %arrayidx13.3 = getelementptr inbounds i8, i8* %user_key, i64 15
  %18 = load i8, i8* %arrayidx13.3, align 1, !tbaa !11
  %conv14.3 = zext i8 %18 to i32
  %shl15.3 = shl nuw i32 %conv14.3, 24
  %or16.3 = or i32 %or10.3, %shl15.3
  %arrayidx18.3 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 0, i32 1, i64 4
  %19 = bitcast i8* %arrayidx18.3 to i32*
  store i32 %or16.3, i32* %19, align 4, !tbaa !11
  %add.ptr.4 = getelementptr inbounds i8, i8* %user_key, i64 16
  %20 = load i8, i8* %add.ptr.4, align 1, !tbaa !11
  %conv.4 = zext i8 %20 to i32
  %arrayidx3.4 = getelementptr inbounds i8, i8* %user_key, i64 17
  %21 = load i8, i8* %arrayidx3.4, align 1, !tbaa !11
  %conv4.4 = zext i8 %21 to i32
  %shl.4 = shl nuw nsw i32 %conv4.4, 8
  %or.4 = or i32 %shl.4, %conv.4
  %arrayidx7.4 = getelementptr inbounds i8, i8* %user_key, i64 18
  %22 = load i8, i8* %arrayidx7.4, align 1, !tbaa !11
  %conv8.4 = zext i8 %22 to i32
  %shl9.4 = shl nuw nsw i32 %conv8.4, 16
  %or10.4 = or i32 %or.4, %shl9.4
  %arrayidx13.4 = getelementptr inbounds i8, i8* %user_key, i64 19
  %23 = load i8, i8* %arrayidx13.4, align 1, !tbaa !11
  %conv14.4 = zext i8 %23 to i32
  %shl15.4 = shl nuw i32 %conv14.4, 24
  %or16.4 = or i32 %or10.4, %shl15.4
  %arrayidx18.4 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 0, i32 1, i64 8
  %24 = bitcast i8* %arrayidx18.4 to i32*
  store i32 %or16.4, i32* %24, align 4, !tbaa !11
  %add.ptr.5 = getelementptr inbounds i8, i8* %user_key, i64 20
  %25 = load i8, i8* %add.ptr.5, align 1, !tbaa !11
  %conv.5 = zext i8 %25 to i32
  %arrayidx3.5 = getelementptr inbounds i8, i8* %user_key, i64 21
  %26 = load i8, i8* %arrayidx3.5, align 1, !tbaa !11
  %conv4.5 = zext i8 %26 to i32
  %shl.5 = shl nuw nsw i32 %conv4.5, 8
  %or.5 = or i32 %shl.5, %conv.5
  %arrayidx7.5 = getelementptr inbounds i8, i8* %user_key, i64 22
  %27 = load i8, i8* %arrayidx7.5, align 1, !tbaa !11
  %conv8.5 = zext i8 %27 to i32
  %shl9.5 = shl nuw nsw i32 %conv8.5, 16
  %or10.5 = or i32 %or.5, %shl9.5
  %arrayidx13.5 = getelementptr inbounds i8, i8* %user_key, i64 23
  %28 = load i8, i8* %arrayidx13.5, align 1, !tbaa !11
  %conv14.5 = zext i8 %28 to i32
  %shl15.5 = shl nuw i32 %conv14.5, 24
  %or16.5 = or i32 %or10.5, %shl15.5
  %arrayidx18.5 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 0, i32 1, i64 12
  %29 = bitcast i8* %arrayidx18.5 to i32*
  store i32 %or16.5, i32* %29, align 4, !tbaa !11
  %add.ptr.6 = getelementptr inbounds i8, i8* %user_key, i64 24
  %30 = load i8, i8* %add.ptr.6, align 1, !tbaa !11
  %conv.6 = zext i8 %30 to i32
  %arrayidx3.6 = getelementptr inbounds i8, i8* %user_key, i64 25
  %31 = load i8, i8* %arrayidx3.6, align 1, !tbaa !11
  %conv4.6 = zext i8 %31 to i32
  %shl.6 = shl nuw nsw i32 %conv4.6, 8
  %or.6 = or i32 %shl.6, %conv.6
  %arrayidx7.6 = getelementptr inbounds i8, i8* %user_key, i64 26
  %32 = load i8, i8* %arrayidx7.6, align 1, !tbaa !11
  %conv8.6 = zext i8 %32 to i32
  %shl9.6 = shl nuw nsw i32 %conv8.6, 16
  %or10.6 = or i32 %or.6, %shl9.6
  %arrayidx13.6 = getelementptr inbounds i8, i8* %user_key, i64 27
  %33 = load i8, i8* %arrayidx13.6, align 1, !tbaa !11
  %conv14.6 = zext i8 %33 to i32
  %shl15.6 = shl nuw i32 %conv14.6, 24
  %or16.6 = or i32 %or10.6, %shl15.6
  %arrayidx18.6 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 0, i32 1, i64 16
  %34 = bitcast i8* %arrayidx18.6 to i32*
  store i32 %or16.6, i32* %34, align 4, !tbaa !11
  %add.ptr.7 = getelementptr inbounds i8, i8* %user_key, i64 28
  %35 = load i8, i8* %add.ptr.7, align 1, !tbaa !11
  %conv.7 = zext i8 %35 to i32
  %arrayidx3.7 = getelementptr inbounds i8, i8* %user_key, i64 29
  %36 = load i8, i8* %arrayidx3.7, align 1, !tbaa !11
  %conv4.7 = zext i8 %36 to i32
  %shl.7 = shl nuw nsw i32 %conv4.7, 8
  %or.7 = or i32 %shl.7, %conv.7
  %arrayidx7.7 = getelementptr inbounds i8, i8* %user_key, i64 30
  %37 = load i8, i8* %arrayidx7.7, align 1, !tbaa !11
  %conv8.7 = zext i8 %37 to i32
  %shl9.7 = shl nuw nsw i32 %conv8.7, 16
  %or10.7 = or i32 %or.7, %shl9.7
  %arrayidx13.7 = getelementptr inbounds i8, i8* %user_key, i64 31
  %38 = load i8, i8* %arrayidx13.7, align 1, !tbaa !11
  %conv14.7 = zext i8 %38 to i32
  %shl15.7 = shl nuw i32 %conv14.7, 24
  %or16.7 = or i32 %or10.7, %shl15.7
  %arrayidx18.7 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 0, i32 1, i64 20
  %39 = bitcast i8* %arrayidx18.7 to i32*
  store i32 %or16.7, i32* %39, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %for.cond.preheader, %entry
  %tobool19.not = icmp eq i8* %iv, null
  br i1 %tobool19.not, label %if.end53, label %for.body24.preheader

for.body24.preheader:                             ; preds = %if.end
  %40 = load i8, i8* %iv, align 1, !tbaa !11
  %conv28 = zext i8 %40 to i32
  %arrayidx31 = getelementptr inbounds i8, i8* %iv, i64 1
  %41 = load i8, i8* %arrayidx31, align 1, !tbaa !11
  %conv32 = zext i8 %41 to i32
  %shl33 = shl nuw nsw i32 %conv32, 8
  %or34 = or i32 %shl33, %conv28
  %arrayidx37 = getelementptr inbounds i8, i8* %iv, i64 2
  %42 = load i8, i8* %arrayidx37, align 1, !tbaa !11
  %conv38 = zext i8 %42 to i32
  %shl39 = shl nuw nsw i32 %conv38, 16
  %or40 = or i32 %or34, %shl39
  %arrayidx43 = getelementptr inbounds i8, i8* %iv, i64 3
  %43 = load i8, i8* %arrayidx43, align 1, !tbaa !11
  %conv44 = zext i8 %43 to i32
  %shl45 = shl nuw i32 %conv44, 24
  %or46 = or i32 %or40, %shl45
  %arrayidx49 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 1, i64 0
  store i32 %or46, i32* %arrayidx49, align 4, !tbaa !12
  %add.ptr26.1 = getelementptr inbounds i8, i8* %iv, i64 4
  %44 = load i8, i8* %add.ptr26.1, align 1, !tbaa !11
  %conv28.1 = zext i8 %44 to i32
  %arrayidx31.1 = getelementptr inbounds i8, i8* %iv, i64 5
  %45 = load i8, i8* %arrayidx31.1, align 1, !tbaa !11
  %conv32.1 = zext i8 %45 to i32
  %shl33.1 = shl nuw nsw i32 %conv32.1, 8
  %or34.1 = or i32 %shl33.1, %conv28.1
  %arrayidx37.1 = getelementptr inbounds i8, i8* %iv, i64 6
  %46 = load i8, i8* %arrayidx37.1, align 1, !tbaa !11
  %conv38.1 = zext i8 %46 to i32
  %shl39.1 = shl nuw nsw i32 %conv38.1, 16
  %or40.1 = or i32 %or34.1, %shl39.1
  %arrayidx43.1 = getelementptr inbounds i8, i8* %iv, i64 7
  %47 = load i8, i8* %arrayidx43.1, align 1, !tbaa !11
  %conv44.1 = zext i8 %47 to i32
  %shl45.1 = shl nuw i32 %conv44.1, 24
  %or46.1 = or i32 %or40.1, %shl45.1
  %arrayidx49.1 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 1, i64 1
  store i32 %or46.1, i32* %arrayidx49.1, align 4, !tbaa !12
  %add.ptr26.2 = getelementptr inbounds i8, i8* %iv, i64 8
  %48 = load i8, i8* %add.ptr26.2, align 1, !tbaa !11
  %conv28.2 = zext i8 %48 to i32
  %arrayidx31.2 = getelementptr inbounds i8, i8* %iv, i64 9
  %49 = load i8, i8* %arrayidx31.2, align 1, !tbaa !11
  %conv32.2 = zext i8 %49 to i32
  %shl33.2 = shl nuw nsw i32 %conv32.2, 8
  %or34.2 = or i32 %shl33.2, %conv28.2
  %arrayidx37.2 = getelementptr inbounds i8, i8* %iv, i64 10
  %50 = load i8, i8* %arrayidx37.2, align 1, !tbaa !11
  %conv38.2 = zext i8 %50 to i32
  %shl39.2 = shl nuw nsw i32 %conv38.2, 16
  %or40.2 = or i32 %or34.2, %shl39.2
  %arrayidx43.2 = getelementptr inbounds i8, i8* %iv, i64 11
  %51 = load i8, i8* %arrayidx43.2, align 1, !tbaa !11
  %conv44.2 = zext i8 %51 to i32
  %shl45.2 = shl nuw i32 %conv44.2, 24
  %or46.2 = or i32 %or40.2, %shl45.2
  %arrayidx49.2 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 1, i64 2
  store i32 %or46.2, i32* %arrayidx49.2, align 4, !tbaa !12
  %add.ptr26.3 = getelementptr inbounds i8, i8* %iv, i64 12
  %52 = load i8, i8* %add.ptr26.3, align 1, !tbaa !11
  %conv28.3 = zext i8 %52 to i32
  %arrayidx31.3 = getelementptr inbounds i8, i8* %iv, i64 13
  %53 = load i8, i8* %arrayidx31.3, align 1, !tbaa !11
  %conv32.3 = zext i8 %53 to i32
  %shl33.3 = shl nuw nsw i32 %conv32.3, 8
  %or34.3 = or i32 %shl33.3, %conv28.3
  %arrayidx37.3 = getelementptr inbounds i8, i8* %iv, i64 14
  %54 = load i8, i8* %arrayidx37.3, align 1, !tbaa !11
  %conv38.3 = zext i8 %54 to i32
  %shl39.3 = shl nuw nsw i32 %conv38.3, 16
  %or40.3 = or i32 %or34.3, %shl39.3
  %arrayidx43.3 = getelementptr inbounds i8, i8* %iv, i64 15
  %55 = load i8, i8* %arrayidx43.3, align 1, !tbaa !11
  %conv44.3 = zext i8 %55 to i32
  %shl45.3 = shl nuw i32 %conv44.3, 24
  %or46.3 = or i32 %or40.3, %shl45.3
  %arrayidx49.3 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 1, i64 3
  store i32 %or46.3, i32* %arrayidx49.3, align 4, !tbaa !12
  br label %if.end53

if.end53:                                         ; preds = %for.body24.preheader, %if.end
  %partial_len = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 3
  store i32 0, i32* %partial_len, align 8, !tbaa !13
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @chacha_cipher(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx, i8* noundef %out, i8* noundef %inp, i64 noundef %len) #2 {
entry:
  %cipher_data = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 11
  %0 = bitcast i8** %cipher_data to %struct.EVP_CHACHA_KEY**
  %1 = load %struct.EVP_CHACHA_KEY*, %struct.EVP_CHACHA_KEY** %0, align 8, !tbaa !4
  %2 = bitcast %struct.EVP_CHACHA_KEY* %1 to i8*
  %partial_len = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 3
  %3 = load i32, i32* %partial_len, align 8, !tbaa !13
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end25, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %tobool1156 = icmp ne i64 %len, 0
  %cmp157 = icmp ult i32 %3, 64
  %4 = select i1 %tobool1156, i1 %cmp157, i1 false
  br i1 %4, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %5 = zext i32 %3 to i64
  %6 = add i64 %len, -1
  %7 = sub nsw i64 63, %5
  %8 = icmp eq i64 %6, 0
  %umin183 = call i64 @llvm.umin.i64(i64 %7, i64 %6)
  %umin183.op = add i64 %umin183, 1
  %9 = select i1 %8, i64 1, i64 %umin183.op
  %min.iters.check = icmp ult i64 %9, 16
  br i1 %min.iters.check, label %while.body.preheader227, label %vector.memcheck

vector.memcheck:                                  ; preds = %while.body.preheader
  %10 = add i64 %len, -1
  %11 = sub nsw i64 63, %5
  %12 = icmp eq i64 %10, 0
  %umin = call i64 @llvm.umin.i64(i64 %11, i64 %10)
  %13 = select i1 %12, i64 0, i64 %umin
  %14 = add i64 %13, 1
  %scevgep = getelementptr i8, i8* %out, i64 %14
  %scevgep178 = getelementptr i8, i8* %inp, i64 %14
  %15 = add nuw nsw i64 %5, 48
  %uglygep = getelementptr i8, i8* %2, i64 %15
  %16 = add i64 %13, %5
  %17 = add i64 %16, 49
  %uglygep179 = getelementptr i8, i8* %2, i64 %17
  %bound0 = icmp ugt i8* %scevgep178, %out
  %bound1 = icmp ugt i8* %scevgep, %inp
  %found.conflict = and i1 %bound0, %bound1
  %bound0180 = icmp ugt i8* %uglygep179, %out
  %bound1181 = icmp ult i8* %uglygep, %scevgep
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx = or i1 %found.conflict, %found.conflict182
  br i1 %conflict.rdx, label %while.body.preheader227, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %9, -16
  %ind.end = add i64 %n.vec, %5
  %ind.end185 = getelementptr i8, i8* %out, i64 %n.vec
  %ind.end187 = sub i64 %len, %n.vec
  %ind.end189 = getelementptr i8, i8* %inp, i64 %n.vec
  %18 = add i64 %n.vec, -16
  %19 = lshr exact i64 %18, 4
  %20 = add nuw nsw i64 %19, 1
  %xtraiter = and i64 %20, 3
  %21 = icmp ult i64 %18, 48
  br i1 %21, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %20, 2305843009213693948
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %offset.idx = add i64 %index, %5
  %next.gep = getelementptr i8, i8* %out, i64 %index
  %next.gep191 = getelementptr i8, i8* %inp, i64 %index
  %22 = bitcast i8* %next.gep191 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %22, align 1, !tbaa !11, !alias.scope !15
  %23 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %offset.idx
  %24 = bitcast i8* %23 to <16 x i8>*
  %wide.load192 = load <16 x i8>, <16 x i8>* %24, align 1, !tbaa !11, !alias.scope !18
  %25 = xor <16 x i8> %wide.load192, %wide.load
  %26 = bitcast i8* %next.gep to <16 x i8>*
  store <16 x i8> %25, <16 x i8>* %26, align 1, !tbaa !11, !alias.scope !20, !noalias !22
  %index.next = or i64 %index, 16
  %offset.idx.1 = add i64 %index.next, %5
  %next.gep.1 = getelementptr i8, i8* %out, i64 %index.next
  %next.gep191.1 = getelementptr i8, i8* %inp, i64 %index.next
  %27 = bitcast i8* %next.gep191.1 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %27, align 1, !tbaa !11, !alias.scope !15
  %28 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %offset.idx.1
  %29 = bitcast i8* %28 to <16 x i8>*
  %wide.load192.1 = load <16 x i8>, <16 x i8>* %29, align 1, !tbaa !11, !alias.scope !18
  %30 = xor <16 x i8> %wide.load192.1, %wide.load.1
  %31 = bitcast i8* %next.gep.1 to <16 x i8>*
  store <16 x i8> %30, <16 x i8>* %31, align 1, !tbaa !11, !alias.scope !20, !noalias !22
  %index.next.1 = or i64 %index, 32
  %offset.idx.2 = add i64 %index.next.1, %5
  %next.gep.2 = getelementptr i8, i8* %out, i64 %index.next.1
  %next.gep191.2 = getelementptr i8, i8* %inp, i64 %index.next.1
  %32 = bitcast i8* %next.gep191.2 to <16 x i8>*
  %wide.load.2 = load <16 x i8>, <16 x i8>* %32, align 1, !tbaa !11, !alias.scope !15
  %33 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %offset.idx.2
  %34 = bitcast i8* %33 to <16 x i8>*
  %wide.load192.2 = load <16 x i8>, <16 x i8>* %34, align 1, !tbaa !11, !alias.scope !18
  %35 = xor <16 x i8> %wide.load192.2, %wide.load.2
  %36 = bitcast i8* %next.gep.2 to <16 x i8>*
  store <16 x i8> %35, <16 x i8>* %36, align 1, !tbaa !11, !alias.scope !20, !noalias !22
  %index.next.2 = or i64 %index, 48
  %offset.idx.3 = add i64 %index.next.2, %5
  %next.gep.3 = getelementptr i8, i8* %out, i64 %index.next.2
  %next.gep191.3 = getelementptr i8, i8* %inp, i64 %index.next.2
  %37 = bitcast i8* %next.gep191.3 to <16 x i8>*
  %wide.load.3 = load <16 x i8>, <16 x i8>* %37, align 1, !tbaa !11, !alias.scope !15
  %38 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %offset.idx.3
  %39 = bitcast i8* %38 to <16 x i8>*
  %wide.load192.3 = load <16 x i8>, <16 x i8>* %39, align 1, !tbaa !11, !alias.scope !18
  %40 = xor <16 x i8> %wide.load192.3, %wide.load.3
  %41 = bitcast i8* %next.gep.3 to <16 x i8>*
  store <16 x i8> %40, <16 x i8>* %41, align 1, !tbaa !11, !alias.scope !20, !noalias !22
  %index.next.3 = add nuw i64 %index, 64
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !23

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %offset.idx.epil = add i64 %index.epil, %5
  %next.gep.epil = getelementptr i8, i8* %out, i64 %index.epil
  %next.gep191.epil = getelementptr i8, i8* %inp, i64 %index.epil
  %42 = bitcast i8* %next.gep191.epil to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %42, align 1, !tbaa !11, !alias.scope !15
  %43 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %offset.idx.epil
  %44 = bitcast i8* %43 to <16 x i8>*
  %wide.load192.epil = load <16 x i8>, <16 x i8>* %44, align 1, !tbaa !11, !alias.scope !18
  %45 = xor <16 x i8> %wide.load192.epil, %wide.load.epil
  %46 = bitcast i8* %next.gep.epil to <16 x i8>*
  store <16 x i8> %45, <16 x i8>* %46, align 1, !tbaa !11, !alias.scope !20, !noalias !22
  %index.next.epil = add nuw i64 %index.epil, 16
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !26

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %while.end.loopexit, label %while.body.preheader227

while.body.preheader227:                          ; preds = %vector.memcheck, %while.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %5, %vector.memcheck ], [ %5, %while.body.preheader ], [ %ind.end, %middle.block ]
  %out.addr.0160.ph = phi i8* [ %out, %vector.memcheck ], [ %out, %while.body.preheader ], [ %ind.end185, %middle.block ]
  %len.addr.0159.ph = phi i64 [ %len, %vector.memcheck ], [ %len, %while.body.preheader ], [ %ind.end187, %middle.block ]
  %inp.addr.0158.ph = phi i8* [ %inp, %vector.memcheck ], [ %inp, %while.body.preheader ], [ %ind.end189, %middle.block ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader227, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ %indvars.iv.ph, %while.body.preheader227 ]
  %out.addr.0160 = phi i8* [ %incdec.ptr4, %while.body ], [ %out.addr.0160.ph, %while.body.preheader227 ]
  %len.addr.0159 = phi i64 [ %dec, %while.body ], [ %len.addr.0159.ph, %while.body.preheader227 ]
  %inp.addr.0158 = phi i8* [ %incdec.ptr, %while.body ], [ %inp.addr.0158.ph, %while.body.preheader227 ]
  %incdec.ptr = getelementptr inbounds i8, i8* %inp.addr.0158, i64 1
  %47 = load i8, i8* %inp.addr.0158, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %indvars.iv
  %48 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %xor154 = xor i8 %48, %47
  %incdec.ptr4 = getelementptr inbounds i8, i8* %out.addr.0160, i64 1
  store i8 %xor154, i8* %out.addr.0160, align 1, !tbaa !11
  %dec = add i64 %len.addr.0159, -1
  %tobool1 = icmp ne i64 %dec, 0
  %cmp = icmp ult i64 %indvars.iv, 63
  %49 = select i1 %tobool1, i1 %cmp, i1 false
  br i1 %49, label %while.body, label %while.end.loopexit, !llvm.loop !28

while.end.loopexit:                               ; preds = %while.body, %middle.block
  %incdec.ptr.lcssa = phi i8* [ %ind.end189, %middle.block ], [ %incdec.ptr, %while.body ]
  %indvars.iv.next.lcssa = phi i64 [ %ind.end, %middle.block ], [ %indvars.iv.next, %while.body ]
  %incdec.ptr4.lcssa = phi i8* [ %ind.end185, %middle.block ], [ %incdec.ptr4, %while.body ]
  %dec.lcssa = phi i64 [ %ind.end187, %middle.block ], [ %dec, %while.body ]
  %50 = trunc i64 %indvars.iv.next.lcssa to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader
  %inp.addr.0.lcssa = phi i8* [ %inp, %while.cond.preheader ], [ %incdec.ptr.lcssa, %while.end.loopexit ]
  %len.addr.0.lcssa = phi i64 [ %len, %while.cond.preheader ], [ %dec.lcssa, %while.end.loopexit ]
  %out.addr.0.lcssa = phi i8* [ %out, %while.cond.preheader ], [ %incdec.ptr4.lcssa, %while.end.loopexit ]
  %n.0.lcssa = phi i32 [ %3, %while.cond.preheader ], [ %50, %while.end.loopexit ]
  store i32 %n.0.lcssa, i32* %partial_len, align 8, !tbaa !13
  %cmp6 = icmp eq i64 %len.addr.0.lcssa, 0
  br i1 %cmp6, label %cleanup, label %if.end

if.end:                                           ; preds = %while.end
  %cmp9 = icmp eq i32 %n.0.lcssa, 64
  br i1 %cmp9, label %if.then11, label %if.end25

if.then11:                                        ; preds = %if.end
  store i32 0, i32* %partial_len, align 8, !tbaa !13
  %arrayidx13 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 1, i64 0
  %51 = load i32, i32* %arrayidx13, align 8, !tbaa !12
  %inc14 = add i32 %51, 1
  store i32 %inc14, i32* %arrayidx13, align 8, !tbaa !12
  %cmp17 = icmp eq i32 %inc14, 0
  br i1 %cmp17, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.then11
  %arrayidx21 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 1, i64 1
  %52 = load i32, i32* %arrayidx21, align 4, !tbaa !12
  %inc22 = add i32 %52, 1
  store i32 %inc22, i32* %arrayidx21, align 4, !tbaa !12
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then19, %if.then11, %entry
  %inp.addr.1 = phi i8* [ %inp.addr.0.lcssa, %if.then19 ], [ %inp.addr.0.lcssa, %if.then11 ], [ %inp.addr.0.lcssa, %if.end ], [ %inp, %entry ]
  %len.addr.1 = phi i64 [ %len.addr.0.lcssa, %if.then19 ], [ %len.addr.0.lcssa, %if.then11 ], [ %len.addr.0.lcssa, %if.end ], [ %len, %entry ]
  %out.addr.1 = phi i8* [ %out.addr.0.lcssa, %if.then19 ], [ %out.addr.0.lcssa, %if.then11 ], [ %out.addr.0.lcssa, %if.end ], [ %out, %entry ]
  %53 = trunc i64 %len.addr.1 to i32
  %conv27 = and i32 %53, 63
  %conv28 = zext i32 %conv27 to i64
  %sub = sub i64 %len.addr.1, %conv28
  %arrayidx30 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 1, i64 0
  %cmp32165 = icmp ugt i64 %sub, 63
  br i1 %cmp32165, label %while.body34.lr.ph, label %while.end61

while.body34.lr.ph:                               ; preds = %if.end25
  %54 = load i32, i32* %arrayidx30, align 8, !tbaa !12
  %arraydecay = bitcast %struct.EVP_CHACHA_KEY* %1 to i32*
  %arrayidx58 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 1, i64 1
  br label %while.body34

while.body34:                                     ; preds = %while.body34.lr.ph, %if.end60
  %ctr32.0169 = phi i32 [ %54, %while.body34.lr.ph ], [ %spec.select, %if.end60 ]
  %out.addr.2168 = phi i8* [ %out.addr.1, %while.body34.lr.ph ], [ %add.ptr51, %if.end60 ]
  %len.addr.2167 = phi i64 [ %sub, %while.body34.lr.ph ], [ %sub50, %if.end60 ]
  %inp.addr.2166 = phi i8* [ %inp.addr.1, %while.body34.lr.ph ], [ %add.ptr, %if.end60 ]
  %div = lshr i64 %len.addr.2167, 6
  %55 = icmp ult i64 %div, 268435456
  %spec.store.select = select i1 %55, i64 %div, i64 268435456
  %conv39 = trunc i64 %spec.store.select to i32
  %add = add i32 %ctr32.0169, %conv39
  %conv40 = zext i32 %add to i64
  %cmp41 = icmp ugt i64 %spec.store.select, %conv40
  %spec.select = select i1 %cmp41, i32 0, i32 %add
  %sub45 = select i1 %cmp41, i64 %conv40, i64 0
  %spec.select155 = sub nsw i64 %spec.store.select, %sub45
  %mul = shl nsw i64 %spec.select155, 6
  tail call void @ChaCha20_ctr32(i8* noundef %out.addr.2168, i8* noundef %inp.addr.2166, i64 noundef %mul, i32* noundef nonnull %arraydecay, i32* noundef nonnull %arrayidx30) #8
  %sub50 = sub i64 %len.addr.2167, %mul
  %add.ptr = getelementptr inbounds i8, i8* %inp.addr.2166, i64 %mul
  %add.ptr51 = getelementptr inbounds i8, i8* %out.addr.2168, i64 %mul
  store i32 %spec.select, i32* %arrayidx30, align 8, !tbaa !12
  %cmp54 = icmp eq i32 %spec.select, 0
  br i1 %cmp54, label %if.then56, label %if.end60

if.then56:                                        ; preds = %while.body34
  %56 = load i32, i32* %arrayidx58, align 4, !tbaa !12
  %inc59 = add i32 %56, 1
  store i32 %inc59, i32* %arrayidx58, align 4, !tbaa !12
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %while.body34
  %cmp32 = icmp ugt i64 %sub50, 63
  br i1 %cmp32, label %while.body34, label %while.end61, !llvm.loop !29

while.end61:                                      ; preds = %if.end60, %if.end25
  %inp.addr.2.lcssa = phi i8* [ %inp.addr.1, %if.end25 ], [ %add.ptr, %if.end60 ]
  %out.addr.2.lcssa = phi i8* [ %out.addr.1, %if.end25 ], [ %add.ptr51, %if.end60 ]
  %tobool62.not = icmp eq i32 %conv27, 0
  br i1 %tobool62.not, label %cleanup, label %iter.check

iter.check:                                       ; preds = %while.end61
  %arraydecay65 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 0
  %call = tail call i8* @memset(i8* noundef nonnull %arraydecay65, i32 noundef 0, i64 noundef 64) #8
  %arraydecay72 = bitcast %struct.EVP_CHACHA_KEY* %1 to i32*
  tail call void @ChaCha20_ctr32(i8* noundef nonnull %arraydecay65, i8* noundef nonnull %arraydecay65, i64 noundef 64, i32* noundef %arraydecay72, i32* noundef nonnull %arrayidx30) #8
  %min.iters.check208 = icmp ult i32 %conv27, 8
  br i1 %min.iters.check208, label %for.body.preheader, label %vector.memcheck193

vector.memcheck193:                               ; preds = %iter.check
  %scevgep194 = getelementptr i8, i8* %out.addr.2.lcssa, i64 %conv28
  %scevgep195 = getelementptr i8, i8* %inp.addr.2.lcssa, i64 %conv28
  %scevgep196 = getelementptr %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 0
  %57 = add nuw nsw i64 %conv28, 48
  %uglygep197 = getelementptr i8, i8* %2, i64 %57
  %bound0198 = icmp ult i8* %out.addr.2.lcssa, %scevgep195
  %bound1199 = icmp ult i8* %inp.addr.2.lcssa, %scevgep194
  %found.conflict200 = and i1 %bound0198, %bound1199
  %bound0201 = icmp ult i8* %out.addr.2.lcssa, %uglygep197
  %bound1202 = icmp ult i8* %scevgep196, %scevgep194
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %found.conflict200, %found.conflict203
  br i1 %conflict.rdx204, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck193
  %min.iters.check210 = icmp ult i32 %conv27, 16
  br i1 %min.iters.check210, label %vec.epilog.ph, label %vector.ph211

vector.ph211:                                     ; preds = %vector.main.loop.iter.check
  %n.vec213 = and i64 %conv28, 48
  %58 = add nsw i64 %n.vec213, -16
  %59 = lshr exact i64 %58, 4
  %60 = add nuw nsw i64 %59, 1
  %xtraiter232 = and i64 %60, 3
  %61 = icmp ult i64 %58, 48
  br i1 %61, label %middle.block205.unr-lcssa, label %vector.ph211.new

vector.ph211.new:                                 ; preds = %vector.ph211
  %unroll_iter235 = and i64 %60, 2305843009213693948
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph211.new
  %index215 = phi i64 [ 0, %vector.ph211.new ], [ %index.next218.3, %vector.body207 ]
  %niter236 = phi i64 [ 0, %vector.ph211.new ], [ %niter236.next.3, %vector.body207 ]
  %62 = getelementptr inbounds i8, i8* %inp.addr.2.lcssa, i64 %index215
  %63 = bitcast i8* %62 to <16 x i8>*
  %wide.load216 = load <16 x i8>, <16 x i8>* %63, align 1, !tbaa !11, !alias.scope !30
  %64 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %index215
  %65 = bitcast i8* %64 to <16 x i8>*
  %wide.load217 = load <16 x i8>, <16 x i8>* %65, align 1, !tbaa !11, !alias.scope !33
  %66 = xor <16 x i8> %wide.load217, %wide.load216
  %67 = getelementptr inbounds i8, i8* %out.addr.2.lcssa, i64 %index215
  %68 = bitcast i8* %67 to <16 x i8>*
  store <16 x i8> %66, <16 x i8>* %68, align 1, !tbaa !11, !alias.scope !35, !noalias !37
  %index.next218 = or i64 %index215, 16
  %69 = getelementptr inbounds i8, i8* %inp.addr.2.lcssa, i64 %index.next218
  %70 = bitcast i8* %69 to <16 x i8>*
  %wide.load216.1 = load <16 x i8>, <16 x i8>* %70, align 1, !tbaa !11, !alias.scope !30
  %71 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %index.next218
  %72 = bitcast i8* %71 to <16 x i8>*
  %wide.load217.1 = load <16 x i8>, <16 x i8>* %72, align 1, !tbaa !11, !alias.scope !33
  %73 = xor <16 x i8> %wide.load217.1, %wide.load216.1
  %74 = getelementptr inbounds i8, i8* %out.addr.2.lcssa, i64 %index.next218
  %75 = bitcast i8* %74 to <16 x i8>*
  store <16 x i8> %73, <16 x i8>* %75, align 1, !tbaa !11, !alias.scope !35, !noalias !37
  %index.next218.1 = or i64 %index215, 32
  %76 = getelementptr inbounds i8, i8* %inp.addr.2.lcssa, i64 %index.next218.1
  %77 = bitcast i8* %76 to <16 x i8>*
  %wide.load216.2 = load <16 x i8>, <16 x i8>* %77, align 1, !tbaa !11, !alias.scope !30
  %78 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %index.next218.1
  %79 = bitcast i8* %78 to <16 x i8>*
  %wide.load217.2 = load <16 x i8>, <16 x i8>* %79, align 1, !tbaa !11, !alias.scope !33
  %80 = xor <16 x i8> %wide.load217.2, %wide.load216.2
  %81 = getelementptr inbounds i8, i8* %out.addr.2.lcssa, i64 %index.next218.1
  %82 = bitcast i8* %81 to <16 x i8>*
  store <16 x i8> %80, <16 x i8>* %82, align 1, !tbaa !11, !alias.scope !35, !noalias !37
  %index.next218.2 = or i64 %index215, 48
  %83 = getelementptr inbounds i8, i8* %inp.addr.2.lcssa, i64 %index.next218.2
  %84 = bitcast i8* %83 to <16 x i8>*
  %wide.load216.3 = load <16 x i8>, <16 x i8>* %84, align 1, !tbaa !11, !alias.scope !30
  %85 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %index.next218.2
  %86 = bitcast i8* %85 to <16 x i8>*
  %wide.load217.3 = load <16 x i8>, <16 x i8>* %86, align 1, !tbaa !11, !alias.scope !33
  %87 = xor <16 x i8> %wide.load217.3, %wide.load216.3
  %88 = getelementptr inbounds i8, i8* %out.addr.2.lcssa, i64 %index.next218.2
  %89 = bitcast i8* %88 to <16 x i8>*
  store <16 x i8> %87, <16 x i8>* %89, align 1, !tbaa !11, !alias.scope !35, !noalias !37
  %index.next218.3 = add nuw i64 %index215, 64
  %niter236.next.3 = add i64 %niter236, 4
  %niter236.ncmp.3 = icmp eq i64 %niter236.next.3, %unroll_iter235
  br i1 %niter236.ncmp.3, label %middle.block205.unr-lcssa, label %vector.body207, !llvm.loop !38

middle.block205.unr-lcssa:                        ; preds = %vector.body207, %vector.ph211
  %index215.unr = phi i64 [ 0, %vector.ph211 ], [ %index.next218.3, %vector.body207 ]
  %lcmp.mod234.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod234.not, label %middle.block205, label %vector.body207.epil

vector.body207.epil:                              ; preds = %middle.block205.unr-lcssa, %vector.body207.epil
  %index215.epil = phi i64 [ %index.next218.epil, %vector.body207.epil ], [ %index215.unr, %middle.block205.unr-lcssa ]
  %epil.iter233 = phi i64 [ %epil.iter233.next, %vector.body207.epil ], [ 0, %middle.block205.unr-lcssa ]
  %90 = getelementptr inbounds i8, i8* %inp.addr.2.lcssa, i64 %index215.epil
  %91 = bitcast i8* %90 to <16 x i8>*
  %wide.load216.epil = load <16 x i8>, <16 x i8>* %91, align 1, !tbaa !11, !alias.scope !30
  %92 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %index215.epil
  %93 = bitcast i8* %92 to <16 x i8>*
  %wide.load217.epil = load <16 x i8>, <16 x i8>* %93, align 1, !tbaa !11, !alias.scope !33
  %94 = xor <16 x i8> %wide.load217.epil, %wide.load216.epil
  %95 = getelementptr inbounds i8, i8* %out.addr.2.lcssa, i64 %index215.epil
  %96 = bitcast i8* %95 to <16 x i8>*
  store <16 x i8> %94, <16 x i8>* %96, align 1, !tbaa !11, !alias.scope !35, !noalias !37
  %index.next218.epil = add nuw i64 %index215.epil, 16
  %epil.iter233.next = add i64 %epil.iter233, 1
  %epil.iter233.cmp.not = icmp eq i64 %epil.iter233.next, %xtraiter232
  br i1 %epil.iter233.cmp.not, label %middle.block205, label %vector.body207.epil, !llvm.loop !39

middle.block205:                                  ; preds = %vector.body207.epil, %middle.block205.unr-lcssa
  %cmp.n214 = icmp eq i64 %n.vec213, %conv28
  br i1 %cmp.n214, label %for.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block205
  %n.vec.remaining = and i64 %conv28, 8
  %min.epilog.iters.check.not.not = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check.not.not, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec213, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec220 = and i64 %conv28, 56
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index223 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next226, %vec.epilog.vector.body ]
  %97 = getelementptr inbounds i8, i8* %inp.addr.2.lcssa, i64 %index223
  %98 = bitcast i8* %97 to <8 x i8>*
  %wide.load224 = load <8 x i8>, <8 x i8>* %98, align 1, !tbaa !11
  %99 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %index223
  %100 = bitcast i8* %99 to <8 x i8>*
  %wide.load225 = load <8 x i8>, <8 x i8>* %100, align 1, !tbaa !11
  %101 = xor <8 x i8> %wide.load225, %wide.load224
  %102 = getelementptr inbounds i8, i8* %out.addr.2.lcssa, i64 %index223
  %103 = bitcast i8* %102 to <8 x i8>*
  store <8 x i8> %101, <8 x i8>* %103, align 1, !tbaa !11
  %index.next226 = add nuw i64 %index223, 8
  %104 = icmp eq i64 %index.next226, %n.vec220
  br i1 %104, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n222 = icmp eq i64 %n.vec220, %conv28
  br i1 %cmp.n222, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck193, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv175.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck193 ], [ %n.vec213, %vec.epilog.iter.check ], [ %n.vec220, %vec.epilog.middle.block ]
  %105 = xor i64 %indvars.iv175.ph, -1
  %106 = add nsw i64 %105, %conv28
  %xtraiter237 = and i64 %conv28, 3
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br i1 %lcmp.mod238.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %indvars.iv175.prol = phi i64 [ %indvars.iv.next176.prol, %for.body.prol ], [ %indvars.iv175.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %arrayidx78.prol = getelementptr inbounds i8, i8* %inp.addr.2.lcssa, i64 %indvars.iv175.prol
  %107 = load i8, i8* %arrayidx78.prol, align 1, !tbaa !11
  %arrayidx82.prol = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %indvars.iv175.prol
  %108 = load i8, i8* %arrayidx82.prol, align 1, !tbaa !11
  %xor84153.prol = xor i8 %108, %107
  %arrayidx87.prol = getelementptr inbounds i8, i8* %out.addr.2.lcssa, i64 %indvars.iv175.prol
  store i8 %xor84153.prol, i8* %arrayidx87.prol, align 1, !tbaa !11
  %indvars.iv.next176.prol = add nuw nsw i64 %indvars.iv175.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter237
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !42

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %indvars.iv175.unr = phi i64 [ %indvars.iv175.ph, %for.body.preheader ], [ %indvars.iv.next176.prol, %for.body.prol ]
  %109 = icmp ult i64 %106, 3
  br i1 %109, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv175 = phi i64 [ %indvars.iv.next176.3, %for.body ], [ %indvars.iv175.unr, %for.body.prol.loopexit ]
  %arrayidx78 = getelementptr inbounds i8, i8* %inp.addr.2.lcssa, i64 %indvars.iv175
  %110 = load i8, i8* %arrayidx78, align 1, !tbaa !11
  %arrayidx82 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %indvars.iv175
  %111 = load i8, i8* %arrayidx82, align 1, !tbaa !11
  %xor84153 = xor i8 %111, %110
  %arrayidx87 = getelementptr inbounds i8, i8* %out.addr.2.lcssa, i64 %indvars.iv175
  store i8 %xor84153, i8* %arrayidx87, align 1, !tbaa !11
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1
  %arrayidx78.1 = getelementptr inbounds i8, i8* %inp.addr.2.lcssa, i64 %indvars.iv.next176
  %112 = load i8, i8* %arrayidx78.1, align 1, !tbaa !11
  %arrayidx82.1 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %indvars.iv.next176
  %113 = load i8, i8* %arrayidx82.1, align 1, !tbaa !11
  %xor84153.1 = xor i8 %113, %112
  %arrayidx87.1 = getelementptr inbounds i8, i8* %out.addr.2.lcssa, i64 %indvars.iv.next176
  store i8 %xor84153.1, i8* %arrayidx87.1, align 1, !tbaa !11
  %indvars.iv.next176.1 = add nuw nsw i64 %indvars.iv175, 2
  %arrayidx78.2 = getelementptr inbounds i8, i8* %inp.addr.2.lcssa, i64 %indvars.iv.next176.1
  %114 = load i8, i8* %arrayidx78.2, align 1, !tbaa !11
  %arrayidx82.2 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %indvars.iv.next176.1
  %115 = load i8, i8* %arrayidx82.2, align 1, !tbaa !11
  %xor84153.2 = xor i8 %115, %114
  %arrayidx87.2 = getelementptr inbounds i8, i8* %out.addr.2.lcssa, i64 %indvars.iv.next176.1
  store i8 %xor84153.2, i8* %arrayidx87.2, align 1, !tbaa !11
  %indvars.iv.next176.2 = add nuw nsw i64 %indvars.iv175, 3
  %arrayidx78.3 = getelementptr inbounds i8, i8* %inp.addr.2.lcssa, i64 %indvars.iv.next176.2
  %116 = load i8, i8* %arrayidx78.3, align 1, !tbaa !11
  %arrayidx82.3 = getelementptr inbounds %struct.EVP_CHACHA_KEY, %struct.EVP_CHACHA_KEY* %1, i64 0, i32 2, i64 %indvars.iv.next176.2
  %117 = load i8, i8* %arrayidx82.3, align 1, !tbaa !11
  %xor84153.3 = xor i8 %117, %116
  %arrayidx87.3 = getelementptr inbounds i8, i8* %out.addr.2.lcssa, i64 %indvars.iv.next176.2
  store i8 %xor84153.3, i8* %arrayidx87.3, align 1, !tbaa !11
  %indvars.iv.next176.3 = add nuw nsw i64 %indvars.iv175, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next176.3, %conv28
  br i1 %exitcond.not.3, label %for.end, label %for.body, !llvm.loop !43

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %vec.epilog.middle.block, %middle.block205
  store i32 %conv27, i32* %partial_len, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %while.end61, %for.end, %while.end
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare void @ChaCha20_ctr32(i8* noundef, i8* noundef, i64 noundef, i32* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @chacha20_poly1305_init_key(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx, i8* noundef %inkey, i8* noundef %iv, i32 noundef %enc) #2 {
entry:
  %temp = alloca [16 x i8], align 16
  %cipher_data = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 11
  %0 = bitcast i8** %cipher_data to %struct.EVP_CHACHA_AEAD_CTX**
  %1 = load %struct.EVP_CHACHA_AEAD_CTX*, %struct.EVP_CHACHA_AEAD_CTX** %0, align 8, !tbaa !4
  %tobool = icmp ne i8* %inkey, null
  %tobool1 = icmp ne i8* %iv, null
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %aad = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 4, i32 0
  %2 = bitcast i64* %aad to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %2, align 8, !tbaa !44
  %aad3 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 5
  store i32 0, i32* %aad3, align 8, !tbaa !45
  %mac_inited = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 6
  store i32 0, i32* %mac_inited, align 4, !tbaa !48
  %tls_payload_length = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 9
  store i64 -1, i64* %tls_payload_length, align 8, !tbaa !49
  br i1 %tobool1, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %temp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %nonce_len = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 8
  %4 = load i32, i32* %nonce_len, align 4, !tbaa !50
  %cmp5 = icmp slt i32 %4, 17
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.then4
  %add.ptr = getelementptr inbounds [16 x i8], [16 x i8]* %temp, i64 0, i64 16
  %idx.ext = sext i32 %4 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %call = call i8* @memcpy(i8* noundef nonnull %add.ptr8, i8* noundef nonnull %iv, i64 noundef %idx.ext) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then4
  %call12 = call i32 @chacha_init_key(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %inkey, i8* noundef nonnull %3, i32 noundef %enc) #10
  %arrayidx = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 0, i32 1, i64 1
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !12
  %arrayidx13 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 1, i64 0
  store i32 %5, i32* %arrayidx13, align 8, !tbaa !12
  %arrayidx16 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 0, i32 1, i64 2
  %6 = load i32, i32* %arrayidx16, align 8, !tbaa !12
  %arrayidx18 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 1, i64 1
  store i32 %6, i32* %arrayidx18, align 4, !tbaa !12
  %arrayidx21 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 0, i32 1, i64 3
  %7 = load i32, i32* %arrayidx21, align 4, !tbaa !12
  %arrayidx23 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 1, i64 2
  store i32 %7, i32* %arrayidx23, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call24 = tail call i32 @chacha_init_key(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %inkey, i8* noundef null, i32 noundef %enc) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.else, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @chacha20_poly1305_cipher(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #2 {
entry:
  %temp = alloca [16 x i8], align 16
  %cipher_data = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 11
  %0 = bitcast i8** %cipher_data to %struct.EVP_CHACHA_AEAD_CTX**
  %1 = load %struct.EVP_CHACHA_AEAD_CTX*, %struct.EVP_CHACHA_AEAD_CTX** %0, align 8, !tbaa !4
  %tls_payload_length = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 9
  %2 = load i64, i64* %tls_payload_length, align 8, !tbaa !49
  %mac_inited = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 6
  %3 = load i32, i32* %mac_inited, align 4, !tbaa !48
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end28

if.then:                                          ; preds = %entry
  %cmp = icmp ne i64 %2, -1
  %cmp1 = icmp ne i8* %out, null
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call = tail call fastcc i32 @chacha20_poly1305_tls_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef nonnull %out, i8* noundef %in, i64 noundef %len) #10
  br label %cleanup152

if.end:                                           ; preds = %if.then
  %arrayidx = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 0, i32 1, i64 0
  store i32 0, i32* %arrayidx, align 8, !tbaa !12
  %arraydecay = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 0, i32 2, i64 0
  %arraydecay6 = bitcast %struct.EVP_CHACHA_AEAD_CTX* %1 to i32*
  tail call void @ChaCha20_ctr32(i8* noundef nonnull %arraydecay, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @zero, i64 0, i64 0), i64 noundef 64, i32* noundef %arraydecay6, i32* noundef nonnull %arrayidx) #8
  %add.ptr = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 1
  %4 = bitcast %struct.EVP_CHACHA_AEAD_CTX* %add.ptr to %struct.poly1305_context*
  tail call void @Poly1305_Init(%struct.poly1305_context* noundef nonnull %4, i8* noundef nonnull %arraydecay) #8
  store i32 1, i32* %arrayidx, align 8, !tbaa !12
  %partial_len = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 0, i32 3
  store i32 0, i32* %partial_len, align 8, !tbaa !51
  %aad = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 4, i32 0
  %5 = bitcast i64* %aad to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %5, align 8, !tbaa !44
  store i32 1, i32* %mac_inited, align 4, !tbaa !48
  br i1 %cmp, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end
  %arraydecay23 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 3, i64 0
  tail call void @Poly1305_Update(%struct.poly1305_context* noundef nonnull %4, i8* noundef nonnull %arraydecay23, i64 noundef 13) #8
  store i64 13, i64* %aad, align 8, !tbaa !52
  %aad26 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 5
  store i32 1, i32* %aad26, align 8, !tbaa !45
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.then21, %entry
  %tobool29.not = icmp eq i8* %in, null
  br i1 %tobool29.not, label %if.end79.thread, label %if.then30

if.end79.thread:                                  ; preds = %if.end28
  %cmp82.not261 = icmp eq i64 %2, %len
  br label %if.then84

if.then30:                                        ; preds = %if.end28
  %cmp31 = icmp eq i8* %out, null
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.then30
  %add.ptr33 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 1
  %6 = bitcast %struct.EVP_CHACHA_AEAD_CTX* %add.ptr33 to %struct.poly1305_context*
  tail call void @Poly1305_Update(%struct.poly1305_context* noundef nonnull %6, i8* noundef nonnull %in, i64 noundef %len) #8
  %aad35 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 4, i32 0
  %7 = load i64, i64* %aad35, align 8, !tbaa !52
  %add = add i64 %7, %len
  store i64 %add, i64* %aad35, align 8, !tbaa !52
  %aad36 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 5
  store i32 1, i32* %aad36, align 8, !tbaa !45
  %conv = trunc i64 %len to i32
  br label %cleanup152

if.else:                                          ; preds = %if.then30
  %aad37 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 5
  %8 = load i32, i32* %aad37, align 8, !tbaa !45
  %tobool38.not = icmp eq i32 %8, 0
  br i1 %tobool38.not, label %if.end48, label %if.then39

if.then39:                                        ; preds = %if.else
  %aad41 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 4, i32 0
  %9 = load i64, i64* %aad41, align 8, !tbaa !52
  %rem42 = and i64 %9, 15
  %tobool43.not = icmp eq i64 %rem42, 0
  br i1 %tobool43.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.then39
  %add.ptr45 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 1
  %10 = bitcast %struct.EVP_CHACHA_AEAD_CTX* %add.ptr45 to %struct.poly1305_context*
  %sub = sub nuw nsw i64 16, %rem42
  tail call void @Poly1305_Update(%struct.poly1305_context* noundef nonnull %10, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @zero, i64 0, i64 0), i64 noundef %sub) #8
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then39
  store i32 0, i32* %aad37, align 8, !tbaa !45
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.else
  store i64 -1, i64* %tls_payload_length, align 8, !tbaa !49
  %cmp50 = icmp eq i64 %2, -1
  br i1 %cmp50, label %if.end59, label %if.else53

if.else53:                                        ; preds = %if.end48
  %add54 = add i64 %2, 16
  %cmp55.not = icmp eq i64 %add54, %len
  br i1 %cmp55.not, label %if.end59, label %cleanup152

if.end59:                                         ; preds = %if.end48, %if.else53
  %plen.0 = phi i64 [ %2, %if.else53 ], [ %len, %if.end48 ]
  %encrypt = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %11 = load i32, i32* %encrypt, align 8, !tbaa !53
  %tobool60.not = icmp eq i32 %11, 0
  br i1 %tobool60.not, label %if.else69, label %if.then61

if.then61:                                        ; preds = %if.end59
  %call62 = tail call i32 @chacha_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef nonnull %out, i8* noundef nonnull %in, i64 noundef %plen.0) #10
  %add.ptr63 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 1
  %12 = bitcast %struct.EVP_CHACHA_AEAD_CTX* %add.ptr63 to %struct.poly1305_context*
  tail call void @Poly1305_Update(%struct.poly1305_context* noundef nonnull %12, i8* noundef nonnull %out, i64 noundef %plen.0) #8
  br label %if.end79

if.else69:                                        ; preds = %if.end59
  %add.ptr70 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 1
  %13 = bitcast %struct.EVP_CHACHA_AEAD_CTX* %add.ptr70 to %struct.poly1305_context*
  tail call void @Poly1305_Update(%struct.poly1305_context* noundef nonnull %13, i8* noundef nonnull %in, i64 noundef %plen.0) #8
  %call71 = tail call i32 @chacha_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef nonnull %out, i8* noundef nonnull %in, i64 noundef %plen.0) #10
  br label %if.end79

if.end79:                                         ; preds = %if.else69, %if.then61
  %text75 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 4, i32 1
  %14 = load i64, i64* %text75, align 8, !tbaa !54
  %add76 = add i64 %14, %plen.0
  store i64 %add76, i64* %text75, align 8, !tbaa !54
  %out.addr.0 = getelementptr inbounds i8, i8* %out, i64 %plen.0
  %in.addr.0 = getelementptr inbounds i8, i8* %in, i64 %plen.0
  %cmp82.not = icmp eq i64 %plen.0, %len
  br i1 %cmp82.not, label %if.end150, label %if.then84

if.then84:                                        ; preds = %if.end79.thread, %if.end79
  %cmp82.not266 = phi i1 [ %cmp82.not261, %if.end79.thread ], [ false, %if.end79 ]
  %plen.1265 = phi i64 [ %2, %if.end79.thread ], [ %plen.0, %if.end79 ]
  %out.addr.0264 = phi i8* [ %out, %if.end79.thread ], [ %out.addr.0, %if.end79 ]
  %in.addr.0263 = phi i8* [ null, %if.end79.thread ], [ %in.addr.0, %if.end79 ]
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %temp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #9
  %aad85 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 5
  %16 = load i32, i32* %aad85, align 8, !tbaa !45
  %tobool86.not = icmp eq i32 %16, 0
  br i1 %tobool86.not, label %if.end97, label %if.then87

if.then87:                                        ; preds = %if.then84
  %aad89 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 4, i32 0
  %17 = load i64, i64* %aad89, align 8, !tbaa !52
  %rem90 = and i64 %17, 15
  %tobool91.not = icmp eq i64 %rem90, 0
  br i1 %tobool91.not, label %if.end95, label %if.then92

if.then92:                                        ; preds = %if.then87
  %add.ptr93 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 1
  %18 = bitcast %struct.EVP_CHACHA_AEAD_CTX* %add.ptr93 to %struct.poly1305_context*
  %sub94 = sub nuw nsw i64 16, %rem90
  tail call void @Poly1305_Update(%struct.poly1305_context* noundef nonnull %18, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @zero, i64 0, i64 0), i64 noundef %sub94) #8
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.then87
  store i32 0, i32* %aad85, align 8, !tbaa !45
  br label %if.end97

if.end97:                                         ; preds = %if.end95, %if.then84
  %len98 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 4
  %text99 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 4, i32 1
  %19 = load i64, i64* %text99, align 8, !tbaa !54
  %rem100 = and i64 %19, 15
  %tobool101.not = icmp eq i64 %rem100, 0
  br i1 %tobool101.not, label %if.end105, label %if.then102

if.then102:                                       ; preds = %if.end97
  %add.ptr103 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 1
  %20 = bitcast %struct.EVP_CHACHA_AEAD_CTX* %add.ptr103 to %struct.poly1305_context*
  %sub104 = sub nuw nsw i64 16, %rem100
  tail call void @Poly1305_Update(%struct.poly1305_context* noundef nonnull %20, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @zero, i64 0, i64 0), i64 noundef %sub104) #8
  br label %if.end105

if.end105:                                        ; preds = %if.end97, %if.then102
  %add.ptr106 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 1
  %21 = bitcast %struct.EVP_CHACHA_AEAD_CTX* %add.ptr106 to %struct.poly1305_context*
  %22 = bitcast %struct.anon* %len98 to i8*
  tail call void @Poly1305_Update(%struct.poly1305_context* noundef nonnull %21, i8* noundef nonnull %22, i64 noundef 16) #8
  %encrypt109 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %23 = load i32, i32* %encrypt109, align 8, !tbaa !53
  %tobool110.not = icmp eq i32 %23, 0
  %arraydecay111 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 2, i64 0
  %cond = select i1 %tobool110.not, i8* %15, i8* %arraydecay111
  call void @Poly1305_Final(%struct.poly1305_context* noundef nonnull %21, i8* noundef nonnull %cond) #8
  store i32 0, i32* %mac_inited, align 4, !tbaa !48
  %cmp114.not = icmp eq i8* %in.addr.0263, null
  %or.cond256 = select i1 %cmp114.not, i1 true, i1 %cmp82.not266
  %24 = load i32, i32* %encrypt109, align 8, !tbaa !53
  %tobool137.not = icmp eq i32 %24, 0
  br i1 %or.cond256, label %if.else135, label %if.then119

if.then119:                                       ; preds = %if.end105
  br i1 %tobool137.not, label %if.else126, label %if.then122

if.then122:                                       ; preds = %if.then119
  %call125 = call i8* @memcpy(i8* noundef %out.addr.0264, i8* noundef nonnull %arraydecay111, i64 noundef 16) #8
  br label %if.end150.critedge

if.else126:                                       ; preds = %if.then119
  %call128 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %15, i8* noundef nonnull %in.addr.0263, i64 noundef 16) #8
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end150.critedge, label %if.then130

if.then130:                                       ; preds = %if.else126
  %idx.neg = sub i64 0, %plen.1265
  %add.ptr131 = getelementptr inbounds i8, i8* %out.addr.0264, i64 %idx.neg
  %call132 = call i8* @memset(i8* noundef %add.ptr131, i32 noundef 0, i64 noundef %plen.1265) #8
  br label %cleanup

if.else135:                                       ; preds = %if.end105
  br i1 %tobool137.not, label %if.then138, label %if.end150.critedge

if.then138:                                       ; preds = %if.else135
  %tag_len = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 7
  %25 = load i32, i32* %tag_len, align 8, !tbaa !55
  %conv142 = sext i32 %25 to i64
  %call143 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %15, i8* noundef nonnull %arraydecay111, i64 noundef %conv142) #8
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end150.critedge, label %cleanup

cleanup:                                          ; preds = %if.then138, %if.then130
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #9
  br label %cleanup152

if.end150.critedge:                               ; preds = %if.else126, %if.then122, %if.then138, %if.else135
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #9
  br label %if.end150

if.end150:                                        ; preds = %if.end150.critedge, %if.end79
  %conv151 = trunc i64 %len to i32
  br label %cleanup152

cleanup152:                                       ; preds = %cleanup, %if.else53, %if.end150, %if.then32, %if.then2
  %retval.1 = phi i32 [ %conv, %if.then32 ], [ %conv151, %if.end150 ], [ -1, %cleanup ], [ %call, %if.then2 ], [ -1, %if.else53 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @chacha20_poly1305_cleanup(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx) #2 {
entry:
  %cipher_data = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 11
  %0 = load i8*, i8** %cipher_data, align 8, !tbaa !4
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @Poly1305_ctx_size() #8
  %add = add i64 %call, 208
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef %add) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @chacha20_poly1305_ctrl(%struct.evp_cipher_ctx_st* nocapture noundef %ctx, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #2 {
entry:
  %cipher_data = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 11
  %0 = load i8*, i8** %cipher_data, align 8, !tbaa !4
  switch i32 %type, label %sw.default [
    i32 0, label %sw.bb
    i32 8, label %sw.bb9
    i32 37, label %sw.bb20
    i32 9, label %sw.bb22
    i32 18, label %sw.bb28
    i32 17, label %sw.bb89
    i32 16, label %sw.bb105
    i32 22, label %sw.bb119
    i32 23, label %cleanup203
  ]

sw.bb:                                            ; preds = %entry
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.end, label %if.end5

if.end:                                           ; preds = %sw.bb
  %call = tail call i64 @Poly1305_ctx_size() #8
  %add = add i64 %call, 208
  %call1 = tail call i8* @CRYPTO_zalloc(i64 noundef %add, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 505) #8
  store i8* %call1, i8** %cipher_data, align 8, !tbaa !4
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 507, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.chacha20_poly1305_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #8
  br label %cleanup203

if.end5:                                          ; preds = %sw.bb, %if.end
  %actx.0.in292 = phi i8* [ %call1, %if.end ], [ %0, %sw.bb ]
  %len = getelementptr inbounds i8, i8* %actx.0.in292, i64 168
  %1 = bitcast i8* %len to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %1, align 8, !tbaa !44
  %aad7 = getelementptr inbounds i8, i8* %actx.0.in292, i64 184
  %2 = bitcast i8* %aad7 to <4 x i32>*
  store <4 x i32> <i32 0, i32 0, i32 0, i32 12>, <4 x i32>* %2, align 8, !tbaa !12
  %tls_payload_length = getelementptr inbounds i8, i8* %actx.0.in292, i64 200
  %3 = bitcast i8* %tls_payload_length to i64*
  store i64 -1, i64* %3, align 8, !tbaa !49
  %tls_aad = getelementptr inbounds i8, i8* %actx.0.in292, i64 148
  %call8 = tail call i8* @memset(i8* noundef nonnull %tls_aad, i32 noundef 0, i64 noundef 16) #8
  br label %cleanup203

sw.bb9:                                           ; preds = %entry
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %cleanup203, label %if.then10

if.then10:                                        ; preds = %sw.bb9
  %call11 = tail call i64 @Poly1305_ctx_size() #8
  %add12 = add i64 %call11, 208
  %call13 = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %0, i64 noundef %add12, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 525) #8
  %cipher_data14 = getelementptr inbounds i8, i8* %ptr, i64 120
  %4 = bitcast i8* %cipher_data14 to i8**
  store i8* %call13, i8** %4, align 8, !tbaa !4
  %cmp16 = icmp eq i8* %call13, null
  br i1 %cmp16, label %if.then17, label %cleanup203

if.then17:                                        ; preds = %if.then10
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 527, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.chacha20_poly1305_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 173, i8* noundef null) #8
  br label %cleanup203

sw.bb20:                                          ; preds = %entry
  %nonce_len21 = getelementptr inbounds i8, i8* %0, i64 196
  %5 = bitcast i8* %nonce_len21 to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !50
  %7 = bitcast i8* %ptr to i32*
  store i32 %6, i32* %7, align 4, !tbaa !12
  br label %cleanup203

sw.bb22:                                          ; preds = %entry
  %8 = add i32 %arg, -13
  %9 = icmp ult i32 %8, -12
  br i1 %9, label %cleanup203, label %if.end26

if.end26:                                         ; preds = %sw.bb22
  %nonce_len27 = getelementptr inbounds i8, i8* %0, i64 196
  %10 = bitcast i8* %nonce_len27 to i32*
  store i32 %arg, i32* %10, align 4, !tbaa !50
  br label %cleanup203

sw.bb28:                                          ; preds = %entry
  %cmp29.not = icmp eq i32 %arg, 12
  br i1 %cmp29.not, label %if.end31, label %cleanup203

if.end31:                                         ; preds = %sw.bb28
  %11 = load i8, i8* %ptr, align 1, !tbaa !11
  %conv = zext i8 %11 to i32
  %arrayidx32 = getelementptr inbounds i8, i8* %ptr, i64 1
  %12 = load i8, i8* %arrayidx32, align 1, !tbaa !11
  %conv33 = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv33, 8
  %or = or i32 %shl, %conv
  %arrayidx34 = getelementptr inbounds i8, i8* %ptr, i64 2
  %13 = load i8, i8* %arrayidx34, align 1, !tbaa !11
  %conv35 = zext i8 %13 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %or37 = or i32 %or, %shl36
  %arrayidx38 = getelementptr inbounds i8, i8* %ptr, i64 3
  %14 = load i8, i8* %arrayidx38, align 1, !tbaa !11
  %conv39 = zext i8 %14 to i32
  %shl40 = shl nuw i32 %conv39, 24
  %or41 = or i32 %or37, %shl40
  %arrayidx42 = getelementptr inbounds i8, i8* %0, i64 36
  %15 = bitcast i8* %arrayidx42 to i32*
  store i32 %or41, i32* %15, align 4, !tbaa !12
  %nonce = getelementptr inbounds i8, i8* %0, i64 120
  %arrayidx43 = bitcast i8* %nonce to i32*
  store i32 %or41, i32* %arrayidx43, align 8, !tbaa !12
  %add.ptr = getelementptr inbounds i8, i8* %ptr, i64 4
  %16 = load i8, i8* %add.ptr, align 1, !tbaa !11
  %conv45 = zext i8 %16 to i32
  %arrayidx47 = getelementptr inbounds i8, i8* %ptr, i64 5
  %17 = load i8, i8* %arrayidx47, align 1, !tbaa !11
  %conv48 = zext i8 %17 to i32
  %shl49 = shl nuw nsw i32 %conv48, 8
  %or50 = or i32 %shl49, %conv45
  %arrayidx52 = getelementptr inbounds i8, i8* %ptr, i64 6
  %18 = load i8, i8* %arrayidx52, align 1, !tbaa !11
  %conv53 = zext i8 %18 to i32
  %shl54 = shl nuw nsw i32 %conv53, 16
  %or55 = or i32 %or50, %shl54
  %arrayidx57 = getelementptr inbounds i8, i8* %ptr, i64 7
  %19 = load i8, i8* %arrayidx57, align 1, !tbaa !11
  %conv58 = zext i8 %19 to i32
  %shl59 = shl nuw i32 %conv58, 24
  %or60 = or i32 %or55, %shl59
  %arrayidx63 = getelementptr inbounds i8, i8* %0, i64 40
  %20 = bitcast i8* %arrayidx63 to i32*
  store i32 %or60, i32* %20, align 8, !tbaa !12
  %arrayidx65 = getelementptr inbounds i8, i8* %0, i64 124
  %21 = bitcast i8* %arrayidx65 to i32*
  store i32 %or60, i32* %21, align 4, !tbaa !12
  %add.ptr66 = getelementptr inbounds i8, i8* %ptr, i64 8
  %22 = load i8, i8* %add.ptr66, align 1, !tbaa !11
  %conv68 = zext i8 %22 to i32
  %arrayidx70 = getelementptr inbounds i8, i8* %ptr, i64 9
  %23 = load i8, i8* %arrayidx70, align 1, !tbaa !11
  %conv71 = zext i8 %23 to i32
  %shl72 = shl nuw nsw i32 %conv71, 8
  %or73 = or i32 %shl72, %conv68
  %arrayidx75 = getelementptr inbounds i8, i8* %ptr, i64 10
  %24 = load i8, i8* %arrayidx75, align 1, !tbaa !11
  %conv76 = zext i8 %24 to i32
  %shl77 = shl nuw nsw i32 %conv76, 16
  %or78 = or i32 %or73, %shl77
  %arrayidx80 = getelementptr inbounds i8, i8* %ptr, i64 11
  %25 = load i8, i8* %arrayidx80, align 1, !tbaa !11
  %conv81 = zext i8 %25 to i32
  %shl82 = shl nuw i32 %conv81, 24
  %or83 = or i32 %or78, %shl82
  %arrayidx86 = getelementptr inbounds i8, i8* %0, i64 44
  %26 = bitcast i8* %arrayidx86 to i32*
  store i32 %or83, i32* %26, align 4, !tbaa !12
  %arrayidx88 = getelementptr inbounds i8, i8* %0, i64 128
  %27 = bitcast i8* %arrayidx88 to i32*
  store i32 %or83, i32* %27, align 8, !tbaa !12
  br label %cleanup203

sw.bb89:                                          ; preds = %entry
  %28 = add i32 %arg, -17
  %29 = icmp ult i32 %28, -16
  br i1 %29, label %cleanup203, label %if.end96

if.end96:                                         ; preds = %sw.bb89
  %cmp97.not = icmp eq i8* %ptr, null
  br i1 %cmp97.not, label %cleanup203, label %if.then99

if.then99:                                        ; preds = %if.end96
  %tag = getelementptr inbounds i8, i8* %0, i64 132
  %conv101293 = zext i32 %arg to i64
  %call102 = tail call i8* @memcpy(i8* noundef nonnull %tag, i8* noundef nonnull %ptr, i64 noundef %conv101293) #8
  %tag_len103 = getelementptr inbounds i8, i8* %0, i64 192
  %30 = bitcast i8* %tag_len103 to i32*
  store i32 %arg, i32* %30, align 8, !tbaa !55
  br label %cleanup203

sw.bb105:                                         ; preds = %entry
  %31 = add i32 %arg, -17
  %32 = icmp ult i32 %31, -16
  br i1 %32, label %cleanup203, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %sw.bb105
  %encrypt = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %33 = load i32, i32* %encrypt, align 8, !tbaa !53
  %tobool112.not = icmp eq i32 %33, 0
  br i1 %tobool112.not, label %cleanup203, label %if.end114

if.end114:                                        ; preds = %lor.lhs.false111
  %tag115 = getelementptr inbounds i8, i8* %0, i64 132
  %conv117294 = zext i32 %arg to i64
  %call118 = tail call i8* @memcpy(i8* noundef %ptr, i8* noundef nonnull %tag115, i64 noundef %conv117294) #8
  br label %cleanup203

sw.bb119:                                         ; preds = %entry
  %cmp120.not = icmp eq i32 %arg, 13
  br i1 %cmp120.not, label %if.end123, label %cleanup203

if.end123:                                        ; preds = %sw.bb119
  %tls_aad126 = getelementptr inbounds i8, i8* %0, i64 148
  %call128 = tail call i8* @memcpy(i8* noundef nonnull %tls_aad126, i8* noundef %ptr, i64 noundef 13) #8
  %arrayidx129 = getelementptr inbounds i8, i8* %ptr, i64 11
  %34 = load i8, i8* %arrayidx129, align 1, !tbaa !11
  %conv130 = zext i8 %34 to i32
  %shl131 = shl nuw nsw i32 %conv130, 8
  %arrayidx132 = getelementptr inbounds i8, i8* %ptr, i64 12
  %35 = load i8, i8* %arrayidx132, align 1, !tbaa !11
  %conv133 = zext i8 %35 to i32
  %or134 = or i32 %shl131, %conv133
  %encrypt137 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %36 = load i32, i32* %encrypt137, align 8, !tbaa !53
  %tobool138.not = icmp eq i32 %36, 0
  br i1 %tobool138.not, label %if.then139, label %if.end148

if.then139:                                       ; preds = %if.end123
  %cmp140 = icmp ult i32 %or134, 16
  br i1 %cmp140, label %cleanup203, label %if.end143

if.end143:                                        ; preds = %if.then139
  %sub = add nsw i32 %or134, -16
  %shr = lshr i32 %sub, 8
  %conv144 = trunc i32 %shr to i8
  %arrayidx145 = getelementptr inbounds i8, i8* %0, i64 159
  store i8 %conv144, i8* %arrayidx145, align 1, !tbaa !11
  %conv146 = trunc i32 %sub to i8
  %arrayidx147 = getelementptr inbounds i8, i8* %0, i64 160
  store i8 %conv146, i8* %arrayidx147, align 1, !tbaa !11
  br label %if.end148

if.end148:                                        ; preds = %if.end143, %if.end123
  %len124.0 = phi i32 [ %or134, %if.end123 ], [ %sub, %if.end143 ]
  %conv149 = zext i32 %len124.0 to i64
  %tls_payload_length150 = getelementptr inbounds i8, i8* %0, i64 200
  %37 = bitcast i8* %tls_payload_length150 to i64*
  store i64 %conv149, i64* %37, align 8, !tbaa !49
  %nonce151 = getelementptr inbounds i8, i8* %0, i64 120
  %arrayidx152 = bitcast i8* %nonce151 to i32*
  %38 = load i32, i32* %arrayidx152, align 8, !tbaa !12
  %arrayidx155 = getelementptr inbounds i8, i8* %0, i64 36
  %39 = bitcast i8* %arrayidx155 to i32*
  store i32 %38, i32* %39, align 4, !tbaa !12
  %arrayidx157 = getelementptr inbounds i8, i8* %0, i64 124
  %40 = bitcast i8* %arrayidx157 to i32*
  %41 = load i32, i32* %40, align 4, !tbaa !12
  %42 = load i8, i8* %tls_aad126, align 1, !tbaa !11
  %conv159 = zext i8 %42 to i32
  %arrayidx160 = getelementptr inbounds i8, i8* %0, i64 149
  %43 = load i8, i8* %arrayidx160, align 1, !tbaa !11
  %conv161 = zext i8 %43 to i32
  %shl162 = shl nuw nsw i32 %conv161, 8
  %or163 = or i32 %shl162, %conv159
  %arrayidx164 = getelementptr inbounds i8, i8* %0, i64 150
  %44 = load i8, i8* %arrayidx164, align 1, !tbaa !11
  %conv165 = zext i8 %44 to i32
  %shl166 = shl nuw nsw i32 %conv165, 16
  %or167 = or i32 %or163, %shl166
  %arrayidx168 = getelementptr inbounds i8, i8* %0, i64 151
  %45 = load i8, i8* %arrayidx168, align 1, !tbaa !11
  %conv169 = zext i8 %45 to i32
  %shl170 = shl nuw i32 %conv169, 24
  %or171 = or i32 %or167, %shl170
  %xor = xor i32 %or171, %41
  %arrayidx174 = getelementptr inbounds i8, i8* %0, i64 40
  %46 = bitcast i8* %arrayidx174 to i32*
  store i32 %xor, i32* %46, align 8, !tbaa !12
  %arrayidx176 = getelementptr inbounds i8, i8* %0, i64 128
  %47 = bitcast i8* %arrayidx176 to i32*
  %48 = load i32, i32* %47, align 8, !tbaa !12
  %add.ptr177 = getelementptr inbounds i8, i8* %0, i64 152
  %49 = load i8, i8* %add.ptr177, align 1, !tbaa !11
  %conv179 = zext i8 %49 to i32
  %arrayidx181 = getelementptr inbounds i8, i8* %0, i64 153
  %50 = load i8, i8* %arrayidx181, align 1, !tbaa !11
  %conv182 = zext i8 %50 to i32
  %shl183 = shl nuw nsw i32 %conv182, 8
  %or184 = or i32 %shl183, %conv179
  %arrayidx186 = getelementptr inbounds i8, i8* %0, i64 154
  %51 = load i8, i8* %arrayidx186, align 1, !tbaa !11
  %conv187 = zext i8 %51 to i32
  %shl188 = shl nuw nsw i32 %conv187, 16
  %or189 = or i32 %or184, %shl188
  %arrayidx191 = getelementptr inbounds i8, i8* %0, i64 155
  %52 = load i8, i8* %arrayidx191, align 1, !tbaa !11
  %conv192 = zext i8 %52 to i32
  %shl193 = shl nuw i32 %conv192, 24
  %or194 = or i32 %or189, %shl193
  %xor195 = xor i32 %or194, %48
  %arrayidx198 = getelementptr inbounds i8, i8* %0, i64 44
  %53 = bitcast i8* %arrayidx198 to i32*
  store i32 %xor195, i32* %53, align 4, !tbaa !12
  %mac_inited199 = getelementptr inbounds i8, i8* %0, i64 188
  %54 = bitcast i8* %mac_inited199 to i32*
  store i32 0, i32* %54, align 4, !tbaa !48
  br label %cleanup203

sw.default:                                       ; preds = %entry
  br label %cleanup203

cleanup203:                                       ; preds = %sw.bb9, %if.then10, %if.then17, %entry, %if.end148, %if.then139, %sw.bb119, %sw.bb105, %lor.lhs.false111, %if.end96, %if.then99, %sw.bb89, %sw.bb28, %sw.bb22, %sw.default, %if.end114, %if.end31, %if.end26, %sw.bb20, %if.end5, %if.then4
  %retval.2 = phi i32 [ -1, %sw.default ], [ 1, %if.end114 ], [ 1, %if.end31 ], [ 1, %if.end26 ], [ 1, %sw.bb20 ], [ 0, %if.then17 ], [ 0, %if.then4 ], [ 1, %if.end5 ], [ 0, %sw.bb22 ], [ 0, %sw.bb28 ], [ 0, %sw.bb89 ], [ 1, %if.then99 ], [ 1, %if.end96 ], [ 0, %lor.lhs.false111 ], [ 0, %sw.bb105 ], [ 0, %sw.bb119 ], [ 16, %if.end148 ], [ 0, %if.then139 ], [ 1, %entry ], [ 1, %if.then10 ], [ 1, %sw.bb9 ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @chacha20_poly1305_tls_cipher(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) unnamed_addr #2 {
entry:
  %storage = alloca [288 x i8], align 16
  %cipher_data = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 11
  %0 = bitcast i8** %cipher_data to %struct.EVP_CHACHA_AEAD_CTX**
  %1 = load %struct.EVP_CHACHA_AEAD_CTX*, %struct.EVP_CHACHA_AEAD_CTX** %0, align 8, !tbaa !4
  %tls_payload_length = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 9
  %2 = load i64, i64* %tls_payload_length, align 8, !tbaa !49
  %3 = getelementptr inbounds [288 x i8], [288 x i8]* %storage, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %3) #9
  %add = add i64 %2, 16
  %cmp.not = icmp eq i64 %add, %len
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr2 = getelementptr inbounds [288 x i8], [288 x i8]* %storage, i64 0, i64 64
  %add.ptr4 = getelementptr inbounds [288 x i8], [288 x i8]* %storage, i64 0, i64 48
  %cmp5 = icmp ult i64 %2, 193
  %arrayidx = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 0, i32 1, i64 0
  store i32 0, i32* %arrayidx, align 8, !tbaa !12
  br i1 %cmp5, label %if.then6, label %if.else30

if.then6:                                         ; preds = %if.end
  %sub8 = add nuw nsw i64 %2, 127
  %and9 = and i64 %sub8, -64
  %arraydecay12 = bitcast %struct.EVP_CHACHA_AEAD_CTX* %1 to i32*
  call void @ChaCha20_ctr32(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @zero, i64 0, i64 0), i64 noundef %and9, i32* noundef %arraydecay12, i32* noundef nonnull %arrayidx) #8
  %add.ptr16 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 1
  %4 = bitcast %struct.EVP_CHACHA_AEAD_CTX* %add.ptr16 to %struct.poly1305_context*
  call void @Poly1305_Init(%struct.poly1305_context* noundef nonnull %4, i8* noundef nonnull %3) #8
  %partial_len = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 0, i32 3
  store i32 0, i32* %partial_len, align 8, !tbaa !51
  %arraydecay18 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 3, i64 0
  %call = call i8* @memcpy(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %arraydecay18, i64 noundef 16) #8
  %aad = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 4, i32 0
  store i64 13, i64* %aad, align 8, !tbaa !52
  %text = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 4, i32 1
  store i64 %2, i64* %text, align 8, !tbaa !54
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end80, label %if.then21

if.then21:                                        ; preds = %if.then6
  %encrypt = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %5 = load i32, i32* %encrypt, align 8, !tbaa !53
  %tobool22.not = icmp eq i32 %5, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then21
  %call24 = call i8* @xor128_encrypt_n_pad(i8* noundef %out, i8* noundef %in, i8* noundef nonnull %add.ptr2, i64 noundef %2) #8
  br label %if.end26

if.else:                                          ; preds = %if.then21
  %call25 = call i8* @xor128_decrypt_n_pad(i8* noundef %out, i8* noundef %in, i8* noundef nonnull %add.ptr2, i64 noundef %2) #8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23
  %ctr.0 = phi i8* [ %call24, %if.then23 ], [ %call25, %if.else ]
  %add.ptr27 = getelementptr inbounds i8, i8* %in, i64 %2
  %add.ptr28 = getelementptr inbounds i8, i8* %out, i64 %2
  %sub.ptr.lhs.cast = ptrtoint i8* %ctr.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr4 to i64
  %sub.ptr.sub = sub i64 16, %sub.ptr.rhs.cast
  %phi.bo = add i64 %sub.ptr.sub, %sub.ptr.lhs.cast
  br label %if.end80

if.else30:                                        ; preds = %if.end
  %arraydecay37 = bitcast %struct.EVP_CHACHA_AEAD_CTX* %1 to i32*
  call void @ChaCha20_ctr32(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @zero, i64 0, i64 0), i64 noundef 64, i32* noundef %arraydecay37, i32* noundef nonnull %arrayidx) #8
  %add.ptr41 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 1
  %6 = bitcast %struct.EVP_CHACHA_AEAD_CTX* %add.ptr41 to %struct.poly1305_context*
  call void @Poly1305_Init(%struct.poly1305_context* noundef nonnull %6, i8* noundef nonnull %3) #8
  store i32 1, i32* %arrayidx, align 8, !tbaa !12
  %partial_len46 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 0, i32 3
  store i32 0, i32* %partial_len46, align 8, !tbaa !51
  %arraydecay49 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 3, i64 0
  call void @Poly1305_Update(%struct.poly1305_context* noundef nonnull %6, i8* noundef nonnull %arraydecay49, i64 noundef 16) #8
  %aad51 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 4, i32 0
  store i64 13, i64* %aad51, align 8, !tbaa !52
  %text53 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 4, i32 1
  store i64 %2, i64* %text53, align 8, !tbaa !54
  %encrypt54 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %7 = load i32, i32* %encrypt54, align 8, !tbaa !53
  %tobool55.not = icmp eq i32 %7, 0
  br i1 %tobool55.not, label %if.else65, label %if.then56

if.then56:                                        ; preds = %if.else30
  call void @ChaCha20_ctr32(i8* noundef %out, i8* noundef %in, i64 noundef %2, i32* noundef nonnull %arraydecay37, i32* noundef nonnull %arrayidx) #8
  call void @Poly1305_Update(%struct.poly1305_context* noundef nonnull %6, i8* noundef %out, i64 noundef %2) #8
  br label %if.end74

if.else65:                                        ; preds = %if.else30
  call void @Poly1305_Update(%struct.poly1305_context* noundef nonnull %6, i8* noundef %in, i64 noundef %2) #8
  call void @ChaCha20_ctr32(i8* noundef %out, i8* noundef %in, i64 noundef %2, i32* noundef nonnull %arraydecay37, i32* noundef nonnull %arrayidx) #8
  br label %if.end74

if.end74:                                         ; preds = %if.else65, %if.then56
  %add.ptr75 = getelementptr inbounds i8, i8* %in, i64 %2
  %add.ptr76 = getelementptr inbounds i8, i8* %out, i64 %2
  %sub77 = sub i64 0, %2
  %and78 = and i64 %sub77, 15
  call void @Poly1305_Update(%struct.poly1305_context* noundef nonnull %6, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @zero, i64 0, i64 0), i64 noundef %and78) #8
  br label %if.end80

if.end80:                                         ; preds = %if.then6, %if.end26, %if.end74
  %.pre-phi = phi %struct.poly1305_context* [ %4, %if.then6 ], [ %4, %if.end26 ], [ %6, %if.end74 ]
  %tohash_len.0 = phi i64 [ 32, %if.then6 ], [ %phi.bo, %if.end26 ], [ 16, %if.end74 ]
  %buf_len.0 = phi i64 [ 64, %if.then6 ], [ %and9, %if.end26 ], [ 64, %if.end74 ]
  %in.addr.0 = phi i8* [ %in, %if.then6 ], [ %add.ptr27, %if.end26 ], [ %add.ptr75, %if.end74 ]
  %out.addr.0 = phi i8* [ %out, %if.then6 ], [ %add.ptr28, %if.end26 ], [ %add.ptr76, %if.end74 ]
  %tohash.0 = phi i8* [ %add.ptr4, %if.then6 ], [ %add.ptr4, %if.end26 ], [ %add.ptr2, %if.end74 ]
  %ctr.1 = phi i8* [ %add.ptr2, %if.then6 ], [ %ctr.0, %if.end26 ], [ %add.ptr2, %if.end74 ]
  %len81 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 4
  %8 = bitcast %struct.anon* %len81 to i8*
  %call82 = call i8* @memcpy(i8* noundef %ctr.1, i8* noundef nonnull %8, i64 noundef 16) #8
  call void @Poly1305_Update(%struct.poly1305_context* noundef nonnull %.pre-phi, i8* noundef nonnull %tohash.0, i64 noundef %tohash_len.0) #8
  call void @OPENSSL_cleanse(i8* noundef nonnull %3, i64 noundef %buf_len.0) #8
  %encrypt86 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %9 = load i32, i32* %encrypt86, align 8, !tbaa !53
  %tobool87.not = icmp eq i32 %9, 0
  %arraydecay88 = getelementptr inbounds %struct.EVP_CHACHA_AEAD_CTX, %struct.EVP_CHACHA_AEAD_CTX* %1, i64 0, i32 2, i64 0
  %cond = select i1 %tobool87.not, i8* %tohash.0, i8* %arraydecay88
  call void @Poly1305_Final(%struct.poly1305_context* noundef nonnull %.pre-phi, i8* noundef nonnull %cond) #8
  store i64 -1, i64* %tls_payload_length, align 8, !tbaa !49
  %10 = load i32, i32* %encrypt86, align 8, !tbaa !53
  %tobool91.not = icmp eq i32 %10, 0
  br i1 %tobool91.not, label %if.else96, label %if.then92

if.then92:                                        ; preds = %if.end80
  %call95 = call i8* @memcpy(i8* noundef %out.addr.0, i8* noundef nonnull %arraydecay88, i64 noundef 16) #8
  br label %if.end105

if.else96:                                        ; preds = %if.end80
  %call97 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %tohash.0, i8* noundef %in.addr.0, i64 noundef 16) #8
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end105, label %if.then99

if.then99:                                        ; preds = %if.else96
  %sub100 = add i64 %len, -16
  %idx.neg = sub i64 16, %len
  %add.ptr101 = getelementptr inbounds i8, i8* %out.addr.0, i64 %idx.neg
  %call103 = call i8* @memset(i8* noundef %add.ptr101, i32 noundef 0, i64 noundef %sub100) #8
  br label %cleanup

if.end105:                                        ; preds = %if.else96, %if.then92
  %conv = trunc i64 %len to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end105, %if.then99
  %retval.0 = phi i32 [ %conv, %if.end105 ], [ -1, %if.then99 ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %3) #9
  ret i32 %retval.0
}

declare void @Poly1305_Init(%struct.poly1305_context* noundef, i8* noundef) local_unnamed_addr #4

declare void @Poly1305_Update(%struct.poly1305_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare void @Poly1305_Final(%struct.poly1305_context* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i8* @xor128_encrypt_n_pad(i8* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i8* @xor128_decrypt_n_pad(i8* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #4

declare i64 @Poly1305_ctx_size() local_unnamed_addr #4

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 120}
!5 = !{!"evp_cipher_ctx_st", !6, i64 0, !6, i64 8, !9, i64 16, !9, i64 20, !7, i64 24, !7, i64 40, !7, i64 56, !9, i64 88, !6, i64 96, !9, i64 104, !10, i64 112, !6, i64 120, !9, i64 128, !9, i64 132, !7, i64 136, !6, i64 168, !6, i64 176}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!14, !9, i64 112}
!14 = !{!"", !7, i64 0, !7, i64 32, !7, i64 48, !9, i64 112}
!15 = !{!16}
!16 = distinct !{!16, !17}
!17 = distinct !{!17, !"LVerDomain"}
!18 = !{!19}
!19 = distinct !{!19, !17}
!20 = !{!21}
!21 = distinct !{!21, !17}
!22 = !{!16, !19}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !24, !25}
!29 = distinct !{!29, !24}
!30 = !{!31}
!31 = distinct !{!31, !32}
!32 = distinct !{!32, !"LVerDomain"}
!33 = !{!34}
!34 = distinct !{!34, !32}
!35 = !{!36}
!36 = distinct !{!36, !32}
!37 = !{!31, !34}
!38 = distinct !{!38, !24, !25}
!39 = distinct !{!39, !27}
!40 = distinct !{!40, !24, !25, !41}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !24, !25}
!44 = !{!10, !10, i64 0}
!45 = !{!46, !9, i64 184}
!46 = !{!"", !14, i64 0, !7, i64 120, !7, i64 132, !7, i64 148, !47, i64 168, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !10, i64 200}
!47 = !{!"", !10, i64 0, !10, i64 8}
!48 = !{!46, !9, i64 188}
!49 = !{!46, !10, i64 200}
!50 = !{!46, !9, i64 196}
!51 = !{!46, !9, i64 112}
!52 = !{!46, !10, i64 168}
!53 = !{!5, !9, i64 16}
!54 = !{!46, !10, i64 176}
!55 = !{!46, !9, i64 192}

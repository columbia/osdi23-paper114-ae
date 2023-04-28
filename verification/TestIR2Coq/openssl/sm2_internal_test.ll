; ModuleID = 'test/sm2_internal_test.c'
source_filename = "test/sm2_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_provider_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ec_group_st = type opaque
%struct.evp_md_st = type opaque
%struct.bignum_st = type opaque
%struct.bignum_ctx = type opaque
%struct.ec_point_st = type opaque
%struct.ec_key_st = type opaque
%struct.evp_rand_ctx_st = type opaque
%struct.ECDSA_SIG_st = type opaque

@fake_rand = internal unnamed_addr global %struct.ossl_provider_st* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"sm2_crypt_test\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"sm2_sig_test\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"8542D69E4C044F18E8B92435BF6FF7DE457283915C45517D722EDB8B08F1DFC3\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"787968B4FA32C3FD2417842E73BBFEFF2F3C848B6831D7E0EC65228B3937E498\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"63E4C6D3B23B0C849CF84241484BFE48F61D59A5B16BA06E6E12D1DA27C5249A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"421DEBD61B62EAB6746434EBC3CC315E32220B3BADD50BDC4C4E6C147FEDD43D\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"0680512BCBB42C07D47349D2153B70C4E5D7FDFCBFA36EA1A85841B9E46E09A2\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"8542D69E4C044F18E8B92435BF6FF7DD297720630485628D5AE74EE7C32E79B7\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"test/sm2_internal_test.c\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"test_group\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"1649AB77A00637BD5E2EFE283FBF353534AA7F7CB89463F208DDBC2920BB0DA0\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"encryption standard\00", align 1
@.str.13 = private unnamed_addr constant [199 x i8] c"004C62EEFD6ECFC2B95B92FD6C3D9575148AFA17425546D49018E5388D49DD7B4F0092e8ff62146873c258557548500ab2df2a365e0609ab67640a1f6d57d7b17820008349312695a3e1d2f46905f39a766487f2432e95d6be0cb009fe8c69fd8825a7\00", align 1
@.str.14 = private unnamed_addr constant [251 x i8] c"307B0220245C26FB68B1DDDDB12C4B6BF9F2B6D5FE60A383B0D18D1C4144ABF17F6252E7022076CB9264C2A7E88E52B19903FDC47378F605E36811F5C07423A24B84400F01B804209C3D7360C30156FAB7C80A0276712DA9D8094A634B766D3A285E07480653426D0413650053A89B41C418B0C3AAD00D886C00286467\00", align 1
@.str.15 = private unnamed_addr constant [199 x i8] c"004C62EEFD6ECFC2B95B92FD6C3D9575148AFA17425546D49018E5388D49DD7B4F003da18008784352192d70f22c26c243174a447ba272fec64163dd4742bae8bc9800df17605cf304e9dd1dfeb90c015e93b393a6f046792f790a6fa4228af67d9588\00", align 1
@.str.16 = private unnamed_addr constant [251 x i8] c"307B0220245C26FB68B1DDDDB12C4B6BF9F2B6D5FE60A383B0D18D1C4144ABF17F6252E7022076CB9264C2A7E88E52B19903FDC47378F605E36811F5C07423A24B84400F01B80420BE89139D07853100EFA763F60CBE30099EA3DF7F8F364F9D10A5E988E3C5AAFC0413229E6C9AEE2BB92CAD649FE2C035689785DA33\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"BN_hex2bn(&p, p_hex)\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"BN_hex2bn(&a, a_hex)\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"BN_hex2bn(&b, b_hex)\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"generator\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"BN_hex2bn(&g_x, x_hex)\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"BN_hex2bn(&g_y, y_hex)\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"EC_POINT_set_affine_coordinates(group, generator, g_x, g_y, NULL)\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"BN_hex2bn(&order, order_hex)\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"BN_hex2bn(&cof, cof_hex)\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"EC_GROUP_set_generator(group, generator, order, cof)\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"BN_hex2bn(&priv, privkey_hex)\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"EC_KEY_set_group(key, group)\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"EC_KEY_set_private_key(key, priv)\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"EC_POINT_mul(group, pt, priv, NULL, NULL, NULL)\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"EC_KEY_set_public_key(key, pt)\00", align 1
@.str.36 = private unnamed_addr constant [59 x i8] c"ossl_sm2_ciphertext_size(key, digest, msg_len, &ctext_len)\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"ctext\00", align 1
@.str.38 = private unnamed_addr constant [84 x i8] c"ossl_sm2_encrypt(key, digest, (const uint8_t *)message, msg_len, ctext, &ctext_len)\00", align 1
@.str.39 = private unnamed_addr constant [54 x i8] c"ossl_sm2_plaintext_size(ctext, ctext_len, &ptext_len)\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"ptext_len\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"msg_len\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"recovered\00", align 1
@.str.43 = private unnamed_addr constant [75 x i8] c"ossl_sm2_decrypt(key, digest, ctext, ctext_len, recovered, &recovered_len)\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"recovered_len\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@fake_rand_bytes = internal unnamed_addr global i8* null, align 8
@fake_rand_bytes_offset = internal unnamed_addr global i64 0, align 8
@fake_rand_size = internal unnamed_addr global i64 0, align 8
@.str.46 = private unnamed_addr constant [54 x i8] c"fake_rand_bytes = OPENSSL_hexstr2buf(hex_bytes, NULL)\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"fake_rand_bytes\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"fake_rand_size\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.50 = private unnamed_addr constant [410 x i8] c"test_sm2_sign( test_group, \22ALICE123@YAHOO.COM\22, \22128B2FA8BD433C6C068C8D803DFF79792A519A55171B1B650C23661D15897263\22, \22message digest\22, \22006CB28D99385C175C94F94E934817663FC176D925DD72B727260DBAAE1FB2F96F\22 \22007c47811054c6f99613a578eb8453706ccb96384fe7df5c171671e760bfa8be3a\22, \2240F1EC59F793D9F49E09DCEF49130D4194F79FB1EED2CAA55BACDB49C4E755D1\22, \226FC6DAC32C5D5CF10C77DFB20F7C2EB667A457872FB09EC56327A67EC7DEEBE7\22)\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"ALICE123@YAHOO.COM\00", align 1
@.str.52 = private unnamed_addr constant [65 x i8] c"128B2FA8BD433C6C068C8D803DFF79792A519A55171B1B650C23661D15897263\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"message digest\00", align 1
@.str.54 = private unnamed_addr constant [133 x i8] c"006CB28D99385C175C94F94E934817663FC176D925DD72B727260DBAAE1FB2F96F007c47811054c6f99613a578eb8453706ccb96384fe7df5c171671e760bfa8be3a\00", align 1
@.str.55 = private unnamed_addr constant [65 x i8] c"40F1EC59F793D9F49E09DCEF49130D4194F79FB1EED2CAA55BACDB49C4E755D1\00", align 1
@.str.56 = private unnamed_addr constant [65 x i8] c"6FC6DAC32C5D5CF10C77DFB20F7C2EB667A457872FB09EC56327A67EC7DEEBE7\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"BN_hex2bn(&r, r_hex)\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"BN_hex2bn(&s, s_hex)\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"sig_r\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"sig_s\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"ok\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_provider_st* @fake_rand_start(%struct.ossl_lib_ctx_st* noundef null) #4
  store %struct.ossl_provider_st* %call, %struct.ossl_provider_st** @fake_rand, align 8, !tbaa !3
  %cmp = icmp eq %struct.ossl_provider_st* %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @sm2_crypt_test) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @sm2_sig_test) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local %struct.ossl_provider_st* @fake_rand_start(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @sm2_crypt_test() #0 {
entry:
  %call = tail call fastcc %struct.ec_group_st* @create_EC_group() #5
  %0 = bitcast %struct.ec_group_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %done, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.evp_md_st* @EVP_sm3() #4
  %call3 = tail call fastcc i32 @test_sm2_crypt(%struct.ec_group_st* noundef %call, %struct.evp_md_st* noundef %call2, i8* noundef getelementptr inbounds ([199 x i8], [199 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([251 x i8], [251 x i8]* @.str.14, i64 0, i64 0)) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %done, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.evp_md_st* @EVP_sha256() #4
  %call8 = tail call fastcc i32 @test_sm2_crypt(%struct.ec_group_st* noundef %call, %struct.evp_md_st* noundef %call7, i8* noundef getelementptr inbounds ([199 x i8], [199 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([251 x i8], [251 x i8]* @.str.16, i64 0, i64 0)) #5
  %tobool9.not = icmp ne i32 %call8, 0
  %spec.select = zext i1 %tobool9.not to i32
  br label %done

done:                                             ; preds = %if.end6, %if.end, %entry
  %testresult.0 = phi i32 [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end6 ]
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %call) #4
  ret i32 %testresult.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sm2_sig_test() #0 {
entry:
  %call = tail call fastcc %struct.ec_group_st* @create_EC_group() #5
  %0 = bitcast %struct.ec_group_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 343, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %done, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @test_sm2_sign(%struct.ec_group_st* noundef %call) #5
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([410 x i8], [410 x i8]* @.str.50, i64 0, i64 0), i32 noundef %conv) #4
  %tobool4.not = icmp ne i32 %call3, 0
  %spec.select = zext i1 %tobool4.not to i32
  br label %done

done:                                             ; preds = %if.end, %entry
  %testresult.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end ]
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %call) #4
  ret i32 %testresult.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @fake_rand, align 8, !tbaa !3
  tail call void @fake_rand_finish(%struct.ossl_provider_st* noundef %0) #4
  ret void
}

declare dso_local void @fake_rand_finish(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ec_group_st* @create_EC_group() unnamed_addr #0 {
entry:
  %p = alloca %struct.bignum_st*, align 8
  %a = alloca %struct.bignum_st*, align 8
  %b = alloca %struct.bignum_st*, align 8
  %g_x = alloca %struct.bignum_st*, align 8
  %g_y = alloca %struct.bignum_st*, align 8
  %order = alloca %struct.bignum_st*, align 8
  %cof = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.bignum_st* null, %struct.bignum_st** %p, align 8, !tbaa !3
  %1 = bitcast %struct.bignum_st** %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store %struct.bignum_st* null, %struct.bignum_st** %a, align 8, !tbaa !3
  %2 = bitcast %struct.bignum_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store %struct.bignum_st* null, %struct.bignum_st** %b, align 8, !tbaa !3
  %3 = bitcast %struct.bignum_st** %g_x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store %struct.bignum_st* null, %struct.bignum_st** %g_x, align 8, !tbaa !3
  %4 = bitcast %struct.bignum_st** %g_y to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  store %struct.bignum_st* null, %struct.bignum_st** %g_y, align 8, !tbaa !3
  %5 = bitcast %struct.bignum_st** %order to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6
  store %struct.bignum_st* null, %struct.bignum_st** %order, align 8, !tbaa !3
  %6 = bitcast %struct.bignum_st** %cof to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6
  store %struct.bignum_st* null, %struct.bignum_st** %cof, align 8, !tbaa !3
  %call = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %p, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0)) #4
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %done, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0)) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv4) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %done, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0)) #4
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv10) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %done, label %if.end

if.end:                                           ; preds = %lor.lhs.false7
  %7 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !3
  %8 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !3
  %9 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !3
  %call13 = call %struct.ec_group_st* @EC_GROUP_new_curve_GFp(%struct.bignum_st* noundef %7, %struct.bignum_st* noundef %8, %struct.bignum_st* noundef %9, %struct.bignum_ctx* noundef null) #4
  %10 = bitcast %struct.ec_group_st* %call13 to i8*
  %call14 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* noundef %10) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %done, label %if.end17

if.end17:                                         ; preds = %if.end
  %call18 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call13) #4
  %11 = bitcast %struct.ec_point_st* %call18 to i8*
  %call19 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* noundef %11) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %done, label %if.end22

if.end22:                                         ; preds = %if.end17
  %call23 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %g_x, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0)) #4
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv25) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %done, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end22
  %call29 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %g_y, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0)) #4
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv31) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %done, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false28
  %12 = load %struct.bignum_st*, %struct.bignum_st** %g_x, align 8, !tbaa !3
  %13 = load %struct.bignum_st*, %struct.bignum_st** %g_y, align 8, !tbaa !3
  %call35 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call13, %struct.ec_point_st* noundef %call18, %struct.bignum_st* noundef %12, %struct.bignum_st* noundef %13, %struct.bignum_ctx* noundef null) #4
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv37) #4
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %done, label %if.end41

if.end41:                                         ; preds = %lor.lhs.false34
  %call42 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %order, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0)) #4
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv44) #4
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %done, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end41
  %call48 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %cof, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #4
  %cmp49 = icmp ne i32 %call48, 0
  %conv50 = zext i1 %cmp49 to i32
  %call51 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv50) #4
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %done, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false47
  %14 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !3
  %15 = load %struct.bignum_st*, %struct.bignum_st** %cof, align 8, !tbaa !3
  %call54 = call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call13, %struct.ec_point_st* noundef %call18, %struct.bignum_st* noundef %14, %struct.bignum_st* noundef %15) #4
  %cmp55 = icmp ne i32 %call54, 0
  %conv56 = zext i1 %cmp55 to i32
  %call57 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv56) #4
  %tobool58.not = icmp eq i32 %call57, 0
  br label %done

done:                                             ; preds = %lor.lhs.false53, %if.end41, %lor.lhs.false47, %if.end22, %lor.lhs.false28, %lor.lhs.false34, %if.end17, %if.end, %entry, %lor.lhs.false, %lor.lhs.false7
  %generator.0 = phi %struct.ec_point_st* [ %call18, %lor.lhs.false47 ], [ %call18, %if.end41 ], [ %call18, %lor.lhs.false34 ], [ %call18, %lor.lhs.false28 ], [ %call18, %if.end22 ], [ %call18, %if.end17 ], [ null, %if.end ], [ null, %lor.lhs.false7 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call18, %lor.lhs.false53 ]
  %group.0 = phi %struct.ec_group_st* [ %call13, %lor.lhs.false47 ], [ %call13, %if.end41 ], [ %call13, %lor.lhs.false34 ], [ %call13, %lor.lhs.false28 ], [ %call13, %if.end22 ], [ %call13, %if.end17 ], [ %call13, %if.end ], [ null, %lor.lhs.false7 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call13, %lor.lhs.false53 ]
  %tobool61.not = phi i1 [ true, %lor.lhs.false47 ], [ true, %if.end41 ], [ true, %lor.lhs.false34 ], [ true, %lor.lhs.false28 ], [ true, %if.end22 ], [ true, %if.end17 ], [ true, %if.end ], [ true, %lor.lhs.false7 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool58.not, %lor.lhs.false53 ]
  %16 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %16) #4
  %17 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %17) #4
  %18 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %18) #4
  %19 = load %struct.bignum_st*, %struct.bignum_st** %g_x, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %19) #4
  %20 = load %struct.bignum_st*, %struct.bignum_st** %g_y, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %20) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %generator.0) #4
  %21 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %21) #4
  %22 = load %struct.bignum_st*, %struct.bignum_st** %cof, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %22) #4
  br i1 %tobool61.not, label %if.then62, label %if.end63

if.then62:                                        ; preds = %done
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %group.0) #4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %done
  %group.1 = phi %struct.ec_group_st* [ %group.0, %done ], [ null, %if.then62 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.ec_group_st* %group.1
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_sm2_crypt(%struct.ec_group_st* noundef %group, %struct.evp_md_st* noundef %digest, i8* noundef %k_hex, i8* noundef %ctext_hex) unnamed_addr #0 {
entry:
  %priv = alloca %struct.bignum_st*, align 8
  %ctext_len = alloca i64, align 8
  %ptext_len = alloca i64, align 8
  %recovered_len = alloca i64, align 8
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0)) #7
  %0 = bitcast %struct.bignum_st** %priv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.bignum_st* null, %struct.bignum_st** %priv, align 8, !tbaa !3
  %call1 = tail call i8* @OPENSSL_hexstr2buf(i8* noundef %ctext_hex, i64* noundef null) #4
  %1 = bitcast i64* %ctext_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store i64 0, i64* %ctext_len, align 8, !tbaa !7
  %2 = bitcast i64* %ptext_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store i64 0, i64* %ptext_len, align 8, !tbaa !7
  %3 = bitcast i64* %recovered_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store i64 %call, i64* %recovered_len, align 8, !tbaa !7
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8* noundef %call1) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %done, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %priv, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0)) #4
  %cmp = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %call4 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %done, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call6 = call %struct.ec_key_st* @EC_KEY_new() #4
  %4 = bitcast %struct.ec_key_st* %call6 to i8*
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i8* noundef %4) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %done, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %call10 = call i32 @EC_KEY_set_group(%struct.ec_key_st* noundef %call6, %struct.ec_group_st* noundef %group) #4
  %cmp11 = icmp ne i32 %call10, 0
  %conv12 = zext i1 %cmp11 to i32
  %call13 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv12) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %done, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false9
  %5 = load %struct.bignum_st*, %struct.bignum_st** %priv, align 8, !tbaa !3
  %call16 = call i32 @EC_KEY_set_private_key(%struct.ec_key_st* noundef %call6, %struct.bignum_st* noundef %5) #4
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv18) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %done, label %if.end22

if.end22:                                         ; preds = %lor.lhs.false15
  %call23 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %group) #4
  %6 = bitcast %struct.ec_point_st* %call23 to i8*
  %call24 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* noundef %6) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %done, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end22
  %7 = load %struct.bignum_st*, %struct.bignum_st** %priv, align 8, !tbaa !3
  %call27 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call23, %struct.bignum_st* noundef %7, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef null) #4
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv29) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %done, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false26
  %call33 = call i32 @EC_KEY_set_public_key(%struct.ec_key_st* noundef %call6, %struct.ec_point_st* noundef %call23) #4
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv35) #4
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %done, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false32
  %call39 = call i32 @ossl_sm2_ciphertext_size(%struct.ec_key_st* noundef %call6, %struct.evp_md_st* noundef %digest, i64 noundef %call, i64* noundef nonnull %ctext_len) #4
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv41) #4
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %done, label %if.end45

if.end45:                                         ; preds = %lor.lhs.false38
  %8 = load i64, i64* %ctext_len, align 8, !tbaa !7
  %call46 = call i8* @CRYPTO_zalloc(i64 noundef %8, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 170) #4
  %call47 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i8* noundef %call46) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %done, label %if.end50

if.end50:                                         ; preds = %if.end45
  call fastcc void @start_fake_rand(i8* noundef %k_hex) #5
  %call52 = call i32 @ossl_sm2_encrypt(%struct.ec_key_st* noundef %call6, %struct.evp_md_st* noundef %digest, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i64 noundef %call, i8* noundef %call46, i64* noundef nonnull %ctext_len) #4
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv54) #4
  %tobool56.not = icmp eq i32 %call55, 0
  call fastcc void @restore_rand() #5
  br i1 %tobool56.not, label %done, label %if.end58

if.end58:                                         ; preds = %if.end50
  %9 = load i64, i64* %ctext_len, align 8, !tbaa !7
  %call59 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8* noundef %call46, i64 noundef %9, i8* noundef %call1, i64 noundef %9) #4
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %done, label %if.end62

if.end62:                                         ; preds = %if.end58
  %10 = load i64, i64* %ctext_len, align 8, !tbaa !7
  %call63 = call i32 @ossl_sm2_plaintext_size(i8* noundef %call46, i64 noundef %10, i64* noundef nonnull %ptext_len) #4
  %cmp64 = icmp ne i32 %call63, 0
  %conv65 = zext i1 %cmp64 to i32
  %call66 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv65) #4
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %done, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %if.end62
  %11 = load i64, i64* %ptext_len, align 8, !tbaa !7
  %conv69 = trunc i64 %11 to i32
  %conv70 = trunc i64 %call to i32
  %call71 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv69, i32 noundef %conv70) #4
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %done, label %if.end74

if.end74:                                         ; preds = %lor.lhs.false68
  %12 = load i64, i64* %ptext_len, align 8, !tbaa !7
  %call75 = call i8* @CRYPTO_zalloc(i64 noundef %12, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 190) #4
  %call76 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i8* noundef %call75) #4
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %done, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %if.end74
  %13 = load i64, i64* %ctext_len, align 8, !tbaa !7
  %call79 = call i32 @ossl_sm2_decrypt(%struct.ec_key_st* noundef %call6, %struct.evp_md_st* noundef %digest, i8* noundef %call46, i64 noundef %13, i8* noundef %call75, i64* noundef nonnull %recovered_len) #4
  %cmp80 = icmp ne i32 %call79, 0
  %conv81 = zext i1 %cmp80 to i32
  %call82 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv81) #4
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %done, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false78
  %14 = load i64, i64* %recovered_len, align 8, !tbaa !7
  %conv85 = trunc i64 %14 to i32
  %call87 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv85, i32 noundef %conv70) #4
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %done, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %lor.lhs.false84
  %15 = load i64, i64* %recovered_len, align 8, !tbaa !7
  %call90 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i8* noundef %call75, i64 noundef %15, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i64 noundef %call) #4
  %tobool91.not = icmp ne i32 %call90, 0
  %spec.select = zext i1 %tobool91.not to i32
  br label %done

done:                                             ; preds = %if.end50, %lor.lhs.false89, %if.end74, %lor.lhs.false78, %lor.lhs.false84, %if.end62, %lor.lhs.false68, %if.end58, %if.end45, %if.end22, %lor.lhs.false26, %lor.lhs.false32, %lor.lhs.false38, %if.end, %lor.lhs.false9, %lor.lhs.false15, %entry, %lor.lhs.false
  %pt.0 = phi %struct.ec_point_st* [ %call23, %lor.lhs.false84 ], [ %call23, %lor.lhs.false78 ], [ %call23, %if.end74 ], [ %call23, %lor.lhs.false68 ], [ %call23, %if.end62 ], [ %call23, %if.end58 ], [ %call23, %if.end45 ], [ %call23, %lor.lhs.false38 ], [ %call23, %lor.lhs.false32 ], [ %call23, %lor.lhs.false26 ], [ %call23, %if.end22 ], [ null, %lor.lhs.false15 ], [ null, %lor.lhs.false9 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call23, %lor.lhs.false89 ], [ %call23, %if.end50 ]
  %key.0 = phi %struct.ec_key_st* [ %call6, %lor.lhs.false84 ], [ %call6, %lor.lhs.false78 ], [ %call6, %if.end74 ], [ %call6, %lor.lhs.false68 ], [ %call6, %if.end62 ], [ %call6, %if.end58 ], [ %call6, %if.end45 ], [ %call6, %lor.lhs.false38 ], [ %call6, %lor.lhs.false32 ], [ %call6, %lor.lhs.false26 ], [ %call6, %if.end22 ], [ %call6, %lor.lhs.false15 ], [ %call6, %lor.lhs.false9 ], [ %call6, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false89 ], [ %call6, %if.end50 ]
  %ctext.0 = phi i8* [ %call46, %lor.lhs.false84 ], [ %call46, %lor.lhs.false78 ], [ %call46, %if.end74 ], [ %call46, %lor.lhs.false68 ], [ %call46, %if.end62 ], [ %call46, %if.end58 ], [ %call46, %if.end45 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false26 ], [ null, %if.end22 ], [ null, %lor.lhs.false15 ], [ null, %lor.lhs.false9 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call46, %lor.lhs.false89 ], [ %call46, %if.end50 ]
  %recovered.0 = phi i8* [ %call75, %lor.lhs.false84 ], [ %call75, %lor.lhs.false78 ], [ %call75, %if.end74 ], [ null, %lor.lhs.false68 ], [ null, %if.end62 ], [ null, %if.end58 ], [ null, %if.end45 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false26 ], [ null, %if.end22 ], [ null, %lor.lhs.false15 ], [ null, %lor.lhs.false9 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call75, %lor.lhs.false89 ], [ null, %if.end50 ]
  %rc.0 = phi i32 [ 0, %lor.lhs.false84 ], [ 0, %lor.lhs.false78 ], [ 0, %if.end74 ], [ 0, %lor.lhs.false68 ], [ 0, %if.end62 ], [ 0, %if.end58 ], [ 0, %if.end45 ], [ 0, %lor.lhs.false38 ], [ 0, %lor.lhs.false32 ], [ 0, %lor.lhs.false26 ], [ 0, %if.end22 ], [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false9 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false89 ], [ 0, %if.end50 ]
  %16 = load %struct.bignum_st*, %struct.bignum_st** %priv, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %16) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %pt.0) #4
  call void @CRYPTO_free(i8* noundef %ctext.0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 202) #4
  call void @CRYPTO_free(i8* noundef %recovered.0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 203) #4
  call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 204) #4
  call void @EC_KEY_free(%struct.ec_key_st* noundef %key.0) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %rc.0
}

declare dso_local %struct.evp_md_st* @EVP_sm3() local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_sha256() local_unnamed_addr #1

declare dso_local void @EC_GROUP_free(%struct.ec_group_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_hex2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_group_st* @EC_GROUP_new_curve_GFp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @EC_POINT_free(%struct.ec_point_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local i8* @OPENSSL_hexstr2buf(i8* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_key_st* @EC_KEY_new() local_unnamed_addr #1

declare dso_local i32 @EC_KEY_set_group(%struct.ec_key_st* noundef, %struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_KEY_set_private_key(%struct.ec_key_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_POINT_mul(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_KEY_set_public_key(%struct.ec_key_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_sm2_ciphertext_size(%struct.ec_key_st* noundef, %struct.evp_md_st* noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @start_fake_rand(i8* noundef %hex_bytes) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** @fake_rand_bytes, align 8, !tbaa !3
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 56) #4
  store i64 0, i64* @fake_rand_bytes_offset, align 8, !tbaa !7
  %call = tail call i64 @strlen(i8* noundef %hex_bytes) #7
  %div = lshr i64 %call, 1
  store i64 %div, i64* @fake_rand_size, align 8, !tbaa !7
  %call1 = tail call i8* @OPENSSL_hexstr2buf(i8* noundef %hex_bytes, i64* noundef null) #4
  store i8* %call1, i8** @fake_rand_bytes, align 8, !tbaa !3
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.46, i64 0, i64 0), i8* noundef %call1) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @fake_rand_set_public_private_callbacks(%struct.ossl_lib_ctx_st* noundef null, i32 (i8*, i64, i8*, %struct.evp_rand_ctx_st*)* noundef nonnull @get_faked_bytes) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare dso_local i32 @ossl_sm2_encrypt(%struct.ec_key_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @restore_rand() unnamed_addr #0 {
entry:
  tail call void @fake_rand_set_public_private_callbacks(%struct.ossl_lib_ctx_st* noundef null, i32 (i8*, i64, i8*, %struct.evp_rand_ctx_st*)* noundef null) #4
  %0 = load i8*, i8** @fake_rand_bytes, align 8, !tbaa !3
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 71) #4
  store i8* null, i8** @fake_rand_bytes, align 8, !tbaa !3
  store i64 0, i64* @fake_rand_bytes_offset, align 8, !tbaa !7
  ret void
}

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_sm2_plaintext_size(i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_sm2_decrypt(%struct.ec_key_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @EC_KEY_free(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare dso_local void @fake_rand_set_public_private_callbacks(%struct.ossl_lib_ctx_st* noundef, i32 (i8*, i64, i8*, %struct.evp_rand_ctx_st*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_faked_bytes(i8* nocapture noundef writeonly %buf, i64 noundef %num, i8* nocapture noundef readnone %name, %struct.evp_rand_ctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %0 = load i8*, i8** @fake_rand_bytes, align 8, !tbaa !3
  %call = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* @fake_rand_size, align 8, !tbaa !7
  %call1 = tail call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), i64 noundef %1, i64 noundef 0) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false
  %cmp.not9 = icmp eq i64 %num, 0
  br i1 %cmp.not9, label %return, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %fake_rand_bytes_offset.promoted = load i64, i64* @fake_rand_bytes_offset, align 8, !tbaa !7
  %2 = load i64, i64* @fake_rand_size, align 8, !tbaa !7
  %3 = load i8*, i8** @fake_rand_bytes, align 8, !tbaa !3
  %4 = add i64 %num, -1
  %xtraiter = and i64 %num, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body.prol.loopexit, label %while.body.prol

while.body.prol:                                  ; preds = %while.body.lr.ph, %while.body.prol
  %dec12.in.prol = phi i64 [ %dec12.prol, %while.body.prol ], [ %num, %while.body.lr.ph ]
  %buf.addr.011.prol = phi i8* [ %incdec.ptr.prol, %while.body.prol ], [ %buf, %while.body.lr.ph ]
  %inc610.prol = phi i64 [ %inc.prol, %while.body.prol ], [ %fake_rand_bytes_offset.promoted, %while.body.lr.ph ]
  %prol.iter = phi i64 [ %prol.iter.next, %while.body.prol ], [ 0, %while.body.lr.ph ]
  %dec12.prol = add i64 %dec12.in.prol, -1
  %cmp3.not.prol = icmp ult i64 %inc610.prol, %2
  %spec.select.prol = select i1 %cmp3.not.prol, i64 %inc610.prol, i64 0
  %inc.prol = add nuw i64 %spec.select.prol, 1
  %arrayidx.prol = getelementptr inbounds i8, i8* %3, i64 %spec.select.prol
  %5 = load i8, i8* %arrayidx.prol, align 1, !tbaa !9
  %incdec.ptr.prol = getelementptr inbounds i8, i8* %buf.addr.011.prol, i64 1
  store i8 %5, i8* %buf.addr.011.prol, align 1, !tbaa !9
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %while.body.prol.loopexit, label %while.body.prol, !llvm.loop !10

while.body.prol.loopexit:                         ; preds = %while.body.prol, %while.body.lr.ph
  %inc.lcssa.unr = phi i64 [ undef, %while.body.lr.ph ], [ %inc.prol, %while.body.prol ]
  %dec12.in.unr = phi i64 [ %num, %while.body.lr.ph ], [ %dec12.prol, %while.body.prol ]
  %buf.addr.011.unr = phi i8* [ %buf, %while.body.lr.ph ], [ %incdec.ptr.prol, %while.body.prol ]
  %inc610.unr = phi i64 [ %fake_rand_bytes_offset.promoted, %while.body.lr.ph ], [ %inc.prol, %while.body.prol ]
  %6 = icmp ult i64 %4, 3
  br i1 %6, label %while.cond.return.loopexit_crit_edge, label %while.body

while.body:                                       ; preds = %while.body.prol.loopexit, %while.body
  %dec12.in = phi i64 [ %dec12.3, %while.body ], [ %dec12.in.unr, %while.body.prol.loopexit ]
  %buf.addr.011 = phi i8* [ %incdec.ptr.3, %while.body ], [ %buf.addr.011.unr, %while.body.prol.loopexit ]
  %inc610 = phi i64 [ %inc.3, %while.body ], [ %inc610.unr, %while.body.prol.loopexit ]
  %cmp3.not = icmp ult i64 %inc610, %2
  %spec.select = select i1 %cmp3.not, i64 %inc610, i64 0
  %inc = add nuw i64 %spec.select, 1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %spec.select
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, i8* %buf.addr.011, i64 1
  store i8 %7, i8* %buf.addr.011, align 1, !tbaa !9
  %cmp3.not.1 = icmp ult i64 %inc, %2
  %spec.select.1 = select i1 %cmp3.not.1, i64 %inc, i64 0
  %inc.1 = add nuw i64 %spec.select.1, 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %3, i64 %spec.select.1
  %8 = load i8, i8* %arrayidx.1, align 1, !tbaa !9
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %buf.addr.011, i64 2
  store i8 %8, i8* %incdec.ptr, align 1, !tbaa !9
  %cmp3.not.2 = icmp ult i64 %inc.1, %2
  %spec.select.2 = select i1 %cmp3.not.2, i64 %inc.1, i64 0
  %inc.2 = add nuw i64 %spec.select.2, 1
  %arrayidx.2 = getelementptr inbounds i8, i8* %3, i64 %spec.select.2
  %9 = load i8, i8* %arrayidx.2, align 1, !tbaa !9
  %incdec.ptr.2 = getelementptr inbounds i8, i8* %buf.addr.011, i64 3
  store i8 %9, i8* %incdec.ptr.1, align 1, !tbaa !9
  %dec12.3 = add i64 %dec12.in, -4
  %cmp3.not.3 = icmp ult i64 %inc.2, %2
  %spec.select.3 = select i1 %cmp3.not.3, i64 %inc.2, i64 0
  %inc.3 = add nuw i64 %spec.select.3, 1
  %arrayidx.3 = getelementptr inbounds i8, i8* %3, i64 %spec.select.3
  %10 = load i8, i8* %arrayidx.3, align 1, !tbaa !9
  %incdec.ptr.3 = getelementptr inbounds i8, i8* %buf.addr.011, i64 4
  store i8 %10, i8* %incdec.ptr.2, align 1, !tbaa !9
  %cmp.not.3 = icmp eq i64 %dec12.3, 0
  br i1 %cmp.not.3, label %while.cond.return.loopexit_crit_edge, label %while.body, !llvm.loop !12

while.cond.return.loopexit_crit_edge:             ; preds = %while.body, %while.body.prol.loopexit
  %inc.lcssa = phi i64 [ %inc.lcssa.unr, %while.body.prol.loopexit ], [ %inc.3, %while.body ]
  store i64 %inc.lcssa, i64* @fake_rand_bytes_offset, align 8, !tbaa !7
  br label %return

return:                                           ; preds = %while.cond.preheader, %while.cond.return.loopexit_crit_edge, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %while.cond.return.loopexit_crit_edge ], [ 1, %while.cond.preheader ]
  ret i32 %retval.0
}

declare dso_local i32 @test_size_t_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_sm2_sign(%struct.ec_group_st* noundef %group) unnamed_addr #0 {
entry:
  %priv = alloca %struct.bignum_st*, align 8
  %sig_r = alloca %struct.bignum_st*, align 8
  %sig_s = alloca %struct.bignum_st*, align 8
  %r = alloca %struct.bignum_st*, align 8
  %s = alloca %struct.bignum_st*, align 8
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i64 0, i64 0)) #7
  %0 = bitcast %struct.bignum_st** %priv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.bignum_st* null, %struct.bignum_st** %priv, align 8, !tbaa !3
  %1 = bitcast %struct.bignum_st** %sig_r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store %struct.bignum_st* null, %struct.bignum_st** %sig_r, align 8, !tbaa !3
  %2 = bitcast %struct.bignum_st** %sig_s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store %struct.bignum_st* null, %struct.bignum_st** %sig_s, align 8, !tbaa !3
  %3 = bitcast %struct.bignum_st** %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store %struct.bignum_st* null, %struct.bignum_st** %r, align 8, !tbaa !3
  %4 = bitcast %struct.bignum_st** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  store %struct.bignum_st* null, %struct.bignum_st** %s, align 8, !tbaa !3
  %call1 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %priv, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.52, i64 0, i64 0)) #4
  %cmp = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp to i32
  %call2 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %done, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call %struct.ec_key_st* @EC_KEY_new() #4
  %5 = bitcast %struct.ec_key_st* %call3 to i8*
  %call4 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 284, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i8* noundef %5) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %done, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call6 = call i32 @EC_KEY_set_group(%struct.ec_key_st* noundef %call3, %struct.ec_group_st* noundef %group) #4
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 285, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv8) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %done, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %6 = load %struct.bignum_st*, %struct.bignum_st** %priv, align 8, !tbaa !3
  %call12 = call i32 @EC_KEY_set_private_key(%struct.ec_key_st* noundef %call3, %struct.bignum_st* noundef %6) #4
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv14) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %done, label %if.end18

if.end18:                                         ; preds = %lor.lhs.false11
  %call19 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %group) #4
  %7 = bitcast %struct.ec_point_st* %call19 to i8*
  %call20 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 290, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* noundef %7) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %done, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end18
  %8 = load %struct.bignum_st*, %struct.bignum_st** %priv, align 8, !tbaa !3
  %call23 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call19, %struct.bignum_st* noundef %8, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef null) #4
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv25) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %done, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %call29 = call i32 @EC_KEY_set_public_key(%struct.ec_key_st* noundef %call3, %struct.ec_point_st* noundef %call19) #4
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv31) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %done, label %if.end35

if.end35:                                         ; preds = %lor.lhs.false28
  call fastcc void @start_fake_rand(i8* noundef getelementptr inbounds ([133 x i8], [133 x i8]* @.str.54, i64 0, i64 0)) #5
  %call37 = call %struct.evp_md_st* @EVP_sm3() #4
  %call38 = call i64 @strlen(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0)) #7
  %call39 = call %struct.ECDSA_SIG_st* @ossl_sm2_do_sign(%struct.ec_key_st* noundef %call3, %struct.evp_md_st* noundef %call37, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0), i64 noundef %call38, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i64 0, i64 0), i64 noundef %call) #4
  %9 = bitcast %struct.ECDSA_SIG_st* %call39 to i8*
  %call40 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 298, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i8* noundef %9) #4
  %tobool41.not = icmp eq i32 %call40, 0
  call fastcc void @restore_rand() #5
  br i1 %tobool41.not, label %done, label %if.end43

if.end43:                                         ; preds = %if.end35
  call void @ECDSA_SIG_get0(%struct.ECDSA_SIG_st* noundef %call39, %struct.bignum_st** noundef nonnull %sig_r, %struct.bignum_st** noundef nonnull %sig_s) #4
  %call44 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %r, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.55, i64 0, i64 0)) #4
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 306, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv46) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %done, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.end43
  %call50 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %s, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.56, i64 0, i64 0)) #4
  %cmp51 = icmp ne i32 %call50, 0
  %conv52 = zext i1 %cmp51 to i32
  %call53 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 307, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv52) #4
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %done, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false49
  %10 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !3
  %11 = load %struct.bignum_st*, %struct.bignum_st** %sig_r, align 8, !tbaa !3
  %call56 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), %struct.bignum_st* noundef %10, %struct.bignum_st* noundef %11) #4
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %done, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false55
  %12 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !3
  %13 = load %struct.bignum_st*, %struct.bignum_st** %sig_s, align 8, !tbaa !3
  %call59 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 309, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i64 0, i64 0), %struct.bignum_st* noundef %12, %struct.bignum_st* noundef %13) #4
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %done, label %if.end62

if.end62:                                         ; preds = %lor.lhs.false58
  %call63 = call %struct.evp_md_st* @EVP_sm3() #4
  %call64 = call i64 @strlen(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0)) #7
  %call65 = call i32 @ossl_sm2_do_verify(%struct.ec_key_st* noundef %call3, %struct.evp_md_st* noundef %call63, %struct.ECDSA_SIG_st* noundef %call39, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0), i64 noundef %call64, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i64 0, i64 0), i64 noundef %call) #4
  %cmp66 = icmp ne i32 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  %call68 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv67) #4
  br label %done

done:                                             ; preds = %if.end35, %if.end43, %lor.lhs.false49, %lor.lhs.false55, %lor.lhs.false58, %if.end18, %lor.lhs.false22, %lor.lhs.false28, %if.end, %lor.lhs.false, %lor.lhs.false11, %entry, %if.end62
  %ok.0 = phi i32 [ %call65, %if.end62 ], [ 0, %lor.lhs.false58 ], [ 0, %lor.lhs.false55 ], [ 0, %lor.lhs.false49 ], [ 0, %if.end43 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false22 ], [ 0, %if.end18 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ 0, %if.end35 ]
  %pt.0 = phi %struct.ec_point_st* [ %call19, %if.end62 ], [ %call19, %lor.lhs.false58 ], [ %call19, %lor.lhs.false55 ], [ %call19, %lor.lhs.false49 ], [ %call19, %if.end43 ], [ %call19, %lor.lhs.false28 ], [ %call19, %lor.lhs.false22 ], [ %call19, %if.end18 ], [ null, %lor.lhs.false11 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call19, %if.end35 ]
  %key.0 = phi %struct.ec_key_st* [ %call3, %if.end62 ], [ %call3, %lor.lhs.false58 ], [ %call3, %lor.lhs.false55 ], [ %call3, %lor.lhs.false49 ], [ %call3, %if.end43 ], [ %call3, %lor.lhs.false28 ], [ %call3, %lor.lhs.false22 ], [ %call3, %if.end18 ], [ %call3, %lor.lhs.false11 ], [ %call3, %lor.lhs.false ], [ %call3, %if.end ], [ null, %entry ], [ %call3, %if.end35 ]
  %sig.0 = phi %struct.ECDSA_SIG_st* [ %call39, %if.end62 ], [ %call39, %lor.lhs.false58 ], [ %call39, %lor.lhs.false55 ], [ %call39, %lor.lhs.false49 ], [ %call39, %if.end43 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false22 ], [ null, %if.end18 ], [ null, %lor.lhs.false11 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call39, %if.end35 ]
  call void @ECDSA_SIG_free(%struct.ECDSA_SIG_st* noundef %sig.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %pt.0) #4
  call void @EC_KEY_free(%struct.ec_key_st* noundef %key.0) #4
  %14 = load %struct.bignum_st*, %struct.bignum_st** %priv, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %14) #4
  %15 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %15) #4
  %16 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %16) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %ok.0
}

declare dso_local %struct.ECDSA_SIG_st* @ossl_sm2_do_sign(%struct.ec_key_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @ECDSA_SIG_get0(%struct.ECDSA_SIG_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_sm2_do_verify(%struct.ec_key_st* noundef, %struct.evp_md_st* noundef, %struct.ECDSA_SIG_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @ECDSA_SIG_free(%struct.ECDSA_SIG_st* noundef) local_unnamed_addr #1

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
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}

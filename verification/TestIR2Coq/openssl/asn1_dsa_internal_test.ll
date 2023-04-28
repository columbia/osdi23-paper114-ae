; ModuleID = 'test/asn1_dsa_internal_test.c'
source_filename = "test/asn1_dsa_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type opaque

@.str = private unnamed_addr constant [12 x i8] c"test_decode\00", align 1
@t_dsa_sig = internal global [8 x i8] c"0\06\02\01\01\02\01\02", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"test/asn1_dsa_internal_test.c\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pder\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"(t_dsa_sig + sizeof(t_dsa_sig))\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"asn1_dsa test_decode: t_dsa_sig failed\00", align 1
@t_dsa_sig_extra = internal global [10 x i8] c"0\06\02\01\01\02\01\02\05\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"(t_dsa_sig_extra + sizeof(t_dsa_sig_extra) - 2)\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"asn1_dsa test_decode: t_dsa_sig_extra failed\00", align 1
@t_dsa_sig_msb = internal global [10 x i8] c"0\08\02\02\00\81\02\02\00\82", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"(t_dsa_sig_msb + sizeof(t_dsa_sig_msb))\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"0x81\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"0x82\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"asn1_dsa test_decode: t_dsa_sig_msb failed\00", align 1
@t_dsa_sig_two = internal global [10 x i8] c"0\08\02\02\01\00\02\02\02\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"(t_dsa_sig_two + sizeof(t_dsa_sig_two))\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"0x100\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"0x200\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"asn1_dsa test_decode: t_dsa_sig_two failed\00", align 1
@t_invalid_int_zero = internal global [7 x i8] c"0\05\02\00\02\01*", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"asn1_dsa test_decode: Expected t_invalid_int_zero to fail\00", align 1
@t_invalid_int = internal global [9 x i8] c"0\07\02\02\00\7F\02\01*", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"asn1_dsa test_decode: Expected t_invalid_int to fail\00", align 1
@t_neg_int = internal global [8 x i8] c"0\06\02\01\AA\02\01*", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"asn1_dsa test_decode: Expected t_neg_int to fail\00", align 1
@t_trunc_der = internal global [9 x i8] c"0\08\02\02\00\81\02\02\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"asn1_dsa test_decode: Expected fail t_trunc_der\00", align 1
@t_trunc_seq = internal global [10 x i8] c"0\07\02\02\00\81\02\02\00\82", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"asn1_dsa test_decode: Expected fail t_trunc_seq\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_decode) #3
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_decode() #0 {
entry:
  %pder = alloca i8*, align 8
  %0 = bitcast i8** %pder to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %call = tail call %struct.bignum_st* @BN_new() #3
  %call1 = tail call %struct.bignum_st* @BN_new() #3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @t_dsa_sig, i64 0, i64 0), i8** %pder, align 8, !tbaa !3
  %call2 = call i64 @ossl_decode_der_dsa_sig(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, i8** noundef nonnull %pder, i64 noundef 8) #3
  %cmp = icmp eq i64 %call2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %pder, align 8, !tbaa !3
  %call3 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @t_dsa_sig, i64 1, i64 0)) #3
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %struct.bignum_st* noundef %call, i64 noundef 1) #3
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), %struct.bignum_st* noundef %call1, i64 noundef 2) #3
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %entry
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0)) #3
  br label %fail

if.end:                                           ; preds = %lor.lhs.false7
  call void @BN_clear(%struct.bignum_st* noundef %call) #3
  call void @BN_clear(%struct.bignum_st* noundef %call1) #3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @t_dsa_sig_extra, i64 0, i64 0), i8** %pder, align 8, !tbaa !3
  %call10 = call i64 @ossl_decode_der_dsa_sig(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, i8** noundef nonnull %pder, i64 noundef 10) #3
  %cmp11 = icmp eq i64 %call10, 0
  br i1 %cmp11, label %if.then21, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end
  %2 = load i8*, i8** %pder, align 8, !tbaa !3
  %call13 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i8* noundef %2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @t_dsa_sig_extra, i64 0, i64 8)) #3
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then21, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %struct.bignum_st* noundef %call, i64 noundef 1) #3
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), %struct.bignum_st* noundef %call1, i64 noundef 2) #3
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %if.end
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0)) #3
  br label %fail

if.end22:                                         ; preds = %lor.lhs.false18
  call void @BN_clear(%struct.bignum_st* noundef %call) #3
  call void @BN_clear(%struct.bignum_st* noundef %call1) #3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @t_dsa_sig_msb, i64 0, i64 0), i8** %pder, align 8, !tbaa !3
  %call23 = call i64 @ossl_decode_der_dsa_sig(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, i8** noundef nonnull %pder, i64 noundef 10) #3
  %cmp24 = icmp eq i64 %call23, 0
  br i1 %cmp24, label %if.then34, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.end22
  %3 = load i8*, i8** %pder, align 8, !tbaa !3
  %call26 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* noundef %3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @t_dsa_sig_msb, i64 1, i64 0)) #3
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then34, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %call29 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.bignum_st* noundef %call, i64 noundef 129) #3
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then34, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %call32 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct.bignum_st* noundef %call1, i64 noundef 130) #3
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %lor.lhs.false31, %lor.lhs.false28, %lor.lhs.false25, %if.end22
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0)) #3
  br label %fail

if.end35:                                         ; preds = %lor.lhs.false31
  call void @BN_clear(%struct.bignum_st* noundef %call) #3
  call void @BN_clear(%struct.bignum_st* noundef %call1) #3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @t_dsa_sig_two, i64 0, i64 0), i8** %pder, align 8, !tbaa !3
  %call36 = call i64 @ossl_decode_der_dsa_sig(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, i8** noundef nonnull %pder, i64 noundef 10) #3
  %cmp37 = icmp eq i64 %call36, 0
  br i1 %cmp37, label %if.then47, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.end35
  %4 = load i8*, i8** %pder, align 8, !tbaa !3
  %call39 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i8* noundef %4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @t_dsa_sig_two, i64 1, i64 0)) #3
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then47, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false38
  %call42 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), %struct.bignum_st* noundef %call, i64 noundef 256) #3
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then47, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false41
  %call45 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), %struct.bignum_st* noundef %call1, i64 noundef 512) #3
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %lor.lhs.false44, %lor.lhs.false41, %lor.lhs.false38, %if.end35
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0)) #3
  br label %fail

if.end48:                                         ; preds = %lor.lhs.false44
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @t_invalid_int_zero, i64 0, i64 0), i8** %pder, align 8, !tbaa !3
  %call49 = call i64 @ossl_decode_der_dsa_sig(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, i8** noundef nonnull %pder, i64 noundef 7) #3
  %cmp50.not = icmp eq i64 %call49, 0
  br i1 %cmp50.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end48
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0)) #3
  br label %fail

if.end52:                                         ; preds = %if.end48
  call void @BN_clear(%struct.bignum_st* noundef %call) #3
  call void @BN_clear(%struct.bignum_st* noundef %call1) #3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @t_invalid_int, i64 0, i64 0), i8** %pder, align 8, !tbaa !3
  %call53 = call i64 @ossl_decode_der_dsa_sig(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, i8** noundef nonnull %pder, i64 noundef 9) #3
  %cmp54.not = icmp eq i64 %call53, 0
  br i1 %cmp54.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end52
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0)) #3
  br label %fail

if.end56:                                         ; preds = %if.end52
  call void @BN_clear(%struct.bignum_st* noundef %call) #3
  call void @BN_clear(%struct.bignum_st* noundef %call1) #3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @t_neg_int, i64 0, i64 0), i8** %pder, align 8, !tbaa !3
  %call57 = call i64 @ossl_decode_der_dsa_sig(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, i8** noundef nonnull %pder, i64 noundef 8) #3
  %cmp58.not = icmp eq i64 %call57, 0
  br i1 %cmp58.not, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.end56
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0)) #3
  br label %fail

if.end60:                                         ; preds = %if.end56
  call void @BN_clear(%struct.bignum_st* noundef %call) #3
  call void @BN_clear(%struct.bignum_st* noundef %call1) #3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @t_trunc_der, i64 0, i64 0), i8** %pder, align 8, !tbaa !3
  %call61 = call i64 @ossl_decode_der_dsa_sig(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, i8** noundef nonnull %pder, i64 noundef 9) #3
  %cmp62.not = icmp eq i64 %call61, 0
  br i1 %cmp62.not, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end60
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i64 0, i64 0)) #3
  br label %fail

if.end64:                                         ; preds = %if.end60
  call void @BN_clear(%struct.bignum_st* noundef %call) #3
  call void @BN_clear(%struct.bignum_st* noundef %call1) #3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @t_trunc_seq, i64 0, i64 0), i8** %pder, align 8, !tbaa !3
  %call65 = call i64 @ossl_decode_der_dsa_sig(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, i8** noundef nonnull %pder, i64 noundef 10) #3
  %cmp66.not = icmp eq i64 %call65, 0
  br i1 %cmp66.not, label %fail, label %if.then67

if.then67:                                        ; preds = %if.end64
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0)) #3
  br label %fail

fail:                                             ; preds = %if.end64, %if.then67, %if.then63, %if.then59, %if.then55, %if.then51, %if.then47, %if.then34, %if.then21, %if.then
  %rv.0 = phi i32 [ 0, %if.then ], [ 0, %if.then21 ], [ 0, %if.then34 ], [ 0, %if.then47 ], [ 0, %if.then51 ], [ 0, %if.then55 ], [ 0, %if.then59 ], [ 0, %if.then63 ], [ 0, %if.then67 ], [ 1, %if.end64 ]
  call void @BN_free(%struct.bignum_st* noundef %call) #3
  call void @BN_free(%struct.bignum_st* noundef %call1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %rv.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare dso_local i64 @ossl_decode_der_dsa_sig(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_eq_word(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @BN_clear(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}

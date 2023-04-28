; ModuleID = 'test/rsa_test.c'
source_filename = "test/rsa_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.rsa_st = type opaque
%struct.bignum_st = type opaque

@.str = private unnamed_addr constant [15 x i8] c"test_rsa_pkcs1\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"test_rsa_oaep\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"test_rsa_security_bit\00", align 1
@test_rsa_simple.ptext_ex = internal global [9 x i8] c"T\85\9B4,I\EA*\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"test/rsa_test.c\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"clentmp\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ptext\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"ptext_ex\00", align 1
@key1.n = internal global [66 x i8] c"\00\AA6\AB\CE\88\AC\FD\FFUR<\7F\C4R?\90\EF\A0\0D\F3wJ%\9F.b\B4\C5\D9\9C\B5\AD\B3\00\A0(^S\01\93\0E\0Cp\FBhv\93\9C\E6\16\CEbJ\11\E0\08m4\1E\BC\AC\A0\A1\F5\00", align 16
@key1.e = internal global [2 x i8] c"\11\00", align 1
@key1.d = internal global [65 x i8] c"\0A\037Hbd\87i__0\BC8\B9\8BD\C2\CD-\FFC@\98\CD \D8\A18\D0\90\BFdy|?\A7\A2\CD\CB<\D1\E0\BD\BA&T\B4\F9\DF\8E\8A\E5\9Ds=\9F3\B3\01bJ\FD\1DQ\00", align 16
@key1.p = internal global [34 x i8] c"\00\D8@\B4\16f\B4.\92\EA\0D\A3\B42\04\B5\CF\CE3RRM\04\16\A5\A4A\E7\00\AFF\12\0D\00", align 16
@key1.q = internal global [34 x i8] c"\00\C9\7F\B1\F0'\F4S\F64\123\EA\AA\D1\D95?lB\D0\88f\B1\D0Z\0F 5\02\8B\9D\89\00", align 16
@key1.dmp1 = internal global [33 x i8] c"Y\0B\95r\A2\C2\A9\C4\06\05\9D\C2\AB/\1D\AF\EB~\8BO\10\A7T\9E\8E\ED\F5\B4\FC\E0\9E\05\00", align 16
@key1.dmq1 = internal global [34 x i8] c"\00\8E<\05!\FE\15\E0\EA\06\A3o\F0\F1\0C\99R\C3[zu\14\FD28\B8\0A\ADR\98b\8DQ\00", align 16
@key1.iqmp = internal global [33 x i8] c"6?\F7\18\9D\A8\E9\0B\1D4\1Fq\D0\9Bv\A8\A9C\E1\1D\10\B2M$\9F-\EA\FE\F8\0C\18&\00", align 16
@key1.ctext_ex = internal global [65 x i8] c"\1B\8F\05\F9\CA\1AyRnS\F3\CCQO\DB\89+\FB\91\93#\1Ex\B9\92\E6\8DP\A4\80\CBR3\89\\t\95\8D]\02\AB\8C\0F\D0@\EBXD\B0\05\C3\9E\D8'J\9D\BF\A8\06q@\949\D2\00", align 16
@key2.n = internal global [52 x i8] c"\00\A3\07\9A\90\DF\0D\FDr\AC\09\0C\CC*x\B8t\13\13>@u\9C\98\FA\F8 O5\8A\0B&<gp\E7\83\A9;iq\B77y\D2q{\E84w\CF\00", align 16
@key2.e = internal global [2 x i8] c"\03\00", align 1
@key2.d = internal global [51 x i8] c"l\AF\BC`\94\B3\FELr\B0\B32\C6\FB%\A2\B7b)\80Nhe\FC\A4Zt\DF\0F\8F\B8A;R\C0\D0\E5=\9BY\0F\F1\9B\E7\9FI\DD!\E5\EB\00", align 16
@key2.p = internal global [27 x i8] c"\00\CF 5\02\8B\9D\86\98@\B4\16f\B4.\92\EA\0D\A3\B42\04\B5\CF\CE\91\00", align 16
@key2.q = internal global [27 x i8] c"\00\C9\7F\B1\F0'\F4S\F64\123\EA\AA\D1\D95?lB\D0\88f\B1\D0_\00", align 16
@key2.dmp1 = internal global [27 x i8] c"\00\8A\15x\AC]\13\AF\10+\22\B9\99\CDta\F1^m\22\CC\03#\DF\DF\0B\00", align 16
@key2.dmq1 = internal global [27 x i8] c"\00\86U!J\C5M\8DN\CDaw\F1\C76\90\CE*H,\8B\05\99\CB\E0?\00", align 16
@key2.iqmp = internal global [27 x i8] c"\00\83\EF\EF\B8\A9\A4\0D\1D\B6\ED\98\AD\84\ED\135\DC\C1\08\F3\22\D0W\CF\8D\00", align 16
@key2.ctext_ex = internal global [51 x i8] c"\14\BD\DD(\C9\835\19#\80\E8\E5I\B1X*\8B@\B4Hm\03\A6\A51\1F\1F\D5\F0\A1\80\E4\17S\03)\A94\90t\B1R\13T)\08$RbQ\00", align 16
@key3.n = internal global [130 x i8] c"\00\BB\F8/\09\06\82\CE\9C#8\AC+\9D\A8q\F76\8D\07\EE\D4\10C\A4@\D6\B6\F0tT\F5\1F\B8\DF\BA\AF\03\\\02\ABa\EAH\CE\EBo\CDHv\EDR\0D`\E1\ECF\19q\9D\8A[\8B\80\7F\AF\B8\E0\A3\DF\C77r>\E6\B4\B7\D9:%\84\EEjd\9D\06\09St\884\B2EE\989N\E0\AA\B1-{a\A5\1FRz\9AA\F6\C1h\7F\E2Sr\98\CA*\8FYF\F8\E5\FD\09\1D\BD\CB\00", align 16
@key3.e = internal global [2 x i8] c"\11\00", align 1
@key3.d = internal global [130 x i8] c"\00\A5\DA\FCSA\FA\F2\89\C4\B9\88\DB0\C1\CD\F8?1%\1E\06h\B4'\84\818\01W\96A\B2\94\10\B3\C7\99\8Dk\C4et^\\9&i\D6\87\0D\A2\C0\82\A99\E3\7F\DC\B8.\C9>\DA\C9\7F\F3\ADYP\AC\CF\BC\11\1Cv\F1\A9R\94D\E5j\AFh\C5l\09,\D3\8D\C3\BE\F5\D2\0A\93\99&\EDOt\A1>\DD\FB\E1\A1\CE\CCH\94\AF\94(\C2\B7\B8\88?\E4F:K\C8[\1C\B3\C1\00", align 16
@key3.p = internal global [66 x i8] c"\00\EE\CF\AE\81\B1\B9\B3\C9\08\81\0B\10\A1\B5`\01\99\EB\9FD\AE\F4\FD\A4\93\B8\1A\9E=\84\F62\12N\F0#n]\1E;~(\FA\E7\AA\04\0A-[%!vE\9D\1F9uA\BA*X\FBe\99\00", align 16
@key3.q = internal global [66 x i8] c"\00\C9\7F\B1\F0'\F4S\F64\123\EA\AA\D1\D95?lB\D0\88f\B1\D0Z\0F 5\02\8B\9D\86\98@\B4\16f\B4.\92\EA\0D\A3\B42\04\B5\CF\CE3RRM\04\16\A5\A4A\E7\00\AFF\15\03\00", align 16
@key3.dmp1 = internal global [65 x i8] c"TIL\A6>\BA\037\E4\E2@#\FC\D6\9AZ\EB\07\DD\DC\01\83\A4\D0\AC\9BT\B0Q\F2\B1>\D9I\09u\EA\B7t\14\FFY\C1\F7i.\9A. +8\FC\91\0AGAt\AD\C9<\1Fg\C9\81\00", align 16
@key3.dmq1 = internal global [65 x i8] c"G\1E\02\90\FF\0A\F0u\03Q\B7\F8x\86L\A9a\AD\BD:\8A~\99\1C\\\05V\A9L1F\A7\F9\80?\8Fo\8A\E3B\E91\FD\8A\E4z\22\0D\1B\99\A4\95\84\98\07\FE9\F9$Z\986\DA=\00", align 16
@key3.iqmp = internal global [66 x i8] c"\00\B0lO\DA\BBc\01\19\8D&[\DB\AE\94#\B3\80\F2q\F74S\88P\93\07\7F\CD9\E2\11\9F\C9\862\15OX\83\B1g\A9g\BF@+N\9E.\0F\96V\E6\98\EA6f\ED\FB%y\809\F7\00", align 16
@key3.ctext_ex = internal global [129 x i8] c"\B8$kV\A6\EDX\81\AE\B5\85\D9\A2[*\D7\90\C4\17\E0\80h\1B\F1\AC+\C3\DE\B6\9D\8B\CE\F0\C46o\EC@\0A\F0R\A7.\9B\0E\FF\B5\B3\F2\F1\92\DB\EA\CA\03\C1'@\05q\13\BF\1F\06i\AC\22\E9\F3\A7\85.<\15\D9\13\CA\B0\B8\86:\95\C9\92\94\CE\86t!ITa\03F\F4\D4t\B2o|H\B4.\E6\8E\1FW*\1F\C4\02j\C4V\B4\F5\9F{b\1E\A1\B9\D8\8Fd /\B1\00", align 16
@test_rsa_oaep.ptext_ex = internal global [9 x i8] c"T\85\9B4,I\EA*\00", align 1
@test_rsa_security_bit.vals = internal unnamed_addr constant [8 x i8] c"\80\01\02\04\08\10 @", align 1
@rsa_security_bits_cases = internal unnamed_addr constant [17 x %struct.anon] [%struct.anon { i32 2048, i32 112 }, %struct.anon { i32 3072, i32 128 }, %struct.anon { i32 4096, i32 152 }, %struct.anon { i32 6144, i32 176 }, %struct.anon { i32 8192, i32 200 }, %struct.anon { i32 7680, i32 192 }, %struct.anon { i32 15360, i32 256 }, %struct.anon { i32 256, i32 40 }, %struct.anon { i32 512, i32 56 }, %struct.anon { i32 1024, i32 80 }, %struct.anon { i32 8888, i32 208 }, %struct.anon { i32 2468, i32 120 }, %struct.anon { i32 13456, i32 248 }, %struct.anon { i32 15359, i32 256 }, %struct.anon { i32 15361, i32 264 }, %struct.anon { i32 7679, i32 192 }, %struct.anon { i32 7681, i32 200 }], align 16
@.str.9 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"(int)sizeof(num)\00", align 1
@.str.12 = private unnamed_addr constant [82 x i8] c"RSA_set0_key(key, BN_bin2bn(num, bytes, NULL), BN_bin2bn(num, bytes, NULL), NULL)\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"RSA_security_bits(key)\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"result\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_rsa_pkcs1, i32 noundef 3, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef nonnull @test_rsa_oaep, i32 noundef 3, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 (i32)* noundef nonnull @test_rsa_security_bit, i32 noundef 17, i32 noundef 1) #4
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rsa_pkcs1(i32 noundef %idx) #0 {
entry:
  %call = tail call fastcc i32 @test_rsa_simple(i32 noundef %idx, i32 noundef 1, i32 noundef 1, i8* noundef null, i32* noundef null, %struct.rsa_st** noundef null) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rsa_oaep(i32 noundef %idx) #0 {
entry:
  %key = alloca %struct.rsa_st*, align 8
  %ptext = alloca [256 x i8], align 16
  %ctext_ex = alloca [256 x i8], align 16
  %clen = alloca i32, align 4
  %0 = bitcast %struct.rsa_st** %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.rsa_st* null, %struct.rsa_st** %key, align 8, !tbaa !3
  %1 = getelementptr inbounds [256 x i8], [256 x i8]* %ptext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #6
  %2 = getelementptr inbounds [256 x i8], [256 x i8]* %ctext_ex, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #6
  %3 = bitcast i32* %clen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  store i32 0, i32* %clen, align 4, !tbaa !7
  %call = call fastcc i32 @test_rsa_simple(i32 noundef %idx, i32 noundef 4, i32 noundef 4, i8* noundef nonnull %2, i32* noundef nonnull %clen, %struct.rsa_st** noundef nonnull %key) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %clen, align 4, !tbaa !7
  %5 = load %struct.rsa_st*, %struct.rsa_st** %key, align 8, !tbaa !3
  %call3 = call i32 @RSA_private_decrypt(i32 noundef %4, i8* noundef nonnull %2, i8* noundef nonnull %1, %struct.rsa_st* noundef %5, i32 noundef 4) #4
  %cmp = icmp slt i32 %call3, 1
  br i1 %cmp, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %conv53 = zext i32 %call3 to i64
  %call6 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 302, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef %conv53, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @test_rsa_oaep.ptext_ex, i64 0, i64 0), i64 noundef 8) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %6 = load i32, i32* %clen, align 4, !tbaa !7
  %cmp1055 = icmp sgt i32 %6, 0
  br i1 %cmp1055, label %for.body, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %if.end20, %for.cond.preheader
  %7 = phi i32 [ %6, %for.cond.preheader ], [ %14, %if.end20 ]
  %cmp2757 = icmp sgt i32 %7, -1
  br i1 %cmp2757, label %for.body29, label %err

for.body:                                         ; preds = %for.cond.preheader, %if.end20
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end20 ], [ 0, %for.cond.preheader ]
  %8 = phi i32 [ %14, %if.end20 ], [ %6, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %ctext_ex, i64 0, i64 %indvars.iv
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %10 = xor i8 %9, 1
  store i8 %10, i8* %arrayidx, align 1, !tbaa !9
  %11 = load %struct.rsa_st*, %struct.rsa_st** %key, align 8, !tbaa !3
  %call16 = call i32 @RSA_private_decrypt(i32 noundef %8, i8* noundef nonnull %2, i8* noundef nonnull %1, %struct.rsa_st* noundef %11, i32 noundef 4) #4
  %call17 = call i32 @test_int_le(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 310, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %call16, i32 noundef 0) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %for.body
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %13 = xor i8 %12, 1
  store i8 %13, i8* %arrayidx, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %14 = load i32, i32* %clen, align 4, !tbaa !7
  %15 = sext i32 %14 to i64
  %cmp10 = icmp slt i64 %indvars.iv.next, %15
  br i1 %cmp10, label %for.body, label %for.cond26.preheader, !llvm.loop !10

for.cond26:                                       ; preds = %for.body29
  %16 = load i32, i32* %clen, align 4, !tbaa !7
  %cmp27 = icmp slt i32 %inc38, %16
  br i1 %cmp27, label %for.body29, label %err, !llvm.loop !12

for.body29:                                       ; preds = %for.cond26.preheader, %for.cond26
  %n.158 = phi i32 [ %inc38, %for.cond26 ], [ -1, %for.cond26.preheader ]
  %17 = load %struct.rsa_st*, %struct.rsa_st** %key, align 8, !tbaa !3
  %call32 = call i32 @RSA_private_decrypt(i32 noundef %n.158, i8* noundef nonnull %2, i8* noundef nonnull %1, %struct.rsa_st* noundef %17, i32 noundef 4) #4
  %call33 = call i32 @test_int_le(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 319, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %call32, i32 noundef 0) #4
  %tobool34.not = icmp eq i32 %call33, 0
  %inc38 = add nsw i32 %n.158, 1
  br i1 %tobool34.not, label %err, label %for.cond26

err:                                              ; preds = %for.body, %for.body29, %for.cond26, %for.cond26.preheader, %if.end, %lor.lhs.false, %entry
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %for.cond26.preheader ], [ 0, %for.body29 ], [ 1, %for.cond26 ], [ 0, %for.body ]
  %18 = load %struct.rsa_st*, %struct.rsa_st** %key, align 8, !tbaa !3
  call void @RSA_free(%struct.rsa_st* noundef %18) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rsa_security_bit(i32 noundef %n) #0 {
entry:
  %num = alloca [2000 x i8], align 16
  %call = tail call %struct.rsa_st* @RSA_new() #4
  %idxprom = sext i32 %n to i64
  %bits1 = getelementptr inbounds [17 x %struct.anon], [17 x %struct.anon]* @rsa_security_bits_cases, i64 0, i64 %idxprom, i32 0
  %0 = load i32, i32* %bits1, align 8, !tbaa !13
  %r = getelementptr inbounds [17 x %struct.anon], [17 x %struct.anon]* @rsa_security_bits_cases, i64 0, i64 %idxprom, i32 1
  %1 = load i32, i32* %r, align 4, !tbaa !15
  %add = add nsw i32 %0, 7
  %div = sdiv i32 %add, 8
  %2 = getelementptr inbounds [2000 x i8], [2000 x i8]* %num, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2000, i8* nonnull %2) #6
  %3 = bitcast %struct.rsa_st* %call to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef %3) #4
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call6 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 noundef %div, i32 noundef 2000) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %rem = srem i32 %0, 8
  %idxprom8 = sext i32 %rem to i64
  %arrayidx9 = getelementptr inbounds [8 x i8], [8 x i8]* @test_rsa_security_bit.vals, i64 0, i64 %idxprom8
  %4 = load i8, i8* %arrayidx9, align 1, !tbaa !9
  %conv = zext i8 %4 to i32
  %conv10 = sext i32 %div to i64
  %call11 = call i8* @memset(i8* noundef nonnull %2, i32 noundef %conv, i64 noundef %conv10) #4
  %call13 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %2, i32 noundef %div, %struct.bignum_st* noundef null) #4
  %call15 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %2, i32 noundef %div, %struct.bignum_st* noundef null) #4
  %call16 = call i32 @RSA_set0_key(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef null) #4
  %cmp = icmp ne i32 %call16, 0
  %conv17 = zext i1 %cmp to i32
  %call18 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 386, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv17) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call20 = call i32 @RSA_security_bits(%struct.rsa_st* noundef %call) #4
  %call21 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 387, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call20, i32 noundef %1) #4
  %tobool22.not = icmp ne i32 %call21, 0
  %spec.select = zext i1 %tobool22.not to i32
  br label %err

err:                                              ; preds = %land.lhs.true, %if.end, %entry, %lor.lhs.false
  %r4.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %land.lhs.true ]
  call void @RSA_free(%struct.rsa_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 2000, i8* nonnull %2) #6
  ret i32 %r4.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_rsa_simple(i32 noundef %idx, i32 noundef %en_pad_type, i32 noundef %de_pad_type, i8* noundef %ctext_ex, i32* noundef writeonly %clen, %struct.rsa_st** noundef writeonly %retkey) unnamed_addr #0 {
entry:
  %key = alloca %struct.rsa_st*, align 8
  %ptext = alloca [256 x i8], align 16
  %ctext = alloca [256 x i8], align 16
  %0 = bitcast %struct.rsa_st** %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = getelementptr inbounds [256 x i8], [256 x i8]* %ptext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #6
  %2 = getelementptr inbounds [256 x i8], [256 x i8]* %ctext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #6
  %call = call fastcc i32 @rsa_setkey(%struct.rsa_st** noundef nonnull %key, i8* noundef %ctext_ex, i32 noundef %idx) #5
  %cmp.not = icmp eq i32* %clen, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 %call, i32* %clen, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.rsa_st*, %struct.rsa_st** %key, align 8, !tbaa !3
  %call1 = call i32 @RSA_public_encrypt(i32 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @test_rsa_simple.ptext_ex, i64 0, i64 0), i8* noundef nonnull %2, %struct.rsa_st* noundef %3, i32 noundef %en_pad_type) #4
  %call2 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef %call1, i32 noundef %call) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call7 = call i32 @RSA_private_decrypt(i32 noundef %call1, i8* noundef nonnull %2, i8* noundef nonnull %1, %struct.rsa_st* noundef %3, i32 noundef %de_pad_type) #4
  %call10 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %call7, i32 noundef 0) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %conv = sext i32 %call7 to i64
  %call14 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef %conv, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @test_rsa_simple.ptext_ex, i64 0, i64 0), i64 noundef 8) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end22

if.end22:                                         ; preds = %lor.lhs.false
  %cmp23.not = icmp eq %struct.rsa_st** %retkey, null
  br i1 %cmp23.not, label %err, label %if.then25

if.then25:                                        ; preds = %if.end22
  store %struct.rsa_st* %3, %struct.rsa_st** %retkey, align 8, !tbaa !3
  br label %err

err:                                              ; preds = %if.end22, %if.then25, %if.end4, %lor.lhs.false, %if.end
  %4 = phi %struct.rsa_st* [ null, %if.then25 ], [ %3, %if.end22 ], [ %3, %lor.lhs.false ], [ %3, %if.end4 ], [ %3, %if.end ]
  %ret.0 = phi i32 [ 1, %if.then25 ], [ 1, %if.end22 ], [ 0, %lor.lhs.false ], [ 0, %if.end4 ], [ 0, %if.end ]
  call void @RSA_free(%struct.rsa_st* noundef %4) #4
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_setkey(%struct.rsa_st** nocapture noundef writeonly %key, i8* noundef %ctext, i32 noundef %idx) unnamed_addr #0 {
entry:
  %call = tail call %struct.rsa_st* @RSA_new() #4
  store %struct.rsa_st* %call, %struct.rsa_st** %key, align 8, !tbaa !3
  %cmp.not = icmp eq %struct.rsa_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  switch i32 %idx, label %if.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.then
  tail call fastcc void @key1(%struct.rsa_st* noundef nonnull %call, i8* noundef %ctext) #5
  br label %if.end

sw.bb2:                                           ; preds = %if.then
  tail call fastcc void @key2(%struct.rsa_st* noundef nonnull %call, i8* noundef %ctext) #5
  br label %if.end

sw.bb4:                                           ; preds = %if.then
  tail call fastcc void @key3(%struct.rsa_st* noundef nonnull %call, i8* noundef %ctext) #5
  br label %if.end

if.end:                                           ; preds = %sw.bb, %sw.bb2, %sw.bb4, %if.then, %entry
  %clen.0 = phi i32 [ 0, %if.then ], [ 128, %sw.bb4 ], [ 50, %sw.bb2 ], [ 64, %sw.bb ], [ 0, %entry ]
  ret i32 %clen.0
}

declare dso_local i32 @RSA_public_encrypt(i32 noundef, i8* noundef, i8* noundef, %struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_private_decrypt(i32 noundef, i8* noundef, i8* noundef, %struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @RSA_free(%struct.rsa_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.rsa_st* @RSA_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @key1(%struct.rsa_st* noundef %key, i8* noundef %c) unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @key1.n, i64 0, i64 0), i32 noundef 65, %struct.bignum_st* noundef null) #4
  %call1 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @key1.e, i64 0, i64 0), i32 noundef 1, %struct.bignum_st* noundef null) #4
  %call2 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @key1.d, i64 0, i64 0), i32 noundef 64, %struct.bignum_st* noundef null) #4
  %call3 = tail call i32 @RSA_set0_key(%struct.rsa_st* noundef %key, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call2) #4
  %call4 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @key1.p, i64 0, i64 0), i32 noundef 33, %struct.bignum_st* noundef null) #4
  %call5 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @key1.q, i64 0, i64 0), i32 noundef 33, %struct.bignum_st* noundef null) #4
  %call6 = tail call i32 @RSA_set0_factors(%struct.rsa_st* noundef %key, %struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %call5) #4
  %call7 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @key1.dmp1, i64 0, i64 0), i32 noundef 32, %struct.bignum_st* noundef null) #4
  %call8 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @key1.dmq1, i64 0, i64 0), i32 noundef 33, %struct.bignum_st* noundef null) #4
  %call9 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @key1.iqmp, i64 0, i64 0), i32 noundef 32, %struct.bignum_st* noundef null) #4
  %call10 = tail call i32 @RSA_set0_crt_params(%struct.rsa_st* noundef %key, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call8, %struct.bignum_st* noundef %call9) #4
  %cmp.not = icmp eq i8* %c, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call11 = tail call i8* @memcpy(i8* noundef nonnull %c, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @key1.ctext_ex, i64 0, i64 0), i64 noundef 64) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @key2(%struct.rsa_st* noundef %key, i8* noundef %c) unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @key2.n, i64 0, i64 0), i32 noundef 51, %struct.bignum_st* noundef null) #4
  %call1 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @key2.e, i64 0, i64 0), i32 noundef 1, %struct.bignum_st* noundef null) #4
  %call2 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @key2.d, i64 0, i64 0), i32 noundef 50, %struct.bignum_st* noundef null) #4
  %call3 = tail call i32 @RSA_set0_key(%struct.rsa_st* noundef %key, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call2) #4
  %call4 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @key2.p, i64 0, i64 0), i32 noundef 26, %struct.bignum_st* noundef null) #4
  %call5 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @key2.q, i64 0, i64 0), i32 noundef 26, %struct.bignum_st* noundef null) #4
  %call6 = tail call i32 @RSA_set0_factors(%struct.rsa_st* noundef %key, %struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %call5) #4
  %call7 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @key2.dmp1, i64 0, i64 0), i32 noundef 26, %struct.bignum_st* noundef null) #4
  %call8 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @key2.dmq1, i64 0, i64 0), i32 noundef 26, %struct.bignum_st* noundef null) #4
  %call9 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @key2.iqmp, i64 0, i64 0), i32 noundef 26, %struct.bignum_st* noundef null) #4
  %call10 = tail call i32 @RSA_set0_crt_params(%struct.rsa_st* noundef %key, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call8, %struct.bignum_st* noundef %call9) #4
  %cmp.not = icmp eq i8* %c, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call11 = tail call i8* @memcpy(i8* noundef nonnull %c, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @key2.ctext_ex, i64 0, i64 0), i64 noundef 50) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @key3(%struct.rsa_st* noundef %key, i8* noundef %c) unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([130 x i8], [130 x i8]* @key3.n, i64 0, i64 0), i32 noundef 129, %struct.bignum_st* noundef null) #4
  %call1 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @key3.e, i64 0, i64 0), i32 noundef 1, %struct.bignum_st* noundef null) #4
  %call2 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([130 x i8], [130 x i8]* @key3.d, i64 0, i64 0), i32 noundef 129, %struct.bignum_st* noundef null) #4
  %call3 = tail call i32 @RSA_set0_key(%struct.rsa_st* noundef %key, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call2) #4
  %call4 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @key3.p, i64 0, i64 0), i32 noundef 65, %struct.bignum_st* noundef null) #4
  %call5 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @key3.q, i64 0, i64 0), i32 noundef 65, %struct.bignum_st* noundef null) #4
  %call6 = tail call i32 @RSA_set0_factors(%struct.rsa_st* noundef %key, %struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %call5) #4
  %call7 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @key3.dmp1, i64 0, i64 0), i32 noundef 64, %struct.bignum_st* noundef null) #4
  %call8 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @key3.dmq1, i64 0, i64 0), i32 noundef 64, %struct.bignum_st* noundef null) #4
  %call9 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @key3.iqmp, i64 0, i64 0), i32 noundef 65, %struct.bignum_st* noundef null) #4
  %call10 = tail call i32 @RSA_set0_crt_params(%struct.rsa_st* noundef %key, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call8, %struct.bignum_st* noundef %call9) #4
  %cmp.not = icmp eq i8* %c, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call11 = tail call i8* @memcpy(i8* noundef nonnull %c, i8* noundef getelementptr inbounds ([129 x i8], [129 x i8]* @key3.ctext_ex, i64 0, i64 0), i64 noundef 128) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local i32 @RSA_set0_key(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_set0_factors(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_set0_crt_params(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_uint_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_security_bits(%struct.rsa_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

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
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !8, i64 0}
!14 = !{!"", !8, i64 0, !8, i64 4}
!15 = !{!14, !8, i64 4}

; ModuleID = 'test/bftest.c'
source_filename = "test/bftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bf_key_st = type { [18 x i32], [1024 x i32] }

@test_get_options.test_options = internal constant [10 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Valid options are:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Display the list of tests available\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Run a single test by id or name\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Run a single iteration of a test\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Number of tabs added to output\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Seed value to randomize tests with\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"Output test tables instead of running tests\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"test_bf_ecb_raw\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"test_bf_ecb\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"test_bf_set_key\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"test_bf_cbc\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"test_bf_cfb64\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"test_bf_ofb64\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"ecb test data\0A\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"key bytes\09\09clear bytes\09\09cipher bytes\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@ecb_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"0\00\00\00\00\00\00\00", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] zeroinitializer, [8 x i8] c"\FE\DC\BA\98vT2\10", [8 x i8] c"|\A1\10EJ\1AnW", [8 x i8] c"\011\D9a\9D\C17n", [8 x i8] c"\07\A1\13>J\0B&\86", [8 x i8] c"8IgL&\021\9E", [8 x i8] c"\04\B9\15\BAC\FE\B5\B6", [8 x i8] c"\01\13\B9p\FD4\F2\CE", [8 x i8] c"\01p\F1uF\8F\B5\E6", [8 x i8] c"C)\7F\AD8\E3s\FE", [8 x i8] c"\07\A7\13pE\DA*\16", [8 x i8] c"\04h\91\04\C2\FD;/", [8 x i8] c"7\D0k\B5\16\CBuF", [8 x i8] c"\1F\08&\0D\1A\C2F^", [8 x i8] c"X@#d\1A\BAav", [8 x i8] c"\02X\16\16F)\B0\07", [8 x i8] c"Iy>\BCy\B3%\8F", [8 x i8] c"O\B0^\15\15\ABs\A7", [8 x i8] c"I\E9]mL\A2)\BF", [8 x i8] c"\01\83\10\DC@\9B&\D6", [8 x i8] c"\1CX\7F\1C\13\92O\EF", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\1F\1F\1F\1F\0E\0E\0E\0E", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FE\DC\BA\98vT2\10"], align 16
@.str.25 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@plain_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\10\00\00\00\00\00\00\01", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] zeroinitializer, [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01\A1\D6\D09wgB", [8 x i8] c"\\\D5L\A8=\EFW\DA", [8 x i8] c"\02H\D48\06\F6qr", [8 x i8] c"QEKX-\DFD\0A", [8 x i8] c"B\FDD0YW\7F\A2", [8 x i8] c"\05\9B^\08Q\CF\14:", [8 x i8] c"\07V\D8\E0wGa\D2", [8 x i8] c"v%\14\B8)\BFHj", [8 x i8] c";\DD\11\90I7(\02", [8 x i8] c"&\95_h5\AF`\9A", [8 x i8] c"\16M^@O'R2", [8 x i8] c"k\05n\18u\9F\\\CA", [8 x i8] c"\00K\D6\EF\09\17`b", [8 x i8] c"H\0D9\00n\E7b\F2", [8 x i8] c"Cu@\C8i\8F<\FA", [8 x i8] c"\07-C\A0w\07R\92", [8 x i8] c"\02\FEUw\81\17\F1*", [8 x i8] c"\1D\9D\\P\18\F7(\C2", [8 x i8] c"0U2(mo)Z", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] zeroinitializer, [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF"], align 16
@cipher_data = internal global [34 x [8 x i8]] [[8 x i8] c"N\F9\97Ea\98\DDx", [8 x i8] c"Q\86o\D5\B8^\CB\8A", [8 x i8] c"}\85o\9Aa0c\F2", [8 x i8] c"$f\DD\87\8B\96<\9D", [8 x i8] c"a\F9\C3\80\22\81\B0\96", [8 x i8] c"}\0C\C60\AF\DA\1E\C7", [8 x i8] c"N\F9\97Ea\98\DDx", [8 x i8] c"\0A\CE\AB\0F\C6\A0\A2\8D", [8 x i8] c"Y\C6\82E\EB\05(+", [8 x i8] c"\B1\B8\CC\0B%\0F\09\A0", [8 x i8] c"\170\E5w\8B\EA\1D\A4", [8 x i8] c"\A2^xV\CF&Q\EB", [8 x i8] c"58\82\B1\09\CE\8F\1A", [8 x i8] c"H\F4\D0\88L7\99\18", [8 x i8] c"C!\93\B7\89Q\FC\98", [8 x i8] c"\13\F0AT\D6\9D\1A\E5", [8 x i8] c".\ED\DA\93\FF\D3\9Cy", [8 x i8] c"\D8\87\E09<-\A6\E3", [8 x i8] c"_\99\D0O[\169i", [8 x i8] c"J\05z;$\D3\97{", [8 x i8] c"E 1\C1\E4\FA\DA\8E", [8 x i8] c"uU\AE9\F5\9B\87\BD", [8 x i8] c"S\C5_\9C\B4\9F\C0\19", [8 x i8] c"z\8E{\FA\93~\89\A3", [8 x i8] c"\CF\9C]zI\86\AD\B5", [8 x i8] c"\D1\AB\B2\90e\8B\C7x", [8 x i8] c"U\CB7t\D1>\F2\01", [8 x i8] c"\FA4\ECHG\B2h\B2", [8 x i8] c"\A7\90yQ\08\EA<\AE", [8 x i8] c"\C3\9E\07-\9F\ACc\1D", [8 x i8] c"\01I3\E0\CD\AF\F6\E4", [8 x i8] c"\F2\1E\9Aw\B7\1CI\BC", [8 x i8] c"$YF\88WT6\9A", [8 x i8] c"k\\Z\9C]\9E\0AZ"], align 16
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"set_key test data\0A\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"data[8]= \00", align 1
@key_data = internal global [8 x i8] c"\FE\DC\BA\98vT2\10", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"c=\00", align 1
@key_out = internal global [25 x [8 x i8]] [[8 x i8] c"\F9\ADY|I\DB\00^", [8 x i8] c"\E9\1D!\C1\D9a\A6\D6", [8 x i8] c"\E9\C2\B7\0A\1B\C6\\\F3", [8 x i8] c"\BE\1Ec\94\08d\0F\05", [8 x i8] c"\B3\9EDH\1B\DB\1En", [8 x i8] c"\94W\AA\83\B1\92\8C\0D", [8 x i8] c"\8B\B7p2\F9`b\9D", [8 x i8] c"\E8z$N,\C8^\82", [8 x i8] c"\15u\0EzON\C5w", [8 x i8] c"\12+\A7\0B:\B6J\E0", [8 x i8] c":\83<\9A\FF\C57\F6", [8 x i8] c"\94\09\DA\87\A9\0Fk\F2", [8 x i8] c"\88O\80bP`\B8\B4", [8 x i8] c"\1F\85\03\1C\19\E1\19h", [8 x i8] c"y\D97:qL\A3O", [8 x i8] c"\93\14(\87\EE;\E1\\", [8 x i8] c"\03B\9E\83\8C\E2\D1K", [8 x i8] c"\A4)\9E'F\9F\F6{", [8 x i8] c"\AF\D5\AE\D1\C1\BC\96\A8", [8 x i8] c"\10\85\1C\0E8X\DA\9F", [8 x i8] c"\E6\F5\1E\D7\9B\9D\B2\1F", [8 x i8] c"d\A6\E1J\FD6\B4o", [8 x i8] c"\80\C7\D7\D4ZTy\AD", [8 x i8] c"\05\04Kb\FAR\D0\80", [8 x i8] zeroinitializer], align 16
@.str.30 = private unnamed_addr constant [9 x i8] c" k[%2u]=\00", align 1
@key_test = internal global [25 x i8] c"\F0\E1\D2\C3\B4\A5\96\87xiZK<-\1E\0F\00\11\223DUfw\88", align 16
@.str.31 = private unnamed_addr constant [26 x i8] c"\0Achaining mode test data\0A\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"key[16]   = \00", align 1
@cbc_key = internal global [16 x i8] c"\01#Eg\89\AB\CD\EF\F0\E1\D2\C3\B4\A5\96\87", align 16
@.str.33 = private unnamed_addr constant [14 x i8] c"\0Aiv[8]     = \00", align 1
@cbc_iv = internal global [8 x i8] c"\FE\DC\BA\98vT2\10", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"\0Adata[%d]  = '%s'\00", align 1
@cbc_data = internal global [40 x i8] c"7654321 Now is the time for \00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.35 = private unnamed_addr constant [14 x i8] c"\0Adata[%d]  = \00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"cbc cipher text\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"cipher[%d]= \00", align 1
@cbc_ok = internal global [32 x i8] c"kw\B4\D60\06\DE\E6\05\B1V\E2t\03\97\93X\DE\B9\E7\15F\16\D9Y\F1e+\D5\FF\92\CC", align 16
@.str.38 = private unnamed_addr constant [19 x i8] c"cfb64 cipher text\0A\00", align 1
@cfb64_ok = internal global [29 x i8] c"\E72\14\A2\82!9\CA\F2n\CFm.\B9\E7n=\A3\DE\04\D1Qr\00Q\9DW\A6\C3", align 16
@.str.39 = private unnamed_addr constant [19 x i8] c"ofb64 cipher text\0A\00", align 1
@ofb64_ok = internal global [29 x i8] c"\E72\14\A2\82!9\CAb\B3C\CC[eXs\10\DD\90\8D\0C$\1B\22c\C2\CF\80\DA", align 16
@bf_key = internal global [2 x [30 x i8]] [[30 x i8] c"abcdefghijklmnopqrstuvwxyz\00\00\00\00", [30 x i8] c"Who is John Galt?\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@bf_plain = internal global [2 x [2 x i32]] [[2 x i32] [i32 1112297303, i32 1179210568], [2 x i32] [i32 -19088744, i32 1985229328]], align 16
@.str.40 = private unnamed_addr constant [14 x i8] c"test/bftest.c\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"&(bf_cipher[n][0])\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"&(data[0])\00", align 1
@bf_cipher = internal global [2 x [2 x i32]] [[2 x i32] [i32 844026110, i32 -200039933], [2 x i32] [i32 -862883029, i32 -2145192316]], align 16
@.str.43 = private unnamed_addr constant [18 x i8] c"&(bf_plain[n][0])\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"&(cipher_data[n][0])\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"&(plain_data[n][0])\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"&(key_out[n][0])\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"cbc_out\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"cbc_ok\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"cbc_in\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"cbc_data\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"cfb64_ok\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"ofb64_ok\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([10 x %struct.options_st], [10 x %struct.options_st]* @test_get_options.test_options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %call = tail call i32 @opt_next() #6
  switch i32 %call, label %cleanup [
    i32 0, label %while.end
    i32 1, label %sw.bb
    i32 500, label %while.cond.backedge
    i32 501, label %while.cond.backedge
    i32 502, label %while.cond.backedge
    i32 503, label %while.cond.backedge
    i32 504, label %while.cond.backedge
    i32 505, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond
  br label %while.cond, !llvm.loop !3

sw.bb:                                            ; preds = %while.cond
  tail call fastcc void @print_test_data() #7
  br label %cleanup

while.end:                                        ; preds = %while.cond
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 (i32)* noundef nonnull @test_bf_ecb_raw, i32 noundef 2, i32 noundef 1) #6
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 (i32)* noundef nonnull @test_bf_ecb, i32 noundef 34, i32 noundef 1) #6
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 (i32)* noundef nonnull @test_bf_set_key, i32 noundef 24, i32 noundef 1) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 ()* noundef nonnull @test_bf_cbc) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 ()* noundef nonnull @test_bf_cfb64) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 ()* noundef nonnull @test_bf_ofb64) #6
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %while.end, %sw.bb
  %retval.0 = phi i32 [ 1, %sw.bb ], [ 1, %while.end ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @opt_next() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_test_data() unnamed_addr #1 {
entry:
  %call = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #6
  %call1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i64 0, i64 0)) #6
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.cond2.preheader
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i64 0, i64 %indvars.iv, i64 0
  %0 = load i8, i8* %arrayidx6, align 8, !tbaa !5
  %conv = zext i8 %0 to i32
  %call7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv) #6
  %arrayidx6.1 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i64 0, i64 %indvars.iv, i64 1
  %1 = load i8, i8* %arrayidx6.1, align 1, !tbaa !5
  %conv.1 = zext i8 %1 to i32
  %call7.1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv.1) #6
  %arrayidx6.2 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i64 0, i64 %indvars.iv, i64 2
  %2 = load i8, i8* %arrayidx6.2, align 2, !tbaa !5
  %conv.2 = zext i8 %2 to i32
  %call7.2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv.2) #6
  %arrayidx6.3 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i64 0, i64 %indvars.iv, i64 3
  %3 = load i8, i8* %arrayidx6.3, align 1, !tbaa !5
  %conv.3 = zext i8 %3 to i32
  %call7.3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv.3) #6
  %arrayidx6.4 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i64 0, i64 %indvars.iv, i64 4
  %4 = load i8, i8* %arrayidx6.4, align 4, !tbaa !5
  %conv.4 = zext i8 %4 to i32
  %call7.4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv.4) #6
  %arrayidx6.5 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i64 0, i64 %indvars.iv, i64 5
  %5 = load i8, i8* %arrayidx6.5, align 1, !tbaa !5
  %conv.5 = zext i8 %5 to i32
  %call7.5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv.5) #6
  %arrayidx6.6 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i64 0, i64 %indvars.iv, i64 6
  %6 = load i8, i8* %arrayidx6.6, align 2, !tbaa !5
  %conv.6 = zext i8 %6 to i32
  %call7.6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv.6) #6
  %arrayidx6.7 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i64 0, i64 %indvars.iv, i64 7
  %7 = load i8, i8* %arrayidx6.7, align 1, !tbaa !5
  %conv.7 = zext i8 %7 to i32
  %call7.7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv.7) #6
  %call8 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #6
  %arrayidx16 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %indvars.iv, i64 0
  %8 = load i8, i8* %arrayidx16, align 8, !tbaa !5
  %conv17 = zext i8 %8 to i32
  %call18 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv17) #6
  %arrayidx16.1 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %indvars.iv, i64 1
  %9 = load i8, i8* %arrayidx16.1, align 1, !tbaa !5
  %conv17.1 = zext i8 %9 to i32
  %call18.1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv17.1) #6
  %arrayidx16.2 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %indvars.iv, i64 2
  %10 = load i8, i8* %arrayidx16.2, align 2, !tbaa !5
  %conv17.2 = zext i8 %10 to i32
  %call18.2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv17.2) #6
  %arrayidx16.3 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %indvars.iv, i64 3
  %11 = load i8, i8* %arrayidx16.3, align 1, !tbaa !5
  %conv17.3 = zext i8 %11 to i32
  %call18.3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv17.3) #6
  %arrayidx16.4 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %indvars.iv, i64 4
  %12 = load i8, i8* %arrayidx16.4, align 4, !tbaa !5
  %conv17.4 = zext i8 %12 to i32
  %call18.4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv17.4) #6
  %arrayidx16.5 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %indvars.iv, i64 5
  %13 = load i8, i8* %arrayidx16.5, align 1, !tbaa !5
  %conv17.5 = zext i8 %13 to i32
  %call18.5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv17.5) #6
  %arrayidx16.6 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %indvars.iv, i64 6
  %14 = load i8, i8* %arrayidx16.6, align 2, !tbaa !5
  %conv17.6 = zext i8 %14 to i32
  %call18.6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv17.6) #6
  %arrayidx16.7 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %indvars.iv, i64 7
  %15 = load i8, i8* %arrayidx16.7, align 1, !tbaa !5
  %conv17.7 = zext i8 %15 to i32
  %call18.7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv17.7) #6
  %call22 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #6
  %arrayidx30 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 %indvars.iv, i64 0
  %16 = load i8, i8* %arrayidx30, align 8, !tbaa !5
  %conv31 = zext i8 %16 to i32
  %call32 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv31) #6
  %arrayidx30.1 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 %indvars.iv, i64 1
  %17 = load i8, i8* %arrayidx30.1, align 1, !tbaa !5
  %conv31.1 = zext i8 %17 to i32
  %call32.1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv31.1) #6
  %arrayidx30.2 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 %indvars.iv, i64 2
  %18 = load i8, i8* %arrayidx30.2, align 2, !tbaa !5
  %conv31.2 = zext i8 %18 to i32
  %call32.2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv31.2) #6
  %arrayidx30.3 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 %indvars.iv, i64 3
  %19 = load i8, i8* %arrayidx30.3, align 1, !tbaa !5
  %conv31.3 = zext i8 %19 to i32
  %call32.3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv31.3) #6
  %arrayidx30.4 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 %indvars.iv, i64 4
  %20 = load i8, i8* %arrayidx30.4, align 4, !tbaa !5
  %conv31.4 = zext i8 %20 to i32
  %call32.4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv31.4) #6
  %arrayidx30.5 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 %indvars.iv, i64 5
  %21 = load i8, i8* %arrayidx30.5, align 1, !tbaa !5
  %conv31.5 = zext i8 %21 to i32
  %call32.5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv31.5) #6
  %arrayidx30.6 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 %indvars.iv, i64 6
  %22 = load i8, i8* %arrayidx30.6, align 2, !tbaa !5
  %conv31.6 = zext i8 %22 to i32
  %call32.6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv31.6) #6
  %arrayidx30.7 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 %indvars.iv, i64 7
  %23 = load i8, i8* %arrayidx30.7, align 1, !tbaa !5
  %conv31.7 = zext i8 %23 to i32
  %call32.7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv31.7) #6
  %call36 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 34
  br i1 %exitcond.not, label %for.end39, label %for.cond2.preheader, !llvm.loop !8

for.end39:                                        ; preds = %for.cond2.preheader
  %call40 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0)) #6
  %call41 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)) #6
  %24 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @key_data, i64 0, i64 0), align 1, !tbaa !5
  %conv48 = zext i8 %24 to i32
  %call49 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv48) #6
  %25 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @key_data, i64 0, i64 1), align 1, !tbaa !5
  %conv48.1 = zext i8 %25 to i32
  %call49.1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv48.1) #6
  %26 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @key_data, i64 0, i64 2), align 1, !tbaa !5
  %conv48.2 = zext i8 %26 to i32
  %call49.2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv48.2) #6
  %27 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @key_data, i64 0, i64 3), align 1, !tbaa !5
  %conv48.3 = zext i8 %27 to i32
  %call49.3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv48.3) #6
  %28 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @key_data, i64 0, i64 4), align 1, !tbaa !5
  %conv48.4 = zext i8 %28 to i32
  %call49.4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv48.4) #6
  %29 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @key_data, i64 0, i64 5), align 1, !tbaa !5
  %conv48.5 = zext i8 %29 to i32
  %call49.5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv48.5) #6
  %30 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @key_data, i64 0, i64 6), align 1, !tbaa !5
  %conv48.6 = zext i8 %30 to i32
  %call49.6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv48.6) #6
  %31 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @key_data, i64 0, i64 7), align 1, !tbaa !5
  %conv48.7 = zext i8 %31 to i32
  %call49.7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv48.7) #6
  %call53 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #6
  br label %for.body77.preheader

for.body77.preheader:                             ; preds = %for.end84, %for.end39
  %indvars.iv48 = phi i64 [ 0, %for.end39 ], [ %indvars.iv.next49, %for.end84 ]
  %indvars.iv46 = phi i64 [ 1, %for.end39 ], [ %indvars.iv.next47, %for.end84 ]
  %call58 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0)) #6
  %arrayidx66 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i64 0, i64 %indvars.iv48, i64 0
  %32 = load i8, i8* %arrayidx66, align 8, !tbaa !5
  %conv67 = zext i8 %32 to i32
  %call68 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv67) #6
  %arrayidx66.1 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i64 0, i64 %indvars.iv48, i64 1
  %33 = load i8, i8* %arrayidx66.1, align 1, !tbaa !5
  %conv67.1 = zext i8 %33 to i32
  %call68.1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv67.1) #6
  %arrayidx66.2 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i64 0, i64 %indvars.iv48, i64 2
  %34 = load i8, i8* %arrayidx66.2, align 2, !tbaa !5
  %conv67.2 = zext i8 %34 to i32
  %call68.2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv67.2) #6
  %arrayidx66.3 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i64 0, i64 %indvars.iv48, i64 3
  %35 = load i8, i8* %arrayidx66.3, align 1, !tbaa !5
  %conv67.3 = zext i8 %35 to i32
  %call68.3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv67.3) #6
  %arrayidx66.4 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i64 0, i64 %indvars.iv48, i64 4
  %36 = load i8, i8* %arrayidx66.4, align 4, !tbaa !5
  %conv67.4 = zext i8 %36 to i32
  %call68.4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv67.4) #6
  %arrayidx66.5 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i64 0, i64 %indvars.iv48, i64 5
  %37 = load i8, i8* %arrayidx66.5, align 1, !tbaa !5
  %conv67.5 = zext i8 %37 to i32
  %call68.5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv67.5) #6
  %arrayidx66.6 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i64 0, i64 %indvars.iv48, i64 6
  %38 = load i8, i8* %arrayidx66.6, align 2, !tbaa !5
  %conv67.6 = zext i8 %38 to i32
  %call68.6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv67.6) #6
  %arrayidx66.7 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i64 0, i64 %indvars.iv48, i64 7
  %39 = load i8, i8* %arrayidx66.7, align 1, !tbaa !5
  %conv67.7 = zext i8 %39 to i32
  %call68.7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv67.7) #6
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %40 = trunc i64 %indvars.iv.next49 to i32
  %call72 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i32 noundef %40) #6
  br label %for.body77

for.body77:                                       ; preds = %for.body77.preheader, %for.body77
  %indvars.iv40 = phi i64 [ 0, %for.body77.preheader ], [ %indvars.iv.next41, %for.body77 ]
  %arrayidx79 = getelementptr inbounds [25 x i8], [25 x i8]* @key_test, i64 0, i64 %indvars.iv40
  %41 = load i8, i8* %arrayidx79, align 1, !tbaa !5
  %conv80 = zext i8 %41 to i32
  %call81 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv80) #6
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond45.not = icmp eq i64 %indvars.iv.next41, %indvars.iv46
  br i1 %exitcond45.not, label %for.end84, label %for.body77, !llvm.loop !9

for.end84:                                        ; preds = %for.body77
  %call85 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #6
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond53.not = icmp eq i64 %indvars.iv.next49, 24
  br i1 %exitcond53.not, label %for.end88, label %for.body77.preheader, !llvm.loop !10

for.end88:                                        ; preds = %for.end84
  %call89 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0)) #6
  %call90 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0)) #6
  %42 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 0), align 16, !tbaa !5
  %conv97 = zext i8 %42 to i32
  %call98 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv97) #6
  %43 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 1), align 1, !tbaa !5
  %conv97.1 = zext i8 %43 to i32
  %call98.1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv97.1) #6
  %44 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 2), align 2, !tbaa !5
  %conv97.2 = zext i8 %44 to i32
  %call98.2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv97.2) #6
  %45 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 3), align 1, !tbaa !5
  %conv97.3 = zext i8 %45 to i32
  %call98.3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv97.3) #6
  %46 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 4), align 4, !tbaa !5
  %conv97.4 = zext i8 %46 to i32
  %call98.4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv97.4) #6
  %47 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 5), align 1, !tbaa !5
  %conv97.5 = zext i8 %47 to i32
  %call98.5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv97.5) #6
  %48 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 6), align 2, !tbaa !5
  %conv97.6 = zext i8 %48 to i32
  %call98.6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv97.6) #6
  %49 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 7), align 1, !tbaa !5
  %conv97.7 = zext i8 %49 to i32
  %call98.7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv97.7) #6
  %50 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 8), align 8, !tbaa !5
  %conv97.8 = zext i8 %50 to i32
  %call98.8 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv97.8) #6
  %51 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 9), align 1, !tbaa !5
  %conv97.9 = zext i8 %51 to i32
  %call98.9 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv97.9) #6
  %52 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 10), align 2, !tbaa !5
  %conv97.10 = zext i8 %52 to i32
  %call98.10 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv97.10) #6
  %53 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 11), align 1, !tbaa !5
  %conv97.11 = zext i8 %53 to i32
  %call98.11 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv97.11) #6
  %54 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 12), align 4, !tbaa !5
  %conv97.12 = zext i8 %54 to i32
  %call98.12 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv97.12) #6
  %55 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 13), align 1, !tbaa !5
  %conv97.13 = zext i8 %55 to i32
  %call98.13 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv97.13) #6
  %56 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 14), align 2, !tbaa !5
  %conv97.14 = zext i8 %56 to i32
  %call98.14 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv97.14) #6
  %57 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 15), align 1, !tbaa !5
  %conv97.15 = zext i8 %57 to i32
  %call98.15 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv97.15) #6
  %call102 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0)) #6
  %58 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), align 1, !tbaa !5
  %conv109 = zext i8 %58 to i32
  %call110 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv109) #6
  %59 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 1), align 1, !tbaa !5
  %conv109.1 = zext i8 %59 to i32
  %call110.1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv109.1) #6
  %60 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 2), align 1, !tbaa !5
  %conv109.2 = zext i8 %60 to i32
  %call110.2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv109.2) #6
  %61 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 3), align 1, !tbaa !5
  %conv109.3 = zext i8 %61 to i32
  %call110.3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv109.3) #6
  %62 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 4), align 1, !tbaa !5
  %conv109.4 = zext i8 %62 to i32
  %call110.4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv109.4) #6
  %63 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 5), align 1, !tbaa !5
  %conv109.5 = zext i8 %63 to i32
  %call110.5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv109.5) #6
  %64 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 6), align 1, !tbaa !5
  %conv109.6 = zext i8 %64 to i32
  %call110.6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv109.6) #6
  %65 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 7), align 1, !tbaa !5
  %conv109.7 = zext i8 %65 to i32
  %call110.7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv109.7) #6
  %call114 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #8
  %conv115 = trunc i64 %call114 to i32
  %add116 = add nsw i32 %conv115, 1
  %call117 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i32 noundef %add116, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #6
  %call118 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #8
  %conv119 = trunc i64 %call118 to i32
  %add120 = add nsw i32 %conv119, 1
  %call121 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0), i32 noundef %add120) #6
  %call12412 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #8
  %cmp12614.not = icmp eq i64 %call12412, -1
  br i1 %cmp12614.not, label %for.end135, label %for.body128

for.body128:                                      ; preds = %for.end88, %for.body128
  %conv12316 = phi i64 [ %conv123, %for.body128 ], [ 0, %for.end88 ]
  %arrayidx130 = getelementptr inbounds [40 x i8], [40 x i8]* @cbc_data, i64 0, i64 %conv12316
  %66 = load i8, i8* %arrayidx130, align 1, !tbaa !5
  %conv131 = sext i8 %66 to i32
  %call132 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv131) #6
  %inc134 = add nuw nsw i64 %conv12316, 1
  %conv123 = and i64 %inc134, 4294967295
  %call124 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #8
  %add125 = add i64 %call124, 1
  %cmp126 = icmp ugt i64 %add125, %conv123
  br i1 %cmp126, label %for.body128, label %for.end135, !llvm.loop !11

for.end135:                                       ; preds = %for.body128, %for.end88
  %call136 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #6
  %call137 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0)) #6
  %call138 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32 noundef 32) #6
  %67 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 0), align 16, !tbaa !5
  %conv145 = zext i8 %67 to i32
  %call146 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145) #6
  %68 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 1), align 1, !tbaa !5
  %conv145.1 = zext i8 %68 to i32
  %call146.1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.1) #6
  %69 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 2), align 2, !tbaa !5
  %conv145.2 = zext i8 %69 to i32
  %call146.2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.2) #6
  %70 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 3), align 1, !tbaa !5
  %conv145.3 = zext i8 %70 to i32
  %call146.3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.3) #6
  %71 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 4), align 4, !tbaa !5
  %conv145.4 = zext i8 %71 to i32
  %call146.4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.4) #6
  %72 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 5), align 1, !tbaa !5
  %conv145.5 = zext i8 %72 to i32
  %call146.5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.5) #6
  %73 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 6), align 2, !tbaa !5
  %conv145.6 = zext i8 %73 to i32
  %call146.6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.6) #6
  %74 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 7), align 1, !tbaa !5
  %conv145.7 = zext i8 %74 to i32
  %call146.7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.7) #6
  %75 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 8), align 8, !tbaa !5
  %conv145.8 = zext i8 %75 to i32
  %call146.8 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.8) #6
  %76 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 9), align 1, !tbaa !5
  %conv145.9 = zext i8 %76 to i32
  %call146.9 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.9) #6
  %77 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 10), align 2, !tbaa !5
  %conv145.10 = zext i8 %77 to i32
  %call146.10 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.10) #6
  %78 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 11), align 1, !tbaa !5
  %conv145.11 = zext i8 %78 to i32
  %call146.11 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.11) #6
  %79 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 12), align 4, !tbaa !5
  %conv145.12 = zext i8 %79 to i32
  %call146.12 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.12) #6
  %80 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 13), align 1, !tbaa !5
  %conv145.13 = zext i8 %80 to i32
  %call146.13 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.13) #6
  %81 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 14), align 2, !tbaa !5
  %conv145.14 = zext i8 %81 to i32
  %call146.14 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.14) #6
  %82 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 15), align 1, !tbaa !5
  %conv145.15 = zext i8 %82 to i32
  %call146.15 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.15) #6
  %83 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 16), align 16, !tbaa !5
  %conv145.16 = zext i8 %83 to i32
  %call146.16 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.16) #6
  %84 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 17), align 1, !tbaa !5
  %conv145.17 = zext i8 %84 to i32
  %call146.17 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.17) #6
  %85 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 18), align 2, !tbaa !5
  %conv145.18 = zext i8 %85 to i32
  %call146.18 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.18) #6
  %86 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 19), align 1, !tbaa !5
  %conv145.19 = zext i8 %86 to i32
  %call146.19 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.19) #6
  %87 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 20), align 4, !tbaa !5
  %conv145.20 = zext i8 %87 to i32
  %call146.20 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.20) #6
  %88 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 21), align 1, !tbaa !5
  %conv145.21 = zext i8 %88 to i32
  %call146.21 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.21) #6
  %89 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 22), align 2, !tbaa !5
  %conv145.22 = zext i8 %89 to i32
  %call146.22 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.22) #6
  %90 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 23), align 1, !tbaa !5
  %conv145.23 = zext i8 %90 to i32
  %call146.23 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.23) #6
  %91 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 24), align 8, !tbaa !5
  %conv145.24 = zext i8 %91 to i32
  %call146.24 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.24) #6
  %92 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 25), align 1, !tbaa !5
  %conv145.25 = zext i8 %92 to i32
  %call146.25 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.25) #6
  %93 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 26), align 2, !tbaa !5
  %conv145.26 = zext i8 %93 to i32
  %call146.26 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.26) #6
  %94 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 27), align 1, !tbaa !5
  %conv145.27 = zext i8 %94 to i32
  %call146.27 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.27) #6
  %95 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 28), align 4, !tbaa !5
  %conv145.28 = zext i8 %95 to i32
  %call146.28 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.28) #6
  %96 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 29), align 1, !tbaa !5
  %conv145.29 = zext i8 %96 to i32
  %call146.29 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.29) #6
  %97 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 30), align 2, !tbaa !5
  %conv145.30 = zext i8 %97 to i32
  %call146.30 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.30) #6
  %98 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 31), align 1, !tbaa !5
  %conv145.31 = zext i8 %98 to i32
  %call146.31 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv145.31) #6
  %call150 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #6
  %call151 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0)) #6
  %call152 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #8
  %conv153 = trunc i64 %call152 to i32
  %add154 = add nsw i32 %conv153, 1
  %call155 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32 noundef %add154) #6
  %call15818 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #8
  %cmp16020.not = icmp eq i64 %call15818, -1
  br i1 %cmp16020.not, label %for.end169, label %for.body162

for.body162:                                      ; preds = %for.end135, %for.body162
  %conv15722 = phi i64 [ %conv157, %for.body162 ], [ 0, %for.end135 ]
  %arrayidx164 = getelementptr inbounds [29 x i8], [29 x i8]* @cfb64_ok, i64 0, i64 %conv15722
  %99 = load i8, i8* %arrayidx164, align 1, !tbaa !5
  %conv165 = zext i8 %99 to i32
  %call166 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv165) #6
  %inc168 = add nuw nsw i64 %conv15722, 1
  %conv157 = and i64 %inc168, 4294967295
  %call158 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #8
  %add159 = add i64 %call158, 1
  %cmp160 = icmp ugt i64 %add159, %conv157
  br i1 %cmp160, label %for.body162, label %for.end169, !llvm.loop !12

for.end169:                                       ; preds = %for.body162, %for.end135
  %call170 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #6
  %call171 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0)) #6
  %call172 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #8
  %conv173 = trunc i64 %call172 to i32
  %add174 = add nsw i32 %conv173, 1
  %call175 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32 noundef %add174) #6
  %call17823 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #8
  %cmp18025.not = icmp eq i64 %call17823, -1
  br i1 %cmp18025.not, label %for.end189, label %for.body182

for.body182:                                      ; preds = %for.end169, %for.body182
  %conv17727 = phi i64 [ %conv177, %for.body182 ], [ 0, %for.end169 ]
  %arrayidx184 = getelementptr inbounds [29 x i8], [29 x i8]* @ofb64_ok, i64 0, i64 %conv17727
  %100 = load i8, i8* %arrayidx184, align 1, !tbaa !5
  %conv185 = zext i8 %100 to i32
  %call186 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv185) #6
  %inc188 = add nuw nsw i64 %conv17727, 1
  %conv177 = and i64 %inc188, 4294967295
  %call178 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #8
  %add179 = add i64 %call178, 1
  %cmp180 = icmp ugt i64 %add179, %conv177
  br i1 %cmp180, label %for.body182, label %for.end189, !llvm.loop !13

for.end189:                                       ; preds = %for.body182, %for.end169
  %call190 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #6
  ret void
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bf_ecb_raw(i32 noundef %n) #1 {
entry:
  %key = alloca %struct.bf_key_st, align 4
  %data = alloca [2 x i32], align 4
  %0 = bitcast %struct.bf_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 4168, i8* nonnull %0) #9
  %1 = bitcast [2 x i32]* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %idxprom = sext i32 %n to i64
  %arraydecay = getelementptr inbounds [2 x [30 x i8]], [2 x [30 x i8]]* @bf_key, i64 0, i64 %idxprom, i64 0
  %call = tail call i64 @strlen(i8* noundef nonnull %arraydecay) #8
  %conv = trunc i64 %call to i32
  call void @BF_set_key(%struct.bf_key_st* noundef nonnull %key, i32 noundef %conv, i8* noundef nonnull %arraydecay) #6
  %arrayidx5 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @bf_plain, i64 0, i64 %idxprom
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx5, i64 0, i64 0
  %2 = load i32, i32* %arrayidx6, align 8, !tbaa !14
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %data, i64 0, i64 0
  store i32 %2, i32* %arrayidx7, align 4, !tbaa !14
  %arrayidx10 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @bf_plain, i64 0, i64 %idxprom, i64 1
  %3 = load i32, i32* %arrayidx10, align 4, !tbaa !14
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %data, i64 0, i64 1
  store i32 %3, i32* %arrayidx11, align 4, !tbaa !14
  call void @BF_encrypt(i32* noundef nonnull %arrayidx7, %struct.bf_key_st* noundef nonnull %key) #6
  %arrayidx15 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @bf_cipher, i64 0, i64 %idxprom, i64 0
  %4 = bitcast i32* %arrayidx15 to i8*
  %call17 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 noundef 304, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i8* noundef nonnull %4, i64 noundef 8, i8* noundef nonnull %1, i64 noundef 8) #6
  %tobool.not = icmp ne i32 %call17, 0
  call void @BF_decrypt(i32* noundef nonnull %arrayidx7, %struct.bf_key_st* noundef nonnull %key) #6
  %5 = bitcast [2 x i32]* %arrayidx5 to i8*
  %call23 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i8* noundef nonnull %5, i64 noundef 8, i8* noundef nonnull %1, i64 noundef 8) #6
  %tobool24.not = icmp ne i32 %call23, 0
  %narrow = select i1 %tobool24.not, i1 %tobool.not, i1 false
  %ret.1 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4168, i8* nonnull %0) #9
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bf_ecb(i32 noundef %n) #1 {
entry:
  %key = alloca %struct.bf_key_st, align 4
  %out = alloca [8 x i8], align 1
  %0 = bitcast %struct.bf_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 4168, i8* nonnull %0) #9
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %idxprom = sext i32 %n to i64
  %arraydecay = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i64 0, i64 %idxprom, i64 0
  call void @BF_set_key(%struct.bf_key_st* noundef nonnull %key, i32 noundef 8, i8* noundef nonnull %arraydecay) #6
  %arrayidx3 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %idxprom, i64 0
  call void @BF_ecb_encrypt(i8* noundef nonnull %arrayidx3, i8* noundef nonnull %1, %struct.bf_key_st* noundef nonnull %key, i32 noundef 1) #6
  %arrayidx7 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 %idxprom, i64 0
  %call = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef nonnull %arrayidx7, i64 noundef 8, i8* noundef nonnull %1, i64 noundef 8) #6
  %tobool.not = icmp ne i32 %call, 0
  call void @BF_ecb_encrypt(i8* noundef nonnull %1, i8* noundef nonnull %1, %struct.bf_key_st* noundef nonnull %key, i32 noundef 0) #6
  %call15 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 noundef 327, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef nonnull %arrayidx3, i64 noundef 8, i8* noundef nonnull %1, i64 noundef 8) #6
  %tobool16.not = icmp ne i32 %call15, 0
  %narrow = select i1 %tobool16.not, i1 %tobool.not, i1 false
  %ret.1 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4168, i8* nonnull %0) #9
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bf_set_key(i32 noundef %n) #1 {
entry:
  %key = alloca %struct.bf_key_st, align 4
  %out = alloca [8 x i8], align 1
  %0 = bitcast %struct.bf_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 4168, i8* nonnull %0) #9
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %add = add nsw i32 %n, 1
  call void @BF_set_key(%struct.bf_key_st* noundef nonnull %key, i32 noundef %add, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @key_test, i64 0, i64 0)) #6
  call void @BF_ecb_encrypt(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @key_data, i64 0, i64 0), i8* noundef nonnull %1, %struct.bf_key_st* noundef nonnull %key, i32 noundef 1) #6
  %idxprom = sext i32 %n to i64
  %arrayidx2 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i64 0, i64 %idxprom, i64 0
  %call = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 noundef 342, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 8, i8* noundef nonnull %arrayidx2, i64 noundef 8) #6
  %tobool.not = icmp ne i32 %call, 0
  %spec.select = zext i1 %tobool.not to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4168, i8* nonnull %0) #9
  ret i32 %spec.select
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bf_cbc() #1 {
entry:
  %cbc_in = alloca [40 x i8], align 16
  %cbc_out = alloca [40 x i8], align 16
  %iv = alloca [8 x i8], align 1
  %key = alloca %struct.bf_key_st, align 4
  %0 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #9
  %1 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #9
  %2 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %3 = bitcast %struct.bf_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 4168, i8* nonnull %3) #9
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #8
  %conv = add i64 %call, 1
  call void @BF_set_key(%struct.bf_key_st* noundef nonnull %key, i32 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 0)) #6
  %call1 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 40) #6
  %call3 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 40) #6
  %call5 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 noundef 8) #6
  %conv7 = and i64 %conv, 4294967295
  call void @BF_cbc_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef %conv7, %struct.bf_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32 noundef 1) #6
  %call10 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 32, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 0), i64 noundef 32) #6
  %tobool.not = icmp ne i32 %call10, 0
  %call12 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 noundef 8) #6
  call void @BF_cbc_encrypt(i8* noundef nonnull %1, i8* noundef nonnull %0, i64 noundef %conv7, %struct.bf_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32 noundef 0) #6
  %call19 = call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #8
  %add20 = add i64 %call19, 1
  %call21 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %conv7, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i64 noundef %add20) #6
  %tobool22.not = icmp ne i32 %call21, 0
  %narrow = select i1 %tobool22.not, i1 %tobool.not, i1 false
  %ret.1 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0i8(i64 4168, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #9
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bf_cfb64() #1 {
entry:
  %cbc_in = alloca [40 x i8], align 16
  %cbc_out = alloca [40 x i8], align 16
  %iv = alloca [8 x i8], align 1
  %n = alloca i32, align 4
  %key = alloca %struct.bf_key_st, align 4
  %0 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #9
  %1 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #9
  %2 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9
  %4 = bitcast %struct.bf_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 4168, i8* nonnull %4) #9
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #8
  call void @BF_set_key(%struct.bf_key_st* noundef nonnull %key, i32 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 0)) #6
  %call1 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 40) #6
  %call3 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 40) #6
  %call5 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 noundef 8) #6
  store i32 0, i32* %n, align 4, !tbaa !14
  call void @BF_cfb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 13, %struct.bf_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32* noundef nonnull %n, i32 noundef 1) #6
  %arrayidx = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i64 0, i64 13
  %sub = add i64 %call, 4294967284
  %conv8 = and i64 %sub, 4294967295
  call void @BF_cfb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 13), i8* noundef nonnull %arrayidx, i64 noundef %conv8, %struct.bf_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32* noundef nonnull %n, i32 noundef 1) #6
  %conv = shl i64 %call, 32
  %sext = add i64 %conv, 4294967296
  %conv11 = ashr exact i64 %sext, 32
  %call13 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 noundef 392, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef %conv11, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @cfb64_ok, i64 0, i64 0), i64 noundef %conv11) #6
  %tobool.not = icmp ne i32 %call13, 0
  store i32 0, i32* %n, align 4, !tbaa !14
  %call15 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 noundef 8) #6
  call void @BF_cfb64_encrypt(i8* noundef nonnull %1, i8* noundef nonnull %0, i64 noundef 17, %struct.bf_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32* noundef nonnull %n, i32 noundef 0) #6
  %arrayidx19 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i64 0, i64 17
  %arrayidx20 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i64 0, i64 17
  %sub21 = add i64 %call, 4294967280
  %conv22 = and i64 %sub21, 4294967295
  call void @BF_cfb64_encrypt(i8* noundef nonnull %arrayidx19, i8* noundef nonnull %arrayidx20, i64 noundef %conv22, %struct.bf_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32* noundef nonnull %n, i32 noundef 0) #6
  %call27 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 noundef 400, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %conv11, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i64 noundef %conv11) #6
  %tobool28.not = icmp ne i32 %call27, 0
  %narrow = select i1 %tobool28.not, i1 %tobool.not, i1 false
  %ret.1 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0i8(i64 4168, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #9
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bf_ofb64() #1 {
entry:
  %cbc_in = alloca [40 x i8], align 16
  %cbc_out = alloca [40 x i8], align 16
  %iv = alloca [8 x i8], align 1
  %n = alloca i32, align 4
  %key = alloca %struct.bf_key_st, align 4
  %0 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #9
  %1 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #9
  %2 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9
  %4 = bitcast %struct.bf_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 4168, i8* nonnull %4) #9
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #8
  call void @BF_set_key(%struct.bf_key_st* noundef nonnull %key, i32 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 0)) #6
  %call1 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 40) #6
  %call3 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 40) #6
  %call5 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 noundef 8) #6
  store i32 0, i32* %n, align 4, !tbaa !14
  call void @BF_ofb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 13, %struct.bf_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32* noundef nonnull %n) #6
  %arrayidx = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i64 0, i64 13
  %sub = add i64 %call, 4294967284
  %conv8 = and i64 %sub, 4294967295
  call void @BF_ofb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 13), i8* noundef nonnull %arrayidx, i64 noundef %conv8, %struct.bf_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32* noundef nonnull %n) #6
  %conv = shl i64 %call, 32
  %sext = add i64 %conv, 4294967296
  %conv11 = ashr exact i64 %sext, 32
  %call13 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 noundef 424, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef %conv11, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @ofb64_ok, i64 0, i64 0), i64 noundef %conv11) #6
  %tobool.not = icmp ne i32 %call13, 0
  store i32 0, i32* %n, align 4, !tbaa !14
  %call15 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 noundef 8) #6
  call void @BF_ofb64_encrypt(i8* noundef nonnull %1, i8* noundef nonnull %0, i64 noundef 17, %struct.bf_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32* noundef nonnull %n) #6
  %arrayidx19 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i64 0, i64 17
  %arrayidx20 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i64 0, i64 17
  %sub21 = add i64 %call, 4294967280
  %conv22 = and i64 %sub21, 4294967295
  call void @BF_ofb64_encrypt(i8* noundef nonnull %arrayidx19, i8* noundef nonnull %arrayidx20, i64 noundef %conv22, %struct.bf_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32* noundef nonnull %n) #6
  %call27 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 noundef 431, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %conv11, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i64 noundef %conv11) #6
  %tobool28.not = icmp ne i32 %call27, 0
  %narrow = select i1 %tobool28.not, i1 %tobool.not, i1 false
  %ret.1 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0i8(i64 4168, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #9
  ret i32 %ret.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

declare dso_local void @BF_set_key(%struct.bf_key_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @BF_encrypt(i32* noundef, %struct.bf_key_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @BF_decrypt(i32* noundef, %struct.bf_key_st* noundef) local_unnamed_addr #3

declare dso_local void @BF_ecb_encrypt(i8* noundef, i8* noundef, %struct.bf_key_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare dso_local void @BF_cbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.bf_key_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @BF_cfb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.bf_key_st* noundef, i8* noundef, i32* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @BF_ofb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.bf_key_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !6, i64 0}

; ModuleID = 'gcm.c'
source_filename = "gcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_gcm_context = type { %struct.mbedtls_cipher_context_t, [16 x i64], [16 x i64], i64, i64, [16 x i8], [16 x i8], [16 x i8], i32 }
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_cmac_context_t = type opaque

@.str = private unnamed_addr constant [25 x i8] c"  AES-GCM-%3d #%d (%s): \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"enc\00", align 1
@key_test_data = internal constant [6 x [32 x i8]] [[32 x i8] zeroinitializer, [32 x i8] c"\FE\FF\E9\92\86es\1Cmj\8F\94g0\83\08\FE\FF\E9\92\86es\1Cmj\8F\94g0\83\08", [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [32 x i8] zeroinitializer], align 16
@key_index_test_data = internal constant [6 x i32] [i32 0, i32 0, i32 1, i32 1, i32 1, i32 1], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"skipped\0A\00", align 1
@pt_len_test_data = internal constant [6 x i64] [i64 0, i64 16, i64 64, i64 60, i64 60, i64 60], align 16
@iv_index_test_data = internal constant [6 x i32] [i32 0, i32 0, i32 1, i32 1, i32 1, i32 2], align 16
@iv_len_test_data = internal constant [6 x i64] [i64 12, i64 12, i64 12, i64 12, i64 8, i64 60], align 16
@add_index_test_data = internal constant [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1], align 16
@add_len_test_data = internal constant [6 x i64] [i64 0, i64 0, i64 0, i64 20, i64 20, i64 20], align 16
@pt_test_data = internal constant [6 x [64 x i8]] [[64 x i8] zeroinitializer, [64 x i8] c"\D912%\F8\84\06\E5\A5Y\09\C5\AF\F5&\9A\86\A7\A9S\154\F7\DA.L0=\8A1\8Ar\1C<\0C\95\95h\09S/\CF\0E$I\A6\B5%\B1j\ED\F5\AA\0D\E6W\BAc{9\1A\AF\D2U", [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer], align 16
@pt_index_test_data = internal constant [6 x i32] [i32 0, i32 0, i32 1, i32 1, i32 1, i32 1], align 16
@tag_test_data = internal constant [18 x [16 x i8]] [[16 x i8] c"X\E2\FC\CE\FA~0a6\7F\1DW\A4\E7EZ", [16 x i8] c"\ABnG\D4,\EC\13\BD\F5:g\B2\12W\BD\DF", [16 x i8] c"M\\*\F3'\CDd\A6,\F3Z\BD+\A6\FA\B4", [16 x i8] c"[\C9O\BC2!\A5\DB\94\FA\E9Z\E7\12\1AG", [16 x i8] c"6\12\D2\E7\9E;\07\85V\1B\E1J\AC\A2\FC\CB", [16 x i8] c"a\9C\C5\AE\FF\FE\0B\FAF*\F4<\16\99\D0P", [16 x i8] c"\CD3\B2\8A\C7s\F7K\A0\0E\D1\F3\12W$5", [16 x i8] c"/\F5\8D\80\039'\AB\8E\F4\D4Xu\14\F0\FB", [16 x i8] c"\99$\A7\C8Xs6\BF\B1\18\02M\B8gJ\14", [16 x i8] c"%\19I\8E\80\F1G\8F7\BAU\BDm'a\8C", [16 x i8] c"e\DC\C5\7F\CFb:$\09O\CC\A4\0D53\F8", [16 x i8] c"\DC\F5f\FF)\1C%\BB\B8V\8F\C3\D3v\A6\D9", [16 x i8] c"S\0F\8A\FB\C7E6\B9\A9c\B4\F1\C4\CBs\8B", [16 x i8] c"\D0\D1\C8\A7\99\99k\F0&[\98\B5\D4\8A\B9\19", [16 x i8] c"\B0\94\DA\C5\D94q\BD\EC\1AP\22p\E3\CCl", [16 x i8] c"v\FCn\CE\0FN\17h\CD\DF\88S\BB-U\1B", [16 x i8] c":3}\BFF\A7\92\C4^EI\13\FE.\A8\F2", [16 x i8] c"\A4J\82f\EE\1C\8E\B0\C8\B5\D4\CFZ\E9\F1\9A"], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"  AES-GCM-%3d #%d split (%s): \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@last4 = internal constant [16 x i64] [i64 0, i64 7200, i64 14400, i64 9312, i64 28800, i64 27808, i64 18624, i64 21728, i64 57600, i64 64800, i64 55616, i64 50528, i64 37248, i64 36256, i64 43456, i64 46560], align 16
@iv_test_data = internal constant <{ [64 x i8], <{ [12 x i8], [52 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }> <{ [64 x i8] zeroinitializer, <{ [12 x i8], [52 x i8] }> <{ [12 x i8] c"\CA\FE\BA\BE\FA\CE\DB\AD\DE\CA\F8\88", [52 x i8] zeroinitializer }>, [64 x i8] c"\93\13\22]\F8\84\06\E5U\90\9CZ\FFRi\AAjz\958SO}\A1\E4\C3\03\D2\A3\18\A7(\C3\C0\C9QV\80\959\FC\F0\E2B\9AkRT\16\AE\DB\F5\A0\DEjW\A67\B3\9B\00\00\00\00", [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer }>, align 16
@additional_test_data = internal constant <{ [64 x i8], <{ [20 x i8], [44 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }> <{ [64 x i8] zeroinitializer, <{ [20 x i8], [44 x i8] }> <{ [20 x i8] c"\FE\ED\FA\CE\DE\AD\BE\EF\FE\ED\FA\CE\DE\AD\BE\EF\AB\AD\DA\D2", [44 x i8] zeroinitializer }>, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer }>, align 16
@ct_test_data = internal constant <{ [64 x i8], <{ [16 x i8], [48 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], <{ [15 x i8], [49 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], <{ [16 x i8], [48 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }> <{ [64 x i8] zeroinitializer, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\03\88\DA\CE`\B6\A3\92\F3(\C2\B9q\B2\FEx", [48 x i8] zeroinitializer }>, [64 x i8] c"B\83\1E\C2!wt$Kr!\B7\84\D0\D4\9C\E3\AA!/,\02\A4\E05\C1~#)\AC\A1.!\D5\14\B2Tf\93\1C}\8FjZ\AC\84\AA\05\1B\A3\0B9j\0A\AC\97=X\E0\91G?Y\85", [64 x i8] c"B\83\1E\C2!wt$Kr!\B7\84\D0\D4\9C\E3\AA!/,\02\A4\E05\C1~#)\AC\A1.!\D5\14\B2Tf\93\1C}\8FjZ\AC\84\AA\05\1B\A3\0B9j\0A\AC\97=X\E0\91\00\00\00\00", [64 x i8] c"a5;L(\06\93Jw\7F\F5\1F\A2*GUi\9B*qO\CD\C6\F87f\E5\F9{lt#s\80i\00\E4\9F$\B2+\09uD\D4\89kBI\89\B5\E1\EB\AC\0F\07\C2?E\98\00\00\00\00", [64 x i8] c"\8C\E2I\98bV\15\B6\03\A03\AC\A1?\B8\94\BE\91\12\A5\C3\A2\11\A8\BA&*<\CA~,\A7\01\E4\A9\A4\FB\A4<\90\CC\DC\B2\81\D4\8C|o\D6(u\D2\AC\A4\17\03L4\AE\E5\00\00\00\00", [64 x i8] zeroinitializer, <{ [15 x i8], [49 x i8] }> <{ [15 x i8] c"\98\E7$|\07\F0\FEA\1C&~C\84\B0\F6", [49 x i8] zeroinitializer }>, [64 x i8] c"9\80\CA\0B<\00\E8A\EB\06\FA\C4\87*'W\85\9E\1C\EA\A6\EF\D9\84b\85\93\B4\0C\A1\E1\9C}w=\00\C1D\C5%\ACa\9D\18\C8J?G\18\E2D\8B/\E3$\D9\CC\DA'\10\AC\AD\E2V", [64 x i8] c"9\80\CA\0B<\00\E8A\EB\06\FA\C4\87*'W\85\9E\1C\EA\A6\EF\D9\84b\85\93\B4\0C\A1\E1\9C}w=\00\C1D\C5%\ACa\9D\18\C8J?G\18\E2D\8B/\E3$\D9\CC\DA'\10\00\00\00\00", [64 x i8] c"\0F\10\F5\99\AE\14\A1T\ED$\B3n%2M\B8\C5fc.\F2\BB\B3O\83G(\0F\C4PpW\FD\DC)\DF\9AG\1Fu\C6eA\D4\D4\DA\D1\C9\E9:\19\A5\8E\8BG?\A0\F0b\F7\00\00\00\00", [64 x i8] c"\D2~\88h\1C\E3$<H0\16Z\8F\DC\F9\FF\1D\E9\A1\D8\E6\B4G\EFn\F7\B7\98(fnE\81\E7\90\12\AF4\DD\D9\E2\F07X\9B)-\B3\E6|\03gE\FA\22\E7\E9\B77;\00\00\00\00", [64 x i8] zeroinitializer, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\CE\A7@=M`kn\07N\C5\D3\BA\F3\9D\18", [48 x i8] zeroinitializer }>, [64 x i8] c"R-\C1\F0\99V}\07\F4\7F7\A3*\84B}d:\8C\DC\BF\E5\C0\C9u\98\A2\BD%U\D1\AA\8C\B0\8EHY\0D\BB=\A7\B0\8B\10V\82\888\C5\F6\1Ec\93\BAz\0A\BC\C9\F6b\89\80\15\AD", [64 x i8] c"R-\C1\F0\99V}\07\F4\7F7\A3*\84B}d:\8C\DC\BF\E5\C0\C9u\98\A2\BD%U\D1\AA\8C\B0\8EHY\0D\BB=\A7\B0\8B\10V\82\888\C5\F6\1Ec\93\BAz\0A\BC\C9\F6b\00\00\00\00", [64 x i8] c"\C3v-\F1\CAx}2\AEG\C1;\F1\98D\CB\AF\1A\E1M\0B\97j\FA\C5/\F7\D7\9B\BA\9D\E0\FE\B5\82\D394\A4\F0\95L\C26;\C7?xb\ACC\0Ed\AB\E4\99\F4|\9B\1F\00\00\00\00", [64 x i8] c"Z\8D\EF/\0C\9ES\F1\F7]xSe\9E* \EE\B2\B2*\AF\DEd\19\A0X\ABOotk\F4\0F\C0\C3\B7\80\F2DE-\A3\EB\F1\C5\D8,\DE\A2A\89\97 \0E\F8.D\AE~?\00\00\00\00" }>, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_gcm_init(%struct.mbedtls_gcm_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_gcm_context*, align 8
  store %struct.mbedtls_gcm_context* %ctx, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_gcm_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 424) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_gcm_setkey(%struct.mbedtls_gcm_context* noundef %ctx, i32 noundef %cipher, i8* noundef %key, i32 noundef %keybits) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_gcm_context*, align 8
  %cipher.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %keybits.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  store %struct.mbedtls_gcm_context* %ctx, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  store i32 %cipher, i32* %cipher.addr, align 4
  store i8* %key, i8** %key.addr, align 8
  store i32 %keybits, i32* %keybits.addr, align 4
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %0 = load i32, i32* %cipher.addr, align 4
  %1 = load i32, i32* %keybits.addr, align 4
  %call = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_values(i32 noundef %0, i32 noundef %1, i32 noundef 1) #6
  store %struct.mbedtls_cipher_info_t* %call, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %2 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 -20, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %block_size = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %3, i32 0, i32 6
  %4 = load i32, i32* %block_size, align 8
  %cmp5 = icmp ne i32 %4, 16
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -20, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %5 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %5, i32 0, i32 0
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #6
  %6 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %cipher_ctx8 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %6, i32 0, i32 0
  %7 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call9 = call i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx8, %struct.mbedtls_cipher_info_t* noundef %7) #6
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end7
  %9 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %cipher_ctx13 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %9, i32 0, i32 0
  %10 = load i8*, i8** %key.addr, align 8
  %11 = load i32, i32* %keybits.addr, align 4
  %call14 = call i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx13, i8* noundef %10, i32 noundef %11, i32 noundef 1) #6
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end12
  %13 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %call18 = call i32 @gcm_gen_table(%struct.mbedtls_gcm_context* noundef %13) #6
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end17
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then20, %if.then16, %if.then11, %if.then6, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_values(i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef) #2

declare dso_local i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef, %struct.mbedtls_cipher_info_t* noundef) #2

declare dso_local i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_gen_table(%struct.mbedtls_gcm_context* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_gcm_context*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  %vl = alloca i64, align 8
  %vh = alloca i64, align 8
  %h = alloca [16 x i8], align 16
  %olen = alloca i64, align 8
  %T = alloca i32, align 4
  %HiL = alloca i64*, align 8
  %HiH = alloca i64*, align 8
  store %struct.mbedtls_gcm_context* %ctx, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  store i64 0, i64* %olen, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 16) #5
  %0 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %0, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 0
  %call3 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay1, i64 noundef 16, i8* noundef %arraydecay2, i64* noundef %olen) #6
  store i32 %call3, i32* %ret, align 4
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ret, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 0
  %2 = load i8, i8* %arrayidx, align 16
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 24
  %arrayidx4 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 1
  %3 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %shl6 = shl i32 %conv5, 16
  %or = or i32 %shl, %shl6
  %arrayidx7 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 2
  %4 = load i8, i8* %arrayidx7, align 2
  %conv8 = zext i8 %4 to i32
  %shl9 = shl i32 %conv8, 8
  %or10 = or i32 %or, %shl9
  %arrayidx11 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 3
  %5 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %5 to i32
  %or13 = or i32 %or10, %conv12
  %conv14 = zext i32 %or13 to i64
  store i64 %conv14, i64* %hi, align 8
  %arrayidx15 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 4
  %6 = load i8, i8* %arrayidx15, align 4
  %conv16 = zext i8 %6 to i32
  %shl17 = shl i32 %conv16, 24
  %arrayidx18 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 5
  %7 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %7 to i32
  %shl20 = shl i32 %conv19, 16
  %or21 = or i32 %shl17, %shl20
  %arrayidx22 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 6
  %8 = load i8, i8* %arrayidx22, align 2
  %conv23 = zext i8 %8 to i32
  %shl24 = shl i32 %conv23, 8
  %or25 = or i32 %or21, %shl24
  %arrayidx26 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 7
  %9 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %9 to i32
  %or28 = or i32 %or25, %conv27
  %conv29 = zext i32 %or28 to i64
  store i64 %conv29, i64* %lo, align 8
  %10 = load i64, i64* %hi, align 8
  %shl30 = shl i64 %10, 32
  %11 = load i64, i64* %lo, align 8
  %or31 = or i64 %shl30, %11
  store i64 %or31, i64* %vh, align 8
  %arrayidx32 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 8
  %12 = load i8, i8* %arrayidx32, align 8
  %conv33 = zext i8 %12 to i32
  %shl34 = shl i32 %conv33, 24
  %arrayidx35 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 9
  %13 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %13 to i32
  %shl37 = shl i32 %conv36, 16
  %or38 = or i32 %shl34, %shl37
  %arrayidx39 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 10
  %14 = load i8, i8* %arrayidx39, align 2
  %conv40 = zext i8 %14 to i32
  %shl41 = shl i32 %conv40, 8
  %or42 = or i32 %or38, %shl41
  %arrayidx43 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 11
  %15 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %15 to i32
  %or45 = or i32 %or42, %conv44
  %conv46 = zext i32 %or45 to i64
  store i64 %conv46, i64* %hi, align 8
  %arrayidx47 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 12
  %16 = load i8, i8* %arrayidx47, align 4
  %conv48 = zext i8 %16 to i32
  %shl49 = shl i32 %conv48, 24
  %arrayidx50 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 13
  %17 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %17 to i32
  %shl52 = shl i32 %conv51, 16
  %or53 = or i32 %shl49, %shl52
  %arrayidx54 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 14
  %18 = load i8, i8* %arrayidx54, align 2
  %conv55 = zext i8 %18 to i32
  %shl56 = shl i32 %conv55, 8
  %or57 = or i32 %or53, %shl56
  %arrayidx58 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 15
  %19 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %19 to i32
  %or60 = or i32 %or57, %conv59
  %conv61 = zext i32 %or60 to i64
  store i64 %conv61, i64* %lo, align 8
  %20 = load i64, i64* %hi, align 8
  %shl62 = shl i64 %20, 32
  %21 = load i64, i64* %lo, align 8
  %or63 = or i64 %shl62, %21
  store i64 %or63, i64* %vl, align 8
  %22 = load i64, i64* %vl, align 8
  %23 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HL = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %23, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [16 x i64], [16 x i64]* %HL, i64 0, i64 8
  store i64 %22, i64* %arrayidx64, align 8
  %24 = load i64, i64* %vh, align 8
  %25 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HH = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %25, i32 0, i32 2
  %arrayidx65 = getelementptr inbounds [16 x i64], [16 x i64]* %HH, i64 0, i64 8
  store i64 %24, i64* %arrayidx65, align 8
  %call66 = call i32 @mbedtls_aesni_has_support(i32 noundef 2) #6
  %tobool = icmp ne i32 %call66, 0
  br i1 %tobool, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end68:                                         ; preds = %if.end
  %26 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HH69 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %26, i32 0, i32 2
  %arrayidx70 = getelementptr inbounds [16 x i64], [16 x i64]* %HH69, i64 0, i64 0
  store i64 0, i64* %arrayidx70, align 8
  %27 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HL71 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %27, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [16 x i64], [16 x i64]* %HL71, i64 0, i64 0
  store i64 0, i64* %arrayidx72, align 8
  store i32 4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end68
  %28 = load i32, i32* %i, align 4
  %cmp73 = icmp sgt i32 %28, 0
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i64, i64* %vl, align 8
  %and = and i64 %29, 1
  %mul = mul i64 %and, 3774873600
  %conv75 = trunc i64 %mul to i32
  store i32 %conv75, i32* %T, align 4
  %30 = load i64, i64* %vh, align 8
  %shl76 = shl i64 %30, 63
  %31 = load i64, i64* %vl, align 8
  %shr = lshr i64 %31, 1
  %or77 = or i64 %shl76, %shr
  store i64 %or77, i64* %vl, align 8
  %32 = load i64, i64* %vh, align 8
  %shr78 = lshr i64 %32, 1
  %33 = load i32, i32* %T, align 4
  %conv79 = zext i32 %33 to i64
  %shl80 = shl i64 %conv79, 32
  %xor = xor i64 %shr78, %shl80
  store i64 %xor, i64* %vh, align 8
  %34 = load i64, i64* %vl, align 8
  %35 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HL81 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %35, i32 0, i32 1
  %36 = load i32, i32* %i, align 4
  %idxprom = sext i32 %36 to i64
  %arrayidx82 = getelementptr inbounds [16 x i64], [16 x i64]* %HL81, i64 0, i64 %idxprom
  store i64 %34, i64* %arrayidx82, align 8
  %37 = load i64, i64* %vh, align 8
  %38 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HH83 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %38, i32 0, i32 2
  %39 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %39 to i64
  %arrayidx85 = getelementptr inbounds [16 x i64], [16 x i64]* %HH83, i64 0, i64 %idxprom84
  store i64 %37, i64* %arrayidx85, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %shr86 = ashr i32 %40, 1
  store i32 %shr86, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 2, i32* %i, align 4
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc115, %for.end
  %41 = load i32, i32* %i, align 4
  %cmp88 = icmp sle i32 %41, 8
  br i1 %cmp88, label %for.body90, label %for.end117

for.body90:                                       ; preds = %for.cond87
  %42 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HL91 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %42, i32 0, i32 1
  %arraydecay92 = getelementptr inbounds [16 x i64], [16 x i64]* %HL91, i64 0, i64 0
  %43 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %43 to i64
  %add.ptr = getelementptr inbounds i64, i64* %arraydecay92, i64 %idx.ext
  store i64* %add.ptr, i64** %HiL, align 8
  %44 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HH93 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %44, i32 0, i32 2
  %arraydecay94 = getelementptr inbounds [16 x i64], [16 x i64]* %HH93, i64 0, i64 0
  %45 = load i32, i32* %i, align 4
  %idx.ext95 = sext i32 %45 to i64
  %add.ptr96 = getelementptr inbounds i64, i64* %arraydecay94, i64 %idx.ext95
  store i64* %add.ptr96, i64** %HiH, align 8
  %46 = load i64*, i64** %HiH, align 8
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %vh, align 8
  %48 = load i64*, i64** %HiL, align 8
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %vl, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc113, %for.body90
  %50 = load i32, i32* %j, align 4
  %51 = load i32, i32* %i, align 4
  %cmp98 = icmp slt i32 %50, %51
  br i1 %cmp98, label %for.body100, label %for.end114

for.body100:                                      ; preds = %for.cond97
  %52 = load i64, i64* %vh, align 8
  %53 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HH101 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %53, i32 0, i32 2
  %54 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %54 to i64
  %arrayidx103 = getelementptr inbounds [16 x i64], [16 x i64]* %HH101, i64 0, i64 %idxprom102
  %55 = load i64, i64* %arrayidx103, align 8
  %xor104 = xor i64 %52, %55
  %56 = load i64*, i64** %HiH, align 8
  %57 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %57 to i64
  %arrayidx106 = getelementptr inbounds i64, i64* %56, i64 %idxprom105
  store i64 %xor104, i64* %arrayidx106, align 8
  %58 = load i64, i64* %vl, align 8
  %59 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HL107 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %59, i32 0, i32 1
  %60 = load i32, i32* %j, align 4
  %idxprom108 = sext i32 %60 to i64
  %arrayidx109 = getelementptr inbounds [16 x i64], [16 x i64]* %HL107, i64 0, i64 %idxprom108
  %61 = load i64, i64* %arrayidx109, align 8
  %xor110 = xor i64 %58, %61
  %62 = load i64*, i64** %HiL, align 8
  %63 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %63 to i64
  %arrayidx112 = getelementptr inbounds i64, i64* %62, i64 %idxprom111
  store i64 %xor110, i64* %arrayidx112, align 8
  br label %for.inc113

for.inc113:                                       ; preds = %for.body100
  %64 = load i32, i32* %j, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond97, !llvm.loop !6

for.end114:                                       ; preds = %for.cond97
  br label %for.inc115

for.inc115:                                       ; preds = %for.end114
  %65 = load i32, i32* %i, align 4
  %mul116 = mul nsw i32 %65, 2
  store i32 %mul116, i32* %i, align 4
  br label %for.cond87, !llvm.loop !7

for.end117:                                       ; preds = %for.cond87
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end117, %if.then67, %if.then
  %66 = load i32, i32* %retval, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_gcm_starts(%struct.mbedtls_gcm_context* noundef %ctx, i32 noundef %mode, i8* noundef %iv, i64 noundef %iv_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_gcm_context*, align 8
  %mode.addr = alloca i32, align 4
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %work_buf = alloca [16 x i8], align 16
  %i = alloca i64, align 8
  %p = alloca i8*, align 8
  %use_len = alloca i64, align 8
  %olen = alloca i64, align 8
  %iv_bits = alloca i64, align 8
  store %struct.mbedtls_gcm_context* %ctx, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %olen, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i64, i64* %iv_len.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end2
  %1 = load i64, i64* %iv_len.addr, align 8
  %shr = lshr i64 %1, 61
  %cmp3 = icmp ne i64 %shr, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end2
  store i32 -20, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %y = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %2, i32 0, i32 6
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %y, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 16) #5
  %3 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %3, i32 0, i32 7
  %arraydecay4 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0
  %call5 = call i8* @memset(i8* noundef %arraydecay4, i32 noundef 0, i64 noundef 16) #5
  %4 = load i32, i32* %mode.addr, align 4
  %5 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %mode6 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %5, i32 0, i32 8
  store i32 %4, i32* %mode6, align 8
  %6 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %6, i32 0, i32 3
  store i64 0, i64* %len, align 8
  %7 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %add_len = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %7, i32 0, i32 4
  store i64 0, i64* %add_len, align 8
  %8 = load i64, i64* %iv_len.addr, align 8
  %cmp7 = icmp eq i64 %8, 12
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %9 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %y9 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %9, i32 0, i32 6
  %arraydecay10 = getelementptr inbounds [16 x i8], [16 x i8]* %y9, i64 0, i64 0
  %10 = load i8*, i8** %iv.addr, align 8
  %11 = load i64, i64* %iv_len.addr, align 8
  %call11 = call i8* @memcpy(i8* noundef %arraydecay10, i8* noundef %10, i64 noundef %11) #5
  %12 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %y12 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %12, i32 0, i32 6
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %y12, i64 0, i64 15
  store i8 1, i8* %arrayidx, align 1
  br label %if.end78

if.else:                                          ; preds = %if.end
  %arraydecay13 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 0
  %call14 = call i8* @memset(i8* noundef %arraydecay13, i32 noundef 0, i64 noundef 16) #5
  %13 = load i64, i64* %iv_len.addr, align 8
  %mul = mul i64 %13, 8
  store i64 %mul, i64* %iv_bits, align 8
  %14 = load i64, i64* %iv_bits, align 8
  %shr15 = lshr i64 %14, 56
  %and = and i64 %shr15, 255
  %conv = trunc i64 %and to i8
  %arrayidx16 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 8
  store i8 %conv, i8* %arrayidx16, align 8
  %15 = load i64, i64* %iv_bits, align 8
  %shr17 = lshr i64 %15, 48
  %and18 = and i64 %shr17, 255
  %conv19 = trunc i64 %and18 to i8
  %arrayidx20 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 9
  store i8 %conv19, i8* %arrayidx20, align 1
  %16 = load i64, i64* %iv_bits, align 8
  %shr21 = lshr i64 %16, 40
  %and22 = and i64 %shr21, 255
  %conv23 = trunc i64 %and22 to i8
  %arrayidx24 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 10
  store i8 %conv23, i8* %arrayidx24, align 2
  %17 = load i64, i64* %iv_bits, align 8
  %shr25 = lshr i64 %17, 32
  %and26 = and i64 %shr25, 255
  %conv27 = trunc i64 %and26 to i8
  %arrayidx28 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 11
  store i8 %conv27, i8* %arrayidx28, align 1
  %18 = load i64, i64* %iv_bits, align 8
  %shr29 = lshr i64 %18, 24
  %and30 = and i64 %shr29, 255
  %conv31 = trunc i64 %and30 to i8
  %arrayidx32 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 12
  store i8 %conv31, i8* %arrayidx32, align 4
  %19 = load i64, i64* %iv_bits, align 8
  %shr33 = lshr i64 %19, 16
  %and34 = and i64 %shr33, 255
  %conv35 = trunc i64 %and34 to i8
  %arrayidx36 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 13
  store i8 %conv35, i8* %arrayidx36, align 1
  %20 = load i64, i64* %iv_bits, align 8
  %shr37 = lshr i64 %20, 8
  %and38 = and i64 %shr37, 255
  %conv39 = trunc i64 %and38 to i8
  %arrayidx40 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 14
  store i8 %conv39, i8* %arrayidx40, align 2
  %21 = load i64, i64* %iv_bits, align 8
  %and41 = and i64 %21, 255
  %conv42 = trunc i64 %and41 to i8
  %arrayidx43 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 15
  store i8 %conv42, i8* %arrayidx43, align 1
  %22 = load i8*, i8** %iv.addr, align 8
  store i8* %22, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.else
  %23 = load i64, i64* %iv_len.addr, align 8
  %cmp44 = icmp ugt i64 %23, 0
  br i1 %cmp44, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i64, i64* %iv_len.addr, align 8
  %cmp46 = icmp ult i64 %24, 16
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %25 = load i64, i64* %iv_len.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %25, %cond.true ], [ 16, %cond.false ]
  store i64 %cond, i64* %use_len, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %26 = load i64, i64* %i, align 8
  %27 = load i64, i64* %use_len, align 8
  %cmp48 = icmp ult i64 %26, %27
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %p, align 8
  %29 = load i64, i64* %i, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %28, i64 %29
  %30 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %30 to i32
  %31 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %y52 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %31, i32 0, i32 6
  %32 = load i64, i64* %i, align 8
  %arrayidx53 = getelementptr inbounds [16 x i8], [16 x i8]* %y52, i64 0, i64 %32
  %33 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %33 to i32
  %xor = xor i32 %conv54, %conv51
  %conv55 = trunc i32 %xor to i8
  store i8 %conv55, i8* %arrayidx53, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, i64* %i, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %35 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %36 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %y56 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %36, i32 0, i32 6
  %arraydecay57 = getelementptr inbounds [16 x i8], [16 x i8]* %y56, i64 0, i64 0
  %37 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %y58 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %37, i32 0, i32 6
  %arraydecay59 = getelementptr inbounds [16 x i8], [16 x i8]* %y58, i64 0, i64 0
  call void @gcm_mult(%struct.mbedtls_gcm_context* noundef %35, i8* noundef %arraydecay57, i8* noundef %arraydecay59) #6
  %38 = load i64, i64* %use_len, align 8
  %39 = load i64, i64* %iv_len.addr, align 8
  %sub = sub i64 %39, %38
  store i64 %sub, i64* %iv_len.addr, align 8
  %40 = load i64, i64* %use_len, align 8
  %41 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 %40
  store i8* %add.ptr, i8** %p, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %i, align 8
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc71, %while.end
  %42 = load i64, i64* %i, align 8
  %cmp61 = icmp ult i64 %42, 16
  br i1 %cmp61, label %for.body63, label %for.end73

for.body63:                                       ; preds = %for.cond60
  %43 = load i64, i64* %i, align 8
  %arrayidx64 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 %43
  %44 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %44 to i32
  %45 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %y66 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %45, i32 0, i32 6
  %46 = load i64, i64* %i, align 8
  %arrayidx67 = getelementptr inbounds [16 x i8], [16 x i8]* %y66, i64 0, i64 %46
  %47 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %47 to i32
  %xor69 = xor i32 %conv68, %conv65
  %conv70 = trunc i32 %xor69 to i8
  store i8 %conv70, i8* %arrayidx67, align 1
  br label %for.inc71

for.inc71:                                        ; preds = %for.body63
  %48 = load i64, i64* %i, align 8
  %inc72 = add i64 %48, 1
  store i64 %inc72, i64* %i, align 8
  br label %for.cond60, !llvm.loop !10

for.end73:                                        ; preds = %for.cond60
  %49 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %50 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %y74 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %50, i32 0, i32 6
  %arraydecay75 = getelementptr inbounds [16 x i8], [16 x i8]* %y74, i64 0, i64 0
  %51 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %y76 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %51, i32 0, i32 6
  %arraydecay77 = getelementptr inbounds [16 x i8], [16 x i8]* %y76, i64 0, i64 0
  call void @gcm_mult(%struct.mbedtls_gcm_context* noundef %49, i8* noundef %arraydecay75, i8* noundef %arraydecay77) #6
  br label %if.end78

if.end78:                                         ; preds = %for.end73, %if.then8
  %52 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %52, i32 0, i32 0
  %53 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %y79 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %53, i32 0, i32 6
  %arraydecay80 = getelementptr inbounds [16 x i8], [16 x i8]* %y79, i64 0, i64 0
  %54 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %base_ectr = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %54, i32 0, i32 5
  %arraydecay81 = getelementptr inbounds [16 x i8], [16 x i8]* %base_ectr, i64 0, i64 0
  %call82 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay80, i64 noundef 16, i8* noundef %arraydecay81, i64* noundef %olen) #6
  store i32 %call82, i32* %ret, align 4
  %cmp83 = icmp ne i32 %call82, 0
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.end78
  %55 = load i32, i32* %ret, align 4
  store i32 %55, i32* %retval, align 4
  br label %return

if.end86:                                         ; preds = %if.end78
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end86, %if.then85, %if.then
  %56 = load i32, i32* %retval, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gcm_mult(%struct.mbedtls_gcm_context* noundef %ctx, i8* noundef %x, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_gcm_context*, align 8
  %x.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %lo = alloca i8, align 1
  %hi = alloca i8, align 1
  %rem = alloca i8, align 1
  %zh = alloca i64, align 8
  %zl = alloca i64, align 8
  %h = alloca [16 x i8], align 16
  store %struct.mbedtls_gcm_context* %ctx, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 0, i32* %i, align 4
  %call = call i32 @mbedtls_aesni_has_support(i32 noundef 2) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HH = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %HH, i64 0, i64 8
  %1 = load i64, i64* %arrayidx, align 8
  %shr = lshr i64 %1, 32
  %shr1 = lshr i64 %shr, 24
  %and = and i64 %shr1, 255
  %conv = trunc i64 %and to i8
  %arrayidx2 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 0
  store i8 %conv, i8* %arrayidx2, align 16
  %2 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HH3 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %2, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [16 x i64], [16 x i64]* %HH3, i64 0, i64 8
  %3 = load i64, i64* %arrayidx4, align 8
  %shr5 = lshr i64 %3, 32
  %shr6 = lshr i64 %shr5, 16
  %and7 = and i64 %shr6, 255
  %conv8 = trunc i64 %and7 to i8
  %arrayidx9 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 1
  store i8 %conv8, i8* %arrayidx9, align 1
  %4 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HH10 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %4, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [16 x i64], [16 x i64]* %HH10, i64 0, i64 8
  %5 = load i64, i64* %arrayidx11, align 8
  %shr12 = lshr i64 %5, 32
  %shr13 = lshr i64 %shr12, 8
  %and14 = and i64 %shr13, 255
  %conv15 = trunc i64 %and14 to i8
  %arrayidx16 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 2
  store i8 %conv15, i8* %arrayidx16, align 2
  %6 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HH17 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %6, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [16 x i64], [16 x i64]* %HH17, i64 0, i64 8
  %7 = load i64, i64* %arrayidx18, align 8
  %shr19 = lshr i64 %7, 32
  %and20 = and i64 %shr19, 255
  %conv21 = trunc i64 %and20 to i8
  %arrayidx22 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 3
  store i8 %conv21, i8* %arrayidx22, align 1
  %8 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HH23 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %8, i32 0, i32 2
  %arrayidx24 = getelementptr inbounds [16 x i64], [16 x i64]* %HH23, i64 0, i64 8
  %9 = load i64, i64* %arrayidx24, align 8
  %shr25 = lshr i64 %9, 24
  %and26 = and i64 %shr25, 255
  %conv27 = trunc i64 %and26 to i8
  %arrayidx28 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 4
  store i8 %conv27, i8* %arrayidx28, align 4
  %10 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HH29 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %10, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [16 x i64], [16 x i64]* %HH29, i64 0, i64 8
  %11 = load i64, i64* %arrayidx30, align 8
  %shr31 = lshr i64 %11, 16
  %and32 = and i64 %shr31, 255
  %conv33 = trunc i64 %and32 to i8
  %arrayidx34 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 5
  store i8 %conv33, i8* %arrayidx34, align 1
  %12 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HH35 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %12, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [16 x i64], [16 x i64]* %HH35, i64 0, i64 8
  %13 = load i64, i64* %arrayidx36, align 8
  %shr37 = lshr i64 %13, 8
  %and38 = and i64 %shr37, 255
  %conv39 = trunc i64 %and38 to i8
  %arrayidx40 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 6
  store i8 %conv39, i8* %arrayidx40, align 2
  %14 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HH41 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %14, i32 0, i32 2
  %arrayidx42 = getelementptr inbounds [16 x i64], [16 x i64]* %HH41, i64 0, i64 8
  %15 = load i64, i64* %arrayidx42, align 8
  %and43 = and i64 %15, 255
  %conv44 = trunc i64 %and43 to i8
  %arrayidx45 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 7
  store i8 %conv44, i8* %arrayidx45, align 1
  %16 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HL = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %16, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [16 x i64], [16 x i64]* %HL, i64 0, i64 8
  %17 = load i64, i64* %arrayidx46, align 8
  %shr47 = lshr i64 %17, 32
  %shr48 = lshr i64 %shr47, 24
  %and49 = and i64 %shr48, 255
  %conv50 = trunc i64 %and49 to i8
  %arrayidx51 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 8
  store i8 %conv50, i8* %arrayidx51, align 8
  %18 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HL52 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %18, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [16 x i64], [16 x i64]* %HL52, i64 0, i64 8
  %19 = load i64, i64* %arrayidx53, align 8
  %shr54 = lshr i64 %19, 32
  %shr55 = lshr i64 %shr54, 16
  %and56 = and i64 %shr55, 255
  %conv57 = trunc i64 %and56 to i8
  %arrayidx58 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 9
  store i8 %conv57, i8* %arrayidx58, align 1
  %20 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HL59 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %20, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [16 x i64], [16 x i64]* %HL59, i64 0, i64 8
  %21 = load i64, i64* %arrayidx60, align 8
  %shr61 = lshr i64 %21, 32
  %shr62 = lshr i64 %shr61, 8
  %and63 = and i64 %shr62, 255
  %conv64 = trunc i64 %and63 to i8
  %arrayidx65 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 10
  store i8 %conv64, i8* %arrayidx65, align 2
  %22 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HL66 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %22, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [16 x i64], [16 x i64]* %HL66, i64 0, i64 8
  %23 = load i64, i64* %arrayidx67, align 8
  %shr68 = lshr i64 %23, 32
  %and69 = and i64 %shr68, 255
  %conv70 = trunc i64 %and69 to i8
  %arrayidx71 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 11
  store i8 %conv70, i8* %arrayidx71, align 1
  %24 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HL72 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %24, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [16 x i64], [16 x i64]* %HL72, i64 0, i64 8
  %25 = load i64, i64* %arrayidx73, align 8
  %shr74 = lshr i64 %25, 24
  %and75 = and i64 %shr74, 255
  %conv76 = trunc i64 %and75 to i8
  %arrayidx77 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 12
  store i8 %conv76, i8* %arrayidx77, align 4
  %26 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HL78 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %26, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [16 x i64], [16 x i64]* %HL78, i64 0, i64 8
  %27 = load i64, i64* %arrayidx79, align 8
  %shr80 = lshr i64 %27, 16
  %and81 = and i64 %shr80, 255
  %conv82 = trunc i64 %and81 to i8
  %arrayidx83 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 13
  store i8 %conv82, i8* %arrayidx83, align 1
  %28 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HL84 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %28, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [16 x i64], [16 x i64]* %HL84, i64 0, i64 8
  %29 = load i64, i64* %arrayidx85, align 8
  %shr86 = lshr i64 %29, 8
  %and87 = and i64 %shr86, 255
  %conv88 = trunc i64 %and87 to i8
  %arrayidx89 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 14
  store i8 %conv88, i8* %arrayidx89, align 2
  %30 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HL90 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %30, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [16 x i64], [16 x i64]* %HL90, i64 0, i64 8
  %31 = load i64, i64* %arrayidx91, align 8
  %and92 = and i64 %31, 255
  %conv93 = trunc i64 %and92 to i8
  %arrayidx94 = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 15
  store i8 %conv93, i8* %arrayidx94, align 1
  %32 = load i8*, i8** %output.addr, align 8
  %33 = load i8*, i8** %x.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %h, i64 0, i64 0
  call void @mbedtls_aesni_gcm_mult(i8* noundef %32, i8* noundef %33, i8* noundef %arraydecay) #6
  br label %return

if.end:                                           ; preds = %entry
  %34 = load i8*, i8** %x.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %34, i64 15
  %35 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %35 to i32
  %and97 = and i32 %conv96, 15
  %conv98 = trunc i32 %and97 to i8
  store i8 %conv98, i8* %lo, align 1
  %36 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HH99 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %36, i32 0, i32 2
  %37 = load i8, i8* %lo, align 1
  %idxprom = zext i8 %37 to i64
  %arrayidx100 = getelementptr inbounds [16 x i64], [16 x i64]* %HH99, i64 0, i64 %idxprom
  %38 = load i64, i64* %arrayidx100, align 8
  store i64 %38, i64* %zh, align 8
  %39 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HL101 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %39, i32 0, i32 1
  %40 = load i8, i8* %lo, align 1
  %idxprom102 = zext i8 %40 to i64
  %arrayidx103 = getelementptr inbounds [16 x i64], [16 x i64]* %HL101, i64 0, i64 %idxprom102
  %41 = load i64, i64* %arrayidx103, align 8
  store i64 %41, i64* %zl, align 8
  store i32 15, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %42 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %42, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load i8*, i8** %x.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %44 to i64
  %arrayidx106 = getelementptr inbounds i8, i8* %43, i64 %idxprom105
  %45 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %45 to i32
  %and108 = and i32 %conv107, 15
  %conv109 = trunc i32 %and108 to i8
  store i8 %conv109, i8* %lo, align 1
  %46 = load i8*, i8** %x.addr, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %47 to i64
  %arrayidx111 = getelementptr inbounds i8, i8* %46, i64 %idxprom110
  %48 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %48 to i32
  %shr113 = ashr i32 %conv112, 4
  %and114 = and i32 %shr113, 15
  %conv115 = trunc i32 %and114 to i8
  store i8 %conv115, i8* %hi, align 1
  %49 = load i32, i32* %i, align 4
  %cmp116 = icmp ne i32 %49, 15
  br i1 %cmp116, label %if.then118, label %if.end136

if.then118:                                       ; preds = %for.body
  %50 = load i64, i64* %zl, align 8
  %conv119 = trunc i64 %50 to i8
  %conv120 = zext i8 %conv119 to i32
  %and121 = and i32 %conv120, 15
  %conv122 = trunc i32 %and121 to i8
  store i8 %conv122, i8* %rem, align 1
  %51 = load i64, i64* %zh, align 8
  %shl = shl i64 %51, 60
  %52 = load i64, i64* %zl, align 8
  %shr123 = lshr i64 %52, 4
  %or = or i64 %shl, %shr123
  store i64 %or, i64* %zl, align 8
  %53 = load i64, i64* %zh, align 8
  %shr124 = lshr i64 %53, 4
  store i64 %shr124, i64* %zh, align 8
  %54 = load i8, i8* %rem, align 1
  %idxprom125 = zext i8 %54 to i64
  %arrayidx126 = getelementptr inbounds [16 x i64], [16 x i64]* @last4, i64 0, i64 %idxprom125
  %55 = load i64, i64* %arrayidx126, align 8
  %shl127 = shl i64 %55, 48
  %56 = load i64, i64* %zh, align 8
  %xor = xor i64 %56, %shl127
  store i64 %xor, i64* %zh, align 8
  %57 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HH128 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %57, i32 0, i32 2
  %58 = load i8, i8* %lo, align 1
  %idxprom129 = zext i8 %58 to i64
  %arrayidx130 = getelementptr inbounds [16 x i64], [16 x i64]* %HH128, i64 0, i64 %idxprom129
  %59 = load i64, i64* %arrayidx130, align 8
  %60 = load i64, i64* %zh, align 8
  %xor131 = xor i64 %60, %59
  store i64 %xor131, i64* %zh, align 8
  %61 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HL132 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %61, i32 0, i32 1
  %62 = load i8, i8* %lo, align 1
  %idxprom133 = zext i8 %62 to i64
  %arrayidx134 = getelementptr inbounds [16 x i64], [16 x i64]* %HL132, i64 0, i64 %idxprom133
  %63 = load i64, i64* %arrayidx134, align 8
  %64 = load i64, i64* %zl, align 8
  %xor135 = xor i64 %64, %63
  store i64 %xor135, i64* %zl, align 8
  br label %if.end136

if.end136:                                        ; preds = %if.then118, %for.body
  %65 = load i64, i64* %zl, align 8
  %conv137 = trunc i64 %65 to i8
  %conv138 = zext i8 %conv137 to i32
  %and139 = and i32 %conv138, 15
  %conv140 = trunc i32 %and139 to i8
  store i8 %conv140, i8* %rem, align 1
  %66 = load i64, i64* %zh, align 8
  %shl141 = shl i64 %66, 60
  %67 = load i64, i64* %zl, align 8
  %shr142 = lshr i64 %67, 4
  %or143 = or i64 %shl141, %shr142
  store i64 %or143, i64* %zl, align 8
  %68 = load i64, i64* %zh, align 8
  %shr144 = lshr i64 %68, 4
  store i64 %shr144, i64* %zh, align 8
  %69 = load i8, i8* %rem, align 1
  %idxprom145 = zext i8 %69 to i64
  %arrayidx146 = getelementptr inbounds [16 x i64], [16 x i64]* @last4, i64 0, i64 %idxprom145
  %70 = load i64, i64* %arrayidx146, align 8
  %shl147 = shl i64 %70, 48
  %71 = load i64, i64* %zh, align 8
  %xor148 = xor i64 %71, %shl147
  store i64 %xor148, i64* %zh, align 8
  %72 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HH149 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %72, i32 0, i32 2
  %73 = load i8, i8* %hi, align 1
  %idxprom150 = zext i8 %73 to i64
  %arrayidx151 = getelementptr inbounds [16 x i64], [16 x i64]* %HH149, i64 0, i64 %idxprom150
  %74 = load i64, i64* %arrayidx151, align 8
  %75 = load i64, i64* %zh, align 8
  %xor152 = xor i64 %75, %74
  store i64 %xor152, i64* %zh, align 8
  %76 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %HL153 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %76, i32 0, i32 1
  %77 = load i8, i8* %hi, align 1
  %idxprom154 = zext i8 %77 to i64
  %arrayidx155 = getelementptr inbounds [16 x i64], [16 x i64]* %HL153, i64 0, i64 %idxprom154
  %78 = load i64, i64* %arrayidx155, align 8
  %79 = load i64, i64* %zl, align 8
  %xor156 = xor i64 %79, %78
  store i64 %xor156, i64* %zl, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end136
  %80 = load i32, i32* %i, align 4
  %dec = add nsw i32 %80, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %81 = load i64, i64* %zh, align 8
  %shr157 = lshr i64 %81, 32
  %shr158 = lshr i64 %shr157, 24
  %and159 = and i64 %shr158, 255
  %conv160 = trunc i64 %and159 to i8
  %82 = load i8*, i8** %output.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %82, i64 0
  store i8 %conv160, i8* %arrayidx161, align 1
  %83 = load i64, i64* %zh, align 8
  %shr162 = lshr i64 %83, 32
  %shr163 = lshr i64 %shr162, 16
  %and164 = and i64 %shr163, 255
  %conv165 = trunc i64 %and164 to i8
  %84 = load i8*, i8** %output.addr, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %84, i64 1
  store i8 %conv165, i8* %arrayidx166, align 1
  %85 = load i64, i64* %zh, align 8
  %shr167 = lshr i64 %85, 32
  %shr168 = lshr i64 %shr167, 8
  %and169 = and i64 %shr168, 255
  %conv170 = trunc i64 %and169 to i8
  %86 = load i8*, i8** %output.addr, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %86, i64 2
  store i8 %conv170, i8* %arrayidx171, align 1
  %87 = load i64, i64* %zh, align 8
  %shr172 = lshr i64 %87, 32
  %and173 = and i64 %shr172, 255
  %conv174 = trunc i64 %and173 to i8
  %88 = load i8*, i8** %output.addr, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %88, i64 3
  store i8 %conv174, i8* %arrayidx175, align 1
  %89 = load i64, i64* %zh, align 8
  %shr176 = lshr i64 %89, 24
  %and177 = and i64 %shr176, 255
  %conv178 = trunc i64 %and177 to i8
  %90 = load i8*, i8** %output.addr, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %90, i64 4
  store i8 %conv178, i8* %arrayidx179, align 1
  %91 = load i64, i64* %zh, align 8
  %shr180 = lshr i64 %91, 16
  %and181 = and i64 %shr180, 255
  %conv182 = trunc i64 %and181 to i8
  %92 = load i8*, i8** %output.addr, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %92, i64 5
  store i8 %conv182, i8* %arrayidx183, align 1
  %93 = load i64, i64* %zh, align 8
  %shr184 = lshr i64 %93, 8
  %and185 = and i64 %shr184, 255
  %conv186 = trunc i64 %and185 to i8
  %94 = load i8*, i8** %output.addr, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %94, i64 6
  store i8 %conv186, i8* %arrayidx187, align 1
  %95 = load i64, i64* %zh, align 8
  %and188 = and i64 %95, 255
  %conv189 = trunc i64 %and188 to i8
  %96 = load i8*, i8** %output.addr, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %96, i64 7
  store i8 %conv189, i8* %arrayidx190, align 1
  %97 = load i64, i64* %zl, align 8
  %shr191 = lshr i64 %97, 32
  %shr192 = lshr i64 %shr191, 24
  %and193 = and i64 %shr192, 255
  %conv194 = trunc i64 %and193 to i8
  %98 = load i8*, i8** %output.addr, align 8
  %arrayidx195 = getelementptr inbounds i8, i8* %98, i64 8
  store i8 %conv194, i8* %arrayidx195, align 1
  %99 = load i64, i64* %zl, align 8
  %shr196 = lshr i64 %99, 32
  %shr197 = lshr i64 %shr196, 16
  %and198 = and i64 %shr197, 255
  %conv199 = trunc i64 %and198 to i8
  %100 = load i8*, i8** %output.addr, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %100, i64 9
  store i8 %conv199, i8* %arrayidx200, align 1
  %101 = load i64, i64* %zl, align 8
  %shr201 = lshr i64 %101, 32
  %shr202 = lshr i64 %shr201, 8
  %and203 = and i64 %shr202, 255
  %conv204 = trunc i64 %and203 to i8
  %102 = load i8*, i8** %output.addr, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %102, i64 10
  store i8 %conv204, i8* %arrayidx205, align 1
  %103 = load i64, i64* %zl, align 8
  %shr206 = lshr i64 %103, 32
  %and207 = and i64 %shr206, 255
  %conv208 = trunc i64 %and207 to i8
  %104 = load i8*, i8** %output.addr, align 8
  %arrayidx209 = getelementptr inbounds i8, i8* %104, i64 11
  store i8 %conv208, i8* %arrayidx209, align 1
  %105 = load i64, i64* %zl, align 8
  %shr210 = lshr i64 %105, 24
  %and211 = and i64 %shr210, 255
  %conv212 = trunc i64 %and211 to i8
  %106 = load i8*, i8** %output.addr, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %106, i64 12
  store i8 %conv212, i8* %arrayidx213, align 1
  %107 = load i64, i64* %zl, align 8
  %shr214 = lshr i64 %107, 16
  %and215 = and i64 %shr214, 255
  %conv216 = trunc i64 %and215 to i8
  %108 = load i8*, i8** %output.addr, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %108, i64 13
  store i8 %conv216, i8* %arrayidx217, align 1
  %109 = load i64, i64* %zl, align 8
  %shr218 = lshr i64 %109, 8
  %and219 = and i64 %shr218, 255
  %conv220 = trunc i64 %and219 to i8
  %110 = load i8*, i8** %output.addr, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %110, i64 14
  store i8 %conv220, i8* %arrayidx221, align 1
  %111 = load i64, i64* %zl, align 8
  %and222 = and i64 %111, 255
  %conv223 = trunc i64 %and222 to i8
  %112 = load i8*, i8** %output.addr, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %112, i64 15
  store i8 %conv223, i8* %arrayidx224, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare dso_local i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_gcm_update_ad(%struct.mbedtls_gcm_context* noundef %ctx, i8* noundef %add, i64 noundef %add_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_gcm_context*, align 8
  %add.addr = alloca i8*, align 8
  %add_len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %use_len = alloca i64, align 8
  %i = alloca i64, align 8
  %offset = alloca i64, align 8
  store %struct.mbedtls_gcm_context* %ctx, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  store i8* %add, i8** %add.addr, align 8
  store i64 %add_len, i64* %add_len.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %add_len.addr, align 8
  %shr = lshr i64 %0, 61
  %cmp = icmp ne i64 %shr, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 -20, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %1 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %add_len1 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %1, i32 0, i32 4
  %2 = load i64, i64* %add_len1, align 8
  %rem = urem i64 %2, 16
  store i64 %rem, i64* %offset, align 8
  %3 = load i8*, i8** %add.addr, align 8
  store i8* %3, i8** %p, align 8
  %4 = load i64, i64* %offset, align 8
  %cmp2 = icmp ne i64 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end23

if.then3:                                         ; preds = %if.end
  %5 = load i64, i64* %offset, align 8
  %sub = sub i64 16, %5
  store i64 %sub, i64* %use_len, align 8
  %6 = load i64, i64* %use_len, align 8
  %7 = load i64, i64* %add_len.addr, align 8
  %cmp4 = icmp ugt i64 %6, %7
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  %8 = load i64, i64* %add_len.addr, align 8
  store i64 %8, i64* %use_len, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %use_len, align 8
  %cmp7 = icmp ult i64 %9, %10
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %p, align 8
  %12 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %14 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %14, i32 0, i32 7
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %offset, align 8
  %add8 = add i64 %15, %16
  %arrayidx9 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 %add8
  %17 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %17 to i32
  %xor = xor i32 %conv10, %conv
  %conv11 = trunc i32 %xor to i8
  store i8 %conv11, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %i, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %offset, align 8
  %20 = load i64, i64* %use_len, align 8
  %add12 = add i64 %19, %20
  %cmp13 = icmp eq i64 %add12, 16
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %for.end
  %21 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %22 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf16 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %22, i32 0, i32 7
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf16, i64 0, i64 0
  %23 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf17 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %23, i32 0, i32 7
  %arraydecay18 = getelementptr inbounds [16 x i8], [16 x i8]* %buf17, i64 0, i64 0
  call void @gcm_mult(%struct.mbedtls_gcm_context* noundef %21, i8* noundef %arraydecay, i8* noundef %arraydecay18) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %for.end
  %24 = load i64, i64* %use_len, align 8
  %25 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %add_len20 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %25, i32 0, i32 4
  %26 = load i64, i64* %add_len20, align 8
  %add21 = add i64 %26, %24
  store i64 %add21, i64* %add_len20, align 8
  %27 = load i64, i64* %use_len, align 8
  %28 = load i64, i64* %add_len.addr, align 8
  %sub22 = sub i64 %28, %27
  store i64 %sub22, i64* %add_len.addr, align 8
  %29 = load i64, i64* %use_len, align 8
  %30 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %29
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.end19, %if.end
  %31 = load i64, i64* %add_len.addr, align 8
  %32 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %add_len24 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %32, i32 0, i32 4
  %33 = load i64, i64* %add_len24, align 8
  %add25 = add i64 %33, %31
  store i64 %add25, i64* %add_len24, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end41, %if.end23
  %34 = load i64, i64* %add_len.addr, align 8
  %cmp26 = icmp uge i64 %34, 16
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i64 0, i64* %i, align 8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %while.body
  %35 = load i64, i64* %i, align 8
  %cmp29 = icmp ult i64 %35, 16
  br i1 %cmp29, label %for.body31, label %for.end41

for.body31:                                       ; preds = %for.cond28
  %36 = load i8*, i8** %p, align 8
  %37 = load i64, i64* %i, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %36, i64 %37
  %38 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %38 to i32
  %39 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf34 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %39, i32 0, i32 7
  %40 = load i64, i64* %i, align 8
  %arrayidx35 = getelementptr inbounds [16 x i8], [16 x i8]* %buf34, i64 0, i64 %40
  %41 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %41 to i32
  %xor37 = xor i32 %conv36, %conv33
  %conv38 = trunc i32 %xor37 to i8
  store i8 %conv38, i8* %arrayidx35, align 1
  br label %for.inc39

for.inc39:                                        ; preds = %for.body31
  %42 = load i64, i64* %i, align 8
  %inc40 = add i64 %42, 1
  store i64 %inc40, i64* %i, align 8
  br label %for.cond28, !llvm.loop !13

for.end41:                                        ; preds = %for.cond28
  %43 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %44 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf42 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %44, i32 0, i32 7
  %arraydecay43 = getelementptr inbounds [16 x i8], [16 x i8]* %buf42, i64 0, i64 0
  %45 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf44 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %45, i32 0, i32 7
  %arraydecay45 = getelementptr inbounds [16 x i8], [16 x i8]* %buf44, i64 0, i64 0
  call void @gcm_mult(%struct.mbedtls_gcm_context* noundef %43, i8* noundef %arraydecay43, i8* noundef %arraydecay45) #6
  %46 = load i64, i64* %add_len.addr, align 8
  %sub46 = sub i64 %46, 16
  store i64 %sub46, i64* %add_len.addr, align 8
  %47 = load i8*, i8** %p, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %47, i64 16
  store i8* %add.ptr47, i8** %p, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %48 = load i64, i64* %add_len.addr, align 8
  %cmp48 = icmp ugt i64 %48, 0
  br i1 %cmp48, label %if.then50, label %if.end65

if.then50:                                        ; preds = %while.end
  store i64 0, i64* %i, align 8
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc62, %if.then50
  %49 = load i64, i64* %i, align 8
  %50 = load i64, i64* %add_len.addr, align 8
  %cmp52 = icmp ult i64 %49, %50
  br i1 %cmp52, label %for.body54, label %for.end64

for.body54:                                       ; preds = %for.cond51
  %51 = load i8*, i8** %p, align 8
  %52 = load i64, i64* %i, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %51, i64 %52
  %53 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %53 to i32
  %54 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf57 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %54, i32 0, i32 7
  %55 = load i64, i64* %i, align 8
  %arrayidx58 = getelementptr inbounds [16 x i8], [16 x i8]* %buf57, i64 0, i64 %55
  %56 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %56 to i32
  %xor60 = xor i32 %conv59, %conv56
  %conv61 = trunc i32 %xor60 to i8
  store i8 %conv61, i8* %arrayidx58, align 1
  br label %for.inc62

for.inc62:                                        ; preds = %for.body54
  %57 = load i64, i64* %i, align 8
  %inc63 = add i64 %57, 1
  store i64 %inc63, i64* %i, align 8
  br label %for.cond51, !llvm.loop !15

for.end64:                                        ; preds = %for.cond51
  br label %if.end65

if.end65:                                         ; preds = %for.end64, %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end65, %if.then
  %58 = load i32, i32* %retval, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_gcm_update(%struct.mbedtls_gcm_context* noundef %ctx, i8* noundef %input, i64 noundef %input_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_gcm_context*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %p = alloca i8*, align 8
  %out_p = alloca i8*, align 8
  %offset = alloca i64, align 8
  %ectr = alloca [16 x i8], align 16
  %use_len = alloca i64, align 8
  store %struct.mbedtls_gcm_context* %ctx, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %input.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %output.addr, align 8
  store i8* %1, i8** %out_p, align 8
  %2 = bitcast [16 x i8]* %ectr to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 16, i1 false)
  %3 = load i64, i64* %output_size.addr, align 8
  %4 = load i64, i64* %input_length.addr, align 8
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load i64, i64* %input_length.addr, align 8
  %6 = load i64*, i64** %output_length.addr, align 8
  store i64 %5, i64* %6, align 8
  %7 = load i64, i64* %input_length.addr, align 8
  %cmp1 = icmp eq i64 %7, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %do.end
  br label %do.body4

do.body4:                                         ; preds = %if.end3
  br label %do.end5

do.end5:                                          ; preds = %do.body4
  br label %do.body6

do.body6:                                         ; preds = %do.end5
  br label %do.end7

do.end7:                                          ; preds = %do.body6
  br label %do.body8

do.body8:                                         ; preds = %do.end7
  br label %do.end9

do.end9:                                          ; preds = %do.body8
  %8 = load i8*, i8** %output.addr, align 8
  %9 = load i8*, i8** %input.addr, align 8
  %cmp10 = icmp ugt i8* %8, %9
  br i1 %cmp10, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %do.end9
  %10 = load i8*, i8** %output.addr, align 8
  %11 = load i8*, i8** %input.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %12 = load i64, i64* %input_length.addr, align 8
  %cmp11 = icmp ult i64 %sub.ptr.sub, %12
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  store i32 -20, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %land.lhs.true, %do.end9
  %13 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %13, i32 0, i32 3
  %14 = load i64, i64* %len, align 8
  %15 = load i64, i64* %input_length.addr, align 8
  %add = add i64 %14, %15
  %16 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %len14 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %16, i32 0, i32 3
  %17 = load i64, i64* %len14, align 8
  %cmp15 = icmp ult i64 %add, %17
  br i1 %cmp15, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %18 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %len16 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %18, i32 0, i32 3
  %19 = load i64, i64* %len16, align 8
  %20 = load i64, i64* %input_length.addr, align 8
  %add17 = add i64 %19, %20
  %cmp18 = icmp ugt i64 %add17, 68719476704
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  store i32 -20, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %lor.lhs.false
  %21 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %len21 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %21, i32 0, i32 3
  %22 = load i64, i64* %len21, align 8
  %cmp22 = icmp eq i64 %22, 0
  br i1 %cmp22, label %land.lhs.true23, label %if.end28

land.lhs.true23:                                  ; preds = %if.end20
  %23 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %add_len = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %23, i32 0, i32 4
  %24 = load i64, i64* %add_len, align 8
  %rem = urem i64 %24, 16
  %cmp24 = icmp ne i64 %rem, 0
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %land.lhs.true23
  %25 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %26 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %26, i32 0, i32 7
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0
  %27 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf26 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %27, i32 0, i32 7
  %arraydecay27 = getelementptr inbounds [16 x i8], [16 x i8]* %buf26, i64 0, i64 0
  call void @gcm_mult(%struct.mbedtls_gcm_context* noundef %25, i8* noundef %arraydecay, i8* noundef %arraydecay27) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %land.lhs.true23, %if.end20
  %28 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %len29 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %28, i32 0, i32 3
  %29 = load i64, i64* %len29, align 8
  %rem30 = urem i64 %29, 16
  store i64 %rem30, i64* %offset, align 8
  %30 = load i64, i64* %offset, align 8
  %cmp31 = icmp ne i64 %30, 0
  br i1 %cmp31, label %if.then32, label %if.end52

if.then32:                                        ; preds = %if.end28
  %31 = load i64, i64* %offset, align 8
  %sub = sub i64 16, %31
  store i64 %sub, i64* %use_len, align 8
  %32 = load i64, i64* %use_len, align 8
  %33 = load i64, i64* %input_length.addr, align 8
  %cmp33 = icmp ugt i64 %32, %33
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then32
  %34 = load i64, i64* %input_length.addr, align 8
  store i64 %34, i64* %use_len, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then32
  %35 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %arraydecay36 = getelementptr inbounds [16 x i8], [16 x i8]* %ectr, i64 0, i64 0
  %36 = load i64, i64* %offset, align 8
  %37 = load i64, i64* %use_len, align 8
  %38 = load i8*, i8** %p, align 8
  %39 = load i8*, i8** %out_p, align 8
  %call = call i32 @gcm_mask(%struct.mbedtls_gcm_context* noundef %35, i8* noundef %arraydecay36, i64 noundef %36, i64 noundef %37, i8* noundef %38, i8* noundef %39) #6
  store i32 %call, i32* %ret, align 4
  %cmp37 = icmp ne i32 %call, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end35
  %40 = load i32, i32* %ret, align 4
  store i32 %40, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end35
  %41 = load i64, i64* %offset, align 8
  %42 = load i64, i64* %use_len, align 8
  %add40 = add i64 %41, %42
  %cmp41 = icmp eq i64 %add40, 16
  br i1 %cmp41, label %if.then42, label %if.end47

if.then42:                                        ; preds = %if.end39
  %43 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %44 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf43 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %44, i32 0, i32 7
  %arraydecay44 = getelementptr inbounds [16 x i8], [16 x i8]* %buf43, i64 0, i64 0
  %45 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf45 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %45, i32 0, i32 7
  %arraydecay46 = getelementptr inbounds [16 x i8], [16 x i8]* %buf45, i64 0, i64 0
  call void @gcm_mult(%struct.mbedtls_gcm_context* noundef %43, i8* noundef %arraydecay44, i8* noundef %arraydecay46) #6
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end39
  %46 = load i64, i64* %use_len, align 8
  %47 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %len48 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %47, i32 0, i32 3
  %48 = load i64, i64* %len48, align 8
  %add49 = add i64 %48, %46
  store i64 %add49, i64* %len48, align 8
  %49 = load i64, i64* %use_len, align 8
  %50 = load i64, i64* %input_length.addr, align 8
  %sub50 = sub i64 %50, %49
  store i64 %sub50, i64* %input_length.addr, align 8
  %51 = load i64, i64* %use_len, align 8
  %52 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %51
  store i8* %add.ptr, i8** %p, align 8
  %53 = load i64, i64* %use_len, align 8
  %54 = load i8*, i8** %out_p, align 8
  %add.ptr51 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %add.ptr51, i8** %out_p, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.end47, %if.end28
  %55 = load i64, i64* %input_length.addr, align 8
  %56 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %len53 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %56, i32 0, i32 3
  %57 = load i64, i64* %len53, align 8
  %add54 = add i64 %57, %55
  store i64 %add54, i64* %len53, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end61, %if.end52
  %58 = load i64, i64* %input_length.addr, align 8
  %cmp55 = icmp uge i64 %58, 16
  br i1 %cmp55, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %59 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %y = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %59, i32 0, i32 6
  %arraydecay56 = getelementptr inbounds [16 x i8], [16 x i8]* %y, i64 0, i64 0
  call void @gcm_incr(i8* noundef %arraydecay56) #6
  %60 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %arraydecay57 = getelementptr inbounds [16 x i8], [16 x i8]* %ectr, i64 0, i64 0
  %61 = load i8*, i8** %p, align 8
  %62 = load i8*, i8** %out_p, align 8
  %call58 = call i32 @gcm_mask(%struct.mbedtls_gcm_context* noundef %60, i8* noundef %arraydecay57, i64 noundef 0, i64 noundef 16, i8* noundef %61, i8* noundef %62) #6
  store i32 %call58, i32* %ret, align 4
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %while.body
  %63 = load i32, i32* %ret, align 4
  store i32 %63, i32* %retval, align 4
  br label %return

if.end61:                                         ; preds = %while.body
  %64 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %65 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf62 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %65, i32 0, i32 7
  %arraydecay63 = getelementptr inbounds [16 x i8], [16 x i8]* %buf62, i64 0, i64 0
  %66 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf64 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %66, i32 0, i32 7
  %arraydecay65 = getelementptr inbounds [16 x i8], [16 x i8]* %buf64, i64 0, i64 0
  call void @gcm_mult(%struct.mbedtls_gcm_context* noundef %64, i8* noundef %arraydecay63, i8* noundef %arraydecay65) #6
  %67 = load i64, i64* %input_length.addr, align 8
  %sub66 = sub i64 %67, 16
  store i64 %sub66, i64* %input_length.addr, align 8
  %68 = load i8*, i8** %p, align 8
  %add.ptr67 = getelementptr inbounds i8, i8* %68, i64 16
  store i8* %add.ptr67, i8** %p, align 8
  %69 = load i8*, i8** %out_p, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %69, i64 16
  store i8* %add.ptr68, i8** %out_p, align 8
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  %70 = load i64, i64* %input_length.addr, align 8
  %cmp69 = icmp ugt i64 %70, 0
  br i1 %cmp69, label %if.then70, label %if.end78

if.then70:                                        ; preds = %while.end
  %71 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %y71 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %71, i32 0, i32 6
  %arraydecay72 = getelementptr inbounds [16 x i8], [16 x i8]* %y71, i64 0, i64 0
  call void @gcm_incr(i8* noundef %arraydecay72) #6
  %72 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %arraydecay73 = getelementptr inbounds [16 x i8], [16 x i8]* %ectr, i64 0, i64 0
  %73 = load i64, i64* %input_length.addr, align 8
  %74 = load i8*, i8** %p, align 8
  %75 = load i8*, i8** %out_p, align 8
  %call74 = call i32 @gcm_mask(%struct.mbedtls_gcm_context* noundef %72, i8* noundef %arraydecay73, i64 noundef 0, i64 noundef %73, i8* noundef %74, i8* noundef %75) #6
  store i32 %call74, i32* %ret, align 4
  %cmp75 = icmp ne i32 %call74, 0
  br i1 %cmp75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.then70
  %76 = load i32, i32* %ret, align 4
  store i32 %76, i32* %retval, align 4
  br label %return

if.end77:                                         ; preds = %if.then70
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %while.end
  %arraydecay79 = getelementptr inbounds [16 x i8], [16 x i8]* %ectr, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay79, i64 noundef 16) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end78, %if.then76, %if.then60, %if.then38, %if.then19, %if.then12, %if.then2, %if.then
  %77 = load i32, i32* %retval, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_mask(%struct.mbedtls_gcm_context* noundef %ctx, i8* noundef %ectr, i64 noundef %offset, i64 noundef %use_len, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_gcm_context*, align 8
  %ectr.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %use_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %olen = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_gcm_context* %ctx, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  store i8* %ectr, i8** %ectr.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i64 %use_len, i64* %use_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 0, i64* %olen, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %y = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %1, i32 0, i32 6
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %y, i64 0, i64 0
  %2 = load i8*, i8** %ectr.addr, align 8
  %call = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay, i64 noundef 16, i8* noundef %2, i64* noundef %olen) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %ectr.addr, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %3, i64 noundef 16) #6
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %use_len.addr, align 8
  %cmp1 = icmp ult i64 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %mode = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %7, i32 0, i32 8
  %8 = load i32, i32* %mode, align 8
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %for.body
  %9 = load i8*, i8** %input.addr, align 8
  %10 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %12 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %12, i32 0, i32 7
  %13 = load i64, i64* %offset.addr, align 8
  %14 = load i64, i64* %i, align 8
  %add = add i64 %13, %14
  %arrayidx4 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 %add
  %15 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %15 to i32
  %xor = xor i32 %conv5, %conv
  %conv6 = trunc i32 %xor to i8
  store i8 %conv6, i8* %arrayidx4, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %for.body
  %16 = load i8*, i8** %ectr.addr, align 8
  %17 = load i64, i64* %offset.addr, align 8
  %18 = load i64, i64* %i, align 8
  %add8 = add i64 %17, %18
  %arrayidx9 = getelementptr inbounds i8, i8* %16, i64 %add8
  %19 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %19 to i32
  %20 = load i8*, i8** %input.addr, align 8
  %21 = load i64, i64* %i, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %20, i64 %21
  %22 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %22 to i32
  %xor13 = xor i32 %conv10, %conv12
  %conv14 = trunc i32 %xor13 to i8
  %23 = load i8*, i8** %output.addr, align 8
  %24 = load i64, i64* %i, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8 %conv14, i8* %arrayidx15, align 1
  %25 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %mode16 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %25, i32 0, i32 8
  %26 = load i32, i32* %mode16, align 8
  %cmp17 = icmp eq i32 %26, 1
  br i1 %cmp17, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.end7
  %27 = load i8*, i8** %output.addr, align 8
  %28 = load i64, i64* %i, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %27, i64 %28
  %29 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %29 to i32
  %30 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf22 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %30, i32 0, i32 7
  %31 = load i64, i64* %offset.addr, align 8
  %32 = load i64, i64* %i, align 8
  %add23 = add i64 %31, %32
  %arrayidx24 = getelementptr inbounds [16 x i8], [16 x i8]* %buf22, i64 0, i64 %add23
  %33 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %33 to i32
  %xor26 = xor i32 %conv25, %conv21
  %conv27 = trunc i32 %xor26 to i8
  store i8 %conv27, i8* %arrayidx24, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %if.end7
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %34 = load i64, i64* %i, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gcm_incr(i8* noundef %y) #0 {
entry:
  %y.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  store i8* %y, i8** %y.addr, align 8
  store i64 16, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ugt i64 %0, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %y.addr, align 8
  %2 = load i64, i64* %i, align 8
  %sub = sub i64 %2, 1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %sub
  %3 = load i8, i8* %arrayidx, align 1
  %inc = add i8 %3, 1
  store i8 %inc, i8* %arrayidx, align 1
  %conv = zext i8 %inc to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i64, i64* %i, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_gcm_finish(%struct.mbedtls_gcm_context* noundef %ctx, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length, i8* noundef %tag, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_gcm_context*, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_len.addr = alloca i64, align 8
  %work_buf = alloca [16 x i8], align 16
  %i = alloca i64, align 8
  %orig_len = alloca i64, align 8
  %orig_add_len = alloca i64, align 8
  store %struct.mbedtls_gcm_context* %ctx, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i8*, i8** %output.addr, align 8
  %1 = load i64, i64* %output_size.addr, align 8
  %2 = load i64*, i64** %output_length.addr, align 8
  store i64 0, i64* %2, align 8
  %3 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %3, i32 0, i32 3
  %4 = load i64, i64* %len, align 8
  %mul = mul i64 %4, 8
  store i64 %mul, i64* %orig_len, align 8
  %5 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %add_len = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %5, i32 0, i32 4
  %6 = load i64, i64* %add_len, align 8
  %mul3 = mul i64 %6, 8
  store i64 %mul3, i64* %orig_add_len, align 8
  %7 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %len4 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %7, i32 0, i32 3
  %8 = load i64, i64* %len4, align 8
  %cmp = icmp eq i64 %8, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end2
  %9 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %add_len5 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %9, i32 0, i32 4
  %10 = load i64, i64* %add_len5, align 8
  %rem = urem i64 %10, 16
  %cmp6 = icmp ne i64 %rem, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %12 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %12, i32 0, i32 7
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0
  %13 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf7 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %13, i32 0, i32 7
  %arraydecay8 = getelementptr inbounds [16 x i8], [16 x i8]* %buf7, i64 0, i64 0
  call void @gcm_mult(%struct.mbedtls_gcm_context* noundef %11, i8* noundef %arraydecay, i8* noundef %arraydecay8) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end2
  %14 = load i64, i64* %tag_len.addr, align 8
  %cmp9 = icmp ugt i64 %14, 16
  br i1 %cmp9, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %15 = load i64, i64* %tag_len.addr, align 8
  %cmp10 = icmp ult i64 %15, 4
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -20, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  %16 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %len13 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %16, i32 0, i32 3
  %17 = load i64, i64* %len13, align 8
  %rem14 = urem i64 %17, 16
  %cmp15 = icmp ne i64 %rem14, 0
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end12
  %18 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %19 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf17 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %19, i32 0, i32 7
  %arraydecay18 = getelementptr inbounds [16 x i8], [16 x i8]* %buf17, i64 0, i64 0
  %20 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf19 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %20, i32 0, i32 7
  %arraydecay20 = getelementptr inbounds [16 x i8], [16 x i8]* %buf19, i64 0, i64 0
  call void @gcm_mult(%struct.mbedtls_gcm_context* noundef %18, i8* noundef %arraydecay18, i8* noundef %arraydecay20) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end12
  %21 = load i8*, i8** %tag.addr, align 8
  %22 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %base_ectr = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %22, i32 0, i32 5
  %arraydecay22 = getelementptr inbounds [16 x i8], [16 x i8]* %base_ectr, i64 0, i64 0
  %23 = load i64, i64* %tag_len.addr, align 8
  %call = call i8* @memcpy(i8* noundef %21, i8* noundef %arraydecay22, i64 noundef %23) #5
  %24 = load i64, i64* %orig_len, align 8
  %tobool = icmp ne i64 %24, 0
  br i1 %tobool, label %if.then25, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end21
  %25 = load i64, i64* %orig_add_len, align 8
  %tobool24 = icmp ne i64 %25, 0
  br i1 %tobool24, label %if.then25, label %if.end118

if.then25:                                        ; preds = %lor.lhs.false23, %if.end21
  %arraydecay26 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 0
  %call27 = call i8* @memset(i8* noundef %arraydecay26, i32 noundef 0, i64 noundef 16) #5
  %26 = load i64, i64* %orig_add_len, align 8
  %shr = lshr i64 %26, 32
  %shr28 = lshr i64 %shr, 24
  %and = and i64 %shr28, 255
  %conv = trunc i64 %and to i8
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 0
  store i8 %conv, i8* %arrayidx, align 16
  %27 = load i64, i64* %orig_add_len, align 8
  %shr29 = lshr i64 %27, 32
  %shr30 = lshr i64 %shr29, 16
  %and31 = and i64 %shr30, 255
  %conv32 = trunc i64 %and31 to i8
  %arrayidx33 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 1
  store i8 %conv32, i8* %arrayidx33, align 1
  %28 = load i64, i64* %orig_add_len, align 8
  %shr34 = lshr i64 %28, 32
  %shr35 = lshr i64 %shr34, 8
  %and36 = and i64 %shr35, 255
  %conv37 = trunc i64 %and36 to i8
  %arrayidx38 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 2
  store i8 %conv37, i8* %arrayidx38, align 2
  %29 = load i64, i64* %orig_add_len, align 8
  %shr39 = lshr i64 %29, 32
  %and40 = and i64 %shr39, 255
  %conv41 = trunc i64 %and40 to i8
  %arrayidx42 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 3
  store i8 %conv41, i8* %arrayidx42, align 1
  %30 = load i64, i64* %orig_add_len, align 8
  %shr43 = lshr i64 %30, 24
  %and44 = and i64 %shr43, 255
  %conv45 = trunc i64 %and44 to i8
  %arrayidx46 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 4
  store i8 %conv45, i8* %arrayidx46, align 4
  %31 = load i64, i64* %orig_add_len, align 8
  %shr47 = lshr i64 %31, 16
  %and48 = and i64 %shr47, 255
  %conv49 = trunc i64 %and48 to i8
  %arrayidx50 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 5
  store i8 %conv49, i8* %arrayidx50, align 1
  %32 = load i64, i64* %orig_add_len, align 8
  %shr51 = lshr i64 %32, 8
  %and52 = and i64 %shr51, 255
  %conv53 = trunc i64 %and52 to i8
  %arrayidx54 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 6
  store i8 %conv53, i8* %arrayidx54, align 2
  %33 = load i64, i64* %orig_add_len, align 8
  %and55 = and i64 %33, 255
  %conv56 = trunc i64 %and55 to i8
  %arrayidx57 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 7
  store i8 %conv56, i8* %arrayidx57, align 1
  %34 = load i64, i64* %orig_len, align 8
  %shr58 = lshr i64 %34, 32
  %shr59 = lshr i64 %shr58, 24
  %and60 = and i64 %shr59, 255
  %conv61 = trunc i64 %and60 to i8
  %arrayidx62 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 8
  store i8 %conv61, i8* %arrayidx62, align 8
  %35 = load i64, i64* %orig_len, align 8
  %shr63 = lshr i64 %35, 32
  %shr64 = lshr i64 %shr63, 16
  %and65 = and i64 %shr64, 255
  %conv66 = trunc i64 %and65 to i8
  %arrayidx67 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 9
  store i8 %conv66, i8* %arrayidx67, align 1
  %36 = load i64, i64* %orig_len, align 8
  %shr68 = lshr i64 %36, 32
  %shr69 = lshr i64 %shr68, 8
  %and70 = and i64 %shr69, 255
  %conv71 = trunc i64 %and70 to i8
  %arrayidx72 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 10
  store i8 %conv71, i8* %arrayidx72, align 2
  %37 = load i64, i64* %orig_len, align 8
  %shr73 = lshr i64 %37, 32
  %and74 = and i64 %shr73, 255
  %conv75 = trunc i64 %and74 to i8
  %arrayidx76 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 11
  store i8 %conv75, i8* %arrayidx76, align 1
  %38 = load i64, i64* %orig_len, align 8
  %shr77 = lshr i64 %38, 24
  %and78 = and i64 %shr77, 255
  %conv79 = trunc i64 %and78 to i8
  %arrayidx80 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 12
  store i8 %conv79, i8* %arrayidx80, align 4
  %39 = load i64, i64* %orig_len, align 8
  %shr81 = lshr i64 %39, 16
  %and82 = and i64 %shr81, 255
  %conv83 = trunc i64 %and82 to i8
  %arrayidx84 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 13
  store i8 %conv83, i8* %arrayidx84, align 1
  %40 = load i64, i64* %orig_len, align 8
  %shr85 = lshr i64 %40, 8
  %and86 = and i64 %shr85, 255
  %conv87 = trunc i64 %and86 to i8
  %arrayidx88 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 14
  store i8 %conv87, i8* %arrayidx88, align 2
  %41 = load i64, i64* %orig_len, align 8
  %and89 = and i64 %41, 255
  %conv90 = trunc i64 %and89 to i8
  %arrayidx91 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 15
  store i8 %conv90, i8* %arrayidx91, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then25
  %42 = load i64, i64* %i, align 8
  %cmp92 = icmp ult i64 %42, 16
  br i1 %cmp92, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load i64, i64* %i, align 8
  %arrayidx94 = getelementptr inbounds [16 x i8], [16 x i8]* %work_buf, i64 0, i64 %43
  %44 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %44 to i32
  %45 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf96 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %45, i32 0, i32 7
  %46 = load i64, i64* %i, align 8
  %arrayidx97 = getelementptr inbounds [16 x i8], [16 x i8]* %buf96, i64 0, i64 %46
  %47 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %47 to i32
  %xor = xor i32 %conv98, %conv95
  %conv99 = trunc i32 %xor to i8
  store i8 %conv99, i8* %arrayidx97, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i64, i64* %i, align 8
  %inc = add i64 %48, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %49 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %50 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf100 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %50, i32 0, i32 7
  %arraydecay101 = getelementptr inbounds [16 x i8], [16 x i8]* %buf100, i64 0, i64 0
  %51 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf102 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %51, i32 0, i32 7
  %arraydecay103 = getelementptr inbounds [16 x i8], [16 x i8]* %buf102, i64 0, i64 0
  call void @gcm_mult(%struct.mbedtls_gcm_context* noundef %49, i8* noundef %arraydecay101, i8* noundef %arraydecay103) #6
  store i64 0, i64* %i, align 8
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc115, %for.end
  %52 = load i64, i64* %i, align 8
  %53 = load i64, i64* %tag_len.addr, align 8
  %cmp105 = icmp ult i64 %52, %53
  br i1 %cmp105, label %for.body107, label %for.end117

for.body107:                                      ; preds = %for.cond104
  %54 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %buf108 = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %54, i32 0, i32 7
  %55 = load i64, i64* %i, align 8
  %arrayidx109 = getelementptr inbounds [16 x i8], [16 x i8]* %buf108, i64 0, i64 %55
  %56 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %56 to i32
  %57 = load i8*, i8** %tag.addr, align 8
  %58 = load i64, i64* %i, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %57, i64 %58
  %59 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %59 to i32
  %xor113 = xor i32 %conv112, %conv110
  %conv114 = trunc i32 %xor113 to i8
  store i8 %conv114, i8* %arrayidx111, align 1
  br label %for.inc115

for.inc115:                                       ; preds = %for.body107
  %60 = load i64, i64* %i, align 8
  %inc116 = add i64 %60, 1
  store i64 %inc116, i64* %i, align 8
  br label %for.cond104, !llvm.loop !20

for.end117:                                       ; preds = %for.cond104
  br label %if.end118

if.end118:                                        ; preds = %for.end117, %lor.lhs.false23
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end118, %if.then11
  %61 = load i32, i32* %retval, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_gcm_crypt_and_tag(%struct.mbedtls_gcm_context* noundef %ctx, i32 noundef %mode, i64 noundef %length, i8* noundef %iv, i64 noundef %iv_len, i8* noundef %add, i64 noundef %add_len, i8* noundef %input, i8* noundef %output, i64 noundef %tag_len, i8* noundef %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_gcm_context*, align 8
  %mode.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %add.addr = alloca i8*, align 8
  %add_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %tag_len.addr = alloca i64, align 8
  %tag.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %olen = alloca i64, align 8
  store %struct.mbedtls_gcm_context* %ctx, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  store i8* %add, i8** %add.addr, align 8
  store i64 %add_len, i64* %add_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  %0 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load i8*, i8** %iv.addr, align 8
  %3 = load i64, i64* %iv_len.addr, align 8
  %call = call i32 @mbedtls_gcm_starts(%struct.mbedtls_gcm_context* noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end10
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end10
  %5 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %6 = load i8*, i8** %add.addr, align 8
  %7 = load i64, i64* %add_len.addr, align 8
  %call11 = call i32 @mbedtls_gcm_update_ad(%struct.mbedtls_gcm_context* noundef %5, i8* noundef %6, i64 noundef %7) #6
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end
  %9 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %10 = load i8*, i8** %input.addr, align 8
  %11 = load i64, i64* %length.addr, align 8
  %12 = load i8*, i8** %output.addr, align 8
  %13 = load i64, i64* %length.addr, align 8
  %call15 = call i32 @mbedtls_gcm_update(%struct.mbedtls_gcm_context* noundef %9, i8* noundef %10, i64 noundef %11, i8* noundef %12, i64 noundef %13, i64* noundef %olen) #6
  store i32 %call15, i32* %ret, align 4
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end14
  %15 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %16 = load i8*, i8** %tag.addr, align 8
  %17 = load i64, i64* %tag_len.addr, align 8
  %call19 = call i32 @mbedtls_gcm_finish(%struct.mbedtls_gcm_context* noundef %15, i8* noundef null, i64 noundef 0, i64* noundef %olen, i8* noundef %16, i64 noundef %17) #6
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end18
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.then21, %if.then17, %if.then13, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_gcm_auth_decrypt(%struct.mbedtls_gcm_context* noundef %ctx, i64 noundef %length, i8* noundef %iv, i64 noundef %iv_len, i8* noundef %add, i64 noundef %add_len, i8* noundef %tag, i64 noundef %tag_len, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_gcm_context*, align 8
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %add.addr = alloca i8*, align 8
  %add_len.addr = alloca i64, align 8
  %tag.addr = alloca i8*, align 8
  %tag_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %check_tag = alloca [16 x i8], align 16
  %i = alloca i64, align 8
  %diff = alloca i32, align 4
  store %struct.mbedtls_gcm_context* %ctx, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  store i8* %add, i8** %add.addr, align 8
  store i64 %add_len, i64* %add_len.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  %0 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %1 = load i64, i64* %length.addr, align 8
  %2 = load i8*, i8** %iv.addr, align 8
  %3 = load i64, i64* %iv_len.addr, align 8
  %4 = load i8*, i8** %add.addr, align 8
  %5 = load i64, i64* %add_len.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %8 = load i64, i64* %tag_len.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %check_tag, i64 0, i64 0
  %call = call i32 @mbedtls_gcm_crypt_and_tag(%struct.mbedtls_gcm_context* noundef %0, i32 noundef 0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i64 noundef %5, i8* noundef %6, i8* noundef %7, i64 noundef %8, i8* noundef %arraydecay) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end10
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end10
  store i32 0, i32* %diff, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* %tag_len.addr, align 8
  %cmp11 = icmp ult i64 %10, %11
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %tag.addr, align 8
  %13 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %13
  %14 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %14 to i32
  %15 = load i64, i64* %i, align 8
  %arrayidx12 = getelementptr inbounds [16 x i8], [16 x i8]* %check_tag, i64 0, i64 %15
  %16 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %16 to i32
  %xor = xor i32 %conv, %conv13
  %17 = load i32, i32* %diff, align 4
  %or = or i32 %17, %xor
  store i32 %or, i32* %diff, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %i, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %diff, align 4
  %cmp14 = icmp ne i32 %19, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.end
  %20 = load i8*, i8** %output.addr, align 8
  %21 = load i64, i64* %length.addr, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %20, i64 noundef %21) #6
  store i32 -18, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_gcm_free(%struct.mbedtls_gcm_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_gcm_context*, align 8
  store %struct.mbedtls_gcm_context* %ctx, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_gcm_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_gcm_context, %struct.mbedtls_gcm_context* %1, i32 0, i32 0
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #6
  %2 = load %struct.mbedtls_gcm_context*, %struct.mbedtls_gcm_context** %ctx.addr, align 8
  %3 = bitcast %struct.mbedtls_gcm_context* %2 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %3, i64 noundef 424) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_gcm_self_test(i32 noundef %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_gcm_context, align 8
  %buf = alloca [64 x i8], align 16
  %tag_buf = alloca [16 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  %cipher = alloca i32, align 4
  %olen = alloca i64, align 8
  %key_len = alloca i32, align 4
  %rest_len = alloca i64, align 8
  %rest_len288 = alloca i64, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 2, i32* %cipher, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc369, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end371

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4
  %mul = mul nsw i32 64, %1
  %add = add nsw i32 128, %mul
  store i32 %add, i32* %key_len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 6
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  call void @mbedtls_gcm_init(%struct.mbedtls_gcm_context* noundef %ctx) #6
  %3 = load i32, i32* %verbose.addr, align 4
  %cmp4 = icmp ne i32 %3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %4 = load i32, i32* %key_len, align 4
  %5 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %4, i32 noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %6 = load i32, i32* %cipher, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @key_index_test_data, i64 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [6 x [32 x i8]], [6 x [32 x i8]]* @key_test_data, i64 0, i64 %idxprom5
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx6, i64 0, i64 0
  %9 = load i32, i32* %key_len, align 4
  %call7 = call i32 @mbedtls_gcm_setkey(%struct.mbedtls_gcm_context* noundef %ctx, i32 noundef %6, i8* noundef %arraydecay, i32 noundef %9) #6
  store i32 %call7, i32* %ret, align 4
  %10 = load i32, i32* %ret, align 4
  %cmp8 = icmp eq i32 %10, -114
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %key_len, align 4
  %cmp9 = icmp eq i32 %11, 192
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %for.end

if.else:                                          ; preds = %land.lhs.true, %if.end
  %12 = load i32, i32* %ret, align 4
  %cmp12 = icmp ne i32 %12, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.else
  br label %exit

if.end14:                                         ; preds = %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14
  %13 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [6 x i64], [6 x i64]* @pt_len_test_data, i64 0, i64 %idxprom16
  %14 = load i64, i64* %arrayidx17, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [6 x i32], [6 x i32]* @iv_index_test_data, i64 0, i64 %idxprom18
  %16 = load i32, i32* %arrayidx19, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [6 x [64 x i8]], [6 x [64 x i8]]* bitcast (<{ [64 x i8], <{ [12 x i8], [52 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }>* @iv_test_data to [6 x [64 x i8]]*), i64 0, i64 %idxprom20
  %arraydecay22 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx21, i64 0, i64 0
  %17 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [6 x i64], [6 x i64]* @iv_len_test_data, i64 0, i64 %idxprom23
  %18 = load i64, i64* %arrayidx24, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [6 x i32], [6 x i32]* @add_index_test_data, i64 0, i64 %idxprom25
  %20 = load i32, i32* %arrayidx26, align 4
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds [6 x [64 x i8]], [6 x [64 x i8]]* bitcast (<{ [64 x i8], <{ [20 x i8], [44 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }>* @additional_test_data to [6 x [64 x i8]]*), i64 0, i64 %idxprom27
  %arraydecay29 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx28, i64 0, i64 0
  %21 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [6 x i64], [6 x i64]* @add_len_test_data, i64 0, i64 %idxprom30
  %22 = load i64, i64* %arrayidx31, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds [6 x i32], [6 x i32]* @pt_index_test_data, i64 0, i64 %idxprom32
  %24 = load i32, i32* %arrayidx33, align 4
  %idxprom34 = sext i32 %24 to i64
  %arrayidx35 = getelementptr inbounds [6 x [64 x i8]], [6 x [64 x i8]]* @pt_test_data, i64 0, i64 %idxprom34
  %arraydecay36 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx35, i64 0, i64 0
  %arraydecay37 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %arraydecay38 = getelementptr inbounds [16 x i8], [16 x i8]* %tag_buf, i64 0, i64 0
  %call39 = call i32 @mbedtls_gcm_crypt_and_tag(%struct.mbedtls_gcm_context* noundef %ctx, i32 noundef 1, i64 noundef %14, i8* noundef %arraydecay22, i64 noundef %18, i8* noundef %arraydecay29, i64 noundef %22, i8* noundef %arraydecay36, i8* noundef %arraydecay37, i64 noundef 16, i8* noundef %arraydecay38) #6
  store i32 %call39, i32* %ret, align 4
  %25 = load i32, i32* %ret, align 4
  %cmp40 = icmp ne i32 %25, 0
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end15
  br label %exit

if.end42:                                         ; preds = %if.end15
  %arraydecay43 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %26 = load i32, i32* %j, align 4
  %mul44 = mul nsw i32 %26, 6
  %27 = load i32, i32* %i, align 4
  %add45 = add nsw i32 %mul44, %27
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds [18 x [64 x i8]], [18 x [64 x i8]]* bitcast (<{ [64 x i8], <{ [16 x i8], [48 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], <{ [15 x i8], [49 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], <{ [16 x i8], [48 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }>* @ct_test_data to [18 x [64 x i8]]*), i64 0, i64 %idxprom46
  %arraydecay48 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx47, i64 0, i64 0
  %28 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %28 to i64
  %arrayidx50 = getelementptr inbounds [6 x i64], [6 x i64]* @pt_len_test_data, i64 0, i64 %idxprom49
  %29 = load i64, i64* %arrayidx50, align 8
  %call51 = call i32 @memcmp(i8* noundef %arraydecay43, i8* noundef %arraydecay48, i64 noundef %29) #7
  %cmp52 = icmp ne i32 %call51, 0
  br i1 %cmp52, label %if.then61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end42
  %arraydecay53 = getelementptr inbounds [16 x i8], [16 x i8]* %tag_buf, i64 0, i64 0
  %30 = load i32, i32* %j, align 4
  %mul54 = mul nsw i32 %30, 6
  %31 = load i32, i32* %i, align 4
  %add55 = add nsw i32 %mul54, %31
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds [18 x [16 x i8]], [18 x [16 x i8]]* @tag_test_data, i64 0, i64 %idxprom56
  %arraydecay58 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx57, i64 0, i64 0
  %call59 = call i32 @memcmp(i8* noundef %arraydecay53, i8* noundef %arraydecay58, i64 noundef 16) #7
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %lor.lhs.false, %if.end42
  store i32 1, i32* %ret, align 4
  br label %exit

if.end62:                                         ; preds = %lor.lhs.false
  call void @mbedtls_gcm_free(%struct.mbedtls_gcm_context* noundef %ctx) #6
  %32 = load i32, i32* %verbose.addr, align 4
  %cmp63 = icmp ne i32 %32, 0
  br i1 %cmp63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end62
  %call65 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end62
  call void @mbedtls_gcm_init(%struct.mbedtls_gcm_context* noundef %ctx) #6
  %33 = load i32, i32* %verbose.addr, align 4
  %cmp67 = icmp ne i32 %33, 0
  br i1 %cmp67, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end66
  %34 = load i32, i32* %key_len, align 4
  %35 = load i32, i32* %i, align 4
  %call69 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %34, i32 noundef %35, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end66
  %36 = load i32, i32* %cipher, align 4
  %37 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %37 to i64
  %arrayidx72 = getelementptr inbounds [6 x i32], [6 x i32]* @key_index_test_data, i64 0, i64 %idxprom71
  %38 = load i32, i32* %arrayidx72, align 4
  %idxprom73 = sext i32 %38 to i64
  %arrayidx74 = getelementptr inbounds [6 x [32 x i8]], [6 x [32 x i8]]* @key_test_data, i64 0, i64 %idxprom73
  %arraydecay75 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx74, i64 0, i64 0
  %39 = load i32, i32* %key_len, align 4
  %call76 = call i32 @mbedtls_gcm_setkey(%struct.mbedtls_gcm_context* noundef %ctx, i32 noundef %36, i8* noundef %arraydecay75, i32 noundef %39) #6
  store i32 %call76, i32* %ret, align 4
  %40 = load i32, i32* %ret, align 4
  %cmp77 = icmp ne i32 %40, 0
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end70
  br label %exit

if.end79:                                         ; preds = %if.end70
  %41 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %41 to i64
  %arrayidx81 = getelementptr inbounds [6 x i64], [6 x i64]* @pt_len_test_data, i64 0, i64 %idxprom80
  %42 = load i64, i64* %arrayidx81, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %43 to i64
  %arrayidx83 = getelementptr inbounds [6 x i32], [6 x i32]* @iv_index_test_data, i64 0, i64 %idxprom82
  %44 = load i32, i32* %arrayidx83, align 4
  %idxprom84 = sext i32 %44 to i64
  %arrayidx85 = getelementptr inbounds [6 x [64 x i8]], [6 x [64 x i8]]* bitcast (<{ [64 x i8], <{ [12 x i8], [52 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }>* @iv_test_data to [6 x [64 x i8]]*), i64 0, i64 %idxprom84
  %arraydecay86 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx85, i64 0, i64 0
  %45 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %45 to i64
  %arrayidx88 = getelementptr inbounds [6 x i64], [6 x i64]* @iv_len_test_data, i64 0, i64 %idxprom87
  %46 = load i64, i64* %arrayidx88, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %47 to i64
  %arrayidx90 = getelementptr inbounds [6 x i32], [6 x i32]* @add_index_test_data, i64 0, i64 %idxprom89
  %48 = load i32, i32* %arrayidx90, align 4
  %idxprom91 = sext i32 %48 to i64
  %arrayidx92 = getelementptr inbounds [6 x [64 x i8]], [6 x [64 x i8]]* bitcast (<{ [64 x i8], <{ [20 x i8], [44 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }>* @additional_test_data to [6 x [64 x i8]]*), i64 0, i64 %idxprom91
  %arraydecay93 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx92, i64 0, i64 0
  %49 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %49 to i64
  %arrayidx95 = getelementptr inbounds [6 x i64], [6 x i64]* @add_len_test_data, i64 0, i64 %idxprom94
  %50 = load i64, i64* %arrayidx95, align 8
  %51 = load i32, i32* %j, align 4
  %mul96 = mul nsw i32 %51, 6
  %52 = load i32, i32* %i, align 4
  %add97 = add nsw i32 %mul96, %52
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds [18 x [64 x i8]], [18 x [64 x i8]]* bitcast (<{ [64 x i8], <{ [16 x i8], [48 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], <{ [15 x i8], [49 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], <{ [16 x i8], [48 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }>* @ct_test_data to [18 x [64 x i8]]*), i64 0, i64 %idxprom98
  %arraydecay100 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx99, i64 0, i64 0
  %arraydecay101 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %arraydecay102 = getelementptr inbounds [16 x i8], [16 x i8]* %tag_buf, i64 0, i64 0
  %call103 = call i32 @mbedtls_gcm_crypt_and_tag(%struct.mbedtls_gcm_context* noundef %ctx, i32 noundef 0, i64 noundef %42, i8* noundef %arraydecay86, i64 noundef %46, i8* noundef %arraydecay93, i64 noundef %50, i8* noundef %arraydecay100, i8* noundef %arraydecay101, i64 noundef 16, i8* noundef %arraydecay102) #6
  store i32 %call103, i32* %ret, align 4
  %53 = load i32, i32* %ret, align 4
  %cmp104 = icmp ne i32 %53, 0
  br i1 %cmp104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end79
  br label %exit

if.end106:                                        ; preds = %if.end79
  %arraydecay107 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %54 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %54 to i64
  %arrayidx109 = getelementptr inbounds [6 x i32], [6 x i32]* @pt_index_test_data, i64 0, i64 %idxprom108
  %55 = load i32, i32* %arrayidx109, align 4
  %idxprom110 = sext i32 %55 to i64
  %arrayidx111 = getelementptr inbounds [6 x [64 x i8]], [6 x [64 x i8]]* @pt_test_data, i64 0, i64 %idxprom110
  %arraydecay112 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx111, i64 0, i64 0
  %56 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %56 to i64
  %arrayidx114 = getelementptr inbounds [6 x i64], [6 x i64]* @pt_len_test_data, i64 0, i64 %idxprom113
  %57 = load i64, i64* %arrayidx114, align 8
  %call115 = call i32 @memcmp(i8* noundef %arraydecay107, i8* noundef %arraydecay112, i64 noundef %57) #7
  %cmp116 = icmp ne i32 %call115, 0
  br i1 %cmp116, label %if.then126, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %if.end106
  %arraydecay118 = getelementptr inbounds [16 x i8], [16 x i8]* %tag_buf, i64 0, i64 0
  %58 = load i32, i32* %j, align 4
  %mul119 = mul nsw i32 %58, 6
  %59 = load i32, i32* %i, align 4
  %add120 = add nsw i32 %mul119, %59
  %idxprom121 = sext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds [18 x [16 x i8]], [18 x [16 x i8]]* @tag_test_data, i64 0, i64 %idxprom121
  %arraydecay123 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx122, i64 0, i64 0
  %call124 = call i32 @memcmp(i8* noundef %arraydecay118, i8* noundef %arraydecay123, i64 noundef 16) #7
  %cmp125 = icmp ne i32 %call124, 0
  br i1 %cmp125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %lor.lhs.false117, %if.end106
  store i32 1, i32* %ret, align 4
  br label %exit

if.end127:                                        ; preds = %lor.lhs.false117
  call void @mbedtls_gcm_free(%struct.mbedtls_gcm_context* noundef %ctx) #6
  %60 = load i32, i32* %verbose.addr, align 4
  %cmp128 = icmp ne i32 %60, 0
  br i1 %cmp128, label %if.then129, label %if.end131

if.then129:                                       ; preds = %if.end127
  %call130 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.end127
  call void @mbedtls_gcm_init(%struct.mbedtls_gcm_context* noundef %ctx) #6
  %61 = load i32, i32* %verbose.addr, align 4
  %cmp132 = icmp ne i32 %61, 0
  br i1 %cmp132, label %if.then133, label %if.end135

if.then133:                                       ; preds = %if.end131
  %62 = load i32, i32* %key_len, align 4
  %63 = load i32, i32* %i, align 4
  %call134 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 noundef %62, i32 noundef %63, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.end131
  %64 = load i32, i32* %cipher, align 4
  %65 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %65 to i64
  %arrayidx137 = getelementptr inbounds [6 x i32], [6 x i32]* @key_index_test_data, i64 0, i64 %idxprom136
  %66 = load i32, i32* %arrayidx137, align 4
  %idxprom138 = sext i32 %66 to i64
  %arrayidx139 = getelementptr inbounds [6 x [32 x i8]], [6 x [32 x i8]]* @key_test_data, i64 0, i64 %idxprom138
  %arraydecay140 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx139, i64 0, i64 0
  %67 = load i32, i32* %key_len, align 4
  %call141 = call i32 @mbedtls_gcm_setkey(%struct.mbedtls_gcm_context* noundef %ctx, i32 noundef %64, i8* noundef %arraydecay140, i32 noundef %67) #6
  store i32 %call141, i32* %ret, align 4
  %68 = load i32, i32* %ret, align 4
  %cmp142 = icmp ne i32 %68, 0
  br i1 %cmp142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.end135
  br label %exit

if.end144:                                        ; preds = %if.end135
  %69 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %69 to i64
  %arrayidx146 = getelementptr inbounds [6 x i32], [6 x i32]* @iv_index_test_data, i64 0, i64 %idxprom145
  %70 = load i32, i32* %arrayidx146, align 4
  %idxprom147 = sext i32 %70 to i64
  %arrayidx148 = getelementptr inbounds [6 x [64 x i8]], [6 x [64 x i8]]* bitcast (<{ [64 x i8], <{ [12 x i8], [52 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }>* @iv_test_data to [6 x [64 x i8]]*), i64 0, i64 %idxprom147
  %arraydecay149 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx148, i64 0, i64 0
  %71 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %71 to i64
  %arrayidx151 = getelementptr inbounds [6 x i64], [6 x i64]* @iv_len_test_data, i64 0, i64 %idxprom150
  %72 = load i64, i64* %arrayidx151, align 8
  %call152 = call i32 @mbedtls_gcm_starts(%struct.mbedtls_gcm_context* noundef %ctx, i32 noundef 1, i8* noundef %arraydecay149, i64 noundef %72) #6
  store i32 %call152, i32* %ret, align 4
  %73 = load i32, i32* %ret, align 4
  %cmp153 = icmp ne i32 %73, 0
  br i1 %cmp153, label %if.then154, label %if.end155

if.then154:                                       ; preds = %if.end144
  br label %exit

if.end155:                                        ; preds = %if.end144
  %74 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %74 to i64
  %arrayidx157 = getelementptr inbounds [6 x i32], [6 x i32]* @add_index_test_data, i64 0, i64 %idxprom156
  %75 = load i32, i32* %arrayidx157, align 4
  %idxprom158 = sext i32 %75 to i64
  %arrayidx159 = getelementptr inbounds [6 x [64 x i8]], [6 x [64 x i8]]* bitcast (<{ [64 x i8], <{ [20 x i8], [44 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }>* @additional_test_data to [6 x [64 x i8]]*), i64 0, i64 %idxprom158
  %arraydecay160 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx159, i64 0, i64 0
  %76 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %76 to i64
  %arrayidx162 = getelementptr inbounds [6 x i64], [6 x i64]* @add_len_test_data, i64 0, i64 %idxprom161
  %77 = load i64, i64* %arrayidx162, align 8
  %call163 = call i32 @mbedtls_gcm_update_ad(%struct.mbedtls_gcm_context* noundef %ctx, i8* noundef %arraydecay160, i64 noundef %77) #6
  store i32 %call163, i32* %ret, align 4
  %78 = load i32, i32* %ret, align 4
  %cmp164 = icmp ne i32 %78, 0
  br i1 %cmp164, label %if.then165, label %if.end166

if.then165:                                       ; preds = %if.end155
  br label %exit

if.end166:                                        ; preds = %if.end155
  %79 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %79 to i64
  %arrayidx168 = getelementptr inbounds [6 x i64], [6 x i64]* @pt_len_test_data, i64 0, i64 %idxprom167
  %80 = load i64, i64* %arrayidx168, align 8
  %cmp169 = icmp ugt i64 %80, 32
  br i1 %cmp169, label %if.then170, label %if.else200

if.then170:                                       ; preds = %if.end166
  %81 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %81 to i64
  %arrayidx172 = getelementptr inbounds [6 x i64], [6 x i64]* @pt_len_test_data, i64 0, i64 %idxprom171
  %82 = load i64, i64* %arrayidx172, align 8
  %sub = sub i64 %82, 32
  store i64 %sub, i64* %rest_len, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %83 to i64
  %arrayidx174 = getelementptr inbounds [6 x i32], [6 x i32]* @pt_index_test_data, i64 0, i64 %idxprom173
  %84 = load i32, i32* %arrayidx174, align 4
  %idxprom175 = sext i32 %84 to i64
  %arrayidx176 = getelementptr inbounds [6 x [64 x i8]], [6 x [64 x i8]]* @pt_test_data, i64 0, i64 %idxprom175
  %arraydecay177 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx176, i64 0, i64 0
  %arraydecay178 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call179 = call i32 @mbedtls_gcm_update(%struct.mbedtls_gcm_context* noundef %ctx, i8* noundef %arraydecay177, i64 noundef 32, i8* noundef %arraydecay178, i64 noundef 64, i64* noundef %olen) #6
  store i32 %call179, i32* %ret, align 4
  %85 = load i32, i32* %ret, align 4
  %cmp180 = icmp ne i32 %85, 0
  br i1 %cmp180, label %if.then181, label %if.end182

if.then181:                                       ; preds = %if.then170
  br label %exit

if.end182:                                        ; preds = %if.then170
  %86 = load i64, i64* %olen, align 8
  %cmp183 = icmp ne i64 %86, 32
  br i1 %cmp183, label %if.then184, label %if.end185

if.then184:                                       ; preds = %if.end182
  br label %exit

if.end185:                                        ; preds = %if.end182
  %87 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %87 to i64
  %arrayidx187 = getelementptr inbounds [6 x i32], [6 x i32]* @pt_index_test_data, i64 0, i64 %idxprom186
  %88 = load i32, i32* %arrayidx187, align 4
  %idxprom188 = sext i32 %88 to i64
  %arrayidx189 = getelementptr inbounds [6 x [64 x i8]], [6 x [64 x i8]]* @pt_test_data, i64 0, i64 %idxprom188
  %arraydecay190 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx189, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay190, i64 32
  %89 = load i64, i64* %rest_len, align 8
  %arraydecay191 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %add.ptr192 = getelementptr inbounds i8, i8* %arraydecay191, i64 32
  %call193 = call i32 @mbedtls_gcm_update(%struct.mbedtls_gcm_context* noundef %ctx, i8* noundef %add.ptr, i64 noundef %89, i8* noundef %add.ptr192, i64 noundef 32, i64* noundef %olen) #6
  store i32 %call193, i32* %ret, align 4
  %90 = load i32, i32* %ret, align 4
  %cmp194 = icmp ne i32 %90, 0
  br i1 %cmp194, label %if.then195, label %if.end196

if.then195:                                       ; preds = %if.end185
  br label %exit

if.end196:                                        ; preds = %if.end185
  %91 = load i64, i64* %olen, align 8
  %92 = load i64, i64* %rest_len, align 8
  %cmp197 = icmp ne i64 %91, %92
  br i1 %cmp197, label %if.then198, label %if.end199

if.then198:                                       ; preds = %if.end196
  br label %exit

if.end199:                                        ; preds = %if.end196
  br label %if.end218

if.else200:                                       ; preds = %if.end166
  %93 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %93 to i64
  %arrayidx202 = getelementptr inbounds [6 x i32], [6 x i32]* @pt_index_test_data, i64 0, i64 %idxprom201
  %94 = load i32, i32* %arrayidx202, align 4
  %idxprom203 = sext i32 %94 to i64
  %arrayidx204 = getelementptr inbounds [6 x [64 x i8]], [6 x [64 x i8]]* @pt_test_data, i64 0, i64 %idxprom203
  %arraydecay205 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx204, i64 0, i64 0
  %95 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %95 to i64
  %arrayidx207 = getelementptr inbounds [6 x i64], [6 x i64]* @pt_len_test_data, i64 0, i64 %idxprom206
  %96 = load i64, i64* %arrayidx207, align 8
  %arraydecay208 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call209 = call i32 @mbedtls_gcm_update(%struct.mbedtls_gcm_context* noundef %ctx, i8* noundef %arraydecay205, i64 noundef %96, i8* noundef %arraydecay208, i64 noundef 64, i64* noundef %olen) #6
  store i32 %call209, i32* %ret, align 4
  %97 = load i32, i32* %ret, align 4
  %cmp210 = icmp ne i32 %97, 0
  br i1 %cmp210, label %if.then211, label %if.end212

if.then211:                                       ; preds = %if.else200
  br label %exit

if.end212:                                        ; preds = %if.else200
  %98 = load i64, i64* %olen, align 8
  %99 = load i32, i32* %i, align 4
  %idxprom213 = sext i32 %99 to i64
  %arrayidx214 = getelementptr inbounds [6 x i64], [6 x i64]* @pt_len_test_data, i64 0, i64 %idxprom213
  %100 = load i64, i64* %arrayidx214, align 8
  %cmp215 = icmp ne i64 %98, %100
  br i1 %cmp215, label %if.then216, label %if.end217

if.then216:                                       ; preds = %if.end212
  br label %exit

if.end217:                                        ; preds = %if.end212
  br label %if.end218

if.end218:                                        ; preds = %if.end217, %if.end199
  %arraydecay219 = getelementptr inbounds [16 x i8], [16 x i8]* %tag_buf, i64 0, i64 0
  %call220 = call i32 @mbedtls_gcm_finish(%struct.mbedtls_gcm_context* noundef %ctx, i8* noundef null, i64 noundef 0, i64* noundef %olen, i8* noundef %arraydecay219, i64 noundef 16) #6
  store i32 %call220, i32* %ret, align 4
  %101 = load i32, i32* %ret, align 4
  %cmp221 = icmp ne i32 %101, 0
  br i1 %cmp221, label %if.then222, label %if.end223

if.then222:                                       ; preds = %if.end218
  br label %exit

if.end223:                                        ; preds = %if.end218
  %arraydecay224 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %102 = load i32, i32* %j, align 4
  %mul225 = mul nsw i32 %102, 6
  %103 = load i32, i32* %i, align 4
  %add226 = add nsw i32 %mul225, %103
  %idxprom227 = sext i32 %add226 to i64
  %arrayidx228 = getelementptr inbounds [18 x [64 x i8]], [18 x [64 x i8]]* bitcast (<{ [64 x i8], <{ [16 x i8], [48 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], <{ [15 x i8], [49 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], <{ [16 x i8], [48 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }>* @ct_test_data to [18 x [64 x i8]]*), i64 0, i64 %idxprom227
  %arraydecay229 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx228, i64 0, i64 0
  %104 = load i32, i32* %i, align 4
  %idxprom230 = sext i32 %104 to i64
  %arrayidx231 = getelementptr inbounds [6 x i64], [6 x i64]* @pt_len_test_data, i64 0, i64 %idxprom230
  %105 = load i64, i64* %arrayidx231, align 8
  %call232 = call i32 @memcmp(i8* noundef %arraydecay224, i8* noundef %arraydecay229, i64 noundef %105) #7
  %cmp233 = icmp ne i32 %call232, 0
  br i1 %cmp233, label %if.then243, label %lor.lhs.false234

lor.lhs.false234:                                 ; preds = %if.end223
  %arraydecay235 = getelementptr inbounds [16 x i8], [16 x i8]* %tag_buf, i64 0, i64 0
  %106 = load i32, i32* %j, align 4
  %mul236 = mul nsw i32 %106, 6
  %107 = load i32, i32* %i, align 4
  %add237 = add nsw i32 %mul236, %107
  %idxprom238 = sext i32 %add237 to i64
  %arrayidx239 = getelementptr inbounds [18 x [16 x i8]], [18 x [16 x i8]]* @tag_test_data, i64 0, i64 %idxprom238
  %arraydecay240 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx239, i64 0, i64 0
  %call241 = call i32 @memcmp(i8* noundef %arraydecay235, i8* noundef %arraydecay240, i64 noundef 16) #7
  %cmp242 = icmp ne i32 %call241, 0
  br i1 %cmp242, label %if.then243, label %if.end244

if.then243:                                       ; preds = %lor.lhs.false234, %if.end223
  store i32 1, i32* %ret, align 4
  br label %exit

if.end244:                                        ; preds = %lor.lhs.false234
  call void @mbedtls_gcm_free(%struct.mbedtls_gcm_context* noundef %ctx) #6
  %108 = load i32, i32* %verbose.addr, align 4
  %cmp245 = icmp ne i32 %108, 0
  br i1 %cmp245, label %if.then246, label %if.end248

if.then246:                                       ; preds = %if.end244
  %call247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %if.end248

if.end248:                                        ; preds = %if.then246, %if.end244
  call void @mbedtls_gcm_init(%struct.mbedtls_gcm_context* noundef %ctx) #6
  %109 = load i32, i32* %verbose.addr, align 4
  %cmp249 = icmp ne i32 %109, 0
  br i1 %cmp249, label %if.then250, label %if.end252

if.then250:                                       ; preds = %if.end248
  %110 = load i32, i32* %key_len, align 4
  %111 = load i32, i32* %i, align 4
  %call251 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 noundef %110, i32 noundef %111, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %if.end252

if.end252:                                        ; preds = %if.then250, %if.end248
  %112 = load i32, i32* %cipher, align 4
  %113 = load i32, i32* %i, align 4
  %idxprom253 = sext i32 %113 to i64
  %arrayidx254 = getelementptr inbounds [6 x i32], [6 x i32]* @key_index_test_data, i64 0, i64 %idxprom253
  %114 = load i32, i32* %arrayidx254, align 4
  %idxprom255 = sext i32 %114 to i64
  %arrayidx256 = getelementptr inbounds [6 x [32 x i8]], [6 x [32 x i8]]* @key_test_data, i64 0, i64 %idxprom255
  %arraydecay257 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx256, i64 0, i64 0
  %115 = load i32, i32* %key_len, align 4
  %call258 = call i32 @mbedtls_gcm_setkey(%struct.mbedtls_gcm_context* noundef %ctx, i32 noundef %112, i8* noundef %arraydecay257, i32 noundef %115) #6
  store i32 %call258, i32* %ret, align 4
  %116 = load i32, i32* %ret, align 4
  %cmp259 = icmp ne i32 %116, 0
  br i1 %cmp259, label %if.then260, label %if.end261

if.then260:                                       ; preds = %if.end252
  br label %exit

if.end261:                                        ; preds = %if.end252
  %117 = load i32, i32* %i, align 4
  %idxprom262 = sext i32 %117 to i64
  %arrayidx263 = getelementptr inbounds [6 x i32], [6 x i32]* @iv_index_test_data, i64 0, i64 %idxprom262
  %118 = load i32, i32* %arrayidx263, align 4
  %idxprom264 = sext i32 %118 to i64
  %arrayidx265 = getelementptr inbounds [6 x [64 x i8]], [6 x [64 x i8]]* bitcast (<{ [64 x i8], <{ [12 x i8], [52 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }>* @iv_test_data to [6 x [64 x i8]]*), i64 0, i64 %idxprom264
  %arraydecay266 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx265, i64 0, i64 0
  %119 = load i32, i32* %i, align 4
  %idxprom267 = sext i32 %119 to i64
  %arrayidx268 = getelementptr inbounds [6 x i64], [6 x i64]* @iv_len_test_data, i64 0, i64 %idxprom267
  %120 = load i64, i64* %arrayidx268, align 8
  %call269 = call i32 @mbedtls_gcm_starts(%struct.mbedtls_gcm_context* noundef %ctx, i32 noundef 0, i8* noundef %arraydecay266, i64 noundef %120) #6
  store i32 %call269, i32* %ret, align 4
  %121 = load i32, i32* %ret, align 4
  %cmp270 = icmp ne i32 %121, 0
  br i1 %cmp270, label %if.then271, label %if.end272

if.then271:                                       ; preds = %if.end261
  br label %exit

if.end272:                                        ; preds = %if.end261
  %122 = load i32, i32* %i, align 4
  %idxprom273 = sext i32 %122 to i64
  %arrayidx274 = getelementptr inbounds [6 x i32], [6 x i32]* @add_index_test_data, i64 0, i64 %idxprom273
  %123 = load i32, i32* %arrayidx274, align 4
  %idxprom275 = sext i32 %123 to i64
  %arrayidx276 = getelementptr inbounds [6 x [64 x i8]], [6 x [64 x i8]]* bitcast (<{ [64 x i8], <{ [20 x i8], [44 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }>* @additional_test_data to [6 x [64 x i8]]*), i64 0, i64 %idxprom275
  %arraydecay277 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx276, i64 0, i64 0
  %124 = load i32, i32* %i, align 4
  %idxprom278 = sext i32 %124 to i64
  %arrayidx279 = getelementptr inbounds [6 x i64], [6 x i64]* @add_len_test_data, i64 0, i64 %idxprom278
  %125 = load i64, i64* %arrayidx279, align 8
  %call280 = call i32 @mbedtls_gcm_update_ad(%struct.mbedtls_gcm_context* noundef %ctx, i8* noundef %arraydecay277, i64 noundef %125) #6
  store i32 %call280, i32* %ret, align 4
  %126 = load i32, i32* %ret, align 4
  %cmp281 = icmp ne i32 %126, 0
  br i1 %cmp281, label %if.then282, label %if.end283

if.then282:                                       ; preds = %if.end272
  br label %exit

if.end283:                                        ; preds = %if.end272
  %127 = load i32, i32* %i, align 4
  %idxprom284 = sext i32 %127 to i64
  %arrayidx285 = getelementptr inbounds [6 x i64], [6 x i64]* @pt_len_test_data, i64 0, i64 %idxprom284
  %128 = load i64, i64* %arrayidx285, align 8
  %cmp286 = icmp ugt i64 %128, 32
  br i1 %cmp286, label %if.then287, label %if.else320

if.then287:                                       ; preds = %if.end283
  %129 = load i32, i32* %i, align 4
  %idxprom289 = sext i32 %129 to i64
  %arrayidx290 = getelementptr inbounds [6 x i64], [6 x i64]* @pt_len_test_data, i64 0, i64 %idxprom289
  %130 = load i64, i64* %arrayidx290, align 8
  %sub291 = sub i64 %130, 32
  store i64 %sub291, i64* %rest_len288, align 8
  %131 = load i32, i32* %j, align 4
  %mul292 = mul nsw i32 %131, 6
  %132 = load i32, i32* %i, align 4
  %add293 = add nsw i32 %mul292, %132
  %idxprom294 = sext i32 %add293 to i64
  %arrayidx295 = getelementptr inbounds [18 x [64 x i8]], [18 x [64 x i8]]* bitcast (<{ [64 x i8], <{ [16 x i8], [48 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], <{ [15 x i8], [49 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], <{ [16 x i8], [48 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }>* @ct_test_data to [18 x [64 x i8]]*), i64 0, i64 %idxprom294
  %arraydecay296 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx295, i64 0, i64 0
  %arraydecay297 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call298 = call i32 @mbedtls_gcm_update(%struct.mbedtls_gcm_context* noundef %ctx, i8* noundef %arraydecay296, i64 noundef 32, i8* noundef %arraydecay297, i64 noundef 64, i64* noundef %olen) #6
  store i32 %call298, i32* %ret, align 4
  %133 = load i32, i32* %ret, align 4
  %cmp299 = icmp ne i32 %133, 0
  br i1 %cmp299, label %if.then300, label %if.end301

if.then300:                                       ; preds = %if.then287
  br label %exit

if.end301:                                        ; preds = %if.then287
  %134 = load i64, i64* %olen, align 8
  %cmp302 = icmp ne i64 %134, 32
  br i1 %cmp302, label %if.then303, label %if.end304

if.then303:                                       ; preds = %if.end301
  br label %exit

if.end304:                                        ; preds = %if.end301
  %135 = load i32, i32* %j, align 4
  %mul305 = mul nsw i32 %135, 6
  %136 = load i32, i32* %i, align 4
  %add306 = add nsw i32 %mul305, %136
  %idxprom307 = sext i32 %add306 to i64
  %arrayidx308 = getelementptr inbounds [18 x [64 x i8]], [18 x [64 x i8]]* bitcast (<{ [64 x i8], <{ [16 x i8], [48 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], <{ [15 x i8], [49 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], <{ [16 x i8], [48 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }>* @ct_test_data to [18 x [64 x i8]]*), i64 0, i64 %idxprom307
  %arraydecay309 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx308, i64 0, i64 0
  %add.ptr310 = getelementptr inbounds i8, i8* %arraydecay309, i64 32
  %137 = load i64, i64* %rest_len288, align 8
  %arraydecay311 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %add.ptr312 = getelementptr inbounds i8, i8* %arraydecay311, i64 32
  %call313 = call i32 @mbedtls_gcm_update(%struct.mbedtls_gcm_context* noundef %ctx, i8* noundef %add.ptr310, i64 noundef %137, i8* noundef %add.ptr312, i64 noundef 32, i64* noundef %olen) #6
  store i32 %call313, i32* %ret, align 4
  %138 = load i32, i32* %ret, align 4
  %cmp314 = icmp ne i32 %138, 0
  br i1 %cmp314, label %if.then315, label %if.end316

if.then315:                                       ; preds = %if.end304
  br label %exit

if.end316:                                        ; preds = %if.end304
  %139 = load i64, i64* %olen, align 8
  %140 = load i64, i64* %rest_len288, align 8
  %cmp317 = icmp ne i64 %139, %140
  br i1 %cmp317, label %if.then318, label %if.end319

if.then318:                                       ; preds = %if.end316
  br label %exit

if.end319:                                        ; preds = %if.end316
  br label %if.end338

if.else320:                                       ; preds = %if.end283
  %141 = load i32, i32* %j, align 4
  %mul321 = mul nsw i32 %141, 6
  %142 = load i32, i32* %i, align 4
  %add322 = add nsw i32 %mul321, %142
  %idxprom323 = sext i32 %add322 to i64
  %arrayidx324 = getelementptr inbounds [18 x [64 x i8]], [18 x [64 x i8]]* bitcast (<{ [64 x i8], <{ [16 x i8], [48 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], <{ [15 x i8], [49 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], <{ [16 x i8], [48 x i8] }>, [64 x i8], [64 x i8], [64 x i8], [64 x i8] }>* @ct_test_data to [18 x [64 x i8]]*), i64 0, i64 %idxprom323
  %arraydecay325 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx324, i64 0, i64 0
  %143 = load i32, i32* %i, align 4
  %idxprom326 = sext i32 %143 to i64
  %arrayidx327 = getelementptr inbounds [6 x i64], [6 x i64]* @pt_len_test_data, i64 0, i64 %idxprom326
  %144 = load i64, i64* %arrayidx327, align 8
  %arraydecay328 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call329 = call i32 @mbedtls_gcm_update(%struct.mbedtls_gcm_context* noundef %ctx, i8* noundef %arraydecay325, i64 noundef %144, i8* noundef %arraydecay328, i64 noundef 64, i64* noundef %olen) #6
  store i32 %call329, i32* %ret, align 4
  %145 = load i32, i32* %ret, align 4
  %cmp330 = icmp ne i32 %145, 0
  br i1 %cmp330, label %if.then331, label %if.end332

if.then331:                                       ; preds = %if.else320
  br label %exit

if.end332:                                        ; preds = %if.else320
  %146 = load i64, i64* %olen, align 8
  %147 = load i32, i32* %i, align 4
  %idxprom333 = sext i32 %147 to i64
  %arrayidx334 = getelementptr inbounds [6 x i64], [6 x i64]* @pt_len_test_data, i64 0, i64 %idxprom333
  %148 = load i64, i64* %arrayidx334, align 8
  %cmp335 = icmp ne i64 %146, %148
  br i1 %cmp335, label %if.then336, label %if.end337

if.then336:                                       ; preds = %if.end332
  br label %exit

if.end337:                                        ; preds = %if.end332
  br label %if.end338

if.end338:                                        ; preds = %if.end337, %if.end319
  %arraydecay339 = getelementptr inbounds [16 x i8], [16 x i8]* %tag_buf, i64 0, i64 0
  %call340 = call i32 @mbedtls_gcm_finish(%struct.mbedtls_gcm_context* noundef %ctx, i8* noundef null, i64 noundef 0, i64* noundef %olen, i8* noundef %arraydecay339, i64 noundef 16) #6
  store i32 %call340, i32* %ret, align 4
  %149 = load i32, i32* %ret, align 4
  %cmp341 = icmp ne i32 %149, 0
  br i1 %cmp341, label %if.then342, label %if.end343

if.then342:                                       ; preds = %if.end338
  br label %exit

if.end343:                                        ; preds = %if.end338
  %arraydecay344 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %150 = load i32, i32* %i, align 4
  %idxprom345 = sext i32 %150 to i64
  %arrayidx346 = getelementptr inbounds [6 x i32], [6 x i32]* @pt_index_test_data, i64 0, i64 %idxprom345
  %151 = load i32, i32* %arrayidx346, align 4
  %idxprom347 = sext i32 %151 to i64
  %arrayidx348 = getelementptr inbounds [6 x [64 x i8]], [6 x [64 x i8]]* @pt_test_data, i64 0, i64 %idxprom347
  %arraydecay349 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx348, i64 0, i64 0
  %152 = load i32, i32* %i, align 4
  %idxprom350 = sext i32 %152 to i64
  %arrayidx351 = getelementptr inbounds [6 x i64], [6 x i64]* @pt_len_test_data, i64 0, i64 %idxprom350
  %153 = load i64, i64* %arrayidx351, align 8
  %call352 = call i32 @memcmp(i8* noundef %arraydecay344, i8* noundef %arraydecay349, i64 noundef %153) #7
  %cmp353 = icmp ne i32 %call352, 0
  br i1 %cmp353, label %if.then363, label %lor.lhs.false354

lor.lhs.false354:                                 ; preds = %if.end343
  %arraydecay355 = getelementptr inbounds [16 x i8], [16 x i8]* %tag_buf, i64 0, i64 0
  %154 = load i32, i32* %j, align 4
  %mul356 = mul nsw i32 %154, 6
  %155 = load i32, i32* %i, align 4
  %add357 = add nsw i32 %mul356, %155
  %idxprom358 = sext i32 %add357 to i64
  %arrayidx359 = getelementptr inbounds [18 x [16 x i8]], [18 x [16 x i8]]* @tag_test_data, i64 0, i64 %idxprom358
  %arraydecay360 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx359, i64 0, i64 0
  %call361 = call i32 @memcmp(i8* noundef %arraydecay355, i8* noundef %arraydecay360, i64 noundef 16) #7
  %cmp362 = icmp ne i32 %call361, 0
  br i1 %cmp362, label %if.then363, label %if.end364

if.then363:                                       ; preds = %lor.lhs.false354, %if.end343
  store i32 1, i32* %ret, align 4
  br label %exit

if.end364:                                        ; preds = %lor.lhs.false354
  call void @mbedtls_gcm_free(%struct.mbedtls_gcm_context* noundef %ctx) #6
  %156 = load i32, i32* %verbose.addr, align 4
  %cmp365 = icmp ne i32 %156, 0
  br i1 %cmp365, label %if.then366, label %if.end368

if.then366:                                       ; preds = %if.end364
  %call367 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %if.end368

if.end368:                                        ; preds = %if.then366, %if.end364
  br label %for.inc

for.inc:                                          ; preds = %if.end368
  %157 = load i32, i32* %i, align 4
  %inc = add nsw i32 %157, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !22

for.end:                                          ; preds = %if.then10, %for.cond1
  br label %for.inc369

for.inc369:                                       ; preds = %for.end
  %158 = load i32, i32* %j, align 4
  %inc370 = add nsw i32 %158, 1
  store i32 %inc370, i32* %j, align 4
  br label %for.cond, !llvm.loop !23

for.end371:                                       ; preds = %for.cond
  %159 = load i32, i32* %verbose.addr, align 4
  %cmp372 = icmp ne i32 %159, 0
  br i1 %cmp372, label %if.then373, label %if.end375

if.then373:                                       ; preds = %for.end371
  %call374 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6
  br label %if.end375

if.end375:                                        ; preds = %if.then373, %for.end371
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end375, %if.then363, %if.then342, %if.then336, %if.then331, %if.then318, %if.then315, %if.then303, %if.then300, %if.then282, %if.then271, %if.then260, %if.then243, %if.then222, %if.then216, %if.then211, %if.then198, %if.then195, %if.then184, %if.then181, %if.then165, %if.then154, %if.then143, %if.then126, %if.then105, %if.then78, %if.then61, %if.then41, %if.then13
  %160 = load i32, i32* %ret, align 4
  %cmp376 = icmp ne i32 %160, 0
  br i1 %cmp376, label %if.then377, label %if.end382

if.then377:                                       ; preds = %exit
  %161 = load i32, i32* %verbose.addr, align 4
  %cmp378 = icmp ne i32 %161, 0
  br i1 %cmp378, label %if.then379, label %if.end381

if.then379:                                       ; preds = %if.then377
  %call380 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #6
  br label %if.end381

if.end381:                                        ; preds = %if.then379, %if.then377
  call void @mbedtls_gcm_free(%struct.mbedtls_gcm_context* noundef %ctx) #6
  br label %if.end382

if.end382:                                        ; preds = %if.end381, %exit
  %162 = load i32, i32* %ret, align 4
  ret i32 %162
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

declare dso_local i32 @mbedtls_aesni_has_support(i32 noundef) #2

declare dso_local void @mbedtls_aesni_gcm_mult(i8* noundef, i8* noundef, i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}

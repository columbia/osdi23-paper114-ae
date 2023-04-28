; ModuleID = 'ecjpake.c'
source_filename = "ecjpake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ecjpake_context = type { %struct.mbedtls_md_info_t*, %struct.mbedtls_ecp_group, i32, i32, %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_mpi = type { i32, i64, i64* }

@ecjpake_id = internal constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [28 x i8] c"  ECJPAKE test #0 (setup): \00", align 1
@ecjpake_test_password = internal constant [15 x i8] c"threadjpaketest", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"  ECJPAKE test #1 (random handshake): \00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"  ECJPAKE test #2 (reference handshake): \00", align 1
@ecjpake_test_x1 = internal constant [32 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F!", align 16
@ecjpake_test_x2 = internal constant [32 x i8] c"abcdefghijklmnopqrstuvwxyz{|}~\7F\81", align 16
@ecjpake_test_x3 = internal constant [32 x i8] c"abcdefghijklmnopqrstuvwxyz{|}~\7F\81", align 16
@ecjpake_test_x4 = internal constant [32 x i8] c"\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E1", align 16
@ecjpake_test_cli_one = internal constant [330 x i8] c"A\04\AC\CF\01\06\EF\85\8F\A2\D9\193\13F\80Zx\B5\8B\BA\D0\B8D\E5\C7\89(y\14a\87\DD&f\AD\A7\81\BB\7F\11\13r%\1A\89\10b\1FcM\F1(\ACH\E3\81\FDn\F9\06\071\F6\94\A4A\04\1D\D0\BD]Ef\C9\BE\D9\CE}\E7\01\B5\E8.\08\E8Ks\04f\01\8A\B9\03\C7\9E\B9\82\17\226\C0\C1r\8A\E4\BFsa\0D4\DED$n\F3\D9\C0Z\226\FBf\A6X=tI0\8B\AB\CE r\FE\16f)\92\E9#\\%\00/\11\B1P\87\B8'8\E0<\94[\F7\A2\99]\DA\1E\984XA\04~\A6\E3\A4Hp7\A9\E0\DB\D7\92b\B2\CC'>w\990\FC\18@\9A\C56\1C_\E6i\D7\02\E1Gy\0A\EBL\E7\FDeu\AB\0Fl\7F\D1\C35\93\9A\A8c\BA7\EC\91\B7\E3+\B0\13\BB+A\04\A4\95X\D3.\D1\EB\FC\18\16\AFO\F0\9BU\FC\B4\CAG\B2\A0-\1E|\AF\11y\EA?\E19[\22\B8a\96@\16\FA\BA\F7,\97V\95\D9=M\F0\E5\19\7F\E9\F0@cN\D5\97d\93w\87\BE \BCM\EE\BB\F9\B8\D6\0A3_\04l\A3\AA\94\1EE\86L|\AD\EF\9C\F7[=\8B\01\0ED>\F0", align 16
@ecjpake_test_srv_one = internal constant [330 x i8] c"A\04~\A6\E3\A4Hp7\A9\E0\DB\D7\92b\B2\CC'>w\990\FC\18@\9A\C56\1C_\E6i\D7\02\E1Gy\0A\EBL\E7\FDeu\AB\0Fl\7F\D1\C35\93\9A\A8c\BA7\EC\91\B7\E3+\B0\13\BB+A\04\09\F8[= \EB\D7\88\\\E4d\C0\8D\05md(\FEM\D9(z\A3e\F11\F46\0F\F3\86\D8F\89\8B\C4\B4\15\83\C2\A5\19\7Fe\D7\87Btl\12\A5\EC\0AO\FE/'\0Au\0A\1D\8F\B5\16 \93Mt\EBC\E5M\F4$\FD\960l\01\17\BF\13\1A\FA\BF\90\A9\D3=\11\98\D9\05\1975\14A\04\19\0A\07p\0F\FAK\E6\AE\1Dy\EE\0F\06\AE\B5D\CDZ\DD\AA\BE\DFp\F8b3!3,T\F3U\F0\FB\FE\C7\83\ED5\9E]\0B\F77z\0F\C4\EAz\CEG<\9C\11+A\CC\D4\1A\C5jV\12A\046\0A\1C\EA3\FC\E6A\15dX\E0\A4\EA\C2\19\E9h1\E6\AE\BC\88\B3\F3u/\93\A0(\1D\1B\F1\FB\10`Q\DB\96\94\A8\D6\E8b\A5\EF\13$\A3\D9\E2x\94\F1\EEO|Y\19\99e\A8\DDJ \91\84}-\22\DF>\E5_\AA*?\B3?\D2\D1\E0U\A0z|a\EC\FB\8D\80\EC\00\C2\C9\EB\12", align 16
@ecjpake_test_srv_two = internal constant [168 x i8] c"\03\00\17A\04\0F\B2+\1D]\11#\E0\EF\9F\EB\9D\8A.Y\0A\1FM|\ED,+\06Xn\8F*\16\D4\EB/\DAC(\A2\0B\07\D8\FDfvT\CA\18\C5N2\A33\A0\84TQ\E9&\EE\88\04\FDz\F0\AA\A7\A6A\04U\16\EA>T\A0\D5\D8\B2\CExk8\D3\837\00)\A5\DB\E4E\9C\9D\D6\01\B4\08\A2J\E6F\\\8A\C9\05\B9\EB\03\B5\D3i\1C\13\9E\F8?\1C\D4 \0Fl\9C\D4\EC9\22\18\A5\9E\D2C\D3\C8 \FFrJ\9Ap\B8\8C\B8o \B44\C6\86Z\A1\CDy\06\DD|\9B\CE5%\F5\08'o&\83l", align 16
@ecjpake_test_cli_two = internal constant [165 x i8] c"A\04i\D5N\E8^\90\CE?\12Ft-\E5\07\E99\E8\1D\1D\C1\C5\CB\98\8BX\C3\10\C9\FD\D9RM\93r\0BET\1C\83\EE\88A\19\1D\A7\CE\D8n3\12\D46#\C1\D6>t\98\9A\BAJ\FF\D1\EEA\04\07~\8C1\E2\0Ek\ED\B7`\C15\93\E6\9F\15\BE\85\C2}h\CD\09\CC\B8\C4\186\08\91|\\=@\9F\AC9\FE\FE\E8/r\92\D3o\0D#\E0U\91?E\A5+\85\DD\8A R\E9\E1)\BBM \0F\01\1F\19H55\A6\E8\9AX\0C\9B\00\03\BA\F2\14b\EC\E9\1A\82\CC8\DB\DC\AE`\D9\C5L", align 16
@ecjpake_test_pms = internal constant [32 x i8] c"\F3\D4\7FY\98D\DB\92\A5i\BB\E7\98\1E9\D91\FDt;\F2.\98\F9\B48\F7\19\D3\C4\F3Q", align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@ecjpake_lgc.x = internal global i32 42, align 4
@self_test_rng.state = internal global i32 42, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ecjpake_init(%struct.mbedtls_ecjpake_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecjpake_context*, align 8
  store %struct.mbedtls_ecjpake_context* %ctx, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %0, i32 0, i32 0
  store %struct.mbedtls_md_info_t* null, %struct.mbedtls_md_info_t** %md_info, align 8
  %1 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %1, i32 0, i32 1
  call void @mbedtls_ecp_group_init(%struct.mbedtls_ecp_group* noundef %grp) #4
  %2 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %point_format = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %2, i32 0, i32 3
  store i32 0, i32* %point_format, align 4
  %3 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xm1 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %3, i32 0, i32 4
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %Xm1) #4
  %4 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xm2 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %4, i32 0, i32 5
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %Xm2) #4
  %5 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xp1 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %5, i32 0, i32 6
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %Xp1) #4
  %6 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xp2 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %6, i32 0, i32 7
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %Xp2) #4
  %7 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xp = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %7, i32 0, i32 8
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %Xp) #4
  %8 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %xm1 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %8, i32 0, i32 9
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %xm1) #4
  %9 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %xm2 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %9, i32 0, i32 10
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %xm2) #4
  %10 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %10, i32 0, i32 11
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %s) #4
  ret void
}

declare dso_local void @mbedtls_ecp_group_init(%struct.mbedtls_ecp_group* noundef) #1

declare dso_local void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef) #1

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ecjpake_free(%struct.mbedtls_ecjpake_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecjpake_context*, align 8
  store %struct.mbedtls_ecjpake_context* %ctx, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ecjpake_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %1, i32 0, i32 0
  store %struct.mbedtls_md_info_t* null, %struct.mbedtls_md_info_t** %md_info, align 8
  %2 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %2, i32 0, i32 1
  call void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef %grp) #4
  %3 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xm1 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %3, i32 0, i32 4
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %Xm1) #4
  %4 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xm2 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %4, i32 0, i32 5
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %Xm2) #4
  %5 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xp1 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %5, i32 0, i32 6
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %Xp1) #4
  %6 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xp2 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %6, i32 0, i32 7
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %Xp2) #4
  %7 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xp = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %7, i32 0, i32 8
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %Xp) #4
  %8 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %xm1 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %8, i32 0, i32 9
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %xm1) #4
  %9 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %xm2 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %9, i32 0, i32 10
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %xm2) #4
  %10 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %10, i32 0, i32 11
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %s) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef) #1

declare dso_local void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef) #1

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecjpake_setup(%struct.mbedtls_ecjpake_context* noundef %ctx, i32 noundef %role, i32 noundef %hash, i32 noundef %curve, i8* noundef %secret, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecjpake_context*, align 8
  %role.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  %curve.addr = alloca i32, align 4
  %secret.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecjpake_context* %ctx, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  store i32 %role, i32* %role.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  store i32 %curve, i32* %curve.addr, align 4
  store i8* %secret, i8** %secret.addr, align 8
  store i64 %len, i64* %len.addr, align 8
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
  %0 = load i32, i32* %role.addr, align 4
  %1 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %role5 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %1, i32 0, i32 2
  store i32 %0, i32* %role5, align 8
  %2 = load i32, i32* %hash.addr, align 4
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %2) #4
  %3 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %3, i32 0, i32 0
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp = icmp eq %struct.mbedtls_md_info_t* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 -20608, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  br label %do.body6

do.body6:                                         ; preds = %if.end
  %4 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %4, i32 0, i32 1
  %5 = load i32, i32* %curve.addr, align 4
  %call7 = call i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef %grp, i32 noundef %5) #4
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.body6
  br label %cleanup

if.end10:                                         ; preds = %do.body6
  br label %do.end11

do.end11:                                         ; preds = %if.end10
  br label %do.body12

do.body12:                                        ; preds = %do.end11
  %6 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %6, i32 0, i32 11
  %7 = load i8*, i8** %secret.addr, align 8
  %8 = load i64, i64* %len.addr, align 8
  %call13 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %s, i8* noundef %7, i64 noundef %8) #4
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body12
  br label %cleanup

if.end16:                                         ; preds = %do.body12
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then15, %if.then9
  %9 = load i32, i32* %ret, align 4
  %cmp18 = icmp ne i32 %9, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %cleanup
  %10 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  call void @mbedtls_ecjpake_free(%struct.mbedtls_ecjpake_context* noundef %10) #4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %cleanup
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #1

declare dso_local i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecjpake_set_point_format(%struct.mbedtls_ecjpake_context* noundef %ctx, i32 noundef %point_format) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecjpake_context*, align 8
  %point_format.addr = alloca i32, align 4
  store %struct.mbedtls_ecjpake_context* %ctx, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  store i32 %point_format, i32* %point_format.addr, align 4
  %0 = load i32, i32* %point_format.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i32, i32* %point_format.addr, align 4
  %2 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %point_format1 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %2, i32 0, i32 3
  store i32 %1, i32* %point_format1, align 4
  store i32 0, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -20352, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecjpake_check(%struct.mbedtls_ecjpake_context* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecjpake_context*, align 8
  store %struct.mbedtls_ecjpake_context* %ctx, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp = icmp eq %struct.mbedtls_md_info_t* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %2 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %2, i32 0, i32 1
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 0
  %3 = load i32, i32* %id, align 8
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %4, i32 0, i32 11
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %s, i32 0, i32 2
  %5 = load i64*, i64** %p, align 8
  %cmp3 = icmp eq i64* %5, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %do.end
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecjpake_read_round_one(%struct.mbedtls_ecjpake_context* noundef %ctx, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecjpake_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_ecjpake_context* %ctx, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %2 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %2, i32 0, i32 1
  %3 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %point_format = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %3, i32 0, i32 3
  %4 = load i32, i32* %point_format, align 4
  %5 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp3 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %5, i32 0, i32 1
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp3, i32 0, i32 4
  %6 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xp1 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %6, i32 0, i32 6
  %7 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xp2 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %7, i32 0, i32 7
  %8 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %role = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %8, i32 0, i32 2
  %9 = load i32, i32* %role, align 8
  %sub = sub i32 1, %9
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* @ecjpake_id, i64 0, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  %11 = load i8*, i8** %buf.addr, align 8
  %12 = load i64, i64* %len.addr, align 8
  %call = call i32 @ecjpake_kkpp_read(%struct.mbedtls_md_info_t* noundef %1, %struct.mbedtls_ecp_group* noundef %grp, i32 noundef %4, %struct.mbedtls_ecp_point* noundef %G, %struct.mbedtls_ecp_point* noundef %Xp1, %struct.mbedtls_ecp_point* noundef %Xp2, i8* noundef %10, i8* noundef %11, i64 noundef %12) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecjpake_kkpp_read(%struct.mbedtls_md_info_t* noundef %md_info, %struct.mbedtls_ecp_group* noundef %grp, i32 noundef %pf, %struct.mbedtls_ecp_point* noundef %G, %struct.mbedtls_ecp_point* noundef %Xa, %struct.mbedtls_ecp_point* noundef %Xb, i8* noundef %id, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %pf.addr = alloca i32, align 4
  %G.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %Xa.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %Xb.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %id.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i32 %pf, i32* %pf.addr, align 4
  store %struct.mbedtls_ecp_point* %G, %struct.mbedtls_ecp_point** %G.addr, align 8
  store %struct.mbedtls_ecp_point* %Xa, %struct.mbedtls_ecp_point** %Xa.addr, align 8
  store %struct.mbedtls_ecp_point* %Xb, %struct.mbedtls_ecp_point** %Xb.addr, align 8
  store i8* %id, i8** %id.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %end, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %5 = load i32, i32* %pf.addr, align 4
  %6 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %G.addr, align 8
  %7 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Xa.addr, align 8
  %8 = load i8*, i8** %id.addr, align 8
  %9 = load i8*, i8** %end, align 8
  %call = call i32 @ecjpake_kkp_read(%struct.mbedtls_md_info_t* noundef %3, %struct.mbedtls_ecp_group* noundef %4, i32 noundef %5, %struct.mbedtls_ecp_point* noundef %6, %struct.mbedtls_ecp_point* noundef %7, i8* noundef %8, i8** noundef %p, i8* noundef %9) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %10 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %11 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %12 = load i32, i32* %pf.addr, align 4
  %13 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %G.addr, align 8
  %14 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Xb.addr, align 8
  %15 = load i8*, i8** %id.addr, align 8
  %16 = load i8*, i8** %end, align 8
  %call2 = call i32 @ecjpake_kkp_read(%struct.mbedtls_md_info_t* noundef %10, %struct.mbedtls_ecp_group* noundef %11, i32 noundef %12, %struct.mbedtls_ecp_point* noundef %13, %struct.mbedtls_ecp_point* noundef %14, i8* noundef %15, i8** noundef %p, i8* noundef %16) #4
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body1
  br label %cleanup

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  %17 = load i8*, i8** %p, align 8
  %18 = load i8*, i8** %end, align 8
  %cmp7 = icmp ne i8* %17, %18
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.end6
  store i32 -20352, i32* %ret, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then4, %if.then
  %19 = load i32, i32* %ret, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecjpake_write_round_one(%struct.mbedtls_ecjpake_context* noundef %ctx, i8* noundef %buf, i64 noundef %len, i64* noundef %olen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecjpake_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  store %struct.mbedtls_ecjpake_context* %ctx, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
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
  %0 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %2 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %2, i32 0, i32 1
  %3 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %point_format = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %3, i32 0, i32 3
  %4 = load i32, i32* %point_format, align 4
  %5 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp7 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %5, i32 0, i32 1
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp7, i32 0, i32 4
  %6 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %xm1 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %6, i32 0, i32 9
  %7 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xm1 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %7, i32 0, i32 4
  %8 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %xm2 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %8, i32 0, i32 10
  %9 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xm2 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %9, i32 0, i32 5
  %10 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %role = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %10, i32 0, i32 2
  %11 = load i32, i32* %role, align 8
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* @ecjpake_id, i64 0, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  %13 = load i8*, i8** %buf.addr, align 8
  %14 = load i64, i64* %len.addr, align 8
  %15 = load i64*, i64** %olen.addr, align 8
  %16 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %17 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @ecjpake_kkpp_write(%struct.mbedtls_md_info_t* noundef %1, %struct.mbedtls_ecp_group* noundef %grp, i32 noundef %4, %struct.mbedtls_ecp_point* noundef %G, %struct.mbedtls_mpi* noundef %xm1, %struct.mbedtls_ecp_point* noundef %Xm1, %struct.mbedtls_mpi* noundef %xm2, %struct.mbedtls_ecp_point* noundef %Xm2, i8* noundef %12, i8* noundef %13, i64 noundef %14, i64* noundef %15, i32 (i8*, i8*, i64)* noundef %16, i8* noundef %17) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecjpake_kkpp_write(%struct.mbedtls_md_info_t* noundef %md_info, %struct.mbedtls_ecp_group* noundef %grp, i32 noundef %pf, %struct.mbedtls_ecp_point* noundef %G, %struct.mbedtls_mpi* noundef %xm1, %struct.mbedtls_ecp_point* noundef %Xa, %struct.mbedtls_mpi* noundef %xm2, %struct.mbedtls_ecp_point* noundef %Xb, i8* noundef %id, i8* noundef %buf, i64 noundef %len, i64* noundef %olen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %pf.addr = alloca i32, align 4
  %G.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %xm1.addr = alloca %struct.mbedtls_mpi*, align 8
  %Xa.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %xm2.addr = alloca %struct.mbedtls_mpi*, align 8
  %Xb.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %id.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i32 %pf, i32* %pf.addr, align 4
  store %struct.mbedtls_ecp_point* %G, %struct.mbedtls_ecp_point** %G.addr, align 8
  store %struct.mbedtls_mpi* %xm1, %struct.mbedtls_mpi** %xm1.addr, align 8
  store %struct.mbedtls_ecp_point* %Xa, %struct.mbedtls_ecp_point** %Xa.addr, align 8
  store %struct.mbedtls_mpi* %xm2, %struct.mbedtls_mpi** %xm2.addr, align 8
  store %struct.mbedtls_ecp_point* %Xb, %struct.mbedtls_ecp_point** %Xb.addr, align 8
  store i8* %id, i8** %id.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %end, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %5 = load i32, i32* %pf.addr, align 4
  %6 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %G.addr, align 8
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %xm1.addr, align 8
  %8 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Xa.addr, align 8
  %9 = load i8*, i8** %id.addr, align 8
  %10 = load i8*, i8** %end, align 8
  %11 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %12 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @ecjpake_kkp_write(%struct.mbedtls_md_info_t* noundef %3, %struct.mbedtls_ecp_group* noundef %4, i32 noundef %5, %struct.mbedtls_ecp_point* noundef %6, %struct.mbedtls_mpi* noundef %7, %struct.mbedtls_ecp_point* noundef %8, i8* noundef %9, i8** noundef %p, i8* noundef %10, i32 (i8*, i8*, i64)* noundef %11, i8* noundef %12) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %13 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %14 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %15 = load i32, i32* %pf.addr, align 4
  %16 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %G.addr, align 8
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %xm2.addr, align 8
  %18 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Xb.addr, align 8
  %19 = load i8*, i8** %id.addr, align 8
  %20 = load i8*, i8** %end, align 8
  %21 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %22 = load i8*, i8** %p_rng.addr, align 8
  %call2 = call i32 @ecjpake_kkp_write(%struct.mbedtls_md_info_t* noundef %13, %struct.mbedtls_ecp_group* noundef %14, i32 noundef %15, %struct.mbedtls_ecp_point* noundef %16, %struct.mbedtls_mpi* noundef %17, %struct.mbedtls_ecp_point* noundef %18, i8* noundef %19, i8** noundef %p, i8* noundef %20, i32 (i8*, i8*, i64)* noundef %21, i8* noundef %22) #4
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body1
  br label %cleanup

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  %23 = load i8*, i8** %p, align 8
  %24 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %25 = load i64*, i64** %olen.addr, align 8
  store i64 %sub.ptr.sub, i64* %25, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %if.then4, %if.then
  %26 = load i32, i32* %ret, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecjpake_read_round_two(%struct.mbedtls_ecjpake_context* noundef %ctx, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecjpake_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %grp = alloca %struct.mbedtls_ecp_group, align 8
  %G = alloca %struct.mbedtls_ecp_point, align 8
  store %struct.mbedtls_ecjpake_context* %ctx, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %end, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  call void @mbedtls_ecp_group_init(%struct.mbedtls_ecp_group* noundef %grp) #4
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %G) #4
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  %3 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp4 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %3, i32 0, i32 1
  %4 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xm1 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %4, i32 0, i32 4
  %5 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xm2 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %5, i32 0, i32 5
  %6 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xp1 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %6, i32 0, i32 6
  %call = call i32 @ecjpake_ecp_add3(%struct.mbedtls_ecp_group* noundef %grp4, %struct.mbedtls_ecp_point* noundef %G, %struct.mbedtls_ecp_point* noundef %Xm1, %struct.mbedtls_ecp_point* noundef %Xm2, %struct.mbedtls_ecp_point* noundef %Xp1) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body3
  br label %cleanup

if.end:                                           ; preds = %do.body3
  br label %do.end5

do.end5:                                          ; preds = %if.end
  %7 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %role = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %7, i32 0, i32 2
  %8 = load i32, i32* %role, align 8
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end19

if.then7:                                         ; preds = %do.end5
  br label %do.body8

do.body8:                                         ; preds = %if.then7
  %9 = load i64, i64* %len.addr, align 8
  %call9 = call i32 @mbedtls_ecp_tls_read_group(%struct.mbedtls_ecp_group* noundef %grp, i8** noundef %p, i64 noundef %9) #4
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.body8
  br label %cleanup

if.end12:                                         ; preds = %do.body8
  br label %do.end13

do.end13:                                         ; preds = %if.end12
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 0
  %10 = load i32, i32* %id, align 8
  %11 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp14 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %11, i32 0, i32 1
  %id15 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp14, i32 0, i32 0
  %12 = load i32, i32* %id15, align 8
  %cmp16 = icmp ne i32 %10, %12
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %do.end13
  store i32 -20096, i32* %ret, align 4
  br label %cleanup

if.end18:                                         ; preds = %do.end13
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %do.end5
  br label %do.body20

do.body20:                                        ; preds = %if.end19
  %13 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %13, i32 0, i32 0
  %14 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %15 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp21 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %15, i32 0, i32 1
  %16 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %point_format = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %16, i32 0, i32 3
  %17 = load i32, i32* %point_format, align 4
  %18 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xp = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %18, i32 0, i32 8
  %19 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %role22 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %19, i32 0, i32 2
  %20 = load i32, i32* %role22, align 8
  %sub = sub i32 1, %20
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* @ecjpake_id, i64 0, i64 %idxprom
  %21 = load i8*, i8** %arrayidx, align 8
  %22 = load i8*, i8** %end, align 8
  %call23 = call i32 @ecjpake_kkp_read(%struct.mbedtls_md_info_t* noundef %14, %struct.mbedtls_ecp_group* noundef %grp21, i32 noundef %17, %struct.mbedtls_ecp_point* noundef %G, %struct.mbedtls_ecp_point* noundef %Xp, i8* noundef %21, i8** noundef %p, i8* noundef %22) #4
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body20
  br label %cleanup

if.end26:                                         ; preds = %do.body20
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  %23 = load i8*, i8** %p, align 8
  %24 = load i8*, i8** %end, align 8
  %cmp28 = icmp ne i8* %23, %24
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.end27
  store i32 -20352, i32* %ret, align 4
  br label %cleanup

if.end30:                                         ; preds = %do.end27
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then29, %if.then25, %if.then17, %if.then11, %if.then
  call void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef %grp) #4
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %G) #4
  %25 = load i32, i32* %ret, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecjpake_ecp_add3(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_ecp_point* noundef %A, %struct.mbedtls_ecp_point* noundef %B, %struct.mbedtls_ecp_point* noundef %C) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %R.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %A.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %B.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %C.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %ret = alloca i32, align 4
  %one = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %R, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_ecp_point* %A, %struct.mbedtls_ecp_point** %A.addr, align 8
  store %struct.mbedtls_ecp_point* %B, %struct.mbedtls_ecp_point** %B.addr, align 8
  store %struct.mbedtls_ecp_point* %C, %struct.mbedtls_ecp_point** %C.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %one) #4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %one, i64 noundef 1) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %1 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %2 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %A.addr, align 8
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %B.addr, align 8
  %call2 = call i32 @mbedtls_ecp_muladd(%struct.mbedtls_ecp_group* noundef %0, %struct.mbedtls_ecp_point* noundef %1, %struct.mbedtls_mpi* noundef %one, %struct.mbedtls_ecp_point* noundef %2, %struct.mbedtls_mpi* noundef %one, %struct.mbedtls_ecp_point* noundef %3) #4
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body1
  br label %cleanup

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %5 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %6 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %7 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %C.addr, align 8
  %call8 = call i32 @mbedtls_ecp_muladd(%struct.mbedtls_ecp_group* noundef %4, %struct.mbedtls_ecp_point* noundef %5, %struct.mbedtls_mpi* noundef %one, %struct.mbedtls_ecp_point* noundef %6, %struct.mbedtls_mpi* noundef %one, %struct.mbedtls_ecp_point* noundef %7) #4
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body7
  br label %cleanup

if.end11:                                         ; preds = %do.body7
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then10, %if.then4, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %one) #4
  %8 = load i32, i32* %ret, align 4
  ret i32 %8
}

declare dso_local i32 @mbedtls_ecp_tls_read_group(%struct.mbedtls_ecp_group* noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecjpake_kkp_read(%struct.mbedtls_md_info_t* noundef %md_info, %struct.mbedtls_ecp_group* noundef %grp, i32 noundef %pf, %struct.mbedtls_ecp_point* noundef %G, %struct.mbedtls_ecp_point* noundef %X, i8* noundef %id, i8** noundef %p, i8* noundef %end) #0 {
entry:
  %retval = alloca i32, align 4
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %pf.addr = alloca i32, align 4
  %G.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %X.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %id.addr = alloca i8*, align 8
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i32 %pf, i32* %pf.addr, align 4
  store %struct.mbedtls_ecp_point* %G, %struct.mbedtls_ecp_point** %G.addr, align 8
  store %struct.mbedtls_ecp_point* %X, %struct.mbedtls_ecp_point** %X.addr, align 8
  store i8* %id, i8** %id.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %cmp = icmp ult i8* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %X.addr, align 8
  %5 = load i8**, i8*** %p.addr, align 8
  %6 = load i8*, i8** %end.addr, align 8
  %7 = load i8**, i8*** %p.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i32 @mbedtls_ecp_tls_read_point(%struct.mbedtls_ecp_group* noundef %3, %struct.mbedtls_ecp_point* noundef %4, i8** noundef %5, i64 noundef %sub.ptr.sub) #4
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.body
  br label %cleanup

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  %9 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %X.addr, align 8
  %call4 = call i32 @mbedtls_ecp_is_zero(%struct.mbedtls_ecp_point* noundef %9) #4
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.end
  store i32 -19584, i32* %ret, align 4
  br label %cleanup

if.end6:                                          ; preds = %do.end
  br label %do.body7

do.body7:                                         ; preds = %if.end6
  %10 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %11 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %12 = load i32, i32* %pf.addr, align 4
  %13 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %G.addr, align 8
  %14 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %X.addr, align 8
  %15 = load i8*, i8** %id.addr, align 8
  %16 = load i8**, i8*** %p.addr, align 8
  %17 = load i8*, i8** %end.addr, align 8
  %call8 = call i32 @ecjpake_zkp_read(%struct.mbedtls_md_info_t* noundef %10, %struct.mbedtls_ecp_group* noundef %11, i32 noundef %12, %struct.mbedtls_ecp_point* noundef %13, %struct.mbedtls_ecp_point* noundef %14, i8* noundef %15, i8** noundef %16, i8* noundef %17) #4
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body7
  br label %cleanup

if.end11:                                         ; preds = %do.body7
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then10, %if.then5, %if.then2
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecjpake_write_round_two(%struct.mbedtls_ecjpake_context* noundef %ctx, i8* noundef %buf, i64 noundef %len, i64* noundef %olen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecjpake_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %G = alloca %struct.mbedtls_ecp_point, align 8
  %Xm = alloca %struct.mbedtls_ecp_point, align 8
  %xm = alloca %struct.mbedtls_mpi, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %ec_len = alloca i64, align 8
  store %struct.mbedtls_ecjpake_context* %ctx, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %end, align 8
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
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %G) #4
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %Xm) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %xm) #4
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %3 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %3, i32 0, i32 1
  %4 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xp1 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %4, i32 0, i32 6
  %5 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xp2 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %5, i32 0, i32 7
  %6 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xm1 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %6, i32 0, i32 4
  %call = call i32 @ecjpake_ecp_add3(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %G, %struct.mbedtls_ecp_point* noundef %Xp1, %struct.mbedtls_ecp_point* noundef %Xp2, %struct.mbedtls_ecp_point* noundef %Xm1) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body7
  br label %cleanup

if.end:                                           ; preds = %do.body7
  br label %do.end8

do.end8:                                          ; preds = %if.end
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  %7 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %xm2 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %7, i32 0, i32 10
  %8 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %8, i32 0, i32 11
  %9 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp10 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %9, i32 0, i32 1
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp10, i32 0, i32 5
  %10 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %11 = load i8*, i8** %p_rng.addr, align 8
  %call11 = call i32 @ecjpake_mul_secret(%struct.mbedtls_mpi* noundef %xm, i32 noundef 1, %struct.mbedtls_mpi* noundef %xm2, %struct.mbedtls_mpi* noundef %s, %struct.mbedtls_mpi* noundef %N, i32 (i8*, i8*, i64)* noundef %10, i8* noundef %11) #4
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body9
  br label %cleanup

if.end14:                                         ; preds = %do.body9
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  br label %do.body16

do.body16:                                        ; preds = %do.end15
  %12 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp17 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %12, i32 0, i32 1
  %13 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %14 = load i8*, i8** %p_rng.addr, align 8
  %call18 = call i32 @mbedtls_ecp_mul(%struct.mbedtls_ecp_group* noundef %grp17, %struct.mbedtls_ecp_point* noundef %Xm, %struct.mbedtls_mpi* noundef %xm, %struct.mbedtls_ecp_point* noundef %G, i32 (i8*, i8*, i64)* noundef %13, i8* noundef %14) #4
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %do.body16
  br label %cleanup

if.end21:                                         ; preds = %do.body16
  br label %do.end22

do.end22:                                         ; preds = %if.end21
  %15 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %role = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %15, i32 0, i32 2
  %16 = load i32, i32* %role, align 8
  %cmp23 = icmp eq i32 %16, 1
  br i1 %cmp23, label %if.then24, label %if.end36

if.then24:                                        ; preds = %do.end22
  %17 = load i8*, i8** %end, align 8
  %18 = load i8*, i8** %p, align 8
  %cmp25 = icmp ult i8* %17, %18
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then24
  store i32 -20224, i32* %ret, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.then24
  br label %do.body28

do.body28:                                        ; preds = %if.end27
  %19 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp29 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %19, i32 0, i32 1
  %20 = load i8*, i8** %p, align 8
  %21 = load i8*, i8** %end, align 8
  %22 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call30 = call i32 @mbedtls_ecp_tls_write_group(%struct.mbedtls_ecp_group* noundef %grp29, i64* noundef %ec_len, i8* noundef %20, i64 noundef %sub.ptr.sub) #4
  store i32 %call30, i32* %ret, align 4
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body28
  br label %cleanup

if.end33:                                         ; preds = %do.body28
  br label %do.end34

do.end34:                                         ; preds = %if.end33
  %23 = load i64, i64* %ec_len, align 8
  %24 = load i8*, i8** %p, align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %24, i64 %23
  store i8* %add.ptr35, i8** %p, align 8
  br label %if.end36

if.end36:                                         ; preds = %do.end34, %do.end22
  %25 = load i8*, i8** %end, align 8
  %26 = load i8*, i8** %p, align 8
  %cmp37 = icmp ult i8* %25, %26
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end36
  store i32 -20224, i32* %ret, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.end36
  br label %do.body40

do.body40:                                        ; preds = %if.end39
  %27 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp41 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %27, i32 0, i32 1
  %28 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %point_format = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %28, i32 0, i32 3
  %29 = load i32, i32* %point_format, align 4
  %30 = load i8*, i8** %p, align 8
  %31 = load i8*, i8** %end, align 8
  %32 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast42 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast43 = ptrtoint i8* %32 to i64
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43
  %call45 = call i32 @mbedtls_ecp_tls_write_point(%struct.mbedtls_ecp_group* noundef %grp41, %struct.mbedtls_ecp_point* noundef %Xm, i32 noundef %29, i64* noundef %ec_len, i8* noundef %30, i64 noundef %sub.ptr.sub44) #4
  store i32 %call45, i32* %ret, align 4
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %do.body40
  br label %cleanup

if.end48:                                         ; preds = %do.body40
  br label %do.end49

do.end49:                                         ; preds = %if.end48
  %33 = load i64, i64* %ec_len, align 8
  %34 = load i8*, i8** %p, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %add.ptr50, i8** %p, align 8
  br label %do.body51

do.body51:                                        ; preds = %do.end49
  %35 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %35, i32 0, i32 0
  %36 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %37 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp52 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %37, i32 0, i32 1
  %38 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %point_format53 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %38, i32 0, i32 3
  %39 = load i32, i32* %point_format53, align 4
  %40 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %role54 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %40, i32 0, i32 2
  %41 = load i32, i32* %role54, align 8
  %idxprom = zext i32 %41 to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* @ecjpake_id, i64 0, i64 %idxprom
  %42 = load i8*, i8** %arrayidx, align 8
  %43 = load i8*, i8** %end, align 8
  %44 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %45 = load i8*, i8** %p_rng.addr, align 8
  %call55 = call i32 @ecjpake_zkp_write(%struct.mbedtls_md_info_t* noundef %36, %struct.mbedtls_ecp_group* noundef %grp52, i32 noundef %39, %struct.mbedtls_ecp_point* noundef %G, %struct.mbedtls_mpi* noundef %xm, %struct.mbedtls_ecp_point* noundef %Xm, i8* noundef %42, i8** noundef %p, i8* noundef %43, i32 (i8*, i8*, i64)* noundef %44, i8* noundef %45) #4
  store i32 %call55, i32* %ret, align 4
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %do.body51
  br label %cleanup

if.end58:                                         ; preds = %do.body51
  br label %do.end59

do.end59:                                         ; preds = %if.end58
  %46 = load i8*, i8** %p, align 8
  %47 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast60 = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast61 = ptrtoint i8* %47 to i64
  %sub.ptr.sub62 = sub i64 %sub.ptr.lhs.cast60, %sub.ptr.rhs.cast61
  %48 = load i64*, i64** %olen.addr, align 8
  store i64 %sub.ptr.sub62, i64* %48, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.then57, %if.then47, %if.then38, %if.then32, %if.then26, %if.then20, %if.then13, %if.then
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %G) #4
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %Xm) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %xm) #4
  %49 = load i32, i32* %ret, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecjpake_mul_secret(%struct.mbedtls_mpi* noundef %R, i32 noundef %sign, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %S, %struct.mbedtls_mpi* noundef %N, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %R.addr = alloca %struct.mbedtls_mpi*, align 8
  %sign.addr = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %S.addr = alloca %struct.mbedtls_mpi*, align 8
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %b = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_mpi* %R, %struct.mbedtls_mpi** %R.addr, align 8
  store i32 %sign, i32* %sign.addr, align 4
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %S, %struct.mbedtls_mpi** %S.addr, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %b) #4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %1 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_mpi_fill_random(%struct.mbedtls_mpi* noundef %b, i64 noundef 16, i32 (i8*, i8*, i64)* noundef %0, i8* noundef %1) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call2 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %b, %struct.mbedtls_mpi* noundef %b, %struct.mbedtls_mpi* noundef %2) #4
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body1
  br label %cleanup

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %S.addr, align 8
  %call8 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %b, %struct.mbedtls_mpi* noundef %b, %struct.mbedtls_mpi* noundef %3) #4
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body7
  br label %cleanup

if.end11:                                         ; preds = %do.body7
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call14 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %4, %struct.mbedtls_mpi* noundef %5, %struct.mbedtls_mpi* noundef %b) #4
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body13
  br label %cleanup

if.end17:                                         ; preds = %do.body13
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  %6 = load i32, i32* %sign.addr, align 4
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %7, i32 0, i32 0
  %8 = load i32, i32* %s, align 8
  %mul = mul nsw i32 %8, %6
  store i32 %mul, i32* %s, align 8
  br label %do.body19

do.body19:                                        ; preds = %do.end18
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call20 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %9, %struct.mbedtls_mpi* noundef %10, %struct.mbedtls_mpi* noundef %11) #4
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %do.body19
  br label %cleanup

if.end23:                                         ; preds = %do.body19
  br label %do.end24

do.end24:                                         ; preds = %if.end23
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.then22, %if.then16, %if.then10, %if.then4, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %b) #4
  %12 = load i32, i32* %ret, align 4
  ret i32 %12
}

declare dso_local i32 @mbedtls_ecp_mul(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_ecp_point* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ecp_tls_write_group(%struct.mbedtls_ecp_group* noundef, i64* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ecp_tls_write_point(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, i32 noundef, i64* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecjpake_zkp_write(%struct.mbedtls_md_info_t* noundef %md_info, %struct.mbedtls_ecp_group* noundef %grp, i32 noundef %pf, %struct.mbedtls_ecp_point* noundef %G, %struct.mbedtls_mpi* noundef %x, %struct.mbedtls_ecp_point* noundef %X, i8* noundef %id, i8** noundef %p, i8* noundef %end, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %pf.addr = alloca i32, align 4
  %G.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %x.addr = alloca %struct.mbedtls_mpi*, align 8
  %X.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %id.addr = alloca i8*, align 8
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %V = alloca %struct.mbedtls_ecp_point, align 8
  %v = alloca %struct.mbedtls_mpi, align 8
  %h = alloca %struct.mbedtls_mpi, align 8
  %len = alloca i64, align 8
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i32 %pf, i32* %pf.addr, align 4
  store %struct.mbedtls_ecp_point* %G, %struct.mbedtls_ecp_point** %G.addr, align 8
  store %struct.mbedtls_mpi* %x, %struct.mbedtls_mpi** %x.addr, align 8
  store %struct.mbedtls_ecp_point* %X, %struct.mbedtls_ecp_point** %X.addr, align 8
  store i8* %id, i8** %id.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %cmp = icmp ult i8* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20224, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %V) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %v) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %h) #4
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %G.addr, align 8
  %5 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %6 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_ecp_gen_keypair_base(%struct.mbedtls_ecp_group* noundef %3, %struct.mbedtls_ecp_point* noundef %4, %struct.mbedtls_mpi* noundef %v, %struct.mbedtls_ecp_point* noundef %V, i32 (i8*, i8*, i64)* noundef %5, i8* noundef %6) #4
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.body
  br label %cleanup

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  br label %do.body4

do.body4:                                         ; preds = %do.end
  %7 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %8 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %9 = load i32, i32* %pf.addr, align 4
  %10 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %G.addr, align 8
  %11 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %X.addr, align 8
  %12 = load i8*, i8** %id.addr, align 8
  %call5 = call i32 @ecjpake_hash(%struct.mbedtls_md_info_t* noundef %7, %struct.mbedtls_ecp_group* noundef %8, i32 noundef %9, %struct.mbedtls_ecp_point* noundef %10, %struct.mbedtls_ecp_point* noundef %V, %struct.mbedtls_ecp_point* noundef %11, i8* noundef %12, %struct.mbedtls_mpi* noundef %h) #4
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.body4
  br label %cleanup

if.end8:                                          ; preds = %do.body4
  br label %do.end9

do.end9:                                          ; preds = %if.end8
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %x.addr, align 8
  %call11 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %h, %struct.mbedtls_mpi* noundef %h, %struct.mbedtls_mpi* noundef %13) #4
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body10
  br label %cleanup

if.end14:                                         ; preds = %do.body10
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  br label %do.body16

do.body16:                                        ; preds = %do.end15
  %call17 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %h, %struct.mbedtls_mpi* noundef %v, %struct.mbedtls_mpi* noundef %h) #4
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.body16
  br label %cleanup

if.end20:                                         ; preds = %do.body16
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  br label %do.body22

do.body22:                                        ; preds = %do.end21
  %14 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %14, i32 0, i32 5
  %call23 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %h, %struct.mbedtls_mpi* noundef %h, %struct.mbedtls_mpi* noundef %N) #4
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body22
  br label %cleanup

if.end26:                                         ; preds = %do.body22
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  %15 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %16 = load i32, i32* %pf.addr, align 4
  %17 = load i8**, i8*** %p.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %end.addr, align 8
  %20 = load i8**, i8*** %p.addr, align 8
  %21 = load i8*, i8** %20, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call29 = call i32 @mbedtls_ecp_tls_write_point(%struct.mbedtls_ecp_group* noundef %15, %struct.mbedtls_ecp_point* noundef %V, i32 noundef %16, i64* noundef %len, i8* noundef %18, i64 noundef %sub.ptr.sub) #4
  store i32 %call29, i32* %ret, align 4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.body28
  br label %cleanup

if.end32:                                         ; preds = %do.body28
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  %22 = load i64, i64* %len, align 8
  %23 = load i8**, i8*** %p.addr, align 8
  %24 = load i8*, i8** %23, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %22
  store i8* %add.ptr, i8** %23, align 8
  %call34 = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %h) #4
  store i64 %call34, i64* %len, align 8
  %25 = load i8*, i8** %end.addr, align 8
  %26 = load i8**, i8*** %p.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %cmp35 = icmp ult i8* %25, %27
  br i1 %cmp35, label %if.then42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end33
  %28 = load i8*, i8** %end.addr, align 8
  %29 = load i8**, i8*** %p.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %sub.ptr.lhs.cast36 = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast37 = ptrtoint i8* %30 to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37
  %31 = load i64, i64* %len, align 8
  %add = add i64 1, %31
  %cmp39 = icmp ult i64 %sub.ptr.sub38, %add
  br i1 %cmp39, label %if.then42, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false
  %32 = load i64, i64* %len, align 8
  %cmp41 = icmp ugt i64 %32, 255
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %lor.lhs.false40, %lor.lhs.false, %do.end33
  store i32 -20224, i32* %ret, align 4
  br label %cleanup

if.end43:                                         ; preds = %lor.lhs.false40
  %33 = load i64, i64* %len, align 8
  %and = and i64 %33, 255
  %conv = trunc i64 %and to i8
  %34 = load i8**, i8*** %p.addr, align 8
  %35 = load i8*, i8** %34, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %34, align 8
  store i8 %conv, i8* %35, align 1
  br label %do.body44

do.body44:                                        ; preds = %if.end43
  %36 = load i8**, i8*** %p.addr, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i64, i64* %len, align 8
  %call45 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %h, i8* noundef %37, i64 noundef %38) #4
  store i32 %call45, i32* %ret, align 4
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %do.body44
  br label %cleanup

if.end49:                                         ; preds = %do.body44
  br label %do.end50

do.end50:                                         ; preds = %if.end49
  %39 = load i64, i64* %len, align 8
  %40 = load i8**, i8*** %p.addr, align 8
  %41 = load i8*, i8** %40, align 8
  %add.ptr51 = getelementptr inbounds i8, i8* %41, i64 %39
  store i8* %add.ptr51, i8** %40, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.then48, %if.then42, %if.then31, %if.then25, %if.then19, %if.then13, %if.then7, %if.then2
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %V) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %v) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %h) #4
  %42 = load i32, i32* %ret, align 4
  store i32 %42, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %43 = load i32, i32* %retval, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecjpake_derive_secret(%struct.mbedtls_ecjpake_context* noundef %ctx, i8* noundef %buf, i64 noundef %len, i64* noundef %olen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecjpake_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %K = alloca %struct.mbedtls_ecp_point, align 8
  %m_xm2_s = alloca %struct.mbedtls_mpi, align 8
  %one = alloca %struct.mbedtls_mpi, align 8
  %kx = alloca [66 x i8], align 16
  %x_bytes = alloca i64, align 8
  store %struct.mbedtls_ecjpake_context* %ctx, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
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
  %0 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %1) #4
  %conv = zext i8 %call to i64
  %2 = load i64*, i64** %olen.addr, align 8
  store i64 %conv, i64* %2, align 8
  %3 = load i64, i64* %len.addr, align 8
  %4 = load i64*, i64** %olen.addr, align 8
  %5 = load i64, i64* %4, align 8
  %cmp = icmp ult i64 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  store i32 -20224, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end6
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %K) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %m_xm2_s) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %one) #4
  br label %do.body8

do.body8:                                         ; preds = %if.end
  %call9 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %one, i64 noundef 1) #4
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.body8
  br label %cleanup

if.end13:                                         ; preds = %do.body8
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  br label %do.body15

do.body15:                                        ; preds = %do.end14
  %6 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %xm2 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %6, i32 0, i32 10
  %7 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %7, i32 0, i32 11
  %8 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %8, i32 0, i32 1
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 5
  %9 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %10 = load i8*, i8** %p_rng.addr, align 8
  %call16 = call i32 @ecjpake_mul_secret(%struct.mbedtls_mpi* noundef %m_xm2_s, i32 noundef -1, %struct.mbedtls_mpi* noundef %xm2, %struct.mbedtls_mpi* noundef %s, %struct.mbedtls_mpi* noundef %N, i32 (i8*, i8*, i64)* noundef %9, i8* noundef %10) #4
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.body15
  br label %cleanup

if.end20:                                         ; preds = %do.body15
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  br label %do.body22

do.body22:                                        ; preds = %do.end21
  %11 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp23 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %11, i32 0, i32 1
  %12 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xp = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %12, i32 0, i32 8
  %13 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xp2 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %13, i32 0, i32 7
  %call24 = call i32 @mbedtls_ecp_muladd(%struct.mbedtls_ecp_group* noundef %grp23, %struct.mbedtls_ecp_point* noundef %K, %struct.mbedtls_mpi* noundef %one, %struct.mbedtls_ecp_point* noundef %Xp, %struct.mbedtls_mpi* noundef %m_xm2_s, %struct.mbedtls_ecp_point* noundef %Xp2) #4
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %do.body22
  br label %cleanup

if.end28:                                         ; preds = %do.body22
  br label %do.end29

do.end29:                                         ; preds = %if.end28
  br label %do.body30

do.body30:                                        ; preds = %do.end29
  %14 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp31 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %14, i32 0, i32 1
  %15 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %xm232 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %15, i32 0, i32 10
  %16 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %17 = load i8*, i8** %p_rng.addr, align 8
  %call33 = call i32 @mbedtls_ecp_mul(%struct.mbedtls_ecp_group* noundef %grp31, %struct.mbedtls_ecp_point* noundef %K, %struct.mbedtls_mpi* noundef %xm232, %struct.mbedtls_ecp_point* noundef %K, i32 (i8*, i8*, i64)* noundef %16, i8* noundef %17) #4
  store i32 %call33, i32* %ret, align 4
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %do.body30
  br label %cleanup

if.end37:                                         ; preds = %do.body30
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  %18 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp39 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %18, i32 0, i32 1
  %pbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp39, i32 0, i32 6
  %19 = load i64, i64* %pbits, align 8
  %add = add i64 %19, 7
  %div = udiv i64 %add, 8
  store i64 %div, i64* %x_bytes, align 8
  br label %do.body40

do.body40:                                        ; preds = %do.end38
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %K, i32 0, i32 0
  %arraydecay = getelementptr inbounds [66 x i8], [66 x i8]* %kx, i64 0, i64 0
  %20 = load i64, i64* %x_bytes, align 8
  %call41 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %X, i8* noundef %arraydecay, i64 noundef %20) #4
  store i32 %call41, i32* %ret, align 4
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %do.body40
  br label %cleanup

if.end45:                                         ; preds = %do.body40
  br label %do.end46

do.end46:                                         ; preds = %if.end45
  br label %do.body47

do.body47:                                        ; preds = %do.end46
  %21 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %md_info48 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %21, i32 0, i32 0
  %22 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info48, align 8
  %arraydecay49 = getelementptr inbounds [66 x i8], [66 x i8]* %kx, i64 0, i64 0
  %23 = load i64, i64* %x_bytes, align 8
  %24 = load i8*, i8** %buf.addr, align 8
  %call50 = call i32 @mbedtls_md(%struct.mbedtls_md_info_t* noundef %22, i8* noundef %arraydecay49, i64 noundef %23, i8* noundef %24) #4
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %do.body47
  br label %cleanup

if.end54:                                         ; preds = %do.body47
  br label %do.end55

do.end55:                                         ; preds = %if.end54
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.then53, %if.then44, %if.then36, %if.then27, %if.then19, %if.then12
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %K) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %m_xm2_s) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %one) #4
  %25 = load i32, i32* %ret, align 4
  store i32 %25, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

declare dso_local zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef) #1

declare dso_local i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ecp_muladd(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_ecp_point* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_ecp_point* noundef) #1

declare dso_local i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_md(%struct.mbedtls_md_info_t* noundef, i8* noundef, i64 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecjpake_self_test(i32 noundef %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cli = alloca %struct.mbedtls_ecjpake_context, align 8
  %srv = alloca %struct.mbedtls_ecjpake_context, align 8
  %buf = alloca [512 x i8], align 16
  %pms = alloca [32 x i8], align 16
  %len = alloca i64, align 8
  %pmslen = alloca i64, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_ecjpake_init(%struct.mbedtls_ecjpake_context* noundef %cli) #4
  call void @mbedtls_ecjpake_init(%struct.mbedtls_ecjpake_context* noundef %srv) #4
  %0 = load i32, i32* %verbose.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %call1 = call i32 @mbedtls_ecjpake_setup(%struct.mbedtls_ecjpake_context* noundef %cli, i32 noundef 0, i32 noundef 4, i32 noundef 3, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @ecjpake_test_password, i64 0, i64 0), i64 noundef 15) #4
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %do.body
  store i32 0, i32* %ret, align 4
  br label %if.end4

if.else:                                          ; preds = %do.body
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.then3
  br label %do.end

do.end:                                           ; preds = %if.end4
  br label %do.body5

do.body5:                                         ; preds = %do.end
  %call6 = call i32 @mbedtls_ecjpake_setup(%struct.mbedtls_ecjpake_context* noundef %srv, i32 noundef 1, i32 noundef 4, i32 noundef 3, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @ecjpake_test_password, i64 0, i64 0), i64 noundef 15) #4
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %do.body5
  store i32 0, i32* %ret, align 4
  br label %if.end10

if.else9:                                         ; preds = %do.body5
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.then8
  br label %do.end11

do.end11:                                         ; preds = %if.end10
  %1 = load i32, i32* %verbose.addr, align 4
  %cmp12 = icmp ne i32 %1, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %do.end11
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.end11
  %2 = load i32, i32* %verbose.addr, align 4
  %cmp16 = icmp ne i32 %2, 0
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  %call18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0)) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15
  br label %do.body20

do.body20:                                        ; preds = %if.end19
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %call21 = call i32 @mbedtls_ecjpake_write_round_one(%struct.mbedtls_ecjpake_context* noundef %cli, i8* noundef %arraydecay, i64 noundef 512, i64* noundef %len, i32 (i8*, i8*, i64)* noundef @ecjpake_lgc, i8* noundef null) #4
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %do.body20
  store i32 0, i32* %ret, align 4
  br label %if.end25

if.else24:                                        ; preds = %do.body20
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.then23
  br label %do.end26

do.end26:                                         ; preds = %if.end25
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %arraydecay28 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %3 = load i64, i64* %len, align 8
  %call29 = call i32 @mbedtls_ecjpake_read_round_one(%struct.mbedtls_ecjpake_context* noundef %srv, i8* noundef %arraydecay28, i64 noundef %3) #4
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %do.body27
  store i32 0, i32* %ret, align 4
  br label %if.end33

if.else32:                                        ; preds = %do.body27
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.then31
  br label %do.end34

do.end34:                                         ; preds = %if.end33
  br label %do.body35

do.body35:                                        ; preds = %do.end34
  %arraydecay36 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %call37 = call i32 @mbedtls_ecjpake_write_round_one(%struct.mbedtls_ecjpake_context* noundef %srv, i8* noundef %arraydecay36, i64 noundef 512, i64* noundef %len, i32 (i8*, i8*, i64)* noundef @ecjpake_lgc, i8* noundef null) #4
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %do.body35
  store i32 0, i32* %ret, align 4
  br label %if.end41

if.else40:                                        ; preds = %do.body35
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end41:                                         ; preds = %if.then39
  br label %do.end42

do.end42:                                         ; preds = %if.end41
  br label %do.body43

do.body43:                                        ; preds = %do.end42
  %arraydecay44 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %4 = load i64, i64* %len, align 8
  %call45 = call i32 @mbedtls_ecjpake_read_round_one(%struct.mbedtls_ecjpake_context* noundef %cli, i8* noundef %arraydecay44, i64 noundef %4) #4
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.else48

if.then47:                                        ; preds = %do.body43
  store i32 0, i32* %ret, align 4
  br label %if.end49

if.else48:                                        ; preds = %do.body43
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end49:                                         ; preds = %if.then47
  br label %do.end50

do.end50:                                         ; preds = %if.end49
  br label %do.body51

do.body51:                                        ; preds = %do.end50
  %arraydecay52 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %call53 = call i32 @mbedtls_ecjpake_write_round_two(%struct.mbedtls_ecjpake_context* noundef %srv, i8* noundef %arraydecay52, i64 noundef 512, i64* noundef %len, i32 (i8*, i8*, i64)* noundef @ecjpake_lgc, i8* noundef null) #4
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then55, label %if.else56

if.then55:                                        ; preds = %do.body51
  store i32 0, i32* %ret, align 4
  br label %if.end57

if.else56:                                        ; preds = %do.body51
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end57:                                         ; preds = %if.then55
  br label %do.end58

do.end58:                                         ; preds = %if.end57
  br label %do.body59

do.body59:                                        ; preds = %do.end58
  %arraydecay60 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %5 = load i64, i64* %len, align 8
  %call61 = call i32 @mbedtls_ecjpake_read_round_two(%struct.mbedtls_ecjpake_context* noundef %cli, i8* noundef %arraydecay60, i64 noundef %5) #4
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then63, label %if.else64

if.then63:                                        ; preds = %do.body59
  store i32 0, i32* %ret, align 4
  br label %if.end65

if.else64:                                        ; preds = %do.body59
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end65:                                         ; preds = %if.then63
  br label %do.end66

do.end66:                                         ; preds = %if.end65
  br label %do.body67

do.body67:                                        ; preds = %do.end66
  %arraydecay68 = getelementptr inbounds [32 x i8], [32 x i8]* %pms, i64 0, i64 0
  %call69 = call i32 @mbedtls_ecjpake_derive_secret(%struct.mbedtls_ecjpake_context* noundef %cli, i8* noundef %arraydecay68, i64 noundef 32, i64* noundef %pmslen, i32 (i8*, i8*, i64)* noundef @ecjpake_lgc, i8* noundef null) #4
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then71, label %if.else72

if.then71:                                        ; preds = %do.body67
  store i32 0, i32* %ret, align 4
  br label %if.end73

if.else72:                                        ; preds = %do.body67
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end73:                                         ; preds = %if.then71
  br label %do.end74

do.end74:                                         ; preds = %if.end73
  br label %do.body75

do.body75:                                        ; preds = %do.end74
  %arraydecay76 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %call77 = call i32 @mbedtls_ecjpake_write_round_two(%struct.mbedtls_ecjpake_context* noundef %cli, i8* noundef %arraydecay76, i64 noundef 512, i64* noundef %len, i32 (i8*, i8*, i64)* noundef @ecjpake_lgc, i8* noundef null) #4
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then79, label %if.else80

if.then79:                                        ; preds = %do.body75
  store i32 0, i32* %ret, align 4
  br label %if.end81

if.else80:                                        ; preds = %do.body75
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end81:                                         ; preds = %if.then79
  br label %do.end82

do.end82:                                         ; preds = %if.end81
  br label %do.body83

do.body83:                                        ; preds = %do.end82
  %arraydecay84 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %6 = load i64, i64* %len, align 8
  %call85 = call i32 @mbedtls_ecjpake_read_round_two(%struct.mbedtls_ecjpake_context* noundef %srv, i8* noundef %arraydecay84, i64 noundef %6) #4
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then87, label %if.else88

if.then87:                                        ; preds = %do.body83
  store i32 0, i32* %ret, align 4
  br label %if.end89

if.else88:                                        ; preds = %do.body83
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end89:                                         ; preds = %if.then87
  br label %do.end90

do.end90:                                         ; preds = %if.end89
  br label %do.body91

do.body91:                                        ; preds = %do.end90
  %arraydecay92 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %call93 = call i32 @mbedtls_ecjpake_derive_secret(%struct.mbedtls_ecjpake_context* noundef %srv, i8* noundef %arraydecay92, i64 noundef 512, i64* noundef %len, i32 (i8*, i8*, i64)* noundef @ecjpake_lgc, i8* noundef null) #4
  %cmp94 = icmp eq i32 %call93, 0
  br i1 %cmp94, label %if.then95, label %if.else96

if.then95:                                        ; preds = %do.body91
  store i32 0, i32* %ret, align 4
  br label %if.end97

if.else96:                                        ; preds = %do.body91
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end97:                                         ; preds = %if.then95
  br label %do.end98

do.end98:                                         ; preds = %if.end97
  br label %do.body99

do.body99:                                        ; preds = %do.end98
  %7 = load i64, i64* %len, align 8
  %8 = load i64, i64* %pmslen, align 8
  %cmp100 = icmp eq i64 %7, %8
  br i1 %cmp100, label %if.then101, label %if.else102

if.then101:                                       ; preds = %do.body99
  store i32 0, i32* %ret, align 4
  br label %if.end103

if.else102:                                       ; preds = %do.body99
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end103:                                        ; preds = %if.then101
  br label %do.end104

do.end104:                                        ; preds = %if.end103
  br label %do.body105

do.body105:                                       ; preds = %do.end104
  %arraydecay106 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %arraydecay107 = getelementptr inbounds [32 x i8], [32 x i8]* %pms, i64 0, i64 0
  %9 = load i64, i64* %len, align 8
  %call108 = call i32 @memcmp(i8* noundef %arraydecay106, i8* noundef %arraydecay107, i64 noundef %9) #5
  %cmp109 = icmp eq i32 %call108, 0
  br i1 %cmp109, label %if.then110, label %if.else111

if.then110:                                       ; preds = %do.body105
  store i32 0, i32* %ret, align 4
  br label %if.end112

if.else111:                                       ; preds = %do.body105
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end112:                                        ; preds = %if.then110
  br label %do.end113

do.end113:                                        ; preds = %if.end112
  %10 = load i32, i32* %verbose.addr, align 4
  %cmp114 = icmp ne i32 %10, 0
  br i1 %cmp114, label %if.then115, label %if.end117

if.then115:                                       ; preds = %do.end113
  %call116 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %do.end113
  %11 = load i32, i32* %verbose.addr, align 4
  %cmp118 = icmp ne i32 %11, 0
  br i1 %cmp118, label %if.then119, label %if.end121

if.then119:                                       ; preds = %if.end117
  %call120 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end117
  br label %do.body122

do.body122:                                       ; preds = %if.end121
  %call123 = call i32 @ecjpake_test_load(%struct.mbedtls_ecjpake_context* noundef %cli, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @ecjpake_test_x1, i64 0, i64 0), i64 noundef 32, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @ecjpake_test_x2, i64 0, i64 0), i64 noundef 32) #4
  store i32 %call123, i32* %ret, align 4
  %cmp124 = icmp ne i32 %call123, 0
  br i1 %cmp124, label %if.then125, label %if.end126

if.then125:                                       ; preds = %do.body122
  br label %cleanup

if.end126:                                        ; preds = %do.body122
  br label %do.end127

do.end127:                                        ; preds = %if.end126
  br label %do.body128

do.body128:                                       ; preds = %do.end127
  %call129 = call i32 @ecjpake_test_load(%struct.mbedtls_ecjpake_context* noundef %srv, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @ecjpake_test_x3, i64 0, i64 0), i64 noundef 32, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @ecjpake_test_x4, i64 0, i64 0), i64 noundef 32) #4
  store i32 %call129, i32* %ret, align 4
  %cmp130 = icmp ne i32 %call129, 0
  br i1 %cmp130, label %if.then131, label %if.end132

if.then131:                                       ; preds = %do.body128
  br label %cleanup

if.end132:                                        ; preds = %do.body128
  br label %do.end133

do.end133:                                        ; preds = %if.end132
  br label %do.body134

do.body134:                                       ; preds = %do.end133
  %call135 = call i32 @mbedtls_ecjpake_read_round_one(%struct.mbedtls_ecjpake_context* noundef %srv, i8* noundef getelementptr inbounds ([330 x i8], [330 x i8]* @ecjpake_test_cli_one, i64 0, i64 0), i64 noundef 330) #4
  %cmp136 = icmp eq i32 %call135, 0
  br i1 %cmp136, label %if.then137, label %if.else138

if.then137:                                       ; preds = %do.body134
  store i32 0, i32* %ret, align 4
  br label %if.end139

if.else138:                                       ; preds = %do.body134
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end139:                                        ; preds = %if.then137
  br label %do.end140

do.end140:                                        ; preds = %if.end139
  br label %do.body141

do.body141:                                       ; preds = %do.end140
  %call142 = call i32 @mbedtls_ecjpake_read_round_one(%struct.mbedtls_ecjpake_context* noundef %cli, i8* noundef getelementptr inbounds ([330 x i8], [330 x i8]* @ecjpake_test_srv_one, i64 0, i64 0), i64 noundef 330) #4
  %cmp143 = icmp eq i32 %call142, 0
  br i1 %cmp143, label %if.then144, label %if.else145

if.then144:                                       ; preds = %do.body141
  store i32 0, i32* %ret, align 4
  br label %if.end146

if.else145:                                       ; preds = %do.body141
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end146:                                        ; preds = %if.then144
  br label %do.end147

do.end147:                                        ; preds = %if.end146
  br label %do.body148

do.body148:                                       ; preds = %do.end147
  %call149 = call i32 @mbedtls_ecjpake_read_round_two(%struct.mbedtls_ecjpake_context* noundef %cli, i8* noundef getelementptr inbounds ([168 x i8], [168 x i8]* @ecjpake_test_srv_two, i64 0, i64 0), i64 noundef 168) #4
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %if.then151, label %if.else152

if.then151:                                       ; preds = %do.body148
  store i32 0, i32* %ret, align 4
  br label %if.end153

if.else152:                                       ; preds = %do.body148
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end153:                                        ; preds = %if.then151
  br label %do.end154

do.end154:                                        ; preds = %if.end153
  br label %do.body155

do.body155:                                       ; preds = %do.end154
  %call156 = call i32 @mbedtls_ecjpake_read_round_two(%struct.mbedtls_ecjpake_context* noundef %srv, i8* noundef getelementptr inbounds ([165 x i8], [165 x i8]* @ecjpake_test_cli_two, i64 0, i64 0), i64 noundef 165) #4
  %cmp157 = icmp eq i32 %call156, 0
  br i1 %cmp157, label %if.then158, label %if.else159

if.then158:                                       ; preds = %do.body155
  store i32 0, i32* %ret, align 4
  br label %if.end160

if.else159:                                       ; preds = %do.body155
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end160:                                        ; preds = %if.then158
  br label %do.end161

do.end161:                                        ; preds = %if.end160
  br label %do.body162

do.body162:                                       ; preds = %do.end161
  %arraydecay163 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %call164 = call i32 @mbedtls_ecjpake_derive_secret(%struct.mbedtls_ecjpake_context* noundef %srv, i8* noundef %arraydecay163, i64 noundef 512, i64* noundef %len, i32 (i8*, i8*, i64)* noundef @ecjpake_lgc, i8* noundef null) #4
  %cmp165 = icmp eq i32 %call164, 0
  br i1 %cmp165, label %if.then166, label %if.else167

if.then166:                                       ; preds = %do.body162
  store i32 0, i32* %ret, align 4
  br label %if.end168

if.else167:                                       ; preds = %do.body162
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end168:                                        ; preds = %if.then166
  br label %do.end169

do.end169:                                        ; preds = %if.end168
  br label %do.body170

do.body170:                                       ; preds = %do.end169
  %12 = load i64, i64* %len, align 8
  %cmp171 = icmp eq i64 %12, 32
  br i1 %cmp171, label %if.then172, label %if.else173

if.then172:                                       ; preds = %do.body170
  store i32 0, i32* %ret, align 4
  br label %if.end174

if.else173:                                       ; preds = %do.body170
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end174:                                        ; preds = %if.then172
  br label %do.end175

do.end175:                                        ; preds = %if.end174
  br label %do.body176

do.body176:                                       ; preds = %do.end175
  %arraydecay177 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %13 = load i64, i64* %len, align 8
  %call178 = call i32 @memcmp(i8* noundef %arraydecay177, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @ecjpake_test_pms, i64 0, i64 0), i64 noundef %13) #5
  %cmp179 = icmp eq i32 %call178, 0
  br i1 %cmp179, label %if.then180, label %if.else181

if.then180:                                       ; preds = %do.body176
  store i32 0, i32* %ret, align 4
  br label %if.end182

if.else181:                                       ; preds = %do.body176
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end182:                                        ; preds = %if.then180
  br label %do.end183

do.end183:                                        ; preds = %if.end182
  %arraydecay184 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %14 = load i64, i64* %len, align 8
  %call185 = call i8* @memset(i8* noundef %arraydecay184, i32 noundef 0, i64 noundef %14) #6
  br label %do.body186

do.body186:                                       ; preds = %do.end183
  %arraydecay187 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %call188 = call i32 @mbedtls_ecjpake_derive_secret(%struct.mbedtls_ecjpake_context* noundef %cli, i8* noundef %arraydecay187, i64 noundef 512, i64* noundef %len, i32 (i8*, i8*, i64)* noundef @ecjpake_lgc, i8* noundef null) #4
  %cmp189 = icmp eq i32 %call188, 0
  br i1 %cmp189, label %if.then190, label %if.else191

if.then190:                                       ; preds = %do.body186
  store i32 0, i32* %ret, align 4
  br label %if.end192

if.else191:                                       ; preds = %do.body186
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end192:                                        ; preds = %if.then190
  br label %do.end193

do.end193:                                        ; preds = %if.end192
  br label %do.body194

do.body194:                                       ; preds = %do.end193
  %15 = load i64, i64* %len, align 8
  %cmp195 = icmp eq i64 %15, 32
  br i1 %cmp195, label %if.then196, label %if.else197

if.then196:                                       ; preds = %do.body194
  store i32 0, i32* %ret, align 4
  br label %if.end198

if.else197:                                       ; preds = %do.body194
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end198:                                        ; preds = %if.then196
  br label %do.end199

do.end199:                                        ; preds = %if.end198
  br label %do.body200

do.body200:                                       ; preds = %do.end199
  %arraydecay201 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %16 = load i64, i64* %len, align 8
  %call202 = call i32 @memcmp(i8* noundef %arraydecay201, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @ecjpake_test_pms, i64 0, i64 0), i64 noundef %16) #5
  %cmp203 = icmp eq i32 %call202, 0
  br i1 %cmp203, label %if.then204, label %if.else205

if.then204:                                       ; preds = %do.body200
  store i32 0, i32* %ret, align 4
  br label %if.end206

if.else205:                                       ; preds = %do.body200
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end206:                                        ; preds = %if.then204
  br label %do.end207

do.end207:                                        ; preds = %if.end206
  %17 = load i32, i32* %verbose.addr, align 4
  %cmp208 = icmp ne i32 %17, 0
  br i1 %cmp208, label %if.then209, label %if.end211

if.then209:                                       ; preds = %do.end207
  %call210 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %if.end211

if.end211:                                        ; preds = %if.then209, %do.end207
  br label %cleanup

cleanup:                                          ; preds = %if.end211, %if.else205, %if.else197, %if.else191, %if.else181, %if.else173, %if.else167, %if.else159, %if.else152, %if.else145, %if.else138, %if.then131, %if.then125, %if.else111, %if.else102, %if.else96, %if.else88, %if.else80, %if.else72, %if.else64, %if.else56, %if.else48, %if.else40, %if.else32, %if.else24, %if.else9, %if.else
  call void @mbedtls_ecjpake_free(%struct.mbedtls_ecjpake_context* noundef %cli) #4
  call void @mbedtls_ecjpake_free(%struct.mbedtls_ecjpake_context* noundef %srv) #4
  %18 = load i32, i32* %ret, align 4
  %cmp212 = icmp ne i32 %18, 0
  br i1 %cmp212, label %if.then213, label %if.end218

if.then213:                                       ; preds = %cleanup
  %19 = load i32, i32* %verbose.addr, align 4
  %cmp214 = icmp ne i32 %19, 0
  br i1 %cmp214, label %if.then215, label %if.end217

if.then215:                                       ; preds = %if.then213
  %call216 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #4
  br label %if.end217

if.end217:                                        ; preds = %if.then215, %if.then213
  store i32 1, i32* %ret, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.end217, %cleanup
  %20 = load i32, i32* %verbose.addr, align 4
  %cmp219 = icmp ne i32 %20, 0
  br i1 %cmp219, label %if.then220, label %if.end222

if.then220:                                       ; preds = %if.end218
  %call221 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #4
  br label %if.end222

if.end222:                                        ; preds = %if.then220, %if.end218
  %21 = load i32, i32* %ret, align 4
  ret i32 %21
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecjpake_lgc(i8* noundef %p, i8* noundef %out, i64 noundef %len) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %use_len = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp ugt i64 %2, 4
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %3 = load i64, i64* %len.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 4, %cond.true ], [ %3, %cond.false ]
  store i64 %cond, i64* %use_len, align 8
  %4 = load i32, i32* @ecjpake_lgc.x, align 4
  %mul = mul i32 1664525, %4
  %add = add i32 %mul, 1013904223
  store i32 %add, i32* @ecjpake_lgc.x, align 4
  %5 = load i8*, i8** %out.addr, align 8
  %6 = load i64, i64* %use_len, align 8
  %call = call i8* @memcpy(i8* noundef %5, i8* noundef bitcast (i32* @ecjpake_lgc.x to i8*), i64 noundef %6) #6
  %7 = load i64, i64* %use_len, align 8
  %8 = load i8*, i8** %out.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %7
  store i8* %add.ptr, i8** %out.addr, align 8
  %9 = load i64, i64* %use_len, align 8
  %10 = load i64, i64* %len.addr, align 8
  %sub = sub i64 %10, %9
  store i64 %sub, i64* %len.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecjpake_test_load(%struct.mbedtls_ecjpake_context* noundef %ctx, i8* noundef %xm1, i64 noundef %len1, i8* noundef %xm2, i64 noundef %len2) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecjpake_context*, align 8
  %xm1.addr = alloca i8*, align 8
  %len1.addr = alloca i64, align 8
  %xm2.addr = alloca i8*, align 8
  %len2.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecjpake_context* %ctx, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  store i8* %xm1, i8** %xm1.addr, align 8
  store i64 %len1, i64* %len1.addr, align 8
  store i8* %xm2, i8** %xm2.addr, align 8
  store i64 %len2, i64* %len2.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %xm11 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %0, i32 0, i32 9
  %1 = load i8*, i8** %xm1.addr, align 8
  %2 = load i64, i64* %len1.addr, align 8
  %call = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %xm11, i8* noundef %1, i64 noundef %2) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %3 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %xm23 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %3, i32 0, i32 10
  %4 = load i8*, i8** %xm2.addr, align 8
  %5 = load i64, i64* %len2.addr, align 8
  %call4 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %xm23, i8* noundef %4, i64 noundef %5) #4
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.body2
  br label %cleanup

if.end7:                                          ; preds = %do.body2
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  %6 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %6, i32 0, i32 1
  %7 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xm1 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %7, i32 0, i32 4
  %8 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %xm110 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %8, i32 0, i32 9
  %9 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp11 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %9, i32 0, i32 1
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp11, i32 0, i32 4
  %call12 = call i32 @mbedtls_ecp_mul(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %Xm1, %struct.mbedtls_mpi* noundef %xm110, %struct.mbedtls_ecp_point* noundef %G, i32 (i8*, i8*, i64)* noundef @self_test_rng, i8* noundef null) #4
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.body9
  br label %cleanup

if.end15:                                         ; preds = %do.body9
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  br label %do.body17

do.body17:                                        ; preds = %do.end16
  %10 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp18 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %10, i32 0, i32 1
  %11 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %Xm2 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %11, i32 0, i32 5
  %12 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %xm219 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %12, i32 0, i32 10
  %13 = load %struct.mbedtls_ecjpake_context*, %struct.mbedtls_ecjpake_context** %ctx.addr, align 8
  %grp20 = getelementptr inbounds %struct.mbedtls_ecjpake_context, %struct.mbedtls_ecjpake_context* %13, i32 0, i32 1
  %G21 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp20, i32 0, i32 4
  %call22 = call i32 @mbedtls_ecp_mul(%struct.mbedtls_ecp_group* noundef %grp18, %struct.mbedtls_ecp_point* noundef %Xm2, %struct.mbedtls_mpi* noundef %xm219, %struct.mbedtls_ecp_point* noundef %G21, i32 (i8*, i8*, i64)* noundef @self_test_rng, i8* noundef null) #4
  store i32 %call22, i32* %ret, align 4
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %do.body17
  br label %cleanup

if.end25:                                         ; preds = %do.body17
  br label %do.end26

do.end26:                                         ; preds = %if.end25
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.then24, %if.then14, %if.then6, %if.then
  %14 = load i32, i32* %ret, align 4
  ret i32 %14
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecjpake_kkp_write(%struct.mbedtls_md_info_t* noundef %md_info, %struct.mbedtls_ecp_group* noundef %grp, i32 noundef %pf, %struct.mbedtls_ecp_point* noundef %G, %struct.mbedtls_mpi* noundef %x, %struct.mbedtls_ecp_point* noundef %X, i8* noundef %id, i8** noundef %p, i8* noundef %end, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %pf.addr = alloca i32, align 4
  %G.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %x.addr = alloca %struct.mbedtls_mpi*, align 8
  %X.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %id.addr = alloca i8*, align 8
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i32 %pf, i32* %pf.addr, align 4
  store %struct.mbedtls_ecp_point* %G, %struct.mbedtls_ecp_point** %G.addr, align 8
  store %struct.mbedtls_mpi* %x, %struct.mbedtls_mpi** %x.addr, align 8
  store %struct.mbedtls_ecp_point* %X, %struct.mbedtls_ecp_point** %X.addr, align 8
  store i8* %id, i8** %id.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %cmp = icmp ult i8* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20224, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %G.addr, align 8
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %x.addr, align 8
  %6 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %X.addr, align 8
  %7 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %8 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_ecp_gen_keypair_base(%struct.mbedtls_ecp_group* noundef %3, %struct.mbedtls_ecp_point* noundef %4, %struct.mbedtls_mpi* noundef %5, %struct.mbedtls_ecp_point* noundef %6, i32 (i8*, i8*, i64)* noundef %7, i8* noundef %8) #4
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.body
  br label %cleanup

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  br label %do.body4

do.body4:                                         ; preds = %do.end
  %9 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %10 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %X.addr, align 8
  %11 = load i32, i32* %pf.addr, align 4
  %12 = load i8**, i8*** %p.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %end.addr, align 8
  %15 = load i8**, i8*** %p.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call5 = call i32 @mbedtls_ecp_tls_write_point(%struct.mbedtls_ecp_group* noundef %9, %struct.mbedtls_ecp_point* noundef %10, i32 noundef %11, i64* noundef %len, i8* noundef %13, i64 noundef %sub.ptr.sub) #4
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.body4
  br label %cleanup

if.end8:                                          ; preds = %do.body4
  br label %do.end9

do.end9:                                          ; preds = %if.end8
  %17 = load i64, i64* %len, align 8
  %18 = load i8**, i8*** %p.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %17
  store i8* %add.ptr, i8** %18, align 8
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  %20 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %21 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %22 = load i32, i32* %pf.addr, align 4
  %23 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %G.addr, align 8
  %24 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %x.addr, align 8
  %25 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %X.addr, align 8
  %26 = load i8*, i8** %id.addr, align 8
  %27 = load i8**, i8*** %p.addr, align 8
  %28 = load i8*, i8** %end.addr, align 8
  %29 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %30 = load i8*, i8** %p_rng.addr, align 8
  %call11 = call i32 @ecjpake_zkp_write(%struct.mbedtls_md_info_t* noundef %20, %struct.mbedtls_ecp_group* noundef %21, i32 noundef %22, %struct.mbedtls_ecp_point* noundef %23, %struct.mbedtls_mpi* noundef %24, %struct.mbedtls_ecp_point* noundef %25, i8* noundef %26, i8** noundef %27, i8* noundef %28, i32 (i8*, i8*, i64)* noundef %29, i8* noundef %30) #4
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body10
  br label %cleanup

if.end14:                                         ; preds = %do.body10
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.then13, %if.then7, %if.then2
  %31 = load i32, i32* %ret, align 4
  store i32 %31, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

declare dso_local i32 @mbedtls_ecp_gen_keypair_base(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_ecp_point* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ecp_tls_read_point(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, i8** noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ecp_is_zero(%struct.mbedtls_ecp_point* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecjpake_zkp_read(%struct.mbedtls_md_info_t* noundef %md_info, %struct.mbedtls_ecp_group* noundef %grp, i32 noundef %pf, %struct.mbedtls_ecp_point* noundef %G, %struct.mbedtls_ecp_point* noundef %X, i8* noundef %id, i8** noundef %p, i8* noundef %end) #0 {
entry:
  %retval = alloca i32, align 4
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %pf.addr = alloca i32, align 4
  %G.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %X.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %id.addr = alloca i8*, align 8
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %V = alloca %struct.mbedtls_ecp_point, align 8
  %VV = alloca %struct.mbedtls_ecp_point, align 8
  %r = alloca %struct.mbedtls_mpi, align 8
  %h = alloca %struct.mbedtls_mpi, align 8
  %r_len = alloca i64, align 8
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i32 %pf, i32* %pf.addr, align 4
  store %struct.mbedtls_ecp_point* %G, %struct.mbedtls_ecp_point** %G.addr, align 8
  store %struct.mbedtls_ecp_point* %X, %struct.mbedtls_ecp_point** %X.addr, align 8
  store i8* %id, i8** %id.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %V) #4
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %VV) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %r) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %h) #4
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %cmp = icmp ult i8* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %4 = load i8**, i8*** %p.addr, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %6 = load i8**, i8*** %p.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i32 @mbedtls_ecp_tls_read_point(%struct.mbedtls_ecp_group* noundef %3, %struct.mbedtls_ecp_point* noundef %V, i8** noundef %4, i64 noundef %sub.ptr.sub) #4
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.body
  br label %cleanup

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  %8 = load i8*, i8** %end.addr, align 8
  %9 = load i8**, i8*** %p.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %cmp4 = icmp ult i8* %8, %10
  br i1 %cmp4, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %11 = load i8*, i8** %end.addr, align 8
  %12 = load i8**, i8*** %p.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %sub.ptr.lhs.cast5 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast6 = ptrtoint i8* %13 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %cmp8 = icmp ult i64 %sub.ptr.sub7, 1
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %do.end
  store i32 -20352, i32* %ret, align 4
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %14 = load i8**, i8*** %p.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i64
  store i64 %conv, i64* %r_len, align 8
  %17 = load i8*, i8** %end.addr, align 8
  %18 = load i8**, i8*** %p.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %cmp11 = icmp ult i8* %17, %19
  br i1 %cmp11, label %if.then22, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end10
  %20 = load i8*, i8** %end.addr, align 8
  %21 = load i8**, i8*** %p.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %sub.ptr.lhs.cast14 = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast15 = ptrtoint i8* %22 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  %23 = load i64, i64* %r_len, align 8
  %cmp17 = icmp ult i64 %sub.ptr.sub16, %23
  br i1 %cmp17, label %if.then22, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %24 = load i64, i64* %r_len, align 8
  %cmp20 = icmp eq i64 %24, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %lor.lhs.false19, %lor.lhs.false13, %if.end10
  store i32 -20352, i32* %ret, align 4
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false19
  br label %do.body24

do.body24:                                        ; preds = %if.end23
  %25 = load i8**, i8*** %p.addr, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %r_len, align 8
  %call25 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %r, i8* noundef %26, i64 noundef %27) #4
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %do.body24
  br label %cleanup

if.end29:                                         ; preds = %do.body24
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  %28 = load i64, i64* %r_len, align 8
  %29 = load i8**, i8*** %p.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %28
  store i8* %add.ptr, i8** %29, align 8
  br label %do.body31

do.body31:                                        ; preds = %do.end30
  %31 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %32 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %33 = load i32, i32* %pf.addr, align 4
  %34 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %G.addr, align 8
  %35 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %X.addr, align 8
  %36 = load i8*, i8** %id.addr, align 8
  %call32 = call i32 @ecjpake_hash(%struct.mbedtls_md_info_t* noundef %31, %struct.mbedtls_ecp_group* noundef %32, i32 noundef %33, %struct.mbedtls_ecp_point* noundef %34, %struct.mbedtls_ecp_point* noundef %V, %struct.mbedtls_ecp_point* noundef %35, i8* noundef %36, %struct.mbedtls_mpi* noundef %h) #4
  store i32 %call32, i32* %ret, align 4
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %do.body31
  br label %cleanup

if.end36:                                         ; preds = %do.body31
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  br label %do.body38

do.body38:                                        ; preds = %do.end37
  %37 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %38 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %X.addr, align 8
  %39 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %G.addr, align 8
  %call39 = call i32 @mbedtls_ecp_muladd(%struct.mbedtls_ecp_group* noundef %37, %struct.mbedtls_ecp_point* noundef %VV, %struct.mbedtls_mpi* noundef %h, %struct.mbedtls_ecp_point* noundef %38, %struct.mbedtls_mpi* noundef %r, %struct.mbedtls_ecp_point* noundef %39) #4
  store i32 %call39, i32* %ret, align 4
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.body38
  br label %cleanup

if.end43:                                         ; preds = %do.body38
  br label %do.end44

do.end44:                                         ; preds = %if.end43
  %call45 = call i32 @mbedtls_ecp_point_cmp(%struct.mbedtls_ecp_point* noundef %VV, %struct.mbedtls_ecp_point* noundef %V) #4
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %do.end44
  store i32 -19968, i32* %ret, align 4
  br label %cleanup

if.end49:                                         ; preds = %do.end44
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then48, %if.then42, %if.then35, %if.then28, %if.then22, %if.then9, %if.then2
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %V) #4
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %VV) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %r) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %h) #4
  %40 = load i32, i32* %ret, align 4
  store i32 %40, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %41 = load i32, i32* %retval, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecjpake_hash(%struct.mbedtls_md_info_t* noundef %md_info, %struct.mbedtls_ecp_group* noundef %grp, i32 noundef %pf, %struct.mbedtls_ecp_point* noundef %G, %struct.mbedtls_ecp_point* noundef %V, %struct.mbedtls_ecp_point* noundef %X, i8* noundef %id, %struct.mbedtls_mpi* noundef %h) #0 {
entry:
  %retval = alloca i32, align 4
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %pf.addr = alloca i32, align 4
  %G.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %V.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %X.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %id.addr = alloca i8*, align 8
  %h.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %buf = alloca [421 x i8], align 16
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %id_len = alloca i64, align 8
  %hash = alloca [64 x i8], align 16
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i32 %pf, i32* %pf.addr, align 4
  store %struct.mbedtls_ecp_point* %G, %struct.mbedtls_ecp_point** %G.addr, align 8
  store %struct.mbedtls_ecp_point* %V, %struct.mbedtls_ecp_point** %V.addr, align 8
  store %struct.mbedtls_ecp_point* %X, %struct.mbedtls_ecp_point** %X.addr, align 8
  store i8* %id, i8** %id.addr, align 8
  store %struct.mbedtls_mpi* %h, %struct.mbedtls_mpi** %h.addr, align 8
  store i32 -110, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [421 x i8], [421 x i8]* %buf, i64 0, i64 0
  store i8* %arraydecay, i8** %p, align 8
  %arraydecay1 = getelementptr inbounds [421 x i8], [421 x i8]* %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay1, i64 421
  store i8* %add.ptr, i8** %end, align 8
  %0 = load i8*, i8** %id.addr, align 8
  %call = call i64 @strlen(i8* noundef %0) #5
  store i64 %call, i64* %id_len, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i8*, i8** %end, align 8
  %2 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %3 = load i32, i32* %pf.addr, align 4
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %G.addr, align 8
  %call2 = call i32 @ecjpake_write_len_point(i8** noundef %p, i8* noundef %1, %struct.mbedtls_ecp_group* noundef %2, i32 noundef %3, %struct.mbedtls_ecp_point* noundef %4) #4
  store i32 %call2, i32* %ret, align 4
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %5 = load i8*, i8** %end, align 8
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %7 = load i32, i32* %pf.addr, align 4
  %8 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %V.addr, align 8
  %call4 = call i32 @ecjpake_write_len_point(i8** noundef %p, i8* noundef %5, %struct.mbedtls_ecp_group* noundef %6, i32 noundef %7, %struct.mbedtls_ecp_point* noundef %8) #4
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.body3
  br label %cleanup

if.end7:                                          ; preds = %do.body3
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  %9 = load i8*, i8** %end, align 8
  %10 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %11 = load i32, i32* %pf.addr, align 4
  %12 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %X.addr, align 8
  %call10 = call i32 @ecjpake_write_len_point(i8** noundef %p, i8* noundef %9, %struct.mbedtls_ecp_group* noundef %10, i32 noundef %11, %struct.mbedtls_ecp_point* noundef %12) #4
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.body9
  br label %cleanup

if.end13:                                         ; preds = %do.body9
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  %13 = load i8*, i8** %end, align 8
  %14 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp15 = icmp slt i64 %sub.ptr.sub, 4
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.end14
  store i32 -20224, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %do.end14
  %15 = load i64, i64* %id_len, align 8
  %shr = lshr i64 %15, 24
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %16 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %17 = load i64, i64* %id_len, align 8
  %shr18 = lshr i64 %17, 16
  %and19 = and i64 %shr18, 255
  %conv20 = trunc i64 %and19 to i8
  %18 = load i8*, i8** %p, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 %conv20, i8* %arrayidx21, align 1
  %19 = load i64, i64* %id_len, align 8
  %shr22 = lshr i64 %19, 8
  %and23 = and i64 %shr22, 255
  %conv24 = trunc i64 %and23 to i8
  %20 = load i8*, i8** %p, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %20, i64 2
  store i8 %conv24, i8* %arrayidx25, align 1
  %21 = load i64, i64* %id_len, align 8
  %and26 = and i64 %21, 255
  %conv27 = trunc i64 %and26 to i8
  %22 = load i8*, i8** %p, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %22, i64 3
  store i8 %conv27, i8* %arrayidx28, align 1
  %23 = load i8*, i8** %p, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %23, i64 4
  store i8* %add.ptr29, i8** %p, align 8
  %24 = load i8*, i8** %end, align 8
  %25 = load i8*, i8** %p, align 8
  %cmp30 = icmp ult i8* %24, %25
  br i1 %cmp30, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end17
  %26 = load i8*, i8** %end, align 8
  %27 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast32 = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast33 = ptrtoint i8* %27 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %28 = load i64, i64* %id_len, align 8
  %cmp35 = icmp ult i64 %sub.ptr.sub34, %28
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %lor.lhs.false, %if.end17
  store i32 -20224, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %lor.lhs.false
  %29 = load i8*, i8** %p, align 8
  %30 = load i8*, i8** %id.addr, align 8
  %31 = load i64, i64* %id_len, align 8
  %call39 = call i8* @memcpy(i8* noundef %29, i8* noundef %30, i64 noundef %31) #6
  %32 = load i64, i64* %id_len, align 8
  %33 = load i8*, i8** %p, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %33, i64 %32
  store i8* %add.ptr40, i8** %p, align 8
  br label %do.body41

do.body41:                                        ; preds = %if.end38
  %34 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %arraydecay42 = getelementptr inbounds [421 x i8], [421 x i8]* %buf, i64 0, i64 0
  %35 = load i8*, i8** %p, align 8
  %arraydecay43 = getelementptr inbounds [421 x i8], [421 x i8]* %buf, i64 0, i64 0
  %sub.ptr.lhs.cast44 = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast45 = ptrtoint i8* %arraydecay43 to i64
  %sub.ptr.sub46 = sub i64 %sub.ptr.lhs.cast44, %sub.ptr.rhs.cast45
  %arraydecay47 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %call48 = call i32 @mbedtls_md(%struct.mbedtls_md_info_t* noundef %34, i8* noundef %arraydecay42, i64 noundef %sub.ptr.sub46, i8* noundef %arraydecay47) #4
  store i32 %call48, i32* %ret, align 4
  %cmp49 = icmp ne i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %do.body41
  br label %cleanup

if.end52:                                         ; preds = %do.body41
  br label %do.end53

do.end53:                                         ; preds = %if.end52
  br label %do.body54

do.body54:                                        ; preds = %do.end53
  %36 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %h.addr, align 8
  %arraydecay55 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %37 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call56 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %37) #4
  %conv57 = zext i8 %call56 to i64
  %call58 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %36, i8* noundef %arraydecay55, i64 noundef %conv57) #4
  store i32 %call58, i32* %ret, align 4
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %do.body54
  br label %cleanup

if.end62:                                         ; preds = %do.body54
  br label %do.end63

do.end63:                                         ; preds = %if.end62
  br label %do.body64

do.body64:                                        ; preds = %do.end63
  %38 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %h.addr, align 8
  %39 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %h.addr, align 8
  %40 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %40, i32 0, i32 5
  %call65 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %38, %struct.mbedtls_mpi* noundef %39, %struct.mbedtls_mpi* noundef %N) #4
  store i32 %call65, i32* %ret, align 4
  %cmp66 = icmp ne i32 %call65, 0
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %do.body64
  br label %cleanup

if.end69:                                         ; preds = %do.body64
  br label %do.end70

do.end70:                                         ; preds = %if.end69
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %if.then68, %if.then61, %if.then51, %if.then12, %if.then6, %if.then
  %41 = load i32, i32* %ret, align 4
  store i32 %41, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then37, %if.then16
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

declare dso_local i32 @mbedtls_ecp_point_cmp(%struct.mbedtls_ecp_point* noundef, %struct.mbedtls_ecp_point* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecjpake_write_len_point(i8** noundef %p, i8* noundef %end, %struct.mbedtls_ecp_group* noundef %grp, i32 noundef %pf, %struct.mbedtls_ecp_point* noundef %P) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %pf.addr = alloca i32, align 4
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i32 %pf, i32* %pf.addr, align 4
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %cmp = icmp ult i8* %0, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %end.addr, align 8
  %4 = load i8**, i8*** %p.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp slt i64 %sub.ptr.sub, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -20224, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %7 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %8 = load i32, i32* %pf.addr, align 4
  %9 = load i8**, i8*** %p.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 4
  %11 = load i8*, i8** %end.addr, align 8
  %12 = load i8**, i8*** %p.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %13, i64 4
  %sub.ptr.lhs.cast3 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %add.ptr2 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %call = call i32 @mbedtls_ecp_point_write_binary(%struct.mbedtls_ecp_group* noundef %6, %struct.mbedtls_ecp_point* noundef %7, i32 noundef %8, i64* noundef %len, i8* noundef %add.ptr, i64 noundef %sub.ptr.sub5) #4
  store i32 %call, i32* %ret, align 4
  %14 = load i32, i32* %ret, align 4
  %cmp6 = icmp ne i32 %14, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %16 = load i64, i64* %len, align 8
  %shr = lshr i64 %16, 24
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %17 = load i8**, i8*** %p.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %19 = load i64, i64* %len, align 8
  %shr9 = lshr i64 %19, 16
  %and10 = and i64 %shr9, 255
  %conv11 = trunc i64 %and10 to i8
  %20 = load i8**, i8*** %p.addr, align 8
  %21 = load i8*, i8** %20, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %conv11, i8* %arrayidx12, align 1
  %22 = load i64, i64* %len, align 8
  %shr13 = lshr i64 %22, 8
  %and14 = and i64 %shr13, 255
  %conv15 = trunc i64 %and14 to i8
  %23 = load i8**, i8*** %p.addr, align 8
  %24 = load i8*, i8** %23, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %24, i64 2
  store i8 %conv15, i8* %arrayidx16, align 1
  %25 = load i64, i64* %len, align 8
  %and17 = and i64 %25, 255
  %conv18 = trunc i64 %and17 to i8
  %26 = load i8**, i8*** %p.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %27, i64 3
  store i8 %conv18, i8* %arrayidx19, align 1
  %28 = load i64, i64* %len, align 8
  %add = add i64 4, %28
  %29 = load i8**, i8*** %p.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %30, i64 %add
  store i8* %add.ptr20, i8** %29, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_ecp_point_write_binary(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, i32 noundef, i64* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_fill_random(%struct.mbedtls_mpi* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @self_test_rng(i8* noundef %ctx, i8* noundef %out, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @self_test_rng.state, align 4
  %mul = mul i32 %3, 1664525
  %add = add i32 %mul, 1013904223
  store i32 %add, i32* @self_test_rng.state, align 4
  %4 = load i32, i32* @self_test_rng.state, align 4
  %conv = trunc i32 %4 to i8
  %5 = load i8*, i8** %out.addr, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %6
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}

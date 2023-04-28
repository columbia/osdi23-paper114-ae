; ModuleID = 'ecdh.c'
source_filename = "ecdh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_ecdh_context = type { i8, i32, i32, %union.anon }
%union.anon = type { %struct.mbedtls_ecdh_context_mbed }
%struct.mbedtls_ecdh_context_mbed = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdh_can_do(i32 noundef %gid) #0 {
entry:
  %gid.addr = alloca i32, align 4
  store i32 %gid, i32* %gid.addr, align 4
  %0 = load i32, i32* %gid.addr, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdh_gen_public(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %d, %struct.mbedtls_ecp_point* noundef %Q, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %d.addr = alloca %struct.mbedtls_mpi*, align 8
  %Q.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %d, %struct.mbedtls_mpi** %d.addr, align 8
  store %struct.mbedtls_ecp_point* %Q, %struct.mbedtls_ecp_point** %Q.addr, align 8
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
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %2 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %3 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %4 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @ecdh_gen_public_restartable(%struct.mbedtls_ecp_group* noundef %0, %struct.mbedtls_mpi* noundef %1, %struct.mbedtls_ecp_point* noundef %2, i32 (i8*, i8*, i64)* noundef %3, i8* noundef %4, i8* noundef null) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdh_gen_public_restartable(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %d, %struct.mbedtls_ecp_point* noundef %Q, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i8* noundef %rs_ctx) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %d.addr = alloca %struct.mbedtls_mpi*, align 8
  %Q.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %d, %struct.mbedtls_mpi** %d.addr, align 8
  store %struct.mbedtls_ecp_point* %Q, %struct.mbedtls_ecp_point** %Q.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %2 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %3 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_ecp_gen_privkey(%struct.mbedtls_ecp_group* noundef %0, %struct.mbedtls_mpi* noundef %1, i32 (i8*, i8*, i64)* noundef %2, i8* noundef %3) #3
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
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %5 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %7, i32 0, i32 4
  %8 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %9 = load i8*, i8** %p_rng.addr, align 8
  %10 = load i8*, i8** %rs_ctx.addr, align 8
  %call2 = call i32 @mbedtls_ecp_mul_restartable(%struct.mbedtls_ecp_group* noundef %4, %struct.mbedtls_ecp_point* noundef %5, %struct.mbedtls_mpi* noundef %6, %struct.mbedtls_ecp_point* noundef %G, i32 (i8*, i8*, i64)* noundef %8, i8* noundef %9, i8* noundef %10) #3
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body1
  br label %cleanup

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %if.then4, %if.then
  %11 = load i32, i32* %ret, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdh_compute_shared(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %z, %struct.mbedtls_ecp_point* noundef %Q, %struct.mbedtls_mpi* noundef %d, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %z.addr = alloca %struct.mbedtls_mpi*, align 8
  %Q.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %d.addr = alloca %struct.mbedtls_mpi*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %z, %struct.mbedtls_mpi** %z.addr, align 8
  store %struct.mbedtls_ecp_point* %Q, %struct.mbedtls_ecp_point** %Q.addr, align 8
  store %struct.mbedtls_mpi* %d, %struct.mbedtls_mpi** %d.addr, align 8
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
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %z.addr, align 8
  %2 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %4 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %5 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @ecdh_compute_shared_restartable(%struct.mbedtls_ecp_group* noundef %0, %struct.mbedtls_mpi* noundef %1, %struct.mbedtls_ecp_point* noundef %2, %struct.mbedtls_mpi* noundef %3, i32 (i8*, i8*, i64)* noundef %4, i8* noundef %5, i8* noundef null) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdh_compute_shared_restartable(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %z, %struct.mbedtls_ecp_point* noundef %Q, %struct.mbedtls_mpi* noundef %d, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i8* noundef %rs_ctx) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %z.addr = alloca %struct.mbedtls_mpi*, align 8
  %Q.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %d.addr = alloca %struct.mbedtls_mpi*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %P = alloca %struct.mbedtls_ecp_point, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %z, %struct.mbedtls_mpi** %z.addr, align 8
  store %struct.mbedtls_ecp_point* %Q, %struct.mbedtls_ecp_point** %Q.addr, align 8
  store %struct.mbedtls_mpi* %d, %struct.mbedtls_mpi** %d.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %P) #3
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %2 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %3 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %4 = load i8*, i8** %p_rng.addr, align 8
  %5 = load i8*, i8** %rs_ctx.addr, align 8
  %call = call i32 @mbedtls_ecp_mul_restartable(%struct.mbedtls_ecp_group* noundef %0, %struct.mbedtls_ecp_point* noundef %P, %struct.mbedtls_mpi* noundef %1, %struct.mbedtls_ecp_point* noundef %2, i32 (i8*, i8*, i64)* noundef %3, i8* noundef %4, i8* noundef %5) #3
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %call1 = call i32 @mbedtls_ecp_is_zero(%struct.mbedtls_ecp_point* noundef %P) #3
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.end
  store i32 -20352, i32* %ret, align 4
  br label %cleanup

if.end3:                                          ; preds = %do.end
  br label %do.body4

do.body4:                                         ; preds = %if.end3
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %z.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %P, i32 0, i32 0
  %call5 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %6, %struct.mbedtls_mpi* noundef %X) #3
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.body4
  br label %cleanup

if.end8:                                          ; preds = %do.body4
  br label %do.end9

do.end9:                                          ; preds = %if.end8
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.then7, %if.then2, %if.then
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %P) #3
  %7 = load i32, i32* %ret, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ecdh_init(%struct.mbedtls_ecdh_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecdh_context*, align 8
  store %struct.mbedtls_ecdh_context* %ctx, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_ecdh_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 456) #4
  %2 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %var = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %2, i32 0, i32 2
  store i32 0, i32* %var, align 8
  %3 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %point_format = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %3, i32 0, i32 0
  store i8 0, i8* %point_format, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdh_setup(%struct.mbedtls_ecdh_context* noundef %ctx, i32 noundef %grp_id) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecdh_context*, align 8
  %grp_id.addr = alloca i32, align 4
  store %struct.mbedtls_ecdh_context* %ctx, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  store i32 %grp_id, i32* %grp_id.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %grp_id.addr, align 4
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %do.end
  %1 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %point_format = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %1, i32 0, i32 0
  store i8 0, i8* %point_format, align 8
  %2 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %var = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %2, i32 0, i32 2
  store i32 1, i32* %var, align 8
  %3 = load i32, i32* %grp_id.addr, align 4
  %4 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %grp_id1 = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %4, i32 0, i32 1
  store i32 %3, i32* %grp_id1, align 4
  %5 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %ctx2 = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %5, i32 0, i32 3
  %mbed_ecdh = bitcast %union.anon* %ctx2 to %struct.mbedtls_ecdh_context_mbed*
  call void @ecdh_init_internal(%struct.mbedtls_ecdh_context_mbed* noundef %mbed_ecdh) #3
  %6 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %ctx3 = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %6, i32 0, i32 3
  %mbed_ecdh4 = bitcast %union.anon* %ctx3 to %struct.mbedtls_ecdh_context_mbed*
  %7 = load i32, i32* %grp_id.addr, align 4
  %call = call i32 @ecdh_setup_internal(%struct.mbedtls_ecdh_context_mbed* noundef %mbed_ecdh4, i32 noundef %7) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecdh_init_internal(%struct.mbedtls_ecdh_context_mbed* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecdh_context_mbed*, align 8
  store %struct.mbedtls_ecdh_context_mbed* %ctx, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %0 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %0, i32 0, i32 0
  call void @mbedtls_ecp_group_init(%struct.mbedtls_ecp_group* noundef %grp) #3
  %1 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %1, i32 0, i32 1
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %d) #3
  %2 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %2, i32 0, i32 2
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %Q) #3
  %3 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %Qp = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %3, i32 0, i32 3
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %Qp) #3
  %4 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %z = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %4, i32 0, i32 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %z) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdh_setup_internal(%struct.mbedtls_ecdh_context_mbed* noundef %ctx, i32 noundef %grp_id) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecdh_context_mbed*, align 8
  %grp_id.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecdh_context_mbed* %ctx, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  store i32 %grp_id, i32* %grp_id.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %0, i32 0, i32 0
  %1 = load i32, i32* %grp_id.addr, align 4
  %call = call i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef %grp, i32 noundef %1) #3
  store i32 %call, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20096, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ecdh_free(%struct.mbedtls_ecdh_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecdh_context*, align 8
  store %struct.mbedtls_ecdh_context* %ctx, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ecdh_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %var = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %1, i32 0, i32 2
  %2 = load i32, i32* %var, align 8
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %ctx1 = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %3, i32 0, i32 3
  %mbed_ecdh = bitcast %union.anon* %ctx1 to %struct.mbedtls_ecdh_context_mbed*
  call void @ecdh_free_internal(%struct.mbedtls_ecdh_context_mbed* noundef %mbed_ecdh) #3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %4 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %point_format = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %4, i32 0, i32 0
  store i8 0, i8* %point_format, align 8
  %5 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %var2 = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %5, i32 0, i32 2
  store i32 0, i32* %var2, align 8
  %6 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %grp_id = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %6, i32 0, i32 1
  store i32 0, i32* %grp_id, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecdh_free_internal(%struct.mbedtls_ecdh_context_mbed* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecdh_context_mbed*, align 8
  store %struct.mbedtls_ecdh_context_mbed* %ctx, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %0 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %0, i32 0, i32 0
  call void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef %grp) #3
  %1 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %1, i32 0, i32 1
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %d) #3
  %2 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %2, i32 0, i32 2
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %Q) #3
  %3 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %Qp = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %3, i32 0, i32 3
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %Qp) #3
  %4 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %z = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %4, i32 0, i32 4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %z) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdh_make_params(%struct.mbedtls_ecdh_context* noundef %ctx, i64* noundef %olen, i8* noundef %buf, i64 noundef %blen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecdh_context*, align 8
  %olen.addr = alloca i64*, align 8
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %restart_enabled = alloca i32, align 4
  store %struct.mbedtls_ecdh_context* %ctx, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 0, i32* %restart_enabled, align 4
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
  %0 = load i32, i32* %restart_enabled, align 4
  %1 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %var = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %1, i32 0, i32 2
  %2 = load i32, i32* %var, align 8
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %do.end6
  %3 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %ctx7 = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %3, i32 0, i32 3
  %mbed_ecdh = bitcast %union.anon* %ctx7 to %struct.mbedtls_ecdh_context_mbed*
  %4 = load i64*, i64** %olen.addr, align 8
  %5 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %point_format = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %5, i32 0, i32 0
  %6 = load i8, i8* %point_format, align 8
  %conv = zext i8 %6 to i32
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i64, i64* %blen.addr, align 8
  %9 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %10 = load i8*, i8** %p_rng.addr, align 8
  %11 = load i32, i32* %restart_enabled, align 4
  %call = call i32 @ecdh_make_params_internal(%struct.mbedtls_ecdh_context_mbed* noundef %mbed_ecdh, i64* noundef %4, i32 noundef %conv, i8* noundef %7, i64 noundef %8, i32 (i8*, i8*, i64)* noundef %9, i8* noundef %10, i32 noundef %11) #3
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %do.end6
  store i32 -20352, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdh_make_params_internal(%struct.mbedtls_ecdh_context_mbed* noundef %ctx, i64* noundef %olen, i32 noundef %point_format, i8* noundef %buf, i64 noundef %blen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i32 noundef %restart_enabled) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecdh_context_mbed*, align 8
  %olen.addr = alloca i64*, align 8
  %point_format.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %restart_enabled.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %grp_len = alloca i64, align 8
  %pt_len = alloca i64, align 8
  store %struct.mbedtls_ecdh_context_mbed* %ctx, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i32 %point_format, i32* %point_format.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 %restart_enabled, i32* %restart_enabled.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %0, i32 0, i32 0
  %pbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 6
  %1 = load i64, i64* %pbits, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %restart_enabled.addr, align 4
  %3 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp1 = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %4, i32 0, i32 1
  %5 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %5, i32 0, i32 2
  %6 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %7 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_ecdh_gen_public(%struct.mbedtls_ecp_group* noundef %grp1, %struct.mbedtls_mpi* noundef %d, %struct.mbedtls_ecp_point* noundef %Q, i32 (i8*, i8*, i64)* noundef %6, i8* noundef %7) #3
  store i32 %call, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp5 = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %9, i32 0, i32 0
  %10 = load i8*, i8** %buf.addr, align 8
  %11 = load i64, i64* %blen.addr, align 8
  %call6 = call i32 @mbedtls_ecp_tls_write_group(%struct.mbedtls_ecp_group* noundef %grp5, i64* noundef %grp_len, i8* noundef %10, i64 noundef %11) #3
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %13 = load i64, i64* %grp_len, align 8
  %14 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %13
  store i8* %add.ptr, i8** %buf.addr, align 8
  %15 = load i64, i64* %grp_len, align 8
  %16 = load i64, i64* %blen.addr, align 8
  %sub = sub i64 %16, %15
  store i64 %sub, i64* %blen.addr, align 8
  %17 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp10 = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %17, i32 0, i32 0
  %18 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %Q11 = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %18, i32 0, i32 2
  %19 = load i32, i32* %point_format.addr, align 4
  %20 = load i8*, i8** %buf.addr, align 8
  %21 = load i64, i64* %blen.addr, align 8
  %call12 = call i32 @mbedtls_ecp_tls_write_point(%struct.mbedtls_ecp_group* noundef %grp10, %struct.mbedtls_ecp_point* noundef %Q11, i32 noundef %19, i64* noundef %pt_len, i8* noundef %20, i64 noundef %21) #3
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  %22 = load i32, i32* %ret, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end9
  %23 = load i64, i64* %grp_len, align 8
  %24 = load i64, i64* %pt_len, align 8
  %add = add i64 %23, %24
  %25 = load i64*, i64** %olen.addr, align 8
  store i64 %add, i64* %25, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then14, %if.then8, %if.then3, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdh_read_params(%struct.mbedtls_ecdh_context* noundef %ctx, i8** noundef %buf, i8* noundef %end) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecdh_context*, align 8
  %buf.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %grp_id = alloca i32, align 4
  store %struct.mbedtls_ecdh_context* %ctx, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  store i8** %buf, i8*** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
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
  %0 = load i8**, i8*** %buf.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %2 = load i8**, i8*** %buf.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i32 @mbedtls_ecp_tls_read_group_id(i32* noundef %grp_id, i8** noundef %0, i64 noundef %sub.ptr.sub) #3
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end6
  %5 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %6 = load i32, i32* %grp_id, align 4
  %call7 = call i32 @mbedtls_ecdh_setup(%struct.mbedtls_ecdh_context* noundef %5, i32 noundef %6) #3
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %8 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %var = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %8, i32 0, i32 2
  %9 = load i32, i32* %var, align 8
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end10
  %10 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %ctx11 = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %10, i32 0, i32 3
  %mbed_ecdh = bitcast %union.anon* %ctx11 to %struct.mbedtls_ecdh_context_mbed*
  %11 = load i8**, i8*** %buf.addr, align 8
  %12 = load i8*, i8** %end.addr, align 8
  %call12 = call i32 @ecdh_read_params_internal(%struct.mbedtls_ecdh_context_mbed* noundef %mbed_ecdh, i8** noundef %11, i8* noundef %12) #3
  store i32 %call12, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end10
  store i32 -20352, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %if.then9, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local i32 @mbedtls_ecp_tls_read_group_id(i32* noundef, i8** noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdh_read_params_internal(%struct.mbedtls_ecdh_context_mbed* noundef %ctx, i8** noundef %buf, i8* noundef %end) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecdh_context_mbed*, align 8
  %buf.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  store %struct.mbedtls_ecdh_context_mbed* %ctx, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  store i8** %buf, i8*** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  %0 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %Qp = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %1, i32 0, i32 3
  %2 = load i8**, i8*** %buf.addr, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %4 = load i8**, i8*** %buf.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i32 @mbedtls_ecp_tls_read_point(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %Qp, i8** noundef %2, i64 noundef %sub.ptr.sub) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdh_get_params(%struct.mbedtls_ecdh_context* noundef %ctx, %struct.mbedtls_ecp_keypair* noundef %key, i32 noundef %side) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecdh_context*, align 8
  %key.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %side.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecdh_context* %ctx, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  store %struct.mbedtls_ecp_keypair* %key, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  store i32 %side, i32* %side.addr, align 4
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
  %0 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %call = call i32 @mbedtls_ecdh_grp_id(%struct.mbedtls_ecdh_context* noundef %0) #3
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end4
  %1 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %2 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %2, i32 0, i32 0
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 0
  %3 = load i32, i32* %id, align 8
  %call5 = call i32 @mbedtls_ecdh_setup(%struct.mbedtls_ecdh_context* noundef %1, i32 noundef %3) #3
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end14

if.else:                                          ; preds = %do.end4
  %5 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %call8 = call i32 @mbedtls_ecdh_grp_id(%struct.mbedtls_ecdh_context* noundef %5) #3
  %6 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp9 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %6, i32 0, i32 0
  %id10 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp9, i32 0, i32 0
  %7 = load i32, i32* %id10, align 8
  %cmp11 = icmp ne i32 %call8, %7
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.else
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %8 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %var = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %8, i32 0, i32 2
  %9 = load i32, i32* %var, align 8
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end14
  %10 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %ctx15 = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %10, i32 0, i32 3
  %mbed_ecdh = bitcast %union.anon* %ctx15 to %struct.mbedtls_ecdh_context_mbed*
  %11 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %12 = load i32, i32* %side.addr, align 4
  %call16 = call i32 @ecdh_get_params_internal(%struct.mbedtls_ecdh_context_mbed* noundef %mbed_ecdh, %struct.mbedtls_ecp_keypair* noundef %11, i32 noundef %12) #3
  store i32 %call16, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end14
  store i32 -20352, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %if.then12, %if.then7
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ecdh_grp_id(%struct.mbedtls_ecdh_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecdh_context*, align 8
  store %struct.mbedtls_ecdh_context* %ctx, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %grp_id = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %0, i32 0, i32 1
  %1 = load i32, i32* %grp_id, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdh_get_params_internal(%struct.mbedtls_ecdh_context_mbed* noundef %ctx, %struct.mbedtls_ecp_keypair* noundef %key, i32 noundef %side) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecdh_context_mbed*, align 8
  %key.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %side.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecdh_context_mbed* %ctx, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  store %struct.mbedtls_ecp_keypair* %key, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  store i32 %side, i32* %side.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load i32, i32* %side.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %Qp = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %1, i32 0, i32 3
  %2 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %2, i32 0, i32 2
  %call = call i32 @mbedtls_ecp_copy(%struct.mbedtls_ecp_point* noundef %Qp, %struct.mbedtls_ecp_point* noundef %Q) #3
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %side.addr, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %Q4 = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %4, i32 0, i32 2
  %5 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %Q5 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %5, i32 0, i32 2
  %call6 = call i32 @mbedtls_ecp_copy(%struct.mbedtls_ecp_point* noundef %Q4, %struct.mbedtls_ecp_point* noundef %Q5) #3
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %6 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %6, i32 0, i32 1
  %7 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d8 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %7, i32 0, i32 1
  %call9 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %d, %struct.mbedtls_mpi* noundef %d8) #3
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %if.end3
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then2, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdh_make_public(%struct.mbedtls_ecdh_context* noundef %ctx, i64* noundef %olen, i8* noundef %buf, i64 noundef %blen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecdh_context*, align 8
  %olen.addr = alloca i64*, align 8
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %restart_enabled = alloca i32, align 4
  store %struct.mbedtls_ecdh_context* %ctx, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 0, i32* %restart_enabled, align 4
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
  %0 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %var = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %0, i32 0, i32 2
  %1 = load i32, i32* %var, align 8
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %do.end6
  %2 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %ctx7 = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %2, i32 0, i32 3
  %mbed_ecdh = bitcast %union.anon* %ctx7 to %struct.mbedtls_ecdh_context_mbed*
  %3 = load i64*, i64** %olen.addr, align 8
  %4 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %point_format = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %4, i32 0, i32 0
  %5 = load i8, i8* %point_format, align 8
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load i64, i64* %blen.addr, align 8
  %8 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %9 = load i8*, i8** %p_rng.addr, align 8
  %10 = load i32, i32* %restart_enabled, align 4
  %call = call i32 @ecdh_make_public_internal(%struct.mbedtls_ecdh_context_mbed* noundef %mbed_ecdh, i64* noundef %3, i32 noundef %conv, i8* noundef %6, i64 noundef %7, i32 (i8*, i8*, i64)* noundef %8, i8* noundef %9, i32 noundef %10) #3
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %do.end6
  store i32 -20352, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdh_make_public_internal(%struct.mbedtls_ecdh_context_mbed* noundef %ctx, i64* noundef %olen, i32 noundef %point_format, i8* noundef %buf, i64 noundef %blen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i32 noundef %restart_enabled) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecdh_context_mbed*, align 8
  %olen.addr = alloca i64*, align 8
  %point_format.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %restart_enabled.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecdh_context_mbed* %ctx, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i32 %point_format, i32* %point_format.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 %restart_enabled, i32* %restart_enabled.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %0, i32 0, i32 0
  %pbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 6
  %1 = load i64, i64* %pbits, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %restart_enabled.addr, align 4
  %3 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp1 = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %4, i32 0, i32 1
  %5 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %5, i32 0, i32 2
  %6 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %7 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_ecdh_gen_public(%struct.mbedtls_ecp_group* noundef %grp1, %struct.mbedtls_mpi* noundef %d, %struct.mbedtls_ecp_point* noundef %Q, i32 (i8*, i8*, i64)* noundef %6, i8* noundef %7) #3
  store i32 %call, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp5 = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %9, i32 0, i32 0
  %10 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %Q6 = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %10, i32 0, i32 2
  %11 = load i32, i32* %point_format.addr, align 4
  %12 = load i64*, i64** %olen.addr, align 8
  %13 = load i8*, i8** %buf.addr, align 8
  %14 = load i64, i64* %blen.addr, align 8
  %call7 = call i32 @mbedtls_ecp_tls_write_point(%struct.mbedtls_ecp_group* noundef %grp5, %struct.mbedtls_ecp_point* noundef %Q6, i32 noundef %11, i64* noundef %12, i8* noundef %13, i64 noundef %14) #3
  store i32 %call7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdh_read_public(%struct.mbedtls_ecdh_context* noundef %ctx, i8* noundef %buf, i64 noundef %blen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecdh_context*, align 8
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  store %struct.mbedtls_ecdh_context* %ctx, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %var = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %0, i32 0, i32 2
  %1 = load i32, i32* %var, align 8
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %do.end2
  %2 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %ctx3 = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %2, i32 0, i32 3
  %mbed_ecdh = bitcast %union.anon* %ctx3 to %struct.mbedtls_ecdh_context_mbed*
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load i64, i64* %blen.addr, align 8
  %call = call i32 @ecdh_read_public_internal(%struct.mbedtls_ecdh_context_mbed* noundef %mbed_ecdh, i8* noundef %3, i64 noundef %4) #3
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %do.end2
  store i32 -20352, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdh_read_public_internal(%struct.mbedtls_ecdh_context_mbed* noundef %ctx, i8* noundef %buf, i64 noundef %blen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecdh_context_mbed*, align 8
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct.mbedtls_ecdh_context_mbed* %ctx, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %Qp = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %2, i32 0, i32 3
  %3 = load i64, i64* %blen.addr, align 8
  %call = call i32 @mbedtls_ecp_tls_read_point(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %Qp, i8** noundef %p, i64 noundef %3) #3
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %p, align 8
  %6 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %7 = load i64, i64* %blen.addr, align 8
  %cmp1 = icmp ne i64 %sub.ptr.sub, %7
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdh_calc_secret(%struct.mbedtls_ecdh_context* noundef %ctx, i64* noundef %olen, i8* noundef %buf, i64 noundef %blen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecdh_context*, align 8
  %olen.addr = alloca i64*, align 8
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %restart_enabled = alloca i32, align 4
  store %struct.mbedtls_ecdh_context* %ctx, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 0, i32* %restart_enabled, align 4
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
  %0 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %var = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %0, i32 0, i32 2
  %1 = load i32, i32* %var, align 8
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %do.end4
  %2 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ctx.addr, align 8
  %ctx5 = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %2, i32 0, i32 3
  %mbed_ecdh = bitcast %union.anon* %ctx5 to %struct.mbedtls_ecdh_context_mbed*
  %3 = load i64*, i64** %olen.addr, align 8
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i64, i64* %blen.addr, align 8
  %6 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %7 = load i8*, i8** %p_rng.addr, align 8
  %8 = load i32, i32* %restart_enabled, align 4
  %call = call i32 @ecdh_calc_secret_internal(%struct.mbedtls_ecdh_context_mbed* noundef %mbed_ecdh, i64* noundef %3, i8* noundef %4, i64 noundef %5, i32 (i8*, i8*, i64)* noundef %6, i8* noundef %7, i32 noundef %8) #3
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %do.end4
  store i32 -20352, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdh_calc_secret_internal(%struct.mbedtls_ecdh_context_mbed* noundef %ctx, i64* noundef %olen, i8* noundef %buf, i64 noundef %blen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i32 noundef %restart_enabled) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecdh_context_mbed*, align 8
  %olen.addr = alloca i64*, align 8
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %restart_enabled.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecdh_context_mbed* %ctx, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 %restart_enabled, i32* %restart_enabled.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ecdh_context_mbed* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %1, i32 0, i32 0
  %pbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 6
  %2 = load i64, i64* %pbits, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %restart_enabled.addr, align 4
  %4 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp2 = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %z = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %5, i32 0, i32 4
  %6 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %Qp = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %6, i32 0, i32 3
  %7 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %7, i32 0, i32 1
  %8 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %9 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_ecdh_compute_shared(%struct.mbedtls_ecp_group* noundef %grp2, %struct.mbedtls_mpi* noundef %z, %struct.mbedtls_ecp_point* noundef %Qp, %struct.mbedtls_mpi* noundef %d, i32 (i8*, i8*, i64)* noundef %8, i8* noundef %9) #3
  store i32 %call, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %11 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %z6 = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %11, i32 0, i32 4
  %call7 = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %z6) #3
  %12 = load i64, i64* %blen.addr, align 8
  %cmp8 = icmp ugt i64 %call7, %12
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  %13 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp11 = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %13, i32 0, i32 0
  %pbits12 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp11, i32 0, i32 6
  %14 = load i64, i64* %pbits12, align 8
  %div = udiv i64 %14, 8
  %15 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp13 = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %15, i32 0, i32 0
  %pbits14 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp13, i32 0, i32 6
  %16 = load i64, i64* %pbits14, align 8
  %rem = urem i64 %16, 8
  %cmp15 = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp15 to i32
  %conv16 = sext i32 %conv to i64
  %add = add i64 %div, %conv16
  %17 = load i64*, i64** %olen.addr, align 8
  store i64 %add, i64* %17, align 8
  %18 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %grp17 = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %18, i32 0, i32 0
  %call18 = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %grp17) #3
  %cmp19 = icmp eq i32 %call18, 2
  br i1 %cmp19, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end10
  %19 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %z22 = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %19, i32 0, i32 4
  %20 = load i8*, i8** %buf.addr, align 8
  %21 = load i64*, i64** %olen.addr, align 8
  %22 = load i64, i64* %21, align 8
  %call23 = call i32 @mbedtls_mpi_write_binary_le(%struct.mbedtls_mpi* noundef %z22, i8* noundef %20, i64 noundef %22) #3
  store i32 %call23, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end10
  %23 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx.addr, align 8
  %z25 = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %23, i32 0, i32 4
  %24 = load i8*, i8** %buf.addr, align 8
  %25 = load i64*, i64** %olen.addr, align 8
  %26 = load i64, i64* %25, align 8
  %call26 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %z25, i8* noundef %24, i64 noundef %26) #3
  store i32 %call26, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then21, %if.then9, %if.then4, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

declare dso_local i32 @mbedtls_ecp_gen_privkey(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_mpi* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ecp_mul_restartable(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_ecp_point* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef) #2

declare dso_local void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef) #2

declare dso_local i32 @mbedtls_ecp_is_zero(%struct.mbedtls_ecp_point* noundef) #2

declare dso_local i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef) #2

declare dso_local void @mbedtls_ecp_group_init(%struct.mbedtls_ecp_group* noundef) #2

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef, i32 noundef) #2

declare dso_local void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef) #2

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_ecp_tls_write_group(%struct.mbedtls_ecp_group* noundef, i64* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ecp_tls_write_point(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, i32 noundef, i64* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ecp_tls_read_point(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, i8** noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ecp_copy(%struct.mbedtls_ecp_point* noundef, %struct.mbedtls_ecp_point* noundef) #2

declare dso_local i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef) #2

declare dso_local i32 @mbedtls_mpi_write_binary_le(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}

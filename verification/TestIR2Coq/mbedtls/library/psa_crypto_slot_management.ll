; ModuleID = 'psa_crypto_slot_management.c'
source_filename = "psa_crypto_slot_management.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psa_global_data_t = type { [32 x %struct.psa_key_slot_t], i8 }
%struct.psa_key_slot_t = type { %struct.psa_core_key_attributes_t, i64, %struct.key_data }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }
%struct.key_data = type { i8*, i64 }
%struct.psa_se_drv_table_entry_s = type opaque
%struct.mbedtls_psa_stats_s = type { i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@global_data = internal global %struct.psa_global_data_t zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_is_valid_key_id(i32 noundef %key, i32 noundef %vendor_ok) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %vendor_ok.addr = alloca i32, align 4
  %key_id = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4
  store i32 %vendor_ok, i32* %vendor_ok.addr, align 4
  %0 = load i32, i32* %key.addr, align 4
  store i32 %0, i32* %key_id, align 4
  %1 = load i32, i32* %key_id, align 4
  %cmp = icmp ule i32 1, %1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %key_id, align 4
  %cmp1 = icmp ule i32 %2, 1073741823
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %vendor_ok.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true2, label %if.end7

land.lhs.true2:                                   ; preds = %if.end
  %4 = load i32, i32* %key_id, align 4
  %cmp3 = icmp ule i32 1073741824, %4
  br i1 %cmp3, label %land.lhs.true4, label %if.end7

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %5 = load i32, i32* %key_id, align 4
  %cmp5 = icmp ule i32 %5, 2147483647
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true4
  store i32 1, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true4, %land.lhs.true2, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_initialize_key_slots() #0 {
entry:
  %bf.load = load i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 1), align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 1), align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psa_wipe_all_key_slots() #0 {
entry:
  %slot_idx = alloca i64, align 8
  %slot = alloca %struct.psa_key_slot_t*, align 8
  store i64 0, i64* %slot_idx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %slot_idx, align 8
  %cmp = icmp ult i64 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %slot_idx, align 8
  %arrayidx = getelementptr inbounds [32 x %struct.psa_key_slot_t], [32 x %struct.psa_key_slot_t]* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), i64 0, i64 %1
  store %struct.psa_key_slot_t* %arrayidx, %struct.psa_key_slot_t** %slot, align 8
  %2 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %lock_count = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %2, i32 0, i32 1
  store i64 1, i64* %lock_count, align 8
  %3 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call = call i32 @psa_wipe_key_slot(%struct.psa_key_slot_t* noundef %3) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %slot_idx, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %slot_idx, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %bf.load = load i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 1), align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @psa_wipe_key_slot(%struct.psa_key_slot_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_get_empty_key_slot(i32* noundef %volatile_key_id, %struct.psa_key_slot_t** noundef %p_slot) #0 {
entry:
  %retval = alloca i32, align 4
  %volatile_key_id.addr = alloca i32*, align 8
  %p_slot.addr = alloca %struct.psa_key_slot_t**, align 8
  %status = alloca i32, align 4
  %slot_idx = alloca i64, align 8
  %selected_slot = alloca %struct.psa_key_slot_t*, align 8
  %unlocked_persistent_key_slot = alloca %struct.psa_key_slot_t*, align 8
  %slot = alloca %struct.psa_key_slot_t*, align 8
  store i32* %volatile_key_id, i32** %volatile_key_id.addr, align 8
  store %struct.psa_key_slot_t** %p_slot, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  store i32 -151, i32* %status, align 4
  %bf.load = load i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 1), align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -137, i32* %status, align 4
  br label %error

if.end:                                           ; preds = %entry
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %unlocked_persistent_key_slot, align 8
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %selected_slot, align 8
  store i64 0, i64* %slot_idx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i64, i64* %slot_idx, align 8
  %cmp = icmp ult i64 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %slot_idx, align 8
  %arrayidx = getelementptr inbounds [32 x %struct.psa_key_slot_t], [32 x %struct.psa_key_slot_t]* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), i64 0, i64 %1
  store %struct.psa_key_slot_t* %arrayidx, %struct.psa_key_slot_t** %slot, align 8
  %2 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call = call i32 @psa_is_key_slot_occupied(%struct.psa_key_slot_t* noundef %2) #3
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %for.body
  %3 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  store %struct.psa_key_slot_t* %3, %struct.psa_key_slot_t** %selected_slot, align 8
  br label %for.end

if.end3:                                          ; preds = %for.body
  %4 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %unlocked_persistent_key_slot, align 8
  %cmp4 = icmp eq %struct.psa_key_slot_t* %4, null
  br i1 %cmp4, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end3
  %5 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %5, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 2
  %6 = load i32, i32* %lifetime, align 4
  %and = and i32 %6, 255
  %conv = trunc i32 %and to i8
  %conv5 = zext i8 %conv to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.end12, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %7 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call9 = call i32 @psa_is_key_slot_locked(%struct.psa_key_slot_t* noundef %7) #3
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true8
  %8 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  store %struct.psa_key_slot_t* %8, %struct.psa_key_slot_t** %unlocked_persistent_key_slot, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true8, %land.lhs.true, %if.end3
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %9 = load i64, i64* %slot_idx, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %slot_idx, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then2, %for.cond
  %10 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %selected_slot, align 8
  %cmp13 = icmp eq %struct.psa_key_slot_t* %10, null
  br i1 %cmp13, label %land.lhs.true15, label %if.end20

land.lhs.true15:                                  ; preds = %for.end
  %11 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %unlocked_persistent_key_slot, align 8
  %cmp16 = icmp ne %struct.psa_key_slot_t* %11, null
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %land.lhs.true15
  %12 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %unlocked_persistent_key_slot, align 8
  store %struct.psa_key_slot_t* %12, %struct.psa_key_slot_t** %selected_slot, align 8
  %13 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %selected_slot, align 8
  %lock_count = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %13, i32 0, i32 1
  store i64 1, i64* %lock_count, align 8
  %14 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %selected_slot, align 8
  %call19 = call i32 @psa_wipe_key_slot(%struct.psa_key_slot_t* noundef %14) #3
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true15, %for.end
  %15 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %selected_slot, align 8
  %cmp21 = icmp ne %struct.psa_key_slot_t* %15, null
  br i1 %cmp21, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.end20
  %16 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %selected_slot, align 8
  %call24 = call i32 @psa_lock_key_slot(%struct.psa_key_slot_t* noundef %16) #3
  store i32 %call24, i32* %status, align 4
  %17 = load i32, i32* %status, align 4
  %cmp25 = icmp ne i32 %17, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then23
  br label %error

if.end28:                                         ; preds = %if.then23
  %18 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %selected_slot, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.psa_key_slot_t* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (%struct.psa_global_data_t* @global_data to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 56
  %conv29 = trunc i64 %sub.ptr.div to i32
  %add = add i32 2147483616, %conv29
  %19 = load i32*, i32** %volatile_key_id.addr, align 8
  store i32 %add, i32* %19, align 4
  %20 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %selected_slot, align 8
  %21 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  store %struct.psa_key_slot_t* %20, %struct.psa_key_slot_t** %21, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end20
  store i32 -141, i32* %status, align 4
  br label %error

error:                                            ; preds = %if.end30, %if.then27, %if.then
  %22 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %22, align 8
  %23 = load i32*, i32** %volatile_key_id.addr, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %status, align 4
  store i32 %24, i32* %retval, align 4
  br label %return

return:                                           ; preds = %error, %if.end28
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_is_key_slot_occupied(%struct.psa_key_slot_t* noundef %slot) #0 {
entry:
  %slot.addr = alloca %struct.psa_key_slot_t*, align 8
  store %struct.psa_key_slot_t* %slot, %struct.psa_key_slot_t** %slot.addr, align 8
  %0 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %conv = zext i16 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_is_key_slot_locked(%struct.psa_key_slot_t* noundef %slot) #0 {
entry:
  %slot.addr = alloca %struct.psa_key_slot_t*, align 8
  store %struct.psa_key_slot_t* %slot, %struct.psa_key_slot_t** %slot.addr, align 8
  %0 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %lock_count = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %0, i32 0, i32 1
  %1 = load i64, i64* %lock_count, align 8
  %cmp = icmp ugt i64 %1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_lock_key_slot(%struct.psa_key_slot_t* noundef %slot) #0 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca %struct.psa_key_slot_t*, align 8
  store %struct.psa_key_slot_t* %slot, %struct.psa_key_slot_t** %slot.addr, align 8
  %0 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %lock_count = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %0, i32 0, i32 1
  %1 = load i64, i64* %lock_count, align 8
  %cmp = icmp uge i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -151, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %lock_count1 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %2, i32 0, i32 1
  %3 = load i64, i64* %lock_count1, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %lock_count1, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_get_and_lock_key_slot(i32 noundef %key, %struct.psa_key_slot_t** noundef %p_slot) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %p_slot.addr = alloca %struct.psa_key_slot_t**, align 8
  %status = alloca i32, align 4
  %volatile_key_id = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4
  store %struct.psa_key_slot_t** %p_slot, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %0, align 8
  %bf.load = load i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 1), align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %key.addr, align 4
  %2 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  %call = call i32 @psa_get_and_lock_key_slot_in_memory(i32 noundef %1, %struct.psa_key_slot_t** noundef %2) #3
  store i32 %call, i32* %status, align 4
  %3 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %3, -140
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %5 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  %call3 = call i32 @psa_get_empty_key_slot(i32* noundef %volatile_key_id, %struct.psa_key_slot_t** noundef %5) #3
  store i32 %call3, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp4 = icmp ne i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  %7 = load i32, i32* %status, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end2
  %8 = load i32, i32* %key.addr, align 4
  %9 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  %10 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %9, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %10, i32 0, i32 0
  %id = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 3
  store i32 %8, i32* %id, align 8
  %11 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  %12 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %11, align 8
  %attr7 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %12, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr7, i32 0, i32 2
  store i32 1, i32* %lifetime, align 4
  store i32 -140, i32* %status, align 4
  %13 = load i32, i32* %status, align 4
  %cmp8 = icmp eq i32 %13, -140
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %14 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  %15 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %14, align 8
  %call10 = call i32 @psa_load_persistent_key_into_slot(%struct.psa_key_slot_t* noundef %15) #3
  store i32 %call10, i32* %status, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6
  %16 = load i32, i32* %status, align 4
  %cmp12 = icmp ne i32 %16, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %17 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  %18 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %17, align 8
  %call14 = call i32 @psa_wipe_key_slot(%struct.psa_key_slot_t* noundef %18) #3
  %19 = load i32, i32* %status, align 4
  %cmp15 = icmp eq i32 %19, -140
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then13
  store i32 -136, i32* %status, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then13
  br label %if.end19

if.else:                                          ; preds = %if.end11
  %20 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  %21 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %20, align 8
  %attr18 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %21, i32 0, i32 0
  %policy = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr18, i32 0, i32 4
  %usage = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy, i32 0, i32 0
  call void @psa_extend_key_usage_flags(i32* noundef %usage) #3
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end17
  %22 = load i32, i32* %status, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then5, %if.then1, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_get_and_lock_key_slot_in_memory(i32 noundef %key, %struct.psa_key_slot_t** noundef %p_slot) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %p_slot.addr = alloca %struct.psa_key_slot_t**, align 8
  %status = alloca i32, align 4
  %key_id = alloca i32, align 4
  %slot_idx = alloca i64, align 8
  %slot = alloca %struct.psa_key_slot_t*, align 8
  store i32 %key, i32* %key.addr, align 4
  store %struct.psa_key_slot_t** %p_slot, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load i32, i32* %key.addr, align 4
  store i32 %0, i32* %key_id, align 4
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %slot, align 8
  %1 = load i32, i32* %key_id, align 4
  %call = call i32 @psa_key_id_is_volatile(i32 noundef %1) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %key_id, align 4
  %sub = sub i32 %2, 2147483616
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [32 x %struct.psa_key_slot_t], [32 x %struct.psa_key_slot_t]* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), i64 0, i64 %idxprom
  store %struct.psa_key_slot_t* %arrayidx, %struct.psa_key_slot_t** %slot, align 8
  %3 = load i32, i32* %key.addr, align 4
  %4 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %4, i32 0, i32 0
  %id = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 3
  %5 = load i32, i32* %id, align 8
  %call1 = call i32 @mbedtls_svc_key_id_equal(i32 noundef %3, i32 noundef %5) #3
  %tobool2 = icmp ne i32 %call1, 0
  %6 = zext i1 %tobool2 to i64
  %cond = select i1 %tobool2, i32 0, i32 -140
  store i32 %cond, i32* %status, align 4
  br label %if.end15

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %key.addr, align 4
  %call3 = call i32 @psa_is_valid_key_id(i32 noundef %7, i32 noundef 1) #3
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.else
  store i32 -136, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  store i64 0, i64* %slot_idx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i64, i64* %slot_idx, align 8
  %cmp = icmp ult i64 %8, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %slot_idx, align 8
  %arrayidx6 = getelementptr inbounds [32 x %struct.psa_key_slot_t], [32 x %struct.psa_key_slot_t]* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), i64 0, i64 %9
  store %struct.psa_key_slot_t* %arrayidx6, %struct.psa_key_slot_t** %slot, align 8
  %10 = load i32, i32* %key.addr, align 4
  %11 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr7 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %11, i32 0, i32 0
  %id8 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr7, i32 0, i32 3
  %12 = load i32, i32* %id8, align 8
  %call9 = call i32 @mbedtls_svc_key_id_equal(i32 noundef %10, i32 noundef %12) #3
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.body
  br label %for.end

if.end12:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %13 = load i64, i64* %slot_idx, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %slot_idx, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %if.then11, %for.cond
  %14 = load i64, i64* %slot_idx, align 8
  %cmp13 = icmp ult i64 %14, 32
  %15 = zext i1 %cmp13 to i64
  %cond14 = select i1 %cmp13, i32 0, i32 -140
  store i32 %cond14, i32* %status, align 4
  br label %if.end15

if.end15:                                         ; preds = %for.end, %if.then
  %16 = load i32, i32* %status, align 4
  %cmp16 = icmp eq i32 %16, 0
  br i1 %cmp16, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end15
  %17 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call18 = call i32 @psa_lock_key_slot(%struct.psa_key_slot_t* noundef %17) #3
  store i32 %call18, i32* %status, align 4
  %18 = load i32, i32* %status, align 4
  %cmp19 = icmp eq i32 %18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  %19 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %20 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  store %struct.psa_key_slot_t* %19, %struct.psa_key_slot_t** %20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then17
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end15
  %21 = load i32, i32* %status, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.then5
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_load_persistent_key_into_slot(%struct.psa_key_slot_t* noundef %slot) #0 {
entry:
  %slot.addr = alloca %struct.psa_key_slot_t*, align 8
  %status = alloca i32, align 4
  %key_data = alloca i8*, align 8
  %key_data_length = alloca i64, align 8
  store %struct.psa_key_slot_t* %slot, %struct.psa_key_slot_t** %slot.addr, align 8
  store i32 0, i32* %status, align 4
  store i8* null, i8** %key_data, align 8
  store i64 0, i64* %key_data_length, align 8
  %0 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %0, i32 0, i32 0
  %call = call i32 @psa_load_persistent_key(%struct.psa_core_key_attributes_t* noundef %attr, i8** noundef %key_data, i64* noundef %key_data_length) #3
  store i32 %call, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %3 = load i8*, i8** %key_data, align 8
  %4 = load i64, i64* %key_data_length, align 8
  %call1 = call i32 @psa_copy_key_material_into_slot(%struct.psa_key_slot_t* noundef %2, i8* noundef %3, i64 noundef %4) #3
  store i32 %call1, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %5 = load i8*, i8** %key_data, align 8
  %6 = load i64, i64* %key_data_length, align 8
  call void @psa_free_persistent_key_data(i8* noundef %5, i64 noundef %6) #3
  %7 = load i32, i32* %status, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_extend_key_usage_flags(i32* noundef %usage_flags) #0 {
entry:
  %usage_flags.addr = alloca i32*, align 8
  store i32* %usage_flags, i32** %usage_flags.addr, align 8
  %0 = load i32*, i32** %usage_flags.addr, align 8
  %1 = load i32, i32* %0, align 4
  %and = and i32 %1, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %usage_flags.addr, align 8
  %3 = load i32, i32* %2, align 4
  %or = or i32 %3, 1024
  store i32 %or, i32* %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32*, i32** %usage_flags.addr, align 8
  %5 = load i32, i32* %4, align 4
  %and1 = and i32 %5, 8192
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load i32*, i32** %usage_flags.addr, align 8
  %7 = load i32, i32* %6, align 4
  %or4 = or i32 %7, 2048
  store i32 %or4, i32* %6, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %slot) #0 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca %struct.psa_key_slot_t*, align 8
  store %struct.psa_key_slot_t* %slot, %struct.psa_key_slot_t** %slot.addr, align 8
  %0 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %cmp = icmp eq %struct.psa_key_slot_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %lock_count = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %1, i32 0, i32 1
  %2 = load i64, i64* %lock_count, align 8
  %cmp1 = icmp ugt i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %lock_count3 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %3, i32 0, i32 1
  %4 = load i64, i64* %lock_count3, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %lock_count3, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 -151, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_validate_key_location(i32 noundef %lifetime, %struct.psa_se_drv_table_entry_s** noundef %p_drv) #0 {
entry:
  %retval = alloca i32, align 4
  %lifetime.addr = alloca i32, align 4
  %p_drv.addr = alloca %struct.psa_se_drv_table_entry_s**, align 8
  store i32 %lifetime, i32* %lifetime.addr, align 4
  store %struct.psa_se_drv_table_entry_s** %p_drv, %struct.psa_se_drv_table_entry_s*** %p_drv.addr, align 8
  %0 = load i32, i32* %lifetime.addr, align 4
  %call = call i32 @psa_key_lifetime_is_external(i32 noundef %0) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.psa_se_drv_table_entry_s**, %struct.psa_se_drv_table_entry_s*** %p_drv.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_lifetime_is_external(i32 noundef %lifetime) #0 {
entry:
  %lifetime.addr = alloca i32, align 4
  store i32 %lifetime, i32* %lifetime.addr, align 4
  %0 = load i32, i32* %lifetime.addr, align 4
  %shr = lshr i32 %0, 8
  %cmp = icmp ne i32 %shr, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_validate_key_persistence(i32 noundef %lifetime) #0 {
entry:
  %retval = alloca i32, align 4
  %lifetime.addr = alloca i32, align 4
  store i32 %lifetime, i32* %lifetime.addr, align 4
  %0 = load i32, i32* %lifetime.addr, align 4
  %and = and i32 %0, 255
  %conv = trunc i32 %and to i8
  %conv1 = zext i8 %conv to i32
  %cmp = icmp eq i32 %conv1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %lifetime.addr, align 4
  %and3 = and i32 %1, 255
  %conv4 = trunc i32 %and3 to i8
  %conv5 = zext i8 %conv4 to i32
  %cmp6 = icmp eq i32 %conv5, 255
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  store i32 -135, i32* %retval, align 4
  br label %return

if.else9:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else9, %if.then8, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_open_key(i32 noundef %key, i32* noundef %handle) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %handle.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32* %handle, i32** %handle.addr, align 8
  %0 = load i32, i32* %key.addr, align 4
  %call = call i32 @psa_get_and_lock_key_slot(i32 noundef %0, %struct.psa_key_slot_t** noundef %slot) #3
  store i32 %call, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %handle.addr, align 8
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* %status, align 4
  %cmp1 = icmp eq i32 %3, -136
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -140, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %entry
  %5 = load i32, i32* %key.addr, align 4
  %6 = load i32*, i32** %handle.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call4 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %7) #3
  store i32 %call4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_close_key(i32 noundef %handle) #0 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  store i32 %handle, i32* %handle.addr, align 4
  %0 = load i32, i32* %handle.addr, align 4
  %call = call i32 @psa_key_handle_is_null(i32 noundef %0) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %handle.addr, align 4
  %call1 = call i32 @psa_get_and_lock_key_slot_in_memory(i32 noundef %1, %struct.psa_key_slot_t** noundef %slot) #3
  store i32 %call1, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %status, align 4
  %cmp3 = icmp eq i32 %3, -140
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  store i32 -136, i32* %status, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then2
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %5 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %lock_count = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %5, i32 0, i32 1
  %6 = load i64, i64* %lock_count, align 8
  %cmp7 = icmp ule i64 %6, 1
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %7 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call9 = call i32 @psa_wipe_key_slot(%struct.psa_key_slot_t* noundef %7) #3
  store i32 %call9, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end6
  %8 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call10 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %8) #3
  store i32 %call10, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then8, %if.end5, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_handle_is_null(i32 noundef %handle) #0 {
entry:
  %handle.addr = alloca i32, align 4
  store i32 %handle, i32* %handle.addr, align 4
  %0 = load i32, i32* %handle.addr, align 4
  %call = call i32 @mbedtls_svc_key_id_is_null(i32 noundef %0) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_purge_key(i32 noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  store i32 %key, i32* %key.addr, align 4
  %0 = load i32, i32* %key.addr, align 4
  %call = call i32 @psa_get_and_lock_key_slot_in_memory(i32 noundef %0, %struct.psa_key_slot_t** noundef %slot) #3
  store i32 %call, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %3, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 2
  %4 = load i32, i32* %lifetime, align 4
  %and = and i32 %4, 255
  %conv = trunc i32 %and to i8
  %conv1 = zext i8 %conv to i32
  %cmp2 = icmp eq i32 %conv1, 0
  br i1 %cmp2, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %lock_count = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %5, i32 0, i32 1
  %6 = load i64, i64* %lock_count, align 8
  %cmp4 = icmp ule i64 %6, 1
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %7 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call7 = call i32 @psa_wipe_key_slot(%struct.psa_key_slot_t* noundef %7) #3
  store i32 %call7, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end
  %8 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call8 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %8) #3
  store i32 %call8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then6, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_psa_get_stats(%struct.mbedtls_psa_stats_s* noundef %stats) #0 {
entry:
  %stats.addr = alloca %struct.mbedtls_psa_stats_s*, align 8
  %slot_idx = alloca i64, align 8
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %id = alloca i32, align 4
  %id26 = alloca i32, align 4
  store %struct.mbedtls_psa_stats_s* %stats, %struct.mbedtls_psa_stats_s** %stats.addr, align 8
  %0 = load %struct.mbedtls_psa_stats_s*, %struct.mbedtls_psa_stats_s** %stats.addr, align 8
  %1 = bitcast %struct.mbedtls_psa_stats_s* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 64) #4
  store i64 0, i64* %slot_idx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %slot_idx, align 8
  %cmp = icmp ult i64 %2, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %slot_idx, align 8
  %arrayidx = getelementptr inbounds [32 x %struct.psa_key_slot_t], [32 x %struct.psa_key_slot_t]* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), i64 0, i64 %3
  store %struct.psa_key_slot_t* %arrayidx, %struct.psa_key_slot_t** %slot, align 8
  %4 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call1 = call i32 @psa_is_key_slot_locked(%struct.psa_key_slot_t* noundef %4) #3
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.mbedtls_psa_stats_s*, %struct.mbedtls_psa_stats_s** %stats.addr, align 8
  %locked_slots = getelementptr inbounds %struct.mbedtls_psa_stats_s, %struct.mbedtls_psa_stats_s* %5, i32 0, i32 6
  %6 = load i64, i64* %locked_slots, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %locked_slots, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call2 = call i32 @psa_is_key_slot_occupied(%struct.psa_key_slot_t* noundef %7) #3
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %8 = load %struct.mbedtls_psa_stats_s*, %struct.mbedtls_psa_stats_s** %stats.addr, align 8
  %empty_slots = getelementptr inbounds %struct.mbedtls_psa_stats_s, %struct.mbedtls_psa_stats_s* %8, i32 0, i32 5
  %9 = load i64, i64* %empty_slots, align 8
  %inc5 = add i64 %9, 1
  store i64 %inc5, i64* %empty_slots, align 8
  br label %for.inc

if.end6:                                          ; preds = %if.end
  %10 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %10, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 2
  %11 = load i32, i32* %lifetime, align 4
  %and = and i32 %11, 255
  %conv = trunc i32 %and to i8
  %conv7 = zext i8 %conv to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  %12 = load %struct.mbedtls_psa_stats_s*, %struct.mbedtls_psa_stats_s** %stats.addr, align 8
  %volatile_slots = getelementptr inbounds %struct.mbedtls_psa_stats_s, %struct.mbedtls_psa_stats_s* %12, i32 0, i32 0
  %13 = load i64, i64* %volatile_slots, align 8
  %inc11 = add i64 %13, 1
  store i64 %inc11, i64* %volatile_slots, align 8
  br label %if.end20

if.else:                                          ; preds = %if.end6
  %14 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr12 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %14, i32 0, i32 0
  %id13 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr12, i32 0, i32 3
  %15 = load i32, i32* %id13, align 8
  store i32 %15, i32* %id, align 4
  %16 = load %struct.mbedtls_psa_stats_s*, %struct.mbedtls_psa_stats_s** %stats.addr, align 8
  %persistent_slots = getelementptr inbounds %struct.mbedtls_psa_stats_s, %struct.mbedtls_psa_stats_s* %16, i32 0, i32 1
  %17 = load i64, i64* %persistent_slots, align 8
  %inc14 = add i64 %17, 1
  store i64 %inc14, i64* %persistent_slots, align 8
  %18 = load i32, i32* %id, align 4
  %19 = load %struct.mbedtls_psa_stats_s*, %struct.mbedtls_psa_stats_s** %stats.addr, align 8
  %max_open_internal_key_id = getelementptr inbounds %struct.mbedtls_psa_stats_s, %struct.mbedtls_psa_stats_s* %19, i32 0, i32 7
  %20 = load i32, i32* %max_open_internal_key_id, align 8
  %cmp15 = icmp ugt i32 %18, %20
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.else
  %21 = load i32, i32* %id, align 4
  %22 = load %struct.mbedtls_psa_stats_s*, %struct.mbedtls_psa_stats_s** %stats.addr, align 8
  %max_open_internal_key_id18 = getelementptr inbounds %struct.mbedtls_psa_stats_s, %struct.mbedtls_psa_stats_s* %22, i32 0, i32 7
  store i32 %21, i32* %max_open_internal_key_id18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then10
  %23 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr21 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %23, i32 0, i32 0
  %lifetime22 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr21, i32 0, i32 2
  %24 = load i32, i32* %lifetime22, align 4
  %shr = lshr i32 %24, 8
  %cmp23 = icmp ne i32 %shr, 0
  br i1 %cmp23, label %if.then25, label %if.end35

if.then25:                                        ; preds = %if.end20
  %25 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr27 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %25, i32 0, i32 0
  %id28 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr27, i32 0, i32 3
  %26 = load i32, i32* %id28, align 8
  store i32 %26, i32* %id26, align 4
  %27 = load %struct.mbedtls_psa_stats_s*, %struct.mbedtls_psa_stats_s** %stats.addr, align 8
  %external_slots = getelementptr inbounds %struct.mbedtls_psa_stats_s, %struct.mbedtls_psa_stats_s* %27, i32 0, i32 2
  %28 = load i64, i64* %external_slots, align 8
  %inc29 = add i64 %28, 1
  store i64 %inc29, i64* %external_slots, align 8
  %29 = load i32, i32* %id26, align 4
  %30 = load %struct.mbedtls_psa_stats_s*, %struct.mbedtls_psa_stats_s** %stats.addr, align 8
  %max_open_external_key_id = getelementptr inbounds %struct.mbedtls_psa_stats_s, %struct.mbedtls_psa_stats_s* %30, i32 0, i32 8
  %31 = load i32, i32* %max_open_external_key_id, align 4
  %cmp30 = icmp ugt i32 %29, %31
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then25
  %32 = load i32, i32* %id26, align 4
  %33 = load %struct.mbedtls_psa_stats_s*, %struct.mbedtls_psa_stats_s** %stats.addr, align 8
  %max_open_external_key_id33 = getelementptr inbounds %struct.mbedtls_psa_stats_s, %struct.mbedtls_psa_stats_s* %33, i32 0, i32 8
  store i32 %32, i32* %max_open_external_key_id33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then25
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end20
  br label %for.inc

for.inc:                                          ; preds = %if.end35, %if.then4
  %34 = load i64, i64* %slot_idx, align 8
  %inc36 = add i64 %34, 1
  store i64 %inc36, i64* %slot_idx, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_id_is_volatile(i32 noundef %key_id) #0 {
entry:
  %key_id.addr = alloca i32, align 4
  store i32 %key_id, i32* %key_id.addr, align 4
  %0 = load i32, i32* %key_id.addr, align 4
  %cmp = icmp uge i32 %0, 2147483616
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %key_id.addr, align 4
  %cmp1 = icmp ule i32 %1, 2147483647
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_svc_key_id_equal(i32 noundef %id1, i32 noundef %id2) #0 {
entry:
  %id1.addr = alloca i32, align 4
  %id2.addr = alloca i32, align 4
  store i32 %id1, i32* %id1.addr, align 4
  store i32 %id2, i32* %id2.addr, align 4
  %0 = load i32, i32* %id1.addr, align 4
  %1 = load i32, i32* %id2.addr, align 4
  %cmp = icmp eq i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare dso_local i32 @psa_load_persistent_key(%struct.psa_core_key_attributes_t* noundef, i8** noundef, i64* noundef) #1

declare dso_local i32 @psa_copy_key_material_into_slot(%struct.psa_key_slot_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @psa_free_persistent_key_data(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_svc_key_id_is_null(i32 noundef %key) #0 {
entry:
  %key.addr = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4
  %0 = load i32, i32* %key.addr, align 4
  %cmp = icmp eq i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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

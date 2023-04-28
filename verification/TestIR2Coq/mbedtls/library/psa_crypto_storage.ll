; ModuleID = 'psa_crypto_storage.c'
source_filename = "psa_crypto_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psa_storage_info_t = type { i32, i32 }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }
%struct.psa_persistent_key_storage_format = type { [8 x i8], [4 x i8], [4 x i8], [2 x i8], [2 x i8], [12 x i8], [4 x i8], [0 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"PSA\00KEY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_is_key_present_in_storage(i32 noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %data_identifier = alloca i64, align 8
  %data_identifier_info = alloca %struct.psa_storage_info_t, align 4
  store i32 %key, i32* %key.addr, align 4
  %0 = load i32, i32* %key.addr, align 4
  %call = call i64 @psa_its_identifier_of_slot(i32 noundef %0) #4
  store i64 %call, i64* %data_identifier, align 8
  %1 = load i64, i64* %data_identifier, align 8
  %call1 = call i32 @psa_its_get_info(i64 noundef %1, %struct.psa_storage_info_t* noundef %data_identifier_info) #4
  store i32 %call1, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %2, -140
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @psa_its_identifier_of_slot(i32 noundef %key) #0 {
entry:
  %key.addr = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4
  %0 = load i32, i32* %key.addr, align 4
  %conv = zext i32 %0 to i64
  ret i64 %conv
}

declare dso_local i32 @psa_its_get_info(i64 noundef, %struct.psa_storage_info_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_destroy_persistent_key(i32 noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %data_identifier = alloca i64, align 8
  %data_identifier_info = alloca %struct.psa_storage_info_t, align 4
  store i32 %key, i32* %key.addr, align 4
  %0 = load i32, i32* %key.addr, align 4
  %call = call i64 @psa_its_identifier_of_slot(i32 noundef %0) #4
  store i64 %call, i64* %data_identifier, align 8
  %1 = load i64, i64* %data_identifier, align 8
  %call1 = call i32 @psa_its_get_info(i64 noundef %1, %struct.psa_storage_info_t* noundef %data_identifier_info) #4
  store i32 %call1, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %2, -140
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %data_identifier, align 8
  %call2 = call i32 @psa_its_remove(i64 noundef %3) #4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -153, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load i64, i64* %data_identifier, align 8
  %call6 = call i32 @psa_its_get_info(i64 noundef %4, %struct.psa_storage_info_t* noundef %data_identifier_info) #4
  store i32 %call6, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp7 = icmp ne i32 %5, -140
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store i32 -153, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then4, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare dso_local i32 @psa_its_remove(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psa_format_key_data_for_storage(i8* noundef %data, i64 noundef %data_length, %struct.psa_core_key_attributes_t* noundef %attr, i8* noundef %storage_data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  %attr.addr = alloca %struct.psa_core_key_attributes_t*, align 8
  %storage_data.addr = alloca i8*, align 8
  %storage_format = alloca %struct.psa_persistent_key_storage_format*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  store %struct.psa_core_key_attributes_t* %attr, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  store i8* %storage_data, i8** %storage_data.addr, align 8
  %0 = load i8*, i8** %storage_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.psa_persistent_key_storage_format*
  store %struct.psa_persistent_key_storage_format* %1, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %2 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %magic = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %magic, i64 0, i64 0
  %call = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 noundef 8) #5
  %3 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %version = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %version, i64 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %4 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %version1 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %version1, i64 0, i64 1
  store i8 0, i8* %arrayidx2, align 1
  %5 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %version3 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %5, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %version3, i64 0, i64 2
  store i8 0, i8* %arrayidx4, align 1
  %6 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %version5 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %6, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %version5, i64 0, i64 3
  store i8 0, i8* %arrayidx6, align 1
  %7 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %7, i32 0, i32 2
  %8 = load i32, i32* %lifetime, align 4
  %and = and i32 %8, 255
  %conv = trunc i32 %and to i8
  %9 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %lifetime7 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %9, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %lifetime7, i64 0, i64 0
  store i8 %conv, i8* %arrayidx8, align 1
  %10 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %lifetime9 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %10, i32 0, i32 2
  %11 = load i32, i32* %lifetime9, align 4
  %shr = lshr i32 %11, 8
  %and10 = and i32 %shr, 255
  %conv11 = trunc i32 %and10 to i8
  %12 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %lifetime12 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %12, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [4 x i8], [4 x i8]* %lifetime12, i64 0, i64 1
  store i8 %conv11, i8* %arrayidx13, align 1
  %13 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %lifetime14 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %13, i32 0, i32 2
  %14 = load i32, i32* %lifetime14, align 4
  %shr15 = lshr i32 %14, 16
  %and16 = and i32 %shr15, 255
  %conv17 = trunc i32 %and16 to i8
  %15 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %lifetime18 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %15, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [4 x i8], [4 x i8]* %lifetime18, i64 0, i64 2
  store i8 %conv17, i8* %arrayidx19, align 1
  %16 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %lifetime20 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %16, i32 0, i32 2
  %17 = load i32, i32* %lifetime20, align 4
  %shr21 = lshr i32 %17, 24
  %and22 = and i32 %shr21, 255
  %conv23 = trunc i32 %and22 to i8
  %18 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %lifetime24 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %18, i32 0, i32 2
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* %lifetime24, i64 0, i64 3
  store i8 %conv23, i8* %arrayidx25, align 1
  %19 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %19, i32 0, i32 0
  %20 = load i16, i16* %type, align 4
  %conv26 = zext i16 %20 to i32
  %and27 = and i32 %conv26, 255
  %conv28 = trunc i32 %and27 to i8
  %21 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %type29 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %21, i32 0, i32 3
  %arrayidx30 = getelementptr inbounds [2 x i8], [2 x i8]* %type29, i64 0, i64 0
  store i8 %conv28, i8* %arrayidx30, align 1
  %22 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %type31 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %22, i32 0, i32 0
  %23 = load i16, i16* %type31, align 4
  %conv32 = zext i16 %23 to i32
  %shr33 = ashr i32 %conv32, 8
  %and34 = and i32 %shr33, 255
  %conv35 = trunc i32 %and34 to i8
  %24 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %type36 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %24, i32 0, i32 3
  %arrayidx37 = getelementptr inbounds [2 x i8], [2 x i8]* %type36, i64 0, i64 1
  store i8 %conv35, i8* %arrayidx37, align 1
  %25 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %25, i32 0, i32 1
  %26 = load i16, i16* %bits, align 2
  %conv38 = zext i16 %26 to i32
  %and39 = and i32 %conv38, 255
  %conv40 = trunc i32 %and39 to i8
  %27 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %bits41 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %27, i32 0, i32 4
  %arrayidx42 = getelementptr inbounds [2 x i8], [2 x i8]* %bits41, i64 0, i64 0
  store i8 %conv40, i8* %arrayidx42, align 1
  %28 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %bits43 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %28, i32 0, i32 1
  %29 = load i16, i16* %bits43, align 2
  %conv44 = zext i16 %29 to i32
  %shr45 = ashr i32 %conv44, 8
  %and46 = and i32 %shr45, 255
  %conv47 = trunc i32 %and46 to i8
  %30 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %bits48 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %30, i32 0, i32 4
  %arrayidx49 = getelementptr inbounds [2 x i8], [2 x i8]* %bits48, i64 0, i64 1
  store i8 %conv47, i8* %arrayidx49, align 1
  %31 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %policy = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %31, i32 0, i32 4
  %usage = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy, i32 0, i32 0
  %32 = load i32, i32* %usage, align 4
  %and50 = and i32 %32, 255
  %conv51 = trunc i32 %and50 to i8
  %33 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy52 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %33, i32 0, i32 5
  %arrayidx53 = getelementptr inbounds [12 x i8], [12 x i8]* %policy52, i64 0, i64 0
  store i8 %conv51, i8* %arrayidx53, align 1
  %34 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %policy54 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %34, i32 0, i32 4
  %usage55 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy54, i32 0, i32 0
  %35 = load i32, i32* %usage55, align 4
  %shr56 = lshr i32 %35, 8
  %and57 = and i32 %shr56, 255
  %conv58 = trunc i32 %and57 to i8
  %36 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy59 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %36, i32 0, i32 5
  %arrayidx60 = getelementptr inbounds [12 x i8], [12 x i8]* %policy59, i64 0, i64 1
  store i8 %conv58, i8* %arrayidx60, align 1
  %37 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %policy61 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %37, i32 0, i32 4
  %usage62 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy61, i32 0, i32 0
  %38 = load i32, i32* %usage62, align 4
  %shr63 = lshr i32 %38, 16
  %and64 = and i32 %shr63, 255
  %conv65 = trunc i32 %and64 to i8
  %39 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy66 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %39, i32 0, i32 5
  %arrayidx67 = getelementptr inbounds [12 x i8], [12 x i8]* %policy66, i64 0, i64 2
  store i8 %conv65, i8* %arrayidx67, align 1
  %40 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %policy68 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %40, i32 0, i32 4
  %usage69 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy68, i32 0, i32 0
  %41 = load i32, i32* %usage69, align 4
  %shr70 = lshr i32 %41, 24
  %and71 = and i32 %shr70, 255
  %conv72 = trunc i32 %and71 to i8
  %42 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy73 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %42, i32 0, i32 5
  %arrayidx74 = getelementptr inbounds [12 x i8], [12 x i8]* %policy73, i64 0, i64 3
  store i8 %conv72, i8* %arrayidx74, align 1
  %43 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %policy75 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %43, i32 0, i32 4
  %alg = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy75, i32 0, i32 1
  %44 = load i32, i32* %alg, align 4
  %and76 = and i32 %44, 255
  %conv77 = trunc i32 %and76 to i8
  %45 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy78 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %45, i32 0, i32 5
  %arrayidx79 = getelementptr inbounds [12 x i8], [12 x i8]* %policy78, i64 0, i64 4
  store i8 %conv77, i8* %arrayidx79, align 1
  %46 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %policy80 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %46, i32 0, i32 4
  %alg81 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy80, i32 0, i32 1
  %47 = load i32, i32* %alg81, align 4
  %shr82 = lshr i32 %47, 8
  %and83 = and i32 %shr82, 255
  %conv84 = trunc i32 %and83 to i8
  %48 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy85 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %48, i32 0, i32 5
  %arrayidx86 = getelementptr inbounds [12 x i8], [12 x i8]* %policy85, i64 0, i64 5
  store i8 %conv84, i8* %arrayidx86, align 1
  %49 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %policy87 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %49, i32 0, i32 4
  %alg88 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy87, i32 0, i32 1
  %50 = load i32, i32* %alg88, align 4
  %shr89 = lshr i32 %50, 16
  %and90 = and i32 %shr89, 255
  %conv91 = trunc i32 %and90 to i8
  %51 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy92 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %51, i32 0, i32 5
  %arrayidx93 = getelementptr inbounds [12 x i8], [12 x i8]* %policy92, i64 0, i64 6
  store i8 %conv91, i8* %arrayidx93, align 1
  %52 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %policy94 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %52, i32 0, i32 4
  %alg95 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy94, i32 0, i32 1
  %53 = load i32, i32* %alg95, align 4
  %shr96 = lshr i32 %53, 24
  %and97 = and i32 %shr96, 255
  %conv98 = trunc i32 %and97 to i8
  %54 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy99 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %54, i32 0, i32 5
  %arrayidx100 = getelementptr inbounds [12 x i8], [12 x i8]* %policy99, i64 0, i64 7
  store i8 %conv98, i8* %arrayidx100, align 1
  %55 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %policy101 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %55, i32 0, i32 4
  %alg2 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy101, i32 0, i32 2
  %56 = load i32, i32* %alg2, align 4
  %and102 = and i32 %56, 255
  %conv103 = trunc i32 %and102 to i8
  %57 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy104 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %57, i32 0, i32 5
  %arrayidx105 = getelementptr inbounds [12 x i8], [12 x i8]* %policy104, i64 0, i64 8
  store i8 %conv103, i8* %arrayidx105, align 1
  %58 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %policy106 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %58, i32 0, i32 4
  %alg2107 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy106, i32 0, i32 2
  %59 = load i32, i32* %alg2107, align 4
  %shr108 = lshr i32 %59, 8
  %and109 = and i32 %shr108, 255
  %conv110 = trunc i32 %and109 to i8
  %60 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy111 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %60, i32 0, i32 5
  %arrayidx112 = getelementptr inbounds [12 x i8], [12 x i8]* %policy111, i64 0, i64 9
  store i8 %conv110, i8* %arrayidx112, align 1
  %61 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %policy113 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %61, i32 0, i32 4
  %alg2114 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy113, i32 0, i32 2
  %62 = load i32, i32* %alg2114, align 4
  %shr115 = lshr i32 %62, 16
  %and116 = and i32 %shr115, 255
  %conv117 = trunc i32 %and116 to i8
  %63 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy118 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %63, i32 0, i32 5
  %arrayidx119 = getelementptr inbounds [12 x i8], [12 x i8]* %policy118, i64 0, i64 10
  store i8 %conv117, i8* %arrayidx119, align 1
  %64 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %policy120 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %64, i32 0, i32 4
  %alg2121 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy120, i32 0, i32 2
  %65 = load i32, i32* %alg2121, align 4
  %shr122 = lshr i32 %65, 24
  %and123 = and i32 %shr122, 255
  %conv124 = trunc i32 %and123 to i8
  %66 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy125 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %66, i32 0, i32 5
  %arrayidx126 = getelementptr inbounds [12 x i8], [12 x i8]* %policy125, i64 0, i64 11
  store i8 %conv124, i8* %arrayidx126, align 1
  %67 = load i64, i64* %data_length.addr, align 8
  %and127 = and i64 %67, 255
  %conv128 = trunc i64 %and127 to i8
  %68 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %data_len = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %68, i32 0, i32 6
  %arrayidx129 = getelementptr inbounds [4 x i8], [4 x i8]* %data_len, i64 0, i64 0
  store i8 %conv128, i8* %arrayidx129, align 1
  %69 = load i64, i64* %data_length.addr, align 8
  %shr130 = lshr i64 %69, 8
  %and131 = and i64 %shr130, 255
  %conv132 = trunc i64 %and131 to i8
  %70 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %data_len133 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %70, i32 0, i32 6
  %arrayidx134 = getelementptr inbounds [4 x i8], [4 x i8]* %data_len133, i64 0, i64 1
  store i8 %conv132, i8* %arrayidx134, align 1
  %71 = load i64, i64* %data_length.addr, align 8
  %shr135 = lshr i64 %71, 16
  %and136 = and i64 %shr135, 255
  %conv137 = trunc i64 %and136 to i8
  %72 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %data_len138 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %72, i32 0, i32 6
  %arrayidx139 = getelementptr inbounds [4 x i8], [4 x i8]* %data_len138, i64 0, i64 2
  store i8 %conv137, i8* %arrayidx139, align 1
  %73 = load i64, i64* %data_length.addr, align 8
  %shr140 = lshr i64 %73, 24
  %and141 = and i64 %shr140, 255
  %conv142 = trunc i64 %and141 to i8
  %74 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %data_len143 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %74, i32 0, i32 6
  %arrayidx144 = getelementptr inbounds [4 x i8], [4 x i8]* %data_len143, i64 0, i64 3
  store i8 %conv142, i8* %arrayidx144, align 1
  %75 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %key_data = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %75, i32 0, i32 7
  %arraydecay145 = getelementptr inbounds [0 x i8], [0 x i8]* %key_data, i64 0, i64 0
  %76 = load i8*, i8** %data.addr, align 8
  %77 = load i64, i64* %data_length.addr, align 8
  %call146 = call i8* @memcpy(i8* noundef %arraydecay145, i8* noundef %76, i64 noundef %77) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_parse_key_data_from_storage(i8* noundef %storage_data, i64 noundef %storage_data_length, i8** noundef %key_data, i64* noundef %key_data_length, %struct.psa_core_key_attributes_t* noundef %attr) #0 {
entry:
  %retval = alloca i32, align 4
  %storage_data.addr = alloca i8*, align 8
  %storage_data_length.addr = alloca i64, align 8
  %key_data.addr = alloca i8**, align 8
  %key_data_length.addr = alloca i64*, align 8
  %attr.addr = alloca %struct.psa_core_key_attributes_t*, align 8
  %status = alloca i32, align 4
  %storage_format = alloca %struct.psa_persistent_key_storage_format*, align 8
  %version = alloca i32, align 4
  store i8* %storage_data, i8** %storage_data.addr, align 8
  store i64 %storage_data_length, i64* %storage_data_length.addr, align 8
  store i8** %key_data, i8*** %key_data.addr, align 8
  store i64* %key_data_length, i64** %key_data_length.addr, align 8
  store %struct.psa_core_key_attributes_t* %attr, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %0 = load i8*, i8** %storage_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.psa_persistent_key_storage_format*
  store %struct.psa_persistent_key_storage_format* %1, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %2 = load i64, i64* %storage_data_length.addr, align 8
  %cmp = icmp ult i64 %2, 36
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -153, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %storage_data.addr, align 8
  %call = call i32 @check_magic_header(i8* noundef %3) #4
  store i32 %call, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp1 = icmp ne i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load i32, i32* %status, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %version4 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %version4, i64 0, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %version5 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %8, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %version5, i64 0, i64 1
  %9 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %shl = shl i32 %conv7, 8
  %or = or i32 %conv, %shl
  %10 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %version8 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %10, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [4 x i8], [4 x i8]* %version8, i64 0, i64 2
  %11 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %11 to i32
  %shl11 = shl i32 %conv10, 16
  %or12 = or i32 %or, %shl11
  %12 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %version13 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %12, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [4 x i8], [4 x i8]* %version13, i64 0, i64 3
  %13 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %shl16 = shl i32 %conv15, 24
  %or17 = or i32 %or12, %shl16
  store i32 %or17, i32* %version, align 4
  %14 = load i32, i32* %version, align 4
  %cmp18 = icmp ne i32 %14, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end3
  store i32 -153, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end3
  %15 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %data_len = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %15, i32 0, i32 6
  %arrayidx22 = getelementptr inbounds [4 x i8], [4 x i8]* %data_len, i64 0, i64 0
  %16 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %16 to i32
  %17 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %data_len24 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %17, i32 0, i32 6
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* %data_len24, i64 0, i64 1
  %18 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %18 to i32
  %shl27 = shl i32 %conv26, 8
  %or28 = or i32 %conv23, %shl27
  %19 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %data_len29 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %19, i32 0, i32 6
  %arrayidx30 = getelementptr inbounds [4 x i8], [4 x i8]* %data_len29, i64 0, i64 2
  %20 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %20 to i32
  %shl32 = shl i32 %conv31, 16
  %or33 = or i32 %or28, %shl32
  %21 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %data_len34 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %21, i32 0, i32 6
  %arrayidx35 = getelementptr inbounds [4 x i8], [4 x i8]* %data_len34, i64 0, i64 3
  %22 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %22 to i32
  %shl37 = shl i32 %conv36, 24
  %or38 = or i32 %or33, %shl37
  %conv39 = zext i32 %or38 to i64
  %23 = load i64*, i64** %key_data_length.addr, align 8
  store i64 %conv39, i64* %23, align 8
  %24 = load i64*, i64** %key_data_length.addr, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %storage_data_length.addr, align 8
  %sub = sub i64 %26, 36
  %cmp40 = icmp ugt i64 %25, %sub
  br i1 %cmp40, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end21
  %27 = load i64*, i64** %key_data_length.addr, align 8
  %28 = load i64, i64* %27, align 8
  %cmp42 = icmp ugt i64 %28, 8191
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %lor.lhs.false, %if.end21
  store i32 -153, i32* %retval, align 4
  br label %return

if.end45:                                         ; preds = %lor.lhs.false
  %29 = load i64*, i64** %key_data_length.addr, align 8
  %30 = load i64, i64* %29, align 8
  %cmp46 = icmp eq i64 %30, 0
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end45
  %31 = load i8**, i8*** %key_data.addr, align 8
  store i8* null, i8** %31, align 8
  br label %if.end56

if.else:                                          ; preds = %if.end45
  %32 = load i64*, i64** %key_data_length.addr, align 8
  %33 = load i64, i64* %32, align 8
  %call49 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %33) #5
  %34 = load i8**, i8*** %key_data.addr, align 8
  store i8* %call49, i8** %34, align 8
  %35 = load i8**, i8*** %key_data.addr, align 8
  %36 = load i8*, i8** %35, align 8
  %cmp50 = icmp eq i8* %36, null
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.else
  store i32 -141, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.else
  %37 = load i8**, i8*** %key_data.addr, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %key_data54 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %39, i32 0, i32 7
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %key_data54, i64 0, i64 0
  %40 = load i64*, i64** %key_data_length.addr, align 8
  %41 = load i64, i64* %40, align 8
  %call55 = call i8* @memcpy(i8* noundef %38, i8* noundef %arraydecay, i64 noundef %41) #5
  br label %if.end56

if.end56:                                         ; preds = %if.end53, %if.then48
  %42 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %lifetime = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %42, i32 0, i32 2
  %arrayidx57 = getelementptr inbounds [4 x i8], [4 x i8]* %lifetime, i64 0, i64 0
  %43 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %43 to i32
  %44 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %lifetime59 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %44, i32 0, i32 2
  %arrayidx60 = getelementptr inbounds [4 x i8], [4 x i8]* %lifetime59, i64 0, i64 1
  %45 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %45 to i32
  %shl62 = shl i32 %conv61, 8
  %or63 = or i32 %conv58, %shl62
  %46 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %lifetime64 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %46, i32 0, i32 2
  %arrayidx65 = getelementptr inbounds [4 x i8], [4 x i8]* %lifetime64, i64 0, i64 2
  %47 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %47 to i32
  %shl67 = shl i32 %conv66, 16
  %or68 = or i32 %or63, %shl67
  %48 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %lifetime69 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %48, i32 0, i32 2
  %arrayidx70 = getelementptr inbounds [4 x i8], [4 x i8]* %lifetime69, i64 0, i64 3
  %49 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %49 to i32
  %shl72 = shl i32 %conv71, 24
  %or73 = or i32 %or68, %shl72
  %50 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %lifetime74 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %50, i32 0, i32 2
  store i32 %or73, i32* %lifetime74, align 4
  %51 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %type = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %51, i32 0, i32 3
  %arrayidx75 = getelementptr inbounds [2 x i8], [2 x i8]* %type, i64 0, i64 0
  %52 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %52 to i16
  %conv77 = zext i16 %conv76 to i32
  %53 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %type78 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %53, i32 0, i32 3
  %arrayidx79 = getelementptr inbounds [2 x i8], [2 x i8]* %type78, i64 0, i64 1
  %54 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %54 to i16
  %conv81 = zext i16 %conv80 to i32
  %shl82 = shl i32 %conv81, 8
  %or83 = or i32 %conv77, %shl82
  %conv84 = trunc i32 %or83 to i16
  %55 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %type85 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %55, i32 0, i32 0
  store i16 %conv84, i16* %type85, align 4
  %56 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %bits = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %56, i32 0, i32 4
  %arrayidx86 = getelementptr inbounds [2 x i8], [2 x i8]* %bits, i64 0, i64 0
  %57 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %57 to i16
  %conv88 = zext i16 %conv87 to i32
  %58 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %bits89 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %58, i32 0, i32 4
  %arrayidx90 = getelementptr inbounds [2 x i8], [2 x i8]* %bits89, i64 0, i64 1
  %59 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %59 to i16
  %conv92 = zext i16 %conv91 to i32
  %shl93 = shl i32 %conv92, 8
  %or94 = or i32 %conv88, %shl93
  %conv95 = trunc i32 %or94 to i16
  %60 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %bits96 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %60, i32 0, i32 1
  store i16 %conv95, i16* %bits96, align 2
  %61 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %61, i32 0, i32 5
  %arrayidx97 = getelementptr inbounds [12 x i8], [12 x i8]* %policy, i64 0, i64 0
  %62 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %62 to i32
  %63 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy99 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %63, i32 0, i32 5
  %arrayidx100 = getelementptr inbounds [12 x i8], [12 x i8]* %policy99, i64 0, i64 1
  %64 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %64 to i32
  %shl102 = shl i32 %conv101, 8
  %or103 = or i32 %conv98, %shl102
  %65 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy104 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %65, i32 0, i32 5
  %arrayidx105 = getelementptr inbounds [12 x i8], [12 x i8]* %policy104, i64 0, i64 2
  %66 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %66 to i32
  %shl107 = shl i32 %conv106, 16
  %or108 = or i32 %or103, %shl107
  %67 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy109 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %67, i32 0, i32 5
  %arrayidx110 = getelementptr inbounds [12 x i8], [12 x i8]* %policy109, i64 0, i64 3
  %68 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %68 to i32
  %shl112 = shl i32 %conv111, 24
  %or113 = or i32 %or108, %shl112
  %69 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %policy114 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %69, i32 0, i32 4
  %usage = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy114, i32 0, i32 0
  store i32 %or113, i32* %usage, align 4
  %70 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy115 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %70, i32 0, i32 5
  %arrayidx116 = getelementptr inbounds [12 x i8], [12 x i8]* %policy115, i64 0, i64 4
  %71 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %71 to i32
  %72 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy118 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %72, i32 0, i32 5
  %arrayidx119 = getelementptr inbounds [12 x i8], [12 x i8]* %policy118, i64 0, i64 5
  %73 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %73 to i32
  %shl121 = shl i32 %conv120, 8
  %or122 = or i32 %conv117, %shl121
  %74 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy123 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %74, i32 0, i32 5
  %arrayidx124 = getelementptr inbounds [12 x i8], [12 x i8]* %policy123, i64 0, i64 6
  %75 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %75 to i32
  %shl126 = shl i32 %conv125, 16
  %or127 = or i32 %or122, %shl126
  %76 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy128 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %76, i32 0, i32 5
  %arrayidx129 = getelementptr inbounds [12 x i8], [12 x i8]* %policy128, i64 0, i64 7
  %77 = load i8, i8* %arrayidx129, align 1
  %conv130 = zext i8 %77 to i32
  %shl131 = shl i32 %conv130, 24
  %or132 = or i32 %or127, %shl131
  %78 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %policy133 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %78, i32 0, i32 4
  %alg = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy133, i32 0, i32 1
  store i32 %or132, i32* %alg, align 4
  %79 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy134 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %79, i32 0, i32 5
  %arrayidx135 = getelementptr inbounds [12 x i8], [12 x i8]* %policy134, i64 0, i64 8
  %80 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %80 to i32
  %81 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy137 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %81, i32 0, i32 5
  %arrayidx138 = getelementptr inbounds [12 x i8], [12 x i8]* %policy137, i64 0, i64 9
  %82 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %82 to i32
  %shl140 = shl i32 %conv139, 8
  %or141 = or i32 %conv136, %shl140
  %83 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy142 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %83, i32 0, i32 5
  %arrayidx143 = getelementptr inbounds [12 x i8], [12 x i8]* %policy142, i64 0, i64 10
  %84 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %84 to i32
  %shl145 = shl i32 %conv144, 16
  %or146 = or i32 %or141, %shl145
  %85 = load %struct.psa_persistent_key_storage_format*, %struct.psa_persistent_key_storage_format** %storage_format, align 8
  %policy147 = getelementptr inbounds %struct.psa_persistent_key_storage_format, %struct.psa_persistent_key_storage_format* %85, i32 0, i32 5
  %arrayidx148 = getelementptr inbounds [12 x i8], [12 x i8]* %policy147, i64 0, i64 11
  %86 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %86 to i32
  %shl150 = shl i32 %conv149, 24
  %or151 = or i32 %or146, %shl150
  %87 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %policy152 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %87, i32 0, i32 4
  %alg2 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy152, i32 0, i32 2
  store i32 %or151, i32* %alg2, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end56, %if.then52, %if.then44, %if.then20, %if.then2, %if.then
  %88 = load i32, i32* %retval, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_magic_header(i8* noundef %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call i32 @memcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 noundef 8) #6
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -153, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_save_persistent_key(%struct.psa_core_key_attributes_t* noundef %attr, i8* noundef %data, i64 noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attr.addr = alloca %struct.psa_core_key_attributes_t*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  %storage_data_length = alloca i64, align 8
  %storage_data = alloca i8*, align 8
  %status = alloca i32, align 4
  store %struct.psa_core_key_attributes_t* %attr, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %data_length.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, i64* %data_length.addr, align 8
  %cmp2 = icmp ugt i64 %2, 8191
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -142, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %3 = load i64, i64* %data_length.addr, align 8
  %add = add i64 %3, 36
  store i64 %add, i64* %storage_data_length, align 8
  %4 = load i64, i64* %storage_data_length, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef %4) #5
  store i8* %call, i8** %storage_data, align 8
  %5 = load i8*, i8** %storage_data, align 8
  %cmp5 = icmp eq i8* %5, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  store i32 -141, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end4
  %6 = load i8*, i8** %data.addr, align 8
  %7 = load i64, i64* %data_length.addr, align 8
  %8 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %9 = load i8*, i8** %storage_data, align 8
  call void @psa_format_key_data_for_storage(i8* noundef %6, i64 noundef %7, %struct.psa_core_key_attributes_t* noundef %8, i8* noundef %9) #4
  %10 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %id = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %10, i32 0, i32 3
  %11 = load i32, i32* %id, align 4
  %12 = load i8*, i8** %storage_data, align 8
  %13 = load i64, i64* %storage_data_length, align 8
  %call8 = call i32 @psa_crypto_storage_store(i32 noundef %11, i8* noundef %12, i64 noundef %13) #4
  store i32 %call8, i32* %status, align 4
  %14 = load i8*, i8** %storage_data, align 8
  %15 = load i64, i64* %storage_data_length, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %14, i64 noundef %15) #4
  %16 = load i8*, i8** %storage_data, align 8
  call void @free(i8* noundef %16) #5
  %17 = load i32, i32* %status, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then3, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_crypto_storage_store(i32 noundef %key, i8* noundef %data, i64 noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %data_identifier = alloca i64, align 8
  %data_identifier_info = alloca %struct.psa_storage_info_t, align 4
  store i32 %key, i32* %key.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  %0 = load i32, i32* %key.addr, align 4
  %call = call i64 @psa_its_identifier_of_slot(i32 noundef %0) #4
  store i64 %call, i64* %data_identifier, align 8
  %1 = load i32, i32* %key.addr, align 4
  %call1 = call i32 @psa_is_key_present_in_storage(i32 noundef %1) #4
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -139, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %data_identifier, align 8
  %3 = load i64, i64* %data_length.addr, align 8
  %conv = trunc i64 %3 to i32
  %4 = load i8*, i8** %data.addr, align 8
  %call2 = call i32 @psa_its_set(i64 noundef %2, i32 noundef %conv, i8* noundef %4, i32 noundef 0) #4
  store i32 %call2, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp3 = icmp ne i32 %5, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -153, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %6 = load i64, i64* %data_identifier, align 8
  %call7 = call i32 @psa_its_get_info(i64 noundef %6, %struct.psa_storage_info_t* noundef %data_identifier_info) #4
  store i32 %call7, i32* %status, align 4
  %7 = load i32, i32* %status, align 4
  %cmp8 = icmp ne i32 %7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  br label %exit

if.end11:                                         ; preds = %if.end6
  %size = getelementptr inbounds %struct.psa_storage_info_t, %struct.psa_storage_info_t* %data_identifier_info, i32 0, i32 0
  %8 = load i32, i32* %size, align 4
  %conv12 = zext i32 %8 to i64
  %9 = load i64, i64* %data_length.addr, align 8
  %cmp13 = icmp ne i64 %conv12, %9
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  store i32 -153, i32* %status, align 4
  br label %exit

if.end16:                                         ; preds = %if.end11
  br label %exit

exit:                                             ; preds = %if.end16, %if.then15, %if.then10
  %10 = load i32, i32* %status, align 4
  %cmp17 = icmp ne i32 %10, 0
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %exit
  %11 = load i64, i64* %data_identifier, align 8
  %call20 = call i32 @psa_its_remove(i64 noundef %11) #4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %exit
  %12 = load i32, i32* %status, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then5, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psa_free_persistent_key_data(i8* noundef %key_data, i64 noundef %key_data_length) #0 {
entry:
  %key_data.addr = alloca i8*, align 8
  %key_data_length.addr = alloca i64, align 8
  store i8* %key_data, i8** %key_data.addr, align 8
  store i64 %key_data_length, i64* %key_data_length.addr, align 8
  %0 = load i8*, i8** %key_data.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %key_data.addr, align 8
  %2 = load i64, i64* %key_data_length.addr, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %1, i64 noundef %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %key_data.addr, align 8
  call void @free(i8* noundef %3) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_load_persistent_key(%struct.psa_core_key_attributes_t* noundef %attr, i8** noundef %data, i64* noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attr.addr = alloca %struct.psa_core_key_attributes_t*, align 8
  %data.addr = alloca i8**, align 8
  %data_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %loaded_data = alloca i8*, align 8
  %storage_data_length = alloca i64, align 8
  %key = alloca i32, align 4
  store %struct.psa_core_key_attributes_t* %attr, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  store i64* %data_length, i64** %data_length.addr, align 8
  store i32 0, i32* %status, align 4
  store i64 0, i64* %storage_data_length, align 8
  %0 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %id = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %0, i32 0, i32 3
  %1 = load i32, i32* %id, align 4
  store i32 %1, i32* %key, align 4
  %2 = load i32, i32* %key, align 4
  %call = call i32 @psa_crypto_storage_get_data_length(i32 noundef %2, i64* noundef %storage_data_length) #4
  store i32 %call, i32* %status, align 4
  %3 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %storage_data_length, align 8
  %call1 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %5) #5
  store i8* %call1, i8** %loaded_data, align 8
  %6 = load i8*, i8** %loaded_data, align 8
  %cmp2 = icmp eq i8* %6, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -141, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load i32, i32* %key, align 4
  %8 = load i8*, i8** %loaded_data, align 8
  %9 = load i64, i64* %storage_data_length, align 8
  %call5 = call i32 @psa_crypto_storage_load(i32 noundef %7, i8* noundef %8, i64 noundef %9) #4
  store i32 %call5, i32* %status, align 4
  %10 = load i32, i32* %status, align 4
  %cmp6 = icmp ne i32 %10, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %exit

if.end8:                                          ; preds = %if.end4
  %11 = load i8*, i8** %loaded_data, align 8
  %12 = load i64, i64* %storage_data_length, align 8
  %13 = load i8**, i8*** %data.addr, align 8
  %14 = load i64*, i64** %data_length.addr, align 8
  %15 = load %struct.psa_core_key_attributes_t*, %struct.psa_core_key_attributes_t** %attr.addr, align 8
  %call9 = call i32 @psa_parse_key_data_from_storage(i8* noundef %11, i64 noundef %12, i8** noundef %13, i64* noundef %14, %struct.psa_core_key_attributes_t* noundef %15) #4
  store i32 %call9, i32* %status, align 4
  %16 = load i32, i32* %status, align 4
  %cmp10 = icmp eq i32 %16, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end8
  %17 = load i8**, i8*** %data.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %cmp11 = icmp eq i8* %18, null
  br i1 %cmp11, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %19 = load i64*, i64** %data_length.addr, align 8
  %20 = load i64, i64* %19, align 8
  %cmp12 = icmp eq i64 %20, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -146, i32* %status, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %lor.lhs.false, %if.end8
  br label %exit

exit:                                             ; preds = %if.end14, %if.then7
  %21 = load i8*, i8** %loaded_data, align 8
  %22 = load i64, i64* %storage_data_length, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %21, i64 noundef %22) #4
  %23 = load i8*, i8** %loaded_data, align 8
  call void @free(i8* noundef %23) #5
  %24 = load i32, i32* %status, align 4
  store i32 %24, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then3, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_crypto_storage_get_data_length(i32 noundef %key, i64* noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %data_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %data_identifier = alloca i64, align 8
  %data_identifier_info = alloca %struct.psa_storage_info_t, align 4
  store i32 %key, i32* %key.addr, align 4
  store i64* %data_length, i64** %data_length.addr, align 8
  %0 = load i32, i32* %key.addr, align 4
  %call = call i64 @psa_its_identifier_of_slot(i32 noundef %0) #4
  store i64 %call, i64* %data_identifier, align 8
  %1 = load i64, i64* %data_identifier, align 8
  %call1 = call i32 @psa_its_get_info(i64 noundef %1, %struct.psa_storage_info_t* noundef %data_identifier_info) #4
  store i32 %call1, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.psa_storage_info_t, %struct.psa_storage_info_t* %data_identifier_info, i32 0, i32 0
  %4 = load i32, i32* %size, align 4
  %conv = zext i32 %4 to i64
  %5 = load i64*, i64** %data_length.addr, align 8
  store i64 %conv, i64* %5, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_crypto_storage_load(i32 noundef %key, i8* noundef %data, i64 noundef %data_size) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %data_identifier = alloca i64, align 8
  %data_identifier_info = alloca %struct.psa_storage_info_t, align 4
  %data_length = alloca i64, align 8
  store i32 %key, i32* %key.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %0 = load i32, i32* %key.addr, align 4
  %call = call i64 @psa_its_identifier_of_slot(i32 noundef %0) #4
  store i64 %call, i64* %data_identifier, align 8
  store i64 0, i64* %data_length, align 8
  %1 = load i64, i64* %data_identifier, align 8
  %call1 = call i32 @psa_its_get_info(i64 noundef %1, %struct.psa_storage_info_t* noundef %data_identifier_info) #4
  store i32 %call1, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %data_identifier, align 8
  %5 = load i64, i64* %data_size.addr, align 8
  %conv = trunc i64 %5 to i32
  %6 = load i8*, i8** %data.addr, align 8
  %call2 = call i32 @psa_its_get(i64 noundef %4, i32 noundef 0, i32 noundef %conv, i8* noundef %6, i64* noundef %data_length) #4
  store i32 %call2, i32* %status, align 4
  %7 = load i64, i64* %data_size.addr, align 8
  %8 = load i64, i64* %data_length, align 8
  %cmp3 = icmp ne i64 %7, %8
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -153, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %9 = load i32, i32* %status, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @psa_its_set(i64 noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @psa_its_get(i64 noundef, i32 noundef, i32 noundef, i8* noundef, i64* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}

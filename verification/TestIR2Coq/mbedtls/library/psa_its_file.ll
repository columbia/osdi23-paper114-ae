; ModuleID = 'psa_its_file.c'
source_filename = "psa_its_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psa_storage_info_t = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.psa_its_file_header_t = type { [8 x i8], [4 x i8], [4 x i8] }

@.str = private unnamed_addr constant [9 x i8] c"PSA\00ITS\00\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"tempfile.psa_its\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%s%08x%08x%s\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c".psa_its\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_its_get_info(i64 noundef %uid, %struct.psa_storage_info_t* noundef %p_info) #0 {
entry:
  %uid.addr = alloca i64, align 8
  %p_info.addr = alloca %struct.psa_storage_info_t*, align 8
  %status = alloca i32, align 4
  %stream = alloca %struct._IO_FILE*, align 8
  store i64 %uid, i64* %uid.addr, align 8
  store %struct.psa_storage_info_t* %p_info, %struct.psa_storage_info_t** %p_info.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %stream, align 8
  %0 = load i64, i64* %uid.addr, align 8
  %1 = load %struct.psa_storage_info_t*, %struct.psa_storage_info_t** %p_info.addr, align 8
  %call = call i32 @psa_its_read_file(i64 noundef %0, %struct.psa_storage_info_t* noundef %1, %struct._IO_FILE** noundef %stream) #4
  store i32 %call, i32* %status, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %cmp = icmp ne %struct._IO_FILE* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call1 = call i32 @fclose(%struct._IO_FILE* noundef %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %status, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_its_read_file(i64 noundef %uid, %struct.psa_storage_info_t* noundef %p_info, %struct._IO_FILE** noundef %p_stream) #0 {
entry:
  %retval = alloca i32, align 4
  %uid.addr = alloca i64, align 8
  %p_info.addr = alloca %struct.psa_storage_info_t*, align 8
  %p_stream.addr = alloca %struct._IO_FILE**, align 8
  %filename = alloca [25 x i8], align 16
  %header = alloca %struct.psa_its_file_header_t, align 1
  %n = alloca i64, align 8
  store i64 %uid, i64* %uid.addr, align 8
  store %struct.psa_storage_info_t* %p_info, %struct.psa_storage_info_t** %p_info.addr, align 8
  store %struct._IO_FILE** %p_stream, %struct._IO_FILE*** %p_stream.addr, align 8
  %0 = load %struct._IO_FILE**, %struct._IO_FILE*** %p_stream.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %0, align 8
  %1 = load i64, i64* %uid.addr, align 8
  %arraydecay = getelementptr inbounds [25 x i8], [25 x i8]* %filename, i64 0, i64 0
  call void @psa_its_fill_filename(i64 noundef %1, i8* noundef %arraydecay) #4
  %arraydecay1 = getelementptr inbounds [25 x i8], [25 x i8]* %filename, i64 0, i64 0
  %call = call %struct._IO_FILE* @fopen(i8* noundef %arraydecay1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #4
  %2 = load %struct._IO_FILE**, %struct._IO_FILE*** %p_stream.addr, align 8
  store %struct._IO_FILE* %call, %struct._IO_FILE** %2, align 8
  %3 = load %struct._IO_FILE**, %struct._IO_FILE*** %p_stream.addr, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %cmp = icmp eq %struct._IO_FILE* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -140, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._IO_FILE**, %struct._IO_FILE*** %p_stream.addr, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  call void @setbuf(%struct._IO_FILE* noundef %6, i8* noundef null) #5
  %7 = bitcast %struct.psa_its_file_header_t* %header to i8*
  %8 = load %struct._IO_FILE**, %struct._IO_FILE*** %p_stream.addr, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %call2 = call i64 @fread(i8* noundef %7, i64 noundef 1, i64 noundef 16, %struct._IO_FILE* noundef %9) #4
  store i64 %call2, i64* %n, align 8
  %10 = load i64, i64* %n, align 8
  %cmp3 = icmp ne i64 %10, 16
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -152, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %magic = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [8 x i8], [8 x i8]* %magic, i64 0, i64 0
  %call7 = call i32 @memcmp(i8* noundef %arraydecay6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 noundef 8) #6
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  store i32 -152, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  %size = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %size, i64 0, i64 0
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %size11 = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [4 x i8], [4 x i8]* %size11, i64 0, i64 1
  %12 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %shl = shl i32 %conv13, 8
  %or = or i32 %conv, %shl
  %size14 = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %size14, i64 0, i64 2
  %13 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %13 to i32
  %shl17 = shl i32 %conv16, 16
  %or18 = or i32 %or, %shl17
  %size19 = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [4 x i8], [4 x i8]* %size19, i64 0, i64 3
  %14 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %14 to i32
  %shl22 = shl i32 %conv21, 24
  %or23 = or i32 %or18, %shl22
  %15 = load %struct.psa_storage_info_t*, %struct.psa_storage_info_t** %p_info.addr, align 8
  %size24 = getelementptr inbounds %struct.psa_storage_info_t, %struct.psa_storage_info_t* %15, i32 0, i32 0
  store i32 %or23, i32* %size24, align 4
  %flags = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 2
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* %flags, i64 0, i64 0
  %16 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %16 to i32
  %flags27 = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [4 x i8], [4 x i8]* %flags27, i64 0, i64 1
  %17 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %17 to i32
  %shl30 = shl i32 %conv29, 8
  %or31 = or i32 %conv26, %shl30
  %flags32 = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [4 x i8], [4 x i8]* %flags32, i64 0, i64 2
  %18 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %18 to i32
  %shl35 = shl i32 %conv34, 16
  %or36 = or i32 %or31, %shl35
  %flags37 = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [4 x i8], [4 x i8]* %flags37, i64 0, i64 3
  %19 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %19 to i32
  %shl40 = shl i32 %conv39, 24
  %or41 = or i32 %or36, %shl40
  %20 = load %struct.psa_storage_info_t*, %struct.psa_storage_info_t** %p_info.addr, align 8
  %flags42 = getelementptr inbounds %struct.psa_storage_info_t, %struct.psa_storage_info_t* %20, i32 0, i32 1
  store i32 %or41, i32* %flags42, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then4, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_its_get(i64 noundef %uid, i32 noundef %data_offset, i32 noundef %data_length, i8* noundef %p_data, i64* noundef %p_data_length) #0 {
entry:
  %uid.addr = alloca i64, align 8
  %data_offset.addr = alloca i32, align 4
  %data_length.addr = alloca i32, align 4
  %p_data.addr = alloca i8*, align 8
  %p_data_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %stream = alloca %struct._IO_FILE*, align 8
  %n = alloca i64, align 8
  %info = alloca %struct.psa_storage_info_t, align 4
  store i64 %uid, i64* %uid.addr, align 8
  store i32 %data_offset, i32* %data_offset.addr, align 4
  store i32 %data_length, i32* %data_length.addr, align 4
  store i8* %p_data, i8** %p_data.addr, align 8
  store i64* %p_data_length, i64** %p_data_length.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %stream, align 8
  %0 = load i64, i64* %uid.addr, align 8
  %call = call i32 @psa_its_read_file(i64 noundef %0, %struct.psa_storage_info_t* noundef %info, %struct._IO_FILE** noundef %stream) #4
  store i32 %call, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  store i32 -135, i32* %status, align 4
  %2 = load i32, i32* %data_offset.addr, align 4
  %3 = load i32, i32* %data_length.addr, align 4
  %add = add i32 %2, %3
  %4 = load i32, i32* %data_offset.addr, align 4
  %cmp1 = icmp ult i32 %add, %4
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %exit

if.end3:                                          ; preds = %if.end
  %5 = load i32, i32* %data_offset.addr, align 4
  %6 = load i32, i32* %data_length.addr, align 4
  %add4 = add i32 %5, %6
  %size = getelementptr inbounds %struct.psa_storage_info_t, %struct.psa_storage_info_t* %info, i32 0, i32 0
  %7 = load i32, i32* %size, align 4
  %cmp5 = icmp ugt i32 %add4, %7
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  br label %exit

if.end7:                                          ; preds = %if.end3
  store i32 -146, i32* %status, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %9 = load i32, i32* %data_offset.addr, align 4
  %conv = zext i32 %9 to i64
  %call8 = call i32 @fseek(%struct._IO_FILE* noundef %8, i64 noundef %conv, i32 noundef 1) #4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  br label %exit

if.end12:                                         ; preds = %if.end7
  %10 = load i8*, i8** %p_data.addr, align 8
  %11 = load i32, i32* %data_length.addr, align 4
  %conv13 = zext i32 %11 to i64
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call14 = call i64 @fread(i8* noundef %10, i64 noundef 1, i64 noundef %conv13, %struct._IO_FILE* noundef %12) #4
  store i64 %call14, i64* %n, align 8
  %13 = load i64, i64* %n, align 8
  %14 = load i32, i32* %data_length.addr, align 4
  %conv15 = zext i32 %14 to i64
  %cmp16 = icmp ne i64 %13, %conv15
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end12
  br label %exit

if.end19:                                         ; preds = %if.end12
  store i32 0, i32* %status, align 4
  %15 = load i64*, i64** %p_data_length.addr, align 8
  %cmp20 = icmp ne i64* %15, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  %16 = load i64, i64* %n, align 8
  %17 = load i64*, i64** %p_data_length.addr, align 8
  store i64 %16, i64* %17, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %exit

exit:                                             ; preds = %if.end23, %if.then18, %if.then11, %if.then6, %if.then2, %if.then
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %cmp24 = icmp ne %struct._IO_FILE* %18, null
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %exit
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call27 = call i32 @fclose(%struct._IO_FILE* noundef %19) #4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %exit
  %20 = load i32, i32* %status, align 4
  ret i32 %20
}

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_its_set(i64 noundef %uid, i32 noundef %data_length, i8* noundef %p_data, i32 noundef %create_flags) #0 {
entry:
  %retval = alloca i32, align 4
  %uid.addr = alloca i64, align 8
  %data_length.addr = alloca i32, align 4
  %p_data.addr = alloca i8*, align 8
  %create_flags.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %filename = alloca [25 x i8], align 16
  %stream = alloca %struct._IO_FILE*, align 8
  %header = alloca %struct.psa_its_file_header_t, align 1
  %n = alloca i64, align 8
  %ret = alloca i32, align 4
  store i64 %uid, i64* %uid.addr, align 8
  store i32 %data_length, i32* %data_length.addr, align 4
  store i8* %p_data, i8** %p_data.addr, align 8
  store i32 %create_flags, i32* %create_flags.addr, align 4
  %0 = load i64, i64* %uid.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -136, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 -146, i32* %status, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %stream, align 8
  %magic = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %magic, i64 0, i64 0
  %call = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 noundef 8) #5
  %1 = load i32, i32* %data_length.addr, align 4
  %and = and i32 %1, 255
  %conv = trunc i32 %and to i8
  %size = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %size, i64 0, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %2 = load i32, i32* %data_length.addr, align 4
  %shr = lshr i32 %2, 8
  %and1 = and i32 %shr, 255
  %conv2 = trunc i32 %and1 to i8
  %size3 = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %size3, i64 0, i64 1
  store i8 %conv2, i8* %arrayidx4, align 1
  %3 = load i32, i32* %data_length.addr, align 4
  %shr5 = lshr i32 %3, 16
  %and6 = and i32 %shr5, 255
  %conv7 = trunc i32 %and6 to i8
  %size8 = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [4 x i8], [4 x i8]* %size8, i64 0, i64 2
  store i8 %conv7, i8* %arrayidx9, align 1
  %4 = load i32, i32* %data_length.addr, align 4
  %shr10 = lshr i32 %4, 24
  %and11 = and i32 %shr10, 255
  %conv12 = trunc i32 %and11 to i8
  %size13 = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [4 x i8], [4 x i8]* %size13, i64 0, i64 3
  store i8 %conv12, i8* %arrayidx14, align 1
  %5 = load i32, i32* %create_flags.addr, align 4
  %and15 = and i32 %5, 255
  %conv16 = trunc i32 %and15 to i8
  %flags = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [4 x i8], [4 x i8]* %flags, i64 0, i64 0
  store i8 %conv16, i8* %arrayidx17, align 1
  %6 = load i32, i32* %create_flags.addr, align 4
  %shr18 = lshr i32 %6, 8
  %and19 = and i32 %shr18, 255
  %conv20 = trunc i32 %and19 to i8
  %flags21 = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [4 x i8], [4 x i8]* %flags21, i64 0, i64 1
  store i8 %conv20, i8* %arrayidx22, align 1
  %7 = load i32, i32* %create_flags.addr, align 4
  %shr23 = lshr i32 %7, 16
  %and24 = and i32 %shr23, 255
  %conv25 = trunc i32 %and24 to i8
  %flags26 = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 2
  %arrayidx27 = getelementptr inbounds [4 x i8], [4 x i8]* %flags26, i64 0, i64 2
  store i8 %conv25, i8* %arrayidx27, align 1
  %8 = load i32, i32* %create_flags.addr, align 4
  %shr28 = lshr i32 %8, 24
  %and29 = and i32 %shr28, 255
  %conv30 = trunc i32 %and29 to i8
  %flags31 = getelementptr inbounds %struct.psa_its_file_header_t, %struct.psa_its_file_header_t* %header, i32 0, i32 2
  %arrayidx32 = getelementptr inbounds [4 x i8], [4 x i8]* %flags31, i64 0, i64 3
  store i8 %conv30, i8* %arrayidx32, align 1
  %9 = load i64, i64* %uid.addr, align 8
  %arraydecay33 = getelementptr inbounds [25 x i8], [25 x i8]* %filename, i64 0, i64 0
  call void @psa_its_fill_filename(i64 noundef %9, i8* noundef %arraydecay33) #4
  %call34 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #4
  store %struct._IO_FILE* %call34, %struct._IO_FILE** %stream, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %cmp35 = icmp eq %struct._IO_FILE* %10, null
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end
  br label %exit

if.end38:                                         ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  call void @setbuf(%struct._IO_FILE* noundef %11, i8* noundef null) #5
  store i32 -142, i32* %status, align 4
  %12 = bitcast %struct.psa_its_file_header_t* %header to i8*
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call39 = call i64 @fwrite(i8* noundef %12, i64 noundef 1, i64 noundef 16, %struct._IO_FILE* noundef %13) #4
  store i64 %call39, i64* %n, align 8
  %14 = load i64, i64* %n, align 8
  %cmp40 = icmp ne i64 %14, 16
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end38
  br label %exit

if.end43:                                         ; preds = %if.end38
  %15 = load i32, i32* %data_length.addr, align 4
  %cmp44 = icmp ne i32 %15, 0
  br i1 %cmp44, label %if.then46, label %if.end54

if.then46:                                        ; preds = %if.end43
  %16 = load i8*, i8** %p_data.addr, align 8
  %17 = load i32, i32* %data_length.addr, align 4
  %conv47 = zext i32 %17 to i64
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call48 = call i64 @fwrite(i8* noundef %16, i64 noundef 1, i64 noundef %conv47, %struct._IO_FILE* noundef %18) #4
  store i64 %call48, i64* %n, align 8
  %19 = load i64, i64* %n, align 8
  %20 = load i32, i32* %data_length.addr, align 4
  %conv49 = zext i32 %20 to i64
  %cmp50 = icmp ne i64 %19, %conv49
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.then46
  br label %exit

if.end53:                                         ; preds = %if.then46
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end43
  store i32 0, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end54, %if.then52, %if.then42, %if.then37
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %cmp55 = icmp ne %struct._IO_FILE* %21, null
  br i1 %cmp55, label %if.then57, label %if.end65

if.then57:                                        ; preds = %exit
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call58 = call i32 @fclose(%struct._IO_FILE* noundef %22) #4
  store i32 %call58, i32* %ret, align 4
  %23 = load i32, i32* %status, align 4
  %cmp59 = icmp eq i32 %23, 0
  br i1 %cmp59, label %land.lhs.true, label %if.end64

land.lhs.true:                                    ; preds = %if.then57
  %24 = load i32, i32* %ret, align 4
  %cmp61 = icmp ne i32 %24, 0
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %land.lhs.true
  store i32 -142, i32* %status, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %land.lhs.true, %if.then57
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %exit
  %25 = load i32, i32* %status, align 4
  %cmp66 = icmp eq i32 %25, 0
  br i1 %cmp66, label %if.then68, label %if.end75

if.then68:                                        ; preds = %if.end65
  %arraydecay69 = getelementptr inbounds [25 x i8], [25 x i8]* %filename, i64 0, i64 0
  %call70 = call i32 @rename(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* noundef %arraydecay69) #5
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.then68
  store i32 -146, i32* %status, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.then68
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end65
  %call76 = call i32 @remove(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)) #5
  %26 = load i32, i32* %status, align 4
  store i32 %26, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end75, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_its_fill_filename(i64 noundef %uid, i8* noundef %filename) #0 {
entry:
  %uid.addr = alloca i64, align 8
  %filename.addr = alloca i8*, align 8
  store i64 %uid, i64* %uid.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load i64, i64* %uid.addr, align 8
  %shr = lshr i64 %1, 32
  %conv = trunc i64 %shr to i32
  %2 = load i64, i64* %uid.addr, align 8
  %and = and i64 %2, 4294967295
  %conv1 = trunc i64 %and to i32
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %0, i64 noundef 25, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #5
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local void @setbuf(%struct._IO_FILE* noundef, i8* noundef) #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @rename(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @remove(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_its_remove(i64 noundef %uid) #0 {
entry:
  %retval = alloca i32, align 4
  %uid.addr = alloca i64, align 8
  %filename = alloca [25 x i8], align 16
  %stream = alloca %struct._IO_FILE*, align 8
  store i64 %uid, i64* %uid.addr, align 8
  %0 = load i64, i64* %uid.addr, align 8
  %arraydecay = getelementptr inbounds [25 x i8], [25 x i8]* %filename, i64 0, i64 0
  call void @psa_its_fill_filename(i64 noundef %0, i8* noundef %arraydecay) #4
  %arraydecay1 = getelementptr inbounds [25 x i8], [25 x i8]* %filename, i64 0, i64 0
  %call = call %struct._IO_FILE* @fopen(i8* noundef %arraydecay1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #4
  store %struct._IO_FILE* %call, %struct._IO_FILE** %stream, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -140, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call2 = call i32 @fclose(%struct._IO_FILE* noundef %2) #4
  %arraydecay3 = getelementptr inbounds [25 x i8], [25 x i8]* %filename, i64 0, i64 0
  %call4 = call i32 @remove(i8* noundef %arraydecay3) #5
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -146, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

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

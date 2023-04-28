; ModuleID = 'test/wpackettest.c'
source_filename = "test/wpackettest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"test/wpackettest.c\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"buf = BUF_MEM_new()\00", align 1
@buf = internal unnamed_addr global %struct.buf_mem_st* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"test_WPACKET_init\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"test_WPACKET_set_max_size\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"test_WPACKET_start_sub_packet\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"test_WPACKET_set_flags\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"test_WPACKET_allocate_bytes\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"test_WPACKET_memcpy\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"test_WPACKET_init_der\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"WPACKET_init(&pkt, buf)\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"WPACKET_put_bytes_u8(&pkt, 0xff)\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"WPACKET_close(&pkt)\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"WPACKET_finish(&pkt)\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"WPACKET_get_total_written(&pkt, &written)\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"buf->data\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"simple1\00", align 1
@simple1 = internal constant [1 x i8] c"\FF", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"WPACKET_init_len(&pkt, buf, 1)\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"simple2\00", align 1
@simple2 = internal constant [2 x i8] c"\01\FF", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"WPACKET_init_len(&pkt, buf, 4)\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"simple3\00", align 1
@simple3 = internal constant [5 x i8] c"\00\00\00\01\FF", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"i < 256\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"WPACKET_init_static_len(&pkt, sbuf, sizeof(sbuf), 0)\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"WPACKET_put_bytes_u24(&pkt, 0xffffff)\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"sbuf\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@fixed = internal constant [3 x i8] c"\FF\FF\FF", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"WPACKET_init_static_len(&pkt, sbuf, sizeof(sbuf), 1)\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"WPACKET_put_bytes_u16(&pkt, 0xfeff)\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"alloc\00", align 1
@alloc = internal constant [3 x i8] c"\02\FE\FF", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"WPACKET_set_max_size(&pkt, SIZE_MAX)\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"WPACKET_set_max_size(&pkt, SIZE_MAX -1)\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"WPACKET_set_max_size(&pkt, 0)\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"WPACKET_set_max_size(&pkt, 0x0101)\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"WPACKET_set_max_size(&pkt, 0x0100)\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"WPACKET_set_max_size(&pkt, 0x01)\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"WPACKET_set_max_size(&pkt, 0x02)\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"WPACKET_start_sub_packet(&pkt)\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"WPACKET_start_sub_packet_u8(&pkt)\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"WPACKET_get_length(&pkt, &len)\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"nestedsub\00", align 1
@nestedsub = internal constant [4 x i8] c"\03\FF\01\FF", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"seqsub\00", align 1
@seqsub = internal constant [4 x i8] c"\01\FF\01\FF", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"WPACKET_fill_lengths(&pkt)\00", align 1
@.str.44 = private unnamed_addr constant [55 x i8] c"WPACKET_set_flags(&pkt, WPACKET_FLAGS_NON_ZERO_LENGTH)\00", align 1
@.str.45 = private unnamed_addr constant [62 x i8] c"WPACKET_set_flags(&pkt, WPACKET_FLAGS_ABANDON_ON_ZERO_LENGTH)\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"written\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@empty = internal constant [1 x i8] zeroinitializer, align 1
@.str.49 = private unnamed_addr constant [40 x i8] c"WPACKET_allocate_bytes(&pkt, 2, &bytes)\00", align 1
@.str.50 = private unnamed_addr constant [47 x i8] c"WPACKET_sub_allocate_bytes_u8(&pkt, 2, &bytes)\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"submem\00", align 1
@submem = internal constant [4 x i8] c"\03\02\FE\FF", align 1
@.str.52 = private unnamed_addr constant [43 x i8] c"WPACKET_memcpy(&pkt, bytes, sizeof(bytes))\00", align 1
@.str.53 = private unnamed_addr constant [50 x i8] c"WPACKET_sub_memcpy_u8(&pkt, bytes, sizeof(bytes))\00", align 1
@.str.54 = private unnamed_addr constant [43 x i8] c"WPACKET_init_der(&pkt, sbuf, sizeof(sbuf))\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"WPACKET_put_bytes_u24(&pkt, 0xfffefd)\00", align 1
@.str.56 = private unnamed_addr constant [49 x i8] c"WPACKET_memcpy(&pkt, testdata, sizeof(testdata))\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"WPACKET_put_bytes_u8(&pkt, 0xfc)\00", align 1
@.str.58 = private unnamed_addr constant [31 x i8] c"WPACKET_set_flags(&pkt, flags)\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"WPACKET_get_total_written(&pkt, &size1)\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"WPACKET_get_total_written(&pkt, &size2)\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"size1\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"size2\00", align 1
@.str.63 = private unnamed_addr constant [45 x i8] c"WPACKET_get_total_written(&pkt, &written[0])\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"WPACKET_get_curr(&pkt)\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"simpleder\00", align 1
@simpleder = internal constant [9 x i8] c"\FC\04\00\01\02\03\FF\FE\FD", align 1
@.str.66 = private unnamed_addr constant [49 x i8] c"RAND_bytes(&testdata2[3], sizeof(testdata2) - 3)\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"WPACKET_init_null_der(&pkt)\00", align 1
@.str.68 = private unnamed_addr constant [59 x i8] c"WPACKET_memcpy(&pkt, &testdata2[3], sizeof(testdata2) - 3)\00", align 1
@.str.69 = private unnamed_addr constant [45 x i8] c"WPACKET_get_total_written(&pkt, &written[i])\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"written[0]\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"written[1]\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"testdata2\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.buf_mem_st* @BUF_MEM_new() #4
  store %struct.buf_mem_st* %call, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %0 = bitcast %struct.buf_mem_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 429, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_WPACKET_init) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_WPACKET_set_max_size) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_WPACKET_start_sub_packet) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_WPACKET_set_flags) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_WPACKET_allocate_bytes) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 ()* noundef nonnull @test_WPACKET_memcpy) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 ()* noundef nonnull @test_WPACKET_init_der) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.buf_mem_st* @BUF_MEM_new() local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_WPACKET_init() #0 {
entry:
  %pkt = alloca %struct.wpacket_st, align 8
  %written = alloca i64, align 8
  %sbuf = alloca [3 x i8], align 1
  %0 = bitcast %struct.wpacket_st* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #5
  %1 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = getelementptr inbounds [3 x i8], [3 x i8]* %sbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %2) #5
  %3 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call = call i32 @WPACKET_init(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %3) #4
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv4) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 @test_false(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv10) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup.sink.split, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %call14 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv16) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup.sink.split, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %call20 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_false(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv22) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup.sink.split, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %call26 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = call i32 @test_false(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv28) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup.sink.split, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %call32 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv34) #4
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup.sink.split, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %4 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %4, i64 0, i32 1
  %5 = load i8*, i8** %data, align 8, !tbaa !7
  %6 = load i64, i64* %written, align 8, !tbaa !10
  %call38 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* noundef %5, i64 noundef %6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @simple1, i64 0, i64 0), i64 noundef 1) #4
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false37
  %7 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call41 = call i32 @WPACKET_init_len(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %7, i64 noundef 1) #4
  %cmp42 = icmp ne i32 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv43) #4
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cleanup.sink.split, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.end
  %call47 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp48 = icmp ne i32 %call47, 0
  %conv49 = zext i1 %cmp48 to i32
  %call50 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv49) #4
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup.sink.split, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false46
  %call53 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp54 = icmp ne i32 %call53, 0
  %conv55 = zext i1 %cmp54 to i32
  %call56 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv55) #4
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %cleanup.sink.split, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false52
  %call59 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv61) #4
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %cleanup.sink.split, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false58
  %8 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data65 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %8, i64 0, i32 1
  %9 = load i8*, i8** %data65, align 8, !tbaa !7
  %10 = load i64, i64* %written, align 8, !tbaa !10
  %call66 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @simple2, i64 0, i64 0), i64 noundef 2) #4
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %cleanup.sink.split, label %if.end70

if.end70:                                         ; preds = %lor.lhs.false64
  %11 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call71 = call i32 @WPACKET_init_len(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %11, i64 noundef 4) #4
  %cmp72 = icmp ne i32 %call71, 0
  %conv73 = zext i1 %cmp72 to i32
  %call74 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv73) #4
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %cleanup.sink.split, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %if.end70
  %call77 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv79) #4
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %cleanup.sink.split, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false76
  %call83 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp84 = icmp ne i32 %call83, 0
  %conv85 = zext i1 %cmp84 to i32
  %call86 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv85) #4
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %cleanup.sink.split, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false82
  %call89 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp90 = icmp ne i32 %call89, 0
  %conv91 = zext i1 %cmp90 to i32
  %call92 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv91) #4
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %cleanup.sink.split, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %lor.lhs.false88
  %12 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data95 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %12, i64 0, i32 1
  %13 = load i8*, i8** %data95, align 8, !tbaa !7
  %14 = load i64, i64* %written, align 8, !tbaa !10
  %call96 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* noundef %13, i64 noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @simple3, i64 0, i64 0), i64 noundef 5) #4
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %cleanup.sink.split, label %if.end100

if.end100:                                        ; preds = %lor.lhs.false94
  %15 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call101 = call i32 @WPACKET_init_len(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %15, i64 noundef 1) #4
  %cmp102 = icmp ne i32 %call101, 0
  %conv103 = zext i1 %cmp102 to i32
  %call104 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv103) #4
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %cleanup.sink.split, label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0204, 1
  %exitcond.not = icmp eq i32 %inc, 257
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !11

for.body:                                         ; preds = %if.end100, %for.cond
  %i.0204 = phi i32 [ %inc, %for.cond ], [ 1, %if.end100 ]
  %call111 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp112 = icmp ne i32 %i.0204, 256
  %conv113 = zext i1 %cmp112 to i32
  %call114 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call111, i32 noundef %conv113) #4
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %cleanup.sink.split, label %for.cond

for.end:                                          ; preds = %for.cond
  %call119 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp120 = icmp ne i32 %call119, 0
  %conv121 = zext i1 %cmp120 to i32
  %call122 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv121) #4
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %cleanup.sink.split, label %if.end126

if.end126:                                        ; preds = %for.end
  %call127 = call i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef nonnull %pkt, i8* noundef nonnull %2, i64 noundef 3, i64 noundef 0) #4
  %cmp128 = icmp ne i32 %call127, 0
  %conv129 = zext i1 %cmp128 to i32
  %call130 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv129) #4
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %cleanup.sink.split, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %if.end126
  %call133 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 16777215, i64 noundef 3) #4
  %cmp134 = icmp ne i32 %call133, 0
  %conv135 = zext i1 %cmp134 to i32
  %call136 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv135) #4
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %cleanup.sink.split, label %lor.lhs.false138

lor.lhs.false138:                                 ; preds = %lor.lhs.false132
  %call139 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp140 = icmp ne i32 %call139, 0
  %conv141 = zext i1 %cmp140 to i32
  %call142 = call i32 @test_false(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv141) #4
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %cleanup.sink.split, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %lor.lhs.false138
  %call145 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp146 = icmp ne i32 %call145, 0
  %conv147 = zext i1 %cmp146 to i32
  %call148 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv147) #4
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %cleanup.sink.split, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %lor.lhs.false144
  %call151 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp152 = icmp ne i32 %call151, 0
  %conv153 = zext i1 %cmp152 to i32
  %call154 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv153) #4
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %cleanup.sink.split, label %lor.lhs.false156

lor.lhs.false156:                                 ; preds = %lor.lhs.false150
  %16 = load i64, i64* %written, align 8, !tbaa !10
  %call158 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @fixed, i64 0, i64 0), i64 noundef 3) #4
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %cleanup.sink.split, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %lor.lhs.false156
  %call162 = call i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef nonnull %pkt, i8* noundef nonnull %2, i64 noundef 3, i64 noundef 1) #4
  %cmp163 = icmp ne i32 %call162, 0
  %conv164 = zext i1 %cmp163 to i32
  %call165 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv164) #4
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %cleanup.sink.split, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %lor.lhs.false160
  %call168 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 65279, i64 noundef 2) #4
  %cmp169 = icmp ne i32 %call168, 0
  %conv170 = zext i1 %cmp169 to i32
  %call171 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv170) #4
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %cleanup.sink.split, label %lor.lhs.false173

lor.lhs.false173:                                 ; preds = %lor.lhs.false167
  %call174 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp175 = icmp ne i32 %call174, 0
  %conv176 = zext i1 %cmp175 to i32
  %call177 = call i32 @test_false(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv176) #4
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %cleanup.sink.split, label %lor.lhs.false179

lor.lhs.false179:                                 ; preds = %lor.lhs.false173
  %call180 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp181 = icmp ne i32 %call180, 0
  %conv182 = zext i1 %cmp181 to i32
  %call183 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv182) #4
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %cleanup.sink.split, label %lor.lhs.false185

lor.lhs.false185:                                 ; preds = %lor.lhs.false179
  %call186 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp187 = icmp ne i32 %call186, 0
  %conv188 = zext i1 %cmp187 to i32
  %call189 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv188) #4
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %cleanup.sink.split, label %lor.lhs.false191

lor.lhs.false191:                                 ; preds = %lor.lhs.false185
  %17 = load i64, i64* %written, align 8, !tbaa !10
  %call193 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef %17, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @alloc, i64 0, i64 0), i64 noundef 3) #4
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %for.body, %if.end126, %lor.lhs.false132, %lor.lhs.false138, %lor.lhs.false144, %lor.lhs.false150, %lor.lhs.false156, %lor.lhs.false160, %lor.lhs.false167, %lor.lhs.false173, %lor.lhs.false179, %lor.lhs.false185, %lor.lhs.false191, %for.end, %if.end100, %if.end70, %lor.lhs.false76, %lor.lhs.false82, %lor.lhs.false88, %lor.lhs.false94, %if.end, %lor.lhs.false46, %lor.lhs.false52, %lor.lhs.false58, %lor.lhs.false64, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false13, %lor.lhs.false19, %lor.lhs.false25, %lor.lhs.false31, %lor.lhs.false37
  call fastcc void @cleanup(%struct.wpacket_st* noundef nonnull %pkt) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false191
  %retval.0 = phi i32 [ 1, %lor.lhs.false191 ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_WPACKET_set_max_size() #0 {
entry:
  %pkt = alloca %struct.wpacket_st, align 8
  %written = alloca i64, align 8
  %0 = bitcast %struct.wpacket_st* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #5
  %1 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call = call i32 @WPACKET_init(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %2) #4
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @WPACKET_set_max_size(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef -1) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv4) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call i32 @WPACKET_set_max_size(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef -2) #4
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv10) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup.sink.split, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %call14 = call i32 @WPACKET_set_max_size(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef -1) #4
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv16) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup.sink.split, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %call20 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv22) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false19
  %3 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call26 = call i32 @WPACKET_init_len(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %3, i64 noundef 1) #4
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv28) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup.sink.split, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.end
  %call32 = call i32 @WPACKET_set_max_size(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 0) #4
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call i32 @test_false(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv34) #4
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup.sink.split, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %call38 = call i32 @WPACKET_set_max_size(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 257) #4
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = call i32 @test_false(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv40) #4
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cleanup.sink.split, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false37
  %call44 = call i32 @WPACKET_set_max_size(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 256) #4
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv46) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %cleanup.sink.split, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false43
  %call50 = call i32 @WPACKET_set_max_size(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 1) #4
  %cmp51 = icmp ne i32 %call50, 0
  %conv52 = zext i1 %cmp51 to i32
  %call53 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv52) #4
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %cleanup.sink.split, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false49
  %call56 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp57 = icmp ne i32 %call56, 0
  %conv58 = zext i1 %cmp57 to i32
  %call59 = call i32 @test_false(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv58) #4
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %cleanup.sink.split, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false55
  %call62 = call i32 @WPACKET_set_max_size(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 2) #4
  %cmp63 = icmp ne i32 %call62, 0
  %conv64 = zext i1 %cmp63 to i32
  %call65 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv64) #4
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %cleanup.sink.split, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false61
  %call68 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp69 = icmp ne i32 %call68, 0
  %conv70 = zext i1 %cmp69 to i32
  %call71 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv70) #4
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %cleanup.sink.split, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false67
  %call74 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp75 = icmp ne i32 %call74, 0
  %conv76 = zext i1 %cmp75 to i32
  %call77 = call i32 @test_false(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv76) #4
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %cleanup.sink.split, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %lor.lhs.false73
  %call80 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp81 = icmp ne i32 %call80, 0
  %conv82 = zext i1 %cmp81 to i32
  %call83 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv82) #4
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %cleanup.sink.split, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false79
  %call86 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp87 = icmp ne i32 %call86, 0
  %conv88 = zext i1 %cmp87 to i32
  %call89 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv88) #4
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %cleanup.sink.split, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %lor.lhs.false85
  %4 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %4, i64 0, i32 1
  %5 = load i8*, i8** %data, align 8, !tbaa !7
  %6 = load i64, i64* %written, align 8, !tbaa !10
  %call92 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* noundef %5, i64 noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @simple2, i64 0, i64 0), i64 noundef 2) #4
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end, %lor.lhs.false31, %lor.lhs.false37, %lor.lhs.false43, %lor.lhs.false49, %lor.lhs.false55, %lor.lhs.false61, %lor.lhs.false67, %lor.lhs.false73, %lor.lhs.false79, %lor.lhs.false85, %lor.lhs.false91, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false13, %lor.lhs.false19
  call fastcc void @cleanup(%struct.wpacket_st* noundef nonnull %pkt) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false91
  %retval.0 = phi i32 [ 1, %lor.lhs.false91 ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_WPACKET_start_sub_packet() #0 {
entry:
  %pkt = alloca %struct.wpacket_st, align 8
  %written = alloca i64, align 8
  %len = alloca i64, align 8
  %0 = bitcast %struct.wpacket_st* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #5
  %1 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %3 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call = call i32 @WPACKET_init(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %3) #4
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv4) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv10) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup.sink.split, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %call14 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = call i32 @test_false(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv16) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup.sink.split, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %call20 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv22) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup.sink.split, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %call26 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = call i32 @test_false(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv28) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup.sink.split, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %call32 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv34) #4
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup.sink.split, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %call38 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv40) #4
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cleanup.sink.split, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false37
  %4 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %4, i64 0, i32 1
  %5 = load i8*, i8** %data, align 8, !tbaa !7
  %6 = load i64, i64* %written, align 8, !tbaa !10
  %call44 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* noundef %5, i64 noundef %6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @simple1, i64 0, i64 0), i64 noundef 1) #4
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false43
  %7 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call47 = call i32 @WPACKET_init(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %7) #4
  %cmp48 = icmp ne i32 %call47, 0
  %conv49 = zext i1 %cmp48 to i32
  %call50 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv49) #4
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup.sink.split, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.end
  %call53 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 1) #4
  %cmp54 = icmp ne i32 %call53, 0
  %conv55 = zext i1 %cmp54 to i32
  %call56 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv55) #4
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %cleanup.sink.split, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false52
  %call59 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv61) #4
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %cleanup.sink.split, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false58
  %call65 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp66 = icmp ne i32 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  %call68 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv67) #4
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %cleanup.sink.split, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false64
  %call71 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp72 = icmp ne i32 %call71, 0
  %conv73 = zext i1 %cmp72 to i32
  %call74 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv73) #4
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %cleanup.sink.split, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false70
  %call77 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv79) #4
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %cleanup.sink.split, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false76
  %8 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data83 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %8, i64 0, i32 1
  %9 = load i8*, i8** %data83, align 8, !tbaa !7
  %10 = load i64, i64* %written, align 8, !tbaa !10
  %call84 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @simple2, i64 0, i64 0), i64 noundef 2) #4
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %cleanup.sink.split, label %if.end88

if.end88:                                         ; preds = %lor.lhs.false82
  %11 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call89 = call i32 @WPACKET_init(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %11) #4
  %cmp90 = icmp ne i32 %call89, 0
  %conv91 = zext i1 %cmp90 to i32
  %call92 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv91) #4
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %cleanup.sink.split, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %if.end88
  %call95 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 1) #4
  %cmp96 = icmp ne i32 %call95, 0
  %conv97 = zext i1 %cmp96 to i32
  %call98 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv97) #4
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %cleanup.sink.split, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %lor.lhs.false94
  %call101 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp102 = icmp ne i32 %call101, 0
  %conv103 = zext i1 %cmp102 to i32
  %call104 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv103) #4
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %cleanup.sink.split, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %lor.lhs.false100
  %call107 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 1) #4
  %cmp108 = icmp ne i32 %call107, 0
  %conv109 = zext i1 %cmp108 to i32
  %call110 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv109) #4
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %cleanup.sink.split, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false106
  %call113 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp114 = icmp ne i32 %call113, 0
  %conv115 = zext i1 %cmp114 to i32
  %call116 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv115) #4
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %cleanup.sink.split, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %lor.lhs.false112
  %call119 = call i32 @WPACKET_get_length(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %len) #4
  %cmp120 = icmp ne i32 %call119, 0
  %conv121 = zext i1 %cmp120 to i32
  %call122 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv121) #4
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %cleanup.sink.split, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %lor.lhs.false118
  %12 = load i64, i64* %len, align 8, !tbaa !10
  %call125 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i64 noundef %12, i64 noundef 1) #4
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %cleanup.sink.split, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %lor.lhs.false124
  %call128 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp129 = icmp ne i32 %call128, 0
  %conv130 = zext i1 %cmp129 to i32
  %call131 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv130) #4
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %cleanup.sink.split, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %lor.lhs.false127
  %call134 = call i32 @WPACKET_get_length(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %len) #4
  %cmp135 = icmp ne i32 %call134, 0
  %conv136 = zext i1 %cmp135 to i32
  %call137 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv136) #4
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %cleanup.sink.split, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %lor.lhs.false133
  %13 = load i64, i64* %len, align 8, !tbaa !10
  %call140 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64 noundef %13, i64 noundef 3) #4
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %cleanup.sink.split, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %lor.lhs.false139
  %call143 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp144 = icmp ne i32 %call143, 0
  %conv145 = zext i1 %cmp144 to i32
  %call146 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 201, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv145) #4
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %cleanup.sink.split, label %lor.lhs.false148

lor.lhs.false148:                                 ; preds = %lor.lhs.false142
  %call149 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp150 = icmp ne i32 %call149, 0
  %conv151 = zext i1 %cmp150 to i32
  %call152 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv151) #4
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %cleanup.sink.split, label %lor.lhs.false154

lor.lhs.false154:                                 ; preds = %lor.lhs.false148
  %call155 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp156 = icmp ne i32 %call155, 0
  %conv157 = zext i1 %cmp156 to i32
  %call158 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv157) #4
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %cleanup.sink.split, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %lor.lhs.false154
  %14 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data161 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %14, i64 0, i32 1
  %15 = load i8*, i8** %data161, align 8, !tbaa !7
  %16 = load i64, i64* %written, align 8, !tbaa !10
  %call162 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 204, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i8* noundef %15, i64 noundef %16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @nestedsub, i64 0, i64 0), i64 noundef 4) #4
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %cleanup.sink.split, label %if.end166

if.end166:                                        ; preds = %lor.lhs.false160
  %17 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call167 = call i32 @WPACKET_init(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %17) #4
  %cmp168 = icmp ne i32 %call167, 0
  %conv169 = zext i1 %cmp168 to i32
  %call170 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv169) #4
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %cleanup.sink.split, label %lor.lhs.false172

lor.lhs.false172:                                 ; preds = %if.end166
  %call173 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 1) #4
  %cmp174 = icmp ne i32 %call173, 0
  %conv175 = zext i1 %cmp174 to i32
  %call176 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv175) #4
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %cleanup.sink.split, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %lor.lhs.false172
  %call179 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp180 = icmp ne i32 %call179, 0
  %conv181 = zext i1 %cmp180 to i32
  %call182 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 210, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv181) #4
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %cleanup.sink.split, label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %lor.lhs.false178
  %call185 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp186 = icmp ne i32 %call185, 0
  %conv187 = zext i1 %cmp186 to i32
  %call188 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv187) #4
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %cleanup.sink.split, label %lor.lhs.false190

lor.lhs.false190:                                 ; preds = %lor.lhs.false184
  %call191 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 1) #4
  %cmp192 = icmp ne i32 %call191, 0
  %conv193 = zext i1 %cmp192 to i32
  %call194 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv193) #4
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %cleanup.sink.split, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %lor.lhs.false190
  %call197 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp198 = icmp ne i32 %call197, 0
  %conv199 = zext i1 %cmp198 to i32
  %call200 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv199) #4
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %cleanup.sink.split, label %lor.lhs.false202

lor.lhs.false202:                                 ; preds = %lor.lhs.false196
  %call203 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp204 = icmp ne i32 %call203, 0
  %conv205 = zext i1 %cmp204 to i32
  %call206 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 214, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv205) #4
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %cleanup.sink.split, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %lor.lhs.false202
  %call209 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp210 = icmp ne i32 %call209, 0
  %conv211 = zext i1 %cmp210 to i32
  %call212 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv211) #4
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %cleanup.sink.split, label %lor.lhs.false214

lor.lhs.false214:                                 ; preds = %lor.lhs.false208
  %call215 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp216 = icmp ne i32 %call215, 0
  %conv217 = zext i1 %cmp216 to i32
  %call218 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 216, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv217) #4
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %cleanup.sink.split, label %lor.lhs.false220

lor.lhs.false220:                                 ; preds = %lor.lhs.false214
  %18 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data221 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %18, i64 0, i32 1
  %19 = load i8*, i8** %data221, align 8, !tbaa !7
  %20 = load i64, i64* %written, align 8, !tbaa !10
  %call222 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i8* noundef %19, i64 noundef %20, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @seqsub, i64 0, i64 0), i64 noundef 4) #4
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %cleanup.sink.split, label %if.end226

if.end226:                                        ; preds = %lor.lhs.false220
  %21 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call227 = call i32 @WPACKET_init(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %21) #4
  %cmp228 = icmp ne i32 %call227, 0
  %conv229 = zext i1 %cmp228 to i32
  %call230 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv229) #4
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %cleanup.sink.split, label %lor.lhs.false232

lor.lhs.false232:                                 ; preds = %if.end226
  %call233 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 1) #4
  %cmp234 = icmp ne i32 %call233, 0
  %conv235 = zext i1 %cmp234 to i32
  %call236 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv235) #4
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %cleanup.sink.split, label %lor.lhs.false238

lor.lhs.false238:                                 ; preds = %lor.lhs.false232
  %call239 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp240 = icmp ne i32 %call239, 0
  %conv241 = zext i1 %cmp240 to i32
  %call242 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv241) #4
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %cleanup.sink.split, label %lor.lhs.false244

lor.lhs.false244:                                 ; preds = %lor.lhs.false238
  %call245 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 1) #4
  %cmp246 = icmp ne i32 %call245, 0
  %conv247 = zext i1 %cmp246 to i32
  %call248 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv247) #4
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %cleanup.sink.split, label %lor.lhs.false250

lor.lhs.false250:                                 ; preds = %lor.lhs.false244
  %call251 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp252 = icmp ne i32 %call251, 0
  %conv253 = zext i1 %cmp252 to i32
  %call254 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 225, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv253) #4
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %cleanup.sink.split, label %lor.lhs.false256

lor.lhs.false256:                                 ; preds = %lor.lhs.false250
  %call257 = call i32 @WPACKET_get_length(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %len) #4
  %cmp258 = icmp ne i32 %call257, 0
  %conv259 = zext i1 %cmp258 to i32
  %call260 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv259) #4
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %cleanup.sink.split, label %lor.lhs.false262

lor.lhs.false262:                                 ; preds = %lor.lhs.false256
  %22 = load i64, i64* %len, align 8, !tbaa !10
  %call263 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i64 noundef %22, i64 noundef 1) #4
  %tobool264.not = icmp eq i32 %call263, 0
  br i1 %tobool264.not, label %cleanup.sink.split, label %lor.lhs.false265

lor.lhs.false265:                                 ; preds = %lor.lhs.false262
  %call266 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp267 = icmp ne i32 %call266, 0
  %conv268 = zext i1 %cmp267 to i32
  %call269 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv268) #4
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %cleanup.sink.split, label %lor.lhs.false271

lor.lhs.false271:                                 ; preds = %lor.lhs.false265
  %call272 = call i32 @WPACKET_get_length(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %len) #4
  %cmp273 = icmp ne i32 %call272, 0
  %conv274 = zext i1 %cmp273 to i32
  %call275 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv274) #4
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %cleanup.sink.split, label %lor.lhs.false277

lor.lhs.false277:                                 ; preds = %lor.lhs.false271
  %23 = load i64, i64* %len, align 8, !tbaa !10
  %call278 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64 noundef %23, i64 noundef 3) #4
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %cleanup.sink.split, label %lor.lhs.false280

lor.lhs.false280:                                 ; preds = %lor.lhs.false277
  %call281 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp282 = icmp ne i32 %call281, 0
  %conv283 = zext i1 %cmp282 to i32
  %call284 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv283) #4
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %cleanup.sink.split, label %lor.lhs.false286

lor.lhs.false286:                                 ; preds = %lor.lhs.false280
  %call287 = call i32 @WPACKET_fill_lengths(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp288 = icmp ne i32 %call287, 0
  %conv289 = zext i1 %cmp288 to i32
  %call290 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv289) #4
  %tobool291.not = icmp eq i32 %call290, 0
  br i1 %tobool291.not, label %cleanup.sink.split, label %lor.lhs.false292

lor.lhs.false292:                                 ; preds = %lor.lhs.false286
  %call293 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp294 = icmp ne i32 %call293, 0
  %conv295 = zext i1 %cmp294 to i32
  %call296 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv295) #4
  %tobool297.not = icmp eq i32 %call296, 0
  br i1 %tobool297.not, label %cleanup.sink.split, label %lor.lhs.false298

lor.lhs.false298:                                 ; preds = %lor.lhs.false292
  %24 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data299 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %24, i64 0, i32 1
  %25 = load i8*, i8** %data299, align 8, !tbaa !7
  %26 = load i64, i64* %written, align 8, !tbaa !10
  %call300 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i8* noundef %25, i64 noundef %26, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @nestedsub, i64 0, i64 0), i64 noundef 4) #4
  %tobool301.not = icmp eq i32 %call300, 0
  br i1 %tobool301.not, label %cleanup.sink.split, label %lor.lhs.false302

lor.lhs.false302:                                 ; preds = %lor.lhs.false298
  %call303 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp304 = icmp ne i32 %call303, 0
  %conv305 = zext i1 %cmp304 to i32
  %call306 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv305) #4
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end226, %lor.lhs.false232, %lor.lhs.false238, %lor.lhs.false244, %lor.lhs.false250, %lor.lhs.false256, %lor.lhs.false262, %lor.lhs.false265, %lor.lhs.false271, %lor.lhs.false277, %lor.lhs.false280, %lor.lhs.false286, %lor.lhs.false292, %lor.lhs.false298, %lor.lhs.false302, %if.end166, %lor.lhs.false172, %lor.lhs.false178, %lor.lhs.false184, %lor.lhs.false190, %lor.lhs.false196, %lor.lhs.false202, %lor.lhs.false208, %lor.lhs.false214, %lor.lhs.false220, %if.end88, %lor.lhs.false94, %lor.lhs.false100, %lor.lhs.false106, %lor.lhs.false112, %lor.lhs.false118, %lor.lhs.false124, %lor.lhs.false127, %lor.lhs.false133, %lor.lhs.false139, %lor.lhs.false142, %lor.lhs.false148, %lor.lhs.false154, %lor.lhs.false160, %if.end, %lor.lhs.false52, %lor.lhs.false58, %lor.lhs.false64, %lor.lhs.false70, %lor.lhs.false76, %lor.lhs.false82, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false13, %lor.lhs.false19, %lor.lhs.false25, %lor.lhs.false31, %lor.lhs.false37, %lor.lhs.false43
  call fastcc void @cleanup(%struct.wpacket_st* noundef nonnull %pkt) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false302
  %retval.0 = phi i32 [ 1, %lor.lhs.false302 ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_WPACKET_set_flags() #0 {
entry:
  %pkt = alloca %struct.wpacket_st, align 8
  %written = alloca i64, align 8
  %0 = bitcast %struct.wpacket_st* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #5
  %1 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call = call i32 @WPACKET_init(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %2) #4
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @WPACKET_set_flags(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 1) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv4) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 @test_false(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 251, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv10) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup.sink.split, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %call14 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 252, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv16) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup.sink.split, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %call20 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv22) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup.sink.split, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %call26 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv28) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup.sink.split, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %3 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %3, i64 0, i32 1
  %4 = load i8*, i8** %data, align 8, !tbaa !7
  %5 = load i64, i64* %written, align 8, !tbaa !10
  %call32 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* noundef %4, i64 noundef %5, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @simple1, i64 0, i64 0), i64 noundef 1) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false31
  %6 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call35 = call i32 @WPACKET_init(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %6) #4
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv37) #4
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup.sink.split, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.end
  %call41 = call i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp42 = icmp ne i32 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv43) #4
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cleanup.sink.split, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false40
  %call47 = call i32 @WPACKET_set_flags(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 1) #4
  %cmp48 = icmp ne i32 %call47, 0
  %conv49 = zext i1 %cmp48 to i32
  %call50 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv49) #4
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup.sink.split, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false46
  %call53 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp54 = icmp ne i32 %call53, 0
  %conv55 = zext i1 %cmp54 to i32
  %call56 = call i32 @test_false(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 263, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv55) #4
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %cleanup.sink.split, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false52
  %call59 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv61) #4
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %cleanup.sink.split, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false58
  %call65 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp66 = icmp ne i32 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  %call68 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv67) #4
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %cleanup.sink.split, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false64
  %call71 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp72 = icmp ne i32 %call71, 0
  %conv73 = zext i1 %cmp72 to i32
  %call74 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 266, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv73) #4
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %cleanup.sink.split, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false70
  %call77 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv79) #4
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %cleanup.sink.split, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false76
  %7 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data83 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %7, i64 0, i32 1
  %8 = load i8*, i8** %data83, align 8, !tbaa !7
  %9 = load i64, i64* %written, align 8, !tbaa !10
  %call84 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* noundef %8, i64 noundef %9, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @simple1, i64 0, i64 0), i64 noundef 1) #4
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %cleanup.sink.split, label %if.end88

if.end88:                                         ; preds = %lor.lhs.false82
  %10 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call89 = call i32 @WPACKET_init_len(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %10, i64 noundef 1) #4
  %cmp90 = icmp ne i32 %call89, 0
  %conv91 = zext i1 %cmp90 to i32
  %call92 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv91) #4
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %cleanup.sink.split, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %if.end88
  %call95 = call i32 @WPACKET_set_flags(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 2) #4
  %cmp96 = icmp ne i32 %call95, 0
  %conv97 = zext i1 %cmp96 to i32
  %call98 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv97) #4
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %cleanup.sink.split, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %lor.lhs.false94
  %call101 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp102 = icmp ne i32 %call101, 0
  %conv103 = zext i1 %cmp102 to i32
  %call104 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv103) #4
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %cleanup.sink.split, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %lor.lhs.false100
  %call107 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp108 = icmp ne i32 %call107, 0
  %conv109 = zext i1 %cmp108 to i32
  %call110 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 275, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv109) #4
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %cleanup.sink.split, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false106
  %11 = load i64, i64* %written, align 8, !tbaa !10
  %call113 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 276, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), i64 noundef %11, i64 noundef 0) #4
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %cleanup.sink.split, label %if.end117

if.end117:                                        ; preds = %lor.lhs.false112
  %12 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call118 = call i32 @WPACKET_init_len(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %12, i64 noundef 1) #4
  %cmp119 = icmp ne i32 %call118, 0
  %conv120 = zext i1 %cmp119 to i32
  %call121 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv120) #4
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %cleanup.sink.split, label %lor.lhs.false123

lor.lhs.false123:                                 ; preds = %if.end117
  %call124 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 1) #4
  %cmp125 = icmp ne i32 %call124, 0
  %conv126 = zext i1 %cmp125 to i32
  %call127 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv126) #4
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %cleanup.sink.split, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %lor.lhs.false123
  %call130 = call i32 @WPACKET_set_flags(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 2) #4
  %cmp131 = icmp ne i32 %call130, 0
  %conv132 = zext i1 %cmp131 to i32
  %call133 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 282, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv132) #4
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %cleanup.sink.split, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %lor.lhs.false129
  %call136 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp137 = icmp ne i32 %call136, 0
  %conv138 = zext i1 %cmp137 to i32
  %call139 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 283, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv138) #4
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %cleanup.sink.split, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %lor.lhs.false135
  %call142 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp143 = icmp ne i32 %call142, 0
  %conv144 = zext i1 %cmp143 to i32
  %call145 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 284, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv144) #4
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %cleanup.sink.split, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %lor.lhs.false141
  %call148 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp149 = icmp ne i32 %call148, 0
  %conv150 = zext i1 %cmp149 to i32
  %call151 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 285, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv150) #4
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %cleanup.sink.split, label %lor.lhs.false153

lor.lhs.false153:                                 ; preds = %lor.lhs.false147
  %13 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data154 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %13, i64 0, i32 1
  %14 = load i8*, i8** %data154, align 8, !tbaa !7
  %15 = load i64, i64* %written, align 8, !tbaa !10
  %call155 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i8* noundef %14, i64 noundef %15, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @empty, i64 0, i64 0), i64 noundef 1) #4
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %cleanup.sink.split, label %if.end159

if.end159:                                        ; preds = %lor.lhs.false153
  %16 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call160 = call i32 @WPACKET_init(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %16) #4
  %cmp161 = icmp ne i32 %call160, 0
  %conv162 = zext i1 %cmp161 to i32
  %call163 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 290, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv162) #4
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %cleanup.sink.split, label %lor.lhs.false165

lor.lhs.false165:                                 ; preds = %if.end159
  %call166 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 1) #4
  %cmp167 = icmp ne i32 %call166, 0
  %conv168 = zext i1 %cmp167 to i32
  %call169 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv168) #4
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %cleanup.sink.split, label %lor.lhs.false171

lor.lhs.false171:                                 ; preds = %lor.lhs.false165
  %call172 = call i32 @WPACKET_set_flags(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 2) #4
  %cmp173 = icmp ne i32 %call172, 0
  %conv174 = zext i1 %cmp173 to i32
  %call175 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv174) #4
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %cleanup.sink.split, label %lor.lhs.false177

lor.lhs.false177:                                 ; preds = %lor.lhs.false171
  %call178 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 255, i64 noundef 1) #4
  %cmp179 = icmp ne i32 %call178, 0
  %conv180 = zext i1 %cmp179 to i32
  %call181 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv180) #4
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %cleanup.sink.split, label %lor.lhs.false183

lor.lhs.false183:                                 ; preds = %lor.lhs.false177
  %call184 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp185 = icmp ne i32 %call184, 0
  %conv186 = zext i1 %cmp185 to i32
  %call187 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv186) #4
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %cleanup.sink.split, label %lor.lhs.false189

lor.lhs.false189:                                 ; preds = %lor.lhs.false183
  %call190 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp191 = icmp ne i32 %call190, 0
  %conv192 = zext i1 %cmp191 to i32
  %call193 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv192) #4
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %cleanup.sink.split, label %lor.lhs.false195

lor.lhs.false195:                                 ; preds = %lor.lhs.false189
  %call196 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp197 = icmp ne i32 %call196, 0
  %conv198 = zext i1 %cmp197 to i32
  %call199 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv198) #4
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %cleanup.sink.split, label %lor.lhs.false201

lor.lhs.false201:                                 ; preds = %lor.lhs.false195
  %17 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data202 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %17, i64 0, i32 1
  %18 = load i8*, i8** %data202, align 8, !tbaa !7
  %19 = load i64, i64* %written, align 8, !tbaa !10
  %call203 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 297, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* noundef %18, i64 noundef %19, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @simple2, i64 0, i64 0), i64 noundef 2) #4
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end159, %lor.lhs.false165, %lor.lhs.false171, %lor.lhs.false177, %lor.lhs.false183, %lor.lhs.false189, %lor.lhs.false195, %lor.lhs.false201, %if.end117, %lor.lhs.false123, %lor.lhs.false129, %lor.lhs.false135, %lor.lhs.false141, %lor.lhs.false147, %lor.lhs.false153, %if.end88, %lor.lhs.false94, %lor.lhs.false100, %lor.lhs.false106, %lor.lhs.false112, %if.end, %lor.lhs.false40, %lor.lhs.false46, %lor.lhs.false52, %lor.lhs.false58, %lor.lhs.false64, %lor.lhs.false70, %lor.lhs.false76, %lor.lhs.false82, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false13, %lor.lhs.false19, %lor.lhs.false25, %lor.lhs.false31
  call fastcc void @cleanup(%struct.wpacket_st* noundef nonnull %pkt) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false201
  %retval.0 = phi i32 [ 1, %lor.lhs.false201 ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_WPACKET_allocate_bytes() #0 {
entry:
  %pkt = alloca %struct.wpacket_st, align 8
  %written = alloca i64, align 8
  %bytes = alloca i8*, align 8
  %0 = bitcast %struct.wpacket_st* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #5
  %1 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = bitcast i8** %bytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %3 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call = call i32 @WPACKET_init_len(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %3, i64 noundef 1) #4
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 2, i8** noundef nonnull %bytes) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 309, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.49, i64 0, i64 0), i32 noundef %conv4) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %bytes, align 8, !tbaa !3
  store i8 -2, i8* %4, align 1, !tbaa !13
  %5 = load i8*, i8** %bytes, align 8, !tbaa !3
  %arrayidx8 = getelementptr inbounds i8, i8* %5, i64 1
  store i8 -1, i8* %arrayidx8, align 1, !tbaa !13
  %call9 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp10 = icmp ne i32 %call9, 0
  %conv11 = zext i1 %cmp10 to i32
  %call12 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 313, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv11) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup.sink.split, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end
  %call15 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 314, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv17) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup.sink.split, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false14
  %6 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %6, i64 0, i32 1
  %7 = load i8*, i8** %data, align 8, !tbaa !7
  %8 = load i64, i64* %written, align 8, !tbaa !10
  %call21 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 315, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8* noundef %7, i64 noundef %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @alloc, i64 0, i64 0), i64 noundef 3) #4
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup.sink.split, label %if.end25

if.end25:                                         ; preds = %lor.lhs.false20
  %9 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call26 = call i32 @WPACKET_init_len(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %9, i64 noundef 1) #4
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 319, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv28) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup.sink.split, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.end25
  %call32 = call i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 2, i8** noundef nonnull %bytes, i64 noundef 1) #4
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 320, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.50, i64 0, i64 0), i32 noundef %conv34) #4
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup.sink.split, label %if.end39

if.end39:                                         ; preds = %lor.lhs.false31
  %10 = load i8*, i8** %bytes, align 8, !tbaa !3
  store i8 -2, i8* %10, align 1, !tbaa !13
  %11 = load i8*, i8** %bytes, align 8, !tbaa !3
  %arrayidx41 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 -1, i8* %arrayidx41, align 1, !tbaa !13
  %call42 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv44) #4
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cleanup.sink.split, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end39
  %call48 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp49 = icmp ne i32 %call48, 0
  %conv50 = zext i1 %cmp49 to i32
  %call51 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 325, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv50) #4
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %cleanup.sink.split, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false47
  %12 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data54 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %12, i64 0, i32 1
  %13 = load i8*, i8** %data54, align 8, !tbaa !7
  %14 = load i64, i64* %written, align 8, !tbaa !10
  %call55 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 326, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i8* noundef %13, i64 noundef %14, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @submem, i64 0, i64 0), i64 noundef 4) #4
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end39, %lor.lhs.false47, %lor.lhs.false53, %if.end25, %lor.lhs.false31, %if.end, %lor.lhs.false14, %lor.lhs.false20, %entry, %lor.lhs.false
  call fastcc void @cleanup(%struct.wpacket_st* noundef nonnull %pkt) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false53
  %retval.0 = phi i32 [ 1, %lor.lhs.false53 ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_WPACKET_memcpy() #0 {
entry:
  %pkt = alloca %struct.wpacket_st, align 8
  %written = alloca i64, align 8
  %bytes = alloca i16, align 2
  %0 = bitcast %struct.wpacket_st* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #5
  %1 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = bitcast i16* %bytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %2) #5
  store i16 -2, i16* %bytes, align 2
  %3 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call = call i32 @WPACKET_init_len(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %3, i64 noundef 1) #4
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef nonnull %pkt, i8* noundef nonnull %2, i64 noundef 2) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv4) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 340, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv10) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup.sink.split, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %call14 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 341, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv16) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup.sink.split, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %4 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %4, i64 0, i32 1
  %5 = load i8*, i8** %data, align 8, !tbaa !7
  %6 = load i64, i64* %written, align 8, !tbaa !10
  %call20 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 342, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8* noundef %5, i64 noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @alloc, i64 0, i64 0), i64 noundef 3) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false19
  %7 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %call23 = call i32 @WPACKET_init_len(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %7, i64 noundef 1) #4
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv25) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup.sink.split, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end
  %call30 = call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef nonnull %pkt, i8* noundef nonnull %2, i64 noundef 2, i64 noundef 1) #4
  %cmp31 = icmp ne i32 %call30, 0
  %conv32 = zext i1 %cmp31 to i32
  %call33 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 347, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv32) #4
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup.sink.split, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false28
  %call36 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 348, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv38) #4
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %cleanup.sink.split, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false35
  %call42 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %written) #4
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 349, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv44) #4
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cleanup.sink.split, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false41
  %8 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  %data48 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %8, i64 0, i32 1
  %9 = load i8*, i8** %data48, align 8, !tbaa !7
  %10 = load i64, i64* %written, align 8, !tbaa !10
  %call49 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 350, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @submem, i64 0, i64 0), i64 noundef 4) #4
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end, %lor.lhs.false28, %lor.lhs.false35, %lor.lhs.false41, %lor.lhs.false47, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false13, %lor.lhs.false19
  call fastcc void @cleanup(%struct.wpacket_st* noundef nonnull %pkt) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false47
  %retval.0 = phi i32 [ 1, %lor.lhs.false47 ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_WPACKET_init_der() #0 {
entry:
  %pkt = alloca %struct.wpacket_st, align 8
  %sbuf = alloca [1024 x i8], align 16
  %testdata = alloca i32, align 4
  %testdata2 = alloca [259 x i8], align 16
  %written = alloca [2 x i64], align 16
  %size1 = alloca i64, align 8
  %size2 = alloca i64, align 8
  %0 = bitcast %struct.wpacket_st* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #5
  %1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #5
  %2 = bitcast i32* %testdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  store i32 50462976, i32* %testdata, align 4
  %3 = getelementptr inbounds [259 x i8], [259 x i8]* %testdata2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 259, i8* nonnull %3) #5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(259) %3, i8 0, i64 259, i1 false)
  store i8 -126, i8* %3, align 16
  %4 = getelementptr inbounds [259 x i8], [259 x i8]* %testdata2, i64 0, i64 1
  store i8 1, i8* %4, align 1
  %5 = bitcast [2 x i64]* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #5
  %6 = bitcast i64* %size1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5
  %7 = bitcast i64* %size2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5
  %call = call i32 @WPACKET_init_der(%struct.wpacket_st* noundef nonnull %pkt, i8* noundef nonnull %1, i64 noundef 1024) #4
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 16776957, i64 noundef 3) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv4) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 371, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv10) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %call15 = call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef nonnull %pkt, i8* noundef nonnull %2, i64 noundef 4) #4
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 372, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.56, i64 0, i64 0), i32 noundef %conv17) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false13
  %call21 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 373, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv23) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false20
  %call27 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 252, i64 noundef 1) #4
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 374, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv29) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false26
  %call33 = call i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 376, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv35) #4
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false32
  %call39 = call i32 @WPACKET_set_flags(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef 2) #4
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 377, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv41) #4
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false38
  %call45 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %size1) #4
  %cmp46 = icmp ne i32 %call45, 0
  %conv47 = zext i1 %cmp46 to i32
  %call48 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 378, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv47) #4
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false44
  %call51 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp52 = icmp ne i32 %call51, 0
  %conv53 = zext i1 %cmp52 to i32
  %call54 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 379, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv53) #4
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false50
  %call57 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %size2) #4
  %cmp58 = icmp ne i32 %call57, 0
  %conv59 = zext i1 %cmp58 to i32
  %call60 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 380, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv59) #4
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false56
  %8 = load i64, i64* %size1, align 8, !tbaa !10
  %9 = load i64, i64* %size2, align 8, !tbaa !10
  %call63 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 381, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i64 noundef %8, i64 noundef %9) #4
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %call66 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp67 = icmp ne i32 %call66, 0
  %conv68 = zext i1 %cmp67 to i32
  %call69 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 382, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv68) #4
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %lor.lhs.false65
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %written, i64 0, i64 0
  %call72 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %arrayidx) #4
  %cmp73 = icmp ne i32 %call72, 0
  %conv74 = zext i1 %cmp73 to i32
  %call75 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 383, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i64 0, i64 0), i32 noundef %conv74) #4
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false71
  %call78 = call i8* @WPACKET_get_curr(%struct.wpacket_st* noundef nonnull %pkt) #4
  %10 = load i64, i64* %arrayidx, align 16, !tbaa !10
  %call80 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 385, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i64 0, i64 0), i8* noundef %call78, i64 noundef %10, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @simpleder, i64 0, i64 0), i64 noundef 9) #4
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false77, %lor.lhs.false71, %lor.lhs.false65, %lor.lhs.false62, %lor.lhs.false56, %lor.lhs.false50, %lor.lhs.false44, %lor.lhs.false38, %lor.lhs.false32, %lor.lhs.false26, %lor.lhs.false20, %lor.lhs.false13, %lor.lhs.false7, %lor.lhs.false, %entry
  call fastcc void @cleanup(%struct.wpacket_st* noundef nonnull %pkt) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false77
  %arrayidx83 = getelementptr inbounds [259 x i8], [259 x i8]* %testdata2, i64 0, i64 3
  %call84 = call i32 @RAND_bytes(i8* noundef nonnull %arrayidx83, i32 noundef 256) #4
  %cmp85 = icmp ne i32 %call84, 0
  %conv86 = zext i1 %cmp85 to i32
  %call87 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 389, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv86) #4
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %cleanup, label %for.body

for.cond:                                         ; preds = %lor.lhs.false136
  br i1 %cmp93, label %for.body, label %for.end, !llvm.loop !14

for.body:                                         ; preds = %if.end, %for.cond
  %cmp93 = phi i1 [ false, %for.cond ], [ true, %if.end ]
  %indvars.iv = phi i64 [ 1, %for.cond ], [ 0, %if.end ]
  br i1 %cmp93, label %if.then95, label %if.else

if.then95:                                        ; preds = %for.body
  %call96 = call i32 @WPACKET_init_null_der(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp97 = icmp ne i32 %call96, 0
  %conv98 = zext i1 %cmp97 to i32
  %call99 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 399, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.67, i64 0, i64 0), i32 noundef %conv98) #4
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %cleanup, label %if.end111

if.else:                                          ; preds = %for.body
  %call104 = call i32 @WPACKET_init_der(%struct.wpacket_st* noundef nonnull %pkt, i8* noundef nonnull %1, i64 noundef 1024) #4
  %cmp105 = icmp ne i32 %call104, 0
  %conv106 = zext i1 %cmp105 to i32
  %call107 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 402, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv106) #4
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %cleanup, label %if.end111

if.end111:                                        ; preds = %if.else, %if.then95
  %call112 = call i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp113 = icmp ne i32 %call112, 0
  %conv114 = zext i1 %cmp113 to i32
  %call115 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 405, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv114) #4
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then143, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %if.end111
  %call119 = call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef nonnull %pkt, i8* noundef nonnull %arrayidx83, i64 noundef 256) #4
  %cmp120 = icmp ne i32 %call119, 0
  %conv121 = zext i1 %cmp120 to i32
  %call122 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 407, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.68, i64 0, i64 0), i32 noundef %conv121) #4
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then143, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %lor.lhs.false117
  %call125 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp126 = icmp ne i32 %call125, 0
  %conv127 = zext i1 %cmp126 to i32
  %call128 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 408, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv127) #4
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.then143, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %lor.lhs.false124
  %call131 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #4
  %cmp132 = icmp ne i32 %call131, 0
  %conv133 = zext i1 %cmp132 to i32
  %call134 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 409, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv133) #4
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.then143, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %lor.lhs.false130
  %arrayidx137 = getelementptr inbounds [2 x i64], [2 x i64]* %written, i64 0, i64 %indvars.iv
  %call138 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %arrayidx137) #4
  %cmp139 = icmp ne i32 %call138, 0
  %conv140 = zext i1 %cmp139 to i32
  %call141 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 410, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv140) #4
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.then143, label %for.cond

if.then143:                                       ; preds = %lor.lhs.false136, %lor.lhs.false130, %lor.lhs.false124, %lor.lhs.false117, %if.end111
  call fastcc void @cleanup(%struct.wpacket_st* noundef nonnull %pkt) #6
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %arrayidx, align 16, !tbaa !10
  %arrayidx147 = getelementptr inbounds [2 x i64], [2 x i64]* %written, i64 0, i64 1
  %12 = load i64, i64* %arrayidx147, align 8, !tbaa !10
  %call148 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 419, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i64 0, i64 0), i64 noundef %11, i64 noundef %12) #4
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %cleanup, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %for.end
  %call151 = call i8* @WPACKET_get_curr(%struct.wpacket_st* noundef nonnull %pkt) #4
  %13 = load i64, i64* %arrayidx147, align 8, !tbaa !10
  %call154 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 421, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0), i8* noundef %call151, i64 noundef %13, i8* noundef nonnull %3, i64 noundef 259) #4
  %tobool155.not = icmp ne i32 %call154, 0
  %spec.select = zext i1 %tobool155.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then95, %lor.lhs.false150, %for.end, %if.end, %if.then143, %if.then
  %retval.0 = phi i32 [ 0, %if.then143 ], [ 0, %if.then ], [ 0, %if.end ], [ 0, %for.end ], [ %spec.select, %lor.lhs.false150 ], [ 0, %if.then95 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 259, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  %0 = load %struct.buf_mem_st*, %struct.buf_mem_st** @buf, align 8, !tbaa !3
  tail call void @BUF_MEM_free(%struct.buf_mem_st* noundef %0) #4
  ret void
}

declare dso_local void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_init(%struct.wpacket_st* noundef, %struct.buf_mem_st* noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_close(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_finish(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cleanup(%struct.wpacket_st* noundef %pkt) unnamed_addr #0 {
entry:
  tail call void @WPACKET_cleanup(%struct.wpacket_st* noundef %pkt) #4
  ret void
}

declare dso_local i32 @WPACKET_init_len(%struct.wpacket_st* noundef, %struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @WPACKET_cleanup(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_set_max_size(%struct.wpacket_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_get_length(%struct.wpacket_st* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_fill_lengths(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_set_flags(%struct.wpacket_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef, i64 noundef, i8** noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* noundef, i64 noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_memcpy(%struct.wpacket_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @WPACKET_init_der(%struct.wpacket_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i8* @WPACKET_get_curr(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @WPACKET_init_null_der(%struct.wpacket_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 8}
!8 = !{!"buf_mem_st", !9, i64 0, !4, i64 8, !9, i64 16, !9, i64 24}
!9 = !{!"long", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!5, !5, i64 0}
!14 = distinct !{!14, !12}

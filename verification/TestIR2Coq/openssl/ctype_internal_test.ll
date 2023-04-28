; ModuleID = 'test/ctype_internal_test.c'
source_filename = "test/ctype_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"test_ctype_chars\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"test_ctype_toupper\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"test_ctype_tolower\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"test_ctype_eof\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"test/ctype_internal_test.c\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"isascii((unsigned char)n) != 0\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ossl_isascii(n) != 0\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"isalpha(n) != 0\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"ossl_isalpha(n) != 0\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"isalnum(n) != 0\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"ossl_isalnum(n) != 0\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"isblank(n) != 0\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"ossl_isblank(n) != 0\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"iscntrl(n) != 0\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"ossl_iscntrl(n) != 0\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"isdigit(n) != 0\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"ossl_isdigit(n) != 0\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"isgraph(n) != 0\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"ossl_isgraph(n) != 0\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"islower(n) != 0\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"ossl_islower(n) != 0\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"isprint(n) != 0\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"ossl_isprint(n) != 0\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"ispunct(n) != 0\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"ossl_ispunct(n) != 0\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"isspace(n) != 0\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"ossl_isspace(n) != 0\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"isupper(n) != 0\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"ossl_isupper(n) != 0\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"isxdigit(n) != 0\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"ossl_isxdigit(n) != 0\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"ossl_toupper(case_change[n].l)\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"case_change[n].u\00", align 1
@case_change = internal unnamed_addr constant [8 x %struct.anon] [%struct.anon { i32 65, i32 97 }, %struct.anon { i32 88, i32 120 }, %struct.anon { i32 90, i32 122 }, %struct.anon { i32 48, i32 48 }, %struct.anon { i32 37, i32 37 }, %struct.anon { i32 126, i32 126 }, %struct.anon zeroinitializer, %struct.anon { i32 -1, i32 -1 }], align 16
@.str.33 = private unnamed_addr constant [31 x i8] c"ossl_toupper(case_change[n].u)\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"ossl_tolower(case_change[n].u)\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"case_change[n].l\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"ossl_tolower(case_change[n].l)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_ctype_chars, i32 noundef 256, i32 noundef 1) #3
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef nonnull @test_ctype_toupper, i32 noundef 8, i32 noundef 1) #3
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 (i32)* noundef nonnull @test_ctype_tolower, i32 noundef 8, i32 noundef 1) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_ctype_eof) #3
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ctype_chars(i32 noundef %n) #0 {
entry:
  %and = lshr i32 %n, 7
  %and.lobit = and i32 %and, 1
  %0 = xor i32 %and.lobit, 1
  %cmp6 = icmp ult i32 %n, 128
  %conv7 = zext i1 %cmp6 to i32
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef %0, i32 noundef %conv7) #3
  %tobool.not = icmp eq i32 %call, 0
  %cmp6.not = xor i1 %cmp6, true
  %brmerge = or i1 %tobool.not, %cmp6.not
  %not.tobool.not = xor i1 %tobool.not, true
  br i1 %brmerge, label %return, label %if.end14

if.end14:                                         ; preds = %entry
  %call15 = tail call i16** @__ctype_b_loc() #4
  %1 = load i16*, i16** %call15, align 8, !tbaa !3
  %idxprom = sext i32 %n to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !7
  %3 = lshr i16 %2, 10
  %.lobit = and i16 %3, 1
  %4 = zext i16 %.lobit to i32
  %call20 = tail call i32 @ossl_ctype_check(i32 noundef %n, i32 noundef 3) #3
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef %4, i32 noundef %conv22) #3
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %5 = load i16*, i16** %call15, align 8, !tbaa !3
  %arrayidx27 = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx27, align 2, !tbaa !7
  %7 = lshr i16 %6, 3
  %.lobit192 = and i16 %7, 1
  %8 = zext i16 %.lobit192 to i32
  %call32 = tail call i32 @ossl_ctype_check(i32 noundef %n, i32 noundef 7) #3
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 noundef %8, i32 noundef %conv34) #3
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %return, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true
  %9 = load i16*, i16** %call15, align 8, !tbaa !3
  %arrayidx40 = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx40, align 2, !tbaa !7
  %11 = and i16 %10, 1
  %12 = zext i16 %11 to i32
  %call45 = tail call i32 @ossl_ctype_check(i32 noundef %n, i32 noundef 32) #3
  %cmp46 = icmp ne i32 %call45, 0
  %conv47 = zext i1 %cmp46 to i32
  %call48 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %12, i32 noundef %conv47) #3
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %return, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %land.lhs.true37
  %13 = load i16*, i16** %call15, align 8, !tbaa !3
  %arrayidx53 = getelementptr inbounds i16, i16* %13, i64 %idxprom
  %14 = load i16, i16* %arrayidx53, align 2, !tbaa !7
  %15 = lshr i16 %14, 1
  %.lobit193 = and i16 %15, 1
  %16 = zext i16 %.lobit193 to i32
  %call58 = tail call i32 @ossl_ctype_check(i32 noundef %n, i32 noundef 64) #3
  %cmp59 = icmp ne i32 %call58, 0
  %conv60 = zext i1 %cmp59 to i32
  %call61 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef %16, i32 noundef %conv60) #3
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %return, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %land.lhs.true50
  %17 = load i16*, i16** %call15, align 8, !tbaa !3
  %arrayidx66 = getelementptr inbounds i16, i16* %17, i64 %idxprom
  %18 = load i16, i16* %arrayidx66, align 2, !tbaa !7
  %19 = lshr i16 %18, 11
  %.lobit194 = and i16 %19, 1
  %20 = zext i16 %.lobit194 to i32
  %call71 = tail call i32 @ossl_ctype_check(i32 noundef %n, i32 noundef 4) #3
  %cmp72 = icmp ne i32 %call71, 0
  %conv73 = zext i1 %cmp72 to i32
  %call74 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 noundef %20, i32 noundef %conv73) #3
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %return, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %land.lhs.true63
  %21 = load i16*, i16** %call15, align 8, !tbaa !3
  %arrayidx79 = getelementptr inbounds i16, i16* %21, i64 %idxprom
  %22 = load i16, i16* %arrayidx79, align 2, !tbaa !7
  %.lobit195 = lshr i16 %22, 15
  %23 = zext i16 %.lobit195 to i32
  %call84 = tail call i32 @ossl_ctype_check(i32 noundef %n, i32 noundef 128) #3
  %cmp85 = icmp ne i32 %call84, 0
  %conv86 = zext i1 %cmp85 to i32
  %call87 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 noundef %23, i32 noundef %conv86) #3
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %return, label %land.lhs.true89

land.lhs.true89:                                  ; preds = %land.lhs.true76
  %24 = load i16*, i16** %call15, align 8, !tbaa !3
  %arrayidx92 = getelementptr inbounds i16, i16* %24, i64 %idxprom
  %25 = load i16, i16* %arrayidx92, align 2, !tbaa !7
  %26 = lshr i16 %25, 9
  %.lobit196 = and i16 %26, 1
  %27 = zext i16 %.lobit196 to i32
  %call97 = tail call i32 @ossl_ctype_check(i32 noundef %n, i32 noundef 1) #3
  %cmp98 = icmp ne i32 %call97, 0
  %conv99 = zext i1 %cmp98 to i32
  %call100 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef %27, i32 noundef %conv99) #3
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %return, label %land.lhs.true102

land.lhs.true102:                                 ; preds = %land.lhs.true89
  %28 = load i16*, i16** %call15, align 8, !tbaa !3
  %arrayidx105 = getelementptr inbounds i16, i16* %28, i64 %idxprom
  %29 = load i16, i16* %arrayidx105, align 2, !tbaa !7
  %30 = lshr i16 %29, 14
  %.lobit197 = and i16 %30, 1
  %31 = zext i16 %.lobit197 to i32
  %call110 = tail call i32 @ossl_ctype_check(i32 noundef %n, i32 noundef 256) #3
  %cmp111 = icmp ne i32 %call110, 0
  %conv112 = zext i1 %cmp111 to i32
  %call113 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i32 noundef %31, i32 noundef %conv112) #3
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %return, label %land.lhs.true115

land.lhs.true115:                                 ; preds = %land.lhs.true102
  %32 = load i16*, i16** %call15, align 8, !tbaa !3
  %arrayidx118 = getelementptr inbounds i16, i16* %32, i64 %idxprom
  %33 = load i16, i16* %arrayidx118, align 2, !tbaa !7
  %34 = lshr i16 %33, 2
  %.lobit198 = and i16 %34, 1
  %35 = zext i16 %.lobit198 to i32
  %call123 = tail call i32 @ossl_ctype_check(i32 noundef %n, i32 noundef 512) #3
  %cmp124 = icmp ne i32 %call123, 0
  %conv125 = zext i1 %cmp124 to i32
  %call126 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 noundef %35, i32 noundef %conv125) #3
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %return, label %land.lhs.true128

land.lhs.true128:                                 ; preds = %land.lhs.true115
  %36 = load i16*, i16** %call15, align 8, !tbaa !3
  %arrayidx131 = getelementptr inbounds i16, i16* %36, i64 %idxprom
  %37 = load i16, i16* %arrayidx131, align 2, !tbaa !7
  %38 = lshr i16 %37, 13
  %.lobit199 = and i16 %38, 1
  %39 = zext i16 %.lobit199 to i32
  %call136 = tail call i32 @ossl_ctype_check(i32 noundef %n, i32 noundef 8) #3
  %cmp137 = icmp ne i32 %call136, 0
  %conv138 = zext i1 %cmp137 to i32
  %call139 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 noundef %39, i32 noundef %conv138) #3
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %return, label %land.lhs.true141

land.lhs.true141:                                 ; preds = %land.lhs.true128
  %40 = load i16*, i16** %call15, align 8, !tbaa !3
  %arrayidx144 = getelementptr inbounds i16, i16* %40, i64 %idxprom
  %41 = load i16, i16* %arrayidx144, align 2, !tbaa !7
  %42 = lshr i16 %41, 8
  %.lobit200 = and i16 %42, 1
  %43 = zext i16 %.lobit200 to i32
  %call149 = tail call i32 @ossl_ctype_check(i32 noundef %n, i32 noundef 2) #3
  %cmp150 = icmp ne i32 %call149, 0
  %conv151 = zext i1 %cmp150 to i32
  %call152 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i32 noundef %43, i32 noundef %conv151) #3
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true141
  %44 = load i16*, i16** %call15, align 8, !tbaa !3
  %arrayidx156 = getelementptr inbounds i16, i16* %44, i64 %idxprom
  %45 = load i16, i16* %arrayidx156, align 2, !tbaa !7
  %46 = lshr i16 %45, 12
  %.lobit201 = and i16 %46, 1
  %47 = zext i16 %.lobit201 to i32
  %call161 = tail call i32 @ossl_ctype_check(i32 noundef %n, i32 noundef 16) #3
  %cmp162 = icmp ne i32 %call161, 0
  %conv163 = zext i1 %cmp162 to i32
  %call164 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i32 noundef %47, i32 noundef %conv163) #3
  %tobool165 = icmp ne i32 %call164, 0
  br label %return

return:                                           ; preds = %entry, %if.end14, %land.lhs.true, %land.lhs.true37, %land.lhs.true50, %land.lhs.true63, %land.lhs.true76, %land.lhs.true89, %land.lhs.true102, %land.lhs.true115, %land.lhs.true128, %land.lhs.true141, %land.rhs
  %retval.0.shrunk = phi i1 [ %not.tobool.not, %entry ], [ false, %land.lhs.true141 ], [ false, %land.lhs.true128 ], [ false, %land.lhs.true115 ], [ false, %land.lhs.true102 ], [ false, %land.lhs.true89 ], [ false, %land.lhs.true76 ], [ false, %land.lhs.true63 ], [ false, %land.lhs.true50 ], [ false, %land.lhs.true37 ], [ false, %land.lhs.true ], [ false, %if.end14 ], [ %tobool165, %land.rhs ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ctype_toupper(i32 noundef %n) #0 {
entry:
  %idxprom = sext i32 %n to i64
  %l = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @case_change, i64 0, i64 %idxprom, i32 1
  %0 = load i32, i32* %l, align 4, !tbaa !9
  %call = tail call i32 @ossl_toupper(i32 noundef %0) #3
  %u = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @case_change, i64 0, i64 %idxprom, i32 0
  %1 = load i32, i32* %u, align 8, !tbaa !12
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i32 noundef %call, i32 noundef %1) #3
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call7 = tail call i32 @ossl_toupper(i32 noundef %1) #3
  %call11 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i32 noundef %call7, i32 noundef %1) #3
  %tobool12 = icmp ne i32 %call11, 0
  %phi.cast = zext i1 %tobool12 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ctype_tolower(i32 noundef %n) #0 {
entry:
  %idxprom = sext i32 %n to i64
  %u = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @case_change, i64 0, i64 %idxprom, i32 0
  %0 = load i32, i32* %u, align 8, !tbaa !12
  %call = tail call i32 @ossl_tolower(i32 noundef %0) #3
  %l = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @case_change, i64 0, i64 %idxprom, i32 1
  %1 = load i32, i32* %l, align 4, !tbaa !9
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i32 noundef %call, i32 noundef %1) #3
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call7 = tail call i32 @ossl_tolower(i32 noundef %1) #3
  %call11 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i32 noundef %call7, i32 noundef %1) #3
  %tobool12 = icmp ne i32 %call11, 0
  %phi.cast = zext i1 %tobool12 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ctype_eof() #0 {
entry:
  %call = tail call i32 @test_ctype_chars(i32 noundef -1) #5
  ret i32 %call
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #2

declare dso_local i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_toupper(i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_tolower(i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

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
!8 = !{!"short", !5, i64 0}
!9 = !{!10, !11, i64 4}
!10 = !{!"", !11, i64 0, !11, i64 4}
!11 = !{!"int", !5, i64 0}
!12 = !{!10, !11, i64 0}

; ModuleID = 'sha1.c'
source_filename = "sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.CHAR64LONG16 = type { [16 x i32] }
%struct.SHA1_CTX = type { [5 x i32], [2 x i32], [64 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @SHA1Transform(i32* nocapture noundef %state, i8* noundef %buffer) local_unnamed_addr #0 !dbg !9 {
entry:
  %block = alloca [1 x %union.CHAR64LONG16], align 16
  call void @llvm.dbg.value(metadata i32* %state, metadata !21, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !22, metadata !DIExpression()), !dbg !43
  %0 = bitcast [1 x %union.CHAR64LONG16]* %block to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !44
  call void @llvm.dbg.declare(metadata [1 x %union.CHAR64LONG16]* %block, metadata !28, metadata !DIExpression()), !dbg !45
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %buffer, i64 noundef 64) #7, !dbg !46
  %1 = load i32, i32* %state, align 4, !dbg !47, !tbaa !48
  call void @llvm.dbg.value(metadata i32 %1, metadata !23, metadata !DIExpression()), !dbg !43
  %arrayidx1 = getelementptr inbounds i32, i32* %state, i64 1, !dbg !52
  %2 = load i32, i32* %arrayidx1, align 4, !dbg !52, !tbaa !48
  call void @llvm.dbg.value(metadata i32 %2, metadata !24, metadata !DIExpression()), !dbg !43
  %arrayidx2 = getelementptr inbounds i32, i32* %state, i64 2, !dbg !53
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !53, !tbaa !48
  call void @llvm.dbg.value(metadata i32 %3, metadata !25, metadata !DIExpression()), !dbg !43
  %arrayidx3 = getelementptr inbounds i32, i32* %state, i64 3, !dbg !54
  %4 = load i32, i32* %arrayidx3, align 4, !dbg !54, !tbaa !48
  call void @llvm.dbg.value(metadata i32 %4, metadata !26, metadata !DIExpression()), !dbg !43
  %arrayidx4 = getelementptr inbounds i32, i32* %state, i64 4, !dbg !55
  %5 = load i32, i32* %arrayidx4, align 4, !dbg !55, !tbaa !48
  call void @llvm.dbg.value(metadata i32 %5, metadata !27, metadata !DIExpression()), !dbg !43
  %xor = xor i32 %4, %3, !dbg !56
  %and = and i32 %xor, %2, !dbg !56
  %xor5 = xor i32 %and, %4, !dbg !56
  %arrayidx7 = getelementptr inbounds [1 x %union.CHAR64LONG16], [1 x %union.CHAR64LONG16]* %block, i64 0, i64 0, i32 0, i64 0, !dbg !56
  %6 = load i32, i32* %arrayidx7, align 16, !dbg !56, !tbaa !57
  %or22 = call i32 @llvm.bswap.i32(i32 %6), !dbg !56
  %or29 = call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 5), !dbg !56
  %add = add i32 %or29, 1518500249, !dbg !56
  %add26 = add i32 %add, %5, !dbg !56
  %add30 = add i32 %add26, %or22, !dbg !56
  %add31 = add i32 %add30, %xor5, !dbg !56
  call void @llvm.dbg.value(metadata i32 %add31, metadata !27, metadata !DIExpression()), !dbg !43
  %or34 = call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 30), !dbg !56
  call void @llvm.dbg.value(metadata i32 %or34, metadata !24, metadata !DIExpression()), !dbg !43
  %xor35 = xor i32 %or34, %3, !dbg !58
  %and36 = and i32 %xor35, %1, !dbg !58
  %xor37 = xor i32 %and36, %3, !dbg !58
  %arrayidx40 = getelementptr inbounds [1 x %union.CHAR64LONG16], [1 x %union.CHAR64LONG16]* %block, i64 0, i64 0, i32 0, i64 1, !dbg !58
  %7 = load i32, i32* %arrayidx40, align 4, !dbg !58, !tbaa !57
  %or58 = call i32 @llvm.bswap.i32(i32 %7), !dbg !58
  %or66 = call i32 @llvm.fshl.i32(i32 %add31, i32 %add31, i32 5), !dbg !58
  %add62 = add i32 %4, 1518500249, !dbg !58
  %add63 = add i32 %add62, %xor37, !dbg !58
  %add67 = add i32 %add63, %or58, !dbg !58
  %add68 = add i32 %add67, %or66, !dbg !58
  call void @llvm.dbg.value(metadata i32 %add68, metadata !26, metadata !DIExpression()), !dbg !43
  %or71 = call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 30), !dbg !58
  call void @llvm.dbg.value(metadata i32 %or71, metadata !23, metadata !DIExpression()), !dbg !43
  %xor72 = xor i32 %or34, %or71, !dbg !59
  %and73 = and i32 %add31, %xor72, !dbg !59
  %xor74 = xor i32 %and73, %or34, !dbg !59
  %arrayidx77 = getelementptr inbounds [1 x %union.CHAR64LONG16], [1 x %union.CHAR64LONG16]* %block, i64 0, i64 0, i32 0, i64 2, !dbg !59
  %8 = load i32, i32* %arrayidx77, align 8, !dbg !59, !tbaa !57
  %or95 = call i32 @llvm.bswap.i32(i32 %8), !dbg !59
  %or103 = call i32 @llvm.fshl.i32(i32 %add68, i32 %add68, i32 5), !dbg !59
  %add99 = add i32 %3, 1518500249, !dbg !59
  %add100 = add i32 %add99, %or95, !dbg !59
  %add104 = add i32 %add100, %xor74, !dbg !59
  %add105 = add i32 %add104, %or103, !dbg !59
  call void @llvm.dbg.value(metadata i32 %add105, metadata !25, metadata !DIExpression()), !dbg !43
  %or108 = call i32 @llvm.fshl.i32(i32 %add31, i32 %add31, i32 30), !dbg !59
  call void @llvm.dbg.value(metadata i32 %or108, metadata !27, metadata !DIExpression()), !dbg !43
  %xor109 = xor i32 %or108, %or71, !dbg !60
  %and110 = and i32 %add68, %xor109, !dbg !60
  %xor111 = xor i32 %and110, %or71, !dbg !60
  %arrayidx114 = getelementptr inbounds [1 x %union.CHAR64LONG16], [1 x %union.CHAR64LONG16]* %block, i64 0, i64 0, i32 0, i64 3, !dbg !60
  %9 = load i32, i32* %arrayidx114, align 4, !dbg !60, !tbaa !57
  %or132 = call i32 @llvm.bswap.i32(i32 %9), !dbg !60
  %or140 = call i32 @llvm.fshl.i32(i32 %add105, i32 %add105, i32 5), !dbg !60
  %add136 = add i32 %or34, 1518500249, !dbg !60
  %add137 = add i32 %add136, %or132, !dbg !60
  %add141 = add i32 %add137, %xor111, !dbg !60
  %add142 = add i32 %add141, %or140, !dbg !60
  call void @llvm.dbg.value(metadata i32 %add142, metadata !24, metadata !DIExpression()), !dbg !43
  %or145 = call i32 @llvm.fshl.i32(i32 %add68, i32 %add68, i32 30), !dbg !60
  call void @llvm.dbg.value(metadata i32 %or145, metadata !26, metadata !DIExpression()), !dbg !43
  %xor146 = xor i32 %or145, %or108, !dbg !61
  %and147 = and i32 %add105, %xor146, !dbg !61
  %xor148 = xor i32 %and147, %or108, !dbg !61
  %arrayidx151 = getelementptr inbounds [1 x %union.CHAR64LONG16], [1 x %union.CHAR64LONG16]* %block, i64 0, i64 0, i32 0, i64 4, !dbg !61
  %10 = load i32, i32* %arrayidx151, align 16, !dbg !61, !tbaa !57
  %or169 = call i32 @llvm.bswap.i32(i32 %10), !dbg !61
  %or177 = call i32 @llvm.fshl.i32(i32 %add142, i32 %add142, i32 5), !dbg !61
  %add173 = add i32 %or71, 1518500249, !dbg !61
  %add174 = add i32 %add173, %or169, !dbg !61
  %add178 = add i32 %add174, %xor148, !dbg !61
  %add179 = add i32 %add178, %or177, !dbg !61
  call void @llvm.dbg.value(metadata i32 %add179, metadata !23, metadata !DIExpression()), !dbg !43
  %or182 = call i32 @llvm.fshl.i32(i32 %add105, i32 %add105, i32 30), !dbg !61
  call void @llvm.dbg.value(metadata i32 %or182, metadata !25, metadata !DIExpression()), !dbg !43
  %xor183 = xor i32 %or182, %or145, !dbg !62
  %and184 = and i32 %add142, %xor183, !dbg !62
  %xor185 = xor i32 %and184, %or145, !dbg !62
  %arrayidx188 = getelementptr inbounds [1 x %union.CHAR64LONG16], [1 x %union.CHAR64LONG16]* %block, i64 0, i64 0, i32 0, i64 5, !dbg !62
  %11 = load i32, i32* %arrayidx188, align 4, !dbg !62, !tbaa !57
  %or206 = call i32 @llvm.bswap.i32(i32 %11), !dbg !62
  %or214 = call i32 @llvm.fshl.i32(i32 %add179, i32 %add179, i32 5), !dbg !62
  %add210 = add i32 %or108, 1518500249, !dbg !62
  %add211 = add i32 %add210, %or206, !dbg !62
  %add215 = add i32 %add211, %xor185, !dbg !62
  %add216 = add i32 %add215, %or214, !dbg !62
  call void @llvm.dbg.value(metadata i32 %add216, metadata !27, metadata !DIExpression()), !dbg !43
  %or219 = call i32 @llvm.fshl.i32(i32 %add142, i32 %add142, i32 30), !dbg !62
  call void @llvm.dbg.value(metadata i32 %or219, metadata !24, metadata !DIExpression()), !dbg !43
  %xor220 = xor i32 %or219, %or182, !dbg !63
  %and221 = and i32 %add179, %xor220, !dbg !63
  %xor222 = xor i32 %and221, %or182, !dbg !63
  %arrayidx225 = getelementptr inbounds [1 x %union.CHAR64LONG16], [1 x %union.CHAR64LONG16]* %block, i64 0, i64 0, i32 0, i64 6, !dbg !63
  %12 = load i32, i32* %arrayidx225, align 8, !dbg !63, !tbaa !57
  %or243 = call i32 @llvm.bswap.i32(i32 %12), !dbg !63
  %or251 = call i32 @llvm.fshl.i32(i32 %add216, i32 %add216, i32 5), !dbg !63
  %add247 = add i32 %or145, 1518500249, !dbg !63
  %add248 = add i32 %add247, %or243, !dbg !63
  %add252 = add i32 %add248, %xor222, !dbg !63
  %add253 = add i32 %add252, %or251, !dbg !63
  call void @llvm.dbg.value(metadata i32 %add253, metadata !26, metadata !DIExpression()), !dbg !43
  %or256 = call i32 @llvm.fshl.i32(i32 %add179, i32 %add179, i32 30), !dbg !63
  call void @llvm.dbg.value(metadata i32 %or256, metadata !23, metadata !DIExpression()), !dbg !43
  %xor257 = xor i32 %or256, %or219, !dbg !64
  %and258 = and i32 %add216, %xor257, !dbg !64
  %xor259 = xor i32 %and258, %or219, !dbg !64
  %arrayidx262 = getelementptr inbounds [1 x %union.CHAR64LONG16], [1 x %union.CHAR64LONG16]* %block, i64 0, i64 0, i32 0, i64 7, !dbg !64
  %13 = load i32, i32* %arrayidx262, align 4, !dbg !64, !tbaa !57
  %or280 = call i32 @llvm.bswap.i32(i32 %13), !dbg !64
  %or288 = call i32 @llvm.fshl.i32(i32 %add253, i32 %add253, i32 5), !dbg !64
  %add284 = add i32 %or182, 1518500249, !dbg !64
  %add285 = add i32 %add284, %or280, !dbg !64
  %add289 = add i32 %add285, %xor259, !dbg !64
  %add290 = add i32 %add289, %or288, !dbg !64
  call void @llvm.dbg.value(metadata i32 %add290, metadata !25, metadata !DIExpression()), !dbg !43
  %or293 = call i32 @llvm.fshl.i32(i32 %add216, i32 %add216, i32 30), !dbg !64
  call void @llvm.dbg.value(metadata i32 %or293, metadata !27, metadata !DIExpression()), !dbg !43
  %xor294 = xor i32 %or293, %or256, !dbg !65
  %and295 = and i32 %add253, %xor294, !dbg !65
  %xor296 = xor i32 %and295, %or256, !dbg !65
  %arrayidx299 = getelementptr inbounds [1 x %union.CHAR64LONG16], [1 x %union.CHAR64LONG16]* %block, i64 0, i64 0, i32 0, i64 8, !dbg !65
  %14 = load i32, i32* %arrayidx299, align 16, !dbg !65, !tbaa !57
  %or317 = call i32 @llvm.bswap.i32(i32 %14), !dbg !65
  %or325 = call i32 @llvm.fshl.i32(i32 %add290, i32 %add290, i32 5), !dbg !65
  %add321 = add i32 %or219, 1518500249, !dbg !65
  %add322 = add i32 %add321, %or317, !dbg !65
  %add326 = add i32 %add322, %xor296, !dbg !65
  %add327 = add i32 %add326, %or325, !dbg !65
  call void @llvm.dbg.value(metadata i32 %add327, metadata !24, metadata !DIExpression()), !dbg !43
  %or330 = call i32 @llvm.fshl.i32(i32 %add253, i32 %add253, i32 30), !dbg !65
  call void @llvm.dbg.value(metadata i32 %or330, metadata !26, metadata !DIExpression()), !dbg !43
  %xor331 = xor i32 %or330, %or293, !dbg !66
  %and332 = and i32 %add290, %xor331, !dbg !66
  %xor333 = xor i32 %and332, %or293, !dbg !66
  %arrayidx336 = getelementptr inbounds [1 x %union.CHAR64LONG16], [1 x %union.CHAR64LONG16]* %block, i64 0, i64 0, i32 0, i64 9, !dbg !66
  %15 = load i32, i32* %arrayidx336, align 4, !dbg !66, !tbaa !57
  %or354 = call i32 @llvm.bswap.i32(i32 %15), !dbg !66
  %or362 = call i32 @llvm.fshl.i32(i32 %add327, i32 %add327, i32 5), !dbg !66
  %add358 = add i32 %or256, 1518500249, !dbg !66
  %add359 = add i32 %add358, %or354, !dbg !66
  %add363 = add i32 %add359, %xor333, !dbg !66
  %add364 = add i32 %add363, %or362, !dbg !66
  call void @llvm.dbg.value(metadata i32 %add364, metadata !23, metadata !DIExpression()), !dbg !43
  %or367 = call i32 @llvm.fshl.i32(i32 %add290, i32 %add290, i32 30), !dbg !66
  call void @llvm.dbg.value(metadata i32 %or367, metadata !25, metadata !DIExpression()), !dbg !43
  %xor368 = xor i32 %or367, %or330, !dbg !67
  %and369 = and i32 %add327, %xor368, !dbg !67
  %xor370 = xor i32 %and369, %or330, !dbg !67
  %arrayidx373 = getelementptr inbounds [1 x %union.CHAR64LONG16], [1 x %union.CHAR64LONG16]* %block, i64 0, i64 0, i32 0, i64 10, !dbg !67
  %16 = load i32, i32* %arrayidx373, align 8, !dbg !67, !tbaa !57
  %or391 = call i32 @llvm.bswap.i32(i32 %16), !dbg !67
  %or399 = call i32 @llvm.fshl.i32(i32 %add364, i32 %add364, i32 5), !dbg !67
  %add395 = add i32 %or391, 1518500249, !dbg !67
  %add396 = add i32 %add395, %or293, !dbg !67
  %add400 = add i32 %add396, %xor370, !dbg !67
  %add401 = add i32 %add400, %or399, !dbg !67
  call void @llvm.dbg.value(metadata i32 %add401, metadata !27, metadata !DIExpression()), !dbg !43
  %or404 = call i32 @llvm.fshl.i32(i32 %add327, i32 %add327, i32 30), !dbg !67
  call void @llvm.dbg.value(metadata i32 %or404, metadata !24, metadata !DIExpression()), !dbg !43
  %xor405 = xor i32 %or404, %or367, !dbg !68
  %and406 = and i32 %add364, %xor405, !dbg !68
  %xor407 = xor i32 %and406, %or367, !dbg !68
  %arrayidx410 = getelementptr inbounds [1 x %union.CHAR64LONG16], [1 x %union.CHAR64LONG16]* %block, i64 0, i64 0, i32 0, i64 11, !dbg !68
  %17 = load i32, i32* %arrayidx410, align 4, !dbg !68, !tbaa !57
  %or428 = call i32 @llvm.bswap.i32(i32 %17), !dbg !68
  %or436 = call i32 @llvm.fshl.i32(i32 %add401, i32 %add401, i32 5), !dbg !68
  %add432 = add i32 %or428, 1518500249, !dbg !68
  %add433 = add i32 %add432, %or330, !dbg !68
  %add437 = add i32 %add433, %xor407, !dbg !68
  %add438 = add i32 %add437, %or436, !dbg !68
  call void @llvm.dbg.value(metadata i32 %add438, metadata !26, metadata !DIExpression()), !dbg !43
  %or441 = call i32 @llvm.fshl.i32(i32 %add364, i32 %add364, i32 30), !dbg !68
  call void @llvm.dbg.value(metadata i32 %or441, metadata !23, metadata !DIExpression()), !dbg !43
  %xor442 = xor i32 %or441, %or404, !dbg !69
  %and443 = and i32 %add401, %xor442, !dbg !69
  %xor444 = xor i32 %and443, %or404, !dbg !69
  %arrayidx447 = getelementptr inbounds [1 x %union.CHAR64LONG16], [1 x %union.CHAR64LONG16]* %block, i64 0, i64 0, i32 0, i64 12, !dbg !69
  %18 = load i32, i32* %arrayidx447, align 16, !dbg !69, !tbaa !57
  %or465 = call i32 @llvm.bswap.i32(i32 %18), !dbg !69
  %or473 = call i32 @llvm.fshl.i32(i32 %add438, i32 %add438, i32 5), !dbg !69
  %add469 = add i32 %or465, 1518500249, !dbg !69
  %add470 = add i32 %add469, %or367, !dbg !69
  %add474 = add i32 %add470, %xor444, !dbg !69
  %add475 = add i32 %add474, %or473, !dbg !69
  call void @llvm.dbg.value(metadata i32 %add475, metadata !25, metadata !DIExpression()), !dbg !43
  %or478 = call i32 @llvm.fshl.i32(i32 %add401, i32 %add401, i32 30), !dbg !69
  call void @llvm.dbg.value(metadata i32 %or478, metadata !27, metadata !DIExpression()), !dbg !43
  %xor479 = xor i32 %or478, %or441, !dbg !70
  %and480 = and i32 %add438, %xor479, !dbg !70
  %xor481 = xor i32 %and480, %or441, !dbg !70
  %arrayidx484 = getelementptr inbounds [1 x %union.CHAR64LONG16], [1 x %union.CHAR64LONG16]* %block, i64 0, i64 0, i32 0, i64 13, !dbg !70
  %19 = load i32, i32* %arrayidx484, align 4, !dbg !70, !tbaa !57
  %or502 = call i32 @llvm.bswap.i32(i32 %19), !dbg !70
  %or510 = call i32 @llvm.fshl.i32(i32 %add475, i32 %add475, i32 5), !dbg !70
  %add506 = add i32 %or502, 1518500249, !dbg !70
  %add507 = add i32 %add506, %or404, !dbg !70
  %add511 = add i32 %add507, %xor481, !dbg !70
  %add512 = add i32 %add511, %or510, !dbg !70
  call void @llvm.dbg.value(metadata i32 %add512, metadata !24, metadata !DIExpression()), !dbg !43
  %or515 = call i32 @llvm.fshl.i32(i32 %add438, i32 %add438, i32 30), !dbg !70
  call void @llvm.dbg.value(metadata i32 %or515, metadata !26, metadata !DIExpression()), !dbg !43
  %xor516 = xor i32 %or515, %or478, !dbg !71
  %and517 = and i32 %add475, %xor516, !dbg !71
  %xor518 = xor i32 %and517, %or478, !dbg !71
  %arrayidx521 = getelementptr inbounds [1 x %union.CHAR64LONG16], [1 x %union.CHAR64LONG16]* %block, i64 0, i64 0, i32 0, i64 14, !dbg !71
  %20 = load i32, i32* %arrayidx521, align 8, !dbg !71, !tbaa !57
  %or539 = call i32 @llvm.bswap.i32(i32 %20), !dbg !71
  %or547 = call i32 @llvm.fshl.i32(i32 %add512, i32 %add512, i32 5), !dbg !71
  %add543 = add i32 %or539, 1518500249, !dbg !71
  %add544 = add i32 %add543, %or441, !dbg !71
  %add548 = add i32 %add544, %xor518, !dbg !71
  %add549 = add i32 %add548, %or547, !dbg !71
  call void @llvm.dbg.value(metadata i32 %add549, metadata !23, metadata !DIExpression()), !dbg !43
  %or552 = call i32 @llvm.fshl.i32(i32 %add475, i32 %add475, i32 30), !dbg !71
  call void @llvm.dbg.value(metadata i32 %or552, metadata !25, metadata !DIExpression()), !dbg !43
  %xor553 = xor i32 %or552, %or515, !dbg !72
  %and554 = and i32 %add512, %xor553, !dbg !72
  %xor555 = xor i32 %and554, %or515, !dbg !72
  %arrayidx558 = getelementptr inbounds [1 x %union.CHAR64LONG16], [1 x %union.CHAR64LONG16]* %block, i64 0, i64 0, i32 0, i64 15, !dbg !72
  %21 = load i32, i32* %arrayidx558, align 4, !dbg !72, !tbaa !57
  %or576 = call i32 @llvm.bswap.i32(i32 %21), !dbg !72
  %or584 = call i32 @llvm.fshl.i32(i32 %add549, i32 %add549, i32 5), !dbg !72
  %add580 = add i32 %or576, 1518500249, !dbg !72
  %add581 = add i32 %add580, %or478, !dbg !72
  %add585 = add i32 %add581, %xor555, !dbg !72
  %add586 = add i32 %add585, %or584, !dbg !72
  call void @llvm.dbg.value(metadata i32 %add586, metadata !27, metadata !DIExpression()), !dbg !43
  %or589 = call i32 @llvm.fshl.i32(i32 %add512, i32 %add512, i32 30), !dbg !72
  call void @llvm.dbg.value(metadata i32 %or589, metadata !24, metadata !DIExpression()), !dbg !43
  %xor590 = xor i32 %or589, %or552, !dbg !73
  %and591 = and i32 %add549, %xor590, !dbg !73
  %xor592 = xor i32 %and591, %or552, !dbg !73
  %xor599 = xor i32 %or95, %or22, !dbg !73
  %xor603 = xor i32 %xor599, %or317, !dbg !73
  %xor607 = xor i32 %xor603, %or502, !dbg !73
  %or625 = call i32 @llvm.fshl.i32(i32 %xor607, i32 %xor607, i32 1), !dbg !73
  %or633 = call i32 @llvm.fshl.i32(i32 %add586, i32 %add586, i32 5), !dbg !73
  %add629 = add i32 %or625, 1518500249, !dbg !73
  %add630 = add i32 %add629, %or515, !dbg !73
  %add634 = add i32 %add630, %xor592, !dbg !73
  %add635 = add i32 %add634, %or633, !dbg !73
  call void @llvm.dbg.value(metadata i32 %add635, metadata !26, metadata !DIExpression()), !dbg !43
  %or638 = call i32 @llvm.fshl.i32(i32 %add549, i32 %add549, i32 30), !dbg !73
  call void @llvm.dbg.value(metadata i32 %or638, metadata !23, metadata !DIExpression()), !dbg !43
  %xor639 = xor i32 %or638, %or589, !dbg !74
  %and640 = and i32 %add586, %xor639, !dbg !74
  %xor641 = xor i32 %and640, %or589, !dbg !74
  %xor648 = xor i32 %or132, %or58, !dbg !74
  %xor652 = xor i32 %xor648, %or354, !dbg !74
  %xor656 = xor i32 %xor652, %or539, !dbg !74
  %or674 = call i32 @llvm.fshl.i32(i32 %xor656, i32 %xor656, i32 1), !dbg !74
  %or682 = call i32 @llvm.fshl.i32(i32 %add635, i32 %add635, i32 5), !dbg !74
  %add678 = add i32 %or674, 1518500249, !dbg !74
  %add679 = add i32 %add678, %or552, !dbg !74
  %add683 = add i32 %add679, %xor641, !dbg !74
  %add684 = add i32 %add683, %or682, !dbg !74
  call void @llvm.dbg.value(metadata i32 %add684, metadata !25, metadata !DIExpression()), !dbg !43
  %or687 = call i32 @llvm.fshl.i32(i32 %add586, i32 %add586, i32 30), !dbg !74
  call void @llvm.dbg.value(metadata i32 %or687, metadata !27, metadata !DIExpression()), !dbg !43
  %xor688 = xor i32 %or687, %or638, !dbg !75
  %and689 = and i32 %add635, %xor688, !dbg !75
  %xor690 = xor i32 %and689, %or638, !dbg !75
  %xor697 = xor i32 %or169, %or95, !dbg !75
  %xor701 = xor i32 %xor697, %or391, !dbg !75
  %xor705 = xor i32 %xor701, %or576, !dbg !75
  %or723 = call i32 @llvm.fshl.i32(i32 %xor705, i32 %xor705, i32 1), !dbg !75
  %or731 = call i32 @llvm.fshl.i32(i32 %add684, i32 %add684, i32 5), !dbg !75
  %add727 = add i32 %or723, 1518500249, !dbg !75
  %add728 = add i32 %add727, %or589, !dbg !75
  %add732 = add i32 %add728, %xor690, !dbg !75
  %add733 = add i32 %add732, %or731, !dbg !75
  call void @llvm.dbg.value(metadata i32 %add733, metadata !24, metadata !DIExpression()), !dbg !43
  %or736 = call i32 @llvm.fshl.i32(i32 %add635, i32 %add635, i32 30), !dbg !75
  call void @llvm.dbg.value(metadata i32 %or736, metadata !26, metadata !DIExpression()), !dbg !43
  %xor737 = xor i32 %or736, %or687, !dbg !76
  %and738 = and i32 %add684, %xor737, !dbg !76
  %xor739 = xor i32 %and738, %or687, !dbg !76
  %xor746 = xor i32 %or206, %or132, !dbg !76
  %xor750 = xor i32 %xor746, %or428, !dbg !76
  %xor754 = xor i32 %xor750, %or625, !dbg !76
  %or772 = call i32 @llvm.fshl.i32(i32 %xor754, i32 %xor754, i32 1), !dbg !76
  %or780 = call i32 @llvm.fshl.i32(i32 %add733, i32 %add733, i32 5), !dbg !76
  %add776 = add i32 %or772, 1518500249, !dbg !76
  %add777 = add i32 %add776, %or638, !dbg !76
  %add781 = add i32 %add777, %xor739, !dbg !76
  %add782 = add i32 %add781, %or780, !dbg !76
  call void @llvm.dbg.value(metadata i32 %add782, metadata !23, metadata !DIExpression()), !dbg !43
  %or785 = call i32 @llvm.fshl.i32(i32 %add684, i32 %add684, i32 30), !dbg !76
  call void @llvm.dbg.value(metadata i32 %or785, metadata !25, metadata !DIExpression()), !dbg !43
  %xor786 = xor i32 %or785, %or736, !dbg !77
  %xor787 = xor i32 %xor786, %add733, !dbg !77
  %xor794 = xor i32 %or243, %or169, !dbg !77
  %xor798 = xor i32 %xor794, %or465, !dbg !77
  %xor802 = xor i32 %xor798, %or674, !dbg !77
  %or820 = call i32 @llvm.fshl.i32(i32 %xor802, i32 %xor802, i32 1), !dbg !77
  %or828 = call i32 @llvm.fshl.i32(i32 %add782, i32 %add782, i32 5), !dbg !77
  %add824 = add i32 %or820, 1859775393, !dbg !77
  %add825 = add i32 %add824, %or687, !dbg !77
  %add829 = add i32 %add825, %xor787, !dbg !77
  %add830 = add i32 %add829, %or828, !dbg !77
  call void @llvm.dbg.value(metadata i32 %add830, metadata !27, metadata !DIExpression()), !dbg !43
  %or833 = call i32 @llvm.fshl.i32(i32 %add733, i32 %add733, i32 30), !dbg !77
  call void @llvm.dbg.value(metadata i32 %or833, metadata !24, metadata !DIExpression()), !dbg !43
  %xor834 = xor i32 %or833, %or785, !dbg !78
  %xor835 = xor i32 %xor834, %add782, !dbg !78
  %xor842 = xor i32 %or280, %or206, !dbg !78
  %xor846 = xor i32 %xor842, %or502, !dbg !78
  %xor850 = xor i32 %xor846, %or723, !dbg !78
  %or868 = call i32 @llvm.fshl.i32(i32 %xor850, i32 %xor850, i32 1), !dbg !78
  %or876 = call i32 @llvm.fshl.i32(i32 %add830, i32 %add830, i32 5), !dbg !78
  %add872 = add i32 %or868, 1859775393, !dbg !78
  %add873 = add i32 %add872, %or736, !dbg !78
  %add877 = add i32 %add873, %xor835, !dbg !78
  %add878 = add i32 %add877, %or876, !dbg !78
  call void @llvm.dbg.value(metadata i32 %add878, metadata !26, metadata !DIExpression()), !dbg !43
  %or881 = call i32 @llvm.fshl.i32(i32 %add782, i32 %add782, i32 30), !dbg !78
  call void @llvm.dbg.value(metadata i32 %or881, metadata !23, metadata !DIExpression()), !dbg !43
  %xor882 = xor i32 %or881, %or833, !dbg !79
  %xor883 = xor i32 %xor882, %add830, !dbg !79
  %xor890 = xor i32 %or317, %or243, !dbg !79
  %xor894 = xor i32 %xor890, %or539, !dbg !79
  %xor898 = xor i32 %xor894, %or772, !dbg !79
  %or916 = call i32 @llvm.fshl.i32(i32 %xor898, i32 %xor898, i32 1), !dbg !79
  %or924 = call i32 @llvm.fshl.i32(i32 %add878, i32 %add878, i32 5), !dbg !79
  %add920 = add i32 %or916, 1859775393, !dbg !79
  %add921 = add i32 %add920, %or785, !dbg !79
  %add925 = add i32 %add921, %xor883, !dbg !79
  %add926 = add i32 %add925, %or924, !dbg !79
  call void @llvm.dbg.value(metadata i32 %add926, metadata !25, metadata !DIExpression()), !dbg !43
  %or929 = call i32 @llvm.fshl.i32(i32 %add830, i32 %add830, i32 30), !dbg !79
  call void @llvm.dbg.value(metadata i32 %or929, metadata !27, metadata !DIExpression()), !dbg !43
  %xor930 = xor i32 %or929, %or881, !dbg !80
  %xor931 = xor i32 %xor930, %add878, !dbg !80
  %xor938 = xor i32 %or354, %or280, !dbg !80
  %xor942 = xor i32 %xor938, %or576, !dbg !80
  %xor946 = xor i32 %xor942, %or820, !dbg !80
  %or964 = call i32 @llvm.fshl.i32(i32 %xor946, i32 %xor946, i32 1), !dbg !80
  %or972 = call i32 @llvm.fshl.i32(i32 %add926, i32 %add926, i32 5), !dbg !80
  %add968 = add i32 %or964, 1859775393, !dbg !80
  %add969 = add i32 %add968, %or833, !dbg !80
  %add973 = add i32 %add969, %xor931, !dbg !80
  %add974 = add i32 %add973, %or972, !dbg !80
  call void @llvm.dbg.value(metadata i32 %add974, metadata !24, metadata !DIExpression()), !dbg !43
  %or977 = call i32 @llvm.fshl.i32(i32 %add878, i32 %add878, i32 30), !dbg !80
  call void @llvm.dbg.value(metadata i32 %or977, metadata !26, metadata !DIExpression()), !dbg !43
  %xor978 = xor i32 %or977, %or929, !dbg !81
  %xor979 = xor i32 %xor978, %add926, !dbg !81
  %xor986 = xor i32 %or391, %or317, !dbg !81
  %xor990 = xor i32 %xor986, %or625, !dbg !81
  %xor994 = xor i32 %xor990, %or868, !dbg !81
  %or1012 = call i32 @llvm.fshl.i32(i32 %xor994, i32 %xor994, i32 1), !dbg !81
  %or1020 = call i32 @llvm.fshl.i32(i32 %add974, i32 %add974, i32 5), !dbg !81
  %add1016 = add i32 %or1012, 1859775393, !dbg !81
  %add1017 = add i32 %add1016, %or881, !dbg !81
  %add1021 = add i32 %add1017, %xor979, !dbg !81
  %add1022 = add i32 %add1021, %or1020, !dbg !81
  call void @llvm.dbg.value(metadata i32 %add1022, metadata !23, metadata !DIExpression()), !dbg !43
  %or1025 = call i32 @llvm.fshl.i32(i32 %add926, i32 %add926, i32 30), !dbg !81
  call void @llvm.dbg.value(metadata i32 %or1025, metadata !25, metadata !DIExpression()), !dbg !43
  %xor1026 = xor i32 %or1025, %or977, !dbg !82
  %xor1027 = xor i32 %xor1026, %add974, !dbg !82
  %xor1034 = xor i32 %or428, %or354, !dbg !82
  %xor1038 = xor i32 %xor1034, %or674, !dbg !82
  %xor1042 = xor i32 %xor1038, %or916, !dbg !82
  %or1060 = call i32 @llvm.fshl.i32(i32 %xor1042, i32 %xor1042, i32 1), !dbg !82
  %or1068 = call i32 @llvm.fshl.i32(i32 %add1022, i32 %add1022, i32 5), !dbg !82
  %add1064 = add i32 %or1060, 1859775393, !dbg !82
  %add1065 = add i32 %add1064, %or929, !dbg !82
  %add1069 = add i32 %add1065, %xor1027, !dbg !82
  %add1070 = add i32 %add1069, %or1068, !dbg !82
  call void @llvm.dbg.value(metadata i32 %add1070, metadata !27, metadata !DIExpression()), !dbg !43
  %or1073 = call i32 @llvm.fshl.i32(i32 %add974, i32 %add974, i32 30), !dbg !82
  call void @llvm.dbg.value(metadata i32 %or1073, metadata !24, metadata !DIExpression()), !dbg !43
  %xor1074 = xor i32 %or1073, %or1025, !dbg !83
  %xor1075 = xor i32 %xor1074, %add1022, !dbg !83
  %xor1082 = xor i32 %or465, %or391, !dbg !83
  %xor1086 = xor i32 %xor1082, %or723, !dbg !83
  %xor1090 = xor i32 %xor1086, %or964, !dbg !83
  %or1108 = call i32 @llvm.fshl.i32(i32 %xor1090, i32 %xor1090, i32 1), !dbg !83
  %or1116 = call i32 @llvm.fshl.i32(i32 %add1070, i32 %add1070, i32 5), !dbg !83
  %add1112 = add i32 %or1108, 1859775393, !dbg !83
  %add1113 = add i32 %add1112, %or977, !dbg !83
  %add1117 = add i32 %add1113, %xor1075, !dbg !83
  %add1118 = add i32 %add1117, %or1116, !dbg !83
  call void @llvm.dbg.value(metadata i32 %add1118, metadata !26, metadata !DIExpression()), !dbg !43
  %or1121 = call i32 @llvm.fshl.i32(i32 %add1022, i32 %add1022, i32 30), !dbg !83
  call void @llvm.dbg.value(metadata i32 %or1121, metadata !23, metadata !DIExpression()), !dbg !43
  %xor1122 = xor i32 %or1121, %or1073, !dbg !84
  %xor1123 = xor i32 %xor1122, %add1070, !dbg !84
  %xor1130 = xor i32 %or502, %or428, !dbg !84
  %xor1134 = xor i32 %xor1130, %or772, !dbg !84
  %xor1138 = xor i32 %xor1134, %or1012, !dbg !84
  %or1156 = call i32 @llvm.fshl.i32(i32 %xor1138, i32 %xor1138, i32 1), !dbg !84
  %or1164 = call i32 @llvm.fshl.i32(i32 %add1118, i32 %add1118, i32 5), !dbg !84
  %add1160 = add i32 %or1156, 1859775393, !dbg !84
  %add1161 = add i32 %add1160, %or1025, !dbg !84
  %add1165 = add i32 %add1161, %xor1123, !dbg !84
  %add1166 = add i32 %add1165, %or1164, !dbg !84
  call void @llvm.dbg.value(metadata i32 %add1166, metadata !25, metadata !DIExpression()), !dbg !43
  %or1169 = call i32 @llvm.fshl.i32(i32 %add1070, i32 %add1070, i32 30), !dbg !84
  call void @llvm.dbg.value(metadata i32 %or1169, metadata !27, metadata !DIExpression()), !dbg !43
  %xor1170 = xor i32 %or1169, %or1121, !dbg !85
  %xor1171 = xor i32 %xor1170, %add1118, !dbg !85
  %xor1178 = xor i32 %or539, %or465, !dbg !85
  %xor1182 = xor i32 %xor1178, %or820, !dbg !85
  %xor1186 = xor i32 %xor1182, %or1060, !dbg !85
  %or1204 = call i32 @llvm.fshl.i32(i32 %xor1186, i32 %xor1186, i32 1), !dbg !85
  %or1212 = call i32 @llvm.fshl.i32(i32 %add1166, i32 %add1166, i32 5), !dbg !85
  %add1208 = add i32 %or1204, 1859775393, !dbg !85
  %add1209 = add i32 %add1208, %or1073, !dbg !85
  %add1213 = add i32 %add1209, %xor1171, !dbg !85
  %add1214 = add i32 %add1213, %or1212, !dbg !85
  call void @llvm.dbg.value(metadata i32 %add1214, metadata !24, metadata !DIExpression()), !dbg !43
  %or1217 = call i32 @llvm.fshl.i32(i32 %add1118, i32 %add1118, i32 30), !dbg !85
  call void @llvm.dbg.value(metadata i32 %or1217, metadata !26, metadata !DIExpression()), !dbg !43
  %xor1218 = xor i32 %or1217, %or1169, !dbg !86
  %xor1219 = xor i32 %xor1218, %add1166, !dbg !86
  %xor1226 = xor i32 %or576, %or502, !dbg !86
  %xor1230 = xor i32 %xor1226, %or868, !dbg !86
  %xor1234 = xor i32 %xor1230, %or1108, !dbg !86
  %or1252 = call i32 @llvm.fshl.i32(i32 %xor1234, i32 %xor1234, i32 1), !dbg !86
  %or1260 = call i32 @llvm.fshl.i32(i32 %add1214, i32 %add1214, i32 5), !dbg !86
  %add1256 = add i32 %or1252, 1859775393, !dbg !86
  %add1257 = add i32 %add1256, %or1121, !dbg !86
  %add1261 = add i32 %add1257, %xor1219, !dbg !86
  %add1262 = add i32 %add1261, %or1260, !dbg !86
  call void @llvm.dbg.value(metadata i32 %add1262, metadata !23, metadata !DIExpression()), !dbg !43
  %or1265 = call i32 @llvm.fshl.i32(i32 %add1166, i32 %add1166, i32 30), !dbg !86
  call void @llvm.dbg.value(metadata i32 %or1265, metadata !25, metadata !DIExpression()), !dbg !43
  %xor1266 = xor i32 %or1265, %or1217, !dbg !87
  %xor1267 = xor i32 %xor1266, %add1214, !dbg !87
  %xor1274 = xor i32 %or625, %or539, !dbg !87
  %xor1278 = xor i32 %xor1274, %or916, !dbg !87
  %xor1282 = xor i32 %xor1278, %or1156, !dbg !87
  %or1300 = call i32 @llvm.fshl.i32(i32 %xor1282, i32 %xor1282, i32 1), !dbg !87
  %or1308 = call i32 @llvm.fshl.i32(i32 %add1262, i32 %add1262, i32 5), !dbg !87
  %add1304 = add i32 %or1300, 1859775393, !dbg !87
  %add1305 = add i32 %add1304, %or1169, !dbg !87
  %add1309 = add i32 %add1305, %xor1267, !dbg !87
  %add1310 = add i32 %add1309, %or1308, !dbg !87
  call void @llvm.dbg.value(metadata i32 %add1310, metadata !27, metadata !DIExpression()), !dbg !43
  %or1313 = call i32 @llvm.fshl.i32(i32 %add1214, i32 %add1214, i32 30), !dbg !87
  call void @llvm.dbg.value(metadata i32 %or1313, metadata !24, metadata !DIExpression()), !dbg !43
  %xor1314 = xor i32 %or1313, %or1265, !dbg !88
  %xor1315 = xor i32 %xor1314, %add1262, !dbg !88
  %xor1322 = xor i32 %or674, %or576, !dbg !88
  %xor1326 = xor i32 %xor1322, %or964, !dbg !88
  %xor1330 = xor i32 %xor1326, %or1204, !dbg !88
  %or1348 = call i32 @llvm.fshl.i32(i32 %xor1330, i32 %xor1330, i32 1), !dbg !88
  %or1356 = call i32 @llvm.fshl.i32(i32 %add1310, i32 %add1310, i32 5), !dbg !88
  %add1352 = add i32 %or1348, 1859775393, !dbg !88
  %add1353 = add i32 %add1352, %or1217, !dbg !88
  %add1357 = add i32 %add1353, %xor1315, !dbg !88
  %add1358 = add i32 %add1357, %or1356, !dbg !88
  call void @llvm.dbg.value(metadata i32 %add1358, metadata !26, metadata !DIExpression()), !dbg !43
  %or1361 = call i32 @llvm.fshl.i32(i32 %add1262, i32 %add1262, i32 30), !dbg !88
  call void @llvm.dbg.value(metadata i32 %or1361, metadata !23, metadata !DIExpression()), !dbg !43
  %xor1362 = xor i32 %or1361, %or1313, !dbg !89
  %xor1363 = xor i32 %xor1362, %add1310, !dbg !89
  %xor1370 = xor i32 %or723, %or625, !dbg !89
  %xor1374 = xor i32 %xor1370, %or1012, !dbg !89
  %xor1378 = xor i32 %xor1374, %or1252, !dbg !89
  %or1396 = call i32 @llvm.fshl.i32(i32 %xor1378, i32 %xor1378, i32 1), !dbg !89
  %or1404 = call i32 @llvm.fshl.i32(i32 %add1358, i32 %add1358, i32 5), !dbg !89
  %add1400 = add i32 %or1396, 1859775393, !dbg !89
  %add1401 = add i32 %add1400, %or1265, !dbg !89
  %add1405 = add i32 %add1401, %xor1363, !dbg !89
  %add1406 = add i32 %add1405, %or1404, !dbg !89
  call void @llvm.dbg.value(metadata i32 %add1406, metadata !25, metadata !DIExpression()), !dbg !43
  %or1409 = call i32 @llvm.fshl.i32(i32 %add1310, i32 %add1310, i32 30), !dbg !89
  call void @llvm.dbg.value(metadata i32 %or1409, metadata !27, metadata !DIExpression()), !dbg !43
  %xor1410 = xor i32 %or1409, %or1361, !dbg !90
  %xor1411 = xor i32 %xor1410, %add1358, !dbg !90
  %xor1418 = xor i32 %or772, %or674, !dbg !90
  %xor1422 = xor i32 %xor1418, %or1060, !dbg !90
  %xor1426 = xor i32 %xor1422, %or1300, !dbg !90
  %or1444 = call i32 @llvm.fshl.i32(i32 %xor1426, i32 %xor1426, i32 1), !dbg !90
  %or1452 = call i32 @llvm.fshl.i32(i32 %add1406, i32 %add1406, i32 5), !dbg !90
  %add1448 = add i32 %or1444, 1859775393, !dbg !90
  %add1449 = add i32 %add1448, %or1313, !dbg !90
  %add1453 = add i32 %add1449, %xor1411, !dbg !90
  %add1454 = add i32 %add1453, %or1452, !dbg !90
  call void @llvm.dbg.value(metadata i32 %add1454, metadata !24, metadata !DIExpression()), !dbg !43
  %or1457 = call i32 @llvm.fshl.i32(i32 %add1358, i32 %add1358, i32 30), !dbg !90
  call void @llvm.dbg.value(metadata i32 %or1457, metadata !26, metadata !DIExpression()), !dbg !43
  %xor1458 = xor i32 %or1457, %or1409, !dbg !91
  %xor1459 = xor i32 %xor1458, %add1406, !dbg !91
  %xor1466 = xor i32 %or820, %or723, !dbg !91
  %xor1470 = xor i32 %xor1466, %or1108, !dbg !91
  %xor1474 = xor i32 %xor1470, %or1348, !dbg !91
  %or1492 = call i32 @llvm.fshl.i32(i32 %xor1474, i32 %xor1474, i32 1), !dbg !91
  %or1500 = call i32 @llvm.fshl.i32(i32 %add1454, i32 %add1454, i32 5), !dbg !91
  %add1496 = add i32 %or1492, 1859775393, !dbg !91
  %add1497 = add i32 %add1496, %or1361, !dbg !91
  %add1501 = add i32 %add1497, %xor1459, !dbg !91
  %add1502 = add i32 %add1501, %or1500, !dbg !91
  call void @llvm.dbg.value(metadata i32 %add1502, metadata !23, metadata !DIExpression()), !dbg !43
  %or1505 = call i32 @llvm.fshl.i32(i32 %add1406, i32 %add1406, i32 30), !dbg !91
  call void @llvm.dbg.value(metadata i32 %or1505, metadata !25, metadata !DIExpression()), !dbg !43
  %xor1506 = xor i32 %or1505, %or1457, !dbg !92
  %xor1507 = xor i32 %xor1506, %add1454, !dbg !92
  %xor1514 = xor i32 %or868, %or772, !dbg !92
  %xor1518 = xor i32 %xor1514, %or1156, !dbg !92
  %xor1522 = xor i32 %xor1518, %or1396, !dbg !92
  %or1540 = call i32 @llvm.fshl.i32(i32 %xor1522, i32 %xor1522, i32 1), !dbg !92
  %or1548 = call i32 @llvm.fshl.i32(i32 %add1502, i32 %add1502, i32 5), !dbg !92
  %add1544 = add i32 %or1540, 1859775393, !dbg !92
  %add1545 = add i32 %add1544, %or1409, !dbg !92
  %add1549 = add i32 %add1545, %xor1507, !dbg !92
  %add1550 = add i32 %add1549, %or1548, !dbg !92
  call void @llvm.dbg.value(metadata i32 %add1550, metadata !27, metadata !DIExpression()), !dbg !43
  %or1553 = call i32 @llvm.fshl.i32(i32 %add1454, i32 %add1454, i32 30), !dbg !92
  call void @llvm.dbg.value(metadata i32 %or1553, metadata !24, metadata !DIExpression()), !dbg !43
  %xor1554 = xor i32 %or1553, %or1505, !dbg !93
  %xor1555 = xor i32 %xor1554, %add1502, !dbg !93
  %xor1562 = xor i32 %or916, %or820, !dbg !93
  %xor1566 = xor i32 %xor1562, %or1204, !dbg !93
  %xor1570 = xor i32 %xor1566, %or1444, !dbg !93
  %or1588 = call i32 @llvm.fshl.i32(i32 %xor1570, i32 %xor1570, i32 1), !dbg !93
  %or1596 = call i32 @llvm.fshl.i32(i32 %add1550, i32 %add1550, i32 5), !dbg !93
  %add1592 = add i32 %or1588, 1859775393, !dbg !93
  %add1593 = add i32 %add1592, %or1457, !dbg !93
  %add1597 = add i32 %add1593, %xor1555, !dbg !93
  %add1598 = add i32 %add1597, %or1596, !dbg !93
  call void @llvm.dbg.value(metadata i32 %add1598, metadata !26, metadata !DIExpression()), !dbg !43
  %or1601 = call i32 @llvm.fshl.i32(i32 %add1502, i32 %add1502, i32 30), !dbg !93
  call void @llvm.dbg.value(metadata i32 %or1601, metadata !23, metadata !DIExpression()), !dbg !43
  %xor1602 = xor i32 %or1601, %or1553, !dbg !94
  %xor1603 = xor i32 %xor1602, %add1550, !dbg !94
  %xor1610 = xor i32 %or964, %or868, !dbg !94
  %xor1614 = xor i32 %xor1610, %or1252, !dbg !94
  %xor1618 = xor i32 %xor1614, %or1492, !dbg !94
  %or1636 = call i32 @llvm.fshl.i32(i32 %xor1618, i32 %xor1618, i32 1), !dbg !94
  %or1644 = call i32 @llvm.fshl.i32(i32 %add1598, i32 %add1598, i32 5), !dbg !94
  %add1640 = add i32 %or1636, 1859775393, !dbg !94
  %add1641 = add i32 %add1640, %or1505, !dbg !94
  %add1645 = add i32 %add1641, %xor1603, !dbg !94
  %add1646 = add i32 %add1645, %or1644, !dbg !94
  call void @llvm.dbg.value(metadata i32 %add1646, metadata !25, metadata !DIExpression()), !dbg !43
  %or1649 = call i32 @llvm.fshl.i32(i32 %add1550, i32 %add1550, i32 30), !dbg !94
  call void @llvm.dbg.value(metadata i32 %or1649, metadata !27, metadata !DIExpression()), !dbg !43
  %xor1650 = xor i32 %or1649, %or1601, !dbg !95
  %xor1651 = xor i32 %xor1650, %add1598, !dbg !95
  %xor1658 = xor i32 %or1012, %or916, !dbg !95
  %xor1662 = xor i32 %xor1658, %or1300, !dbg !95
  %xor1666 = xor i32 %xor1662, %or1540, !dbg !95
  %or1684 = call i32 @llvm.fshl.i32(i32 %xor1666, i32 %xor1666, i32 1), !dbg !95
  %or1692 = call i32 @llvm.fshl.i32(i32 %add1646, i32 %add1646, i32 5), !dbg !95
  %add1688 = add i32 %or1684, 1859775393, !dbg !95
  %add1689 = add i32 %add1688, %or1553, !dbg !95
  %add1693 = add i32 %add1689, %xor1651, !dbg !95
  %add1694 = add i32 %add1693, %or1692, !dbg !95
  call void @llvm.dbg.value(metadata i32 %add1694, metadata !24, metadata !DIExpression()), !dbg !43
  %or1697 = call i32 @llvm.fshl.i32(i32 %add1598, i32 %add1598, i32 30), !dbg !95
  call void @llvm.dbg.value(metadata i32 %or1697, metadata !26, metadata !DIExpression()), !dbg !43
  %xor1698 = xor i32 %or1697, %or1649, !dbg !96
  %xor1699 = xor i32 %xor1698, %add1646, !dbg !96
  %xor1706 = xor i32 %or1060, %or964, !dbg !96
  %xor1710 = xor i32 %xor1706, %or1348, !dbg !96
  %xor1714 = xor i32 %xor1710, %or1588, !dbg !96
  %or1732 = call i32 @llvm.fshl.i32(i32 %xor1714, i32 %xor1714, i32 1), !dbg !96
  %or1740 = call i32 @llvm.fshl.i32(i32 %add1694, i32 %add1694, i32 5), !dbg !96
  %add1736 = add i32 %or1732, 1859775393, !dbg !96
  %add1737 = add i32 %add1736, %or1601, !dbg !96
  %add1741 = add i32 %add1737, %xor1699, !dbg !96
  %add1742 = add i32 %add1741, %or1740, !dbg !96
  call void @llvm.dbg.value(metadata i32 %add1742, metadata !23, metadata !DIExpression()), !dbg !43
  %or1745 = call i32 @llvm.fshl.i32(i32 %add1646, i32 %add1646, i32 30), !dbg !96
  call void @llvm.dbg.value(metadata i32 %or1745, metadata !25, metadata !DIExpression()), !dbg !43
  %or1746 = or i32 %add1694, %or1745, !dbg !97
  %and1747 = and i32 %or1746, %or1697, !dbg !97
  %and1748 = and i32 %add1694, %or1745, !dbg !97
  %or1749 = or i32 %and1747, %and1748, !dbg !97
  %xor1756 = xor i32 %or1108, %or1012, !dbg !97
  %xor1760 = xor i32 %xor1756, %or1396, !dbg !97
  %xor1764 = xor i32 %xor1760, %or1636, !dbg !97
  %or1782 = call i32 @llvm.fshl.i32(i32 %xor1764, i32 %xor1764, i32 1), !dbg !97
  %or1790 = call i32 @llvm.fshl.i32(i32 %add1742, i32 %add1742, i32 5), !dbg !97
  %add1786 = add i32 %or1782, -1894007588, !dbg !97
  %add1787 = add i32 %add1786, %or1649, !dbg !97
  %add1791 = add i32 %add1787, %or1749, !dbg !97
  %add1792 = add i32 %add1791, %or1790, !dbg !97
  call void @llvm.dbg.value(metadata i32 %add1792, metadata !27, metadata !DIExpression()), !dbg !43
  %or1795 = call i32 @llvm.fshl.i32(i32 %add1694, i32 %add1694, i32 30), !dbg !97
  call void @llvm.dbg.value(metadata i32 %or1795, metadata !24, metadata !DIExpression()), !dbg !43
  %or1796 = or i32 %add1742, %or1795, !dbg !98
  %and1797 = and i32 %or1796, %or1745, !dbg !98
  %and1798 = and i32 %add1742, %or1795, !dbg !98
  %or1799 = or i32 %and1797, %and1798, !dbg !98
  %xor1806 = xor i32 %or1156, %or1060, !dbg !98
  %xor1810 = xor i32 %xor1806, %or1444, !dbg !98
  %xor1814 = xor i32 %xor1810, %or1684, !dbg !98
  %or1832 = call i32 @llvm.fshl.i32(i32 %xor1814, i32 %xor1814, i32 1), !dbg !98
  %or1840 = call i32 @llvm.fshl.i32(i32 %add1792, i32 %add1792, i32 5), !dbg !98
  %add1836 = add i32 %or1832, -1894007588, !dbg !98
  %add1837 = add i32 %add1836, %or1697, !dbg !98
  %add1841 = add i32 %add1837, %or1799, !dbg !98
  %add1842 = add i32 %add1841, %or1840, !dbg !98
  call void @llvm.dbg.value(metadata i32 %add1842, metadata !26, metadata !DIExpression()), !dbg !43
  %or1845 = call i32 @llvm.fshl.i32(i32 %add1742, i32 %add1742, i32 30), !dbg !98
  call void @llvm.dbg.value(metadata i32 %or1845, metadata !23, metadata !DIExpression()), !dbg !43
  %or1846 = or i32 %add1792, %or1845, !dbg !99
  %and1847 = and i32 %or1846, %or1795, !dbg !99
  %and1848 = and i32 %add1792, %or1845, !dbg !99
  %or1849 = or i32 %and1847, %and1848, !dbg !99
  %xor1856 = xor i32 %or1204, %or1108, !dbg !99
  %xor1860 = xor i32 %xor1856, %or1492, !dbg !99
  %xor1864 = xor i32 %xor1860, %or1732, !dbg !99
  %or1882 = call i32 @llvm.fshl.i32(i32 %xor1864, i32 %xor1864, i32 1), !dbg !99
  %or1890 = call i32 @llvm.fshl.i32(i32 %add1842, i32 %add1842, i32 5), !dbg !99
  %add1886 = add i32 %or1882, -1894007588, !dbg !99
  %add1887 = add i32 %add1886, %or1745, !dbg !99
  %add1891 = add i32 %add1887, %or1849, !dbg !99
  %add1892 = add i32 %add1891, %or1890, !dbg !99
  call void @llvm.dbg.value(metadata i32 %add1892, metadata !25, metadata !DIExpression()), !dbg !43
  %or1895 = call i32 @llvm.fshl.i32(i32 %add1792, i32 %add1792, i32 30), !dbg !99
  call void @llvm.dbg.value(metadata i32 %or1895, metadata !27, metadata !DIExpression()), !dbg !43
  %or1896 = or i32 %add1842, %or1895, !dbg !100
  %and1897 = and i32 %or1896, %or1845, !dbg !100
  %and1898 = and i32 %add1842, %or1895, !dbg !100
  %or1899 = or i32 %and1897, %and1898, !dbg !100
  %xor1906 = xor i32 %or1252, %or1156, !dbg !100
  %xor1910 = xor i32 %xor1906, %or1540, !dbg !100
  %xor1914 = xor i32 %xor1910, %or1782, !dbg !100
  %or1932 = call i32 @llvm.fshl.i32(i32 %xor1914, i32 %xor1914, i32 1), !dbg !100
  %or1940 = call i32 @llvm.fshl.i32(i32 %add1892, i32 %add1892, i32 5), !dbg !100
  %add1936 = add i32 %or1932, -1894007588, !dbg !100
  %add1937 = add i32 %add1936, %or1795, !dbg !100
  %add1941 = add i32 %add1937, %or1899, !dbg !100
  %add1942 = add i32 %add1941, %or1940, !dbg !100
  call void @llvm.dbg.value(metadata i32 %add1942, metadata !24, metadata !DIExpression()), !dbg !43
  %or1945 = call i32 @llvm.fshl.i32(i32 %add1842, i32 %add1842, i32 30), !dbg !100
  call void @llvm.dbg.value(metadata i32 %or1945, metadata !26, metadata !DIExpression()), !dbg !43
  %or1946 = or i32 %add1892, %or1945, !dbg !101
  %and1947 = and i32 %or1946, %or1895, !dbg !101
  %and1948 = and i32 %add1892, %or1945, !dbg !101
  %or1949 = or i32 %and1947, %and1948, !dbg !101
  %xor1956 = xor i32 %or1300, %or1204, !dbg !101
  %xor1960 = xor i32 %xor1956, %or1588, !dbg !101
  %xor1964 = xor i32 %xor1960, %or1832, !dbg !101
  %or1982 = call i32 @llvm.fshl.i32(i32 %xor1964, i32 %xor1964, i32 1), !dbg !101
  %or1990 = call i32 @llvm.fshl.i32(i32 %add1942, i32 %add1942, i32 5), !dbg !101
  %add1986 = add i32 %or1982, -1894007588, !dbg !101
  %add1987 = add i32 %add1986, %or1845, !dbg !101
  %add1991 = add i32 %add1987, %or1949, !dbg !101
  %add1992 = add i32 %add1991, %or1990, !dbg !101
  call void @llvm.dbg.value(metadata i32 %add1992, metadata !23, metadata !DIExpression()), !dbg !43
  %or1995 = call i32 @llvm.fshl.i32(i32 %add1892, i32 %add1892, i32 30), !dbg !101
  call void @llvm.dbg.value(metadata i32 %or1995, metadata !25, metadata !DIExpression()), !dbg !43
  %or1996 = or i32 %add1942, %or1995, !dbg !102
  %and1997 = and i32 %or1996, %or1945, !dbg !102
  %and1998 = and i32 %add1942, %or1995, !dbg !102
  %or1999 = or i32 %and1997, %and1998, !dbg !102
  %xor2006 = xor i32 %or1348, %or1252, !dbg !102
  %xor2010 = xor i32 %xor2006, %or1636, !dbg !102
  %xor2014 = xor i32 %xor2010, %or1882, !dbg !102
  %or2032 = call i32 @llvm.fshl.i32(i32 %xor2014, i32 %xor2014, i32 1), !dbg !102
  %or2040 = call i32 @llvm.fshl.i32(i32 %add1992, i32 %add1992, i32 5), !dbg !102
  %add2036 = add i32 %or2032, -1894007588, !dbg !102
  %add2037 = add i32 %add2036, %or1895, !dbg !102
  %add2041 = add i32 %add2037, %or1999, !dbg !102
  %add2042 = add i32 %add2041, %or2040, !dbg !102
  call void @llvm.dbg.value(metadata i32 %add2042, metadata !27, metadata !DIExpression()), !dbg !43
  %or2045 = call i32 @llvm.fshl.i32(i32 %add1942, i32 %add1942, i32 30), !dbg !102
  call void @llvm.dbg.value(metadata i32 %or2045, metadata !24, metadata !DIExpression()), !dbg !43
  %or2046 = or i32 %add1992, %or2045, !dbg !103
  %and2047 = and i32 %or2046, %or1995, !dbg !103
  %and2048 = and i32 %add1992, %or2045, !dbg !103
  %or2049 = or i32 %and2047, %and2048, !dbg !103
  %xor2056 = xor i32 %or1396, %or1300, !dbg !103
  %xor2060 = xor i32 %xor2056, %or1684, !dbg !103
  %xor2064 = xor i32 %xor2060, %or1932, !dbg !103
  %or2082 = call i32 @llvm.fshl.i32(i32 %xor2064, i32 %xor2064, i32 1), !dbg !103
  %or2090 = call i32 @llvm.fshl.i32(i32 %add2042, i32 %add2042, i32 5), !dbg !103
  %add2086 = add i32 %or2082, -1894007588, !dbg !103
  %add2087 = add i32 %add2086, %or1945, !dbg !103
  %add2091 = add i32 %add2087, %or2049, !dbg !103
  %add2092 = add i32 %add2091, %or2090, !dbg !103
  call void @llvm.dbg.value(metadata i32 %add2092, metadata !26, metadata !DIExpression()), !dbg !43
  %or2095 = call i32 @llvm.fshl.i32(i32 %add1992, i32 %add1992, i32 30), !dbg !103
  call void @llvm.dbg.value(metadata i32 %or2095, metadata !23, metadata !DIExpression()), !dbg !43
  %or2096 = or i32 %add2042, %or2095, !dbg !104
  %and2097 = and i32 %or2096, %or2045, !dbg !104
  %and2098 = and i32 %add2042, %or2095, !dbg !104
  %or2099 = or i32 %and2097, %and2098, !dbg !104
  %xor2106 = xor i32 %or1444, %or1348, !dbg !104
  %xor2110 = xor i32 %xor2106, %or1732, !dbg !104
  %xor2114 = xor i32 %xor2110, %or1982, !dbg !104
  %or2132 = call i32 @llvm.fshl.i32(i32 %xor2114, i32 %xor2114, i32 1), !dbg !104
  %or2140 = call i32 @llvm.fshl.i32(i32 %add2092, i32 %add2092, i32 5), !dbg !104
  %add2136 = add i32 %or2132, -1894007588, !dbg !104
  %add2137 = add i32 %add2136, %or1995, !dbg !104
  %add2141 = add i32 %add2137, %or2099, !dbg !104
  %add2142 = add i32 %add2141, %or2140, !dbg !104
  call void @llvm.dbg.value(metadata i32 %add2142, metadata !25, metadata !DIExpression()), !dbg !43
  %or2145 = call i32 @llvm.fshl.i32(i32 %add2042, i32 %add2042, i32 30), !dbg !104
  call void @llvm.dbg.value(metadata i32 %or2145, metadata !27, metadata !DIExpression()), !dbg !43
  %or2146 = or i32 %add2092, %or2145, !dbg !105
  %and2147 = and i32 %or2146, %or2095, !dbg !105
  %and2148 = and i32 %add2092, %or2145, !dbg !105
  %or2149 = or i32 %and2147, %and2148, !dbg !105
  %xor2156 = xor i32 %or1492, %or1396, !dbg !105
  %xor2160 = xor i32 %xor2156, %or1782, !dbg !105
  %xor2164 = xor i32 %xor2160, %or2032, !dbg !105
  %or2182 = call i32 @llvm.fshl.i32(i32 %xor2164, i32 %xor2164, i32 1), !dbg !105
  %or2190 = call i32 @llvm.fshl.i32(i32 %add2142, i32 %add2142, i32 5), !dbg !105
  %add2186 = add i32 %or2182, -1894007588, !dbg !105
  %add2187 = add i32 %add2186, %or2045, !dbg !105
  %add2191 = add i32 %add2187, %or2149, !dbg !105
  %add2192 = add i32 %add2191, %or2190, !dbg !105
  call void @llvm.dbg.value(metadata i32 %add2192, metadata !24, metadata !DIExpression()), !dbg !43
  %or2195 = call i32 @llvm.fshl.i32(i32 %add2092, i32 %add2092, i32 30), !dbg !105
  call void @llvm.dbg.value(metadata i32 %or2195, metadata !26, metadata !DIExpression()), !dbg !43
  %or2196 = or i32 %add2142, %or2195, !dbg !106
  %and2197 = and i32 %or2196, %or2145, !dbg !106
  %and2198 = and i32 %add2142, %or2195, !dbg !106
  %or2199 = or i32 %and2197, %and2198, !dbg !106
  %xor2206 = xor i32 %or1540, %or1444, !dbg !106
  %xor2210 = xor i32 %xor2206, %or1832, !dbg !106
  %xor2214 = xor i32 %xor2210, %or2082, !dbg !106
  %or2232 = call i32 @llvm.fshl.i32(i32 %xor2214, i32 %xor2214, i32 1), !dbg !106
  %or2240 = call i32 @llvm.fshl.i32(i32 %add2192, i32 %add2192, i32 5), !dbg !106
  %add2236 = add i32 %or2232, -1894007588, !dbg !106
  %add2237 = add i32 %add2236, %or2095, !dbg !106
  %add2241 = add i32 %add2237, %or2199, !dbg !106
  %add2242 = add i32 %add2241, %or2240, !dbg !106
  call void @llvm.dbg.value(metadata i32 %add2242, metadata !23, metadata !DIExpression()), !dbg !43
  %or2245 = call i32 @llvm.fshl.i32(i32 %add2142, i32 %add2142, i32 30), !dbg !106
  call void @llvm.dbg.value(metadata i32 %or2245, metadata !25, metadata !DIExpression()), !dbg !43
  %or2246 = or i32 %add2192, %or2245, !dbg !107
  %and2247 = and i32 %or2246, %or2195, !dbg !107
  %and2248 = and i32 %add2192, %or2245, !dbg !107
  %or2249 = or i32 %and2247, %and2248, !dbg !107
  %xor2256 = xor i32 %or1588, %or1492, !dbg !107
  %xor2260 = xor i32 %xor2256, %or1882, !dbg !107
  %xor2264 = xor i32 %xor2260, %or2132, !dbg !107
  %or2282 = call i32 @llvm.fshl.i32(i32 %xor2264, i32 %xor2264, i32 1), !dbg !107
  %or2290 = call i32 @llvm.fshl.i32(i32 %add2242, i32 %add2242, i32 5), !dbg !107
  %add2286 = add i32 %or2282, -1894007588, !dbg !107
  %add2287 = add i32 %add2286, %or2145, !dbg !107
  %add2291 = add i32 %add2287, %or2249, !dbg !107
  %add2292 = add i32 %add2291, %or2290, !dbg !107
  call void @llvm.dbg.value(metadata i32 %add2292, metadata !27, metadata !DIExpression()), !dbg !43
  %or2295 = call i32 @llvm.fshl.i32(i32 %add2192, i32 %add2192, i32 30), !dbg !107
  call void @llvm.dbg.value(metadata i32 %or2295, metadata !24, metadata !DIExpression()), !dbg !43
  %or2296 = or i32 %add2242, %or2295, !dbg !108
  %and2297 = and i32 %or2296, %or2245, !dbg !108
  %and2298 = and i32 %add2242, %or2295, !dbg !108
  %or2299 = or i32 %and2297, %and2298, !dbg !108
  %xor2306 = xor i32 %or1636, %or1540, !dbg !108
  %xor2310 = xor i32 %xor2306, %or1932, !dbg !108
  %xor2314 = xor i32 %xor2310, %or2182, !dbg !108
  %or2332 = call i32 @llvm.fshl.i32(i32 %xor2314, i32 %xor2314, i32 1), !dbg !108
  %or2340 = call i32 @llvm.fshl.i32(i32 %add2292, i32 %add2292, i32 5), !dbg !108
  %add2336 = add i32 %or2332, -1894007588, !dbg !108
  %add2337 = add i32 %add2336, %or2195, !dbg !108
  %add2341 = add i32 %add2337, %or2299, !dbg !108
  %add2342 = add i32 %add2341, %or2340, !dbg !108
  call void @llvm.dbg.value(metadata i32 %add2342, metadata !26, metadata !DIExpression()), !dbg !43
  %or2345 = call i32 @llvm.fshl.i32(i32 %add2242, i32 %add2242, i32 30), !dbg !108
  call void @llvm.dbg.value(metadata i32 %or2345, metadata !23, metadata !DIExpression()), !dbg !43
  %or2346 = or i32 %add2292, %or2345, !dbg !109
  %and2347 = and i32 %or2346, %or2295, !dbg !109
  %and2348 = and i32 %add2292, %or2345, !dbg !109
  %or2349 = or i32 %and2347, %and2348, !dbg !109
  %xor2356 = xor i32 %or1684, %or1588, !dbg !109
  %xor2360 = xor i32 %xor2356, %or1982, !dbg !109
  %xor2364 = xor i32 %xor2360, %or2232, !dbg !109
  %or2382 = call i32 @llvm.fshl.i32(i32 %xor2364, i32 %xor2364, i32 1), !dbg !109
  %or2390 = call i32 @llvm.fshl.i32(i32 %add2342, i32 %add2342, i32 5), !dbg !109
  %add2386 = add i32 %or2382, -1894007588, !dbg !109
  %add2387 = add i32 %add2386, %or2245, !dbg !109
  %add2391 = add i32 %add2387, %or2349, !dbg !109
  %add2392 = add i32 %add2391, %or2390, !dbg !109
  call void @llvm.dbg.value(metadata i32 %add2392, metadata !25, metadata !DIExpression()), !dbg !43
  %or2395 = call i32 @llvm.fshl.i32(i32 %add2292, i32 %add2292, i32 30), !dbg !109
  call void @llvm.dbg.value(metadata i32 %or2395, metadata !27, metadata !DIExpression()), !dbg !43
  %or2396 = or i32 %add2342, %or2395, !dbg !110
  %and2397 = and i32 %or2396, %or2345, !dbg !110
  %and2398 = and i32 %add2342, %or2395, !dbg !110
  %or2399 = or i32 %and2397, %and2398, !dbg !110
  %xor2406 = xor i32 %or1732, %or1636, !dbg !110
  %xor2410 = xor i32 %xor2406, %or2032, !dbg !110
  %xor2414 = xor i32 %xor2410, %or2282, !dbg !110
  %or2432 = call i32 @llvm.fshl.i32(i32 %xor2414, i32 %xor2414, i32 1), !dbg !110
  %or2440 = call i32 @llvm.fshl.i32(i32 %add2392, i32 %add2392, i32 5), !dbg !110
  %add2436 = add i32 %or2432, -1894007588, !dbg !110
  %add2437 = add i32 %add2436, %or2295, !dbg !110
  %add2441 = add i32 %add2437, %or2399, !dbg !110
  %add2442 = add i32 %add2441, %or2440, !dbg !110
  call void @llvm.dbg.value(metadata i32 %add2442, metadata !24, metadata !DIExpression()), !dbg !43
  %or2445 = call i32 @llvm.fshl.i32(i32 %add2342, i32 %add2342, i32 30), !dbg !110
  call void @llvm.dbg.value(metadata i32 %or2445, metadata !26, metadata !DIExpression()), !dbg !43
  %or2446 = or i32 %add2392, %or2445, !dbg !111
  %and2447 = and i32 %or2446, %or2395, !dbg !111
  %and2448 = and i32 %add2392, %or2445, !dbg !111
  %or2449 = or i32 %and2447, %and2448, !dbg !111
  %xor2456 = xor i32 %or1782, %or1684, !dbg !111
  %xor2460 = xor i32 %xor2456, %or2082, !dbg !111
  %xor2464 = xor i32 %xor2460, %or2332, !dbg !111
  %or2482 = call i32 @llvm.fshl.i32(i32 %xor2464, i32 %xor2464, i32 1), !dbg !111
  %or2490 = call i32 @llvm.fshl.i32(i32 %add2442, i32 %add2442, i32 5), !dbg !111
  %add2486 = add i32 %or2482, -1894007588, !dbg !111
  %add2487 = add i32 %add2486, %or2345, !dbg !111
  %add2491 = add i32 %add2487, %or2449, !dbg !111
  %add2492 = add i32 %add2491, %or2490, !dbg !111
  call void @llvm.dbg.value(metadata i32 %add2492, metadata !23, metadata !DIExpression()), !dbg !43
  %or2495 = call i32 @llvm.fshl.i32(i32 %add2392, i32 %add2392, i32 30), !dbg !111
  call void @llvm.dbg.value(metadata i32 %or2495, metadata !25, metadata !DIExpression()), !dbg !43
  %or2496 = or i32 %add2442, %or2495, !dbg !112
  %and2497 = and i32 %or2496, %or2445, !dbg !112
  %and2498 = and i32 %add2442, %or2495, !dbg !112
  %or2499 = or i32 %and2497, %and2498, !dbg !112
  %xor2506 = xor i32 %or1832, %or1732, !dbg !112
  %xor2510 = xor i32 %xor2506, %or2132, !dbg !112
  %xor2514 = xor i32 %xor2510, %or2382, !dbg !112
  %or2532 = call i32 @llvm.fshl.i32(i32 %xor2514, i32 %xor2514, i32 1), !dbg !112
  %or2540 = call i32 @llvm.fshl.i32(i32 %add2492, i32 %add2492, i32 5), !dbg !112
  %add2536 = add i32 %or2532, -1894007588, !dbg !112
  %add2537 = add i32 %add2536, %or2395, !dbg !112
  %add2541 = add i32 %add2537, %or2499, !dbg !112
  %add2542 = add i32 %add2541, %or2540, !dbg !112
  call void @llvm.dbg.value(metadata i32 %add2542, metadata !27, metadata !DIExpression()), !dbg !43
  %or2545 = call i32 @llvm.fshl.i32(i32 %add2442, i32 %add2442, i32 30), !dbg !112
  call void @llvm.dbg.value(metadata i32 %or2545, metadata !24, metadata !DIExpression()), !dbg !43
  %or2546 = or i32 %add2492, %or2545, !dbg !113
  %and2547 = and i32 %or2546, %or2495, !dbg !113
  %and2548 = and i32 %add2492, %or2545, !dbg !113
  %or2549 = or i32 %and2547, %and2548, !dbg !113
  %xor2556 = xor i32 %or1882, %or1782, !dbg !113
  %xor2560 = xor i32 %xor2556, %or2182, !dbg !113
  %xor2564 = xor i32 %xor2560, %or2432, !dbg !113
  %or2582 = call i32 @llvm.fshl.i32(i32 %xor2564, i32 %xor2564, i32 1), !dbg !113
  %or2590 = call i32 @llvm.fshl.i32(i32 %add2542, i32 %add2542, i32 5), !dbg !113
  %add2586 = add i32 %or2582, -1894007588, !dbg !113
  %add2587 = add i32 %add2586, %or2445, !dbg !113
  %add2591 = add i32 %add2587, %or2549, !dbg !113
  %add2592 = add i32 %add2591, %or2590, !dbg !113
  call void @llvm.dbg.value(metadata i32 %add2592, metadata !26, metadata !DIExpression()), !dbg !43
  %or2595 = call i32 @llvm.fshl.i32(i32 %add2492, i32 %add2492, i32 30), !dbg !113
  call void @llvm.dbg.value(metadata i32 %or2595, metadata !23, metadata !DIExpression()), !dbg !43
  %or2596 = or i32 %add2542, %or2595, !dbg !114
  %and2597 = and i32 %or2596, %or2545, !dbg !114
  %and2598 = and i32 %add2542, %or2595, !dbg !114
  %or2599 = or i32 %and2597, %and2598, !dbg !114
  %xor2606 = xor i32 %or1932, %or1832, !dbg !114
  %xor2610 = xor i32 %xor2606, %or2232, !dbg !114
  %xor2614 = xor i32 %xor2610, %or2482, !dbg !114
  %or2632 = call i32 @llvm.fshl.i32(i32 %xor2614, i32 %xor2614, i32 1), !dbg !114
  %or2640 = call i32 @llvm.fshl.i32(i32 %add2592, i32 %add2592, i32 5), !dbg !114
  %add2636 = add i32 %or2632, -1894007588, !dbg !114
  %add2637 = add i32 %add2636, %or2495, !dbg !114
  %add2641 = add i32 %add2637, %or2599, !dbg !114
  %add2642 = add i32 %add2641, %or2640, !dbg !114
  call void @llvm.dbg.value(metadata i32 %add2642, metadata !25, metadata !DIExpression()), !dbg !43
  %or2645 = call i32 @llvm.fshl.i32(i32 %add2542, i32 %add2542, i32 30), !dbg !114
  call void @llvm.dbg.value(metadata i32 %or2645, metadata !27, metadata !DIExpression()), !dbg !43
  %or2646 = or i32 %add2592, %or2645, !dbg !115
  %and2647 = and i32 %or2646, %or2595, !dbg !115
  %and2648 = and i32 %add2592, %or2645, !dbg !115
  %or2649 = or i32 %and2647, %and2648, !dbg !115
  %xor2656 = xor i32 %or1982, %or1882, !dbg !115
  %xor2660 = xor i32 %xor2656, %or2282, !dbg !115
  %xor2664 = xor i32 %xor2660, %or2532, !dbg !115
  %or2682 = call i32 @llvm.fshl.i32(i32 %xor2664, i32 %xor2664, i32 1), !dbg !115
  %or2690 = call i32 @llvm.fshl.i32(i32 %add2642, i32 %add2642, i32 5), !dbg !115
  %add2686 = add i32 %or2682, -1894007588, !dbg !115
  %add2687 = add i32 %add2686, %or2545, !dbg !115
  %add2691 = add i32 %add2687, %or2649, !dbg !115
  %add2692 = add i32 %add2691, %or2690, !dbg !115
  call void @llvm.dbg.value(metadata i32 %add2692, metadata !24, metadata !DIExpression()), !dbg !43
  %or2695 = call i32 @llvm.fshl.i32(i32 %add2592, i32 %add2592, i32 30), !dbg !115
  call void @llvm.dbg.value(metadata i32 %or2695, metadata !26, metadata !DIExpression()), !dbg !43
  %or2696 = or i32 %add2642, %or2695, !dbg !116
  %and2697 = and i32 %or2696, %or2645, !dbg !116
  %and2698 = and i32 %add2642, %or2695, !dbg !116
  %or2699 = or i32 %and2697, %and2698, !dbg !116
  %xor2706 = xor i32 %or2032, %or1932, !dbg !116
  %xor2710 = xor i32 %xor2706, %or2332, !dbg !116
  %xor2714 = xor i32 %xor2710, %or2582, !dbg !116
  %or2732 = call i32 @llvm.fshl.i32(i32 %xor2714, i32 %xor2714, i32 1), !dbg !116
  %or2740 = call i32 @llvm.fshl.i32(i32 %add2692, i32 %add2692, i32 5), !dbg !116
  %add2736 = add i32 %or2732, -1894007588, !dbg !116
  %add2737 = add i32 %add2736, %or2595, !dbg !116
  %add2741 = add i32 %add2737, %or2699, !dbg !116
  %add2742 = add i32 %add2741, %or2740, !dbg !116
  call void @llvm.dbg.value(metadata i32 %add2742, metadata !23, metadata !DIExpression()), !dbg !43
  %or2745 = call i32 @llvm.fshl.i32(i32 %add2642, i32 %add2642, i32 30), !dbg !116
  call void @llvm.dbg.value(metadata i32 %or2745, metadata !25, metadata !DIExpression()), !dbg !43
  %xor2746 = xor i32 %or2745, %or2695, !dbg !117
  %xor2747 = xor i32 %xor2746, %add2692, !dbg !117
  %xor2754 = xor i32 %or2082, %or1982, !dbg !117
  %xor2758 = xor i32 %xor2754, %or2382, !dbg !117
  %xor2762 = xor i32 %xor2758, %or2632, !dbg !117
  %or2780 = call i32 @llvm.fshl.i32(i32 %xor2762, i32 %xor2762, i32 1), !dbg !117
  %or2788 = call i32 @llvm.fshl.i32(i32 %add2742, i32 %add2742, i32 5), !dbg !117
  %add2784 = add i32 %or2780, -899497514, !dbg !117
  %add2785 = add i32 %add2784, %or2645, !dbg !117
  %add2789 = add i32 %add2785, %xor2747, !dbg !117
  %add2790 = add i32 %add2789, %or2788, !dbg !117
  call void @llvm.dbg.value(metadata i32 %add2790, metadata !27, metadata !DIExpression()), !dbg !43
  %or2793 = call i32 @llvm.fshl.i32(i32 %add2692, i32 %add2692, i32 30), !dbg !117
  call void @llvm.dbg.value(metadata i32 %or2793, metadata !24, metadata !DIExpression()), !dbg !43
  %xor2794 = xor i32 %or2793, %or2745, !dbg !118
  %xor2795 = xor i32 %xor2794, %add2742, !dbg !118
  %xor2802 = xor i32 %or2132, %or2032, !dbg !118
  %xor2806 = xor i32 %xor2802, %or2432, !dbg !118
  %xor2810 = xor i32 %xor2806, %or2682, !dbg !118
  %or2828 = call i32 @llvm.fshl.i32(i32 %xor2810, i32 %xor2810, i32 1), !dbg !118
  %or2836 = call i32 @llvm.fshl.i32(i32 %add2790, i32 %add2790, i32 5), !dbg !118
  %add2832 = add i32 %or2828, -899497514, !dbg !118
  %add2833 = add i32 %add2832, %or2695, !dbg !118
  %add2837 = add i32 %add2833, %xor2795, !dbg !118
  %add2838 = add i32 %add2837, %or2836, !dbg !118
  call void @llvm.dbg.value(metadata i32 %add2838, metadata !26, metadata !DIExpression()), !dbg !43
  %or2841 = call i32 @llvm.fshl.i32(i32 %add2742, i32 %add2742, i32 30), !dbg !118
  call void @llvm.dbg.value(metadata i32 %or2841, metadata !23, metadata !DIExpression()), !dbg !43
  %xor2842 = xor i32 %or2841, %or2793, !dbg !119
  %xor2843 = xor i32 %xor2842, %add2790, !dbg !119
  %xor2850 = xor i32 %or2182, %or2082, !dbg !119
  %xor2854 = xor i32 %xor2850, %or2482, !dbg !119
  %xor2858 = xor i32 %xor2854, %or2732, !dbg !119
  %or2876 = call i32 @llvm.fshl.i32(i32 %xor2858, i32 %xor2858, i32 1), !dbg !119
  %or2884 = call i32 @llvm.fshl.i32(i32 %add2838, i32 %add2838, i32 5), !dbg !119
  %add2880 = add i32 %or2876, -899497514, !dbg !119
  %add2881 = add i32 %add2880, %or2745, !dbg !119
  %add2885 = add i32 %add2881, %xor2843, !dbg !119
  %add2886 = add i32 %add2885, %or2884, !dbg !119
  call void @llvm.dbg.value(metadata i32 %add2886, metadata !25, metadata !DIExpression()), !dbg !43
  %or2889 = call i32 @llvm.fshl.i32(i32 %add2790, i32 %add2790, i32 30), !dbg !119
  call void @llvm.dbg.value(metadata i32 %or2889, metadata !27, metadata !DIExpression()), !dbg !43
  %xor2890 = xor i32 %or2889, %or2841, !dbg !120
  %xor2891 = xor i32 %xor2890, %add2838, !dbg !120
  %xor2898 = xor i32 %or2232, %or2132, !dbg !120
  %xor2902 = xor i32 %xor2898, %or2532, !dbg !120
  %xor2906 = xor i32 %xor2902, %or2780, !dbg !120
  %or2924 = call i32 @llvm.fshl.i32(i32 %xor2906, i32 %xor2906, i32 1), !dbg !120
  %or2932 = call i32 @llvm.fshl.i32(i32 %add2886, i32 %add2886, i32 5), !dbg !120
  %add2928 = add i32 %or2924, -899497514, !dbg !120
  %add2929 = add i32 %add2928, %or2793, !dbg !120
  %add2933 = add i32 %add2929, %xor2891, !dbg !120
  %add2934 = add i32 %add2933, %or2932, !dbg !120
  call void @llvm.dbg.value(metadata i32 %add2934, metadata !24, metadata !DIExpression()), !dbg !43
  %or2937 = call i32 @llvm.fshl.i32(i32 %add2838, i32 %add2838, i32 30), !dbg !120
  call void @llvm.dbg.value(metadata i32 %or2937, metadata !26, metadata !DIExpression()), !dbg !43
  %xor2938 = xor i32 %or2937, %or2889, !dbg !121
  %xor2939 = xor i32 %xor2938, %add2886, !dbg !121
  %xor2946 = xor i32 %or2282, %or2182, !dbg !121
  %xor2950 = xor i32 %xor2946, %or2582, !dbg !121
  %xor2954 = xor i32 %xor2950, %or2828, !dbg !121
  %or2972 = call i32 @llvm.fshl.i32(i32 %xor2954, i32 %xor2954, i32 1), !dbg !121
  store i32 %or2972, i32* %arrayidx7, align 16, !dbg !121, !tbaa !57
  %or2980 = call i32 @llvm.fshl.i32(i32 %add2934, i32 %add2934, i32 5), !dbg !121
  %add2976 = add i32 %or2972, -899497514, !dbg !121
  %add2977 = add i32 %add2976, %or2841, !dbg !121
  %add2981 = add i32 %add2977, %xor2939, !dbg !121
  %add2982 = add i32 %add2981, %or2980, !dbg !121
  call void @llvm.dbg.value(metadata i32 %add2982, metadata !23, metadata !DIExpression()), !dbg !43
  %or2985 = call i32 @llvm.fshl.i32(i32 %add2886, i32 %add2886, i32 30), !dbg !121
  call void @llvm.dbg.value(metadata i32 %or2985, metadata !25, metadata !DIExpression()), !dbg !43
  %xor2986 = xor i32 %or2985, %or2937, !dbg !122
  %xor2987 = xor i32 %xor2986, %add2934, !dbg !122
  %xor2994 = xor i32 %or2332, %or2232, !dbg !122
  %xor2998 = xor i32 %xor2994, %or2632, !dbg !122
  %xor3002 = xor i32 %xor2998, %or2876, !dbg !122
  %or3020 = call i32 @llvm.fshl.i32(i32 %xor3002, i32 %xor3002, i32 1), !dbg !122
  store i32 %or3020, i32* %arrayidx40, align 4, !dbg !122, !tbaa !57
  %or3028 = call i32 @llvm.fshl.i32(i32 %add2982, i32 %add2982, i32 5), !dbg !122
  %add3024 = add i32 %or3020, -899497514, !dbg !122
  %add3025 = add i32 %add3024, %or2889, !dbg !122
  %add3029 = add i32 %add3025, %xor2987, !dbg !122
  %add3030 = add i32 %add3029, %or3028, !dbg !122
  call void @llvm.dbg.value(metadata i32 %add3030, metadata !27, metadata !DIExpression()), !dbg !43
  %or3033 = call i32 @llvm.fshl.i32(i32 %add2934, i32 %add2934, i32 30), !dbg !122
  call void @llvm.dbg.value(metadata i32 %or3033, metadata !24, metadata !DIExpression()), !dbg !43
  %xor3034 = xor i32 %or3033, %or2985, !dbg !123
  %xor3035 = xor i32 %xor3034, %add2982, !dbg !123
  %xor3042 = xor i32 %or2382, %or2282, !dbg !123
  %xor3046 = xor i32 %xor3042, %or2682, !dbg !123
  %xor3050 = xor i32 %xor3046, %or2924, !dbg !123
  %or3068 = call i32 @llvm.fshl.i32(i32 %xor3050, i32 %xor3050, i32 1), !dbg !123
  store i32 %or3068, i32* %arrayidx77, align 8, !dbg !123, !tbaa !57
  %or3076 = call i32 @llvm.fshl.i32(i32 %add3030, i32 %add3030, i32 5), !dbg !123
  %add3072 = add i32 %or3068, -899497514, !dbg !123
  %add3073 = add i32 %add3072, %or2937, !dbg !123
  %add3077 = add i32 %add3073, %xor3035, !dbg !123
  %add3078 = add i32 %add3077, %or3076, !dbg !123
  call void @llvm.dbg.value(metadata i32 %add3078, metadata !26, metadata !DIExpression()), !dbg !43
  %or3081 = call i32 @llvm.fshl.i32(i32 %add2982, i32 %add2982, i32 30), !dbg !123
  call void @llvm.dbg.value(metadata i32 %or3081, metadata !23, metadata !DIExpression()), !dbg !43
  %xor3082 = xor i32 %or3081, %or3033, !dbg !124
  %xor3083 = xor i32 %xor3082, %add3030, !dbg !124
  %xor3090 = xor i32 %or2432, %or2332, !dbg !124
  %xor3094 = xor i32 %xor3090, %or2732, !dbg !124
  %xor3098 = xor i32 %xor3094, %or2972, !dbg !124
  %or3116 = call i32 @llvm.fshl.i32(i32 %xor3098, i32 %xor3098, i32 1), !dbg !124
  store i32 %or3116, i32* %arrayidx114, align 4, !dbg !124, !tbaa !57
  %or3124 = call i32 @llvm.fshl.i32(i32 %add3078, i32 %add3078, i32 5), !dbg !124
  %add3120 = add i32 %or3116, -899497514, !dbg !124
  %add3121 = add i32 %add3120, %or2985, !dbg !124
  %add3125 = add i32 %add3121, %xor3083, !dbg !124
  %add3126 = add i32 %add3125, %or3124, !dbg !124
  call void @llvm.dbg.value(metadata i32 %add3126, metadata !25, metadata !DIExpression()), !dbg !43
  %or3129 = call i32 @llvm.fshl.i32(i32 %add3030, i32 %add3030, i32 30), !dbg !124
  call void @llvm.dbg.value(metadata i32 %or3129, metadata !27, metadata !DIExpression()), !dbg !43
  %xor3130 = xor i32 %or3129, %or3081, !dbg !125
  %xor3131 = xor i32 %xor3130, %add3078, !dbg !125
  %xor3138 = xor i32 %or2482, %or2382, !dbg !125
  %xor3142 = xor i32 %xor3138, %or2780, !dbg !125
  %xor3146 = xor i32 %xor3142, %or3020, !dbg !125
  %or3164 = call i32 @llvm.fshl.i32(i32 %xor3146, i32 %xor3146, i32 1), !dbg !125
  store i32 %or3164, i32* %arrayidx151, align 16, !dbg !125, !tbaa !57
  %or3172 = call i32 @llvm.fshl.i32(i32 %add3126, i32 %add3126, i32 5), !dbg !125
  %add3168 = add i32 %or3164, -899497514, !dbg !125
  %add3169 = add i32 %add3168, %or3033, !dbg !125
  %add3173 = add i32 %add3169, %xor3131, !dbg !125
  %add3174 = add i32 %add3173, %or3172, !dbg !125
  call void @llvm.dbg.value(metadata i32 %add3174, metadata !24, metadata !DIExpression()), !dbg !43
  %or3177 = call i32 @llvm.fshl.i32(i32 %add3078, i32 %add3078, i32 30), !dbg !125
  call void @llvm.dbg.value(metadata i32 %or3177, metadata !26, metadata !DIExpression()), !dbg !43
  %xor3178 = xor i32 %or3177, %or3129, !dbg !126
  %xor3179 = xor i32 %xor3178, %add3126, !dbg !126
  %xor3186 = xor i32 %or2532, %or2432, !dbg !126
  %xor3190 = xor i32 %xor3186, %or2828, !dbg !126
  %xor3194 = xor i32 %xor3190, %or3068, !dbg !126
  %or3212 = call i32 @llvm.fshl.i32(i32 %xor3194, i32 %xor3194, i32 1), !dbg !126
  store i32 %or3212, i32* %arrayidx188, align 4, !dbg !126, !tbaa !57
  %or3220 = call i32 @llvm.fshl.i32(i32 %add3174, i32 %add3174, i32 5), !dbg !126
  %add3216 = add i32 %or3212, -899497514, !dbg !126
  %add3217 = add i32 %add3216, %or3081, !dbg !126
  %add3221 = add i32 %add3217, %xor3179, !dbg !126
  %add3222 = add i32 %add3221, %or3220, !dbg !126
  call void @llvm.dbg.value(metadata i32 %add3222, metadata !23, metadata !DIExpression()), !dbg !43
  %or3225 = call i32 @llvm.fshl.i32(i32 %add3126, i32 %add3126, i32 30), !dbg !126
  call void @llvm.dbg.value(metadata i32 %or3225, metadata !25, metadata !DIExpression()), !dbg !43
  %xor3226 = xor i32 %or3225, %or3177, !dbg !127
  %xor3227 = xor i32 %xor3226, %add3174, !dbg !127
  %xor3234 = xor i32 %or2582, %or2482, !dbg !127
  %xor3238 = xor i32 %xor3234, %or2876, !dbg !127
  %xor3242 = xor i32 %xor3238, %or3116, !dbg !127
  %or3260 = call i32 @llvm.fshl.i32(i32 %xor3242, i32 %xor3242, i32 1), !dbg !127
  store i32 %or3260, i32* %arrayidx225, align 8, !dbg !127, !tbaa !57
  %or3268 = call i32 @llvm.fshl.i32(i32 %add3222, i32 %add3222, i32 5), !dbg !127
  %add3264 = add i32 %or3260, -899497514, !dbg !127
  %add3265 = add i32 %add3264, %or3129, !dbg !127
  %add3269 = add i32 %add3265, %xor3227, !dbg !127
  %add3270 = add i32 %add3269, %or3268, !dbg !127
  call void @llvm.dbg.value(metadata i32 %add3270, metadata !27, metadata !DIExpression()), !dbg !43
  %or3273 = call i32 @llvm.fshl.i32(i32 %add3174, i32 %add3174, i32 30), !dbg !127
  call void @llvm.dbg.value(metadata i32 %or3273, metadata !24, metadata !DIExpression()), !dbg !43
  %xor3274 = xor i32 %or3273, %or3225, !dbg !128
  %xor3275 = xor i32 %xor3274, %add3222, !dbg !128
  %xor3282 = xor i32 %or2632, %or2532, !dbg !128
  %xor3286 = xor i32 %xor3282, %or2924, !dbg !128
  %xor3290 = xor i32 %xor3286, %or3164, !dbg !128
  %or3308 = call i32 @llvm.fshl.i32(i32 %xor3290, i32 %xor3290, i32 1), !dbg !128
  store i32 %or3308, i32* %arrayidx262, align 4, !dbg !128, !tbaa !57
  %or3316 = call i32 @llvm.fshl.i32(i32 %add3270, i32 %add3270, i32 5), !dbg !128
  %add3312 = add i32 %or3308, -899497514, !dbg !128
  %add3313 = add i32 %add3312, %or3177, !dbg !128
  %add3317 = add i32 %add3313, %xor3275, !dbg !128
  %add3318 = add i32 %add3317, %or3316, !dbg !128
  call void @llvm.dbg.value(metadata i32 %add3318, metadata !26, metadata !DIExpression()), !dbg !43
  %or3321 = call i32 @llvm.fshl.i32(i32 %add3222, i32 %add3222, i32 30), !dbg !128
  call void @llvm.dbg.value(metadata i32 %or3321, metadata !23, metadata !DIExpression()), !dbg !43
  %xor3322 = xor i32 %or3321, %or3273, !dbg !129
  %xor3323 = xor i32 %xor3322, %add3270, !dbg !129
  %xor3330 = xor i32 %or2682, %or2582, !dbg !129
  %xor3334 = xor i32 %xor3330, %or2972, !dbg !129
  %xor3338 = xor i32 %xor3334, %or3212, !dbg !129
  %or3356 = call i32 @llvm.fshl.i32(i32 %xor3338, i32 %xor3338, i32 1), !dbg !129
  store i32 %or3356, i32* %arrayidx299, align 16, !dbg !129, !tbaa !57
  %or3364 = call i32 @llvm.fshl.i32(i32 %add3318, i32 %add3318, i32 5), !dbg !129
  %add3360 = add i32 %or3356, -899497514, !dbg !129
  %add3361 = add i32 %add3360, %or3225, !dbg !129
  %add3365 = add i32 %add3361, %xor3323, !dbg !129
  %add3366 = add i32 %add3365, %or3364, !dbg !129
  call void @llvm.dbg.value(metadata i32 %add3366, metadata !25, metadata !DIExpression()), !dbg !43
  %or3369 = call i32 @llvm.fshl.i32(i32 %add3270, i32 %add3270, i32 30), !dbg !129
  call void @llvm.dbg.value(metadata i32 %or3369, metadata !27, metadata !DIExpression()), !dbg !43
  %xor3370 = xor i32 %or3369, %or3321, !dbg !130
  %xor3371 = xor i32 %xor3370, %add3318, !dbg !130
  %xor3378 = xor i32 %or2732, %or2632, !dbg !130
  %xor3382 = xor i32 %xor3378, %or3020, !dbg !130
  %xor3386 = xor i32 %xor3382, %or3260, !dbg !130
  %or3404 = call i32 @llvm.fshl.i32(i32 %xor3386, i32 %xor3386, i32 1), !dbg !130
  store i32 %or3404, i32* %arrayidx336, align 4, !dbg !130, !tbaa !57
  %or3412 = call i32 @llvm.fshl.i32(i32 %add3366, i32 %add3366, i32 5), !dbg !130
  %add3408 = add i32 %or3404, -899497514, !dbg !130
  %add3409 = add i32 %add3408, %or3273, !dbg !130
  %add3413 = add i32 %add3409, %xor3371, !dbg !130
  %add3414 = add i32 %add3413, %or3412, !dbg !130
  call void @llvm.dbg.value(metadata i32 %add3414, metadata !24, metadata !DIExpression()), !dbg !43
  %or3417 = call i32 @llvm.fshl.i32(i32 %add3318, i32 %add3318, i32 30), !dbg !130
  call void @llvm.dbg.value(metadata i32 %or3417, metadata !26, metadata !DIExpression()), !dbg !43
  %xor3418 = xor i32 %or3417, %or3369, !dbg !131
  %xor3419 = xor i32 %xor3418, %add3366, !dbg !131
  %xor3426 = xor i32 %or2780, %or2682, !dbg !131
  %xor3430 = xor i32 %xor3426, %or3068, !dbg !131
  %xor3434 = xor i32 %xor3430, %or3308, !dbg !131
  %or3452 = call i32 @llvm.fshl.i32(i32 %xor3434, i32 %xor3434, i32 1), !dbg !131
  store i32 %or3452, i32* %arrayidx373, align 8, !dbg !131, !tbaa !57
  %or3460 = call i32 @llvm.fshl.i32(i32 %add3414, i32 %add3414, i32 5), !dbg !131
  %add3456 = add i32 %or3452, -899497514, !dbg !131
  %add3457 = add i32 %add3456, %or3321, !dbg !131
  %add3461 = add i32 %add3457, %xor3419, !dbg !131
  %add3462 = add i32 %add3461, %or3460, !dbg !131
  call void @llvm.dbg.value(metadata i32 %add3462, metadata !23, metadata !DIExpression()), !dbg !43
  %or3465 = call i32 @llvm.fshl.i32(i32 %add3366, i32 %add3366, i32 30), !dbg !131
  call void @llvm.dbg.value(metadata i32 %or3465, metadata !25, metadata !DIExpression()), !dbg !43
  %xor3466 = xor i32 %or3465, %or3417, !dbg !132
  %xor3467 = xor i32 %xor3466, %add3414, !dbg !132
  %xor3474 = xor i32 %or2828, %or2732, !dbg !132
  %xor3478 = xor i32 %xor3474, %or3116, !dbg !132
  %xor3482 = xor i32 %xor3478, %or3356, !dbg !132
  %or3500 = call i32 @llvm.fshl.i32(i32 %xor3482, i32 %xor3482, i32 1), !dbg !132
  store i32 %or3500, i32* %arrayidx410, align 4, !dbg !132, !tbaa !57
  %or3508 = call i32 @llvm.fshl.i32(i32 %add3462, i32 %add3462, i32 5), !dbg !132
  %add3504 = add i32 %or3500, -899497514, !dbg !132
  %add3505 = add i32 %add3504, %or3369, !dbg !132
  %add3509 = add i32 %add3505, %xor3467, !dbg !132
  %add3510 = add i32 %add3509, %or3508, !dbg !132
  call void @llvm.dbg.value(metadata i32 %add3510, metadata !27, metadata !DIExpression()), !dbg !43
  %or3513 = call i32 @llvm.fshl.i32(i32 %add3414, i32 %add3414, i32 30), !dbg !132
  call void @llvm.dbg.value(metadata i32 %or3513, metadata !24, metadata !DIExpression()), !dbg !43
  %xor3514 = xor i32 %or3513, %or3465, !dbg !133
  %xor3515 = xor i32 %xor3514, %add3462, !dbg !133
  %xor3522 = xor i32 %or2876, %or2780, !dbg !133
  %xor3526 = xor i32 %xor3522, %or3164, !dbg !133
  %xor3530 = xor i32 %xor3526, %or3404, !dbg !133
  %or3548 = call i32 @llvm.fshl.i32(i32 %xor3530, i32 %xor3530, i32 1), !dbg !133
  store i32 %or3548, i32* %arrayidx447, align 16, !dbg !133, !tbaa !57
  %or3556 = call i32 @llvm.fshl.i32(i32 %add3510, i32 %add3510, i32 5), !dbg !133
  %add3552 = add i32 %or3548, -899497514, !dbg !133
  %add3553 = add i32 %add3552, %or3417, !dbg !133
  %add3557 = add i32 %add3553, %xor3515, !dbg !133
  %add3558 = add i32 %add3557, %or3556, !dbg !133
  call void @llvm.dbg.value(metadata i32 %add3558, metadata !26, metadata !DIExpression()), !dbg !43
  %or3561 = call i32 @llvm.fshl.i32(i32 %add3462, i32 %add3462, i32 30), !dbg !133
  call void @llvm.dbg.value(metadata i32 %or3561, metadata !23, metadata !DIExpression()), !dbg !43
  %xor3562 = xor i32 %or3561, %or3513, !dbg !134
  %xor3563 = xor i32 %xor3562, %add3510, !dbg !134
  %xor3570 = xor i32 %or2924, %or2828, !dbg !134
  %xor3574 = xor i32 %xor3570, %or3212, !dbg !134
  %xor3578 = xor i32 %xor3574, %or3452, !dbg !134
  %or3596 = call i32 @llvm.fshl.i32(i32 %xor3578, i32 %xor3578, i32 1), !dbg !134
  store i32 %or3596, i32* %arrayidx484, align 4, !dbg !134, !tbaa !57
  %or3604 = call i32 @llvm.fshl.i32(i32 %add3558, i32 %add3558, i32 5), !dbg !134
  %add3600 = add i32 %or3596, -899497514, !dbg !134
  %add3601 = add i32 %add3600, %or3465, !dbg !134
  %add3605 = add i32 %add3601, %xor3563, !dbg !134
  %add3606 = add i32 %add3605, %or3604, !dbg !134
  call void @llvm.dbg.value(metadata i32 %add3606, metadata !25, metadata !DIExpression()), !dbg !43
  %or3609 = call i32 @llvm.fshl.i32(i32 %add3510, i32 %add3510, i32 30), !dbg !134
  call void @llvm.dbg.value(metadata i32 %or3609, metadata !27, metadata !DIExpression()), !dbg !43
  %xor3610 = xor i32 %or3609, %or3561, !dbg !135
  %xor3611 = xor i32 %xor3610, %add3558, !dbg !135
  %xor3618 = xor i32 %or2972, %or2876, !dbg !135
  %xor3622 = xor i32 %xor3618, %or3260, !dbg !135
  %xor3626 = xor i32 %xor3622, %or3500, !dbg !135
  %or3644 = call i32 @llvm.fshl.i32(i32 %xor3626, i32 %xor3626, i32 1), !dbg !135
  store i32 %or3644, i32* %arrayidx521, align 8, !dbg !135, !tbaa !57
  %or3652 = call i32 @llvm.fshl.i32(i32 %add3606, i32 %add3606, i32 5), !dbg !135
  %add3648 = add i32 %or3644, -899497514, !dbg !135
  %add3649 = add i32 %add3648, %or3513, !dbg !135
  %add3653 = add i32 %add3649, %xor3611, !dbg !135
  %add3654 = add i32 %add3653, %or3652, !dbg !135
  call void @llvm.dbg.value(metadata i32 %add3654, metadata !24, metadata !DIExpression()), !dbg !43
  %or3657 = call i32 @llvm.fshl.i32(i32 %add3558, i32 %add3558, i32 30), !dbg !135
  call void @llvm.dbg.value(metadata i32 %or3657, metadata !26, metadata !DIExpression()), !dbg !43
  %xor3658 = xor i32 %or3657, %or3609, !dbg !136
  %xor3659 = xor i32 %xor3658, %add3606, !dbg !136
  %xor3666 = xor i32 %or3020, %or2924, !dbg !136
  %xor3670 = xor i32 %xor3666, %or3308, !dbg !136
  %xor3674 = xor i32 %xor3670, %or3548, !dbg !136
  %or3692 = call i32 @llvm.fshl.i32(i32 %xor3674, i32 %xor3674, i32 1), !dbg !136
  store i32 %or3692, i32* %arrayidx558, align 4, !dbg !136, !tbaa !57
  %or3700 = call i32 @llvm.fshl.i32(i32 %add3654, i32 %add3654, i32 5), !dbg !136
  call void @llvm.dbg.value(metadata i32 undef, metadata !23, metadata !DIExpression()), !dbg !43
  %or3705 = call i32 @llvm.fshl.i32(i32 %add3606, i32 %add3606, i32 30), !dbg !136
  call void @llvm.dbg.value(metadata i32 %or3705, metadata !25, metadata !DIExpression()), !dbg !43
  %add3696 = add i32 %1, -899497514, !dbg !136
  %add3697 = add i32 %add3696, %or3692, !dbg !136
  %add3701 = add i32 %add3697, %or3561, !dbg !136
  %add3702 = add i32 %add3701, %xor3659, !dbg !136
  %add3707 = add i32 %add3702, %or3700, !dbg !137
  store i32 %add3707, i32* %state, align 4, !dbg !137, !tbaa !48
  %add3709 = add i32 %add3654, %2, !dbg !138
  store i32 %add3709, i32* %arrayidx1, align 4, !dbg !138, !tbaa !48
  %add3711 = add i32 %or3705, %3, !dbg !139
  store i32 %add3711, i32* %arrayidx2, align 4, !dbg !139, !tbaa !48
  %add3713 = add i32 %or3657, %4, !dbg !140
  store i32 %add3713, i32* %arrayidx3, align 4, !dbg !140, !tbaa !48
  %add3715 = add i32 %or3609, %5, !dbg !141
  store i32 %add3715, i32* %arrayidx4, align 4, !dbg !141, !tbaa !48
  call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i32 0, metadata !24, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i32 0, metadata !23, metadata !DIExpression()), !dbg !43
  %call3717 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 64) #7, !dbg !142
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !143
  ret void, !dbg !143
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare !dbg !144 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !157 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @SHA1Init(%struct.SHA1_CTX* nocapture noundef writeonly %context) local_unnamed_addr #4 !dbg !161 {
entry:
  call void @llvm.dbg.value(metadata %struct.SHA1_CTX* %context, metadata !179, metadata !DIExpression()), !dbg !180
  %0 = bitcast %struct.SHA1_CTX* %context to <4 x i32>*, !dbg !181
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %0, align 4, !dbg !181, !tbaa !48
  %arrayidx8 = getelementptr inbounds %struct.SHA1_CTX, %struct.SHA1_CTX* %context, i64 0, i32 0, i64 4, !dbg !182
  store i32 -1009589776, i32* %arrayidx8, align 4, !dbg !183, !tbaa !48
  %arrayidx9 = getelementptr inbounds %struct.SHA1_CTX, %struct.SHA1_CTX* %context, i64 0, i32 1, i64 1, !dbg !184
  store i32 0, i32* %arrayidx9, align 4, !dbg !185, !tbaa !48
  %arrayidx11 = getelementptr inbounds %struct.SHA1_CTX, %struct.SHA1_CTX* %context, i64 0, i32 1, i64 0, !dbg !186
  store i32 0, i32* %arrayidx11, align 4, !dbg !187, !tbaa !48
  ret void, !dbg !188
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SHA1Update(%struct.SHA1_CTX* noundef %context, i8* noundef %data, i32 noundef %len) local_unnamed_addr #0 !dbg !189 {
entry:
  call void @llvm.dbg.value(metadata %struct.SHA1_CTX* %context, metadata !193, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata i8* %data, metadata !194, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata i32 %len, metadata !195, metadata !DIExpression()), !dbg !198
  %arrayidx = getelementptr inbounds %struct.SHA1_CTX, %struct.SHA1_CTX* %context, i64 0, i32 1, i64 0, !dbg !199
  %0 = load i32, i32* %arrayidx, align 4, !dbg !199, !tbaa !48
  call void @llvm.dbg.value(metadata i32 %0, metadata !197, metadata !DIExpression()), !dbg !198
  %shl = shl i32 %len, 3, !dbg !200
  %add = add i32 %0, %shl, !dbg !202
  store i32 %add, i32* %arrayidx, align 4, !dbg !202, !tbaa !48
  %cmp = icmp ult i32 %add, %0, !dbg !203
  %arrayidx4 = getelementptr inbounds %struct.SHA1_CTX, %struct.SHA1_CTX* %context, i64 0, i32 1, i64 1
  %1 = load i32, i32* %arrayidx4, align 4, !dbg !198, !tbaa !48
  %inc = zext i1 %cmp to i32, !dbg !204
  %2 = add i32 %1, %inc, !dbg !204
  %shr = lshr i32 %len, 29, !dbg !205
  %arrayidx6 = getelementptr inbounds %struct.SHA1_CTX, %struct.SHA1_CTX* %context, i64 0, i32 1, i64 1, !dbg !206
  %add7 = add i32 %2, %shr, !dbg !207
  store i32 %add7, i32* %arrayidx6, align 4, !dbg !207, !tbaa !48
  %shr8 = lshr i32 %0, 3, !dbg !208
  %and = and i32 %shr8, 63, !dbg !209
  call void @llvm.dbg.value(metadata i32 %and, metadata !197, metadata !DIExpression()), !dbg !198
  %add9 = add i32 %and, %len, !dbg !210
  %cmp10 = icmp ugt i32 %add9, 63, !dbg !212
  %idxprom = zext i32 %and to i64
  br i1 %cmp10, label %if.then11, label %if.end23, !dbg !213

if.then11:                                        ; preds = %entry
  %arrayidx12 = getelementptr inbounds %struct.SHA1_CTX, %struct.SHA1_CTX* %context, i64 0, i32 2, i64 %idxprom, !dbg !214
  %sub = sub nuw nsw i32 64, %and, !dbg !216
  call void @llvm.dbg.value(metadata i32 %sub, metadata !196, metadata !DIExpression()), !dbg !198
  %conv = zext i32 %sub to i64, !dbg !217
  %call = tail call i8* @memcpy(i8* noundef nonnull %arrayidx12, i8* noundef %data, i64 noundef %conv) #7, !dbg !218
  %arraydecay = getelementptr inbounds %struct.SHA1_CTX, %struct.SHA1_CTX* %context, i64 0, i32 0, i64 0, !dbg !219
  %arraydecay14 = getelementptr inbounds %struct.SHA1_CTX, %struct.SHA1_CTX* %context, i64 0, i32 2, i64 0, !dbg !220
  tail call void @SHA1Transform(i32* noundef %arraydecay, i8* noundef nonnull %arraydecay14) #8, !dbg !221
  call void @llvm.dbg.value(metadata i32 %sub, metadata !196, metadata !DIExpression()), !dbg !198
  %add1557 = xor i32 %and, 127, !dbg !222
  %cmp1658 = icmp ult i32 %add1557, %len, !dbg !225
  br i1 %cmp1658, label %for.body, label %if.end23, !dbg !226

for.body:                                         ; preds = %if.then11, %for.body
  %i.059 = phi i32 [ %add22, %for.body ], [ %sub, %if.then11 ]
  call void @llvm.dbg.value(metadata i32 %i.059, metadata !196, metadata !DIExpression()), !dbg !198
  %idxprom20 = zext i32 %i.059 to i64, !dbg !227
  %arrayidx21 = getelementptr inbounds i8, i8* %data, i64 %idxprom20, !dbg !227
  tail call void @SHA1Transform(i32* noundef %arraydecay, i8* noundef %arrayidx21) #8, !dbg !229
  %add22 = add i32 %i.059, 64, !dbg !230
  call void @llvm.dbg.value(metadata i32 %add22, metadata !196, metadata !DIExpression()), !dbg !198
  %add15 = add i32 %i.059, 127, !dbg !222
  %cmp16 = icmp ult i32 %add15, %len, !dbg !225
  br i1 %cmp16, label %for.body, label %if.end23, !dbg !226, !llvm.loop !231

if.end23:                                         ; preds = %for.body, %entry, %if.then11
  %i.1 = phi i32 [ %sub, %if.then11 ], [ 0, %entry ], [ %add22, %for.body ], !dbg !233
  %j.0 = phi i64 [ 0, %if.then11 ], [ %idxprom, %entry ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !196, metadata !DIExpression()), !dbg !198
  %arrayidx26 = getelementptr inbounds %struct.SHA1_CTX, %struct.SHA1_CTX* %context, i64 0, i32 2, i64 %j.0, !dbg !234
  %idxprom27 = zext i32 %i.1 to i64, !dbg !235
  %arrayidx28 = getelementptr inbounds i8, i8* %data, i64 %idxprom27, !dbg !235
  %sub29 = sub i32 %len, %i.1, !dbg !236
  %conv30 = zext i32 %sub29 to i64, !dbg !237
  %call31 = tail call i8* @memcpy(i8* noundef nonnull %arrayidx26, i8* noundef %arrayidx28, i64 noundef %conv30) #7, !dbg !238
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SHA1Final(i8* nocapture noundef writeonly %digest, %struct.SHA1_CTX* noundef %context) local_unnamed_addr #0 !dbg !240 {
entry:
  %finalcount = alloca [8 x i8], align 1
  %c = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8* %digest, metadata !245, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata %struct.SHA1_CTX* %context, metadata !246, metadata !DIExpression()), !dbg !253
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %finalcount, i64 0, i64 0, !dbg !254
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6, !dbg !254
  call void @llvm.dbg.declare(metadata [8 x i8]* %finalcount, metadata !248, metadata !DIExpression()), !dbg !255
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #6, !dbg !256
  call void @llvm.dbg.value(metadata i32 0, metadata !247, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 0, metadata !247, metadata !DIExpression()), !dbg !253
  %arrayidx = getelementptr inbounds %struct.SHA1_CTX, %struct.SHA1_CTX* %context, i64 0, i32 1, i64 1, !dbg !257
  %1 = load i32, i32* %arrayidx, align 4, !dbg !257, !tbaa !48
  %shr = lshr i32 %1, 24, !dbg !261
  %conv = trunc i32 %shr to i8, !dbg !262
  store i8 %conv, i8* %0, align 1, !dbg !263, !tbaa !57
  call void @llvm.dbg.value(metadata i64 1, metadata !247, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 1, metadata !247, metadata !DIExpression()), !dbg !253
  %shr.1 = lshr i32 %1, 16, !dbg !261
  %conv.1 = trunc i32 %shr.1 to i8, !dbg !262
  %arrayidx4.1 = getelementptr inbounds [8 x i8], [8 x i8]* %finalcount, i64 0, i64 1, !dbg !264
  store i8 %conv.1, i8* %arrayidx4.1, align 1, !dbg !263, !tbaa !57
  call void @llvm.dbg.value(metadata i64 2, metadata !247, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 2, metadata !247, metadata !DIExpression()), !dbg !253
  %shr.2 = lshr i32 %1, 8, !dbg !261
  %conv.2 = trunc i32 %shr.2 to i8, !dbg !262
  %arrayidx4.2 = getelementptr inbounds [8 x i8], [8 x i8]* %finalcount, i64 0, i64 2, !dbg !264
  store i8 %conv.2, i8* %arrayidx4.2, align 1, !dbg !263, !tbaa !57
  call void @llvm.dbg.value(metadata i64 3, metadata !247, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 3, metadata !247, metadata !DIExpression()), !dbg !253
  %conv.3 = trunc i32 %1 to i8, !dbg !262
  %arrayidx4.3 = getelementptr inbounds [8 x i8], [8 x i8]* %finalcount, i64 0, i64 3, !dbg !264
  store i8 %conv.3, i8* %arrayidx4.3, align 1, !dbg !263, !tbaa !57
  call void @llvm.dbg.value(metadata i64 4, metadata !247, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 4, metadata !247, metadata !DIExpression()), !dbg !253
  %arrayidx.4 = getelementptr inbounds %struct.SHA1_CTX, %struct.SHA1_CTX* %context, i64 0, i32 1, i64 0, !dbg !257
  %2 = load i32, i32* %arrayidx.4, align 4, !dbg !257, !tbaa !48
  %shr.4 = lshr i32 %2, 24, !dbg !261
  %conv.4 = trunc i32 %shr.4 to i8, !dbg !262
  %arrayidx4.4 = getelementptr inbounds [8 x i8], [8 x i8]* %finalcount, i64 0, i64 4, !dbg !264
  store i8 %conv.4, i8* %arrayidx4.4, align 1, !dbg !263, !tbaa !57
  call void @llvm.dbg.value(metadata i64 5, metadata !247, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 5, metadata !247, metadata !DIExpression()), !dbg !253
  %shr.5 = lshr i32 %2, 16, !dbg !261
  %conv.5 = trunc i32 %shr.5 to i8, !dbg !262
  %arrayidx4.5 = getelementptr inbounds [8 x i8], [8 x i8]* %finalcount, i64 0, i64 5, !dbg !264
  store i8 %conv.5, i8* %arrayidx4.5, align 1, !dbg !263, !tbaa !57
  call void @llvm.dbg.value(metadata i64 6, metadata !247, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 6, metadata !247, metadata !DIExpression()), !dbg !253
  %shr.6 = lshr i32 %2, 8, !dbg !261
  %conv.6 = trunc i32 %shr.6 to i8, !dbg !262
  %arrayidx4.6 = getelementptr inbounds [8 x i8], [8 x i8]* %finalcount, i64 0, i64 6, !dbg !264
  store i8 %conv.6, i8* %arrayidx4.6, align 1, !dbg !263, !tbaa !57
  call void @llvm.dbg.value(metadata i64 7, metadata !247, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 7, metadata !247, metadata !DIExpression()), !dbg !253
  %conv.7 = trunc i32 %2 to i8, !dbg !262
  %arrayidx4.7 = getelementptr inbounds [8 x i8], [8 x i8]* %finalcount, i64 0, i64 7, !dbg !264
  store i8 %conv.7, i8* %arrayidx4.7, align 1, !dbg !263, !tbaa !57
  call void @llvm.dbg.value(metadata i64 8, metadata !247, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i8 -128, metadata !252, metadata !DIExpression()), !dbg !253
  store i8 -128, i8* %c, align 1, !dbg !265, !tbaa !57
  call void @llvm.dbg.value(metadata i8* %c, metadata !252, metadata !DIExpression(DW_OP_deref)), !dbg !253
  call void @SHA1Update(%struct.SHA1_CTX* noundef %context, i8* noundef nonnull %c, i32 noundef 1) #8, !dbg !266
  %3 = load i32, i32* %arrayidx.4, align 4, !dbg !267, !tbaa !48
  %and746 = and i32 %3, 504, !dbg !268
  %cmp8.not47 = icmp eq i32 %and746, 448, !dbg !269
  br i1 %cmp8.not47, label %while.end, label %while.body, !dbg !270

while.body:                                       ; preds = %entry, %while.body
  call void @llvm.dbg.value(metadata i8 0, metadata !252, metadata !DIExpression()), !dbg !253
  store i8 0, i8* %c, align 1, !dbg !271, !tbaa !57
  call void @llvm.dbg.value(metadata i8* %c, metadata !252, metadata !DIExpression(DW_OP_deref)), !dbg !253
  call void @SHA1Update(%struct.SHA1_CTX* noundef nonnull %context, i8* noundef nonnull %c, i32 noundef 1) #8, !dbg !273
  %4 = load i32, i32* %arrayidx.4, align 4, !dbg !267, !tbaa !48
  %and7 = and i32 %4, 504, !dbg !268
  %cmp8.not = icmp eq i32 %and7, 448, !dbg !269
  br i1 %cmp8.not, label %while.end, label %while.body, !dbg !270, !llvm.loop !274

while.end:                                        ; preds = %while.body, %entry
  call void @SHA1Update(%struct.SHA1_CTX* noundef nonnull %context, i8* noundef nonnull %0, i32 noundef 8) #8, !dbg !276
  call void @llvm.dbg.value(metadata i32 0, metadata !247, metadata !DIExpression()), !dbg !253
  br label %for.body13, !dbg !277

for.body13:                                       ; preds = %for.body13, %while.end
  %indvars.iv = phi i64 [ 0, %while.end ], [ %indvars.iv.next.1, %for.body13 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !247, metadata !DIExpression()), !dbg !253
  %shr14 = lshr i64 %indvars.iv, 2, !dbg !279
  %idxprom15 = and i64 %shr14, 1073741823, !dbg !282
  %arrayidx16 = getelementptr inbounds %struct.SHA1_CTX, %struct.SHA1_CTX* %context, i64 0, i32 0, i64 %idxprom15, !dbg !282
  %5 = load i32, i32* %arrayidx16, align 4, !dbg !282, !tbaa !48
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !283
  %6 = shl i32 %indvars.iv.tr, 3, !dbg !283
  %sub18 = and i32 %6, 16, !dbg !283
  %mul19 = xor i32 %sub18, 24, !dbg !283
  %shr20 = lshr i32 %5, %mul19, !dbg !284
  %conv22 = trunc i32 %shr20 to i8, !dbg !285
  %arrayidx24 = getelementptr inbounds i8, i8* %digest, i64 %indvars.iv, !dbg !286
  store i8 %conv22, i8* %arrayidx24, align 1, !dbg !287, !tbaa !57
  %indvars.iv.next = or i64 %indvars.iv, 1, !dbg !288
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !247, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !253
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !247, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !253
  %shr14.1 = lshr i64 %indvars.iv, 2, !dbg !279
  %idxprom15.1 = and i64 %shr14.1, 1073741823, !dbg !282
  %arrayidx16.1 = getelementptr inbounds %struct.SHA1_CTX, %struct.SHA1_CTX* %context, i64 0, i32 0, i64 %idxprom15.1, !dbg !282
  %7 = load i32, i32* %arrayidx16.1, align 4, !dbg !282, !tbaa !48
  %indvars.iv.tr.1 = trunc i64 %indvars.iv to i32, !dbg !283
  %8 = shl i32 %indvars.iv.tr.1, 3, !dbg !283
  %9 = and i32 %8, 16, !dbg !283
  %10 = xor i32 %9, 16, !dbg !283
  %shr20.1 = lshr i32 %7, %10, !dbg !284
  %conv22.1 = trunc i32 %shr20.1 to i8, !dbg !285
  %arrayidx24.1 = getelementptr inbounds i8, i8* %digest, i64 %indvars.iv.next, !dbg !286
  store i8 %conv22.1, i8* %arrayidx24.1, align 1, !dbg !287, !tbaa !57
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !288
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !247, metadata !DIExpression()), !dbg !253
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 20, !dbg !289
  br i1 %exitcond.not.1, label %for.end27, label %for.body13, !dbg !277, !llvm.loop !290

for.end27:                                        ; preds = %for.body13
  %11 = bitcast %struct.SHA1_CTX* %context to i8*, !dbg !292
  %call = call i8* @memset(i8* noundef %11, i32 noundef 0, i64 noundef 92) #7, !dbg !293
  %call28 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 8) #7, !dbg !294
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #6, !dbg !295
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6, !dbg !295
  ret void, !dbg !295
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "sha1.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "66417f89be8431adb6ae5726d0d4cbc6")
!2 = !{!3}
!3 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 14.0.0"}
!9 = distinct !DISubprogram(name: "SHA1Transform", scope: !1, file: !1, line: 106, type: !10, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !18}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int32_t", file: !14, line: 160, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 42, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28}
!21 = !DILocalVariable(name: "state", arg: 1, scope: !9, file: !1, line: 106, type: !12)
!22 = !DILocalVariable(name: "buffer", arg: 2, scope: !9, file: !1, line: 106, type: !18)
!23 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 108, type: !13)
!24 = !DILocalVariable(name: "b", scope: !9, file: !1, line: 108, type: !13)
!25 = !DILocalVariable(name: "c", scope: !9, file: !1, line: 108, type: !13)
!26 = !DILocalVariable(name: "d", scope: !9, file: !1, line: 108, type: !13)
!27 = !DILocalVariable(name: "e", scope: !9, file: !1, line: 108, type: !13)
!28 = !DILocalVariable(name: "block", scope: !9, file: !1, line: 114, type: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !41)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR64LONG16", scope: !9, file: !1, line: 112, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !9, file: !1, line: 109, size: 512, elements: !32)
!32 = !{!33, !37}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !31, file: !1, line: 110, baseType: !34, size: 512)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 512, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !31, file: !1, line: 111, baseType: !38, size: 512)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 16)
!41 = !{!42}
!42 = !DISubrange(count: 1)
!43 = !DILocation(line: 0, scope: !9)
!44 = !DILocation(line: 114, column: 1, scope: !9)
!45 = !DILocation(line: 114, column: 14, scope: !9)
!46 = !DILocation(line: 115, column: 5, scope: !9)
!47 = !DILocation(line: 125, column: 9, scope: !9)
!48 = !{!49, !49, i64 0}
!49 = !{!"int", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !DILocation(line: 126, column: 9, scope: !9)
!53 = !DILocation(line: 127, column: 9, scope: !9)
!54 = !DILocation(line: 128, column: 9, scope: !9)
!55 = !DILocation(line: 129, column: 9, scope: !9)
!56 = !DILocation(line: 131, column: 5, scope: !9)
!57 = !{!50, !50, i64 0}
!58 = !DILocation(line: 131, column: 23, scope: !9)
!59 = !DILocation(line: 131, column: 41, scope: !9)
!60 = !DILocation(line: 131, column: 59, scope: !9)
!61 = !DILocation(line: 132, column: 5, scope: !9)
!62 = !DILocation(line: 132, column: 23, scope: !9)
!63 = !DILocation(line: 132, column: 41, scope: !9)
!64 = !DILocation(line: 132, column: 59, scope: !9)
!65 = !DILocation(line: 133, column: 5, scope: !9)
!66 = !DILocation(line: 133, column: 23, scope: !9)
!67 = !DILocation(line: 133, column: 41, scope: !9)
!68 = !DILocation(line: 133, column: 59, scope: !9)
!69 = !DILocation(line: 134, column: 5, scope: !9)
!70 = !DILocation(line: 134, column: 23, scope: !9)
!71 = !DILocation(line: 134, column: 41, scope: !9)
!72 = !DILocation(line: 134, column: 59, scope: !9)
!73 = !DILocation(line: 135, column: 5, scope: !9)
!74 = !DILocation(line: 135, column: 23, scope: !9)
!75 = !DILocation(line: 135, column: 41, scope: !9)
!76 = !DILocation(line: 135, column: 59, scope: !9)
!77 = !DILocation(line: 136, column: 5, scope: !9)
!78 = !DILocation(line: 136, column: 23, scope: !9)
!79 = !DILocation(line: 136, column: 41, scope: !9)
!80 = !DILocation(line: 136, column: 59, scope: !9)
!81 = !DILocation(line: 137, column: 5, scope: !9)
!82 = !DILocation(line: 137, column: 23, scope: !9)
!83 = !DILocation(line: 137, column: 41, scope: !9)
!84 = !DILocation(line: 137, column: 59, scope: !9)
!85 = !DILocation(line: 138, column: 5, scope: !9)
!86 = !DILocation(line: 138, column: 23, scope: !9)
!87 = !DILocation(line: 138, column: 41, scope: !9)
!88 = !DILocation(line: 138, column: 59, scope: !9)
!89 = !DILocation(line: 139, column: 5, scope: !9)
!90 = !DILocation(line: 139, column: 23, scope: !9)
!91 = !DILocation(line: 139, column: 41, scope: !9)
!92 = !DILocation(line: 139, column: 59, scope: !9)
!93 = !DILocation(line: 140, column: 5, scope: !9)
!94 = !DILocation(line: 140, column: 23, scope: !9)
!95 = !DILocation(line: 140, column: 41, scope: !9)
!96 = !DILocation(line: 140, column: 59, scope: !9)
!97 = !DILocation(line: 141, column: 5, scope: !9)
!98 = !DILocation(line: 141, column: 23, scope: !9)
!99 = !DILocation(line: 141, column: 41, scope: !9)
!100 = !DILocation(line: 141, column: 59, scope: !9)
!101 = !DILocation(line: 142, column: 5, scope: !9)
!102 = !DILocation(line: 142, column: 23, scope: !9)
!103 = !DILocation(line: 142, column: 41, scope: !9)
!104 = !DILocation(line: 142, column: 59, scope: !9)
!105 = !DILocation(line: 143, column: 5, scope: !9)
!106 = !DILocation(line: 143, column: 23, scope: !9)
!107 = !DILocation(line: 143, column: 41, scope: !9)
!108 = !DILocation(line: 143, column: 59, scope: !9)
!109 = !DILocation(line: 144, column: 5, scope: !9)
!110 = !DILocation(line: 144, column: 23, scope: !9)
!111 = !DILocation(line: 144, column: 41, scope: !9)
!112 = !DILocation(line: 144, column: 59, scope: !9)
!113 = !DILocation(line: 145, column: 5, scope: !9)
!114 = !DILocation(line: 145, column: 23, scope: !9)
!115 = !DILocation(line: 145, column: 41, scope: !9)
!116 = !DILocation(line: 145, column: 59, scope: !9)
!117 = !DILocation(line: 146, column: 5, scope: !9)
!118 = !DILocation(line: 146, column: 23, scope: !9)
!119 = !DILocation(line: 146, column: 41, scope: !9)
!120 = !DILocation(line: 146, column: 59, scope: !9)
!121 = !DILocation(line: 147, column: 5, scope: !9)
!122 = !DILocation(line: 147, column: 23, scope: !9)
!123 = !DILocation(line: 147, column: 41, scope: !9)
!124 = !DILocation(line: 147, column: 59, scope: !9)
!125 = !DILocation(line: 148, column: 5, scope: !9)
!126 = !DILocation(line: 148, column: 23, scope: !9)
!127 = !DILocation(line: 148, column: 41, scope: !9)
!128 = !DILocation(line: 148, column: 59, scope: !9)
!129 = !DILocation(line: 149, column: 5, scope: !9)
!130 = !DILocation(line: 149, column: 23, scope: !9)
!131 = !DILocation(line: 149, column: 41, scope: !9)
!132 = !DILocation(line: 149, column: 59, scope: !9)
!133 = !DILocation(line: 150, column: 5, scope: !9)
!134 = !DILocation(line: 150, column: 23, scope: !9)
!135 = !DILocation(line: 150, column: 41, scope: !9)
!136 = !DILocation(line: 150, column: 59, scope: !9)
!137 = !DILocation(line: 152, column: 14, scope: !9)
!138 = !DILocation(line: 153, column: 14, scope: !9)
!139 = !DILocation(line: 154, column: 14, scope: !9)
!140 = !DILocation(line: 155, column: 14, scope: !9)
!141 = !DILocation(line: 156, column: 14, scope: !9)
!142 = !DILocation(line: 160, column: 5, scope: !9)
!143 = !DILocation(line: 162, column: 1, scope: !9)
!144 = !DISubprogram(name: "memcpy", scope: !145, file: !145, line: 43, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !156)
!145 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !149, !150, !153}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !148)
!150 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !154, line: 46, baseType: !155)
!154 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!155 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!156 = !{}
!157 = !DISubprogram(name: "memset", scope: !145, file: !145, line: 61, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !156)
!158 = !DISubroutineType(types: !159)
!159 = !{!148, !148, !160, !153}
!160 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!161 = distinct !DISubprogram(name: "SHA1Init", scope: !1, file: !1, line: 167, type: !162, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !178)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "SHA1_CTX", file: !166, line: 12, baseType: !167)
!166 = !DIFile(filename: "./sha1.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "66eb14eb0f961bbb9a2359cab2e67268")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !166, line: 8, size: 736, elements: !168)
!168 = !{!169, !173, !177}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !167, file: !166, line: 9, baseType: !170, size: 160)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 5)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !167, file: !166, line: 10, baseType: !174, size: 64, offset: 160)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 2)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !167, file: !166, line: 11, baseType: !34, size: 512, offset: 224)
!178 = !{!179}
!179 = !DILocalVariable(name: "context", arg: 1, scope: !161, file: !1, line: 167, type: !164)
!180 = !DILocation(line: 0, scope: !161)
!181 = !DILocation(line: 170, column: 23, scope: !161)
!182 = !DILocation(line: 174, column: 5, scope: !161)
!183 = !DILocation(line: 174, column: 23, scope: !161)
!184 = !DILocation(line: 175, column: 25, scope: !161)
!185 = !DILocation(line: 175, column: 43, scope: !161)
!186 = !DILocation(line: 175, column: 5, scope: !161)
!187 = !DILocation(line: 175, column: 23, scope: !161)
!188 = !DILocation(line: 176, column: 1, scope: !161)
!189 = distinct !DISubprogram(name: "SHA1Update", scope: !1, file: !1, line: 181, type: !190, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !164, !18, !13}
!192 = !{!193, !194, !195, !196, !197}
!193 = !DILocalVariable(name: "context", arg: 1, scope: !189, file: !1, line: 181, type: !164)
!194 = !DILocalVariable(name: "data", arg: 2, scope: !189, file: !1, line: 181, type: !18)
!195 = !DILocalVariable(name: "len", arg: 3, scope: !189, file: !1, line: 181, type: !13)
!196 = !DILocalVariable(name: "i", scope: !189, file: !1, line: 183, type: !13)
!197 = !DILocalVariable(name: "j", scope: !189, file: !1, line: 184, type: !13)
!198 = !DILocation(line: 0, scope: !189)
!199 = !DILocation(line: 186, column: 9, scope: !189)
!200 = !DILocation(line: 187, column: 35, scope: !201)
!201 = distinct !DILexicalBlock(scope: !189, file: !1, line: 187, column: 9)
!202 = !DILocation(line: 187, column: 28, scope: !201)
!203 = !DILocation(line: 187, column: 41, scope: !201)
!204 = !DILocation(line: 187, column: 9, scope: !189)
!205 = !DILocation(line: 189, column: 30, scope: !189)
!206 = !DILocation(line: 189, column: 5, scope: !189)
!207 = !DILocation(line: 189, column: 23, scope: !189)
!208 = !DILocation(line: 190, column: 12, scope: !189)
!209 = !DILocation(line: 190, column: 18, scope: !189)
!210 = !DILocation(line: 191, column: 12, scope: !211)
!211 = distinct !DILexicalBlock(scope: !189, file: !1, line: 191, column: 9)
!212 = !DILocation(line: 191, column: 19, scope: !211)
!213 = !DILocation(line: 191, column: 9, scope: !189)
!214 = !DILocation(line: 192, column: 17, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !1, line: 191, column: 25)
!216 = !DILocation(line: 192, column: 50, scope: !215)
!217 = !DILocation(line: 192, column: 43, scope: !215)
!218 = !DILocation(line: 192, column: 9, scope: !215)
!219 = !DILocation(line: 193, column: 23, scope: !215)
!220 = !DILocation(line: 193, column: 39, scope: !215)
!221 = !DILocation(line: 193, column: 9, scope: !215)
!222 = !DILocation(line: 194, column: 19, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !1, line: 194, column: 9)
!224 = distinct !DILexicalBlock(scope: !215, file: !1, line: 194, column: 9)
!225 = !DILocation(line: 194, column: 24, scope: !223)
!226 = !DILocation(line: 194, column: 9, scope: !224)
!227 = !DILocation(line: 195, column: 44, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !1, line: 194, column: 40)
!229 = !DILocation(line: 195, column: 13, scope: !228)
!230 = !DILocation(line: 194, column: 33, scope: !223)
!231 = distinct !{!231, !226, !232}
!232 = !DILocation(line: 196, column: 9, scope: !224)
!233 = !DILocation(line: 0, scope: !211)
!234 = !DILocation(line: 200, column: 13, scope: !189)
!235 = !DILocation(line: 200, column: 34, scope: !189)
!236 = !DILocation(line: 200, column: 47, scope: !189)
!237 = !DILocation(line: 200, column: 43, scope: !189)
!238 = !DILocation(line: 200, column: 5, scope: !189)
!239 = !DILocation(line: 201, column: 1, scope: !189)
!240 = distinct !DISubprogram(name: "SHA1Final", scope: !1, file: !1, line: 206, type: !241, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !244)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !243, !164}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!244 = !{!245, !246, !247, !248, !252}
!245 = !DILocalVariable(name: "digest", arg: 1, scope: !240, file: !1, line: 206, type: !243)
!246 = !DILocalVariable(name: "context", arg: 2, scope: !240, file: !1, line: 206, type: !164)
!247 = !DILocalVariable(name: "i", scope: !240, file: !1, line: 208, type: !17)
!248 = !DILocalVariable(name: "finalcount", scope: !240, file: !1, line: 209, type: !249)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 64, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 8)
!252 = !DILocalVariable(name: "c", scope: !240, file: !1, line: 210, type: !3)
!253 = !DILocation(line: 0, scope: !240)
!254 = !DILocation(line: 209, column: 1, scope: !240)
!255 = !DILocation(line: 209, column: 15, scope: !240)
!256 = !DILocation(line: 210, column: 1, scope: !240)
!257 = !DILocation(line: 230, column: 42, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !1, line: 229, column: 29)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 229, column: 5)
!260 = distinct !DILexicalBlock(scope: !240, file: !1, line: 229, column: 5)
!261 = !DILocation(line: 231, column: 10, scope: !258)
!262 = !DILocation(line: 230, column: 25, scope: !258)
!263 = !DILocation(line: 230, column: 23, scope: !258)
!264 = !DILocation(line: 230, column: 9, scope: !258)
!265 = !DILocation(line: 234, column: 7, scope: !240)
!266 = !DILocation(line: 235, column: 5, scope: !240)
!267 = !DILocation(line: 236, column: 13, scope: !240)
!268 = !DILocation(line: 236, column: 31, scope: !240)
!269 = !DILocation(line: 236, column: 38, scope: !240)
!270 = !DILocation(line: 236, column: 5, scope: !240)
!271 = !DILocation(line: 237, column: 4, scope: !272)
!272 = distinct !DILexicalBlock(scope: !240, file: !1, line: 236, column: 46)
!273 = !DILocation(line: 238, column: 9, scope: !272)
!274 = distinct !{!274, !270, !275}
!275 = !DILocation(line: 239, column: 5, scope: !240)
!276 = !DILocation(line: 240, column: 5, scope: !240)
!277 = !DILocation(line: 241, column: 5, scope: !278)
!278 = distinct !DILexicalBlock(scope: !240, file: !1, line: 241, column: 5)
!279 = !DILocation(line: 243, column: 28, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !1, line: 241, column: 30)
!281 = distinct !DILexicalBlock(scope: !278, file: !1, line: 241, column: 5)
!282 = !DILocation(line: 243, column: 12, scope: !280)
!283 = !DILocation(line: 243, column: 49, scope: !280)
!284 = !DILocation(line: 243, column: 33, scope: !280)
!285 = !DILocation(line: 242, column: 21, scope: !280)
!286 = !DILocation(line: 242, column: 9, scope: !280)
!287 = !DILocation(line: 242, column: 19, scope: !280)
!288 = !DILocation(line: 241, column: 26, scope: !281)
!289 = !DILocation(line: 241, column: 19, scope: !281)
!290 = distinct !{!290, !277, !291}
!291 = !DILocation(line: 244, column: 5, scope: !278)
!292 = !DILocation(line: 246, column: 12, scope: !240)
!293 = !DILocation(line: 246, column: 5, scope: !240)
!294 = !DILocation(line: 247, column: 5, scope: !240)
!295 = !DILocation(line: 248, column: 1, scope: !240)

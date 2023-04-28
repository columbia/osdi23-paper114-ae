; ModuleID = 'crypto/asn1/asn1_parse.c'
source_filename = "crypto/asn1/asn1_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.asn1_object_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.bio_method_st = type opaque

@reltable.ASN1_tag2str = internal unnamed_addr constant [31 x i32] [i32 trunc (i64 sub (i64 ptrtoint ([4 x i8]* @.str to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([8 x i8]* @.str.1 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([8 x i8]* @.str.2 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([11 x i8]* @.str.3 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([13 x i8]* @.str.4 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.5 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([7 x i8]* @.str.6 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([18 x i8]* @.str.7 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([9 x i8]* @.str.8 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.9 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([11 x i8]* @.str.10 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([10 x i8]* @.str.11 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([11 x i8]* @.str.12 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([10 x i8]* @.str.13 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([10 x i8]* @.str.14 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([10 x i8]* @.str.15 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([9 x i8]* @.str.16 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([4 x i8]* @.str.17 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([14 x i8]* @.str.18 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([16 x i8]* @.str.19 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([10 x i8]* @.str.20 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([15 x i8]* @.str.21 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([10 x i8]* @.str.22 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([8 x i8]* @.str.23 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([16 x i8]* @.str.24 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([14 x i8]* @.str.25 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([14 x i8]* @.str.26 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([14 x i8]* @.str.27 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([16 x i8]* @.str.28 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([10 x i8]* @.str.29 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([10 x i8]* @.str.30 to i64), i64 ptrtoint ([31 x i32]* @reltable.ASN1_tag2str to i64)) to i32)], align 4
@.str = private unnamed_addr constant [4 x i8] c"EOC\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"BIT STRING\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"OCTET STRING\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"OBJECT DESCRIPTOR\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"EXTERNAL\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ENUMERATED\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"<ASN1 11>\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"UTF8STRING\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"<ASN1 13>\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"<ASN1 14>\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"<ASN1 15>\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"SEQUENCE\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"NUMERICSTRING\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"PRINTABLESTRING\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"T61STRING\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"VIDEOTEXSTRING\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"IA5STRING\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"UTCTIME\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"GENERALIZEDTIME\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"GRAPHICSTRING\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"VISIBLESTRING\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"GENERALSTRING\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"UNIVERSALSTRING\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"<ASN1 29>\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"BMPSTRING\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"BAD RECURSION DEPTH\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"Error in encoding\0A\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"length is greater than %ld\0A\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c":BAD OBJECT\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c":BAD BOOLEAN\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c":%u\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"[HEX DUMP]:\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c":BAD INTEGER\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c":BAD ENUMERATED\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c":[\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"cons: \00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"prim: \00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"%5ld:d=%-2d hl=%ld l=%4ld %s\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"%5ld:d=%-2d hl=%ld l=inf  %s\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"priv [ %d ] \00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"cont [ %d ]\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"appl [ %d ]\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"<ASN1 %d>\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"%-18s\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_parse(%struct.bio_st* noundef %bp, i8* noundef %pp, i64 noundef %len, i32 noundef %indent) local_unnamed_addr #0 {
entry:
  %pp.addr = alloca i8*, align 8
  store i8* %pp, i8** %pp.addr, align 8, !tbaa !4
  %call = call fastcc i32 @asn1_parse2(%struct.bio_st* noundef %bp, i8** noundef nonnull %pp.addr, i64 noundef %len, i32 noundef 0, i32 noundef 0, i32 noundef %indent, i32 noundef 0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_parse2(%struct.bio_st* noundef %bp, i8** nocapture noundef %pp, i64 noundef %length, i32 noundef %offset, i32 noundef %depth, i32 noundef %indent, i32 noundef %dump) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %opp = alloca i8*, align 8
  %len = alloca i64, align 8
  %tag = alloca i32, align 4
  %xclass = alloca i32, align 4
  %o = alloca %struct.asn1_object_st*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast i8** %opp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  %3 = bitcast i32* %tag to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %4 = bitcast i32* %xclass to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6
  %5 = bitcast %struct.asn1_object_st** %o to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6
  store %struct.asn1_object_st* null, %struct.asn1_object_st** %o, align 8, !tbaa !4
  %cmp = icmp sgt i32 %depth, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0)) #7
  br label %cleanup517

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %pp, align 8, !tbaa !4
  store i8* %6, i8** %p, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %length
  %cmp1777 = icmp sgt i64 %length, 0
  br i1 %cmp1777, label %while.body.lr.ph, label %end

while.body.lr.ph:                                 ; preds = %if.end
  %conv7 = sext i32 %offset to i64
  %tobool11.not = icmp eq i32 %indent, 0
  %cond = select i1 %tobool11.not, i32 0, i32 %depth
  %add69 = add nsw i32 %depth, 1
  %sub.ptr.lhs.cast35 = ptrtoint i8* %add.ptr to i64
  %tobool242.not = icmp eq i32 %dump, 0
  %cmp274 = icmp eq i32 %dump, -1
  %tobool426 = icmp ne i32 %dump, 0
  %conv439 = sext i32 %dump to i64
  %call2972 = call i32 @ASN1_get_object(i8** noundef nonnull %p, i64* noundef nonnull %len, i32* noundef nonnull %tag, i32* noundef nonnull %xclass, i64 noundef %length) #7
  %and973 = and i32 %call2972, 128
  %tobool.not974 = icmp eq i32 %and973, 0
  br i1 %tobool.not974, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end514.while.body_crit_edge, %while.body.lr.ph
  %call4 = call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0)) #7
  br label %end

if.end5:                                          ; preds = %while.body.lr.ph, %if.end514.while.body_crit_edge
  %call2976 = phi i32 [ %call2, %if.end514.while.body_crit_edge ], [ %call2972, %while.body.lr.ph ]
  %length.addr.0778975 = phi i64 [ %sub515, %if.end514.while.body_crit_edge ], [ %length, %while.body.lr.ph ]
  %7 = phi i8* [ %.pre, %if.end514.while.body_crit_edge ], [ %6, %while.body.lr.ph ]
  %8 = load i8*, i8** %p, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %sext = shl i64 %sub.ptr.sub, 32
  %conv6 = ashr exact i64 %sext, 32
  %sub = sub nsw i64 %length.addr.0778975, %conv6
  %9 = load i8*, i8** %pp, align 8, !tbaa !4
  %sub.ptr.rhs.cast9 = ptrtoint i8* %9 to i64
  %sub.ptr.sub10 = add i64 %sub.ptr.rhs.cast, %conv7
  %add = sub i64 %sub.ptr.sub10, %sub.ptr.rhs.cast9
  %10 = load i64, i64* %len, align 8, !tbaa !8
  %11 = load i32, i32* %tag, align 4, !tbaa !10
  %12 = load i32, i32* %xclass, align 4, !tbaa !10
  %call12 = call fastcc i32 @asn1_print_info(%struct.bio_st* noundef %bp, i64 noundef %add, i32 noundef %depth, i32 noundef %conv, i64 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %call2976, i32 noundef %cond) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %end, label %if.end15

if.end15:                                         ; preds = %if.end5
  %and16 = and i32 %call2976, 32
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else83, label %if.then18

if.then18:                                        ; preds = %if.end15
  %13 = load i8*, i8** %p, align 8, !tbaa !4
  %14 = load i64, i64* %len, align 8, !tbaa !8
  %add.ptr19 = getelementptr inbounds i8, i8* %13, i64 %14
  %call20 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i32 noundef 1) #7
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %end, label %if.end24

if.end24:                                         ; preds = %if.then18
  %15 = load i64, i64* %len, align 8, !tbaa !8
  %cmp25 = icmp sgt i64 %15, %sub
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  %call28 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0), i64 noundef %sub) #7
  br label %end

if.end29:                                         ; preds = %if.end24
  %cmp30 = icmp eq i32 %call2976, 33
  %cmp32 = icmp eq i64 %15, 0
  %or.cond = select i1 %cmp30, i1 %cmp32, i1 false
  %.pre920 = load i8*, i8** %p, align 8, !tbaa !4
  br i1 %or.cond, label %for.cond, label %while.cond59.preheader

while.cond59.preheader:                           ; preds = %if.end29
  %cmp60763 = icmp ult i8* %.pre920, %add.ptr19
  br i1 %cmp60763, label %while.body62, label %if.end514

for.cond:                                         ; preds = %if.end29, %lor.lhs.false
  %16 = phi i8* [ %19, %lor.lhs.false ], [ %.pre920, %if.end29 ]
  %sub.ptr.rhs.cast36 = ptrtoint i8* %16 to i64
  %sub.ptr.sub37 = sub i64 %sub.ptr.lhs.cast35, %sub.ptr.rhs.cast36
  %17 = load i8*, i8** %pp, align 8, !tbaa !4
  %sub.ptr.rhs.cast40 = ptrtoint i8* %17 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.rhs.cast36, %sub.ptr.rhs.cast40
  %18 = trunc i64 %sub.ptr.sub41 to i32
  %conv43 = add i32 %18, %offset
  %call45 = call fastcc i32 @asn1_parse2(%struct.bio_st* noundef %bp, i8** noundef nonnull %p, i64 noundef %sub.ptr.sub37, i32 noundef %conv43, i32 noundef %add69, i32 noundef %indent, i32 noundef %dump) #5
  switch i32 %call45, label %lor.lhs.false [
    i32 0, label %end
    i32 2, label %for.cond.if.then54_crit_edge
  ]

for.cond.if.then54_crit_edge:                     ; preds = %for.cond
  %.pre921 = load i8*, i8** %p, align 8, !tbaa !4
  br label %if.then54

lor.lhs.false:                                    ; preds = %for.cond
  %19 = load i8*, i8** %p, align 8, !tbaa !4
  %cmp52.not = icmp ult i8* %19, %add.ptr
  br i1 %cmp52.not, label %for.cond, label %if.then54

if.then54:                                        ; preds = %lor.lhs.false, %for.cond.if.then54_crit_edge
  %20 = phi i8* [ %.pre921, %for.cond.if.then54_crit_edge ], [ %19, %lor.lhs.false ]
  %sub.ptr.lhs.cast55 = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast56 = ptrtoint i8* %13 to i64
  %sub.ptr.sub57 = sub i64 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56
  store i64 %sub.ptr.sub57, i64* %len, align 8, !tbaa !8
  br label %if.end514

while.body62:                                     ; preds = %while.cond59.preheader, %if.end74
  %21 = phi i8* [ %24, %if.end74 ], [ %.pre920, %while.cond59.preheader ]
  %tmp.0764 = phi i64 [ %sub78, %if.end74 ], [ %15, %while.cond59.preheader ]
  %22 = load i8*, i8** %pp, align 8, !tbaa !4
  %sub.ptr.lhs.cast64 = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast65 = ptrtoint i8* %22 to i64
  %sub.ptr.sub66 = sub i64 %sub.ptr.lhs.cast64, %sub.ptr.rhs.cast65
  %23 = trunc i64 %sub.ptr.sub66 to i32
  %conv68 = add i32 %23, %offset
  %call70 = call fastcc i32 @asn1_parse2(%struct.bio_st* noundef %bp, i8** noundef nonnull %p, i64 noundef %tmp.0764, i32 noundef %conv68, i32 noundef %add69, i32 noundef %indent, i32 noundef %dump) #5
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %end, label %if.end74

if.end74:                                         ; preds = %while.body62
  %24 = load i8*, i8** %p, align 8, !tbaa !4
  %sub.ptr.lhs.cast75 = ptrtoint i8* %24 to i64
  %sub.ptr.sub77.neg = add i64 %tmp.0764, %sub.ptr.lhs.cast64
  %sub78 = sub i64 %sub.ptr.sub77.neg, %sub.ptr.lhs.cast75
  %cmp60 = icmp ult i8* %24, %add.ptr19
  br i1 %cmp60, label %while.body62, label %if.end514, !llvm.loop !12

if.else83:                                        ; preds = %if.end15
  %25 = load i32, i32* %xclass, align 4, !tbaa !10
  %cmp84.not = icmp eq i32 %25, 0
  br i1 %cmp84.not, label %if.else93, label %if.then86

if.then86:                                        ; preds = %if.else83
  %26 = load i64, i64* %len, align 8, !tbaa !8
  %27 = load i8*, i8** %p, align 8, !tbaa !4
  %add.ptr87 = getelementptr inbounds i8, i8* %27, i64 %26
  store i8* %add.ptr87, i8** %p, align 8, !tbaa !4
  %call88 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i32 noundef 1) #7
  %cmp89 = icmp slt i32 %call88, 1
  br i1 %cmp89, label %end, label %if.end514

if.else93:                                        ; preds = %if.else83
  %28 = load i32, i32* %tag, align 4, !tbaa !10
  switch i32 %28, label %if.else422 [
    i32 26, label %if.then117
    i32 24, label %if.then117
    i32 23, label %if.then117
    i32 22, label %if.then117
    i32 20, label %if.then117
    i32 19, label %if.then117
    i32 18, label %if.then117
    i32 12, label %if.then117
    i32 6, label %if.then136
    i32 1, label %if.then159
    i32 30, label %if.then498
    i32 4, label %if.then182
    i32 2, label %if.then300
    i32 10, label %if.then362
  ]

if.then117:                                       ; preds = %if.else93, %if.else93, %if.else93, %if.else93, %if.else93, %if.else93, %if.else93, %if.else93
  %call118 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef 1) #7
  %cmp119 = icmp slt i32 %call118, 1
  br i1 %cmp119, label %end, label %if.end122

if.end122:                                        ; preds = %if.then117
  %29 = load i64, i64* %len, align 8, !tbaa !8
  %cmp123 = icmp sgt i64 %29, 0
  br i1 %cmp123, label %land.lhs.true125, label %if.then498

land.lhs.true125:                                 ; preds = %if.end122
  %30 = load i8*, i8** %p, align 8, !tbaa !4
  %conv126 = trunc i64 %29 to i32
  %call127 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef %30, i32 noundef %conv126) #7
  %31 = load i64, i64* %len, align 8, !tbaa !8
  %conv128 = trunc i64 %31 to i32
  %cmp129.not = icmp eq i32 %call127, %conv128
  br i1 %cmp129.not, label %if.then498, label %end

if.then136:                                       ; preds = %if.else93
  store i8* %7, i8** %opp, align 8, !tbaa !4
  %32 = load i64, i64* %len, align 8, !tbaa !8
  %add138 = add nsw i64 %32, %conv6
  %call139 = call %struct.asn1_object_st* @d2i_ASN1_OBJECT(%struct.asn1_object_st** noundef nonnull %o, i8** noundef nonnull %opp, i64 noundef %add138) #7
  %cmp140.not = icmp eq %struct.asn1_object_st* %call139, null
  br i1 %cmp140.not, label %if.else149, label %if.then142

if.then142:                                       ; preds = %if.then136
  %call143 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef 1) #7
  %cmp144 = icmp slt i32 %call143, 1
  br i1 %cmp144, label %end, label %if.end147

if.end147:                                        ; preds = %if.then142
  %33 = load %struct.asn1_object_st*, %struct.asn1_object_st** %o, align 8, !tbaa !4
  %call148 = call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bp, %struct.asn1_object_st* noundef %33) #7
  br label %if.then498

if.else149:                                       ; preds = %if.then136
  %call150 = call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #7
  %cmp151 = icmp slt i32 %call150, 1
  br i1 %cmp151, label %end, label %if.then462

if.then159:                                       ; preds = %if.else93
  %34 = load i64, i64* %len, align 8, !tbaa !8
  %cmp160.not = icmp eq i64 %34, 1
  br i1 %cmp160.not, label %if.then171, label %if.then162

if.then162:                                       ; preds = %if.then159
  %call163 = call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0)) #7
  %cmp164 = icmp slt i32 %call163, 1
  br i1 %cmp164, label %end, label %if.end168

if.end168:                                        ; preds = %if.then162
  %.pr = load i64, i64* %len, align 8, !tbaa !8
  %cmp169 = icmp sgt i64 %.pr, 0
  br i1 %cmp169, label %if.then171, label %if.then462

if.then171:                                       ; preds = %if.then159, %if.end168
  %dump_cont.1714 = phi i32 [ 1, %if.end168 ], [ 0, %if.then159 ]
  %35 = load i8*, i8** %p, align 8, !tbaa !4
  %36 = load i8, i8* %35, align 1, !tbaa !14
  %conv172 = zext i8 %36 to i32
  %call173 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv172) #7
  br label %if.end460

if.then182:                                       ; preds = %if.else93
  store i8* %7, i8** %opp, align 8, !tbaa !4
  %37 = load i64, i64* %len, align 8, !tbaa !8
  %add184 = add nsw i64 %37, %conv6
  %call185 = call %struct.asn1_string_st* @d2i_ASN1_OCTET_STRING(%struct.asn1_string_st** noundef null, i8** noundef nonnull %opp, i64 noundef %add184) #7
  %cmp186.not = icmp eq %struct.asn1_string_st* %call185, null
  br i1 %cmp186.not, label %if.end496.thread936, label %land.lhs.true188

land.lhs.true188:                                 ; preds = %if.then182
  %length189 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call185, i64 0, i32 0
  %38 = load i32, i32* %length189, align 8, !tbaa !15
  %cmp190 = icmp sgt i32 %38, 0
  br i1 %cmp190, label %if.then192, label %if.end496.thread936

if.then192:                                       ; preds = %land.lhs.true188
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call185, i64 0, i32 2
  %39 = load i8*, i8** %data, align 8, !tbaa !17
  store i8* %39, i8** %opp, align 8, !tbaa !4
  %wide.trip.count = zext i32 %38 to i64
  br label %for.body

for.body:                                         ; preds = %if.then192, %for.inc
  %indvars.iv911 = phi i64 [ 0, %if.then192 ], [ %indvars.iv.next912, %for.inc ]
  %arrayidx197 = getelementptr inbounds i8, i8* %39, i64 %indvars.iv911
  %40 = load i8, i8* %arrayidx197, align 1, !tbaa !14
  %.fr = freeze i8 %40
  %cmp199 = icmp ugt i8 %.fr, 31
  br i1 %cmp199, label %lor.lhs.false219, label %switch.early.test

switch.early.test:                                ; preds = %for.body
  switch i8 %.fr, label %if.else241 [
    i8 13, label %for.inc
    i8 10, label %for.inc
    i8 9, label %for.inc
  ]

lor.lhs.false219:                                 ; preds = %for.body
  %cmp223 = icmp ugt i8 %.fr, 126
  br i1 %cmp223, label %if.else241, label %for.inc

for.inc:                                          ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %lor.lhs.false219
  %indvars.iv.next912 = add nuw nsw i64 %indvars.iv911, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next912, %wide.trip.count
  br i1 %exitcond.not, label %if.then229, label %for.body, !llvm.loop !18

if.then229:                                       ; preds = %for.inc
  %call230 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef 1) #7
  %cmp231 = icmp slt i32 %call230, 1
  br i1 %cmp231, label %end, label %if.end234

if.end234:                                        ; preds = %if.then229
  %41 = load i8*, i8** %opp, align 8, !tbaa !4
  %42 = load i32, i32* %length189, align 8, !tbaa !15
  %call236 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef %41, i32 noundef %42) #7
  %cmp237 = icmp slt i32 %call236, 1
  br i1 %cmp237, label %end, label %if.end496.thread936

if.else241:                                       ; preds = %lor.lhs.false219, %switch.early.test
  br i1 %tobool242.not, label %if.then243, label %if.then267

if.then243:                                       ; preds = %if.else241
  %call244 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i32 noundef 11) #7
  %cmp245 = icmp slt i32 %call244, 1
  br i1 %cmp245, label %end, label %for.cond249.preheader

for.cond249.preheader:                            ; preds = %if.then243
  %43 = load i32, i32* %length189, align 8, !tbaa !15
  %cmp251772 = icmp sgt i32 %43, 0
  br i1 %cmp251772, label %for.body253, label %if.end496.thread936

for.cond249:                                      ; preds = %for.body253
  %44 = load i32, i32* %length189, align 8, !tbaa !15
  %45 = sext i32 %44 to i64
  %cmp251 = icmp slt i64 %indvars.iv.next915, %45
  br i1 %cmp251, label %for.body253, label %if.end496.thread936, !llvm.loop !19

for.body253:                                      ; preds = %for.cond249.preheader, %for.cond249
  %indvars.iv914 = phi i64 [ %indvars.iv.next915, %for.cond249 ], [ 0, %for.cond249.preheader ]
  %46 = load i8*, i8** %opp, align 8, !tbaa !4
  %arrayidx255 = getelementptr inbounds i8, i8* %46, i64 %indvars.iv914
  %47 = load i8, i8* %arrayidx255, align 1, !tbaa !14
  %conv256 = zext i8 %47 to i32
  %call257 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv256) #7
  %cmp258 = icmp slt i32 %call257, 1
  %indvars.iv.next915 = add nuw nsw i64 %indvars.iv914, 1
  br i1 %cmp258, label %end, label %for.cond249

if.then267:                                       ; preds = %if.else241
  %call268 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i32 noundef 1) #7
  %cmp269 = icmp slt i32 %call268, 1
  br i1 %cmp269, label %end, label %if.end273

if.end273:                                        ; preds = %if.then267
  %48 = load i8*, i8** %opp, align 8, !tbaa !4
  %.pre922 = load i32, i32* %length189, align 8, !tbaa !15
  %cmp278 = icmp slt i32 %.pre922, %dump
  %or.cond955 = select i1 %cmp274, i1 true, i1 %cmp278
  %cond284 = select i1 %or.cond955, i32 %.pre922, i32 %dump
  %call285 = call i32 @BIO_dump_indent(%struct.bio_st* noundef %bp, i8* noundef %48, i32 noundef %cond284, i32 noundef 6) #7
  %cmp286 = icmp slt i32 %call285, 1
  br i1 %cmp286, label %end, label %if.end496

if.then300:                                       ; preds = %if.else93
  store i8* %7, i8** %opp, align 8, !tbaa !4
  %49 = load i64, i64* %len, align 8, !tbaa !8
  %add303 = add nsw i64 %49, %conv6
  %call304 = call %struct.asn1_string_st* @d2i_ASN1_INTEGER(%struct.asn1_string_st** noundef null, i8** noundef nonnull %opp, i64 noundef %add303) #7
  %cmp305.not = icmp eq %struct.asn1_string_st* %call304, null
  br i1 %cmp305.not, label %if.else349, label %if.then307

if.then307:                                       ; preds = %if.then300
  %call308 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef 1) #7
  %cmp309 = icmp slt i32 %call308, 1
  br i1 %cmp309, label %end, label %if.end312

if.end312:                                        ; preds = %if.then307
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call304, i64 0, i32 1
  %50 = load i32, i32* %type, align 4, !tbaa !20
  %cmp313 = icmp eq i32 %50, 258
  br i1 %cmp313, label %if.then315, label %if.end321

if.then315:                                       ; preds = %if.end312
  %call316 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i32 noundef 1) #7
  %cmp317 = icmp slt i32 %call316, 1
  br i1 %cmp317, label %end, label %if.end321

if.end321:                                        ; preds = %if.then315, %if.end312
  %length323 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call304, i64 0, i32 0
  %51 = load i32, i32* %length323, align 8, !tbaa !15
  %cmp324767 = icmp sgt i32 %51, 0
  br i1 %cmp324767, label %for.body326.lr.ph, label %for.end338

for.body326.lr.ph:                                ; preds = %if.end321
  %data327 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call304, i64 0, i32 2
  br label %for.body326

for.cond322:                                      ; preds = %for.body326
  %52 = load i32, i32* %length323, align 8, !tbaa !15
  %53 = sext i32 %52 to i64
  %cmp324 = icmp slt i64 %indvars.iv.next909, %53
  br i1 %cmp324, label %for.body326, label %for.end338, !llvm.loop !21

for.body326:                                      ; preds = %for.body326.lr.ph, %for.cond322
  %indvars.iv908 = phi i64 [ 0, %for.body326.lr.ph ], [ %indvars.iv.next909, %for.cond322 ]
  %54 = load i8*, i8** %data327, align 8, !tbaa !17
  %arrayidx329 = getelementptr inbounds i8, i8* %54, i64 %indvars.iv908
  %55 = load i8, i8* %arrayidx329, align 1, !tbaa !14
  %conv330 = zext i8 %55 to i32
  %call331 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv330) #7
  %cmp332 = icmp slt i32 %call331, 1
  %indvars.iv.next909 = add nuw nsw i64 %indvars.iv908, 1
  br i1 %cmp332, label %end, label %for.cond322

for.end338:                                       ; preds = %for.cond322, %if.end321
  %.lcssa755 = phi i32 [ %51, %if.end321 ], [ %52, %for.cond322 ]
  %cmp340 = icmp eq i32 %.lcssa755, 0
  br i1 %cmp340, label %if.then342, label %cleanup356

if.then342:                                       ; preds = %for.end338
  %call343 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i32 noundef 2) #7
  %cmp344 = icmp slt i32 %call343, 1
  br i1 %cmp344, label %end, label %cleanup356

if.else349:                                       ; preds = %if.then300
  %call350 = call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0)) #7
  %cmp351 = icmp slt i32 %call350, 1
  br i1 %cmp351, label %end, label %cleanup356

cleanup356:                                       ; preds = %if.then342, %for.end338, %if.else349
  %dump_cont.2 = phi i32 [ 0, %if.then342 ], [ 0, %for.end338 ], [ 1, %if.else349 ]
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %call304) #7
  br label %if.end460

if.then362:                                       ; preds = %if.else93
  store i8* %7, i8** %opp, align 8, !tbaa !4
  %56 = load i64, i64* %len, align 8, !tbaa !8
  %add365 = add nsw i64 %56, %conv6
  %call366 = call %struct.asn1_string_st* @d2i_ASN1_ENUMERATED(%struct.asn1_string_st** noundef null, i8** noundef nonnull %opp, i64 noundef %add365) #7
  %cmp367.not = icmp eq %struct.asn1_string_st* %call366, null
  br i1 %cmp367.not, label %if.else412, label %if.then369

if.then369:                                       ; preds = %if.then362
  %call370 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef 1) #7
  %cmp371 = icmp slt i32 %call370, 1
  br i1 %cmp371, label %end, label %if.end374

if.end374:                                        ; preds = %if.then369
  %type375 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call366, i64 0, i32 1
  %57 = load i32, i32* %type375, align 4, !tbaa !20
  %cmp376 = icmp eq i32 %57, 266
  br i1 %cmp376, label %if.then378, label %if.end384

if.then378:                                       ; preds = %if.end374
  %call379 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i32 noundef 1) #7
  %cmp380 = icmp slt i32 %call379, 1
  br i1 %cmp380, label %end, label %if.end384

if.end384:                                        ; preds = %if.then378, %if.end374
  %length386 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call366, i64 0, i32 0
  %58 = load i32, i32* %length386, align 8, !tbaa !15
  %cmp387765 = icmp sgt i32 %58, 0
  br i1 %cmp387765, label %for.body389.lr.ph, label %for.end401

for.body389.lr.ph:                                ; preds = %if.end384
  %data390 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call366, i64 0, i32 2
  br label %for.body389

for.cond385:                                      ; preds = %for.body389
  %59 = load i32, i32* %length386, align 8, !tbaa !15
  %60 = sext i32 %59 to i64
  %cmp387 = icmp slt i64 %indvars.iv.next, %60
  br i1 %cmp387, label %for.body389, label %for.end401, !llvm.loop !22

for.body389:                                      ; preds = %for.body389.lr.ph, %for.cond385
  %indvars.iv = phi i64 [ 0, %for.body389.lr.ph ], [ %indvars.iv.next, %for.cond385 ]
  %61 = load i8*, i8** %data390, align 8, !tbaa !17
  %arrayidx392 = getelementptr inbounds i8, i8* %61, i64 %indvars.iv
  %62 = load i8, i8* %arrayidx392, align 1, !tbaa !14
  %conv393 = zext i8 %62 to i32
  %call394 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv393) #7
  %cmp395 = icmp slt i32 %call394, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp395, label %end, label %for.cond385

for.end401:                                       ; preds = %for.cond385, %if.end384
  %.lcssa = phi i32 [ %58, %if.end384 ], [ %59, %for.cond385 ]
  %cmp403 = icmp eq i32 %.lcssa, 0
  br i1 %cmp403, label %if.then405, label %cleanup419

if.then405:                                       ; preds = %for.end401
  %call406 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i32 noundef 2) #7
  %cmp407 = icmp slt i32 %call406, 1
  br i1 %cmp407, label %end, label %cleanup419

if.else412:                                       ; preds = %if.then362
  %call413 = call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0)) #7
  %cmp414 = icmp slt i32 %call413, 1
  br i1 %cmp414, label %end, label %cleanup419

cleanup419:                                       ; preds = %if.then405, %for.end401, %if.else412
  %dump_cont.4 = phi i32 [ 0, %if.then405 ], [ 0, %for.end401 ], [ 1, %if.else412 ]
  call void @ASN1_ENUMERATED_free(%struct.asn1_string_st* noundef %call366) #7
  br label %if.end460

if.else422:                                       ; preds = %if.else93
  %63 = load i64, i64* %len, align 8, !tbaa !8
  %cmp423 = icmp sgt i64 %63, 0
  %or.cond544 = and i1 %tobool426, %cmp423
  br i1 %or.cond544, label %if.then429, label %if.then498

if.then429:                                       ; preds = %if.else422
  %call430 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i32 noundef 1) #7
  %cmp431 = icmp slt i32 %call430, 1
  br i1 %cmp431, label %end, label %if.end435

if.end435:                                        ; preds = %if.then429
  %64 = load i8*, i8** %p, align 8, !tbaa !4
  %65 = load i64, i64* %len, align 8
  %cmp440 = icmp slt i64 %65, %conv439
  %or.cond891 = select i1 %cmp274, i1 true, i1 %cmp440
  %cond446 = select i1 %or.cond891, i64 %65, i64 %conv439
  %conv447 = trunc i64 %cond446 to i32
  %call448 = call i32 @BIO_dump_indent(%struct.bio_st* noundef %bp, i8* noundef %64, i32 noundef %conv447, i32 noundef 6) #7
  %cmp449 = icmp slt i32 %call448, 1
  br i1 %cmp449, label %end, label %if.end504

if.end460:                                        ; preds = %cleanup419, %cleanup356, %if.then171
  %dump_cont.6 = phi i32 [ %dump_cont.1714, %if.then171 ], [ %dump_cont.2, %cleanup356 ], [ %dump_cont.4, %cleanup419 ]
  %tobool461.not = icmp eq i32 %dump_cont.6, 0
  br i1 %tobool461.not, label %if.then498, label %if.then462

if.then462:                                       ; preds = %if.else149, %if.end168, %if.end460
  %add.ptr465 = getelementptr inbounds i8, i8* %7, i64 %conv6
  %call466 = call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #7
  %cmp467 = icmp slt i32 %call466, 1
  br i1 %cmp467, label %end, label %for.cond471.preheader

for.cond471.preheader:                            ; preds = %if.then462
  %66 = load i64, i64* %len, align 8, !tbaa !8
  %cmp473774 = icmp sgt i64 %66, 0
  br i1 %cmp473774, label %for.body475, label %for.end486

for.cond471:                                      ; preds = %for.body475
  %67 = load i64, i64* %len, align 8, !tbaa !8
  %cmp473 = icmp sgt i64 %67, %indvars.iv.next918
  br i1 %cmp473, label %for.body475, label %for.end486, !llvm.loop !23

for.body475:                                      ; preds = %for.cond471.preheader, %for.cond471
  %indvars.iv917 = phi i64 [ %indvars.iv.next918, %for.cond471 ], [ 0, %for.cond471.preheader ]
  %arrayidx477 = getelementptr inbounds i8, i8* %add.ptr465, i64 %indvars.iv917
  %68 = load i8, i8* %arrayidx477, align 1, !tbaa !14
  %conv478 = zext i8 %68 to i32
  %call479 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv478) #7
  %cmp480 = icmp slt i32 %call479, 1
  %indvars.iv.next918 = add nuw nsw i64 %indvars.iv917, 1
  br i1 %cmp480, label %end, label %for.cond471

for.end486:                                       ; preds = %for.cond471, %for.cond471.preheader
  %call487 = call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #7
  %cmp488 = icmp slt i32 %call487, 1
  br i1 %cmp488, label %end, label %if.then498

if.end496.thread936:                              ; preds = %for.cond249, %if.end234, %land.lhs.true188, %if.then182, %for.cond249.preheader
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %call185) #7
  br label %if.then498

if.end496:                                        ; preds = %if.end273
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call185) #7
  br label %if.end504

if.then498:                                       ; preds = %land.lhs.true125, %if.end122, %if.end147, %if.else422, %if.else93, %for.end486, %if.end460, %if.end496.thread936
  %call499 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i32 noundef 1) #7
  %cmp500 = icmp slt i32 %call499, 1
  br i1 %cmp500, label %end, label %if.end504

if.end504:                                        ; preds = %if.end435, %if.end496, %if.then498
  %69 = load i64, i64* %len, align 8, !tbaa !8
  %70 = load i8*, i8** %p, align 8, !tbaa !4
  %add.ptr505 = getelementptr inbounds i8, i8* %70, i64 %69
  store i8* %add.ptr505, i8** %p, align 8, !tbaa !4
  %71 = load i32, i32* %tag, align 4, !tbaa !10
  %cmp506 = icmp eq i32 %71, 0
  %72 = load i32, i32* %xclass, align 4
  %cmp509 = icmp eq i32 %72, 0
  %or.cond545 = select i1 %cmp506, i1 %cmp509, i1 false
  br i1 %or.cond545, label %end, label %if.end514

if.end514:                                        ; preds = %if.end74, %while.cond59.preheader, %if.then54, %if.then86, %if.end504
  %73 = load i64, i64* %len, align 8, !tbaa !8
  %sub515 = sub nsw i64 %sub, %73
  %cmp1 = icmp sgt i64 %sub515, 0
  br i1 %cmp1, label %if.end514.while.body_crit_edge, label %end, !llvm.loop !24

if.end514.while.body_crit_edge:                   ; preds = %if.end514
  %.pre = load i8*, i8** %p, align 8, !tbaa !4
  %call2 = call i32 @ASN1_get_object(i8** noundef nonnull %p, i64* noundef nonnull %len, i32* noundef nonnull %tag, i32* noundef nonnull %xclass, i64 noundef %sub515) #7
  %and = and i32 %call2, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.then3

end:                                              ; preds = %if.end5, %if.then86, %if.then117, %land.lhs.true125, %if.then142, %if.else149, %if.then162, %if.then429, %if.end435, %if.then498, %if.end504, %if.end514, %if.then18, %if.then229, %if.end234, %if.then243, %if.then267, %if.end273, %if.then307, %if.then315, %if.then342, %if.else349, %if.then369, %if.then378, %if.then405, %if.else412, %if.then462, %for.end486, %while.body62, %for.cond, %for.body389, %for.body326, %for.body253, %for.body475, %if.end, %if.then27, %if.then3
  %ret.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then27 ], [ 1, %if.end ], [ 0, %for.body475 ], [ 0, %for.body253 ], [ 0, %for.body326 ], [ 0, %for.body389 ], [ %call45, %for.cond ], [ 0, %while.body62 ], [ 0, %if.end5 ], [ 0, %if.then86 ], [ 0, %if.then117 ], [ 0, %land.lhs.true125 ], [ 0, %if.then142 ], [ 0, %if.else149 ], [ 0, %if.then162 ], [ 0, %if.then429 ], [ 0, %if.end435 ], [ 0, %if.then498 ], [ 2, %if.end504 ], [ 1, %if.end514 ], [ 0, %if.then18 ], [ 0, %if.then229 ], [ 0, %if.end234 ], [ 0, %if.then243 ], [ 0, %if.then267 ], [ 0, %if.end273 ], [ 0, %if.then307 ], [ 0, %if.then315 ], [ 0, %if.then342 ], [ 0, %if.else349 ], [ 0, %if.then369 ], [ 0, %if.then378 ], [ 0, %if.then405 ], [ 0, %if.else412 ], [ 0, %if.then462 ], [ 0, %for.end486 ]
  %os.4 = phi %struct.asn1_string_st* [ null, %if.then3 ], [ null, %if.then27 ], [ null, %if.end ], [ null, %for.body475 ], [ %call185, %for.body253 ], [ null, %for.body326 ], [ null, %for.body389 ], [ null, %for.cond ], [ null, %while.body62 ], [ null, %if.end5 ], [ null, %if.then86 ], [ null, %if.then117 ], [ null, %land.lhs.true125 ], [ null, %if.then142 ], [ null, %if.else149 ], [ null, %if.then162 ], [ null, %if.then429 ], [ null, %if.end435 ], [ null, %if.then498 ], [ null, %if.end504 ], [ null, %if.end514 ], [ null, %if.then18 ], [ %call185, %if.then229 ], [ %call185, %if.end234 ], [ %call185, %if.then243 ], [ %call185, %if.then267 ], [ %call185, %if.end273 ], [ null, %if.then307 ], [ null, %if.then315 ], [ null, %if.then342 ], [ null, %if.else349 ], [ null, %if.then369 ], [ null, %if.then378 ], [ null, %if.then405 ], [ null, %if.else412 ], [ null, %if.then462 ], [ null, %for.end486 ]
  %ai.4 = phi %struct.asn1_string_st* [ null, %if.then3 ], [ null, %if.then27 ], [ null, %if.end ], [ null, %for.body475 ], [ null, %for.body253 ], [ %call304, %for.body326 ], [ null, %for.body389 ], [ null, %for.cond ], [ null, %while.body62 ], [ null, %if.end5 ], [ null, %if.then86 ], [ null, %if.then117 ], [ null, %land.lhs.true125 ], [ null, %if.then142 ], [ null, %if.else149 ], [ null, %if.then162 ], [ null, %if.then429 ], [ null, %if.end435 ], [ null, %if.then498 ], [ null, %if.end504 ], [ null, %if.end514 ], [ null, %if.then18 ], [ null, %if.then229 ], [ null, %if.end234 ], [ null, %if.then243 ], [ null, %if.then267 ], [ null, %if.end273 ], [ %call304, %if.then307 ], [ %call304, %if.then315 ], [ %call304, %if.then342 ], [ null, %if.else349 ], [ null, %if.then369 ], [ null, %if.then378 ], [ null, %if.then405 ], [ null, %if.else412 ], [ null, %if.then462 ], [ null, %for.end486 ]
  %ae.4 = phi %struct.asn1_string_st* [ null, %if.then3 ], [ null, %if.then27 ], [ null, %if.end ], [ null, %for.body475 ], [ null, %for.body253 ], [ null, %for.body326 ], [ %call366, %for.body389 ], [ null, %for.cond ], [ null, %while.body62 ], [ null, %if.end5 ], [ null, %if.then86 ], [ null, %if.then117 ], [ null, %land.lhs.true125 ], [ null, %if.then142 ], [ null, %if.else149 ], [ null, %if.then162 ], [ null, %if.then429 ], [ null, %if.end435 ], [ null, %if.then498 ], [ null, %if.end504 ], [ null, %if.end514 ], [ null, %if.then18 ], [ null, %if.then229 ], [ null, %if.end234 ], [ null, %if.then243 ], [ null, %if.then267 ], [ null, %if.end273 ], [ null, %if.then307 ], [ null, %if.then315 ], [ null, %if.then342 ], [ null, %if.else349 ], [ %call366, %if.then369 ], [ %call366, %if.then378 ], [ %call366, %if.then405 ], [ null, %if.else412 ], [ null, %if.then462 ], [ null, %for.end486 ]
  %74 = load %struct.asn1_object_st*, %struct.asn1_object_st** %o, align 8, !tbaa !4
  call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %74) #7
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %os.4) #7
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %ai.4) #7
  call void @ASN1_ENUMERATED_free(%struct.asn1_string_st* noundef %ae.4) #7
  %75 = load i8*, i8** %p, align 8, !tbaa !4
  store i8* %75, i8** %pp, align 8, !tbaa !4
  br label %cleanup517

cleanup517:                                       ; preds = %end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_parse_dump(%struct.bio_st* noundef %bp, i8* noundef %pp, i64 noundef %len, i32 noundef %indent, i32 noundef %dump) local_unnamed_addr #0 {
entry:
  %pp.addr = alloca i8*, align 8
  store i8* %pp, i8** %pp.addr, align 8, !tbaa !4
  %call = call fastcc i32 @asn1_parse2(%struct.bio_st* noundef %bp, i8** noundef nonnull %pp.addr, i64 noundef %len, i32 noundef 0, i32 noundef 0, i32 noundef %indent, i32 noundef %dump) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @ASN1_tag2str(i32 noundef %tag) local_unnamed_addr #1 {
entry:
  %0 = and i32 %tag, -9
  %1 = icmp eq i32 %0, 258
  %and = and i32 %tag, -257
  %spec.select = select i1 %1, i32 %and, i32 %tag
  %2 = icmp ugt i32 %spec.select, 30
  br i1 %2, label %return, label %if.end6

if.end6:                                          ; preds = %entry
  %idxprom13 = zext i32 %spec.select to i64
  %reltable.shift = shl i64 %idxprom13, 2
  %reltable.intrinsic = call i8* @llvm.load.relative.i64(i8* bitcast ([31 x i32]* @reltable.ASN1_tag2str to i8*), i64 %reltable.shift)
  br label %return

return:                                           ; preds = %entry, %if.end6
  %retval.0 = phi i8* [ %reltable.intrinsic, %if.end6 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @ASN1_get_object(i8** noundef, i64* noundef, i32* noundef, i32* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_print_info(%struct.bio_st* noundef %bp, i64 noundef %offset, i32 noundef %depth, i32 noundef %hl, i64 noundef %len, i32 noundef %tag, i32 noundef %xclass, i32 noundef %constructed, i32 noundef %indent) unnamed_addr #0 {
entry:
  %str = alloca [128 x i8], align 16
  %0 = getelementptr inbounds [128 x i8], [128 x i8]* %str, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #6
  %and = and i32 %constructed, 32
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0)
  %cmp.not = icmp eq i32 %constructed, 33
  %conv8 = sext i32 %hl to i64
  br i1 %cmp.not, label %if.else6, label %if.then1

if.then1:                                         ; preds = %entry
  %call = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 128, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i64 0, i64 0), i64 noundef %offset, i32 noundef %depth, i64 noundef %conv8, i64 noundef %len, i8* noundef %.) #7
  %cmp2 = icmp slt i32 %call, 1
  br i1 %cmp2, label %if.end90, label %if.end14

if.else6:                                         ; preds = %entry
  %call9 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 128, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0), i64 noundef %offset, i32 noundef %depth, i64 noundef %conv8, i8* noundef %.) #7
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %if.end90, label %if.end14

if.end14:                                         ; preds = %if.else6, %if.then1
  %cmp15.not = icmp eq %struct.bio_st* %bp, null
  br i1 %cmp15.not, label %if.end45, label %if.then17

if.then17:                                        ; preds = %if.end14
  %call19 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %bp, i32 noundef 79, i64 noundef 0, i8* noundef nonnull %0) #7
  %cmp20 = icmp slt i64 %call19, 1
  br i1 %cmp20, label %if.then22, label %if.end32

if.then22:                                        ; preds = %if.then17
  %call23 = call %struct.bio_method_st* @BIO_f_prefix() #7
  %call24 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call23) #7
  %cmp25 = icmp eq %struct.bio_st* %call24, null
  br i1 %cmp25, label %if.end90, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then22
  %call27 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call24, %struct.bio_st* noundef nonnull %bp) #7
  %cmp28 = icmp eq %struct.bio_st* %call27, null
  br i1 %cmp28, label %if.end90, label %if.end32

if.end32:                                         ; preds = %lor.lhs.false, %if.then17
  %bp.addr.0 = phi %struct.bio_st* [ %bp, %if.then17 ], [ %call27, %lor.lhs.false ]
  %pop_f_prefix.0 = phi i32 [ 0, %if.then17 ], [ 1, %lor.lhs.false ]
  %bio.0 = phi %struct.bio_st* [ null, %if.then17 ], [ %call24, %lor.lhs.false ]
  %call33 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %bp.addr.0, i32 noundef 81, i64 noundef 0, i8* noundef null) #7
  %call35 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %bp.addr.0, i32 noundef 79, i64 noundef 0, i8* noundef nonnull %0) #7
  %cmp36 = icmp slt i64 %call35, 1
  br i1 %cmp36, label %err, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.end32
  %conv39 = sext i32 %indent to i64
  %call40 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %bp.addr.0, i32 noundef 80, i64 noundef %conv39, i8* noundef null) #7
  %cmp41 = icmp slt i64 %call40, 0
  br i1 %cmp41, label %err, label %if.end45

if.end45:                                         ; preds = %lor.lhs.false38, %if.end14
  %bp.addr.1 = phi %struct.bio_st* [ %bp.addr.0, %lor.lhs.false38 ], [ null, %if.end14 ]
  %pop_f_prefix.1 = phi i32 [ %pop_f_prefix.0, %lor.lhs.false38 ], [ 0, %if.end14 ]
  %saved_indent.0 = phi i64 [ %call33, %lor.lhs.false38 ], [ -1, %if.end14 ]
  %bio.1 = phi %struct.bio_st* [ %bio.0, %lor.lhs.false38 ], [ null, %if.end14 ]
  %and47 = and i32 %xclass, 192
  %cmp48 = icmp eq i32 %and47, 192
  br i1 %cmp48, label %if.then50, label %if.else53

if.then50:                                        ; preds = %if.end45
  %call52 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 128, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0), i32 noundef %tag) #7
  br label %if.end78

if.else53:                                        ; preds = %if.end45
  %and54 = and i32 %xclass, 128
  %cmp55.not = icmp eq i32 %and54, 0
  br i1 %cmp55.not, label %if.else60, label %if.then57

if.then57:                                        ; preds = %if.else53
  %call59 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 noundef %tag) #7
  br label %if.end78

if.else60:                                        ; preds = %if.else53
  %and61 = and i32 %xclass, 64
  %cmp62.not = icmp eq i32 %and61, 0
  br i1 %cmp62.not, label %if.else67, label %if.then64

if.then64:                                        ; preds = %if.else60
  %call66 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i32 noundef %tag) #7
  br label %if.end78

if.else67:                                        ; preds = %if.else60
  %cmp68 = icmp sgt i32 %tag, 30
  br i1 %cmp68, label %if.then70, label %if.else73

if.then70:                                        ; preds = %if.else67
  %call72 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 128, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0), i32 noundef %tag) #7
  br label %if.end78

if.else73:                                        ; preds = %if.else67
  %call74 = call i8* @ASN1_tag2str(i32 noundef %tag) #5
  br label %if.end78

if.end78:                                         ; preds = %if.then57, %if.then70, %if.else73, %if.then64, %if.then50
  %p.1 = phi i8* [ %0, %if.then50 ], [ %0, %if.then57 ], [ %0, %if.then64 ], [ %0, %if.then70 ], [ %call74, %if.else73 ]
  %call79 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp.addr.1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i8* noundef %p.1) #7
  %cmp80 = icmp sgt i32 %call79, 0
  %conv81 = zext i1 %cmp80 to i32
  br label %err

err:                                              ; preds = %if.end32, %lor.lhs.false38, %if.end78
  %bp.addr.2 = phi %struct.bio_st* [ %bp.addr.0, %if.end32 ], [ %bp.addr.0, %lor.lhs.false38 ], [ %bp.addr.1, %if.end78 ]
  %pop_f_prefix.2 = phi i32 [ %pop_f_prefix.0, %if.end32 ], [ %pop_f_prefix.0, %lor.lhs.false38 ], [ %pop_f_prefix.1, %if.end78 ]
  %saved_indent.1 = phi i64 [ %call33, %if.end32 ], [ %call33, %lor.lhs.false38 ], [ %saved_indent.0, %if.end78 ]
  %i.0 = phi i32 [ 0, %if.end32 ], [ 0, %lor.lhs.false38 ], [ %conv81, %if.end78 ]
  %bio.2 = phi %struct.bio_st* [ %bio.0, %if.end32 ], [ %bio.0, %lor.lhs.false38 ], [ %bio.1, %if.end78 ]
  %cmp82 = icmp sgt i64 %saved_indent.1, -1
  br i1 %cmp82, label %if.then84, label %if.end86

if.then84:                                        ; preds = %err
  %call85 = call i64 @BIO_ctrl(%struct.bio_st* noundef %bp.addr.2, i32 noundef 80, i64 noundef %saved_indent.1, i8* noundef null) #7
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %err
  %tobool87.not = icmp eq i32 %pop_f_prefix.2, 0
  br i1 %tobool87.not, label %if.end90, label %if.then88

if.then88:                                        ; preds = %if.end86
  %call89 = call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef %bp.addr.2) #7
  br label %if.end90

if.end90:                                         ; preds = %if.then1, %if.then22, %lor.lhs.false, %if.else6, %if.then88, %if.end86
  %i.0128136 = phi i32 [ %i.0, %if.then88 ], [ %i.0, %if.end86 ], [ 0, %if.else6 ], [ 0, %lor.lhs.false ], [ 0, %if.then22 ], [ 0, %if.then1 ]
  %bio.2129135 = phi %struct.bio_st* [ %bio.2, %if.then88 ], [ %bio.2, %if.end86 ], [ null, %if.else6 ], [ %call24, %lor.lhs.false ], [ null, %if.then22 ], [ null, %if.then1 ]
  %call91 = call i32 @BIO_free(%struct.bio_st* noundef %bio.2129135) #7
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #6
  ret i32 %i.0128136
}

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.asn1_object_st* @d2i_ASN1_OBJECT(%struct.asn1_object_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #3

declare %struct.asn1_string_st* @d2i_ASN1_OCTET_STRING(%struct.asn1_string_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare i32 @BIO_dump_indent(%struct.bio_st* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare %struct.asn1_string_st* @d2i_ASN1_INTEGER(%struct.asn1_string_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare %struct.asn1_string_st* @d2i_ASN1_ENUMERATED(%struct.asn1_string_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare void @ASN1_ENUMERATED_free(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #3

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare %struct.bio_method_st* @BIO_f_prefix() local_unnamed_addr #3

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

declare %struct.bio_st* @BIO_pop(%struct.bio_st* noundef) local_unnamed_addr #3

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare i8* @llvm.load.relative.i64(i8*, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !11, i64 0}
!16 = !{!"asn1_string_st", !11, i64 0, !11, i64 4, !5, i64 8, !9, i64 16}
!17 = !{!16, !5, i64 8}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = !{!16, !11, i64 4}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}

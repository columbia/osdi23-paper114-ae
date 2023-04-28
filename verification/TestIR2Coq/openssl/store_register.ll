; ModuleID = 'crypto/store/store_register.c'
source_filename = "crypto/store/store_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lhash_st_OSSL_STORE_LOADER = type { %union.lh_OSSL_STORE_LOADER_dummy }
%union.lh_OSSL_STORE_LOADER_dummy = type { i8* }
%struct.ossl_store_loader_st = type { i8*, %struct.engine_st*, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, %struct.bio_st*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)*, i32 (%struct.ossl_store_loader_ctx_st*, i32, %struct.__va_list_tag*)*, i32 (%struct.ossl_store_loader_ctx_st*, i32)*, i32 (%struct.ossl_store_loader_ctx_st*, %struct.ossl_store_search_st*)*, %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)*, i32 (%struct.ossl_store_loader_ctx_st*)*, i32 (%struct.ossl_store_loader_ctx_st*)*, i32 (%struct.ossl_store_loader_ctx_st*)*, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.ossl_provider_st*, i32, i8*, i8*, i32, i8*, i8* (i8*, i8*)*, i8* (i8*, %struct.ossl_core_bio_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)* }
%struct.ossl_store_loader_ctx_st = type opaque
%struct.ui_method_st = type opaque
%struct.bio_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ossl_store_search_st = type { i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.evp_md_st*, i8*, i64 }
%struct.X509_name_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_md_st = type opaque
%struct.ossl_store_info_st = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_core_bio_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.engine_st = type opaque
%struct.lhash_st = type opaque

@.str = private unnamed_addr constant [30 x i8] c"crypto/store/store_register.c\00", align 1
@__func__.OSSL_STORE_LOADER_new = private unnamed_addr constant [22 x i8] c"OSSL_STORE_LOADER_new\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"+-.\00", align 1
@__func__.ossl_store_register_loader_int = private unnamed_addr constant [31 x i8] c"ossl_store_register_loader_int\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"scheme=%s\00", align 1
@registry_init = internal global i32 0, align 4
@do_registry_init_ossl_ret_ = internal unnamed_addr global i32 0, align 4
@registry_lock = internal unnamed_addr global i8* null, align 8
@loader_register = internal unnamed_addr global %struct.lhash_st_OSSL_STORE_LOADER* null, align 8
@__func__.ossl_store_get0_loader_int = private unnamed_addr constant [27 x i8] c"ossl_store_get0_loader_int\00", align 1
@__func__.ossl_store_unregister_loader_int = private unnamed_addr constant [33 x i8] c"ossl_store_unregister_loader_int\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_loader_st* @OSSL_STORE_LOADER_new(%struct.engine_st* noundef %e, i8* noundef %scheme) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %scheme, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_STORE_LOADER_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 106, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 208, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 46) #7
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_STORE_LOADER_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = bitcast i8* %call to %struct.ossl_store_loader_st*
  %engine = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %engine to %struct.engine_st**
  store %struct.engine_st* %e, %struct.engine_st** %1, align 8, !tbaa !4
  %scheme4 = bitcast i8* %call to i8**
  store i8* %scheme, i8** %scheme4, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi %struct.ossl_store_loader_st* [ null, %if.then ], [ null, %if.then2 ], [ %0, %if.end3 ]
  ret %struct.ossl_store_loader_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.engine_st* @OSSL_STORE_LOADER_get0_engine(%struct.ossl_store_loader_st* nocapture noundef readonly %loader) local_unnamed_addr #3 {
entry:
  %engine = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 1
  %0 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !4
  ret %struct.engine_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @OSSL_STORE_LOADER_get0_scheme(%struct.ossl_store_loader_st* nocapture noundef readonly %loader) local_unnamed_addr #3 {
entry:
  %scheme = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 0
  %0 = load i8*, i8** %scheme, align 8, !tbaa !10
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @OSSL_STORE_LOADER_set_open(%struct.ossl_store_loader_st* nocapture noundef writeonly %loader, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)* noundef %open_function) local_unnamed_addr #4 {
entry:
  %open = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 2
  store %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)* %open_function, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)** %open, align 8, !tbaa !11
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @OSSL_STORE_LOADER_set_open_ex(%struct.ossl_store_loader_st* nocapture noundef writeonly %loader, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)* noundef %open_ex_function) local_unnamed_addr #4 {
entry:
  %open_ex = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 11
  store %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)* %open_ex_function, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)** %open_ex, align 8, !tbaa !12
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @OSSL_STORE_LOADER_set_attach(%struct.ossl_store_loader_st* nocapture noundef writeonly %loader, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, %struct.bio_st*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)* noundef %attach_function) local_unnamed_addr #4 {
entry:
  %attach = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 3
  store %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, %struct.bio_st*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)* %attach_function, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, %struct.bio_st*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)** %attach, align 8, !tbaa !13
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @OSSL_STORE_LOADER_set_ctrl(%struct.ossl_store_loader_st* nocapture noundef writeonly %loader, i32 (%struct.ossl_store_loader_ctx_st*, i32, %struct.__va_list_tag*)* noundef %ctrl_function) local_unnamed_addr #4 {
entry:
  %ctrl = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 4
  store i32 (%struct.ossl_store_loader_ctx_st*, i32, %struct.__va_list_tag*)* %ctrl_function, i32 (%struct.ossl_store_loader_ctx_st*, i32, %struct.__va_list_tag*)** %ctrl, align 8, !tbaa !14
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @OSSL_STORE_LOADER_set_expect(%struct.ossl_store_loader_st* nocapture noundef writeonly %loader, i32 (%struct.ossl_store_loader_ctx_st*, i32)* noundef %expect_function) local_unnamed_addr #4 {
entry:
  %expect = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 5
  store i32 (%struct.ossl_store_loader_ctx_st*, i32)* %expect_function, i32 (%struct.ossl_store_loader_ctx_st*, i32)** %expect, align 8, !tbaa !15
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @OSSL_STORE_LOADER_set_find(%struct.ossl_store_loader_st* nocapture noundef writeonly %loader, i32 (%struct.ossl_store_loader_ctx_st*, %struct.ossl_store_search_st*)* noundef %find_function) local_unnamed_addr #4 {
entry:
  %find = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 6
  store i32 (%struct.ossl_store_loader_ctx_st*, %struct.ossl_store_search_st*)* %find_function, i32 (%struct.ossl_store_loader_ctx_st*, %struct.ossl_store_search_st*)** %find, align 8, !tbaa !16
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @OSSL_STORE_LOADER_set_load(%struct.ossl_store_loader_st* nocapture noundef writeonly %loader, %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)* noundef %load_function) local_unnamed_addr #4 {
entry:
  %load = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 7
  store %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)* %load_function, %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)** %load, align 8, !tbaa !17
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @OSSL_STORE_LOADER_set_eof(%struct.ossl_store_loader_st* nocapture noundef writeonly %loader, i32 (%struct.ossl_store_loader_ctx_st*)* noundef %eof_function) local_unnamed_addr #4 {
entry:
  %eof = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 8
  store i32 (%struct.ossl_store_loader_ctx_st*)* %eof_function, i32 (%struct.ossl_store_loader_ctx_st*)** %eof, align 8, !tbaa !18
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @OSSL_STORE_LOADER_set_error(%struct.ossl_store_loader_st* nocapture noundef writeonly %loader, i32 (%struct.ossl_store_loader_ctx_st*)* noundef %error_function) local_unnamed_addr #4 {
entry:
  %error = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 9
  store i32 (%struct.ossl_store_loader_ctx_st*)* %error_function, i32 (%struct.ossl_store_loader_ctx_st*)** %error, align 8, !tbaa !19
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @OSSL_STORE_LOADER_set_close(%struct.ossl_store_loader_st* nocapture noundef writeonly %loader, i32 (%struct.ossl_store_loader_ctx_st*)* noundef %close_function) local_unnamed_addr #4 {
entry:
  %closefn = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 10
  store i32 (%struct.ossl_store_loader_ctx_st*)* %close_function, i32 (%struct.ossl_store_loader_ctx_st*)** %closefn, align 8, !tbaa !20
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_store_register_loader_int(%struct.ossl_store_loader_st* noundef %loader) local_unnamed_addr #0 {
entry:
  %scheme1 = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 0
  %0 = load i8*, i8** %scheme1, align 8, !tbaa !10
  %1 = load i8, i8* %0, align 1, !tbaa !21
  %conv = sext i8 %1 to i32
  %call = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 3) #7
  %tobool.not = icmp eq i32 %call, 0
  %.pr = load i8, i8* %0, align 1, !tbaa !21
  br i1 %tobool.not, label %if.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cmp.not76 = icmp eq i8 %.pr, 0
  br i1 %cmp.not76, label %if.end19, label %land.rhs

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %2 = phi i8 [ %5, %while.body ], [ %.pr, %while.cond.preheader ]
  %scheme.077 = phi i8* [ %incdec.ptr, %while.body ], [ %0, %while.cond.preheader ]
  %conv2 = sext i8 %2 to i32
  %call5 = tail call i32 @ossl_ctype_check(i32 noundef %conv2, i32 noundef 3) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %while.body

lor.lhs.false:                                    ; preds = %land.rhs
  %3 = load i8, i8* %scheme.077, align 1, !tbaa !21
  %conv7 = sext i8 %3 to i32
  %call8 = tail call i32 @ossl_ctype_check(i32 noundef %conv7, i32 noundef 4) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.rhs, label %while.body

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load i8, i8* %scheme.077, align 1, !tbaa !21
  %conv10 = sext i8 %4 to i32
  %call11 = tail call i8* @strchr(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %conv10) #8
  %cmp12.not = icmp eq i8* %call11, null
  br i1 %cmp12.not, label %if.end, label %while.body

while.body:                                       ; preds = %land.rhs, %lor.lhs.false, %lor.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %scheme.077, i64 1
  %5 = load i8, i8* %incdec.ptr, align 1, !tbaa !21
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end19, label %land.rhs, !llvm.loop !22

if.end:                                           ; preds = %lor.rhs, %entry
  %6 = phi i8 [ %.pr, %entry ], [ %4, %lor.rhs ]
  %cmp15.not = icmp eq i8 %6, 0
  br i1 %cmp15.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.ossl_store_register_loader_int, i64 0, i64 0)) #7
  %7 = load i8*, i8** %scheme1, align 8, !tbaa !10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 106, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef %7) #7
  br label %cleanup

if.end19:                                         ; preds = %while.body, %while.cond.preheader, %if.end
  %open = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 2
  %8 = load %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)** %open, align 8, !tbaa !11
  %cmp20 = icmp eq %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)* %8, null
  br i1 %cmp20, label %if.then34, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end19
  %load = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 7
  %9 = load %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)*, %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)** %load, align 8, !tbaa !17
  %cmp23 = icmp eq %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)* %9, null
  br i1 %cmp23, label %if.then34, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %eof = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 8
  %10 = load i32 (%struct.ossl_store_loader_ctx_st*)*, i32 (%struct.ossl_store_loader_ctx_st*)** %eof, align 8, !tbaa !18
  %cmp26 = icmp eq i32 (%struct.ossl_store_loader_ctx_st*)* %10, null
  br i1 %cmp26, label %if.then34, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %error = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 9
  %11 = load i32 (%struct.ossl_store_loader_ctx_st*)*, i32 (%struct.ossl_store_loader_ctx_st*)** %error, align 8, !tbaa !19
  %cmp29 = icmp eq i32 (%struct.ossl_store_loader_ctx_st*)* %11, null
  br i1 %cmp29, label %if.then34, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %closefn = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 10
  %12 = load i32 (%struct.ossl_store_loader_ctx_st*)*, i32 (%struct.ossl_store_loader_ctx_st*)** %closefn, align 8, !tbaa !20
  %cmp32 = icmp eq i32 (%struct.ossl_store_loader_ctx_st*)* %12, null
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %lor.lhs.false31, %lor.lhs.false28, %lor.lhs.false25, %lor.lhs.false22, %if.end19
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.ossl_store_register_loader_int, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 116, i8* noundef null) #7
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false31
  %call36 = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @registry_init, void ()* noundef nonnull @do_registry_init_ossl_) #7
  %tobool37 = icmp ne i32 %call36, 0
  %13 = load i32, i32* @do_registry_init_ossl_ret_, align 4
  %tobool38 = icmp ne i32 %13, 0
  %or.cond = select i1 %tobool37, i1 %tobool38, i1 false
  br i1 %or.cond, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end35
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.ossl_store_register_loader_int, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %14 = load i8*, i8** @registry_lock, align 8, !tbaa !24
  %call41 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %14) #7
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cleanup, label %if.end44

if.end44:                                         ; preds = %if.end40
  %call45 = tail call fastcc i32 @ossl_store_register_init() #9
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end55, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end44
  %15 = load %struct.lhash_st_OSSL_STORE_LOADER*, %struct.lhash_st_OSSL_STORE_LOADER** @loader_register, align 8, !tbaa !24
  %call47 = tail call fastcc %struct.ossl_store_loader_st* @lh_OSSL_STORE_LOADER_insert(%struct.lhash_st_OSSL_STORE_LOADER* noundef %15, %struct.ossl_store_loader_st* noundef nonnull %loader) #9
  %cmp48.not = icmp eq %struct.ossl_store_loader_st* %call47, null
  br i1 %cmp48.not, label %lor.lhs.false50, label %if.then54

lor.lhs.false50:                                  ; preds = %land.lhs.true
  %16 = load %struct.lhash_st_OSSL_STORE_LOADER*, %struct.lhash_st_OSSL_STORE_LOADER** @loader_register, align 8, !tbaa !24
  %call51 = tail call fastcc i32 @lh_OSSL_STORE_LOADER_error(%struct.lhash_st_OSSL_STORE_LOADER* noundef %16) #9
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %lor.lhs.false50, %land.lhs.true
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %lor.lhs.false50, %if.end44
  %ok.0 = phi i32 [ 1, %if.then54 ], [ 0, %lor.lhs.false50 ], [ 0, %if.end44 ]
  %17 = load i8*, i8** @registry_lock, align 8, !tbaa !24
  %call56 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end55, %if.then39, %if.then34, %if.then17
  %retval.0 = phi i32 [ 0, %if.then17 ], [ 0, %if.then34 ], [ %ok.0, %if.end55 ], [ 0, %if.then39 ], [ 0, %if.end40 ]
  ret i32 %retval.0
}

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #5

declare i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @do_registry_init_ossl_() #0 {
entry:
  %call = tail call fastcc i32 @do_registry_init() #9
  store i32 %call, i32* @do_registry_init_ossl_ret_, align 4, !tbaa !25
  ret void
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_store_register_init() unnamed_addr #0 {
entry:
  %0 = load %struct.lhash_st_OSSL_STORE_LOADER*, %struct.lhash_st_OSSL_STORE_LOADER** @loader_register, align 8, !tbaa !24
  %cmp = icmp eq %struct.lhash_st_OSSL_STORE_LOADER* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.lhash_st_OSSL_STORE_LOADER* @lh_OSSL_STORE_LOADER_new() #9
  store %struct.lhash_st_OSSL_STORE_LOADER* %call, %struct.lhash_st_OSSL_STORE_LOADER** @loader_register, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi %struct.lhash_st_OSSL_STORE_LOADER* [ %call, %if.then ], [ %0, %entry ]
  %cmp1 = icmp ne %struct.lhash_st_OSSL_STORE_LOADER* %1, null
  %conv = zext i1 %cmp1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_store_loader_st* @lh_OSSL_STORE_LOADER_insert(%struct.lhash_st_OSSL_STORE_LOADER* noundef %lh, %struct.ossl_store_loader_st* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_OSSL_STORE_LOADER* %lh to %struct.lhash_st*
  %1 = bitcast %struct.ossl_store_loader_st* %d to i8*
  %call = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %0, i8* noundef %1) #7
  %2 = bitcast i8* %call to %struct.ossl_store_loader_st*
  ret %struct.ossl_store_loader_st* %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @lh_OSSL_STORE_LOADER_error(%struct.lhash_st_OSSL_STORE_LOADER* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_OSSL_STORE_LOADER* %lh to %struct.lhash_st*
  %call = tail call i32 @OPENSSL_LH_error(%struct.lhash_st* noundef %0) #7
  ret i32 %call
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_STORE_register_loader(%struct.ossl_store_loader_st* noundef %loader) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_store_register_loader_int(%struct.ossl_store_loader_st* noundef %loader) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_loader_st* @ossl_store_get0_loader_int(i8* noundef %scheme) local_unnamed_addr #0 {
entry:
  %template = alloca %struct.ossl_store_loader_st, align 8
  %0 = bitcast %struct.ossl_store_loader_st* %template to i8*
  call void @llvm.lifetime.start.p0i8(i64 208, i8* nonnull %0) #10
  %scheme1 = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %template, i64 0, i32 0
  store i8* %scheme, i8** %scheme1, align 8, !tbaa !10
  %open = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %template, i64 0, i32 2
  store %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)* null, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)** %open, align 8, !tbaa !11
  %load = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %template, i64 0, i32 7
  store %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)* null, %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)** %load, align 8, !tbaa !17
  %eof = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %template, i64 0, i32 8
  store i32 (%struct.ossl_store_loader_ctx_st*)* null, i32 (%struct.ossl_store_loader_ctx_st*)** %eof, align 8, !tbaa !18
  %closefn = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %template, i64 0, i32 10
  store i32 (%struct.ossl_store_loader_ctx_st*)* null, i32 (%struct.ossl_store_loader_ctx_st*)** %closefn, align 8, !tbaa !20
  %open_ex = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %template, i64 0, i32 11
  store %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)* null, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)** %open_ex, align 8, !tbaa !12
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @registry_init, void ()* noundef nonnull @do_registry_init_ossl_) #7
  %tobool = icmp ne i32 %call, 0
  %1 = load i32, i32* @do_registry_init_ossl_ret_, align 4
  %tobool2 = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool, i1 %tobool2, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_store_get0_loader_int, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** @registry_lock, align 8, !tbaa !24
  %call3 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %2) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc i32 @ossl_store_register_init() #9
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_store_get0_loader_int, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786691, i8* noundef null) #7
  br label %if.end13

if.else:                                          ; preds = %if.end6
  %3 = load %struct.lhash_st_OSSL_STORE_LOADER*, %struct.lhash_st_OSSL_STORE_LOADER** @loader_register, align 8, !tbaa !24
  %call10 = call fastcc %struct.ossl_store_loader_st* @lh_OSSL_STORE_LOADER_retrieve(%struct.lhash_st_OSSL_STORE_LOADER* noundef %3, %struct.ossl_store_loader_st* noundef nonnull %template) #9
  %cmp = icmp eq %struct.ossl_store_loader_st* %call10, null
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.else
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_store_get0_loader_int, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 105, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef %scheme) #7
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11, %if.then9
  %loader.0 = phi %struct.ossl_store_loader_st* [ null, %if.then11 ], [ %call10, %if.else ], [ null, %if.then9 ]
  %4 = load i8*, i8** @registry_lock, align 8, !tbaa !24
  %call14 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end13, %if.then
  %retval.0 = phi %struct.ossl_store_loader_st* [ %loader.0, %if.end13 ], [ null, %if.then ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 208, i8* nonnull %0) #10
  ret %struct.ossl_store_loader_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_store_loader_st* @lh_OSSL_STORE_LOADER_retrieve(%struct.lhash_st_OSSL_STORE_LOADER* noundef %lh, %struct.ossl_store_loader_st* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_OSSL_STORE_LOADER* %lh to %struct.lhash_st*
  %1 = bitcast %struct.ossl_store_loader_st* %d to i8*
  %call = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %0, i8* noundef %1) #7
  %2 = bitcast i8* %call to %struct.ossl_store_loader_st*
  ret %struct.ossl_store_loader_st* %2
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_loader_st* @ossl_store_unregister_loader_int(i8* noundef %scheme) local_unnamed_addr #0 {
entry:
  %template = alloca %struct.ossl_store_loader_st, align 8
  %0 = bitcast %struct.ossl_store_loader_st* %template to i8*
  call void @llvm.lifetime.start.p0i8(i64 208, i8* nonnull %0) #10
  %scheme1 = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %template, i64 0, i32 0
  store i8* %scheme, i8** %scheme1, align 8, !tbaa !10
  %open = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %template, i64 0, i32 2
  store %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)* null, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)** %open, align 8, !tbaa !11
  %load = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %template, i64 0, i32 7
  store %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)* null, %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)** %load, align 8, !tbaa !17
  %eof = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %template, i64 0, i32 8
  store i32 (%struct.ossl_store_loader_ctx_st*)* null, i32 (%struct.ossl_store_loader_ctx_st*)** %eof, align 8, !tbaa !18
  %closefn = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %template, i64 0, i32 10
  store i32 (%struct.ossl_store_loader_ctx_st*)* null, i32 (%struct.ossl_store_loader_ctx_st*)** %closefn, align 8, !tbaa !20
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @registry_init, void ()* noundef nonnull @do_registry_init_ossl_) #7
  %tobool = icmp ne i32 %call, 0
  %1 = load i32, i32* @do_registry_init_ossl_ret_, align 4
  %tobool2 = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool, i1 %tobool2, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_store_unregister_loader_int, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** @registry_lock, align 8, !tbaa !24
  %call3 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %2) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc i32 @ossl_store_register_init() #9
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_store_unregister_loader_int, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786691, i8* noundef null) #7
  br label %if.end13

if.else:                                          ; preds = %if.end6
  %3 = load %struct.lhash_st_OSSL_STORE_LOADER*, %struct.lhash_st_OSSL_STORE_LOADER** @loader_register, align 8, !tbaa !24
  %call10 = call fastcc %struct.ossl_store_loader_st* @lh_OSSL_STORE_LOADER_delete(%struct.lhash_st_OSSL_STORE_LOADER* noundef %3, %struct.ossl_store_loader_st* noundef nonnull %template) #9
  %cmp = icmp eq %struct.ossl_store_loader_st* %call10, null
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.else
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_store_unregister_loader_int, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 105, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef %scheme) #7
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11, %if.then9
  %loader.0 = phi %struct.ossl_store_loader_st* [ null, %if.then11 ], [ %call10, %if.else ], [ null, %if.then9 ]
  %4 = load i8*, i8** @registry_lock, align 8, !tbaa !24
  %call14 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end13, %if.then
  %retval.0 = phi %struct.ossl_store_loader_st* [ %loader.0, %if.end13 ], [ null, %if.then ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 208, i8* nonnull %0) #10
  ret %struct.ossl_store_loader_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_store_loader_st* @lh_OSSL_STORE_LOADER_delete(%struct.lhash_st_OSSL_STORE_LOADER* noundef %lh, %struct.ossl_store_loader_st* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_OSSL_STORE_LOADER* %lh to %struct.lhash_st*
  %1 = bitcast %struct.ossl_store_loader_st* %d to i8*
  %call = tail call i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef %0, i8* noundef %1) #7
  %2 = bitcast i8* %call to %struct.ossl_store_loader_st*
  ret %struct.ossl_store_loader_st* %2
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_loader_st* @OSSL_STORE_unregister_loader(i8* noundef %scheme) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_store_loader_st* @ossl_store_unregister_loader_int(i8* noundef %scheme) #9
  ret %struct.ossl_store_loader_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_store_destroy_loaders_int() local_unnamed_addr #0 {
entry:
  %0 = load %struct.lhash_st_OSSL_STORE_LOADER*, %struct.lhash_st_OSSL_STORE_LOADER** @loader_register, align 8, !tbaa !24
  tail call fastcc void @lh_OSSL_STORE_LOADER_free(%struct.lhash_st_OSSL_STORE_LOADER* noundef %0) #9
  store %struct.lhash_st_OSSL_STORE_LOADER* null, %struct.lhash_st_OSSL_STORE_LOADER** @loader_register, align 8, !tbaa !24
  %1 = load i8*, i8** @registry_lock, align 8, !tbaa !24
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %1) #7
  store i8* null, i8** @registry_lock, align 8, !tbaa !24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_OSSL_STORE_LOADER_free(%struct.lhash_st_OSSL_STORE_LOADER* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_OSSL_STORE_LOADER* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %0) #7
  ret void
}

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_STORE_do_all_loaders(void (%struct.ossl_store_loader_st*, i8*)* noundef %do_function, i8* noundef %do_arg) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ossl_store_register_init() #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct.lhash_st_OSSL_STORE_LOADER*, %struct.lhash_st_OSSL_STORE_LOADER** @loader_register, align 8, !tbaa !24
  tail call fastcc void @lh_OSSL_STORE_LOADER_doall_void(%struct.lhash_st_OSSL_STORE_LOADER* noundef %0, void (%struct.ossl_store_loader_st*, i8*)* noundef %do_function, i8* noundef %do_arg) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_OSSL_STORE_LOADER_doall_void(%struct.lhash_st_OSSL_STORE_LOADER* noundef %lh, void (%struct.ossl_store_loader_st*, i8*)* noundef %fn, i8* noundef %arg) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_OSSL_STORE_LOADER* %lh to %struct.lhash_st*
  %1 = bitcast void (%struct.ossl_store_loader_st*, i8*)* %fn to void (i8*, i8*)*
  tail call void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef %0, void (i8*, i8*)* noundef %1, i8* noundef %arg) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_registry_init() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_THREAD_lock_new() #7
  store i8* %call, i8** @registry_lock, align 8, !tbaa !24
  %cmp = icmp ne i8* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.lhash_st_OSSL_STORE_LOADER* @lh_OSSL_STORE_LOADER_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef bitcast (i64 (%struct.ossl_store_loader_st*)* @store_loader_hash to i64 (i8*)*), i32 (i8*, i8*)* noundef bitcast (i32 (%struct.ossl_store_loader_st*, %struct.ossl_store_loader_st*)* @store_loader_cmp to i32 (i8*, i8*)*)) #7
  %0 = bitcast %struct.lhash_st* %call to %struct.lhash_st_OSSL_STORE_LOADER*
  ret %struct.lhash_st_OSSL_STORE_LOADER* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @store_loader_hash(%struct.ossl_store_loader_st* nocapture noundef readonly %v) #0 {
entry:
  %scheme = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %v, i64 0, i32 0
  %0 = load i8*, i8** %scheme, align 8, !tbaa !10
  %call = tail call i64 @OPENSSL_LH_strhash(i8* noundef %0) #7
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @store_loader_cmp(%struct.ossl_store_loader_st* nocapture noundef readonly %a, %struct.ossl_store_loader_st* nocapture noundef readonly %b) #6 {
entry:
  %scheme = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %a, i64 0, i32 0
  %0 = load i8*, i8** %scheme, align 8, !tbaa !10
  %scheme1 = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %b, i64 0, i32 0
  %1 = load i8*, i8** %scheme1, align 8, !tbaa !10
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

declare i64 @OPENSSL_LH_strhash(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

declare i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_LH_error(%struct.lhash_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @OPENSSL_LH_free(%struct.lhash_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"ossl_store_loader_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !9, i64 104, !6, i64 112, !6, i64 120, !7, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = !{!5, !6, i64 16}
!12 = !{!5, !6, i64 88}
!13 = !{!5, !6, i64 24}
!14 = !{!5, !6, i64 32}
!15 = !{!5, !6, i64 40}
!16 = !{!5, !6, i64 48}
!17 = !{!5, !6, i64 56}
!18 = !{!5, !6, i64 64}
!19 = !{!5, !6, i64 72}
!20 = !{!5, !6, i64 80}
!21 = !{!7, !7, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!6, !6, i64 0}
!25 = !{!9, !9, i64 0}

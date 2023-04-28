; ModuleID = 'crypto/x509/x509_d2.c'
source_filename = "crypto/x509/x509_d2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_store_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.x509_lookup_method_st = type opaque
%struct.x509_lookup_st = type opaque

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_set_default_paths_ex(%struct.x509_store_st* noundef %ctx, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_file() #2
  %call1 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef %ctx, %struct.x509_lookup_method_st* noundef %call) #2
  %cmp = icmp eq %struct.x509_lookup_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef nonnull %call1, i32 noundef 1, i8* noundef null, i64 noundef 3, i8** noundef null, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #2
  %call3 = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_hash_dir() #2
  %call4 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef %ctx, %struct.x509_lookup_method_st* noundef %call3) #2
  %cmp5 = icmp eq %struct.x509_lookup_st* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @X509_LOOKUP_ctrl(%struct.x509_lookup_st* noundef nonnull %call4, i32 noundef 2, i8* noundef null, i64 noundef 3, i8** noundef null) #2
  %call9 = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_store() #2
  %call10 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef %ctx, %struct.x509_lookup_method_st* noundef %call9) #2
  %cmp11 = icmp eq %struct.x509_lookup_st* %call10, null
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end7
  %call14 = tail call i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef nonnull %call10, i32 noundef 3, i8* noundef null, i64 noundef 0, i8** noundef null, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #2
  tail call void @ERR_clear_error() #2
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end, %entry, %if.end13
  %retval.0 = phi i32 [ 1, %if.end13 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

declare %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef, %struct.x509_lookup_method_st* noundef) local_unnamed_addr #1

declare %struct.x509_lookup_method_st* @X509_LOOKUP_file() local_unnamed_addr #1

declare i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef, i32 noundef, i8* noundef, i64 noundef, i8** noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.x509_lookup_method_st* @X509_LOOKUP_hash_dir() local_unnamed_addr #1

declare i32 @X509_LOOKUP_ctrl(%struct.x509_lookup_st* noundef, i32 noundef, i8* noundef, i64 noundef, i8** noundef) local_unnamed_addr #1

declare %struct.x509_lookup_method_st* @X509_LOOKUP_store() local_unnamed_addr #1

declare void @ERR_clear_error() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_set_default_paths(%struct.x509_store_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_STORE_set_default_paths_ex(%struct.x509_store_st* noundef %ctx, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_load_file_ex(%struct.x509_store_st* noundef %ctx, i8* noundef %file, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %file, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_file() #2
  %call1 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef %ctx, %struct.x509_lookup_method_st* noundef %call) #2
  %cmp2 = icmp eq %struct.x509_lookup_st* %call1, null
  br i1 %cmp2, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef nonnull %call1, i32 noundef 1, i8* noundef nonnull %file, i64 noundef 1, i8** noundef null, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #2
  %cmp5 = icmp ne i32 %call4, 0
  %spec.select = zext i1 %cmp5 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false3, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_load_file(%struct.x509_store_st* noundef %ctx, i8* noundef %file) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_STORE_load_file_ex(%struct.x509_store_st* noundef %ctx, i8* noundef %file, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_load_path(%struct.x509_store_st* noundef %ctx, i8* noundef %path) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %path, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_hash_dir() #2
  %call1 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef %ctx, %struct.x509_lookup_method_st* noundef %call) #2
  %cmp2 = icmp eq %struct.x509_lookup_st* %call1, null
  br i1 %cmp2, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @X509_LOOKUP_ctrl(%struct.x509_lookup_st* noundef nonnull %call1, i32 noundef 2, i8* noundef nonnull %path, i64 noundef 1, i8** noundef null) #2
  %cmp5 = icmp ne i32 %call4, 0
  %spec.select = zext i1 %cmp5 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false3, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_load_store_ex(%struct.x509_store_st* noundef %ctx, i8* noundef %uri, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %uri, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_store() #2
  %call1 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef %ctx, %struct.x509_lookup_method_st* noundef %call) #2
  %cmp2 = icmp eq %struct.x509_lookup_st* %call1, null
  br i1 %cmp2, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef nonnull %call1, i32 noundef 3, i8* noundef nonnull %uri, i64 noundef 0, i8** noundef null, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #2
  %cmp5 = icmp ne i32 %call4, 0
  %spec.select = zext i1 %cmp5 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false3, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_load_store(%struct.x509_store_st* noundef %ctx, i8* noundef %uri) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_STORE_load_store_ex(%struct.x509_store_st* noundef %ctx, i8* noundef %uri, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_load_locations_ex(%struct.x509_store_st* noundef %ctx, i8* noundef %file, i8* noundef %path, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %file, null
  %cmp1 = icmp eq i8* %path, null
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.end5, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %if.end
  %call = tail call i32 @X509_STORE_load_file_ex(%struct.x509_store_st* noundef %ctx, i8* noundef nonnull %file, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end5

if.end5:                                          ; preds = %land.lhs.true3, %if.end
  br i1 %cmp1, label %if.end11, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end5
  %call8 = tail call i32 @X509_STORE_load_path(%struct.x509_store_st* noundef %ctx, i8* noundef nonnull %path) #3
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %return, label %if.end11

if.end11:                                         ; preds = %land.lhs.true7, %if.end5
  br label %return

return:                                           ; preds = %land.lhs.true7, %land.lhs.true3, %entry, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry ], [ 0, %land.lhs.true3 ], [ 0, %land.lhs.true7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_load_locations(%struct.x509_store_st* noundef %ctx, i8* noundef %file, i8* noundef %path) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_STORE_load_locations_ex(%struct.x509_store_st* noundef %ctx, i8* noundef %file, i8* noundef %path, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #3
  ret i32 %call
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}

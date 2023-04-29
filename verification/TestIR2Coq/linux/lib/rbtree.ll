; ModuleID = 'lib/rbtree.c'
source_filename = "lib/rbtree.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__rb_erase_color(%struct.rb_node* noundef %parent, %struct.rb_root* noundef %root, void (%struct.rb_node*, %struct.rb_node*)* nocapture noundef readonly %augment_rotate) local_unnamed_addr #0 {
entry:
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.backedge.i, %entry
  %parent.addr.0.i = phi %struct.rb_node* [ %parent, %entry ], [ %parent.addr.0.be.i, %while.cond.backedge.i ]
  %node.0.i = phi %struct.rb_node* [ null, %entry ], [ %parent.addr.0.i, %while.cond.backedge.i ]
  %rb_right.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.addr.0.i, i64 0, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_right.i, align 8
  %cmp.not.i = icmp eq %struct.rb_node* %node.0.i, %0
  br i1 %cmp.not.i, label %if.else102.i, label %if.then.i

if.then.i:                                        ; preds = %while.cond.i
  %__rb_parent_color.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %0, i64 0, i32 0
  %1 = load i64, i64* %__rb_parent_color.i, align 8
  %and.i = and i64 %1, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then1.i, label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %0, i64 0, i32 2
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_left.i, align 8
  store volatile %struct.rb_node* %2, %struct.rb_node** %rb_right.i, align 8
  store volatile %struct.rb_node* %parent.addr.0.i, %struct.rb_node** %rb_left.i, align 8
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %2, %struct.rb_node* noundef %parent.addr.0.i, i32 noundef 1) #8
  call fastcc void @__rb_rotate_set_parents(%struct.rb_node* noundef %parent.addr.0.i, %struct.rb_node* noundef %0, %struct.rb_root* noundef %root, i32 noundef 0) #8
  call void %augment_rotate(%struct.rb_node* noundef %parent.addr.0.i, %struct.rb_node* noundef %0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i
  %sibling.0.i = phi %struct.rb_node* [ %0, %if.then.i ], [ %2, %if.then1.i ]
  %rb_right19.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %sibling.0.i, i64 0, i32 1
  %3 = load %struct.rb_node*, %struct.rb_node** %rb_right19.i, align 8
  %tobool20.not.i = icmp eq %struct.rb_node* %3, null
  br i1 %tobool20.not.i, label %if.then24.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %__rb_parent_color21.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i64 0, i32 0
  %4 = load i64, i64* %__rb_parent_color21.i, align 8
  %and22.i = and i64 %4, 1
  %tobool23.not.i = icmp eq i64 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end77.i, label %if.then24.i

if.then24.i:                                      ; preds = %lor.lhs.false.i, %if.end.i
  %rb_left25.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %sibling.0.i, i64 0, i32 2
  %5 = load %struct.rb_node*, %struct.rb_node** %rb_left25.i, align 8
  %tobool26.not.i = icmp eq %struct.rb_node* %5, null
  br i1 %tobool26.not.i, label %if.then31.i, label %lor.lhs.false27.i

lor.lhs.false27.i:                                ; preds = %if.then24.i
  %__rb_parent_color28.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %5, i64 0, i32 0
  %6 = load i64, i64* %__rb_parent_color28.i, align 8
  %and29.i = and i64 %6, 1
  %tobool30.not.i = icmp eq i64 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end42.i, label %if.then31.i

if.then31.i:                                      ; preds = %lor.lhs.false27.i, %if.then24.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %sibling.0.i, %struct.rb_node* noundef %parent.addr.0.i, i32 noundef 0) #8
  %__rb_parent_color32.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.addr.0.i, i64 0, i32 0
  %7 = load i64, i64* %__rb_parent_color32.i, align 8
  %and33.i = and i64 %7, 1
  %tobool34.not.i = icmp eq i64 %and33.i, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %if.else.i

if.then35.i:                                      ; preds = %if.then31.i
  call fastcc void @rb_set_black(%struct.rb_node* noundef %parent.addr.0.i) #8
  br label %____rb_erase_color.exit

if.else.i:                                        ; preds = %if.then31.i
  %and37.i = and i64 %7, -4
  %tobool38.not.i = icmp eq i64 %and37.i, 0
  br i1 %tobool38.not.i, label %____rb_erase_color.exit, label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.else148.i, %if.else.i
  %parent.addr.0.be.in.i = phi i64 [ %and37.i, %if.else.i ], [ %and150.i, %if.else148.i ]
  %parent.addr.0.be.i = inttoptr i64 %parent.addr.0.be.in.i to %struct.rb_node*
  br label %while.cond.i

if.end42.i:                                       ; preds = %lor.lhs.false27.i
  %rb_left25.i.le = getelementptr inbounds %struct.rb_node, %struct.rb_node* %sibling.0.i, i64 0, i32 2
  %rb_right43.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %5, i64 0, i32 1
  %8 = load %struct.rb_node*, %struct.rb_node** %rb_right43.i, align 8
  store volatile %struct.rb_node* %8, %struct.rb_node** %rb_left25.i.le, align 8
  store volatile %struct.rb_node* %sibling.0.i, %struct.rb_node** %rb_right43.i, align 8
  store volatile %struct.rb_node* %5, %struct.rb_node** %rb_right.i, align 8
  %tobool74.not.i = icmp eq %struct.rb_node* %8, null
  br i1 %tobool74.not.i, label %if.end76.i, label %if.then75.i

if.then75.i:                                      ; preds = %if.end42.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %8, %struct.rb_node* noundef %sibling.0.i, i32 noundef 1) #8
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then75.i, %if.end42.i
  call void %augment_rotate(%struct.rb_node* noundef %sibling.0.i, %struct.rb_node* noundef nonnull %5) #8
  br label %if.end77.i

if.end77.i:                                       ; preds = %lor.lhs.false.i, %if.end76.i
  %sibling.1.i = phi %struct.rb_node* [ %5, %if.end76.i ], [ %sibling.0.i, %lor.lhs.false.i ]
  %tmp1.0.i = phi %struct.rb_node* [ %sibling.0.i, %if.end76.i ], [ %3, %lor.lhs.false.i ]
  %rb_left78.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %sibling.1.i, i64 0, i32 2
  %9 = load %struct.rb_node*, %struct.rb_node** %rb_left78.i, align 8
  store volatile %struct.rb_node* %9, %struct.rb_node** %rb_right.i, align 8
  store volatile %struct.rb_node* %parent.addr.0.i, %struct.rb_node** %rb_left78.i, align 8
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %tmp1.0.i, %struct.rb_node* noundef %sibling.1.i, i32 noundef 1) #8
  %tobool99.not.i = icmp eq %struct.rb_node* %9, null
  br i1 %tobool99.not.i, label %if.end101.i, label %if.then100.i

if.then100.i:                                     ; preds = %if.end77.i
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %9, %struct.rb_node* noundef %parent.addr.0.i) #8
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then100.i, %if.end77.i
  call fastcc void @__rb_rotate_set_parents(%struct.rb_node* noundef %parent.addr.0.i, %struct.rb_node* noundef %sibling.1.i, %struct.rb_root* noundef %root, i32 noundef 1) #8
  call void %augment_rotate(%struct.rb_node* noundef %parent.addr.0.i, %struct.rb_node* noundef %sibling.1.i) #8
  br label %____rb_erase_color.exit

if.else102.i:                                     ; preds = %while.cond.i
  %rb_left103.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.addr.0.i, i64 0, i32 2
  %10 = load %struct.rb_node*, %struct.rb_node** %rb_left103.i, align 8
  %__rb_parent_color104.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i64 0, i32 0
  %11 = load i64, i64* %__rb_parent_color104.i, align 8
  %and105.i = and i64 %11, 1
  %tobool106.not.i = icmp eq i64 %and105.i, 0
  br i1 %tobool106.not.i, label %if.then107.i, label %if.end129.i

if.then107.i:                                     ; preds = %if.else102.i
  %rb_right108.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i64 0, i32 1
  %12 = load %struct.rb_node*, %struct.rb_node** %rb_right108.i, align 8
  store volatile %struct.rb_node* %12, %struct.rb_node** %rb_left103.i, align 8
  store volatile %struct.rb_node* %parent.addr.0.i, %struct.rb_node** %rb_right108.i, align 8
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %12, %struct.rb_node* noundef %parent.addr.0.i, i32 noundef 1) #8
  call fastcc void @__rb_rotate_set_parents(%struct.rb_node* noundef %parent.addr.0.i, %struct.rb_node* noundef %10, %struct.rb_root* noundef %root, i32 noundef 0) #8
  call void %augment_rotate(%struct.rb_node* noundef %parent.addr.0.i, %struct.rb_node* noundef %10) #8
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then107.i, %if.else102.i
  %sibling.2.i = phi %struct.rb_node* [ %10, %if.else102.i ], [ %12, %if.then107.i ]
  %rb_left130.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %sibling.2.i, i64 0, i32 2
  %13 = load %struct.rb_node*, %struct.rb_node** %rb_left130.i, align 8
  %tobool131.not.i = icmp eq %struct.rb_node* %13, null
  br i1 %tobool131.not.i, label %if.then136.i, label %lor.lhs.false132.i

lor.lhs.false132.i:                               ; preds = %if.end129.i
  %__rb_parent_color133.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %13, i64 0, i32 0
  %14 = load i64, i64* %__rb_parent_color133.i, align 8
  %and134.i = and i64 %14, 1
  %tobool135.not.i = icmp eq i64 %and134.i, 0
  br i1 %tobool135.not.i, label %if.end190.i, label %if.then136.i

if.then136.i:                                     ; preds = %lor.lhs.false132.i, %if.end129.i
  %rb_right137.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %sibling.2.i, i64 0, i32 1
  %15 = load %struct.rb_node*, %struct.rb_node** %rb_right137.i, align 8
  %tobool138.not.i = icmp eq %struct.rb_node* %15, null
  br i1 %tobool138.not.i, label %if.then143.i, label %lor.lhs.false139.i

lor.lhs.false139.i:                               ; preds = %if.then136.i
  %__rb_parent_color140.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %15, i64 0, i32 0
  %16 = load i64, i64* %__rb_parent_color140.i, align 8
  %and141.i = and i64 %16, 1
  %tobool142.not.i = icmp eq i64 %and141.i, 0
  br i1 %tobool142.not.i, label %if.end155.i, label %if.then143.i

if.then143.i:                                     ; preds = %lor.lhs.false139.i, %if.then136.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %sibling.2.i, %struct.rb_node* noundef %parent.addr.0.i, i32 noundef 0) #8
  %__rb_parent_color144.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.addr.0.i, i64 0, i32 0
  %17 = load i64, i64* %__rb_parent_color144.i, align 8
  %and145.i = and i64 %17, 1
  %tobool146.not.i = icmp eq i64 %and145.i, 0
  br i1 %tobool146.not.i, label %if.then147.i, label %if.else148.i

if.then147.i:                                     ; preds = %if.then143.i
  call fastcc void @rb_set_black(%struct.rb_node* noundef %parent.addr.0.i) #8
  br label %____rb_erase_color.exit

if.else148.i:                                     ; preds = %if.then143.i
  %and150.i = and i64 %17, -4
  %tobool151.not.i = icmp eq i64 %and150.i, 0
  br i1 %tobool151.not.i, label %____rb_erase_color.exit, label %while.cond.backedge.i

if.end155.i:                                      ; preds = %lor.lhs.false139.i
  %rb_right137.i.le = getelementptr inbounds %struct.rb_node, %struct.rb_node* %sibling.2.i, i64 0, i32 1
  %rb_left156.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %15, i64 0, i32 2
  %18 = load %struct.rb_node*, %struct.rb_node** %rb_left156.i, align 8
  store volatile %struct.rb_node* %18, %struct.rb_node** %rb_right137.i.le, align 8
  store volatile %struct.rb_node* %sibling.2.i, %struct.rb_node** %rb_left156.i, align 8
  store volatile %struct.rb_node* %15, %struct.rb_node** %rb_left103.i, align 8
  %tobool187.not.i = icmp eq %struct.rb_node* %18, null
  br i1 %tobool187.not.i, label %if.end189.i, label %if.then188.i

if.then188.i:                                     ; preds = %if.end155.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %18, %struct.rb_node* noundef %sibling.2.i, i32 noundef 1) #8
  br label %if.end189.i

if.end189.i:                                      ; preds = %if.then188.i, %if.end155.i
  call void %augment_rotate(%struct.rb_node* noundef %sibling.2.i, %struct.rb_node* noundef nonnull %15) #8
  br label %if.end190.i

if.end190.i:                                      ; preds = %lor.lhs.false132.i, %if.end189.i
  %sibling.3.i = phi %struct.rb_node* [ %15, %if.end189.i ], [ %sibling.2.i, %lor.lhs.false132.i ]
  %tmp1.1.i = phi %struct.rb_node* [ %sibling.2.i, %if.end189.i ], [ %13, %lor.lhs.false132.i ]
  %rb_right191.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %sibling.3.i, i64 0, i32 1
  %19 = load %struct.rb_node*, %struct.rb_node** %rb_right191.i, align 8
  store volatile %struct.rb_node* %19, %struct.rb_node** %rb_left103.i, align 8
  store volatile %struct.rb_node* %parent.addr.0.i, %struct.rb_node** %rb_right191.i, align 8
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %tmp1.1.i, %struct.rb_node* noundef %sibling.3.i, i32 noundef 1) #8
  %tobool212.not.i = icmp eq %struct.rb_node* %19, null
  br i1 %tobool212.not.i, label %if.end214.i, label %if.then213.i

if.then213.i:                                     ; preds = %if.end190.i
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %19, %struct.rb_node* noundef %parent.addr.0.i) #8
  br label %if.end214.i

if.end214.i:                                      ; preds = %if.then213.i, %if.end190.i
  call fastcc void @__rb_rotate_set_parents(%struct.rb_node* noundef %parent.addr.0.i, %struct.rb_node* noundef %sibling.3.i, %struct.rb_root* noundef %root, i32 noundef 1) #8
  call void %augment_rotate(%struct.rb_node* noundef %parent.addr.0.i, %struct.rb_node* noundef %sibling.3.i) #8
  br label %____rb_erase_color.exit

____rb_erase_color.exit:                          ; preds = %if.else.i, %if.else148.i, %if.then35.i, %if.end101.i, %if.then147.i, %if.end214.i
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @rb_insert_color(%struct.rb_node* noundef %node, %struct.rb_root* noundef %root) local_unnamed_addr #1 {
entry:
  %call.i = call fastcc %struct.rb_node* @rb_red_parent(%struct.rb_node* noundef %node) #8
  %tobool.not234.i = icmp eq %struct.rb_node* %call.i, null
  br i1 %tobool.not234.i, label %if.then.i, label %if.end.i, !prof !7

if.then.i:                                        ; preds = %while.cond.backedge.i, %entry
  %node.addr.0.lcssa.i = phi %struct.rb_node* [ %node, %entry ], [ %call7.i, %while.cond.backedge.i ]
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %node.addr.0.lcssa.i, %struct.rb_node* noundef null, i32 noundef 1) #8
  br label %__rb_insert.exit

if.end.i:                                         ; preds = %entry, %while.cond.backedge.i
  %parent.0236.i = phi %struct.rb_node* [ %4, %while.cond.backedge.i ], [ %call.i, %entry ]
  %node.addr.0235.i = phi %struct.rb_node* [ %call7.i, %while.cond.backedge.i ], [ %node, %entry ]
  %__rb_parent_color.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.0236.i, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color.i, align 8
  %and.i = and i64 %0, 1
  %tobool4.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %__rb_insert.exit

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = call fastcc %struct.rb_node* @rb_red_parent(%struct.rb_node* noundef nonnull %parent.0236.i) #8
  %rb_right.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %call7.i, i64 0, i32 1
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_right.i, align 8
  %cmp.not.i = icmp eq %struct.rb_node* %parent.0236.i, %1
  br i1 %cmp.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end6.i
  %tobool10.not.i = icmp eq %struct.rb_node* %1, null
  br i1 %tobool10.not.i, label %if.end17.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then9.i
  %__rb_parent_color11.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 0
  %2 = load i64, i64* %__rb_parent_color11.i, align 8
  %and12.i = and i64 %2, 1
  %tobool13.not.i = icmp eq i64 %and12.i, 0
  br i1 %tobool13.not.i, label %while.cond.backedge.i, label %if.end17.i

while.cond.backedge.i:                            ; preds = %land.lhs.true69.i, %land.lhs.true.i
  %.sink.i = phi %struct.rb_node* [ %8, %land.lhs.true69.i ], [ %1, %land.lhs.true.i ]
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %.sink.i, %struct.rb_node* noundef %call7.i, i32 noundef 1) #8
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %parent.0236.i, %struct.rb_node* noundef %call7.i, i32 noundef 1) #8
  %__rb_parent_color15.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %call7.i, i64 0, i32 0
  %3 = load i64, i64* %__rb_parent_color15.i, align 8
  %and16.i = and i64 %3, -4
  %4 = inttoptr i64 %and16.i to %struct.rb_node*
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %call7.i, %struct.rb_node* noundef %4, i32 noundef 0) #8
  %tobool.not.i = icmp eq i64 %and16.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !prof !7

if.end17.i:                                       ; preds = %land.lhs.true.i, %if.then9.i
  %rb_right18.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.0236.i, i64 0, i32 1
  %5 = load %struct.rb_node*, %struct.rb_node** %rb_right18.i, align 8
  %cmp19.i = icmp eq %struct.rb_node* %node.addr.0235.i, %5
  br i1 %cmp19.i, label %if.then21.i, label %do.body48.i

if.then21.i:                                      ; preds = %if.end17.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.addr.0235.i, i64 0, i32 2
  %6 = load %struct.rb_node*, %struct.rb_node** %rb_left.i, align 8
  store volatile %struct.rb_node* %6, %struct.rb_node** %rb_right18.i, align 8
  store volatile %struct.rb_node* %parent.0236.i, %struct.rb_node** %rb_left.i, align 8
  %tobool39.not.i = icmp eq %struct.rb_node* %6, null
  br i1 %tobool39.not.i, label %if.end41.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.then21.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %6, %struct.rb_node* noundef nonnull %parent.0236.i, i32 noundef 1) #8
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then40.i, %if.then21.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %parent.0236.i, %struct.rb_node* noundef %node.addr.0235.i, i32 noundef 0) #8
  %rb_right42.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.addr.0235.i, i64 0, i32 1
  %7 = load %struct.rb_node*, %struct.rb_node** %rb_right42.i, align 8
  br label %do.body48.i

do.body48.i:                                      ; preds = %if.end41.i, %if.end17.i
  %parent.1.i = phi %struct.rb_node* [ %node.addr.0235.i, %if.end41.i ], [ %parent.0236.i, %if.end17.i ]
  %tmp.0.i = phi %struct.rb_node* [ %7, %if.end41.i ], [ %5, %if.end17.i ]
  %rb_left49.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %call7.i, i64 0, i32 2
  store volatile %struct.rb_node* %tmp.0.i, %struct.rb_node** %rb_left49.i, align 8
  %rb_right59.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.1.i, i64 0, i32 1
  store volatile %struct.rb_node* %call7.i, %struct.rb_node** %rb_right59.i, align 8
  %tobool64.not.i = icmp eq %struct.rb_node* %tmp.0.i, null
  br i1 %tobool64.not.i, label %if.end66.i, label %if.then65.i

if.then65.i:                                      ; preds = %do.body48.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %tmp.0.i, %struct.rb_node* noundef %call7.i, i32 noundef 1) #8
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then65.i, %do.body48.i
  call fastcc void @__rb_rotate_set_parents(%struct.rb_node* noundef %call7.i, %struct.rb_node* noundef %parent.1.i, %struct.rb_root* noundef %root, i32 noundef 0) #8
  br label %__rb_insert.exit

if.else.i:                                        ; preds = %if.end6.i
  %rb_left67.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %call7.i, i64 0, i32 2
  %8 = load %struct.rb_node*, %struct.rb_node** %rb_left67.i, align 8
  %tobool68.not.i = icmp eq %struct.rb_node* %8, null
  br i1 %tobool68.not.i, label %if.end76.i, label %land.lhs.true69.i

land.lhs.true69.i:                                ; preds = %if.else.i
  %__rb_parent_color70.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %8, i64 0, i32 0
  %9 = load i64, i64* %__rb_parent_color70.i, align 8
  %and71.i = and i64 %9, 1
  %tobool72.not.i = icmp eq i64 %and71.i, 0
  br i1 %tobool72.not.i, label %while.cond.backedge.i, label %if.end76.i

if.end76.i:                                       ; preds = %land.lhs.true69.i, %if.else.i
  %rb_right.i.le = getelementptr inbounds %struct.rb_node, %struct.rb_node* %call7.i, i64 0, i32 1
  %rb_left77.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.0236.i, i64 0, i32 2
  %10 = load %struct.rb_node*, %struct.rb_node** %rb_left77.i, align 8
  %cmp78.i = icmp eq %struct.rb_node* %node.addr.0235.i, %10
  br i1 %cmp78.i, label %if.then80.i, label %do.body111.i

if.then80.i:                                      ; preds = %if.end76.i
  %rb_right81.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.addr.0235.i, i64 0, i32 1
  %11 = load %struct.rb_node*, %struct.rb_node** %rb_right81.i, align 8
  store volatile %struct.rb_node* %11, %struct.rb_node** %rb_left77.i, align 8
  store volatile %struct.rb_node* %parent.0236.i, %struct.rb_node** %rb_right81.i, align 8
  %tobool102.not.i = icmp eq %struct.rb_node* %11, null
  br i1 %tobool102.not.i, label %if.end104.i, label %if.then103.i

if.then103.i:                                     ; preds = %if.then80.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %11, %struct.rb_node* noundef nonnull %parent.0236.i, i32 noundef 1) #8
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then103.i, %if.then80.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %parent.0236.i, %struct.rb_node* noundef %node.addr.0235.i, i32 noundef 0) #8
  %rb_left105.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.addr.0235.i, i64 0, i32 2
  %12 = load %struct.rb_node*, %struct.rb_node** %rb_left105.i, align 8
  br label %do.body111.i

do.body111.i:                                     ; preds = %if.end104.i, %if.end76.i
  %parent.2.i = phi %struct.rb_node* [ %node.addr.0235.i, %if.end104.i ], [ %parent.0236.i, %if.end76.i ]
  %tmp.1.i = phi %struct.rb_node* [ %12, %if.end104.i ], [ %10, %if.end76.i ]
  store volatile %struct.rb_node* %tmp.1.i, %struct.rb_node** %rb_right.i.le, align 8
  %rb_left122.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.2.i, i64 0, i32 2
  store volatile %struct.rb_node* %call7.i, %struct.rb_node** %rb_left122.i, align 8
  %tobool127.not.i = icmp eq %struct.rb_node* %tmp.1.i, null
  br i1 %tobool127.not.i, label %if.end129.i, label %if.then128.i

if.then128.i:                                     ; preds = %do.body111.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %tmp.1.i, %struct.rb_node* noundef %call7.i, i32 noundef 1) #8
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then128.i, %do.body111.i
  call fastcc void @__rb_rotate_set_parents(%struct.rb_node* noundef %call7.i, %struct.rb_node* noundef %parent.2.i, %struct.rb_root* noundef %root, i32 noundef 0) #8
  br label %__rb_insert.exit

__rb_insert.exit:                                 ; preds = %if.end.i, %if.then.i, %if.end66.i, %if.end129.i
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @rb_erase(%struct.rb_node* noundef %node, %struct.rb_root* noundef %root) local_unnamed_addr #1 {
entry:
  %rb_right.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_right.i, align 8
  %rb_left.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 2
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_left.i, align 8
  %tobool.not.i = icmp eq %struct.rb_node* %1, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else6.i

if.then.i:                                        ; preds = %entry
  %__rb_parent_color.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 0
  %2 = load i64, i64* %__rb_parent_color.i, align 8
  %and.i = and i64 %2, -4
  %3 = inttoptr i64 %and.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %node, %struct.rb_node* noundef %0, %struct.rb_node* noundef %3, %struct.rb_root* noundef %root) #8
  %tobool1.not.i = icmp eq %struct.rb_node* %0, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  %__rb_parent_color3.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %0, i64 0, i32 0
  store i64 %2, i64* %__rb_parent_color3.i, align 8
  br label %if.end

if.else.i:                                        ; preds = %if.then.i
  %and4.i = and i64 %2, 1
  %tobool5.not.i = icmp eq i64 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end, label %__rb_erase_augmented.exit

if.else6.i:                                       ; preds = %entry
  %tobool7.not.i = icmp eq %struct.rb_node* %0, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.else12.i

if.then8.i:                                       ; preds = %if.else6.i
  %__rb_parent_color9.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 0
  %4 = load i64, i64* %__rb_parent_color9.i, align 8
  %__rb_parent_color10.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 0
  store i64 %4, i64* %__rb_parent_color10.i, align 8
  %and11.i = and i64 %4, -4
  %5 = inttoptr i64 %and11.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %node, %struct.rb_node* noundef nonnull %1, %struct.rb_node* noundef %5, %struct.rb_root* noundef %root) #8
  br label %if.end

if.else12.i:                                      ; preds = %if.else6.i
  %rb_left13.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %0, i64 0, i32 2
  %6 = load %struct.rb_node*, %struct.rb_node** %rb_left13.i, align 8
  %tobool14.not.i = icmp eq %struct.rb_node* %6, null
  br i1 %tobool14.not.i, label %if.then15.i, label %do.body.i

if.then15.i:                                      ; preds = %if.else12.i
  %rb_right16.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %0, i64 0, i32 1
  %7 = load %struct.rb_node*, %struct.rb_node** %rb_right16.i, align 8
  br label %if.end42.i

do.body.i:                                        ; preds = %if.else12.i, %do.body.i
  %tmp.0.i = phi %struct.rb_node* [ %8, %do.body.i ], [ %6, %if.else12.i ]
  %successor.0.i = phi %struct.rb_node* [ %tmp.0.i, %do.body.i ], [ %0, %if.else12.i ]
  %rb_left18.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i, i64 0, i32 2
  %8 = load %struct.rb_node*, %struct.rb_node** %rb_left18.i, align 8
  %tobool19.not.i = icmp eq %struct.rb_node* %8, null
  br i1 %tobool19.not.i, label %do.end.i, label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %rb_right20.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i, i64 0, i32 1
  %9 = load %struct.rb_node*, %struct.rb_node** %rb_right20.i, align 8
  %rb_left26.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.0.i, i64 0, i32 2
  store volatile %struct.rb_node* %9, %struct.rb_node** %rb_left26.i, align 8
  store volatile %struct.rb_node* %0, %struct.rb_node** %rb_right20.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %0, %struct.rb_node* noundef nonnull %tmp.0.i) #8
  %.pre.i = load %struct.rb_node*, %struct.rb_node** %rb_left.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end.i, %if.then15.i
  %10 = phi %struct.rb_node* [ %.pre.i, %do.end.i ], [ %1, %if.then15.i ]
  %parent.0.i = phi %struct.rb_node* [ %successor.0.i, %do.end.i ], [ %0, %if.then15.i ]
  %successor.1.i = phi %struct.rb_node* [ %tmp.0.i, %do.end.i ], [ %0, %if.then15.i ]
  %child2.0.i = phi %struct.rb_node* [ %9, %do.end.i ], [ %7, %if.then15.i ]
  %rb_left49.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i, i64 0, i32 2
  store volatile %struct.rb_node* %10, %struct.rb_node** %rb_left49.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef %10, %struct.rb_node* noundef nonnull %successor.1.i) #8
  %__rb_parent_color54.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 0
  %11 = load i64, i64* %__rb_parent_color54.i, align 8
  %and55.i = and i64 %11, -4
  %12 = inttoptr i64 %and55.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %node, %struct.rb_node* noundef nonnull %successor.1.i, %struct.rb_node* noundef %12, %struct.rb_root* noundef %root) #8
  %tobool56.not.i = icmp eq %struct.rb_node* %child2.0.i, null
  br i1 %tobool56.not.i, label %if.else58.i, label %if.then57.i

if.then57.i:                                      ; preds = %if.end42.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %child2.0.i, %struct.rb_node* noundef nonnull %parent.0.i, i32 noundef 1) #8
  br label %if.end66.i

if.else58.i:                                      ; preds = %if.end42.i
  %__rb_parent_color59.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i, i64 0, i32 0
  %13 = load i64, i64* %__rb_parent_color59.i, align 8
  %and60.i = and i64 %13, 1
  %tobool61.not.i = icmp eq i64 %and60.i, 0
  %cond65.i = select i1 %tobool61.not.i, %struct.rb_node* null, %struct.rb_node* %parent.0.i
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.else58.i, %if.then57.i
  %rebalance.1.i = phi %struct.rb_node* [ null, %if.then57.i ], [ %cond65.i, %if.else58.i ]
  %__rb_parent_color67.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i, i64 0, i32 0
  store i64 %11, i64* %__rb_parent_color67.i, align 8
  br label %__rb_erase_augmented.exit

__rb_erase_augmented.exit:                        ; preds = %if.else.i, %if.end66.i
  %rebalance.2.i = phi %struct.rb_node* [ %rebalance.1.i, %if.end66.i ], [ %3, %if.else.i ]
  %tobool.not = icmp eq %struct.rb_node* %rebalance.2.i, null
  br i1 %tobool.not, label %if.end, label %while.cond.i

while.cond.i:                                     ; preds = %__rb_erase_augmented.exit, %while.cond.backedge.i
  %parent.addr.0.i = phi %struct.rb_node* [ %parent.addr.0.be.i, %while.cond.backedge.i ], [ %rebalance.2.i, %__rb_erase_augmented.exit ]
  %node.0.i = phi %struct.rb_node* [ %parent.addr.0.i, %while.cond.backedge.i ], [ null, %__rb_erase_augmented.exit ]
  %rb_right.i4 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.addr.0.i, i64 0, i32 1
  %14 = load %struct.rb_node*, %struct.rb_node** %rb_right.i4, align 8
  %cmp.not.i = icmp eq %struct.rb_node* %node.0.i, %14
  br i1 %cmp.not.i, label %if.else102.i, label %if.then.i8

if.then.i8:                                       ; preds = %while.cond.i
  %__rb_parent_color.i5 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %14, i64 0, i32 0
  %15 = load i64, i64* %__rb_parent_color.i5, align 8
  %and.i6 = and i64 %15, 1
  %tobool.not.i7 = icmp eq i64 %and.i6, 0
  br i1 %tobool.not.i7, label %if.then1.i, label %if.end.i

if.then1.i:                                       ; preds = %if.then.i8
  %rb_left.i9 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %14, i64 0, i32 2
  %16 = load %struct.rb_node*, %struct.rb_node** %rb_left.i9, align 8
  store volatile %struct.rb_node* %16, %struct.rb_node** %rb_right.i4, align 8
  store volatile %struct.rb_node* %parent.addr.0.i, %struct.rb_node** %rb_left.i9, align 8
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %16, %struct.rb_node* noundef %parent.addr.0.i, i32 noundef 1) #8
  call fastcc void @__rb_rotate_set_parents(%struct.rb_node* noundef %parent.addr.0.i, %struct.rb_node* noundef %14, %struct.rb_root* noundef %root, i32 noundef 0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i8
  %sibling.0.i = phi %struct.rb_node* [ %14, %if.then.i8 ], [ %16, %if.then1.i ]
  %rb_right19.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %sibling.0.i, i64 0, i32 1
  %17 = load %struct.rb_node*, %struct.rb_node** %rb_right19.i, align 8
  %tobool20.not.i = icmp eq %struct.rb_node* %17, null
  br i1 %tobool20.not.i, label %if.then24.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %__rb_parent_color21.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %17, i64 0, i32 0
  %18 = load i64, i64* %__rb_parent_color21.i, align 8
  %and22.i = and i64 %18, 1
  %tobool23.not.i = icmp eq i64 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end77.i, label %if.then24.i

if.then24.i:                                      ; preds = %lor.lhs.false.i, %if.end.i
  %rb_left25.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %sibling.0.i, i64 0, i32 2
  %19 = load %struct.rb_node*, %struct.rb_node** %rb_left25.i, align 8
  %tobool26.not.i = icmp eq %struct.rb_node* %19, null
  br i1 %tobool26.not.i, label %if.then31.i, label %lor.lhs.false27.i

lor.lhs.false27.i:                                ; preds = %if.then24.i
  %__rb_parent_color28.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %19, i64 0, i32 0
  %20 = load i64, i64* %__rb_parent_color28.i, align 8
  %and29.i = and i64 %20, 1
  %tobool30.not.i = icmp eq i64 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end42.i11, label %if.then31.i

if.then31.i:                                      ; preds = %lor.lhs.false27.i, %if.then24.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %sibling.0.i, %struct.rb_node* noundef %parent.addr.0.i, i32 noundef 0) #8
  %__rb_parent_color32.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.addr.0.i, i64 0, i32 0
  %21 = load i64, i64* %__rb_parent_color32.i, align 8
  %and33.i = and i64 %21, 1
  %tobool34.not.i = icmp eq i64 %and33.i, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %if.else.i10

if.then35.i:                                      ; preds = %if.then31.i
  call fastcc void @rb_set_black(%struct.rb_node* noundef %parent.addr.0.i) #8
  br label %if.end

if.else.i10:                                      ; preds = %if.then31.i
  %and37.i = and i64 %21, -4
  %tobool38.not.i = icmp eq i64 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end, label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.else148.i, %if.else.i10
  %parent.addr.0.be.in.i = phi i64 [ %and37.i, %if.else.i10 ], [ %and150.i, %if.else148.i ]
  %parent.addr.0.be.i = inttoptr i64 %parent.addr.0.be.in.i to %struct.rb_node*
  br label %while.cond.i

if.end42.i11:                                     ; preds = %lor.lhs.false27.i
  %rb_left25.i.le = getelementptr inbounds %struct.rb_node, %struct.rb_node* %sibling.0.i, i64 0, i32 2
  %rb_right43.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %19, i64 0, i32 1
  %22 = load %struct.rb_node*, %struct.rb_node** %rb_right43.i, align 8
  store volatile %struct.rb_node* %22, %struct.rb_node** %rb_left25.i.le, align 8
  store volatile %struct.rb_node* %sibling.0.i, %struct.rb_node** %rb_right43.i, align 8
  store volatile %struct.rb_node* %19, %struct.rb_node** %rb_right.i4, align 8
  %tobool74.not.i = icmp eq %struct.rb_node* %22, null
  br i1 %tobool74.not.i, label %if.end77.i, label %if.then75.i

if.then75.i:                                      ; preds = %if.end42.i11
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %22, %struct.rb_node* noundef %sibling.0.i, i32 noundef 1) #8
  br label %if.end77.i

if.end77.i:                                       ; preds = %lor.lhs.false.i, %if.end42.i11, %if.then75.i
  %sibling.1.i = phi %struct.rb_node* [ %19, %if.then75.i ], [ %19, %if.end42.i11 ], [ %sibling.0.i, %lor.lhs.false.i ]
  %tmp1.0.i = phi %struct.rb_node* [ %sibling.0.i, %if.then75.i ], [ %sibling.0.i, %if.end42.i11 ], [ %17, %lor.lhs.false.i ]
  %rb_left78.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %sibling.1.i, i64 0, i32 2
  %23 = load %struct.rb_node*, %struct.rb_node** %rb_left78.i, align 8
  store volatile %struct.rb_node* %23, %struct.rb_node** %rb_right.i4, align 8
  store volatile %struct.rb_node* %parent.addr.0.i, %struct.rb_node** %rb_left78.i, align 8
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %tmp1.0.i, %struct.rb_node* noundef %sibling.1.i, i32 noundef 1) #8
  %tobool99.not.i = icmp eq %struct.rb_node* %23, null
  br i1 %tobool99.not.i, label %if.end101.i, label %if.then100.i

if.then100.i:                                     ; preds = %if.end77.i
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %23, %struct.rb_node* noundef %parent.addr.0.i) #8
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then100.i, %if.end77.i
  call fastcc void @__rb_rotate_set_parents(%struct.rb_node* noundef %parent.addr.0.i, %struct.rb_node* noundef %sibling.1.i, %struct.rb_root* noundef %root, i32 noundef 1) #8
  br label %if.end

if.else102.i:                                     ; preds = %while.cond.i
  %rb_left103.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.addr.0.i, i64 0, i32 2
  %24 = load %struct.rb_node*, %struct.rb_node** %rb_left103.i, align 8
  %__rb_parent_color104.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %24, i64 0, i32 0
  %25 = load i64, i64* %__rb_parent_color104.i, align 8
  %and105.i = and i64 %25, 1
  %tobool106.not.i = icmp eq i64 %and105.i, 0
  br i1 %tobool106.not.i, label %if.then107.i, label %if.end129.i

if.then107.i:                                     ; preds = %if.else102.i
  %rb_right108.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %24, i64 0, i32 1
  %26 = load %struct.rb_node*, %struct.rb_node** %rb_right108.i, align 8
  store volatile %struct.rb_node* %26, %struct.rb_node** %rb_left103.i, align 8
  store volatile %struct.rb_node* %parent.addr.0.i, %struct.rb_node** %rb_right108.i, align 8
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %26, %struct.rb_node* noundef %parent.addr.0.i, i32 noundef 1) #8
  call fastcc void @__rb_rotate_set_parents(%struct.rb_node* noundef %parent.addr.0.i, %struct.rb_node* noundef %24, %struct.rb_root* noundef %root, i32 noundef 0) #8
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then107.i, %if.else102.i
  %sibling.2.i = phi %struct.rb_node* [ %24, %if.else102.i ], [ %26, %if.then107.i ]
  %rb_left130.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %sibling.2.i, i64 0, i32 2
  %27 = load %struct.rb_node*, %struct.rb_node** %rb_left130.i, align 8
  %tobool131.not.i = icmp eq %struct.rb_node* %27, null
  br i1 %tobool131.not.i, label %if.then136.i, label %lor.lhs.false132.i

lor.lhs.false132.i:                               ; preds = %if.end129.i
  %__rb_parent_color133.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %27, i64 0, i32 0
  %28 = load i64, i64* %__rb_parent_color133.i, align 8
  %and134.i = and i64 %28, 1
  %tobool135.not.i = icmp eq i64 %and134.i, 0
  br i1 %tobool135.not.i, label %if.end190.i, label %if.then136.i

if.then136.i:                                     ; preds = %lor.lhs.false132.i, %if.end129.i
  %rb_right137.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %sibling.2.i, i64 0, i32 1
  %29 = load %struct.rb_node*, %struct.rb_node** %rb_right137.i, align 8
  %tobool138.not.i = icmp eq %struct.rb_node* %29, null
  br i1 %tobool138.not.i, label %if.then143.i, label %lor.lhs.false139.i

lor.lhs.false139.i:                               ; preds = %if.then136.i
  %__rb_parent_color140.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %29, i64 0, i32 0
  %30 = load i64, i64* %__rb_parent_color140.i, align 8
  %and141.i = and i64 %30, 1
  %tobool142.not.i = icmp eq i64 %and141.i, 0
  br i1 %tobool142.not.i, label %if.end155.i, label %if.then143.i

if.then143.i:                                     ; preds = %lor.lhs.false139.i, %if.then136.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %sibling.2.i, %struct.rb_node* noundef %parent.addr.0.i, i32 noundef 0) #8
  %__rb_parent_color144.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.addr.0.i, i64 0, i32 0
  %31 = load i64, i64* %__rb_parent_color144.i, align 8
  %and145.i = and i64 %31, 1
  %tobool146.not.i = icmp eq i64 %and145.i, 0
  br i1 %tobool146.not.i, label %if.then147.i, label %if.else148.i

if.then147.i:                                     ; preds = %if.then143.i
  call fastcc void @rb_set_black(%struct.rb_node* noundef %parent.addr.0.i) #8
  br label %if.end

if.else148.i:                                     ; preds = %if.then143.i
  %and150.i = and i64 %31, -4
  %tobool151.not.i = icmp eq i64 %and150.i, 0
  br i1 %tobool151.not.i, label %if.end, label %while.cond.backedge.i

if.end155.i:                                      ; preds = %lor.lhs.false139.i
  %rb_right137.i.le = getelementptr inbounds %struct.rb_node, %struct.rb_node* %sibling.2.i, i64 0, i32 1
  %rb_left156.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %29, i64 0, i32 2
  %32 = load %struct.rb_node*, %struct.rb_node** %rb_left156.i, align 8
  store volatile %struct.rb_node* %32, %struct.rb_node** %rb_right137.i.le, align 8
  store volatile %struct.rb_node* %sibling.2.i, %struct.rb_node** %rb_left156.i, align 8
  store volatile %struct.rb_node* %29, %struct.rb_node** %rb_left103.i, align 8
  %tobool187.not.i = icmp eq %struct.rb_node* %32, null
  br i1 %tobool187.not.i, label %if.end190.i, label %if.then188.i

if.then188.i:                                     ; preds = %if.end155.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %32, %struct.rb_node* noundef %sibling.2.i, i32 noundef 1) #8
  br label %if.end190.i

if.end190.i:                                      ; preds = %lor.lhs.false132.i, %if.end155.i, %if.then188.i
  %sibling.3.i = phi %struct.rb_node* [ %29, %if.then188.i ], [ %29, %if.end155.i ], [ %sibling.2.i, %lor.lhs.false132.i ]
  %tmp1.1.i = phi %struct.rb_node* [ %sibling.2.i, %if.then188.i ], [ %sibling.2.i, %if.end155.i ], [ %27, %lor.lhs.false132.i ]
  %rb_right191.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %sibling.3.i, i64 0, i32 1
  %33 = load %struct.rb_node*, %struct.rb_node** %rb_right191.i, align 8
  store volatile %struct.rb_node* %33, %struct.rb_node** %rb_left103.i, align 8
  store volatile %struct.rb_node* %parent.addr.0.i, %struct.rb_node** %rb_right191.i, align 8
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %tmp1.1.i, %struct.rb_node* noundef %sibling.3.i, i32 noundef 1) #8
  %tobool212.not.i = icmp eq %struct.rb_node* %33, null
  br i1 %tobool212.not.i, label %if.end214.i, label %if.then213.i

if.then213.i:                                     ; preds = %if.end190.i
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %33, %struct.rb_node* noundef %parent.addr.0.i) #8
  br label %if.end214.i

if.end214.i:                                      ; preds = %if.then213.i, %if.end190.i
  call fastcc void @__rb_rotate_set_parents(%struct.rb_node* noundef %parent.addr.0.i, %struct.rb_node* noundef %sibling.3.i, %struct.rb_root* noundef %root, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.else148.i, %if.else.i10, %if.else.i, %if.then2.i, %if.then8.i, %if.end214.i, %if.then147.i, %if.end101.i, %if.then35.i, %__rb_erase_augmented.exit
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__rb_insert_augmented(%struct.rb_node* noundef %node, %struct.rb_root* noundef %root, void (%struct.rb_node*, %struct.rb_node*)* nocapture noundef readonly %augment_rotate) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc %struct.rb_node* @rb_red_parent(%struct.rb_node* noundef %node) #8
  %tobool.not234.i = icmp eq %struct.rb_node* %call.i, null
  br i1 %tobool.not234.i, label %if.then.i, label %if.end.i, !prof !7

if.then.i:                                        ; preds = %while.cond.backedge.i, %entry
  %node.addr.0.lcssa.i = phi %struct.rb_node* [ %node, %entry ], [ %call7.i, %while.cond.backedge.i ]
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %node.addr.0.lcssa.i, %struct.rb_node* noundef null, i32 noundef 1) #8
  br label %__rb_insert.exit

if.end.i:                                         ; preds = %entry, %while.cond.backedge.i
  %parent.0236.i = phi %struct.rb_node* [ %4, %while.cond.backedge.i ], [ %call.i, %entry ]
  %node.addr.0235.i = phi %struct.rb_node* [ %call7.i, %while.cond.backedge.i ], [ %node, %entry ]
  %__rb_parent_color.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.0236.i, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color.i, align 8
  %and.i = and i64 %0, 1
  %tobool4.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %__rb_insert.exit

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = call fastcc %struct.rb_node* @rb_red_parent(%struct.rb_node* noundef nonnull %parent.0236.i) #8
  %rb_right.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %call7.i, i64 0, i32 1
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_right.i, align 8
  %cmp.not.i = icmp eq %struct.rb_node* %parent.0236.i, %1
  br i1 %cmp.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end6.i
  %tobool10.not.i = icmp eq %struct.rb_node* %1, null
  br i1 %tobool10.not.i, label %if.end17.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then9.i
  %__rb_parent_color11.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 0
  %2 = load i64, i64* %__rb_parent_color11.i, align 8
  %and12.i = and i64 %2, 1
  %tobool13.not.i = icmp eq i64 %and12.i, 0
  br i1 %tobool13.not.i, label %while.cond.backedge.i, label %if.end17.i

while.cond.backedge.i:                            ; preds = %land.lhs.true69.i, %land.lhs.true.i
  %.sink.i = phi %struct.rb_node* [ %8, %land.lhs.true69.i ], [ %1, %land.lhs.true.i ]
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %.sink.i, %struct.rb_node* noundef %call7.i, i32 noundef 1) #8
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %parent.0236.i, %struct.rb_node* noundef %call7.i, i32 noundef 1) #8
  %__rb_parent_color15.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %call7.i, i64 0, i32 0
  %3 = load i64, i64* %__rb_parent_color15.i, align 8
  %and16.i = and i64 %3, -4
  %4 = inttoptr i64 %and16.i to %struct.rb_node*
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %call7.i, %struct.rb_node* noundef %4, i32 noundef 0) #8
  %tobool.not.i = icmp eq i64 %and16.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !prof !7

if.end17.i:                                       ; preds = %land.lhs.true.i, %if.then9.i
  %rb_right18.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.0236.i, i64 0, i32 1
  %5 = load %struct.rb_node*, %struct.rb_node** %rb_right18.i, align 8
  %cmp19.i = icmp eq %struct.rb_node* %node.addr.0235.i, %5
  br i1 %cmp19.i, label %if.then21.i, label %do.body48.i

if.then21.i:                                      ; preds = %if.end17.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.addr.0235.i, i64 0, i32 2
  %6 = load %struct.rb_node*, %struct.rb_node** %rb_left.i, align 8
  store volatile %struct.rb_node* %6, %struct.rb_node** %rb_right18.i, align 8
  store volatile %struct.rb_node* %parent.0236.i, %struct.rb_node** %rb_left.i, align 8
  %tobool39.not.i = icmp eq %struct.rb_node* %6, null
  br i1 %tobool39.not.i, label %if.end41.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.then21.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %6, %struct.rb_node* noundef nonnull %parent.0236.i, i32 noundef 1) #8
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then40.i, %if.then21.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %parent.0236.i, %struct.rb_node* noundef %node.addr.0235.i, i32 noundef 0) #8
  call void %augment_rotate(%struct.rb_node* noundef nonnull %parent.0236.i, %struct.rb_node* noundef %node.addr.0235.i) #8
  %rb_right42.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.addr.0235.i, i64 0, i32 1
  %7 = load %struct.rb_node*, %struct.rb_node** %rb_right42.i, align 8
  br label %do.body48.i

do.body48.i:                                      ; preds = %if.end41.i, %if.end17.i
  %parent.1.i = phi %struct.rb_node* [ %node.addr.0235.i, %if.end41.i ], [ %parent.0236.i, %if.end17.i ]
  %tmp.0.i = phi %struct.rb_node* [ %7, %if.end41.i ], [ %5, %if.end17.i ]
  %rb_left49.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %call7.i, i64 0, i32 2
  store volatile %struct.rb_node* %tmp.0.i, %struct.rb_node** %rb_left49.i, align 8
  %rb_right59.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.1.i, i64 0, i32 1
  store volatile %struct.rb_node* %call7.i, %struct.rb_node** %rb_right59.i, align 8
  %tobool64.not.i = icmp eq %struct.rb_node* %tmp.0.i, null
  br i1 %tobool64.not.i, label %if.end66.i, label %if.then65.i

if.then65.i:                                      ; preds = %do.body48.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %tmp.0.i, %struct.rb_node* noundef %call7.i, i32 noundef 1) #8
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then65.i, %do.body48.i
  call fastcc void @__rb_rotate_set_parents(%struct.rb_node* noundef %call7.i, %struct.rb_node* noundef %parent.1.i, %struct.rb_root* noundef %root, i32 noundef 0) #8
  call void %augment_rotate(%struct.rb_node* noundef %call7.i, %struct.rb_node* noundef %parent.1.i) #8
  br label %__rb_insert.exit

if.else.i:                                        ; preds = %if.end6.i
  %rb_left67.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %call7.i, i64 0, i32 2
  %8 = load %struct.rb_node*, %struct.rb_node** %rb_left67.i, align 8
  %tobool68.not.i = icmp eq %struct.rb_node* %8, null
  br i1 %tobool68.not.i, label %if.end76.i, label %land.lhs.true69.i

land.lhs.true69.i:                                ; preds = %if.else.i
  %__rb_parent_color70.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %8, i64 0, i32 0
  %9 = load i64, i64* %__rb_parent_color70.i, align 8
  %and71.i = and i64 %9, 1
  %tobool72.not.i = icmp eq i64 %and71.i, 0
  br i1 %tobool72.not.i, label %while.cond.backedge.i, label %if.end76.i

if.end76.i:                                       ; preds = %land.lhs.true69.i, %if.else.i
  %rb_right.i.le = getelementptr inbounds %struct.rb_node, %struct.rb_node* %call7.i, i64 0, i32 1
  %rb_left77.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.0236.i, i64 0, i32 2
  %10 = load %struct.rb_node*, %struct.rb_node** %rb_left77.i, align 8
  %cmp78.i = icmp eq %struct.rb_node* %node.addr.0235.i, %10
  br i1 %cmp78.i, label %if.then80.i, label %do.body111.i

if.then80.i:                                      ; preds = %if.end76.i
  %rb_right81.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.addr.0235.i, i64 0, i32 1
  %11 = load %struct.rb_node*, %struct.rb_node** %rb_right81.i, align 8
  store volatile %struct.rb_node* %11, %struct.rb_node** %rb_left77.i, align 8
  store volatile %struct.rb_node* %parent.0236.i, %struct.rb_node** %rb_right81.i, align 8
  %tobool102.not.i = icmp eq %struct.rb_node* %11, null
  br i1 %tobool102.not.i, label %if.end104.i, label %if.then103.i

if.then103.i:                                     ; preds = %if.then80.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %11, %struct.rb_node* noundef nonnull %parent.0236.i, i32 noundef 1) #8
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then103.i, %if.then80.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %parent.0236.i, %struct.rb_node* noundef %node.addr.0235.i, i32 noundef 0) #8
  call void %augment_rotate(%struct.rb_node* noundef nonnull %parent.0236.i, %struct.rb_node* noundef %node.addr.0235.i) #8
  %rb_left105.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.addr.0235.i, i64 0, i32 2
  %12 = load %struct.rb_node*, %struct.rb_node** %rb_left105.i, align 8
  br label %do.body111.i

do.body111.i:                                     ; preds = %if.end104.i, %if.end76.i
  %parent.2.i = phi %struct.rb_node* [ %node.addr.0235.i, %if.end104.i ], [ %parent.0236.i, %if.end76.i ]
  %tmp.1.i = phi %struct.rb_node* [ %12, %if.end104.i ], [ %10, %if.end76.i ]
  store volatile %struct.rb_node* %tmp.1.i, %struct.rb_node** %rb_right.i.le, align 8
  %rb_left122.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent.2.i, i64 0, i32 2
  store volatile %struct.rb_node* %call7.i, %struct.rb_node** %rb_left122.i, align 8
  %tobool127.not.i = icmp eq %struct.rb_node* %tmp.1.i, null
  br i1 %tobool127.not.i, label %if.end129.i, label %if.then128.i

if.then128.i:                                     ; preds = %do.body111.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %tmp.1.i, %struct.rb_node* noundef %call7.i, i32 noundef 1) #8
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then128.i, %do.body111.i
  call fastcc void @__rb_rotate_set_parents(%struct.rb_node* noundef %call7.i, %struct.rb_node* noundef %parent.2.i, %struct.rb_root* noundef %root, i32 noundef 0) #8
  call void %augment_rotate(%struct.rb_node* noundef %call7.i, %struct.rb_node* noundef %parent.2.i) #8
  br label %__rb_insert.exit

__rb_insert.exit:                                 ; preds = %if.end.i, %if.then.i, %if.end66.i, %if.end129.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.rb_node* @rb_first(%struct.rb_root* nocapture noundef readonly %root) local_unnamed_addr #2 {
entry:
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %root, i64 0, i32 0
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not, label %cleanup, label %while.cond

while.cond:                                       ; preds = %entry, %while.cond
  %n.0 = phi %struct.rb_node* [ %1, %while.cond ], [ %0, %entry ]
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %n.0, i64 0, i32 2
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %tobool1.not = icmp eq %struct.rb_node* %1, null
  br i1 %tobool1.not, label %cleanup, label %while.cond

cleanup:                                          ; preds = %while.cond, %entry
  %retval.0 = phi %struct.rb_node* [ null, %entry ], [ %n.0, %while.cond ]
  ret %struct.rb_node* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.rb_node* @rb_last(%struct.rb_root* nocapture noundef readonly %root) local_unnamed_addr #2 {
entry:
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %root, i64 0, i32 0
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not, label %cleanup, label %while.cond

while.cond:                                       ; preds = %entry, %while.cond
  %n.0 = phi %struct.rb_node* [ %1, %while.cond ], [ %0, %entry ]
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %n.0, i64 0, i32 1
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  %tobool1.not = icmp eq %struct.rb_node* %1, null
  br i1 %tobool1.not, label %cleanup, label %while.cond

cleanup:                                          ; preds = %while.cond, %entry
  %retval.0 = phi %struct.rb_node* [ null, %entry ], [ %n.0, %while.cond ]
  ret %struct.rb_node* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.rb_node* @rb_next(%struct.rb_node* noundef %node) local_unnamed_addr #2 {
entry:
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %1 = ptrtoint %struct.rb_node* %node to i64
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 1
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  %tobool.not = icmp eq %struct.rb_node* %2, null
  br i1 %tobool.not, label %while.cond6.preheader, label %while.cond

while.cond6.preheader:                            ; preds = %if.end
  %and32 = and i64 %0, -4
  %tobool8.not33 = icmp eq i64 %and32, 0
  br i1 %tobool8.not33, label %cleanup, label %land.rhs

while.cond:                                       ; preds = %if.end, %while.cond
  %node.addr.0 = phi %struct.rb_node* [ %3, %while.cond ], [ %2, %if.end ]
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.addr.0, i64 0, i32 2
  %3 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %tobool3.not = icmp eq %struct.rb_node* %3, null
  br i1 %tobool3.not, label %cleanup, label %while.cond

land.rhs:                                         ; preds = %while.cond6.preheader, %land.rhs.while.cond6_crit_edge
  %and35 = phi i64 [ %and, %land.rhs.while.cond6_crit_edge ], [ %and32, %while.cond6.preheader ]
  %node.addr.134 = phi %struct.rb_node* [ %4, %land.rhs.while.cond6_crit_edge ], [ %node, %while.cond6.preheader ]
  %4 = inttoptr i64 %and35 to %struct.rb_node*
  %rb_right9 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %4, i64 0, i32 1
  %5 = load %struct.rb_node*, %struct.rb_node** %rb_right9, align 8
  %cmp10 = icmp eq %struct.rb_node* %node.addr.134, %5
  br i1 %cmp10, label %land.rhs.while.cond6_crit_edge, label %cleanup.loopexitsplit

land.rhs.while.cond6_crit_edge:                   ; preds = %land.rhs
  %__rb_parent_color7.phi.trans.insert = getelementptr inbounds %struct.rb_node, %struct.rb_node* %4, i64 0, i32 0
  %.pre = load i64, i64* %__rb_parent_color7.phi.trans.insert, align 8
  %and = and i64 %.pre, -4
  %tobool8.not = icmp eq i64 %and, 0
  br i1 %tobool8.not, label %cleanup, label %land.rhs

cleanup.loopexitsplit:                            ; preds = %land.rhs
  %phi.cast = inttoptr i64 %and35 to %struct.rb_node*
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %land.rhs.while.cond6_crit_edge, %while.cond6.preheader, %cleanup.loopexitsplit, %entry
  %retval.0 = phi %struct.rb_node* [ null, %entry ], [ %phi.cast, %cleanup.loopexitsplit ], [ null, %while.cond6.preheader ], [ null, %land.rhs.while.cond6_crit_edge ], [ %node.addr.0, %while.cond ]
  ret %struct.rb_node* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.rb_node* @rb_prev(%struct.rb_node* noundef %node) local_unnamed_addr #2 {
entry:
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %1 = ptrtoint %struct.rb_node* %node to i64
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 2
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %tobool.not = icmp eq %struct.rb_node* %2, null
  br i1 %tobool.not, label %while.cond6.preheader, label %while.cond

while.cond6.preheader:                            ; preds = %if.end
  %and32 = and i64 %0, -4
  %tobool8.not33 = icmp eq i64 %and32, 0
  br i1 %tobool8.not33, label %cleanup, label %land.rhs

while.cond:                                       ; preds = %if.end, %while.cond
  %node.addr.0 = phi %struct.rb_node* [ %3, %while.cond ], [ %2, %if.end ]
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.addr.0, i64 0, i32 1
  %3 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  %tobool3.not = icmp eq %struct.rb_node* %3, null
  br i1 %tobool3.not, label %cleanup, label %while.cond

land.rhs:                                         ; preds = %while.cond6.preheader, %land.rhs.while.cond6_crit_edge
  %and35 = phi i64 [ %and, %land.rhs.while.cond6_crit_edge ], [ %and32, %while.cond6.preheader ]
  %node.addr.134 = phi %struct.rb_node* [ %4, %land.rhs.while.cond6_crit_edge ], [ %node, %while.cond6.preheader ]
  %4 = inttoptr i64 %and35 to %struct.rb_node*
  %rb_left9 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %4, i64 0, i32 2
  %5 = load %struct.rb_node*, %struct.rb_node** %rb_left9, align 8
  %cmp10 = icmp eq %struct.rb_node* %node.addr.134, %5
  br i1 %cmp10, label %land.rhs.while.cond6_crit_edge, label %cleanup.loopexitsplit

land.rhs.while.cond6_crit_edge:                   ; preds = %land.rhs
  %__rb_parent_color7.phi.trans.insert = getelementptr inbounds %struct.rb_node, %struct.rb_node* %4, i64 0, i32 0
  %.pre = load i64, i64* %__rb_parent_color7.phi.trans.insert, align 8
  %and = and i64 %.pre, -4
  %tobool8.not = icmp eq i64 %and, 0
  br i1 %tobool8.not, label %cleanup, label %land.rhs

cleanup.loopexitsplit:                            ; preds = %land.rhs
  %phi.cast = inttoptr i64 %and35 to %struct.rb_node*
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %land.rhs.while.cond6_crit_edge, %while.cond6.preheader, %cleanup.loopexitsplit, %entry
  %retval.0 = phi %struct.rb_node* [ null, %entry ], [ %phi.cast, %cleanup.loopexitsplit ], [ null, %while.cond6.preheader ], [ null, %land.rhs.while.cond6_crit_edge ], [ %node.addr.0, %while.cond ]
  ret %struct.rb_node* %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local void @rb_replace_node(%struct.rb_node* noundef %victim, %struct.rb_node* noundef %new, %struct.rb_root* noundef %root) local_unnamed_addr #3 {
entry:
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %victim, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %1 = bitcast %struct.rb_node* %new to i8*
  %2 = bitcast %struct.rb_node* %victim to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(24) %1, i8* noundef align 8 dereferenceable(24) %2, i64 24, i1 false)
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %victim, i64 0, i32 2
  %3 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %tobool.not = icmp eq %struct.rb_node* %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %3, %struct.rb_node* noundef %new) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %victim, i64 0, i32 1
  %4 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  %tobool2.not = icmp eq %struct.rb_node* %4, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %4, %struct.rb_node* noundef %new) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %and = and i64 %0, -4
  %5 = inttoptr i64 %and to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %victim, %struct.rb_node* noundef %new, %struct.rb_node* noundef %5, %struct.rb_root* noundef %root) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @rb_set_parent(%struct.rb_node* nocapture noundef %rb, %struct.rb_node* noundef %p) unnamed_addr #5 {
entry:
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %and = and i64 %0, 1
  %1 = ptrtoint %struct.rb_node* %p to i64
  %or = or i64 %and, %1
  store i64 %or, i64* %__rb_parent_color, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__rb_change_child(%struct.rb_node* noundef readnone %old, %struct.rb_node* noundef %new, %struct.rb_node* noundef %parent, %struct.rb_root* noundef %root) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.rb_node* %parent, null
  br i1 %tobool.not, label %do.body17, label %if.then

if.then:                                          ; preds = %entry
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent, i64 0, i32 2
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %cmp = icmp eq %struct.rb_node* %0, %old
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent, i64 0, i32 1
  %spec.select = select i1 %cmp, %struct.rb_node** %rb_left, %struct.rb_node** %rb_right
  br label %if.end20

do.body17:                                        ; preds = %entry
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %root, i64 0, i32 0
  br label %if.end20

if.end20:                                         ; preds = %if.then, %do.body17
  %rb_left.sink = phi %struct.rb_node** [ %rb_node, %do.body17 ], [ %spec.select, %if.then ]
  store volatile %struct.rb_node* %new, %struct.rb_node** %rb_left.sink, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rb_replace_node_rcu(%struct.rb_node* noundef %victim, %struct.rb_node* noundef %new, %struct.rb_root* noundef %root) local_unnamed_addr #0 {
entry:
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %victim, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %1 = bitcast %struct.rb_node* %new to i8*
  %2 = bitcast %struct.rb_node* %victim to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(24) %1, i8* noundef align 8 dereferenceable(24) %2, i64 24, i1 false)
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %victim, i64 0, i32 2
  %3 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %tobool.not = icmp eq %struct.rb_node* %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %3, %struct.rb_node* noundef %new) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %victim, i64 0, i32 1
  %4 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  %tobool2.not = icmp eq %struct.rb_node* %4, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %4, %struct.rb_node* noundef %new) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %and = and i64 %0, -4
  %5 = inttoptr i64 %and to %struct.rb_node*
  call fastcc void @__rb_change_child_rcu(%struct.rb_node* noundef %victim, %struct.rb_node* noundef %new, %struct.rb_node* noundef %5, %struct.rb_root* noundef %root) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rb_change_child_rcu(%struct.rb_node* noundef readnone %old, %struct.rb_node* noundef %new, %struct.rb_node* noundef %parent, %struct.rb_root* noundef %root) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.rb_node* %parent, null
  br i1 %tobool.not, label %do.body55, label %if.then

if.then:                                          ; preds = %entry
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent, i64 0, i32 2
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %cmp = icmp eq %struct.rb_node* %0, %old
  %1 = ptrtoint %struct.rb_node* %new to i64
  br i1 %cmp, label %do.body, label %do.body22

do.body:                                          ; preds = %if.then
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.rb_node** elementtype(%struct.rb_node*) %rb_left, i64 %1) #10, !srcloc !8
  br label %if.end86

do.body22:                                        ; preds = %if.then
  %rb_right39 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent, i64 0, i32 1
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.rb_node** elementtype(%struct.rb_node*) %rb_right39, i64 %1) #10, !srcloc !9
  br label %if.end86

do.body55:                                        ; preds = %entry
  %2 = ptrtoint %struct.rb_node* %new to i64
  %rb_node72 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %root, i64 0, i32 0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.rb_node** elementtype(%struct.rb_node*) %rb_node72, i64 %2) #10, !srcloc !10
  br label %if.end86

if.end86:                                         ; preds = %do.body, %do.body22, %do.body55
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.rb_node* @rb_next_postorder(%struct.rb_node* noundef readonly %node) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.rb_node* %node, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %and = and i64 %0, -4
  %1 = inttoptr i64 %and to %struct.rb_node*
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 2
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %cmp = icmp eq %struct.rb_node* %2, %node
  br i1 %cmp, label %land.lhs.true2, label %cleanup

land.lhs.true2:                                   ; preds = %land.lhs.true
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 1
  %3 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  %tobool3.not = icmp eq %struct.rb_node* %3, null
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %land.lhs.true2
  %call = call fastcc %struct.rb_node* @rb_left_deepest_node(%struct.rb_node* noundef nonnull %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %land.lhs.true2, %entry, %if.then4
  %retval.0 = phi %struct.rb_node* [ %call, %if.then4 ], [ null, %entry ], [ %1, %land.lhs.true2 ], [ %1, %land.lhs.true ], [ %1, %if.end ]
  ret %struct.rb_node* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.rb_node* @rb_left_deepest_node(%struct.rb_node* noundef readonly %node) unnamed_addr #2 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %node.addr.0 = phi %struct.rb_node* [ %node, %entry ], [ %node.addr.0.be, %for.cond.backedge ]
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.addr.0, i64 0, i32 2
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %tobool.not = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not, label %if.else, label %for.cond.backedge

if.else:                                          ; preds = %for.cond
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.addr.0, i64 0, i32 1
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  %tobool2.not = icmp eq %struct.rb_node* %1, null
  br i1 %tobool2.not, label %if.else5, label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.else, %for.cond
  %node.addr.0.be = phi %struct.rb_node* [ %0, %for.cond ], [ %1, %if.else ]
  br label %for.cond

if.else5:                                         ; preds = %if.else
  ret %struct.rb_node* %node.addr.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.rb_node* @rb_first_postorder(%struct.rb_root* nocapture noundef readonly %root) local_unnamed_addr #2 {
entry:
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %root, i64 0, i32 0
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.rb_node* @rb_left_deepest_node(%struct.rb_node* noundef nonnull %0) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.rb_node* [ %call, %if.end ], [ null, %entry ]
  ret %struct.rb_node* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_set_parent_color(%struct.rb_node* nocapture noundef writeonly %rb, %struct.rb_node* noundef %p, i32 noundef %color) unnamed_addr #6 {
entry:
  %0 = ptrtoint %struct.rb_node* %p to i64
  %1 = zext i32 %color to i64
  %or = or i64 %1, %0
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  store i64 %or, i64* %__rb_parent_color, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__rb_rotate_set_parents(%struct.rb_node* noundef %old, %struct.rb_node* noundef %new, %struct.rb_root* noundef %root, i32 noundef %color) unnamed_addr #1 {
entry:
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %old, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %and = and i64 %0, -4
  %1 = inttoptr i64 %and to %struct.rb_node*
  %__rb_parent_color2 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %new, i64 0, i32 0
  store i64 %0, i64* %__rb_parent_color2, align 8
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef %old, %struct.rb_node* noundef %new, i32 noundef %color) #9
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %old, %struct.rb_node* noundef %new, %struct.rb_node* noundef %1, %struct.rb_root* noundef %root) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @rb_set_black(%struct.rb_node* nocapture noundef %rb) unnamed_addr #5 {
entry:
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %or = or i64 %0, 1
  store i64 %or, i64* %__rb_parent_color, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.rb_node* @rb_red_parent(%struct.rb_node* nocapture noundef readonly %red) unnamed_addr #7 {
entry:
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %red, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %1 = inttoptr i64 %0 to %struct.rb_node*
  ret %struct.rb_node* %1
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = !{i64 2149394506}
!9 = !{i64 2149401615}
!10 = !{i64 2149408643}

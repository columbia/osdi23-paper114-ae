; ModuleID = 'lib/logic_pio.c'
source_filename = "lib/logic_pio.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.logic_pio_hwaddr = type { %struct.list_head, %struct.fwnode_handle*, i64, i64, i64, i64, i8*, %struct.logic_pio_host_ops* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.device = type opaque
%struct.logic_pio_host_ops = type { i32 (i8*, i64, i64)*, void (i8*, i64, i32, i64)*, i32 (i8*, i64, i8*, i64, i32)*, void (i8*, i64, i8*, i64, i32)* }

@io_range_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @io_range_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @io_range_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@io_range_list = internal global %struct.list_head { %struct.list_head* @io_range_list, %struct.list_head* @io_range_list }, align 8
@.str = private unnamed_addr constant [62 x i8] c"\014LOGIC PIO: Requested IO range too big, new size set to 64K\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\013LOGIC PIO: IO range not found or invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"\013LOGIC PIO: resource size %pa cannot fit in IO range size %pa\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"\013LOGIC PIO: addr %pa not registered in io_range_list\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"\013LOGIC PIO: PIO entry token 0x%lx invalid\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @logic_pio_register_range(%struct.logic_pio_hwaddr* noundef %new_range) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.logic_pio_hwaddr* %new_range, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %fwnode = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %new_range, i64 0, i32 1
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %tobool1.not = icmp eq %struct.fwnode_handle* %0, null
  br i1 %tobool1.not, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %size = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %new_range, i64 0, i32 4
  %1 = load i64, i64* %size, align 8
  %tobool3.not = icmp eq i64 %1, 0
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %flags = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %new_range, i64 0, i32 5
  %2 = load i64, i64* %flags, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %ops = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %new_range, i64 0, i32 7
  %3 = load %struct.logic_pio_host_ops*, %struct.logic_pio_host_ops** %ops, align 8
  %tobool5.not = icmp eq %struct.logic_pio_host_ops* %3, null
  br i1 %tobool5.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false4
  %hw_start = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %new_range, i64 0, i32 2
  %4 = load i64, i64* %hw_start, align 8
  %add = add i64 %4, %1
  call void @mutex_lock(%struct.mutex* noundef nonnull @io_range_mutex) #4
  %range.0132 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** bitcast (%struct.list_head* @io_range_list to %struct.logic_pio_hwaddr**), align 8
  %list133 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %range.0132, i64 0, i32 0
  %cmp8.not134 = icmp eq %struct.list_head* %list133, @io_range_list
  br i1 %cmp8.not134, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %range.0137 = phi %struct.logic_pio_hwaddr* [ %range.0132, %for.body.lr.ph ], [ %range.0, %for.inc ]
  %mmio_end.0136 = phi i64 [ 0, %for.body.lr.ph ], [ %mmio_end.1, %for.inc ]
  %iio_sz.0135 = phi i64 [ 16777215, %for.body.lr.ph ], [ %iio_sz.1, %for.inc ]
  %fwnode9 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %range.0137, i64 0, i32 1
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode9, align 8
  %cmp11 = icmp eq %struct.fwnode_handle* %6, %5
  br i1 %cmp11, label %end_register, label %if.end13

if.end13:                                         ; preds = %for.body
  %flags14 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %range.0137, i64 0, i32 5
  %7 = load i64, i64* %flags14, align 8
  switch i64 %7, label %for.inc [
    i64 1, label %land.lhs.true16
    i64 0, label %land.lhs.true34
  ]

land.lhs.true16:                                  ; preds = %if.end13
  %8 = load i64, i64* %flags, align 8
  %cmp18 = icmp eq i64 %8, 1
  br i1 %cmp18, label %if.then19, label %for.inc

if.then19:                                        ; preds = %land.lhs.true16
  %hw_start20 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %range.0137, i64 0, i32 2
  %9 = load i64, i64* %hw_start20, align 8
  %size21 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %range.0137, i64 0, i32 4
  %10 = load i64, i64* %size21, align 8
  %add22 = add i64 %10, %9
  %cmp23.not = icmp uge i64 %4, %add22
  %cmp26 = icmp ult i64 %add, %9
  %or.cond = select i1 %cmp23.not, i1 true, i1 %cmp26
  br i1 %or.cond, label %if.then27, label %end_register

if.then27:                                        ; preds = %if.then19
  %io_start = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %range.0137, i64 0, i32 3
  %11 = load i64, i64* %io_start, align 8
  %add29 = add i64 %11, %10
  br label %for.inc

land.lhs.true34:                                  ; preds = %if.end13
  %12 = load i64, i64* %flags, align 8
  %cmp36 = icmp eq i64 %12, 0
  br i1 %cmp36, label %if.then37, label %for.inc

if.then37:                                        ; preds = %land.lhs.true34
  %size38 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %range.0137, i64 0, i32 4
  %13 = load i64, i64* %size38, align 8
  %add39 = add i64 %13, %iio_sz.0135
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %land.lhs.true16, %if.then27, %if.then37, %land.lhs.true34
  %iio_sz.1 = phi i64 [ %iio_sz.0135, %if.then27 ], [ %add39, %if.then37 ], [ %iio_sz.0135, %land.lhs.true34 ], [ %iio_sz.0135, %land.lhs.true16 ], [ %iio_sz.0135, %if.end13 ]
  %mmio_end.1 = phi i64 [ %add29, %if.then27 ], [ %mmio_end.0136, %if.then37 ], [ %mmio_end.0136, %land.lhs.true34 ], [ %mmio_end.0136, %land.lhs.true16 ], [ %mmio_end.0136, %if.end13 ]
  %14 = bitcast %struct.logic_pio_hwaddr* %range.0137 to %struct.logic_pio_hwaddr**
  %range.0 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %14, align 8
  %list = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %range.0, i64 0, i32 0
  %cmp8.not = icmp eq %struct.list_head* %list, @io_range_list
  br i1 %cmp8.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  %iio_sz.0.lcssa = phi i64 [ 16777215, %if.end ], [ %iio_sz.1, %for.inc ]
  %mmio_end.0.lcssa = phi i64 [ 0, %if.end ], [ %mmio_end.1, %for.inc ]
  %15 = load i64, i64* %flags, align 8
  switch i64 %15, label %end_register [
    i64 1, label %if.then51
    i64 0, label %if.then71
  ]

if.then51:                                        ; preds = %for.end
  %16 = load i64, i64* %size, align 8
  %add53 = add i64 %mmio_end.0.lcssa, -16777217
  %17 = add i64 %add53, %16
  %cmp54 = icmp ult i64 %17, -16777216
  br i1 %cmp54, label %if.then55, label %if.end81

if.then55:                                        ; preds = %if.then51
  %18 = add i64 %mmio_end.0.lcssa, -16711681
  %cmp58 = icmp ult i64 %18, -16777216
  br i1 %cmp58, label %end_register, label %if.end60

if.end60:                                         ; preds = %if.then55
  store i64 65536, i64* %size, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0)) #5
  br label %if.end81

if.then71:                                        ; preds = %for.end
  %19 = load i64, i64* %size, align 8
  %add73 = add i64 %iio_sz.0.lcssa, -16777217
  %20 = add i64 %add73, %19
  %cmp75 = icmp ult i64 %20, -16777216
  br i1 %cmp75, label %end_register, label %if.end81

if.end81:                                         ; preds = %if.then71, %if.then51, %if.end60
  %iio_sz.0.lcssa.sink = phi i64 [ %mmio_end.0.lcssa, %if.end60 ], [ %mmio_end.0.lcssa, %if.then51 ], [ %iio_sz.0.lcssa, %if.then71 ]
  %io_start78 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %new_range, i64 0, i32 3
  store i64 %iio_sz.0.lcssa.sink, i64* %io_start78, align 8
  %list82 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %new_range, i64 0, i32 0
  call fastcc void @list_add_tail_rcu(%struct.list_head* noundef %list82) #6
  br label %end_register

end_register:                                     ; preds = %if.then19, %for.body, %for.end, %if.then71, %if.then55, %if.end81
  %ret.0 = phi i32 [ 0, %if.end81 ], [ -7, %if.then55 ], [ -7, %if.then71 ], [ -22, %for.end ], [ -14, %if.then19 ], [ -17, %for.body ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @io_range_mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false2, %land.lhs.true, %end_register
  %retval.0 = phi i32 [ %ret.0, %end_register ], [ -22, %land.lhs.true ], [ -22, %lor.lhs.false2 ], [ -22, %lor.lhs.false ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail_rcu(%struct.list_head* noundef %new) unnamed_addr #0 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @io_range_list, i64 0, i32 1), align 8
  call fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @logic_pio_unregister_range(%struct.logic_pio_hwaddr* nocapture noundef %range) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @io_range_mutex) #4
  %list = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %range, i64 0, i32 0
  call fastcc void @list_del_rcu(%struct.list_head* noundef %list) #6
  call void @mutex_unlock(%struct.mutex* noundef nonnull @io_range_mutex) #4
  call void @synchronize_rcu() #4
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_rcu(%struct.list_head* nocapture noundef %entry1) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #6
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.logic_pio_hwaddr* @find_io_range_by_fwnode(%struct.fwnode_handle* noundef readnone %fwnode) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #4
  %range.0.in27 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @io_range_list, i64 0, i32 0), align 8
  %cmp.not28 = icmp eq %struct.list_head* %range.0.in27, @io_range_list
  br i1 %cmp.not28, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %range.0.in29 = phi %struct.list_head* [ %range.0.in, %for.inc ], [ %range.0.in27, %entry ]
  %fwnode5 = getelementptr inbounds %struct.list_head, %struct.list_head* %range.0.in29, i64 1
  %0 = bitcast %struct.list_head* %fwnode5 to %struct.fwnode_handle**
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %0, align 8
  %cmp6 = icmp eq %struct.fwnode_handle* %1, %fwnode
  br i1 %cmp6, label %for.end.split.loop.exit, label %for.inc

for.inc:                                          ; preds = %for.body
  %next = getelementptr %struct.list_head, %struct.list_head* %range.0.in29, i64 0, i32 0
  %range.0.in = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp.not = icmp eq %struct.list_head* %range.0.in, @io_range_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end.split.loop.exit:                          ; preds = %for.body
  %range.0.le = bitcast %struct.list_head* %range.0.in29 to %struct.logic_pio_hwaddr*
  br label %for.end

for.end:                                          ; preds = %for.inc, %entry, %for.end.split.loop.exit
  %found_range.0 = phi %struct.logic_pio_hwaddr* [ %range.0.le, %for.end.split.loop.exit ], [ null, %entry ], [ null, %for.inc ]
  call fastcc void @rcu_read_unlock() #6
  ret %struct.logic_pio_hwaddr* %found_range.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @logic_pio_to_hwaddr(i64 noundef %pio) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.logic_pio_hwaddr* @find_io_range(i64 noundef %pio) #6
  %tobool.not = icmp eq %struct.logic_pio_hwaddr* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %hw_start = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %call, i64 0, i32 2
  %0 = load i64, i64* %hw_start, align 8
  %add = add i64 %0, %pio
  %io_start = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %call, i64 0, i32 3
  %1 = load i64, i64* %io_start, align 8
  %sub = sub i64 %add, %1
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %sub, %if.then ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.logic_pio_hwaddr* @find_io_range(i64 noundef %pio) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #4
  %range.0.in43 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @io_range_list, i64 0, i32 0), align 8
  %cmp.not44 = icmp eq %struct.list_head* %range.0.in43, @io_range_list
  br i1 %cmp.not44, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.inc, %entry
  call fastcc void @rcu_read_unlock() #6
  br label %do.end22

for.body:                                         ; preds = %entry, %for.inc
  %range.0.in45 = phi %struct.list_head* [ %range.0.in, %for.inc ], [ %range.0.in43, %entry ]
  %io_start = getelementptr inbounds %struct.list_head, %struct.list_head* %range.0.in45, i64 2
  %0 = bitcast %struct.list_head* %io_start to i64*
  %1 = load i64, i64* %0, align 8
  %cmp5.not = icmp ugt i64 %1, %pio
  br i1 %cmp5.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %size = getelementptr inbounds %struct.list_head, %struct.list_head* %range.0.in45, i64 2, i32 1
  %2 = bitcast %struct.list_head** %size to i64*
  %3 = load i64, i64* %2, align 8
  %add = add i64 %3, %1
  %cmp7 = icmp ugt i64 %add, %pio
  br i1 %cmp7, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %next = getelementptr %struct.list_head, %struct.list_head* %range.0.in45, i64 0, i32 0
  %range.0.in = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp.not = icmp eq %struct.list_head* %range.0.in, @io_range_list
  br i1 %cmp.not, label %for.end.thread, label %for.body

for.end:                                          ; preds = %land.lhs.true
  %range.0.le = bitcast %struct.list_head* %range.0.in45 to %struct.logic_pio_hwaddr*
  call fastcc void @rcu_read_unlock() #6
  %tobool.not = icmp eq %struct.list_head* %range.0.in45, null
  br i1 %tobool.not, label %do.end22, label %if.end24

do.end22:                                         ; preds = %for.end.thread, %for.end
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 noundef %pio) #5
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %for.end
  %found_range.039 = phi %struct.logic_pio_hwaddr* [ null, %do.end22 ], [ %range.0.le, %for.end ]
  ret %struct.logic_pio_hwaddr* %found_range.039
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @logic_pio_trans_hwaddr(%struct.fwnode_handle* noundef %fwnode, i64 noundef %addr, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %call = call %struct.logic_pio_hwaddr* @find_io_range_by_fwnode(%struct.fwnode_handle* noundef %fwnode) #6
  %tobool.not = icmp eq %struct.logic_pio_hwaddr* %call, null
  br i1 %tobool.not, label %do.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %call, i64 0, i32 5
  %0 = load i64, i64* %flags, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry, %lor.lhs.false
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %size2 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %call, i64 0, i32 4
  %1 = load i64, i64* %size2, align 8
  %cmp3 = icmp ult i64 %1, %size
  br i1 %cmp3, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.end
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64* noundef nonnull %size.addr, i64* noundef %size2) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %hw_start = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %call, i64 0, i32 2
  %2 = load i64, i64* %hw_start, align 8
  %sub = sub i64 %addr, %2
  %io_start = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %call, i64 0, i32 3
  %3 = load i64, i64* %io_start, align 8
  %add = add i64 %sub, %3
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end7, %do.end
  %retval.0 = phi i64 [ -1, %do.end ], [ -1, %do.end7 ], [ %add, %if.end11 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @logic_pio_trans_cpuaddr(i64 noundef %addr) local_unnamed_addr #0 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, i64* %addr.addr, align 8
  call fastcc void @__rcu_read_lock() #4
  %range.0.in42 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @io_range_list, i64 0, i32 0), align 8
  %cmp.not43 = icmp eq %struct.list_head* %range.0.in42, @io_range_list
  br i1 %cmp.not43, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %range.0.in44 = phi %struct.list_head* [ %range.0.in, %for.inc ], [ %range.0.in42, %entry ]
  %flags = getelementptr inbounds %struct.list_head, %struct.list_head* %range.0.in44, i64 3
  %0 = bitcast %struct.list_head* %flags to i64*
  %1 = load i64, i64* %0, align 8
  %cmp5.not = icmp eq i64 %1, 1
  br i1 %cmp5.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %hw_start = getelementptr inbounds %struct.list_head, %struct.list_head* %range.0.in44, i64 1, i32 1
  %2 = bitcast %struct.list_head** %hw_start to i64*
  %3 = load i64, i64* %2, align 8
  %cmp6.not = icmp ugt i64 %3, %addr
  br i1 %cmp6.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %size = getelementptr inbounds %struct.list_head, %struct.list_head* %range.0.in44, i64 2, i32 1
  %4 = bitcast %struct.list_head** %size to i64*
  %5 = load i64, i64* %4, align 8
  %add = add i64 %5, %3
  %cmp8 = icmp ugt i64 %add, %addr
  br i1 %cmp8, label %if.then9, label %for.inc

if.then9:                                         ; preds = %land.lhs.true
  %sub = sub i64 %addr, %3
  %io_start = getelementptr inbounds %struct.list_head, %struct.list_head* %range.0.in44, i64 2
  %6 = bitcast %struct.list_head* %io_start to i64*
  %7 = load i64, i64* %6, align 8
  %add11 = add i64 %sub, %7
  call fastcc void @rcu_read_unlock() #6
  br label %cleanup

for.inc:                                          ; preds = %if.end, %land.lhs.true, %for.body
  %next = getelementptr %struct.list_head, %struct.list_head* %range.0.in44, i64 0, i32 0
  %range.0.in = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp.not = icmp eq %struct.list_head* %range.0.in, @io_range_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  call fastcc void @rcu_read_unlock() #6
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64* noundef nonnull %addr.addr) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then9
  %retval.0 = phi i64 [ %add11, %if.then9 ], [ -1, %for.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %prev) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* @io_range_list, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev2, align 8
  %0 = ptrtoint %struct.list_head* %new to i64
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next13, i64 %0) #7, !srcloc !7
  store %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @io_range_list, i64 0, i32 1), align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #6
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  call void @rcu_read_unlock_strict() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { cold nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2151051295}
!8 = !{i64 2149463278}
!9 = !{i64 2149463495}

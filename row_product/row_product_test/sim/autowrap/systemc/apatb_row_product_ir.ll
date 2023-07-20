; ModuleID = '/home/leoh/Documents/spgemm-format-exploration/row_product/row_product_test/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #0

; Function Attrs: noinline
define void @apatb_row_product_ir(i32* %x_rowptr, i32* %x_colind, double* %x_data, i32* %y_rowptr, i32* %y_colind, double* %y_data, i32* %z_rowptr, i32* %z_colind, double* %z_data) local_unnamed_addr #1 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %x_rowptr_copy = bitcast i8* %malloccall to [1024 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 4096)
  %x_colind_copy = bitcast i8* %malloccall1 to [1024 x i32]*
  %malloccall2 = tail call i8* @malloc(i64 8192)
  %x_data_copy = bitcast i8* %malloccall2 to [1024 x double]*
  %malloccall3 = tail call i8* @malloc(i64 4096)
  %y_rowptr_copy = bitcast i8* %malloccall3 to [1024 x i32]*
  %malloccall4 = tail call i8* @malloc(i64 4096)
  %y_colind_copy = bitcast i8* %malloccall4 to [1024 x i32]*
  %malloccall5 = tail call i8* @malloc(i64 8192)
  %y_data_copy = bitcast i8* %malloccall5 to [1024 x double]*
  %malloccall6 = tail call i8* @malloc(i64 4096)
  %z_rowptr_copy = bitcast i8* %malloccall6 to [1024 x i32]*
  %malloccall7 = tail call i8* @malloc(i64 4096)
  %z_colind_copy = bitcast i8* %malloccall7 to [1024 x i32]*
  %malloccall8 = tail call i8* @malloc(i64 8192)
  %z_data_copy = bitcast i8* %malloccall8 to [1024 x double]*
  %0 = bitcast i32* %x_rowptr to [1024 x i32]*
  %1 = bitcast i32* %x_colind to [1024 x i32]*
  %2 = bitcast double* %x_data to [1024 x double]*
  %3 = bitcast i32* %y_rowptr to [1024 x i32]*
  %4 = bitcast i32* %y_colind to [1024 x i32]*
  %5 = bitcast double* %y_data to [1024 x double]*
  %6 = bitcast i32* %z_rowptr to [1024 x i32]*
  %7 = bitcast i32* %z_colind to [1024 x i32]*
  %8 = bitcast double* %z_data to [1024 x double]*
  call fastcc void @copy_in([1024 x i32]* %0, [1024 x i32]* %x_rowptr_copy, [1024 x i32]* %1, [1024 x i32]* %x_colind_copy, [1024 x double]* %2, [1024 x double]* %x_data_copy, [1024 x i32]* %3, [1024 x i32]* %y_rowptr_copy, [1024 x i32]* %4, [1024 x i32]* %y_colind_copy, [1024 x double]* %5, [1024 x double]* %y_data_copy, [1024 x i32]* %6, [1024 x i32]* %z_rowptr_copy, [1024 x i32]* %7, [1024 x i32]* %z_colind_copy, [1024 x double]* %8, [1024 x double]* %z_data_copy)
  %9 = getelementptr inbounds [1024 x i32], [1024 x i32]* %x_rowptr_copy, i32 0, i32 0
  %10 = getelementptr inbounds [1024 x i32], [1024 x i32]* %x_colind_copy, i32 0, i32 0
  %11 = getelementptr inbounds [1024 x double], [1024 x double]* %x_data_copy, i32 0, i32 0
  %12 = getelementptr inbounds [1024 x i32], [1024 x i32]* %y_rowptr_copy, i32 0, i32 0
  %13 = getelementptr inbounds [1024 x i32], [1024 x i32]* %y_colind_copy, i32 0, i32 0
  %14 = getelementptr inbounds [1024 x double], [1024 x double]* %y_data_copy, i32 0, i32 0
  %15 = getelementptr inbounds [1024 x i32], [1024 x i32]* %z_rowptr_copy, i32 0, i32 0
  %16 = getelementptr inbounds [1024 x i32], [1024 x i32]* %z_colind_copy, i32 0, i32 0
  %17 = getelementptr inbounds [1024 x double], [1024 x double]* %z_data_copy, i32 0, i32 0
  call void @apatb_row_product_hw(i32* %9, i32* %10, double* %11, i32* %12, i32* %13, double* %14, i32* %15, i32* %16, double* %17)
  call fastcc void @copy_out([1024 x i32]* %0, [1024 x i32]* %x_rowptr_copy, [1024 x i32]* %1, [1024 x i32]* %x_colind_copy, [1024 x double]* %2, [1024 x double]* %x_data_copy, [1024 x i32]* %3, [1024 x i32]* %y_rowptr_copy, [1024 x i32]* %4, [1024 x i32]* %y_colind_copy, [1024 x double]* %5, [1024 x double]* %y_data_copy, [1024 x i32]* %6, [1024 x i32]* %z_rowptr_copy, [1024 x i32]* %7, [1024 x i32]* %z_colind_copy, [1024 x double]* %8, [1024 x double]* %z_data_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  tail call void @free(i8* %malloccall4)
  tail call void @free(i8* %malloccall5)
  tail call void @free(i8* %malloccall6)
  tail call void @free(i8* %malloccall7)
  tail call void @free(i8* %malloccall8)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([1024 x i32]* readonly, [1024 x i32]* noalias, [1024 x i32]* readonly, [1024 x i32]* noalias, [1024 x double]* readonly, [1024 x double]* noalias, [1024 x i32]* readonly, [1024 x i32]* noalias, [1024 x i32]* readonly, [1024 x i32]* noalias, [1024 x double]* readonly, [1024 x double]* noalias, [1024 x i32]* readonly, [1024 x i32]* noalias, [1024 x i32]* readonly, [1024 x i32]* noalias, [1024 x double]* readonly, [1024 x double]* noalias) unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %1, [1024 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %3, [1024 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %5, [1024 x double]* %4)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %7, [1024 x i32]* %6)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %9, [1024 x i32]* %8)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %11, [1024 x double]* %10)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %13, [1024 x i32]* %12)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %15, [1024 x i32]* %14)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %17, [1024 x double]* %16)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* noalias, [1024 x i32]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [1024 x i32]* %0, null
  %3 = icmp eq [1024 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [1024 x i32], [1024 x i32]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast i32* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [1024 x i32], [1024 x i32]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast i32* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* noalias, [1024 x double]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [1024 x double]* %0, null
  %3 = icmp eq [1024 x double]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [1024 x double], [1024 x double]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast double* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [1024 x double], [1024 x double]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast double* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 8, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([1024 x i32]*, [1024 x i32]* noalias readonly, [1024 x i32]*, [1024 x i32]* noalias readonly, [1024 x double]*, [1024 x double]* noalias readonly, [1024 x i32]*, [1024 x i32]* noalias readonly, [1024 x i32]*, [1024 x i32]* noalias readonly, [1024 x double]*, [1024 x double]* noalias readonly, [1024 x i32]*, [1024 x i32]* noalias readonly, [1024 x i32]*, [1024 x i32]* noalias readonly, [1024 x double]*, [1024 x double]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %0, [1024 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %2, [1024 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %4, [1024 x double]* %5)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %6, [1024 x i32]* %7)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %8, [1024 x i32]* %9)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %10, [1024 x double]* %11)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %12, [1024 x i32]* %13)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %14, [1024 x i32]* %15)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %16, [1024 x double]* %17)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_row_product_hw(i32*, i32*, double*, i32*, i32*, double*, i32*, i32*, double*)

define void @row_product_hw_stub_wrapper(i32*, i32*, double*, i32*, i32*, double*, i32*, i32*, double*) #5 {
entry:
  %9 = bitcast i32* %0 to [1024 x i32]*
  %10 = bitcast i32* %1 to [1024 x i32]*
  %11 = bitcast double* %2 to [1024 x double]*
  %12 = bitcast i32* %3 to [1024 x i32]*
  %13 = bitcast i32* %4 to [1024 x i32]*
  %14 = bitcast double* %5 to [1024 x double]*
  %15 = bitcast i32* %6 to [1024 x i32]*
  %16 = bitcast i32* %7 to [1024 x i32]*
  %17 = bitcast double* %8 to [1024 x double]*
  call void @copy_out([1024 x i32]* null, [1024 x i32]* %9, [1024 x i32]* null, [1024 x i32]* %10, [1024 x double]* null, [1024 x double]* %11, [1024 x i32]* null, [1024 x i32]* %12, [1024 x i32]* null, [1024 x i32]* %13, [1024 x double]* null, [1024 x double]* %14, [1024 x i32]* null, [1024 x i32]* %15, [1024 x i32]* null, [1024 x i32]* %16, [1024 x double]* null, [1024 x double]* %17)
  %18 = bitcast [1024 x i32]* %9 to i32*
  %19 = bitcast [1024 x i32]* %10 to i32*
  %20 = bitcast [1024 x double]* %11 to double*
  %21 = bitcast [1024 x i32]* %12 to i32*
  %22 = bitcast [1024 x i32]* %13 to i32*
  %23 = bitcast [1024 x double]* %14 to double*
  %24 = bitcast [1024 x i32]* %15 to i32*
  %25 = bitcast [1024 x i32]* %16 to i32*
  %26 = bitcast [1024 x double]* %17 to double*
  call void @row_product_hw_stub(i32* %18, i32* %19, double* %20, i32* %21, i32* %22, double* %23, i32* %24, i32* %25, double* %26)
  call void @copy_in([1024 x i32]* null, [1024 x i32]* %9, [1024 x i32]* null, [1024 x i32]* %10, [1024 x double]* null, [1024 x double]* %11, [1024 x i32]* null, [1024 x i32]* %12, [1024 x i32]* null, [1024 x i32]* %13, [1024 x double]* null, [1024 x double]* %14, [1024 x i32]* null, [1024 x i32]* %15, [1024 x i32]* null, [1024 x i32]* %16, [1024 x double]* null, [1024 x double]* %17)
  ret void
}

declare void @row_product_hw_stub(i32*, i32*, double*, i32*, i32*, double*, i32*, i32*, double*)

attributes #0 = { argmemonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}

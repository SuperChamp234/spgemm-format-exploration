; ModuleID = '/home/leoh/spgemm-format-exploration/outer_product/build/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.ap_fixed = type { %struct.ap_fixed_base }
%struct.ap_fixed_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i32 }

; Function Attrs: noinline
define void @apatb_outer_product_ir(i32* %x_rowptr, i32* %x_colind, %struct.ap_fixed* %x_data, i32* %y_colptr, i32* %y_rowind, %struct.ap_fixed* %y_data, i32* %z_rowptr, i32* %z_colind, %struct.ap_fixed* %z_data) local_unnamed_addr #0 {
entry:
  %x_rowptr_copy = alloca [25 x i32], align 512
  %x_colind_copy = alloca [25 x i32], align 512
  %x_data_copy = alloca [25 x %struct.ap_fixed], align 512
  %y_colptr_copy = alloca [25 x i32], align 512
  %y_rowind_copy = alloca [25 x i32], align 512
  %y_data_copy = alloca [25 x %struct.ap_fixed], align 512
  %z_rowptr_copy = alloca [25 x i32], align 512
  %z_colind_copy = alloca [25 x i32], align 512
  %z_data_copy = alloca [25 x %struct.ap_fixed], align 512
  %0 = bitcast i32* %x_rowptr to [25 x i32]*
  %1 = bitcast i32* %x_colind to [25 x i32]*
  %2 = bitcast %struct.ap_fixed* %x_data to [25 x %struct.ap_fixed]*
  %3 = bitcast i32* %y_colptr to [25 x i32]*
  %4 = bitcast i32* %y_rowind to [25 x i32]*
  %5 = bitcast %struct.ap_fixed* %y_data to [25 x %struct.ap_fixed]*
  %6 = bitcast i32* %z_rowptr to [25 x i32]*
  %7 = bitcast i32* %z_colind to [25 x i32]*
  %8 = bitcast %struct.ap_fixed* %z_data to [25 x %struct.ap_fixed]*
  call fastcc void @copy_in([25 x i32]* %0, [25 x i32]* nonnull align 512 %x_rowptr_copy, [25 x i32]* %1, [25 x i32]* nonnull align 512 %x_colind_copy, [25 x %struct.ap_fixed]* %2, [25 x %struct.ap_fixed]* nonnull align 512 %x_data_copy, [25 x i32]* %3, [25 x i32]* nonnull align 512 %y_colptr_copy, [25 x i32]* %4, [25 x i32]* nonnull align 512 %y_rowind_copy, [25 x %struct.ap_fixed]* %5, [25 x %struct.ap_fixed]* nonnull align 512 %y_data_copy, [25 x i32]* %6, [25 x i32]* nonnull align 512 %z_rowptr_copy, [25 x i32]* %7, [25 x i32]* nonnull align 512 %z_colind_copy, [25 x %struct.ap_fixed]* %8, [25 x %struct.ap_fixed]* nonnull align 512 %z_data_copy)
  %9 = getelementptr inbounds [25 x i32], [25 x i32]* %x_rowptr_copy, i32 0, i32 0
  %10 = getelementptr inbounds [25 x i32], [25 x i32]* %x_colind_copy, i32 0, i32 0
  %11 = getelementptr inbounds [25 x %struct.ap_fixed], [25 x %struct.ap_fixed]* %x_data_copy, i32 0, i32 0
  %12 = getelementptr inbounds [25 x i32], [25 x i32]* %y_colptr_copy, i32 0, i32 0
  %13 = getelementptr inbounds [25 x i32], [25 x i32]* %y_rowind_copy, i32 0, i32 0
  %14 = getelementptr inbounds [25 x %struct.ap_fixed], [25 x %struct.ap_fixed]* %y_data_copy, i32 0, i32 0
  %15 = getelementptr inbounds [25 x i32], [25 x i32]* %z_rowptr_copy, i32 0, i32 0
  %16 = getelementptr inbounds [25 x i32], [25 x i32]* %z_colind_copy, i32 0, i32 0
  %17 = getelementptr inbounds [25 x %struct.ap_fixed], [25 x %struct.ap_fixed]* %z_data_copy, i32 0, i32 0
  call void @apatb_outer_product_hw(i32* %9, i32* %10, %struct.ap_fixed* %11, i32* %12, i32* %13, %struct.ap_fixed* %14, i32* %15, i32* %16, %struct.ap_fixed* %17)
  call fastcc void @copy_out([25 x i32]* %0, [25 x i32]* nonnull align 512 %x_rowptr_copy, [25 x i32]* %1, [25 x i32]* nonnull align 512 %x_colind_copy, [25 x %struct.ap_fixed]* %2, [25 x %struct.ap_fixed]* nonnull align 512 %x_data_copy, [25 x i32]* %3, [25 x i32]* nonnull align 512 %y_colptr_copy, [25 x i32]* %4, [25 x i32]* nonnull align 512 %y_rowind_copy, [25 x %struct.ap_fixed]* %5, [25 x %struct.ap_fixed]* nonnull align 512 %y_data_copy, [25 x i32]* %6, [25 x i32]* nonnull align 512 %z_rowptr_copy, [25 x i32]* %7, [25 x i32]* nonnull align 512 %z_colind_copy, [25 x %struct.ap_fixed]* %8, [25 x %struct.ap_fixed]* nonnull align 512 %z_data_copy)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_in([25 x i32]* readonly, [25 x i32]* noalias align 512, [25 x i32]* readonly, [25 x i32]* noalias align 512, [25 x %struct.ap_fixed]*, [25 x %struct.ap_fixed]* noalias align 512, [25 x i32]* readonly, [25 x i32]* noalias align 512, [25 x i32]* readonly, [25 x i32]* noalias align 512, [25 x %struct.ap_fixed]*, [25 x %struct.ap_fixed]* noalias align 512, [25 x i32]* readonly, [25 x i32]* noalias align 512, [25 x i32]* readonly, [25 x i32]* noalias align 512, [25 x %struct.ap_fixed]*, [25 x %struct.ap_fixed]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a25i32([25 x i32]* align 512 %1, [25 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a25i32([25 x i32]* align 512 %3, [25 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a25struct.ap_fixed([25 x %struct.ap_fixed]* align 512 %5, [25 x %struct.ap_fixed]* %4)
  call fastcc void @onebyonecpy_hls.p0a25i32([25 x i32]* align 512 %7, [25 x i32]* %6)
  call fastcc void @onebyonecpy_hls.p0a25i32([25 x i32]* align 512 %9, [25 x i32]* %8)
  call fastcc void @onebyonecpy_hls.p0a25struct.ap_fixed([25 x %struct.ap_fixed]* align 512 %11, [25 x %struct.ap_fixed]* %10)
  call fastcc void @onebyonecpy_hls.p0a25i32([25 x i32]* align 512 %13, [25 x i32]* %12)
  call fastcc void @onebyonecpy_hls.p0a25i32([25 x i32]* align 512 %15, [25 x i32]* %14)
  call fastcc void @onebyonecpy_hls.p0a25struct.ap_fixed([25 x %struct.ap_fixed]* align 512 %17, [25 x %struct.ap_fixed]* %16)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a25i32([25 x i32]* noalias align 512, [25 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [25 x i32]* %0, null
  %3 = icmp eq [25 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [25 x i32], [25 x i32]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast i32* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [25 x i32], [25 x i32]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast i32* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 25
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a25struct.ap_fixed([25 x %struct.ap_fixed]* noalias align 512, [25 x %struct.ap_fixed]* noalias) unnamed_addr #4 {
entry:
  %2 = icmp eq [25 x %struct.ap_fixed]* %0, null
  %3 = icmp eq [25 x %struct.ap_fixed]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [25 x %struct.ap_fixed], [25 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9
  %src.addr = getelementptr [25 x %struct.ap_fixed], [25 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9
  %5 = bitcast %struct.ap_fixed* %src.addr to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_fixed(%struct.ap_fixed* %dst.addr, %struct.ap_fixed* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [25 x %struct.ap_fixed], [25 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0
  %dst.addr.02 = getelementptr [25 x %struct.ap_fixed], [25 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0
  %9 = bitcast %struct.ap_fixed_base* %src.addr.01 to i8*
  %10 = call i1 @fpga_fifo_exist_4(i8* %9)
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_fixed_base(%struct.ap_fixed_base* %dst.addr.02, %struct.ap_fixed_base* %src.addr.01)
  br label %for.loop.head

; <label>:12:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [25 x %struct.ap_fixed], [25 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [25 x %struct.ap_fixed], [25 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %13 = bitcast %struct.ssdm_int* %src.addr.0.03 to i8*
  %14 = call i1 @fpga_fifo_exist_4(i8* %13)
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.0.04, %struct.ssdm_int* %src.addr.0.03)
  br label %for.loop.head

; <label>:16:                                     ; preds = %12
  %dst.addr.0.0.06.gep7 = getelementptr [25 x %struct.ap_fixed], [25 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %17 = bitcast i32* %dst.addr.0.0.06.gep7 to i8*
  %src.addr.0.0.05.gep8 = getelementptr [25 x %struct.ap_fixed], [25 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %18 = bitcast i32* %src.addr.0.0.05.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 4, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %16, %15, %11, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 25
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

declare i1 @fpga_fifo_exist_4(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_fixed(%struct.ap_fixed* noalias nocapture, %struct.ap_fixed* noalias nocapture) unnamed_addr #5 {
entry:
  %2 = alloca %struct.ap_fixed
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_fixed* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_fixed* %2 to i8*
  %6 = bitcast %struct.ap_fixed* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_fixed, %struct.ap_fixed* %2
  %8 = bitcast %struct.ap_fixed* %2 to i8*
  %9 = bitcast %struct.ap_fixed* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_fixed* %1 to i8*
  %11 = bitcast %struct.ap_fixed* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_fixed_base(%struct.ap_fixed_base* noalias nocapture, %struct.ap_fixed_base* noalias nocapture) unnamed_addr #5 {
entry:
  %2 = alloca %struct.ap_fixed_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_fixed_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_fixed_base* %2 to i8*
  %6 = bitcast %struct.ap_fixed_base* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_fixed_base, %struct.ap_fixed_base* %2
  %8 = bitcast %struct.ap_fixed_base* %2 to i8*
  %9 = bitcast %struct.ap_fixed_base* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_fixed_base* %1 to i8*
  %11 = bitcast %struct.ap_fixed_base* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* noalias nocapture, %struct.ssdm_int* noalias nocapture) unnamed_addr #5 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int* %1 to i8*
  %11 = bitcast %struct.ssdm_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_out([25 x i32]*, [25 x i32]* noalias readonly align 512, [25 x i32]*, [25 x i32]* noalias readonly align 512, [25 x %struct.ap_fixed]*, [25 x %struct.ap_fixed]* noalias align 512, [25 x i32]*, [25 x i32]* noalias readonly align 512, [25 x i32]*, [25 x i32]* noalias readonly align 512, [25 x %struct.ap_fixed]*, [25 x %struct.ap_fixed]* noalias align 512, [25 x i32]*, [25 x i32]* noalias readonly align 512, [25 x i32]*, [25 x i32]* noalias readonly align 512, [25 x %struct.ap_fixed]*, [25 x %struct.ap_fixed]* noalias align 512) unnamed_addr #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0a25i32([25 x i32]* %0, [25 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a25i32([25 x i32]* %2, [25 x i32]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a25struct.ap_fixed([25 x %struct.ap_fixed]* %4, [25 x %struct.ap_fixed]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a25i32([25 x i32]* %6, [25 x i32]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a25i32([25 x i32]* %8, [25 x i32]* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0a25struct.ap_fixed([25 x %struct.ap_fixed]* %10, [25 x %struct.ap_fixed]* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0a25i32([25 x i32]* %12, [25 x i32]* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0a25i32([25 x i32]* %14, [25 x i32]* align 512 %15)
  call fastcc void @onebyonecpy_hls.p0a25struct.ap_fixed([25 x %struct.ap_fixed]* %16, [25 x %struct.ap_fixed]* align 512 %17)
  ret void
}

declare void @apatb_outer_product_hw(i32*, i32*, %struct.ap_fixed*, i32*, i32*, %struct.ap_fixed*, i32*, i32*, %struct.ap_fixed*)

define void @outer_product_hw_stub_wrapper(i32*, i32*, %struct.ap_fixed*, i32*, i32*, %struct.ap_fixed*, i32*, i32*, %struct.ap_fixed*) #7 {
entry:
  %9 = bitcast i32* %0 to [25 x i32]*
  %10 = bitcast i32* %1 to [25 x i32]*
  %11 = bitcast %struct.ap_fixed* %2 to [25 x %struct.ap_fixed]*
  %12 = bitcast i32* %3 to [25 x i32]*
  %13 = bitcast i32* %4 to [25 x i32]*
  %14 = bitcast %struct.ap_fixed* %5 to [25 x %struct.ap_fixed]*
  %15 = bitcast i32* %6 to [25 x i32]*
  %16 = bitcast i32* %7 to [25 x i32]*
  %17 = bitcast %struct.ap_fixed* %8 to [25 x %struct.ap_fixed]*
  call void @copy_out([25 x i32]* null, [25 x i32]* %9, [25 x i32]* null, [25 x i32]* %10, [25 x %struct.ap_fixed]* null, [25 x %struct.ap_fixed]* %11, [25 x i32]* null, [25 x i32]* %12, [25 x i32]* null, [25 x i32]* %13, [25 x %struct.ap_fixed]* null, [25 x %struct.ap_fixed]* %14, [25 x i32]* null, [25 x i32]* %15, [25 x i32]* null, [25 x i32]* %16, [25 x %struct.ap_fixed]* null, [25 x %struct.ap_fixed]* %17)
  %18 = bitcast [25 x i32]* %9 to i32*
  %19 = bitcast [25 x i32]* %10 to i32*
  %20 = bitcast [25 x %struct.ap_fixed]* %11 to %struct.ap_fixed*
  %21 = bitcast [25 x i32]* %12 to i32*
  %22 = bitcast [25 x i32]* %13 to i32*
  %23 = bitcast [25 x %struct.ap_fixed]* %14 to %struct.ap_fixed*
  %24 = bitcast [25 x i32]* %15 to i32*
  %25 = bitcast [25 x i32]* %16 to i32*
  %26 = bitcast [25 x %struct.ap_fixed]* %17 to %struct.ap_fixed*
  call void @outer_product_hw_stub(i32* %18, i32* %19, %struct.ap_fixed* %20, i32* %21, i32* %22, %struct.ap_fixed* %23, i32* %24, i32* %25, %struct.ap_fixed* %26)
  call void @copy_in([25 x i32]* null, [25 x i32]* %9, [25 x i32]* null, [25 x i32]* %10, [25 x %struct.ap_fixed]* null, [25 x %struct.ap_fixed]* %11, [25 x i32]* null, [25 x i32]* %12, [25 x i32]* null, [25 x i32]* %13, [25 x %struct.ap_fixed]* null, [25 x %struct.ap_fixed]* %14, [25 x i32]* null, [25 x i32]* %15, [25 x i32]* null, [25 x i32]* %16, [25 x %struct.ap_fixed]* null, [25 x %struct.ap_fixed]* %17)
  ret void
}

declare void @outer_product_hw_stub(i32*, i32*, %struct.ap_fixed*, i32*, i32*, %struct.ap_fixed*, i32*, i32*, %struct.ap_fixed*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
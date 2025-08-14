module attributes {llvm.data_layout = ""} {
  llvm.func @matadd(%arg0: !llvm.ptr<f32>, %arg1: !llvm.ptr<f32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr<f32>, %arg8: !llvm.ptr<f32>, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr<f32>, %arg15: !llvm.ptr<f32>, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> to memref<4x4xf32>
    %9 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %10 = llvm.insertvalue %arg7, %9[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg8, %10[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg9, %11[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg10, %12[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg11, %14[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg13, %15[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = builtin.unrealized_conversion_cast %16 : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> to memref<4x4xf32>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %19 = llvm.insertvalue %arg14, %18[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg15, %19[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg16, %20[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg17, %21[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg19, %22[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %arg18, %23[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %arg20, %24[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = builtin.unrealized_conversion_cast %25 : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> to memref<4x4xf32>
    %27 = builtin.unrealized_conversion_cast %8 : memref<4x4xf32> to !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %28 = builtin.unrealized_conversion_cast %17 : memref<4x4xf32> to !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %29 = builtin.unrealized_conversion_cast %26 : memref<4x4xf32> to !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = builtin.unrealized_conversion_cast %30 : i64 to index
    %32 = llvm.mlir.constant(4 : index) : i64
    %33 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%30 : i64)
  ^bb1(%34: i64):  // 2 preds: ^bb0, ^bb5
    %35 = builtin.unrealized_conversion_cast %34 : i64 to index
    %36 = builtin.unrealized_conversion_cast %35 : index to i64
    %37 = builtin.unrealized_conversion_cast %35 : index to i64
    %38 = llvm.icmp "slt" %37, %32 : i64
    llvm.cond_br %38, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%30 : i64)
  ^bb3(%39: i64):  // 2 preds: ^bb2, ^bb4
    %40 = builtin.unrealized_conversion_cast %39 : i64 to index
    %41 = builtin.unrealized_conversion_cast %40 : index to i64
    %42 = builtin.unrealized_conversion_cast %40 : index to i64
    %43 = llvm.icmp "slt" %42, %32 : i64
    llvm.cond_br %43, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %44 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.mlir.constant(4 : index) : i64
    %46 = llvm.mul %36, %45  : i64
    %47 = llvm.add %46, %41  : i64
    %48 = llvm.getelementptr %44[%47] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %49 = llvm.load %48 : !llvm.ptr<f32>
    %50 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.mlir.constant(4 : index) : i64
    %52 = llvm.mul %36, %51  : i64
    %53 = llvm.add %52, %41  : i64
    %54 = llvm.getelementptr %50[%53] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %55 = llvm.load %54 : !llvm.ptr<f32>
    %56 = llvm.fadd %49, %55  : f32
    %57 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.mlir.constant(4 : index) : i64
    %59 = llvm.mul %36, %58  : i64
    %60 = llvm.add %59, %41  : i64
    %61 = llvm.getelementptr %57[%60] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %56, %61 : !llvm.ptr<f32>
    %62 = llvm.add %42, %33  : i64
    %63 = builtin.unrealized_conversion_cast %62 : i64 to index
    llvm.br ^bb3(%62 : i64)
  ^bb5:  // pred: ^bb3
    %64 = llvm.add %37, %33  : i64
    %65 = builtin.unrealized_conversion_cast %64 : i64 to index
    llvm.br ^bb1(%64 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
}


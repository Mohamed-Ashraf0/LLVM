module {
  func.func @matadd(%A: memref<4x4xf32>, %B: memref<4x4xf32>, %C: memref<4x4xf32>) {
    linalg.generic {
      indexing_maps = [
        affine_map<(d0, d1) -> (d0, d1)>,
        affine_map<(d0, d1) -> (d0, d1)>,
        affine_map<(d0, d1) -> (d0, d1)>
      ],
      iterator_types = ["parallel", "parallel"]
    } ins(%A, %B : memref<4x4xf32>, memref<4x4xf32>) outs(%C : memref<4x4xf32>) {
      ^bb0(%a: f32, %b: f32, %c: f32):
        %sum = arith.addf %a, %b : f32
        linalg.yield %sum : f32
    }
    return
  }
}
module {
  func.func @add(%a: i32, %b: i32) -> i32 {
    %sum = arith.addi %a, %b : i32
    func.return %sum : i32
  }

  func.func @main() -> i32 {
    %c2 = arith.constant 2 : i32
    %c3 = arith.constant 3 : i32
    %res = call @add(%c2, %c3) : (i32, i32) -> i32
    func.return %res : i32
  }
}
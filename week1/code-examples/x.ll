entry:
  br label %loop

loop:
  %x = phi i32 [ 0, %entry ], [ %i, %body ]
  %i = phi i32 [ 0, %entry ], [ %next_i, %body ]
  %cmp = icmp slt i32 %i, 10
  br i1 %cmp, label %body, label %exit

body:
  %next_i = add i32 %i, 1
  br label %loop

exit:
  ret i32 %x
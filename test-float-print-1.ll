; ModuleID = 'TPL'

@fmt_integer = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt_float = private unnamed_addr constant [6 x i8] c"%.2f\0A\00"

declare i32 @printf(i8*, ...)

declare i32 @printbig(i32)

define i32 @main() {
entry:
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt_integer, i32 0, i32 0), i32 1)
  %printf1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @fmt_float, i32 0, i32 0), float 1.500000e+00)
  ret i32 0
}

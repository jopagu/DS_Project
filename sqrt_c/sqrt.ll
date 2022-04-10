; ModuleID = 'sqrt.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"sqrt(123.123) = %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define float @fabs(float %x) #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  store float %x, float* %2, align 4
  %3 = load float* %2, align 4
  %4 = fcmp olt float %3, 0.000000e+00
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load float* %2, align 4
  %7 = fsub float -0.000000e+00, %6
  store float %7, float* %1
  br label %10

; <label>:8                                       ; preds = %0
  %9 = load float* %2, align 4
  store float %9, float* %1
  br label %10

; <label>:10                                      ; preds = %8, %5
  %11 = load float* %1
  ret float %11
}

; Function Attrs: nounwind uwtable
define float @sqrtfcn(float %val) #0 {
  %1 = alloca float, align 4
  %x = alloca float, align 4
  %dx = alloca float, align 4
  %diff = alloca double, align 8
  %min_tol = alloca double, align 8
  %i = alloca i32, align 4
  %flag = alloca i32, align 4
  store float %val, float* %1, align 4
  %2 = load float* %1, align 4
  %3 = fdiv float %2, 1.000000e+01
  store float %3, float* %x, align 4
  store double 1.000000e-05, double* %min_tol, align 8
  store i32 0, i32* %flag, align 4
  %4 = load float* %1, align 4
  %5 = fcmp oeq float %4, 0.000000e+00
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store float 0.000000e+00, float* %x, align 4
  br label %49

; <label>:7                                       ; preds = %0
  store i32 1, i32* %i, align 4
  br label %8

; <label>:8                                       ; preds = %45, %7
  %9 = load i32* %i, align 4
  %10 = icmp slt i32 %9, 20
  br i1 %10, label %11, label %48

; <label>:11                                      ; preds = %8
  %12 = load i32* %flag, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %43, label %14

; <label>:14                                      ; preds = %11
  %15 = load float* %1, align 4
  %16 = load float* %x, align 4
  %17 = load float* %x, align 4
  %18 = fmul float %16, %17
  %19 = fsub float %15, %18
  %20 = fpext float %19 to double
  %21 = load float* %x, align 4
  %22 = fpext float %21 to double
  %23 = fmul double 2.000000e+00, %22
  %24 = fdiv double %20, %23
  %25 = fptrunc double %24 to float
  store float %25, float* %dx, align 4
  %26 = load float* %x, align 4
  %27 = load float* %dx, align 4
  %28 = fadd float %26, %27
  store float %28, float* %x, align 4
  %29 = load float* %1, align 4
  %30 = load float* %x, align 4
  %31 = load float* %x, align 4
  %32 = fmul float %30, %31
  %33 = fsub float %29, %32
  %34 = fpext float %33 to double
  store double %34, double* %diff, align 8
  %35 = load double* %diff, align 8
  %36 = fptrunc double %35 to float
  %37 = call float @fabs(float %36)
  %38 = fpext float %37 to double
  %39 = load double* %min_tol, align 8
  %40 = fcmp ole double %38, %39
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %14
  store i32 1, i32* %flag, align 4
  br label %42

; <label>:42                                      ; preds = %41, %14
  br label %44

; <label>:43                                      ; preds = %11
  br label %44

; <label>:44                                      ; preds = %43, %42
  br label %45

; <label>:45                                      ; preds = %44
  %46 = load i32* %i, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %i, align 4
  br label %8

; <label>:48                                      ; preds = %8
  br label %49

; <label>:49                                      ; preds = %48, %6
  %50 = load float* %x, align 4
  ret float %50
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %sqrt = alloca float, align 4
  store i32 0, i32* %1
  %2 = call float @sqrtfcn(float 0x405EC7DF40000000)
  store float %2, float* %sqrt, align 4
  %3 = load float* %sqrt, align 4
  %4 = fpext float %3 to double
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0), double %4)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}

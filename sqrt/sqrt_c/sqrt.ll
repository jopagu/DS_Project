; ModuleID = 'sqrt.c'
source_filename = "sqrt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"sqrt(123.123) = %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @myfabs(float) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %3, align 4
  %4 = load float, float* %3, align 4
  %5 = fcmp olt float %4, 0.000000e+00
  br i1 %5, label %6, label %9

; <label>:6:                                      ; preds = %1
  %7 = load float, float* %3, align 4
  %8 = fsub float -0.000000e+00, %7
  store float %8, float* %2, align 4
  br label %11

; <label>:9:                                      ; preds = %1
  %10 = load float, float* %3, align 4
  store float %10, float* %2, align 4
  br label %11

; <label>:11:                                     ; preds = %9, %6
  %12 = load float, float* %2, align 4
  ret float %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @sqrtfcn(float) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float %0, float* %2, align 4
  %9 = load float, float* %2, align 4
  %10 = fdiv float %9, 1.000000e+01
  store float %10, float* %3, align 4
  store double 1.000000e-05, double* %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load float, float* %2, align 4
  %12 = fcmp oeq float %11, 0.000000e+00
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %1
  store float 0.000000e+00, float* %3, align 4
  br label %56

; <label>:14:                                     ; preds = %1
  store i32 1, i32* %7, align 4
  br label %15

; <label>:15:                                     ; preds = %52, %14
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 20
  br i1 %17, label %18, label %55

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %50, label %21

; <label>:21:                                     ; preds = %18
  %22 = load float, float* %2, align 4
  %23 = load float, float* %3, align 4
  %24 = load float, float* %3, align 4
  %25 = fmul float %23, %24
  %26 = fsub float %22, %25
  %27 = fpext float %26 to double
  %28 = load float, float* %3, align 4
  %29 = fpext float %28 to double
  %30 = fmul double 2.000000e+00, %29
  %31 = fdiv double %27, %30
  %32 = fptrunc double %31 to float
  store float %32, float* %4, align 4
  %33 = load float, float* %3, align 4
  %34 = load float, float* %4, align 4
  %35 = fadd float %33, %34
  store float %35, float* %3, align 4
  %36 = load float, float* %2, align 4
  %37 = load float, float* %3, align 4
  %38 = load float, float* %3, align 4
  %39 = fmul float %37, %38
  %40 = fsub float %36, %39
  %41 = fpext float %40 to double
  store double %41, double* %5, align 8
  %42 = load double, double* %5, align 8
  %43 = fptrunc double %42 to float
  %44 = call float @myfabs(float %43)
  %45 = fpext float %44 to double
  %46 = load double, double* %6, align 8
  %47 = fcmp ole double %45, %46
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %21
  store i32 1, i32* %8, align 4
  br label %49

; <label>:49:                                     ; preds = %48, %21
  br label %51

; <label>:50:                                     ; preds = %18
  br label %51

; <label>:51:                                     ; preds = %50, %49
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %15

; <label>:55:                                     ; preds = %15
  br label %56

; <label>:56:                                     ; preds = %55, %13
  %57 = load float, float* %3, align 4
  ret float %57
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  store i32 0, i32* %1, align 4
  %3 = call float @sqrtfcn(float 0x405EC7DF40000000)
  store float %3, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = fpext float %4 to double
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), double %5)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.0-3~ubuntu16.04.1 (tags/RELEASE_800/final)"}

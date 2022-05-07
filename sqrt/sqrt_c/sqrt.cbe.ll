; ModuleID = 'sqrt.cbe.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l_array_20_uint8_t = type { [20 x i8] }

@_OC_str = internal global %struct.l_array_20_uint8_t { [20 x i8] c"sqrt(123.123) = %f\0A\00" }, align 1

; Function Attrs: noinline nounwind uwtable
define float @myfabs(float %_1) #0 {
  %1 = alloca float, align 4
  %r.i = alloca float, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca float, align 4
  %_2 = alloca float, align 4
  %_3 = alloca float, align 4
  %_4 = alloca float, align 4
  %_5 = alloca float, align 4
  %_6 = alloca float, align 4
  %_7 = alloca float, align 4
  store float %_1, float* %4, align 4
  %5 = load float* %4, align 4
  store float %5, float* %_3, align 4
  %6 = load float* %_3, align 4
  store float %6, float* %_4, align 4
  %7 = load float* %_4, align 4
  %8 = fpext float %7 to double
  store double %8, double* %2, align 8
  store double 0.000000e+00, double* %3, align 8
  %9 = load double* %2, align 8
  %10 = load double* %3, align 8
  %11 = fcmp olt double %9, %10
  %12 = zext i1 %11 to i32
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  br label %17

; <label>:16                                      ; preds = %0
  br label %23

; <label>:17                                      ; preds = %15
  %18 = load float* %_3, align 4
  store float %18, float* %_5, align 4
  %19 = load float* %_5, align 4
  store float %19, float* %1, align 4
  %20 = load float* %1, align 4
  %21 = fsub float -0.000000e+00, %20
  store float %21, float* %r.i, align 4
  %22 = load float* %r.i, align 4
  store float %22, float* %_2, align 4
  br label %26

; <label>:23                                      ; preds = %16
  %24 = load float* %_3, align 4
  store float %24, float* %_6, align 4
  %25 = load float* %_6, align 4
  store float %25, float* %_2, align 4
  br label %26

; <label>:26                                      ; preds = %23, %17
  %27 = load float* %_2, align 4
  store float %27, float* %_7, align 4
  %28 = load float* %_7, align 4
  ret float %28
}

; Function Attrs: noinline nounwind uwtable
define float @sqrtfcn(float %_11) #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %r.i6 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %r.i5 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %r.i4 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %r.i3 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %r.i2 = alloca float, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %r.i1 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %r.i = alloca float, align 4
  %19 = alloca float, align 4
  %_12 = alloca float, align 4
  %_13 = alloca float, align 4
  %_14 = alloca float, align 4
  %_15 = alloca double, align 8
  %_16 = alloca double, align 8
  %_17 = alloca i32, align 4
  %_18 = alloca i32, align 4
  %_19 = alloca float, align 4
  %_20 = alloca float, align 4
  %_21 = alloca i32, align 4
  %_22 = alloca i32, align 4
  %_23 = alloca float, align 4
  %_24 = alloca float, align 4
  %_25 = alloca float, align 4
  %_26 = alloca float, align 4
  %_27 = alloca float, align 4
  %_28 = alloca float, align 4
  %_29 = alloca float, align 4
  %_30 = alloca float, align 4
  %_31 = alloca float, align 4
  %_32 = alloca double, align 8
  %_33 = alloca float, align 4
  %_34 = alloca double, align 8
  %_35 = alloca i32, align 4
  %_36 = alloca float, align 4
  store float %_11, float* %19, align 4
  %20 = load float* %19, align 4
  store float %20, float* %_12, align 4
  %21 = load float* %_12, align 4
  store float %21, float* %_19, align 4
  %22 = load float* %_19, align 4
  store float %22, float* %17, align 4
  store float 1.000000e+01, float* %18, align 4
  %23 = load float* %17, align 4
  %24 = load float* %18, align 4
  %25 = fdiv float %23, %24
  store float %25, float* %r.i, align 4
  %26 = load float* %r.i, align 4
  store float %26, float* %_13, align 4
  store double 1.000000e-05, double* %_16, align 8
  store i32 0, i32* %_18, align 4
  %27 = load float* %_12, align 4
  store float %27, float* %_20, align 4
  %28 = load float* %_20, align 4
  %29 = fpext float %28 to double
  store double %29, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  %30 = load double* %11, align 8
  %31 = load double* %12, align 8
  %32 = fcmp oeq double %30, %31
  %33 = zext i1 %32 to i32
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %0
  br label %38

; <label>:37                                      ; preds = %0
  br label %39

; <label>:38                                      ; preds = %36
  store float 0.000000e+00, float* %_13, align 4
  br label %135

; <label>:39                                      ; preds = %37
  store i32 1, i32* %_17, align 4
  br label %42
                                                  ; No predecessors!
  br label %41

; <label>:41                                      ; preds = %132, %40
  br label %42

; <label>:42                                      ; preds = %125, %41, %39
  %43 = load i32* %_17, align 4
  store i32 %43, i32* %_21, align 4
  %44 = load i32* %_21, align 4
  %45 = icmp slt i32 %44, 20
  %46 = zext i1 %45 to i32
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %42
  br label %51

; <label>:50                                      ; preds = %42
  br label %134

; <label>:51                                      ; preds = %49
  %52 = load i32* %_18, align 4
  store i32 %52, i32* %_22, align 4
  %53 = load i32* %_22, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %51
  br label %123

; <label>:59                                      ; preds = %51
  br label %60

; <label>:60                                      ; preds = %59
  %61 = load float* %_12, align 4
  store float %61, float* %_23, align 4
  %62 = load float* %_13, align 4
  store float %62, float* %_24, align 4
  %63 = load float* %_13, align 4
  store float %63, float* %_25, align 4
  %64 = load float* %_13, align 4
  store float %64, float* %_26, align 4
  %65 = load float* %_23, align 4
  %66 = load float* %_24, align 4
  %67 = load float* %_25, align 4
  store float %66, float* %1, align 4
  store float %67, float* %2, align 4
  %68 = load float* %1, align 4
  %69 = load float* %2, align 4
  %70 = fmul float %68, %69
  store float %70, float* %r.i6, align 4
  %71 = load float* %r.i6, align 4
  store float %65, float* %3, align 4
  store float %71, float* %4, align 4
  %72 = load float* %3, align 4
  %73 = load float* %4, align 4
  %74 = fsub float %72, %73
  store float %74, float* %r.i5, align 4
  %75 = load float* %r.i5, align 4
  %76 = fpext float %75 to double
  %77 = load float* %_26, align 4
  %78 = fpext float %77 to double
  %79 = fmul double 2.000000e+00, %78
  %80 = fdiv double %76, %79
  %81 = fptrunc double %80 to float
  store float %81, float* %_14, align 4
  %82 = load float* %_13, align 4
  store float %82, float* %_27, align 4
  %83 = load float* %_14, align 4
  store float %83, float* %_28, align 4
  %84 = load float* %_27, align 4
  %85 = load float* %_28, align 4
  store float %84, float* %5, align 4
  store float %85, float* %6, align 4
  %86 = load float* %5, align 4
  %87 = load float* %6, align 4
  %88 = fadd float %86, %87
  store float %88, float* %r.i4, align 4
  %89 = load float* %r.i4, align 4
  store float %89, float* %_13, align 4
  %90 = load float* %_12, align 4
  store float %90, float* %_29, align 4
  %91 = load float* %_13, align 4
  store float %91, float* %_30, align 4
  %92 = load float* %_13, align 4
  store float %92, float* %_31, align 4
  %93 = load float* %_29, align 4
  %94 = load float* %_30, align 4
  %95 = load float* %_31, align 4
  store float %94, float* %7, align 4
  store float %95, float* %8, align 4
  %96 = load float* %7, align 4
  %97 = load float* %8, align 4
  %98 = fmul float %96, %97
  store float %98, float* %r.i3, align 4
  %99 = load float* %r.i3, align 4
  store float %93, float* %9, align 4
  store float %99, float* %10, align 4
  %100 = load float* %9, align 4
  %101 = load float* %10, align 4
  %102 = fsub float %100, %101
  store float %102, float* %r.i2, align 4
  %103 = load float* %r.i2, align 4
  %104 = fpext float %103 to double
  store double %104, double* %_15, align 8
  %105 = load double* %_15, align 8
  store double %105, double* %_32, align 8
  %106 = load double* %_32, align 8
  %107 = fptrunc double %106 to float
  %108 = call float @myfabs(float %107) #2
  store float %108, float* %_33, align 4
  %109 = load double* %_16, align 8
  store double %109, double* %_34, align 8
  %110 = load float* %_33, align 4
  %111 = fpext float %110 to double
  %112 = load double* %_34, align 8
  store double %111, double* %13, align 8
  store double %112, double* %14, align 8
  %113 = load double* %13, align 8
  %114 = load double* %14, align 8
  %115 = fcmp ole double %113, %114
  %116 = zext i1 %115 to i32
  %117 = and i32 %116, 1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

; <label>:119                                     ; preds = %60
  br label %121

; <label>:120                                     ; preds = %60
  br label %122

; <label>:121                                     ; preds = %119
  store i32 1, i32* %_18, align 4
  br label %122

; <label>:122                                     ; preds = %121, %120
  br label %124

; <label>:123                                     ; preds = %58
  br label %124

; <label>:124                                     ; preds = %123, %122
  br label %125

; <label>:125                                     ; preds = %124
  %126 = load i32* %_17, align 4
  store i32 %126, i32* %_35, align 4
  %127 = load i32* %_35, align 4
  store i32 %127, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %128 = load i32* %15, align 4
  %129 = load i32* %16, align 4
  %130 = add i32 %128, %129
  store i32 %130, i32* %r.i1, align 4
  %131 = load i32* %r.i1, align 4
  store i32 %131, i32* %_17, align 4
  br label %42
                                                  ; No predecessors!
  br i1 true, label %41, label %133

; <label>:133                                     ; preds = %132
  br label %134

; <label>:134                                     ; preds = %133, %50
  br label %135

; <label>:135                                     ; preds = %134, %38
  %136 = load float* %_13, align 4
  store float %136, float* %_36, align 4
  %137 = load float* %_36, align 4
  ret float %137
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %_49 = alloca i32, align 4
  %_50 = alloca float, align 4
  %_51 = alloca float, align 4
  %_52 = alloca float, align 4
  %_53 = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %_49, align 4
  %2 = call float @sqrtfcn(float 0x405EC7DF40000000) #2
  store float %2, float* %_51, align 4
  %3 = load float* %_51, align 4
  store float %3, float* %_50, align 4
  %4 = load float* %_50, align 4
  store float %4, float* %_52, align 4
  %5 = load float* %_52, align 4
  %6 = fpext float %5 to double
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds (%struct.l_array_20_uint8_t* @_OC_str, i32 0, i32 0, i64 0), double %6)
  store i32 %7, i32* %_53, align 4
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}

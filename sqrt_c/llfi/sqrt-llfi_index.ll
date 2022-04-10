; ModuleID = '/home/llfi/tutorial/LLFI/tutorials/ISSRE19/1-sqrt/sqrt.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"sqrt(123.123) = %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define float @fabs(float %x) #0 {
  %1 = alloca float, align 4, !llfi_index !1
  %2 = alloca float, align 4, !llfi_index !2
  store float %x, float* %2, align 4, !llfi_index !3
  %3 = load float* %2, align 4, !llfi_index !4
  %4 = fcmp olt float %3, 0.000000e+00, !llfi_index !5
  br i1 %4, label %5, label %8, !llfi_index !6

; <label>:5                                       ; preds = %0
  %6 = load float* %2, align 4, !llfi_index !7
  %7 = fsub float -0.000000e+00, %6, !llfi_index !8
  store float %7, float* %1, !llfi_index !9
  br label %10, !llfi_index !10

; <label>:8                                       ; preds = %0
  %9 = load float* %2, align 4, !llfi_index !11
  store float %9, float* %1, !llfi_index !12
  br label %10, !llfi_index !13

; <label>:10                                      ; preds = %8, %5
  %11 = load float* %1, !llfi_index !14
  ret float %11, !llfi_index !15
}

; Function Attrs: nounwind uwtable
define float @sqrtfcn(float %val) #0 {
  %1 = alloca float, align 4, !llfi_index !16
  %x = alloca float, align 4, !llfi_index !17
  %dx = alloca float, align 4, !llfi_index !18
  %diff = alloca double, align 8, !llfi_index !19
  %min_tol = alloca double, align 8, !llfi_index !20
  %i = alloca i32, align 4, !llfi_index !21
  %flag = alloca i32, align 4, !llfi_index !22
  store float %val, float* %1, align 4, !llfi_index !23
  %2 = load float* %1, align 4, !llfi_index !24
  %3 = fdiv float %2, 1.000000e+01, !llfi_index !25
  store float %3, float* %x, align 4, !llfi_index !26
  store double 1.000000e-05, double* %min_tol, align 8, !llfi_index !27
  store i32 0, i32* %flag, align 4, !llfi_index !28
  %4 = load float* %1, align 4, !llfi_index !29
  %5 = fcmp oeq float %4, 0.000000e+00, !llfi_index !30
  br i1 %5, label %6, label %7, !llfi_index !31

; <label>:6                                       ; preds = %0
  store float 0.000000e+00, float* %x, align 4, !llfi_index !32
  br label %49, !llfi_index !33

; <label>:7                                       ; preds = %0
  store i32 1, i32* %i, align 4, !llfi_index !34
  br label %8, !llfi_index !35

; <label>:8                                       ; preds = %45, %7
  %9 = load i32* %i, align 4, !llfi_index !36
  %10 = icmp slt i32 %9, 20, !llfi_index !37
  br i1 %10, label %11, label %48, !llfi_index !38

; <label>:11                                      ; preds = %8
  %12 = load i32* %flag, align 4, !llfi_index !39
  %13 = icmp ne i32 %12, 0, !llfi_index !40
  br i1 %13, label %43, label %14, !llfi_index !41

; <label>:14                                      ; preds = %11
  %15 = load float* %1, align 4, !llfi_index !42
  %16 = load float* %x, align 4, !llfi_index !43
  %17 = load float* %x, align 4, !llfi_index !44
  %18 = fmul float %16, %17, !llfi_index !45
  %19 = fsub float %15, %18, !llfi_index !46
  %20 = fpext float %19 to double, !llfi_index !47
  %21 = load float* %x, align 4, !llfi_index !48
  %22 = fpext float %21 to double, !llfi_index !49
  %23 = fmul double 2.000000e+00, %22, !llfi_index !50
  %24 = fdiv double %20, %23, !llfi_index !51
  %25 = fptrunc double %24 to float, !llfi_index !52
  store float %25, float* %dx, align 4, !llfi_index !53
  %26 = load float* %x, align 4, !llfi_index !54
  %27 = load float* %dx, align 4, !llfi_index !55
  %28 = fadd float %26, %27, !llfi_index !56
  store float %28, float* %x, align 4, !llfi_index !57
  %29 = load float* %1, align 4, !llfi_index !58
  %30 = load float* %x, align 4, !llfi_index !59
  %31 = load float* %x, align 4, !llfi_index !60
  %32 = fmul float %30, %31, !llfi_index !61
  %33 = fsub float %29, %32, !llfi_index !62
  %34 = fpext float %33 to double, !llfi_index !63
  store double %34, double* %diff, align 8, !llfi_index !64
  %35 = load double* %diff, align 8, !llfi_index !65
  %36 = fptrunc double %35 to float, !llfi_index !66
  %37 = call float @fabs(float %36), !llfi_index !67
  %38 = fpext float %37 to double, !llfi_index !68
  %39 = load double* %min_tol, align 8, !llfi_index !69
  %40 = fcmp ole double %38, %39, !llfi_index !70
  br i1 %40, label %41, label %42, !llfi_index !71

; <label>:41                                      ; preds = %14
  store i32 1, i32* %flag, align 4, !llfi_index !72
  br label %42, !llfi_index !73

; <label>:42                                      ; preds = %41, %14
  br label %44, !llfi_index !74

; <label>:43                                      ; preds = %11
  br label %44, !llfi_index !75

; <label>:44                                      ; preds = %43, %42
  br label %45, !llfi_index !76

; <label>:45                                      ; preds = %44
  %46 = load i32* %i, align 4, !llfi_index !77
  %47 = add nsw i32 %46, 1, !llfi_index !78
  store i32 %47, i32* %i, align 4, !llfi_index !79
  br label %8, !llfi_index !80

; <label>:48                                      ; preds = %8
  br label %49, !llfi_index !81

; <label>:49                                      ; preds = %48, %6
  %50 = load float* %x, align 4, !llfi_index !82
  ret float %50, !llfi_index !83
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4, !llfi_index !84
  %sqrt = alloca float, align 4, !llfi_index !85
  store i32 0, i32* %1, !llfi_index !86
  %2 = call float @sqrtfcn(float 0x405EC7DF40000000), !llfi_index !87
  store float %2, float* %sqrt, align 4, !llfi_index !88
  %3 = load float* %sqrt, align 4, !llfi_index !89
  %4 = fpext float %3 to double, !llfi_index !90
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0), double %4), !llfi_index !91
  ret i32 0, !llfi_index !92
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!1 = metadata !{i64 1}
!2 = metadata !{i64 2}
!3 = metadata !{i64 3}
!4 = metadata !{i64 4}
!5 = metadata !{i64 5}
!6 = metadata !{i64 6}
!7 = metadata !{i64 7}
!8 = metadata !{i64 8}
!9 = metadata !{i64 9}
!10 = metadata !{i64 10}
!11 = metadata !{i64 11}
!12 = metadata !{i64 12}
!13 = metadata !{i64 13}
!14 = metadata !{i64 14}
!15 = metadata !{i64 15}
!16 = metadata !{i64 16}
!17 = metadata !{i64 17}
!18 = metadata !{i64 18}
!19 = metadata !{i64 19}
!20 = metadata !{i64 20}
!21 = metadata !{i64 21}
!22 = metadata !{i64 22}
!23 = metadata !{i64 23}
!24 = metadata !{i64 24}
!25 = metadata !{i64 25}
!26 = metadata !{i64 26}
!27 = metadata !{i64 27}
!28 = metadata !{i64 28}
!29 = metadata !{i64 29}
!30 = metadata !{i64 30}
!31 = metadata !{i64 31}
!32 = metadata !{i64 32}
!33 = metadata !{i64 33}
!34 = metadata !{i64 34}
!35 = metadata !{i64 35}
!36 = metadata !{i64 36}
!37 = metadata !{i64 37}
!38 = metadata !{i64 38}
!39 = metadata !{i64 39}
!40 = metadata !{i64 40}
!41 = metadata !{i64 41}
!42 = metadata !{i64 42}
!43 = metadata !{i64 43}
!44 = metadata !{i64 44}
!45 = metadata !{i64 45}
!46 = metadata !{i64 46}
!47 = metadata !{i64 47}
!48 = metadata !{i64 48}
!49 = metadata !{i64 49}
!50 = metadata !{i64 50}
!51 = metadata !{i64 51}
!52 = metadata !{i64 52}
!53 = metadata !{i64 53}
!54 = metadata !{i64 54}
!55 = metadata !{i64 55}
!56 = metadata !{i64 56}
!57 = metadata !{i64 57}
!58 = metadata !{i64 58}
!59 = metadata !{i64 59}
!60 = metadata !{i64 60}
!61 = metadata !{i64 61}
!62 = metadata !{i64 62}
!63 = metadata !{i64 63}
!64 = metadata !{i64 64}
!65 = metadata !{i64 65}
!66 = metadata !{i64 66}
!67 = metadata !{i64 67}
!68 = metadata !{i64 68}
!69 = metadata !{i64 69}
!70 = metadata !{i64 70}
!71 = metadata !{i64 71}
!72 = metadata !{i64 72}
!73 = metadata !{i64 73}
!74 = metadata !{i64 74}
!75 = metadata !{i64 75}
!76 = metadata !{i64 76}
!77 = metadata !{i64 77}
!78 = metadata !{i64 78}
!79 = metadata !{i64 79}
!80 = metadata !{i64 80}
!81 = metadata !{i64 81}
!82 = metadata !{i64 82}
!83 = metadata !{i64 83}
!84 = metadata !{i64 84}
!85 = metadata !{i64 85}
!86 = metadata !{i64 86}
!87 = metadata !{i64 87}
!88 = metadata !{i64 88}
!89 = metadata !{i64 89}
!90 = metadata !{i64 90}
!91 = metadata !{i64 91}
!92 = metadata !{i64 92}

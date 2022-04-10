; ModuleID = '/home/llfi/tutorial/LLFI/tutorials/ISSRE19/1-sqrt/llfi/sqrt-llfi_index.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"sqrt(123.123) = %f\0A\00", align 1
@alloca_namestr = internal constant [7 x i8] c"alloca\00"
@load_namestr = internal constant [5 x i8] c"load\00"
@fcmp_namestr = internal constant [5 x i8] c"fcmp\00"
@fadd_namestr = internal constant [5 x i8] c"fadd\00"
@fmul_namestr = internal constant [5 x i8] c"fmul\00"
@fsub_namestr = internal constant [5 x i8] c"fsub\00"
@fdiv_namestr = internal constant [5 x i8] c"fdiv\00"
@icmp_namestr = internal constant [5 x i8] c"icmp\00"
@fpext_namestr = internal constant [6 x i8] c"fpext\00"
@fptrunc_namestr = internal constant [8 x i8] c"fptrunc\00"
@call_namestr = internal constant [5 x i8] c"call\00"
@add_namestr = internal constant [4 x i8] c"add\00"

; Function Attrs: nounwind uwtable
define float @fabs(float %x) #0 {
  %1 = alloca float, align 4, !llfi_index !1
  %fi = call float* @injectFault0(i64 1, float* %1, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %2 = alloca float, align 4, !llfi_index !3
  %fi1 = call float* @injectFault0(i64 2, float* %2, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !2
  store float %x, float* %fi1, align 4, !llfi_index !4
  %3 = load float* %fi1, align 4, !llfi_index !5
  %fi2 = call float @injectFault1(i64 4, float %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %4 = fcmp olt float %fi2, 0.000000e+00, !llfi_index !6
  %fi3 = call i1 @injectFault2(i64 5, i1 %4, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !2
  br i1 %fi3, label %5, label %8, !llfi_index !7

; <label>:5                                       ; preds = %0
  %6 = load float* %fi1, align 4, !llfi_index !8
  %fi4 = call float @injectFault1(i64 7, float %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %7 = fsub float -0.000000e+00, %fi4, !llfi_index !9
  %fi5 = call float @injectFault1(i64 8, float %7, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !2
  store float %fi5, float* %fi, !llfi_index !10
  br label %10, !llfi_index !11

; <label>:8                                       ; preds = %0
  %9 = load float* %fi1, align 4, !llfi_index !12
  %fi6 = call float @injectFault1(i64 11, float %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  store float %fi6, float* %fi, !llfi_index !13
  br label %10, !llfi_index !14

; <label>:10                                      ; preds = %8, %5
  %11 = load float* %fi, !llfi_index !15
  %fi7 = call float @injectFault1(i64 14, float %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  ret float %fi7, !llfi_index !16
}

; Function Attrs: nounwind uwtable
define float @sqrtfcn(float %val) #0 {
  %1 = alloca float, align 4, !llfi_index !17
  %fi7 = call float* @injectFault0(i64 16, float* %1, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %x = alloca float, align 4, !llfi_index !18
  %fi8 = call float* @injectFault0(i64 17, float* %x, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %dx = alloca float, align 4, !llfi_index !19
  %fi9 = call float* @injectFault0(i64 18, float* %dx, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %diff = alloca double, align 8, !llfi_index !20
  %fi10 = call double* @injectFault3(i64 19, double* %diff, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %min_tol = alloca double, align 8, !llfi_index !21
  %fi11 = call double* @injectFault3(i64 20, double* %min_tol, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %i = alloca i32, align 4, !llfi_index !22
  %fi12 = call i32* @injectFault4(i64 21, i32* %i, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %flag = alloca i32, align 4, !llfi_index !23
  %fi13 = call i32* @injectFault4(i64 22, i32* %flag, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !2
  store float %val, float* %fi7, align 4, !llfi_index !24
  %2 = load float* %fi7, align 4, !llfi_index !25
  %fi14 = call float @injectFault1(i64 24, float %2, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %3 = fdiv float %fi14, 1.000000e+01, !llfi_index !26
  %fi15 = call float @injectFault1(i64 25, float %3, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !2
  store float %fi15, float* %fi8, align 4, !llfi_index !27
  store double 1.000000e-05, double* %fi11, align 8, !llfi_index !28
  store i32 0, i32* %fi13, align 4, !llfi_index !29
  %4 = load float* %fi7, align 4, !llfi_index !30
  %fi16 = call float @injectFault1(i64 29, float %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %5 = fcmp oeq float %fi16, 0.000000e+00, !llfi_index !31
  %fi17 = call i1 @injectFault2(i64 30, i1 %5, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !2
  br i1 %fi17, label %6, label %7, !llfi_index !32

; <label>:6                                       ; preds = %0
  store float 0.000000e+00, float* %fi8, align 4, !llfi_index !33
  br label %49, !llfi_index !34

; <label>:7                                       ; preds = %0
  store i32 1, i32* %fi12, align 4, !llfi_index !35
  br label %8, !llfi_index !36

; <label>:8                                       ; preds = %45, %7
  %9 = load i32* %fi12, align 4, !llfi_index !37
  %fi19 = call i32 @injectFault5(i64 36, i32 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %10 = icmp slt i32 %fi19, 20, !llfi_index !38
  %fi20 = call i1 @injectFault2(i64 37, i1 %10, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !2
  br i1 %fi20, label %11, label %48, !llfi_index !39

; <label>:11                                      ; preds = %8
  %12 = load i32* %fi13, align 4, !llfi_index !40
  %fi21 = call i32 @injectFault5(i64 39, i32 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %13 = icmp ne i32 %fi21, 0, !llfi_index !41
  %fi22 = call i1 @injectFault2(i64 40, i1 %13, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !2
  br i1 %fi22, label %43, label %14, !llfi_index !42

; <label>:14                                      ; preds = %11
  %15 = load float* %fi7, align 4, !llfi_index !43
  %fi23 = call float @injectFault1(i64 42, float %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %16 = load float* %fi8, align 4, !llfi_index !44
  %fi24 = call float @injectFault1(i64 43, float %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %17 = load float* %fi8, align 4, !llfi_index !45
  %fi18 = call float @injectFault1(i64 44, float %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %18 = fmul float %fi24, %fi18, !llfi_index !46
  %fi27 = call float @injectFault1(i64 45, float %18, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %19 = fsub float %fi23, %fi27, !llfi_index !47
  %fi28 = call float @injectFault1(i64 46, float %19, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %20 = fpext float %fi28 to double, !llfi_index !48
  %fi29 = call double @injectFault6(i64 47, double %20, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %21 = load float* %fi8, align 4, !llfi_index !49
  %fi30 = call float @injectFault1(i64 48, float %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %22 = fpext float %fi30 to double, !llfi_index !50
  %fi31 = call double @injectFault6(i64 49, double %22, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %23 = fmul double 2.000000e+00, %fi31, !llfi_index !51
  %fi32 = call double @injectFault6(i64 50, double %23, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %24 = fdiv double %fi29, %fi32, !llfi_index !52
  %fi33 = call double @injectFault6(i64 51, double %24, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %25 = fptrunc double %fi33 to float, !llfi_index !53
  %fi34 = call float @injectFault1(i64 52, float %25, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !2
  store float %fi34, float* %fi9, align 4, !llfi_index !54
  %26 = load float* %fi8, align 4, !llfi_index !55
  %fi = call float @injectFault1(i64 54, float %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %27 = load float* %fi9, align 4, !llfi_index !56
  %fi1 = call float @injectFault1(i64 55, float %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %28 = fadd float %fi, %fi1, !llfi_index !57
  %fi2 = call float @injectFault1(i64 56, float %28, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !2
  store float %fi2, float* %fi8, align 4, !llfi_index !58
  %29 = load float* %fi7, align 4, !llfi_index !59
  %fi3 = call float @injectFault1(i64 58, float %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %30 = load float* %fi8, align 4, !llfi_index !60
  %fi4 = call float @injectFault1(i64 59, float %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %31 = load float* %fi8, align 4, !llfi_index !61
  %fi5 = call float @injectFault1(i64 60, float %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %32 = fmul float %fi4, %fi5, !llfi_index !62
  %fi6 = call float @injectFault1(i64 61, float %32, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %33 = fsub float %fi3, %fi6, !llfi_index !63
  %fi25 = call float @injectFault1(i64 62, float %33, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %34 = fpext float %fi25 to double, !llfi_index !64
  %fi26 = call double @injectFault6(i64 63, double %34, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !2
  store double %fi26, double* %fi10, align 8, !llfi_index !65
  %35 = load double* %fi10, align 8, !llfi_index !66
  %fi35 = call double @injectFault6(i64 65, double %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %36 = fptrunc double %fi35 to float, !llfi_index !67
  %fi36 = call float @injectFault1(i64 66, float %36, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %37 = call float @fabs(float %fi36), !llfi_index !68
  %fi37 = call float @injectFault1(i64 67, float %37, i32 49, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @call_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %38 = fpext float %fi37 to double, !llfi_index !69
  %fi38 = call double @injectFault6(i64 68, double %38, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %39 = load double* %fi11, align 8, !llfi_index !70
  %fi39 = call double @injectFault6(i64 69, double %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %40 = fcmp ole double %fi38, %fi39, !llfi_index !71
  %fi40 = call i1 @injectFault2(i64 70, i1 %40, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !2
  br i1 %fi40, label %41, label %42, !llfi_index !72

; <label>:41                                      ; preds = %14
  store i32 1, i32* %fi13, align 4, !llfi_index !73
  br label %42, !llfi_index !74

; <label>:42                                      ; preds = %41, %14
  br label %44, !llfi_index !75

; <label>:43                                      ; preds = %11
  br label %44, !llfi_index !76

; <label>:44                                      ; preds = %43, %42
  br label %45, !llfi_index !77

; <label>:45                                      ; preds = %44
  %46 = load i32* %fi12, align 4, !llfi_index !78
  %fi41 = call i32 @injectFault5(i64 77, i32 %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %47 = add nsw i32 %fi41, 1, !llfi_index !79
  %fi42 = call i32 @injectFault5(i64 78, i32 %47, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !2
  store i32 %fi42, i32* %fi12, align 4, !llfi_index !80
  br label %8, !llfi_index !81

; <label>:48                                      ; preds = %8
  br label %49, !llfi_index !82

; <label>:49                                      ; preds = %48, %6
  %50 = load float* %fi8, align 4, !llfi_index !83
  %fi43 = call float @injectFault1(i64 82, float %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  ret float %fi43, !llfi_index !84
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  call void @initInjections()
  %1 = alloca i32, align 4, !llfi_index !85
  %fi = call i32* @injectFault4(i64 84, i32* %1, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %sqrt = alloca float, align 4, !llfi_index !86
  %fi1 = call float* @injectFault0(i64 85, float* %sqrt, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !2
  store i32 0, i32* %fi, !llfi_index !87
  %2 = call float @sqrtfcn(float 0x405EC7DF40000000), !llfi_index !88
  %fi2 = call float @injectFault1(i64 87, float %2, i32 49, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @call_namestr, i32 0, i32 0)), !llfi_injectfault !2
  store float %fi2, float* %fi1, align 4, !llfi_index !89
  %3 = load float* %fi1, align 4, !llfi_index !90
  %fi3 = call float @injectFault1(i64 89, float %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %4 = fpext float %fi3 to double, !llfi_index !91
  %fi4 = call double @injectFault6(i64 90, double %4, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !2
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0), double %fi4), !llfi_index !92
  %fi5 = call i32 @injectFault5(i64 91, i32 %5, i32 49, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @call_namestr, i32 0, i32 0)), !llfi_injectfault !2
  call void @postInjections()
  ret i32 0, !llfi_index !93
}

declare i32 @printf(i8*, ...) #1

define float* @injectFault0(i64, float*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca float*
  store float* %1, float** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast float** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load float** %tmploc
  ret float* %updateval
}

define float @injectFault1(i64, float, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca float
  store float %1, float* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast float* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 32, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load float* %tmploc
  ret float %updateval
}

define i1 @injectFault2(i64, i1, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i1
  store i1 %1, i1* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i1* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 1, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i1* %tmploc
  ret i1 %updateval
}

define double* @injectFault3(i64, double*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca double*
  store double* %1, double** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast double** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load double** %tmploc
  ret double* %updateval
}

define i32* @injectFault4(i64, i32*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i32*
  store i32* %1, i32** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i32** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i32** %tmploc
  ret i32* %updateval
}

define i32 @injectFault5(i64, i32, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i32
  store i32 %1, i32* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i32* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 32, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i32* %tmploc
  ret i32 %updateval
}

define double @injectFault6(i64, double, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca double
  store double %1, double* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast double* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load double* %tmploc
  ret double %updateval
}

declare void @initInjections()

declare void @postInjections()

declare i1 @preFunc(i64, i32, i32, i32)

declare void @injectFunc(i64, i32, i8*, i32, i32, i8*)

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!1 = metadata !{i64 1}
!2 = metadata !{metadata !"after"}
!3 = metadata !{i64 2}
!4 = metadata !{i64 3}
!5 = metadata !{i64 4}
!6 = metadata !{i64 5}
!7 = metadata !{i64 6}
!8 = metadata !{i64 7}
!9 = metadata !{i64 8}
!10 = metadata !{i64 9}
!11 = metadata !{i64 10}
!12 = metadata !{i64 11}
!13 = metadata !{i64 12}
!14 = metadata !{i64 13}
!15 = metadata !{i64 14}
!16 = metadata !{i64 15}
!17 = metadata !{i64 16}
!18 = metadata !{i64 17}
!19 = metadata !{i64 18}
!20 = metadata !{i64 19}
!21 = metadata !{i64 20}
!22 = metadata !{i64 21}
!23 = metadata !{i64 22}
!24 = metadata !{i64 23}
!25 = metadata !{i64 24}
!26 = metadata !{i64 25}
!27 = metadata !{i64 26}
!28 = metadata !{i64 27}
!29 = metadata !{i64 28}
!30 = metadata !{i64 29}
!31 = metadata !{i64 30}
!32 = metadata !{i64 31}
!33 = metadata !{i64 32}
!34 = metadata !{i64 33}
!35 = metadata !{i64 34}
!36 = metadata !{i64 35}
!37 = metadata !{i64 36}
!38 = metadata !{i64 37}
!39 = metadata !{i64 38}
!40 = metadata !{i64 39}
!41 = metadata !{i64 40}
!42 = metadata !{i64 41}
!43 = metadata !{i64 42}
!44 = metadata !{i64 43}
!45 = metadata !{i64 44}
!46 = metadata !{i64 45}
!47 = metadata !{i64 46}
!48 = metadata !{i64 47}
!49 = metadata !{i64 48}
!50 = metadata !{i64 49}
!51 = metadata !{i64 50}
!52 = metadata !{i64 51}
!53 = metadata !{i64 52}
!54 = metadata !{i64 53}
!55 = metadata !{i64 54}
!56 = metadata !{i64 55}
!57 = metadata !{i64 56}
!58 = metadata !{i64 57}
!59 = metadata !{i64 58}
!60 = metadata !{i64 59}
!61 = metadata !{i64 60}
!62 = metadata !{i64 61}
!63 = metadata !{i64 62}
!64 = metadata !{i64 63}
!65 = metadata !{i64 64}
!66 = metadata !{i64 65}
!67 = metadata !{i64 66}
!68 = metadata !{i64 67}
!69 = metadata !{i64 68}
!70 = metadata !{i64 69}
!71 = metadata !{i64 70}
!72 = metadata !{i64 71}
!73 = metadata !{i64 72}
!74 = metadata !{i64 73}
!75 = metadata !{i64 74}
!76 = metadata !{i64 75}
!77 = metadata !{i64 76}
!78 = metadata !{i64 77}
!79 = metadata !{i64 78}
!80 = metadata !{i64 79}
!81 = metadata !{i64 80}
!82 = metadata !{i64 81}
!83 = metadata !{i64 82}
!84 = metadata !{i64 83}
!85 = metadata !{i64 84}
!86 = metadata !{i64 85}
!87 = metadata !{i64 86}
!88 = metadata !{i64 87}
!89 = metadata !{i64 88}
!90 = metadata !{i64 89}
!91 = metadata !{i64 90}
!92 = metadata !{i64 91}
!93 = metadata !{i64 92}

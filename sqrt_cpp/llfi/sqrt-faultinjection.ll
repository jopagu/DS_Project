; ModuleID = '/home/llfi/DS_project/sqrt_cpp/llfi/sqrt-llfi_index.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type { i32 (...)**, i32 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type { %"class.std::locale::facet", %struct.__locale_struct*, i8, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet" }
%"class.std::num_get" = type { %"class.std::locale::facet" }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str = private unnamed_addr constant [17 x i8] c"sqrt(123.123) = \00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]
@fmul_namestr = internal constant [5 x i8] c"fmul\00"
@fpext_namestr = internal constant [6 x i8] c"fpext\00"
@fdiv_namestr = internal constant [5 x i8] c"fdiv\00"
@fptrunc_namestr = internal constant [8 x i8] c"fptrunc\00"
@load_namestr = internal constant [5 x i8] c"load\00"
@fadd_namestr = internal constant [5 x i8] c"fadd\00"
@call_namestr = internal constant [5 x i8] c"call\00"
@alloca_namestr = internal constant [7 x i8] c"alloca\00"
@fcmp_namestr = internal constant [5 x i8] c"fcmp\00"
@fsub_namestr = internal constant [5 x i8] c"fsub\00"
@phi_namestr = internal constant [4 x i8] c"phi\00"
@icmp_namestr = internal constant [5 x i8] c"icmp\00"
@trunc_namestr = internal constant [6 x i8] c"trunc\00"
@zext_namestr = internal constant [5 x i8] c"zext\00"
@add_namestr = internal constant [4 x i8] c"add\00"

define internal void @__cxx_global_var_init() section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !llfi_index !1
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1, !llfi_index !2
  %fi = call i32 @injectFault2(i64 2, i32 %1, i32 49, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @call_namestr, i32 0, i32 0)), !llfi_injectfault !3
  ret void, !llfi_index !4
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define float @_Z6myFabsf(float %x) #2 {
  %1 = alloca float, align 4, !llfi_index !5
  %fi = call float* @injectFault3(i64 4, float* %1, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !3
  store float %x, float* %fi, align 4, !llfi_index !6
  %2 = load float* %fi, align 4, !llfi_index !7
  %fi1 = call float @injectFault0(i64 6, float %2, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %3 = fcmp olt float %fi1, 0.000000e+00, !llfi_index !8
  %fi2 = call i1 @injectFault4(i64 7, i1 %3, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !3
  br i1 %fi2, label %4, label %7, !llfi_index !9

; <label>:4                                       ; preds = %0
  %5 = load float* %fi, align 4, !llfi_index !10
  %fi3 = call float @injectFault0(i64 9, float %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %6 = fsub float -0.000000e+00, %fi3, !llfi_index !11
  %fi4 = call float @injectFault0(i64 10, float %6, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !3
  br label %9, !llfi_index !12

; <label>:7                                       ; preds = %0
  %8 = load float* %fi, align 4, !llfi_index !13
  %fi5 = call float @injectFault0(i64 12, float %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  br label %9, !llfi_index !14

; <label>:9                                       ; preds = %7, %4
  %10 = phi float [ %fi4, %4 ], [ %fi5, %7 ], !llfi_index !15
  %fi6 = call float @injectFault0(i64 14, float %10, i32 48, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @phi_namestr, i32 0, i32 0)), !llfi_injectfault !3
  ret float %fi6, !llfi_index !16
}

; Function Attrs: nounwind uwtable
define float @_Z6mySqrtf(float %val) #2 {
  %1 = alloca float, align 4, !llfi_index !17
  %fi10 = call float* @injectFault3(i64 16, float* %1, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %x = alloca float, align 4, !llfi_index !18
  %fi11 = call float* @injectFault3(i64 17, float* %x, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %dx = alloca float, align 4, !llfi_index !19
  %fi12 = call float* @injectFault3(i64 18, float* %dx, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %diff = alloca double, align 8, !llfi_index !20
  %fi13 = call double* @injectFault5(i64 19, double* %diff, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %min_tol = alloca double, align 8, !llfi_index !21
  %fi14 = call double* @injectFault5(i64 20, double* %min_tol, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %flag = alloca i8, align 1, !llfi_index !22
  %fi15 = call i8* @injectFault6(i64 21, i8* %flag, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %i = alloca i32, align 4, !llfi_index !23
  %fi16 = call i32* @injectFault7(i64 22, i32* %i, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !3
  store float %val, float* %fi10, align 4, !llfi_index !24
  %2 = load float* %fi10, align 4, !llfi_index !25
  %fi17 = call float @injectFault0(i64 24, float %2, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %3 = fdiv float %fi17, 1.000000e+01, !llfi_index !26
  %fi18 = call float @injectFault0(i64 25, float %3, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !3
  store float %fi18, float* %fi11, align 4, !llfi_index !27
  store double 1.000000e-05, double* %fi14, align 8, !llfi_index !28
  store i8 0, i8* %fi15, align 1, !llfi_index !29
  %4 = load float* %fi10, align 4, !llfi_index !30
  %fi19 = call float @injectFault0(i64 29, float %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %5 = fcmp oeq float %fi19, 0.000000e+00, !llfi_index !31
  %fi20 = call i1 @injectFault4(i64 30, i1 %5, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !3
  br i1 %fi20, label %6, label %7, !llfi_index !32

; <label>:6                                       ; preds = %0
  store float 0.000000e+00, float* %fi11, align 4, !llfi_index !33
  br label %47, !llfi_index !34

; <label>:7                                       ; preds = %0
  store i32 1, i32* %fi16, align 4, !llfi_index !35
  br label %8, !llfi_index !36

; <label>:8                                       ; preds = %43, %7
  %9 = load i32* %fi16, align 4, !llfi_index !37
  %fi22 = call i32 @injectFault2(i64 36, i32 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %10 = icmp slt i32 %fi22, 20, !llfi_index !38
  %fi23 = call i1 @injectFault4(i64 37, i1 %10, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !3
  br i1 %fi23, label %11, label %46, !llfi_index !39

; <label>:11                                      ; preds = %8
  %12 = load i8* %fi15, align 1, !llfi_index !40
  %fi24 = call i8 @injectFault8(i64 39, i8 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %13 = trunc i8 %fi24 to i1, !llfi_index !41
  %fi25 = call i1 @injectFault4(i64 40, i1 %13, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !3
  br i1 %fi25, label %42, label %14, !llfi_index !42

; <label>:14                                      ; preds = %11
  %15 = load float* %fi10, align 4, !llfi_index !43
  %fi26 = call float @injectFault0(i64 42, float %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %16 = fpext float %fi26 to double, !llfi_index !44
  %fi27 = call double @injectFault1(i64 43, double %16, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %17 = load float* %fi11, align 4, !llfi_index !45
  %fi21 = call float @injectFault0(i64 44, float %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %18 = fpext float %fi21 to double, !llfi_index !46
  %fi29 = call double @injectFault1(i64 45, double %18, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %19 = call double @pow(double %fi29, double 2.000000e+00) #1, !llfi_index !47
  %fi30 = call double @injectFault1(i64 46, double %19, i32 49, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @call_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %20 = fsub double %fi27, %fi30, !llfi_index !48
  %fi31 = call double @injectFault1(i64 47, double %20, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %21 = load float* %fi11, align 4, !llfi_index !49
  %fi32 = call float @injectFault0(i64 48, float %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %22 = fmul float 2.000000e+00, %fi32, !llfi_index !50
  %fi = call float @injectFault0(i64 49, float %22, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %23 = fpext float %fi to double, !llfi_index !51
  %fi1 = call double @injectFault1(i64 50, double %23, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %24 = fdiv double %fi31, %fi1, !llfi_index !52
  %fi2 = call double @injectFault1(i64 51, double %24, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %25 = fptrunc double %fi2 to float, !llfi_index !53
  %fi3 = call float @injectFault0(i64 52, float %25, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !3
  store float %fi3, float* %fi12, align 4, !llfi_index !54
  %26 = load float* %fi12, align 4, !llfi_index !55
  %fi4 = call float @injectFault0(i64 54, float %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %27 = load float* %fi11, align 4, !llfi_index !56
  %fi5 = call float @injectFault0(i64 55, float %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %28 = fadd float %fi5, %fi4, !llfi_index !57
  %fi6 = call float @injectFault0(i64 56, float %28, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !3
  store float %fi6, float* %fi11, align 4, !llfi_index !58
  %29 = load float* %fi10, align 4, !llfi_index !59
  %fi7 = call float @injectFault0(i64 58, float %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %30 = fpext float %fi7 to double, !llfi_index !60
  %fi8 = call double @injectFault1(i64 59, double %30, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %31 = load float* %fi11, align 4, !llfi_index !61
  %fi9 = call float @injectFault0(i64 60, float %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %32 = fpext float %fi9 to double, !llfi_index !62
  %fi33 = call double @injectFault1(i64 61, double %32, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %33 = call double @pow(double %fi33, double 2.000000e+00) #1, !llfi_index !63
  %fi28 = call double @injectFault1(i64 62, double %33, i32 49, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @call_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %34 = fsub double %fi8, %fi28, !llfi_index !64
  %fi34 = call double @injectFault1(i64 63, double %34, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !3
  store double %fi34, double* %fi13, align 8, !llfi_index !65
  %35 = load double* %fi13, align 8, !llfi_index !66
  %fi35 = call double @injectFault1(i64 65, double %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %36 = fptrunc double %fi35 to float, !llfi_index !67
  %fi36 = call float @injectFault0(i64 66, float %36, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %37 = call float @_Z6myFabsf(float %fi36), !llfi_index !68
  %fi37 = call float @injectFault0(i64 67, float %37, i32 49, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @call_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %38 = fpext float %fi37 to double, !llfi_index !69
  %fi38 = call double @injectFault1(i64 68, double %38, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %39 = load double* %fi14, align 8, !llfi_index !70
  %fi39 = call double @injectFault1(i64 69, double %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %40 = fcmp ole double %fi38, %fi39, !llfi_index !71
  %fi40 = call i1 @injectFault4(i64 70, i1 %40, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %41 = zext i1 %fi40 to i8, !llfi_index !72
  %fi41 = call i8 @injectFault8(i64 71, i8 %41, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !3
  store i8 %fi41, i8* %fi15, align 1, !llfi_index !73
  br label %42, !llfi_index !74

; <label>:42                                      ; preds = %14, %11
  br label %43, !llfi_index !75

; <label>:43                                      ; preds = %42
  %44 = load i32* %fi16, align 4, !llfi_index !76
  %fi42 = call i32 @injectFault2(i64 75, i32 %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %45 = add nsw i32 %fi42, 1, !llfi_index !77
  %fi43 = call i32 @injectFault2(i64 76, i32 %45, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !3
  store i32 %fi43, i32* %fi16, align 4, !llfi_index !78
  br label %8, !llfi_index !79

; <label>:46                                      ; preds = %8
  br label %47, !llfi_index !80

; <label>:47                                      ; preds = %46, %6
  %48 = load float* %fi11, align 4, !llfi_index !81
  %fi44 = call float @injectFault0(i64 80, float %48, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  ret float %fi44, !llfi_index !82
}

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: uwtable
define i32 @main() #4 {
  call void @initInjections()
  %sqrt = alloca float, align 4, !llfi_index !83
  %fi = call float* @injectFault3(i64 82, float* %sqrt, i32 26, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @alloca_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %1 = call float @_Z6mySqrtf(float 0x405EC7DF40000000), !llfi_index !84
  %fi1 = call float @injectFault0(i64 83, float %1, i32 49, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @call_namestr, i32 0, i32 0)), !llfi_injectfault !3
  store float %fi1, float* %fi, align 4, !llfi_index !85
  %2 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([17 x i8]* @.str, i32 0, i32 0)), !llfi_index !86
  %fi2 = call %"class.std::basic_ostream"* @injectFault9(i64 85, %"class.std::basic_ostream"* %2, i32 49, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @call_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %3 = load float* %fi, align 4, !llfi_index !87
  %fi3 = call float @injectFault0(i64 86, float %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %4 = call %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %fi2, float %fi3), !llfi_index !88
  %fi4 = call %"class.std::basic_ostream"* @injectFault9(i64 87, %"class.std::basic_ostream"* %4, i32 49, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @call_namestr, i32 0, i32 0)), !llfi_injectfault !3
  %5 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %fi4, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0)), !llfi_index !89
  %fi5 = call %"class.std::basic_ostream"* @injectFault9(i64 88, %"class.std::basic_ostream"* %5, i32 49, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @call_namestr, i32 0, i32 0)), !llfi_injectfault !3
  call void @postInjections()
  ret i32 0, !llfi_index !90
}

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #0

declare %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"*, float) #0

define internal void @_GLOBAL__I_a() section ".text.startup" {
  call void @__cxx_global_var_init(), !llfi_index !91
  ret void, !llfi_index !92
}

define float @injectFault0(i64, float, i32, i32, i32, i32, i8*) {
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

define double @injectFault1(i64, double, i32, i32, i32, i32, i8*) {
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

define i32 @injectFault2(i64, i32, i32, i32, i32, i32, i8*) {
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

define float* @injectFault3(i64, float*, i32, i32, i32, i32, i8*) {
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

define i1 @injectFault4(i64, i1, i32, i32, i32, i32, i8*) {
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

define double* @injectFault5(i64, double*, i32, i32, i32, i32, i8*) {
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

define i8* @injectFault6(i64, i8*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i8*
  store i8* %1, i8** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i8** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i8** %tmploc
  ret i8* %updateval
}

define i32* @injectFault7(i64, i32*, i32, i32, i32, i32, i8*) {
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

define i8 @injectFault8(i64, i8, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i8
  store i8 %1, i8* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i8* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 8, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i8* %tmploc
  ret i8 %updateval
}

define %"class.std::basic_ostream"* @injectFault9(i64, %"class.std::basic_ostream"*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca %"class.std::basic_ostream"*
  store %"class.std::basic_ostream"* %1, %"class.std::basic_ostream"** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast %"class.std::basic_ostream"** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load %"class.std::basic_ostream"** %tmploc
  ret %"class.std::basic_ostream"* %updateval
}

declare void @initInjections()

declare void @postInjections()

declare i1 @preFunc(i64, i32, i32, i32)

declare void @injectFunc(i64, i32, i8*, i32, i32, i8*)

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!1 = metadata !{i64 1}
!2 = metadata !{i64 2}
!3 = metadata !{metadata !"after"}
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

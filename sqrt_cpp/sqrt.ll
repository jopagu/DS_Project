; ModuleID = 'sqrt.cpp'
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

define internal void @__cxx_global_var_init() section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define float @_Z6myFabsf(float %x) #2 {
  %1 = alloca float, align 4
  store float %x, float* %1, align 4
  %2 = load float* %1, align 4
  %3 = fcmp olt float %2, 0.000000e+00
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load float* %1, align 4
  %6 = fsub float -0.000000e+00, %5
  br label %9

; <label>:7                                       ; preds = %0
  %8 = load float* %1, align 4
  br label %9

; <label>:9                                       ; preds = %7, %4
  %10 = phi float [ %6, %4 ], [ %8, %7 ]
  ret float %10
}

; Function Attrs: nounwind uwtable
define float @_Z6mySqrtf(float %val) #2 {
  %1 = alloca float, align 4
  %x = alloca float, align 4
  %dx = alloca float, align 4
  %diff = alloca double, align 8
  %min_tol = alloca double, align 8
  %flag = alloca i8, align 1
  %i = alloca i32, align 4
  store float %val, float* %1, align 4
  %2 = load float* %1, align 4
  %3 = fdiv float %2, 1.000000e+01
  store float %3, float* %x, align 4
  store double 1.000000e-05, double* %min_tol, align 8
  store i8 0, i8* %flag, align 1
  %4 = load float* %1, align 4
  %5 = fcmp oeq float %4, 0.000000e+00
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store float 0.000000e+00, float* %x, align 4
  br label %47

; <label>:7                                       ; preds = %0
  store i32 1, i32* %i, align 4
  br label %8

; <label>:8                                       ; preds = %43, %7
  %9 = load i32* %i, align 4
  %10 = icmp slt i32 %9, 20
  br i1 %10, label %11, label %46

; <label>:11                                      ; preds = %8
  %12 = load i8* %flag, align 1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %42, label %14

; <label>:14                                      ; preds = %11
  %15 = load float* %1, align 4
  %16 = fpext float %15 to double
  %17 = load float* %x, align 4
  %18 = fpext float %17 to double
  %19 = call double @pow(double %18, double 2.000000e+00) #1
  %20 = fsub double %16, %19
  %21 = load float* %x, align 4
  %22 = fmul float 2.000000e+00, %21
  %23 = fpext float %22 to double
  %24 = fdiv double %20, %23
  %25 = fptrunc double %24 to float
  store float %25, float* %dx, align 4
  %26 = load float* %dx, align 4
  %27 = load float* %x, align 4
  %28 = fadd float %27, %26
  store float %28, float* %x, align 4
  %29 = load float* %1, align 4
  %30 = fpext float %29 to double
  %31 = load float* %x, align 4
  %32 = fpext float %31 to double
  %33 = call double @pow(double %32, double 2.000000e+00) #1
  %34 = fsub double %30, %33
  store double %34, double* %diff, align 8
  %35 = load double* %diff, align 8
  %36 = fptrunc double %35 to float
  %37 = call float @_Z6myFabsf(float %36)
  %38 = fpext float %37 to double
  %39 = load double* %min_tol, align 8
  %40 = fcmp ole double %38, %39
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %flag, align 1
  br label %42

; <label>:42                                      ; preds = %14, %11
  br label %43

; <label>:43                                      ; preds = %42
  %44 = load i32* %i, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %i, align 4
  br label %8

; <label>:46                                      ; preds = %8
  br label %47

; <label>:47                                      ; preds = %46, %6
  %48 = load float* %x, align 4
  ret float %48
}

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: uwtable
define i32 @main() #4 {
  %sqrt = alloca float, align 4
  %1 = call float @_Z6mySqrtf(float 0x405EC7DF40000000)
  store float %1, float* %sqrt, align 4
  %2 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([17 x i8]* @.str, i32 0, i32 0))
  %3 = load float* %sqrt, align 4
  %4 = call %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %2, float %3)
  %5 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %4, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  ret i32 0
}

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #0

declare %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"*, float) #0

define internal void @_GLOBAL__I_a() section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}

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

define internal void @__cxx_global_var_init() section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !llfi_index !1
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1, !llfi_index !2
  call void @doProfiling(i32 49)
  ret void, !llfi_index !3
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define float @_Z6myFabsf(float %x) #2 {
  %1 = alloca float, align 4, !llfi_index !4
  call void @doProfiling(i32 26)
  store float %x, float* %1, align 4, !llfi_index !5
  %2 = load float* %1, align 4, !llfi_index !6
  call void @doProfiling(i32 27)
  %3 = fcmp olt float %2, 0.000000e+00, !llfi_index !7
  call void @doProfiling(i32 47)
  br i1 %3, label %4, label %7, !llfi_index !8

; <label>:4                                       ; preds = %0
  %5 = load float* %1, align 4, !llfi_index !9
  call void @doProfiling(i32 27)
  %6 = fsub float -0.000000e+00, %5, !llfi_index !10
  call void @doProfiling(i32 11)
  br label %9, !llfi_index !11

; <label>:7                                       ; preds = %0
  %8 = load float* %1, align 4, !llfi_index !12
  call void @doProfiling(i32 27)
  br label %9, !llfi_index !13

; <label>:9                                       ; preds = %7, %4
  %10 = phi float [ %6, %4 ], [ %8, %7 ], !llfi_index !14
  call void @doProfiling(i32 48)
  ret float %10, !llfi_index !15
}

; Function Attrs: nounwind uwtable
define float @_Z6mySqrtf(float %val) #2 {
  %1 = alloca float, align 4, !llfi_index !16
  call void @doProfiling(i32 26)
  %x = alloca float, align 4, !llfi_index !17
  call void @doProfiling(i32 26)
  %dx = alloca float, align 4, !llfi_index !18
  call void @doProfiling(i32 26)
  %diff = alloca double, align 8, !llfi_index !19
  call void @doProfiling(i32 26)
  %min_tol = alloca double, align 8, !llfi_index !20
  call void @doProfiling(i32 26)
  %flag = alloca i8, align 1, !llfi_index !21
  call void @doProfiling(i32 26)
  %i = alloca i32, align 4, !llfi_index !22
  call void @doProfiling(i32 26)
  store float %val, float* %1, align 4, !llfi_index !23
  %2 = load float* %1, align 4, !llfi_index !24
  call void @doProfiling(i32 27)
  %3 = fdiv float %2, 1.000000e+01, !llfi_index !25
  call void @doProfiling(i32 16)
  store float %3, float* %x, align 4, !llfi_index !26
  store double 1.000000e-05, double* %min_tol, align 8, !llfi_index !27
  store i8 0, i8* %flag, align 1, !llfi_index !28
  %4 = load float* %1, align 4, !llfi_index !29
  call void @doProfiling(i32 27)
  %5 = fcmp oeq float %4, 0.000000e+00, !llfi_index !30
  call void @doProfiling(i32 47)
  br i1 %5, label %6, label %7, !llfi_index !31

; <label>:6                                       ; preds = %0
  store float 0.000000e+00, float* %x, align 4, !llfi_index !32
  br label %47, !llfi_index !33

; <label>:7                                       ; preds = %0
  store i32 1, i32* %i, align 4, !llfi_index !34
  br label %8, !llfi_index !35

; <label>:8                                       ; preds = %43, %7
  %9 = load i32* %i, align 4, !llfi_index !36
  call void @doProfiling(i32 27)
  %10 = icmp slt i32 %9, 20, !llfi_index !37
  call void @doProfiling(i32 46)
  br i1 %10, label %11, label %46, !llfi_index !38

; <label>:11                                      ; preds = %8
  %12 = load i8* %flag, align 1, !llfi_index !39
  call void @doProfiling(i32 27)
  %13 = trunc i8 %12 to i1, !llfi_index !40
  call void @doProfiling(i32 33)
  br i1 %13, label %42, label %14, !llfi_index !41

; <label>:14                                      ; preds = %11
  %15 = load float* %1, align 4, !llfi_index !42
  call void @doProfiling(i32 27)
  %16 = fpext float %15 to double, !llfi_index !43
  call void @doProfiling(i32 41)
  %17 = load float* %x, align 4, !llfi_index !44
  call void @doProfiling(i32 27)
  %18 = fpext float %17 to double, !llfi_index !45
  call void @doProfiling(i32 41)
  %19 = call double @pow(double %18, double 2.000000e+00) #1, !llfi_index !46
  call void @doProfiling(i32 49)
  %20 = fsub double %16, %19, !llfi_index !47
  call void @doProfiling(i32 11)
  %21 = load float* %x, align 4, !llfi_index !48
  call void @doProfiling(i32 27)
  %22 = fmul float 2.000000e+00, %21, !llfi_index !49
  call void @doProfiling(i32 13)
  %23 = fpext float %22 to double, !llfi_index !50
  call void @doProfiling(i32 41)
  %24 = fdiv double %20, %23, !llfi_index !51
  call void @doProfiling(i32 16)
  %25 = fptrunc double %24 to float, !llfi_index !52
  call void @doProfiling(i32 40)
  store float %25, float* %dx, align 4, !llfi_index !53
  %26 = load float* %dx, align 4, !llfi_index !54
  call void @doProfiling(i32 27)
  %27 = load float* %x, align 4, !llfi_index !55
  call void @doProfiling(i32 27)
  %28 = fadd float %27, %26, !llfi_index !56
  call void @doProfiling(i32 9)
  store float %28, float* %x, align 4, !llfi_index !57
  %29 = load float* %1, align 4, !llfi_index !58
  call void @doProfiling(i32 27)
  %30 = fpext float %29 to double, !llfi_index !59
  call void @doProfiling(i32 41)
  %31 = load float* %x, align 4, !llfi_index !60
  call void @doProfiling(i32 27)
  %32 = fpext float %31 to double, !llfi_index !61
  call void @doProfiling(i32 41)
  %33 = call double @pow(double %32, double 2.000000e+00) #1, !llfi_index !62
  call void @doProfiling(i32 49)
  %34 = fsub double %30, %33, !llfi_index !63
  call void @doProfiling(i32 11)
  store double %34, double* %diff, align 8, !llfi_index !64
  %35 = load double* %diff, align 8, !llfi_index !65
  call void @doProfiling(i32 27)
  %36 = fptrunc double %35 to float, !llfi_index !66
  call void @doProfiling(i32 40)
  %37 = call float @_Z6myFabsf(float %36), !llfi_index !67
  call void @doProfiling(i32 49)
  %38 = fpext float %37 to double, !llfi_index !68
  call void @doProfiling(i32 41)
  %39 = load double* %min_tol, align 8, !llfi_index !69
  call void @doProfiling(i32 27)
  %40 = fcmp ole double %38, %39, !llfi_index !70
  call void @doProfiling(i32 47)
  %41 = zext i1 %40 to i8, !llfi_index !71
  call void @doProfiling(i32 34)
  store i8 %41, i8* %flag, align 1, !llfi_index !72
  br label %42, !llfi_index !73

; <label>:42                                      ; preds = %14, %11
  br label %43, !llfi_index !74

; <label>:43                                      ; preds = %42
  %44 = load i32* %i, align 4, !llfi_index !75
  call void @doProfiling(i32 27)
  %45 = add nsw i32 %44, 1, !llfi_index !76
  call void @doProfiling(i32 8)
  store i32 %45, i32* %i, align 4, !llfi_index !77
  br label %8, !llfi_index !78

; <label>:46                                      ; preds = %8
  br label %47, !llfi_index !79

; <label>:47                                      ; preds = %46, %6
  %48 = load float* %x, align 4, !llfi_index !80
  call void @doProfiling(i32 27)
  ret float %48, !llfi_index !81
}

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: uwtable
define i32 @main() #4 {
  %sqrt = alloca float, align 4, !llfi_index !82
  call void @doProfiling(i32 26)
  %1 = call float @_Z6mySqrtf(float 0x405EC7DF40000000), !llfi_index !83
  call void @doProfiling(i32 49)
  store float %1, float* %sqrt, align 4, !llfi_index !84
  %2 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([17 x i8]* @.str, i32 0, i32 0)), !llfi_index !85
  call void @doProfiling(i32 49)
  %3 = load float* %sqrt, align 4, !llfi_index !86
  call void @doProfiling(i32 27)
  %4 = call %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %2, float %3), !llfi_index !87
  call void @doProfiling(i32 49)
  %5 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %4, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0)), !llfi_index !88
  call void @doProfiling(i32 49)
  call void @endProfiling()
  ret i32 0, !llfi_index !89
}

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #0

declare %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"*, float) #0

define internal void @_GLOBAL__I_a() section ".text.startup" {
  call void @__cxx_global_var_init(), !llfi_index !90
  ret void, !llfi_index !91
}

declare void @doProfiling(i32)

declare void @endProfiling()

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

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

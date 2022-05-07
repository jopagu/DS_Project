; ModuleID = 'sqrt.7rcbfp3g-cgu.0'
source_filename = "sqrt.7rcbfp3g-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Formatter" = type { [0 x i64], { i64, i64 }, [0 x i64], { i64, i64 }, [0 x i64], { {}*, [3 x i64]* }, [0 x i32], i32, [0 x i32], i32, [0 x i8], i8, [7 x i8] }
%"core::fmt::::Opaque" = type {}
%"core::fmt::Arguments" = type { [0 x i64], { [0 x { [0 x i8]*, i64 }]*, i64 }, [0 x i64], { i64*, i64 }, [0 x i64], { [0 x { i8*, i64* }]*, i64 }, [0 x i64] }
%"core::mem::maybe_uninit::MaybeUninit<core::ptr::swap_nonoverlapping_bytes::UnalignedBlock>" = type { [4 x i64] }
%"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock" = type { [0 x i64], i64, [0 x i64], i64, [0 x i64], i64, [0 x i64], i64, [0 x i64] }
%"core::option::Option<i32>::Some" = type { [1 x i32], i32, [0 x i32] }
%"unwind::libunwind::_Unwind_Exception" = type { [0 x i64], i64, [0 x i64], void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [0 x i64], [6 x i64], [0 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant { void (i64**)*, i64, i64, i32 (i64**)*, i32 (i64**)*, i32 (i64**)* } { void (i64**)* @_ZN4core3ptr13drop_in_place17h48a0af499dc82b72E, i64 8, i64 8, i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha31f52c56e010018E", i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha31f52c56e010018E", i32 (i64**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h6b9aa9ce7e2fb2f7E" }, align 8
@alloc1 = private unnamed_addr constant <{ [0 x i8] }> zeroinitializer, align 1
@alloc3 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc2 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [0 x i8] }>, <{ [0 x i8] }>* @alloc1, i32 0, i32 0, i32 0), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc3, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@0 = private unnamed_addr constant <{ i8*, [0 x i8] }> <{ i8* bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc2 to i8*), [0 x i8] zeroinitializer }>, align 8

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17haee8fdb8cfb04704E(void ()* nonnull %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_5 = alloca {}, align 1
  %_3 = alloca {}, align 1
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17hde96367b66de2354E(void ()* nonnull %f)
  br label %bb2

bb1:                                              ; preds = %bb4
  %1 = bitcast { i8*, i32 }* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

bb2:                                              ; preds = %start
; invoke core::hint::black_box
  invoke void @_ZN4core4hint9black_box17h63c171ed5c9b1350E()
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  ret void

bb4:                                              ; preds = %cleanup
  br label %bb1

cleanup:                                          ; preds = %bb2
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb4
}

; std::rt::lang_start
; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17h727e23ab8d8918e8E(void ()* nonnull %main, i64 %argc, i8** %argv) unnamed_addr #1 {
start:
  %_7 = alloca i64*, align 8
  %0 = bitcast i64** %_7 to void ()**
  store void ()* %main, void ()** %0, align 8
  %_4.0 = bitcast i64** %_7 to {}*
; call std::rt::lang_start_internal
  %1 = call i64 @_ZN3std2rt19lang_start_internal17ha12a50f31e33d94fE({}* nonnull align 1 %_4.0, [3 x i64]* noalias readonly align 8 dereferenceable(24) bitcast ({ void (i64**)*, i64, i64, i32 (i64**)*, i32 (i64**)*, i32 (i64**)* }* @vtable.0 to [3 x i64]*), i64 %argc, i8** %argv)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; std::rt::lang_start::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha31f52c56e010018E"(i64** noalias readonly align 8 dereferenceable(8) %_1) unnamed_addr #1 {
start:
  %0 = bitcast i64** %_1 to void ()**
  %_3 = load void ()*, void ()** %0, align 8, !nonnull !3
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  call void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17haee8fdb8cfb04704E(void ()* nonnull %_3)
  br label %bb1

bb1:                                              ; preds = %start
; call <() as std::process::Termination>::report
  %1 = call i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h37ceb380e43f58ebE"()
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %1
}

; std::f64::<impl f64>::powi
; Function Attrs: inlinehint nonlazybind uwtable
define internal double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$4powi17h041ee67bdccbd097E"(double %self, i32 %n) unnamed_addr #2 {
start:
  %0 = alloca double, align 8
  %1 = call double @llvm.powi.f64(double %self, i32 %n)
  store double %1, double* %0, align 8
  %2 = load double, double* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret double %2
}

; std::sys::unix::process::process_common::ExitCode::as_i32
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h6900582fe1526ffaE(i8* noalias readonly align 1 dereferenceable(1) %self) unnamed_addr #2 {
start:
  %_2 = load i8, i8* %self, align 1
  %0 = zext i8 %_2 to i32
  ret i32 %0
}

; <i32 as core::iter::range::Step>::forward_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hf25aa384e02aa40cE"(i32 %start1, i64 %n) unnamed_addr #2 {
start:
  %_4 = trunc i64 %n to i32
; call core::num::<impl i32>::unchecked_add
  %0 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$13unchecked_add17h01a156b8c6f9f7f7E"(i32 %start1, i32 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; core::intrinsics::copy_nonoverlapping
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core10intrinsics19copy_nonoverlapping17h339a680eed5684b1E(i32* %src, i32* %dst, i64 %count) unnamed_addr #2 {
start:
  %0 = mul i64 4, %count
  %1 = bitcast i32* %dst to i8*
  %2 = bitcast i32* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::intrinsics::copy_nonoverlapping
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core10intrinsics19copy_nonoverlapping17hce90ab1130448fdbE(i8* %src, i8* %dst, i64 %count) unnamed_addr #2 {
start:
  %0 = mul i64 1, %count
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::cmp::impls::<impl core::cmp::PartialOrd for i32>::lt
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17hd356caccc79bc406E"(i32* noalias readonly align 4 dereferenceable(4) %self, i32* noalias readonly align 4 dereferenceable(4) %other) unnamed_addr #2 {
start:
  %_3 = load i32, i32* %self, align 4
  %_4 = load i32, i32* %other, align 4
  %0 = icmp slt i32 %_3, %_4
  ret i1 %0
}

; core::fmt::ArgumentV1::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17ha76f5706c54e2a76E(double* noalias readonly align 8 dereferenceable(8) %x, i1 (double*, %"core::fmt::Formatter"*)* nonnull %f) unnamed_addr #1 {
start:
  %0 = alloca %"core::fmt::::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (%"core::fmt::::Opaque"*, %"core::fmt::Formatter"*)** %1 to i1 (double*, %"core::fmt::Formatter"*)**
  store i1 (double*, %"core::fmt::Formatter"*)* %f, i1 (double*, %"core::fmt::Formatter"*)** %3, align 8
  %_3 = load i1 (%"core::fmt::::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !3
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %"core::fmt::::Opaque"** %0 to double**
  store double* %x, double** %4, align 8
  %_5 = load %"core::fmt::::Opaque"*, %"core::fmt::::Opaque"** %0, align 8, !nonnull !3
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::::Opaque"**
  store %"core::fmt::::Opaque"* %_5, %"core::fmt::::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !3
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !3
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h3c31838e2669cacdE(%"core::fmt::Arguments"* noalias nocapture sret dereferenceable(48) %0, [0 x { [0 x i8]*, i64 }]* noalias nonnull readonly align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* noalias nonnull readonly align 8 %args.0, i64 %args.1) unnamed_addr #2 {
start:
  %_4 = alloca { i64*, i64 }, align 8
  %1 = bitcast { i64*, i64 }* %_4 to {}**
  store {}* null, {}** %1, align 8
  %2 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %3 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %2, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* %pieces.0, [0 x { [0 x i8]*, i64 }]** %3, align 8
  %4 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %2, i32 0, i32 1
  store i64 %pieces.1, i64* %4, align 8
  %5 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 3
  %6 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_4, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_4, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %5, i32 0, i32 0
  store i64* %7, i64** %10, align 8
  %11 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %5, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 5
  %13 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %12, i32 0, i32 0
  store [0 x { i8*, i64* }]* %args.0, [0 x { i8*, i64* }]** %13, align 8
  %14 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %12, i32 0, i32 1
  store i64 %args.1, i64* %14, align 8
  ret void
}

; core::mem::swap
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3mem4swap17hc63c2977aba68275E(i32* align 4 dereferenceable(4) %x, i32* align 4 dereferenceable(4) %y) unnamed_addr #2 {
start:
; call core::ptr::swap_nonoverlapping_one
  call void @_ZN4core3ptr23swap_nonoverlapping_one17h785edcab150c5f89E(i32* %x, i32* %y)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::mem::replace
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3mem7replace17h55d79d850bf9207dE(i32* align 4 dereferenceable(4) %dest, i32 %0) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %src = alloca i32, align 4
  store i32 %0, i32* %src, align 4
; invoke core::mem::swap
  invoke void @_ZN4core3mem4swap17hc63c2977aba68275E(i32* align 4 dereferenceable(4) %dest, i32* align 4 dereferenceable(4) %src)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb3
  %2 = bitcast { i8*, i32 }* %1 to i8**
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = insertvalue { i8*, i32 } undef, i8* %3, 0
  %7 = insertvalue { i8*, i32 } %6, i32 %5, 1
  resume { i8*, i32 } %7

bb2:                                              ; preds = %start
  %8 = load i32, i32* %src, align 4
  ret i32 %8

bb3:                                              ; preds = %cleanup
  br label %bb1

cleanup:                                          ; preds = %start
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb3
}

; core::num::<impl i32>::unchecked_add
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$13unchecked_add17h01a156b8c6f9f7f7E"(i32 %self, i32 %rhs) unnamed_addr #2 {
start:
  %0 = alloca i32, align 4
  %1 = add nsw i32 %self, %rhs
  store i32 %1, i32* %0, align 4
  %2 = load i32, i32* %0, align 4
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %2
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h6b9aa9ce7e2fb2f7E"(i64** %_1) unnamed_addr #1 {
start:
  %_2 = alloca {}, align 1
  %0 = load i64*, i64** %_1, align 8, !nonnull !3
; call core::ops::function::FnOnce::call_once
  %1 = call i32 @_ZN4core3ops8function6FnOnce9call_once17h2e1276aea55f4bd4E(i64* nonnull %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; core::ops::function::FnOnce::call_once
; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h2e1276aea55f4bd4E(i64* nonnull %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca {}, align 1
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
; invoke std::rt::lang_start::{{closure}}
  %2 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha31f52c56e010018E"(i64** noalias readonly align 8 dereferenceable(8) %_1)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %2

bb3:                                              ; preds = %cleanup
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = bitcast { i8*, i32 }* %1 to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = insertvalue { i8*, i32 } undef, i8* %4, 0
  %8 = insertvalue { i8*, i32 } %7, i32 %6, 1
  resume { i8*, i32 } %8

cleanup:                                          ; preds = %start
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb3
}

; core::ops::function::FnOnce::call_once
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17hde96367b66de2354E(void ()* nonnull %_1) unnamed_addr #1 {
start:
  %_2 = alloca {}, align 1
  call void %_1()
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr13drop_in_place17h48a0af499dc82b72E(i64** %_1) unnamed_addr #1 {
start:
  %0 = alloca {}, align 1
  ret void
}

; core::ptr::swap_nonoverlapping
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr19swap_nonoverlapping17h2a648d2107b83369E(i32* %x, i32* %y, i64 %count) unnamed_addr #2 {
start:
  %0 = alloca i64, align 8
  %x1 = bitcast i32* %x to i8*
  %y2 = bitcast i32* %y to i8*
  store i64 4, i64* %0, align 8
  %1 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %len = mul i64 %1, %count
; call core::ptr::swap_nonoverlapping_bytes
  call void @_ZN4core3ptr25swap_nonoverlapping_bytes17ha349bd89c8ff00beE(i8* %x1, i8* %y2, i64 %len)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; core::ptr::swap_nonoverlapping_one
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr23swap_nonoverlapping_one17h785edcab150c5f89E(i32* %x, i32* %y) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca i64, align 8
  %1 = alloca { i8*, i32 }, align 8
  %_18 = alloca i8, align 1
  %2 = alloca {}, align 1
  store i8 0, i8* %_18, align 1
  store i64 4, i64* %0, align 8
  %3 = load i64, i64* %0, align 8
  br label %bb2

bb1:                                              ; preds = %bb10, %bb11
  %4 = bitcast { i8*, i32 }* %1 to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = insertvalue { i8*, i32 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i32 } %8, i32 %7, 1
  resume { i8*, i32 } %9

bb2:                                              ; preds = %start
  %_3 = icmp ult i64 %3, 32
  br i1 %_3, label %bb4, label %bb3

bb3:                                              ; preds = %bb2
; call core::ptr::swap_nonoverlapping
  call void @_ZN4core3ptr19swap_nonoverlapping17h2a648d2107b83369E(i32* %x, i32* %y, i64 1)
  br label %bb8

bb4:                                              ; preds = %bb2
  store i8 1, i8* %_18, align 1
; call core::ptr::read
  %z = call i32 @_ZN4core3ptr4read17h1c7be455ef6bfe9aE(i32* %x)
  br label %bb5

bb5:                                              ; preds = %bb4
; invoke core::intrinsics::copy_nonoverlapping
  invoke void @_ZN4core10intrinsics19copy_nonoverlapping17h339a680eed5684b1E(i32* %y, i32* %x, i64 1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store i8 0, i8* %_18, align 1
; invoke core::ptr::write
  invoke void @_ZN4core3ptr5write17hd0572e931058cacfE(i32* %y, i32 %z)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  store i8 0, i8* %_18, align 1
  br label %bb9

bb8:                                              ; preds = %bb3
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  ret void

bb10:                                             ; preds = %bb11
  store i8 0, i8* %_18, align 1
  br label %bb1

bb11:                                             ; preds = %cleanup
  %10 = load i8, i8* %_18, align 1, !range !4
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb10, label %bb1

cleanup:                                          ; preds = %bb6, %bb5
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  %14 = extractvalue { i8*, i32 } %12, 1
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  br label %bb11
}

; core::ptr::swap_nonoverlapping_bytes
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr25swap_nonoverlapping_bytes17ha349bd89c8ff00beE(i8* %x, i8* %y, i64 %len) unnamed_addr #2 {
start:
  %0 = alloca i64, align 8
  %t1 = alloca %"core::mem::maybe_uninit::MaybeUninit<core::ptr::swap_nonoverlapping_bytes::UnalignedBlock>", align 8
  %t = alloca <4 x i64>, align 32
  %i = alloca i64, align 8
  %1 = alloca {}, align 1
  store i64 32, i64* %0, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  store i64 0, i64* %i, align 8
  br label %bb2

bb2:                                              ; preds = %bb11, %bb1
  %_8 = load i64, i64* %i, align 8
  %_7 = add i64 %_8, %2
  %_6 = icmp ule i64 %_7, %len
  br i1 %_6, label %bb4, label %bb3

bb3:                                              ; preds = %bb2
  %_38 = load i64, i64* %i, align 8
  %_37 = icmp ult i64 %_38, %len
  br i1 %_37, label %bb13, label %bb12

bb4:                                              ; preds = %bb2
  %3 = bitcast <4 x i64>* %t to {}*
  br label %bb5

bb5:                                              ; preds = %bb4
  br label %bb6

bb6:                                              ; preds = %bb5
  %t2 = bitcast <4 x i64>* %t to i8*
  %_17 = load i64, i64* %i, align 8
; call core::ptr::mut_ptr::<impl *mut T>::add
  %x3 = call i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h63f630eb94037d30E"(i8* %x, i64 %_17)
  br label %bb7

bb7:                                              ; preds = %bb6
  %_20 = load i64, i64* %i, align 8
; call core::ptr::mut_ptr::<impl *mut T>::add
  %y4 = call i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h63f630eb94037d30E"(i8* %y, i64 %_20)
  br label %bb8

bb8:                                              ; preds = %bb7
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17hce90ab1130448fdbE(i8* %x3, i8* %t2, i64 %2)
  br label %bb9

bb9:                                              ; preds = %bb8
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17hce90ab1130448fdbE(i8* %y4, i8* %x3, i64 %2)
  br label %bb10

bb10:                                             ; preds = %bb9
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17hce90ab1130448fdbE(i8* %t2, i8* %y4, i64 %2)
  br label %bb11

bb11:                                             ; preds = %bb10
  %4 = load i64, i64* %i, align 8
  %5 = add i64 %4, %2
  store i64 %5, i64* %i, align 8
  br label %bb2

bb12:                                             ; preds = %bb3
  br label %bb21

bb13:                                             ; preds = %bb3
  %6 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::ptr::swap_nonoverlapping_bytes::UnalignedBlock>"* %t1 to {}*
  br label %bb14

bb14:                                             ; preds = %bb13
  %_43 = load i64, i64* %i, align 8
  %rem = sub i64 %len, %_43
  %7 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::ptr::swap_nonoverlapping_bytes::UnalignedBlock>"* %t1 to %"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock"*
  br label %bb15

bb15:                                             ; preds = %bb14
  %t5 = bitcast %"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock"* %7 to i8*
  %_49 = load i64, i64* %i, align 8
; call core::ptr::mut_ptr::<impl *mut T>::add
  %x6 = call i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h63f630eb94037d30E"(i8* %x, i64 %_49)
  br label %bb16

bb16:                                             ; preds = %bb15
  %_52 = load i64, i64* %i, align 8
; call core::ptr::mut_ptr::<impl *mut T>::add
  %y7 = call i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h63f630eb94037d30E"(i8* %y, i64 %_52)
  br label %bb17

bb17:                                             ; preds = %bb16
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17hce90ab1130448fdbE(i8* %x6, i8* %t5, i64 %rem)
  br label %bb18

bb18:                                             ; preds = %bb17
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17hce90ab1130448fdbE(i8* %y7, i8* %x6, i64 %rem)
  br label %bb19

bb19:                                             ; preds = %bb18
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17hce90ab1130448fdbE(i8* %t5, i8* %y7, i64 %rem)
  br label %bb20

bb20:                                             ; preds = %bb19
  br label %bb21

bb21:                                             ; preds = %bb12, %bb20
  ret void
}

; core::ptr::read
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ptr4read17h1c7be455ef6bfe9aE(i32* %src) unnamed_addr #2 {
start:
  %0 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %1 = bitcast i32* %0 to {}*
  %2 = load i32, i32* %0, align 4
  store i32 %2, i32* %tmp, align 4
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h339a680eed5684b1E(i32* %src, i32* %tmp, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_7 = load i32, i32* %tmp, align 4
  br label %bb4

bb4:                                              ; preds = %bb3
  ret i32 %_7
}

; core::ptr::write
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr5write17hd0572e931058cacfE(i32* %dst, i32 %src) unnamed_addr #2 {
start:
  %0 = alloca {}, align 1
  store i32 %src, i32* %dst, align 4
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::add
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h63f630eb94037d30E"(i8* %self, i64 %count) unnamed_addr #2 {
start:
; call core::ptr::mut_ptr::<impl *mut T>::offset
  %0 = call i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17hebab55eb5c15d080E"(i8* %self, i64 %count)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; core::ptr::mut_ptr::<impl *mut T>::offset
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17hebab55eb5c15d080E"(i8* %self, i64 %count) unnamed_addr #2 {
start:
  %0 = alloca i8*, align 8
  %1 = getelementptr inbounds i8, i8* %self, i64 %count
  store i8* %1, i8** %0, align 8
  %_3 = load i8*, i8** %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %_3
}

; core::hint::black_box
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4hint9black_box17h63c171ed5c9b1350E() unnamed_addr #2 {
start:
  %dummy = alloca {}, align 1
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"({}* %dummy), !srcloc !5
  ret void
}

; core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hdd82755dbf6593f0E"({ i32, i32 }* align 4 dereferenceable(8) %self) unnamed_addr #2 {
start:
  %0 = alloca { i32, i32 }, align 4
  %_3 = bitcast { i32, i32 }* %self to i32*
  %_4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
; call core::cmp::impls::<impl core::cmp::PartialOrd for i32>::lt
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17hd356caccc79bc406E"(i32* noalias readonly align 4 dereferenceable(4) %_3, i32* noalias readonly align 4 dereferenceable(4) %_4)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb3, label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast { i32, i32 }* %0 to i32*
  store i32 0, i32* %1, align 4
  br label %bb7

bb3:                                              ; preds = %bb1
  %_7 = bitcast { i32, i32 }* %self to i32*
; call core::clone::impls::<impl core::clone::Clone for i32>::clone
  %_6 = call i32 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$i32$GT$5clone17h611650397af4061cE"(i32* noalias readonly align 4 dereferenceable(4) %_7)
  br label %bb4

bb4:                                              ; preds = %bb3
; call <i32 as core::iter::range::Step>::forward_unchecked
  %n = call i32 @"_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hf25aa384e02aa40cE"(i32 %_6, i64 1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_10 = bitcast { i32, i32 }* %self to i32*
; call core::mem::replace
  %_8 = call i32 @_ZN4core3mem7replace17h55d79d850bf9207dE(i32* align 4 dereferenceable(4) %_10, i32 %n)
  br label %bb6

bb6:                                              ; preds = %bb5
  %2 = bitcast { i32, i32 }* %0 to %"core::option::Option<i32>::Some"*
  %3 = getelementptr inbounds %"core::option::Option<i32>::Some", %"core::option::Option<i32>::Some"* %2, i32 0, i32 1
  store i32 %_8, i32* %3, align 4
  %4 = bitcast { i32, i32 }* %0 to i32*
  store i32 1, i32* %4, align 4
  br label %bb7

bb7:                                              ; preds = %bb2, %bb6
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %6 = load i32, i32* %5, align 4, !range !6
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = insertvalue { i32, i32 } undef, i32 %6, 0
  %10 = insertvalue { i32, i32 } %9, i32 %8, 1
  ret { i32, i32 } %10
}

; core::clone::impls::<impl core::clone::Clone for i32>::clone
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$i32$GT$5clone17h611650397af4061cE"(i32* noalias readonly align 4 dereferenceable(4) %self) unnamed_addr #2 {
start:
  %0 = load i32, i32* %self, align 4
  ret i32 %0
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h37ceb380e43f58ebE"() unnamed_addr #2 {
start:
; call <std::process::ExitCode as std::process::Termination>::report
  %0 = call i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17hce96e8b5282d997cE"(i8 0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; <I as core::iter::traits::collect::IntoIterator>::into_iter
; Function Attrs: nonlazybind uwtable
define internal { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2fa0aa9b71c3449fE"(i32 %self.0, i32 %self.1) unnamed_addr #1 {
start:
  %0 = insertvalue { i32, i32 } undef, i32 %self.0, 0
  %1 = insertvalue { i32, i32 } %0, i32 %self.1, 1
  ret { i32, i32 } %1
}

; <std::process::ExitCode as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17hce96e8b5282d997cE"(i8 %0) unnamed_addr #2 {
start:
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
; call std::sys::unix::process::process_common::ExitCode::as_i32
  %1 = call i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h6900582fe1526ffaE(i8* noalias readonly align 1 dereferenceable(1) %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; sqrt::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4sqrt4main17h7687df2e682eefe0E() unnamed_addr #1 {
start:
  %_12 = alloca double, align 8
  %_10 = alloca i64*, align 8
  %_9 = alloca [1 x { i8*, i64* }], align 8
  %_2 = alloca %"core::fmt::Arguments", align 8
  %_17 = load [2 x { [0 x i8]*, i64 }]*, [2 x { [0 x i8]*, i64 }]** bitcast (<{ i8*, [0 x i8] }>* @0 to [2 x { [0 x i8]*, i64 }]**), align 8, !nonnull !3
  %_3.0 = bitcast [2 x { [0 x i8]*, i64 }]* %_17 to [0 x { [0 x i8]*, i64 }]*
; call sqrt::my_sqrt
  %0 = call double @_ZN4sqrt7my_sqrt17hbeba02cc7504501bE(double 1.231230e+02)
  store double %0, double* %_12, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i64** %_10 to double**
  store double* %_12, double** %1, align 8
  %2 = bitcast i64** %_10 to double**
  %arg0 = load double*, double** %2, align 8, !nonnull !3
; call core::fmt::ArgumentV1::new
  %3 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17ha76f5706c54e2a76E(double* noalias readonly align 8 dereferenceable(8) %arg0, i1 (double*, %"core::fmt::Formatter"*)* nonnull @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17h1483b0bc41d4be75E")
  %_14.0 = extractvalue { i8*, i64* } %3, 0
  %_14.1 = extractvalue { i8*, i64* } %3, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast [1 x { i8*, i64* }]* %_9 to { i8*, i64* }*
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %4, i32 0, i32 0
  store i8* %_14.0, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %4, i32 0, i32 1
  store i64* %_14.1, i64** %6, align 8
  %_6.0 = bitcast [1 x { i8*, i64* }]* %_9 to [0 x { i8*, i64* }]*
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h3c31838e2669cacdE(%"core::fmt::Arguments"* noalias nocapture sret dereferenceable(48) %_2, [0 x { [0 x i8]*, i64 }]* noalias nonnull readonly align 8 %_3.0, i64 2, [0 x { i8*, i64* }]* noalias nonnull readonly align 8 %_6.0, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hd9977679df68edc4E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_2)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; sqrt::my_fabs
; Function Attrs: nonlazybind uwtable
define internal double @_ZN4sqrt7my_fabs17h9f0751a7073f77a0E(double %x) unnamed_addr #1 {
start:
  %0 = alloca double, align 8
  %_2 = fcmp olt double %x, 0.000000e+00
  br i1 %_2, label %bb2, label %bb1

bb1:                                              ; preds = %start
  store double %x, double* %0, align 8
  br label %bb3

bb2:                                              ; preds = %start
  %1 = fneg double %x
  store double %1, double* %0, align 8
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %2 = load double, double* %0, align 8
  ret double %2
}

; sqrt::my_sqrt
; Function Attrs: nonlazybind uwtable
define internal double @_ZN4sqrt7my_sqrt17hbeba02cc7504501bE(double %val) unnamed_addr #1 {
start:
  %_12 = alloca { i32, i32 }, align 4
  %iter = alloca { i32, i32 }, align 4
  %_9 = alloca { i32, i32 }, align 4
  %flag = alloca i8, align 1
  %x = alloca double, align 8
  %0 = alloca double, align 8
  %1 = fdiv double %val, 1.000000e+01
  store double %1, double* %x, align 8
  store i8 0, i8* %flag, align 1
  %_6 = fcmp oeq double %val, 0.000000e+00
  br i1 %_6, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i32, i32 }* %_9 to i32*
  store i32 1, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_9, i32 0, i32 1
  store i32 20, i32* %3, align 4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_9, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_9, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %8 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2fa0aa9b71c3449fE"(i32 %5, i32 %7)
  %_8.0 = extractvalue { i32, i32 } %8, 0
  %_8.1 = extractvalue { i32, i32 } %8, 1
  br label %bb3

bb2:                                              ; preds = %start
  store double 0.000000e+00, double* %0, align 8
  br label %bb15

bb3:                                              ; preds = %bb1
  %9 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %iter, i32 0, i32 0
  store i32 %_8.0, i32* %9, align 4
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %iter, i32 0, i32 1
  store i32 %_8.1, i32* %10, align 4
  br label %bb4

bb4:                                              ; preds = %bb14, %bb3
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %11 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hdd82755dbf6593f0E"({ i32, i32 }* align 4 dereferenceable(8) %iter)
  store { i32, i32 } %11, { i32, i32 }* %_12, align 4
  br label %bb5

bb5:                                              ; preds = %bb4
  %12 = bitcast { i32, i32 }* %_12 to i32*
  %13 = load i32, i32* %12, align 4, !range !6
  %_15 = zext i32 %13 to i64
  switch i64 %_15, label %bb7 [
    i64 0, label %bb6
    i64 1, label %bb8
  ]

bb6:                                              ; preds = %bb5
  %14 = load double, double* %x, align 8
  store double %14, double* %0, align 8
  br label %bb15

bb7:                                              ; preds = %bb5
  unreachable

bb8:                                              ; preds = %bb5
  %15 = bitcast { i32, i32 }* %_12 to %"core::option::Option<i32>::Some"*
  %16 = getelementptr inbounds %"core::option::Option<i32>::Some", %"core::option::Option<i32>::Some"* %15, i32 0, i32 1
  %val1 = load i32, i32* %16, align 4
  %17 = load i8, i8* %flag, align 1, !range !4
  %_20 = trunc i8 %17 to i1
  %_19 = xor i1 %_20, true
  br i1 %_19, label %bb10, label %bb9

bb9:                                              ; preds = %bb8
  br label %bb14

bb10:                                             ; preds = %bb8
  %_25 = load double, double* %x, align 8
; call std::f64::<impl f64>::powi
  %_24 = call double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$4powi17h041ee67bdccbd097E"(double %_25, i32 2)
  br label %bb11

bb11:                                             ; preds = %bb10
  %_22 = fsub double %val, %_24
  %_27 = load double, double* %x, align 8
  %_26 = fmul double 2.000000e+00, %_27
  %dx = fdiv double %_22, %_26
  %18 = load double, double* %x, align 8
  %19 = fadd double %18, %dx
  store double %19, double* %x, align 8
  %_32 = load double, double* %x, align 8
; call std::f64::<impl f64>::powi
  %_31 = call double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$4powi17h041ee67bdccbd097E"(double %_32, i32 2)
  br label %bb12

bb12:                                             ; preds = %bb11
  %diff = fsub double %val, %_31
; call sqrt::my_fabs
  %_33 = call double @_ZN4sqrt7my_fabs17h9f0751a7073f77a0E(double %diff)
  br label %bb13

bb13:                                             ; preds = %bb12
  %20 = fcmp ole double %_33, 1.000000e-05
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %flag, align 1
  br label %bb14

bb14:                                             ; preds = %bb9, %bb13
  br label %bb4

bb15:                                             ; preds = %bb6, %bb2
  %22 = load double, double* %0, align 8
  ret double %22
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #3

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17ha12a50f31e33d94fE({}* nonnull align 1, [3 x i64]* noalias readonly align 8 dereferenceable(24), i64, i8**) unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.powi.f64(double, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; core::fmt::float::<impl core::fmt::Display for f64>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17h1483b0bc41d4be75E"(double* noalias readonly align 8 dereferenceable(8), %"core::fmt::Formatter"* align 8 dereferenceable(64)) unnamed_addr #1

; std::io::stdio::_print
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17hd9977679df68edc4E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind
define i32 @main(i32 %0, i8** %1) unnamed_addr #6 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = call i64 @_ZN3std2rt10lang_start17h727e23ab8d8918e8E(void ()* @_ZN4sqrt4main17h7687df2e682eefe0E, i64 %2, i8** %1)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

attributes #0 = { noinline nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #4 = { nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nonlazybind "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{}
!4 = !{i8 0, i8 2}
!5 = !{i32 3109499}
!6 = !{i32 0, i32 2}

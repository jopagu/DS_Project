target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-linux-gnu"
declare ccc i8* @memcpy$def(i8*, i8*, i64)
declare ccc i8* @memmove$def(i8*, i8*, i64)
declare ccc i8* @memset$def(i8*, i64, i64)
declare ccc i64 @newSpark$def(i8*, i8*)
!0 = metadata !{metadata !"top", i8* null}
!1 = metadata !{metadata !"stack", metadata !0}
!2 = metadata !{metadata !"heap", metadata !0}
!3 = metadata !{metadata !"rx", metadata !2}
!4 = metadata !{metadata !"base", metadata !0}
!5 = metadata !{metadata !"other", metadata !0}
%__stginit_Main_struct = type <{}>
@__stginit_Main$def = internal global %__stginit_Main_struct<{}>
@__stginit_Main = alias i8* bitcast (%__stginit_Main_struct* @__stginit_Main$def to i8*)
%Main_myFabs_closure_struct = type <{i64}>
@Main_myFabs_closure$def = internal global %Main_myFabs_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_myFabs_info$def to i64)}>
@Main_myFabs_closure = alias i8* bitcast (%Main_myFabs_closure_struct* @Main_myFabs_closure$def to i8*)
@Main_myFabs_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_myFabs_info$def to i8*)
%Main_myFabs_entry_struct = type <{i64, i64, i64}>
@Main_myFabs_info_itable$def = internal constant %Main_myFabs_entry_struct<{i64 4294967301, i64 0, i64 15}>, section "X98A__STRIP,__me1", align 8
@Main_myFabs_info_itable = alias i8* bitcast (%Main_myFabs_entry_struct* @Main_myFabs_info_itable$def to i8*)
define cc 10 void @Main_myFabs_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind section "X98A__STRIP,__me2"
{
c40j:
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  %ln40I = load i64** %Sp_Var
  %ln40J = getelementptr inbounds i64* %ln40I, i32 -1
  %ln40K = ptrtoint i64* %ln40J to i64
  %ln40L = icmp ult i64 %ln40K, %SpLim_Arg
  br i1 %ln40L, label %c40k, label %c40l
c40l:
  %ln40N = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c40g_info$def to i64
  %ln40M = load i64** %Sp_Var
  %ln40O = getelementptr inbounds i64* %ln40M, i32 -1
  store i64 %ln40N, i64* %ln40O, !tbaa !1
  %ln40P = load i64* %R2_Var
  store i64 %ln40P, i64* %R1_Var
  %ln40Q = load i64** %Sp_Var
  %ln40R = getelementptr inbounds i64* %ln40Q, i32 -1
  %ln40S = ptrtoint i64* %ln40R to i64
  %ln40T = inttoptr i64 %ln40S to i64*
  store i64* %ln40T, i64** %Sp_Var
  %ln40U = load i64* %R1_Var
  %ln40V = and i64 %ln40U, 7
  %ln40W = icmp ne i64 %ln40V, 0
  br i1 %ln40W, label %u40H, label %c40h
c40h:
  %ln40Y = load i64* %R1_Var
  %ln40Z = inttoptr i64 %ln40Y to i64*
  %ln410 = load i64* %ln40Z, !tbaa !3
  %ln411 = inttoptr i64 %ln410 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln412 = load i64** %Sp_Var
  %ln413 = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln411( i64* %Base_Arg, i64* %ln412, i64* %Hp_Arg, i64 %ln413, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
u40H:
  %ln414 = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c40g_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln415 = load i64** %Sp_Var
  %ln416 = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln414( i64* %Base_Arg, i64* %ln415, i64* %Hp_Arg, i64 %ln416, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c40k:
  %ln417 = load i64* %R2_Var
  store i64 %ln417, i64* %R2_Var
  %ln418 = ptrtoint %Main_myFabs_closure_struct* @Main_myFabs_closure$def to i64
  store i64 %ln418, i64* %R1_Var
  %ln419 = getelementptr inbounds i64* %Base_Arg, i32 -1
  %ln41a = bitcast i64* %ln419 to i64*
  %ln41b = load i64* %ln41a, !tbaa !4
  %ln41c = inttoptr i64 %ln41b to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln41d = load i64** %Sp_Var
  %ln41e = load i64* %R1_Var
  %ln41f = load i64* %R2_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln41c( i64* %Base_Arg, i64* %ln41d, i64* %Hp_Arg, i64 %ln41e, i64 %ln41f, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c40g_info = alias internal i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c40g_info$def to i8*)
%c40g_entry_struct = type <{i64, i64}>
@c40g_info_itable$def = internal constant %c40g_entry_struct<{i64 0, i64 32}>, section "X98A__STRIP,__me3", align 8
@c40g_info_itable = alias internal i8* bitcast (%c40g_entry_struct* @c40g_info_itable$def to i8*)
define internal cc 10 void @c40g_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind section "X98A__STRIP,__me4"
{
c40g:
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %ls3Z6 = alloca double, i32 1
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %ln41g = load i64** %Hp_Var
  %ln41h = getelementptr inbounds i64* %ln41g, i32 2
  %ln41i = ptrtoint i64* %ln41h to i64
  %ln41j = inttoptr i64 %ln41i to i64*
  store i64* %ln41j, i64** %Hp_Var
  %ln41k = load i64** %Hp_Var
  %ln41l = ptrtoint i64* %ln41k to i64
  %ln41m = getelementptr inbounds i64* %Base_Arg, i32 107
  %ln41n = bitcast i64* %ln41m to i64*
  %ln41o = load i64* %ln41n, !tbaa !4
  %ln41p = icmp ugt i64 %ln41l, %ln41o
  br i1 %ln41p, label %c40q, label %c40p
c40p:
  %ln41s = load i64* %R1_Var
  %ln41t = add i64 %ln41s, 7
  %ln41u = inttoptr i64 %ln41t to double*
  %ln41v = load double* %ln41u, !tbaa !3
  store double %ln41v, double* %ls3Z6
  %ln41w = load double* %ls3Z6
  %ln41x = fcmp olt double %ln41w, 0x0000000000000000
  br i1 %ln41x, label %c40F, label %c40G
c40G:
  %ln41y = load i64** %Hp_Var
  %ln41z = getelementptr inbounds i64* %ln41y, i32 -2
  %ln41A = ptrtoint i64* %ln41z to i64
  %ln41B = inttoptr i64 %ln41A to i64*
  store i64* %ln41B, i64** %Hp_Var
  %ln41C = load i64* %R1_Var
  %ln41D = and i64 %ln41C, -8
  store i64 %ln41D, i64* %R1_Var
  %ln41E = load i64** %Sp_Var
  %ln41F = getelementptr inbounds i64* %ln41E, i32 1
  %ln41G = ptrtoint i64* %ln41F to i64
  %ln41H = inttoptr i64 %ln41G to i64*
  store i64* %ln41H, i64** %Sp_Var
  %ln41J = load i64* %R1_Var
  %ln41K = inttoptr i64 %ln41J to i64*
  %ln41L = load i64* %ln41K, !tbaa !3
  %ln41M = inttoptr i64 %ln41L to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln41N = load i64** %Sp_Var
  %ln41O = load i64** %Hp_Var
  %ln41P = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln41M( i64* %Base_Arg, i64* %ln41N, i64* %ln41O, i64 %ln41P, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c40F:
  %ln41R = ptrtoint i8* @ghczmprim_GHCziTypes_Dzh_con_info to i64
  %ln41Q = load i64** %Hp_Var
  %ln41S = getelementptr inbounds i64* %ln41Q, i32 -1
  store i64 %ln41R, i64* %ln41S, !tbaa !2
  %ln41U = load double* %ls3Z6
  %ln41V = fsub double 0x8000000000000000, %ln41U
  %ln41T = load i64** %Hp_Var
  %ln41W = getelementptr inbounds i64* %ln41T, i32 0
  %ln41X = bitcast i64* %ln41W to double*
  store double %ln41V, double* %ln41X, !tbaa !2
  %ln41Z = load i64** %Hp_Var
  %ln420 = ptrtoint i64* %ln41Z to i64
  %ln421 = add i64 %ln420, -7
  store i64 %ln421, i64* %R1_Var
  %ln422 = load i64** %Sp_Var
  %ln423 = getelementptr inbounds i64* %ln422, i32 1
  %ln424 = ptrtoint i64* %ln423 to i64
  %ln425 = inttoptr i64 %ln424 to i64*
  store i64* %ln425, i64** %Sp_Var
  %ln426 = load i64** %Sp_Var
  %ln427 = getelementptr inbounds i64* %ln426, i32 0
  %ln428 = bitcast i64* %ln427 to i64*
  %ln429 = load i64* %ln428, !tbaa !1
  %ln42a = inttoptr i64 %ln429 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln42b = load i64** %Sp_Var
  %ln42c = load i64** %Hp_Var
  %ln42d = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln42a( i64* %Base_Arg, i64* %ln42b, i64* %ln42c, i64 %ln42d, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c40q:
  %ln42e = getelementptr inbounds i64* %Base_Arg, i32 113
  store i64 16, i64* %ln42e, !tbaa !4
  %ln42f = load i64* %R1_Var
  store i64 %ln42f, i64* %R1_Var
  %ln42g = bitcast i8* @stg_gc_unpt_r1 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln42h = load i64** %Sp_Var
  %ln42i = load i64** %Hp_Var
  %ln42j = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln42g( i64* %Base_Arg, i64* %ln42h, i64* %ln42i, i64 %ln42j, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%Main_mainzuzdszdwmySqrt_closure_struct = type <{i64}>
%Main_zdwmySqrt_closure_struct = type <{i64}>
@Main_mainzuzdszdwmySqrt_closure$def = internal global %Main_mainzuzdszdwmySqrt_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double, double)* @Main_mainzuzdszdwmySqrt_info$def to i64)}>
@Main_mainzuzdszdwmySqrt_closure = alias i8* bitcast (%Main_mainzuzdszdwmySqrt_closure_struct* @Main_mainzuzdszdwmySqrt_closure$def to i8*)
@Main_zdwmySqrt_closure$def = internal global %Main_zdwmySqrt_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* @Main_zdwmySqrt_info$def to i64)}>
@Main_zdwmySqrt_closure = alias i8* bitcast (%Main_zdwmySqrt_closure_struct* @Main_zdwmySqrt_closure$def to i8*)
@Main_mainzuzdszdwmySqrt_slow = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzuzdszdwmySqrt_slow$def to i8*)
define cc 10 void @Main_mainzuzdszdwmySqrt_slow$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind
{
c44E:
  %D2_Var = alloca double, i32 1
  store double undef, double* %D2_Var
  %D1_Var = alloca double, i32 1
  store double undef, double* %D1_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %ln47M = load i64** %Sp_Var
  %ln47N = getelementptr inbounds i64* %ln47M, i32 1
  %ln47O = bitcast i64* %ln47N to double*
  %ln47P = load double* %ln47O, !tbaa !1
  store double %ln47P, double* %D2_Var
  %ln47Q = load i64** %Sp_Var
  %ln47R = getelementptr inbounds i64* %ln47Q, i32 0
  %ln47S = bitcast i64* %ln47R to double*
  %ln47T = load double* %ln47S, !tbaa !1
  store double %ln47T, double* %D1_Var
  %ln47U = load i64* %R1_Var
  store i64 %ln47U, i64* %R1_Var
  %ln47V = load i64** %Sp_Var
  %ln47W = getelementptr inbounds i64* %ln47V, i32 2
  %ln47X = ptrtoint i64* %ln47W to i64
  %ln47Y = inttoptr i64 %ln47X to i64*
  store i64* %ln47Y, i64** %Sp_Var
  %ln47Z = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double, double)* @Main_mainzuzdszdwmySqrt_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double, double)*
  %ln480 = load i64** %Sp_Var
  %ln481 = load i64* %R1_Var
  %ln482 = load double* %D1_Var
  %ln483 = load double* %D2_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double, double)* %ln47Z( i64* %Base_Arg, i64* %ln480, i64* %Hp_Arg, i64 %ln481, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg, double %ln482, double %ln483 ) nounwind
  ret void
}
@s3Zn_info = alias internal i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s3Zn_info$def to i8*)
%s3Zn_entry_struct = type <{i64, i64}>
@s3Zn_info_itable$def = internal constant %s3Zn_entry_struct<{i64 8589934592, i64 21}>, section "X98A__STRIP,__me7", align 8
@s3Zn_info_itable = alias internal i8* bitcast (%s3Zn_entry_struct* @s3Zn_info_itable$def to i8*)
define internal cc 10 void @s3Zn_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind section "X98A__STRIP,__me8"
{
c459:
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %ls3Zb = alloca double, i32 1
  %ls3Zm = alloca double, i32 1
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %ln484 = load i64** %Hp_Var
  %ln485 = getelementptr inbounds i64* %ln484, i32 2
  %ln486 = ptrtoint i64* %ln485 to i64
  %ln487 = inttoptr i64 %ln486 to i64*
  store i64* %ln487, i64** %Hp_Var
  %ln488 = load i64** %Hp_Var
  %ln489 = ptrtoint i64* %ln488 to i64
  %ln48a = getelementptr inbounds i64* %Base_Arg, i32 107
  %ln48b = bitcast i64* %ln48a to i64*
  %ln48c = load i64* %ln48b, !tbaa !4
  %ln48d = icmp ugt i64 %ln489, %ln48c
  br i1 %ln48d, label %c45l, label %c45k
c45k:
  %ln48g = load i64* %R1_Var
  %ln48h = add i64 %ln48g, 16
  %ln48i = inttoptr i64 %ln48h to double*
  %ln48j = load double* %ln48i, !tbaa !3
  store double %ln48j, double* %ls3Zb
  %ln48k = load double* %ls3Zb
  %ln48n = load i64* %R1_Var
  %ln48o = add i64 %ln48n, 24
  %ln48p = inttoptr i64 %ln48o to double*
  %ln48q = load double* %ln48p, !tbaa !3
  %ln48r = load double* %ls3Zb
  %ln48s = load double* %ls3Zb
  %ln48t = fadd double %ln48r, %ln48s
  %ln48u = fdiv double %ln48q, %ln48t
  %ln48v = fadd double %ln48k, %ln48u
  store double %ln48v, double* %ls3Zm
  %ln48x = ptrtoint i8* @ghczmprim_GHCziTypes_Dzh_con_info to i64
  %ln48w = load i64** %Hp_Var
  %ln48y = getelementptr inbounds i64* %ln48w, i32 -1
  store i64 %ln48x, i64* %ln48y, !tbaa !2
  %ln48A = load double* %ls3Zm
  %ln48z = load i64** %Hp_Var
  %ln48B = getelementptr inbounds i64* %ln48z, i32 0
  %ln48C = bitcast i64* %ln48B to double*
  store double %ln48A, double* %ln48C, !tbaa !2
  %ln48E = load i64** %Hp_Var
  %ln48F = ptrtoint i64* %ln48E to i64
  %ln48G = add i64 %ln48F, -7
  store i64 %ln48G, i64* %R1_Var
  %ln48H = getelementptr inbounds i64* %Sp_Arg, i32 0
  %ln48I = bitcast i64* %ln48H to i64*
  %ln48J = load i64* %ln48I, !tbaa !1
  %ln48K = inttoptr i64 %ln48J to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln48L = load i64** %Hp_Var
  %ln48M = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln48K( i64* %Base_Arg, i64* %Sp_Arg, i64* %ln48L, i64 %ln48M, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c45l:
  %ln48N = getelementptr inbounds i64* %Base_Arg, i32 113
  store i64 16, i64* %ln48N, !tbaa !4
  %ln48O = load i64* %R1_Var
  store i64 %ln48O, i64* %R1_Var
  %ln48P = getelementptr inbounds i64* %Base_Arg, i32 -2
  %ln48Q = bitcast i64* %ln48P to i64*
  %ln48R = load i64* %ln48Q, !tbaa !4
  %ln48S = inttoptr i64 %ln48R to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln48T = load i64** %Hp_Var
  %ln48U = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln48S( i64* %Base_Arg, i64* %Sp_Arg, i64* %ln48T, i64 %ln48U, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@s3Zu_info = alias internal i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s3Zu_info$def to i8*)
%s3Zu_entry_struct = type <{i64, i64}>
@s3Zu_info_itable$def = internal constant %s3Zu_entry_struct<{i64 8589934592, i64 21}>, section "X98A__STRIP,__me9", align 8
@s3Zu_info_itable = alias internal i8* bitcast (%s3Zu_entry_struct* @s3Zu_info_itable$def to i8*)
define internal cc 10 void @s3Zu_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind section "X98A__STRIP,__me10"
{
c45B:
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %ls3Zb = alloca double, i32 1
  %ls3Zt = alloca double, i32 1
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %ln48V = load i64** %Hp_Var
  %ln48W = getelementptr inbounds i64* %ln48V, i32 2
  %ln48X = ptrtoint i64* %ln48W to i64
  %ln48Y = inttoptr i64 %ln48X to i64*
  store i64* %ln48Y, i64** %Hp_Var
  %ln48Z = load i64** %Hp_Var
  %ln490 = ptrtoint i64* %ln48Z to i64
  %ln491 = getelementptr inbounds i64* %Base_Arg, i32 107
  %ln492 = bitcast i64* %ln491 to i64*
  %ln493 = load i64* %ln492, !tbaa !4
  %ln494 = icmp ugt i64 %ln490, %ln493
  br i1 %ln494, label %c45N, label %c45M
c45M:
  %ln497 = load i64* %R1_Var
  %ln498 = add i64 %ln497, 16
  %ln499 = inttoptr i64 %ln498 to double*
  %ln49a = load double* %ln499, !tbaa !3
  store double %ln49a, double* %ls3Zb
  %ln49b = load double* %ls3Zb
  %ln49e = load i64* %R1_Var
  %ln49f = add i64 %ln49e, 24
  %ln49g = inttoptr i64 %ln49f to double*
  %ln49h = load double* %ln49g, !tbaa !3
  %ln49i = load double* %ls3Zb
  %ln49j = load double* %ls3Zb
  %ln49k = fadd double %ln49i, %ln49j
  %ln49l = fdiv double %ln49h, %ln49k
  %ln49m = fadd double %ln49b, %ln49l
  store double %ln49m, double* %ls3Zt
  %ln49o = ptrtoint i8* @ghczmprim_GHCziTypes_Dzh_con_info to i64
  %ln49n = load i64** %Hp_Var
  %ln49p = getelementptr inbounds i64* %ln49n, i32 -1
  store i64 %ln49o, i64* %ln49p, !tbaa !2
  %ln49r = load double* %ls3Zt
  %ln49q = load i64** %Hp_Var
  %ln49s = getelementptr inbounds i64* %ln49q, i32 0
  %ln49t = bitcast i64* %ln49s to double*
  store double %ln49r, double* %ln49t, !tbaa !2
  %ln49v = load i64** %Hp_Var
  %ln49w = ptrtoint i64* %ln49v to i64
  %ln49x = add i64 %ln49w, -7
  store i64 %ln49x, i64* %R1_Var
  %ln49y = getelementptr inbounds i64* %Sp_Arg, i32 0
  %ln49z = bitcast i64* %ln49y to i64*
  %ln49A = load i64* %ln49z, !tbaa !1
  %ln49B = inttoptr i64 %ln49A to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln49C = load i64** %Hp_Var
  %ln49D = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln49B( i64* %Base_Arg, i64* %Sp_Arg, i64* %ln49C, i64 %ln49D, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c45N:
  %ln49E = getelementptr inbounds i64* %Base_Arg, i32 113
  store i64 16, i64* %ln49E, !tbaa !4
  %ln49F = load i64* %R1_Var
  store i64 %ln49F, i64* %R1_Var
  %ln49G = getelementptr inbounds i64* %Base_Arg, i32 -2
  %ln49H = bitcast i64* %ln49G to i64*
  %ln49I = load i64* %ln49H, !tbaa !4
  %ln49J = inttoptr i64 %ln49I to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln49K = load i64** %Hp_Var
  %ln49L = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln49J( i64* %Base_Arg, i64* %Sp_Arg, i64* %ln49K, i64 %ln49L, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@Main_mainzuzdszdwmySqrt_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double, double)* @Main_mainzuzdszdwmySqrt_info$def to i8*)
%Main_mainzuzdszdwmySqrt_entry_struct = type <{i64, i64, i64, i64, i64, i64}>
@Main_mainzuzdszdwmySqrt_info_itable$def = internal constant %Main_mainzuzdszdwmySqrt_entry_struct<{i64 add (i64 sub (i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzuzdszdwmySqrt_slow$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double, double)* @Main_mainzuzdszdwmySqrt_info$def to i64)),i64 0), i64 194, i64 0, i64 8589934592, i64 0, i64 15}>, section "X98A__STRIP,__me11", align 8
@Main_mainzuzdszdwmySqrt_info_itable = alias i8* bitcast (%Main_mainzuzdszdwmySqrt_entry_struct* @Main_mainzuzdszdwmySqrt_info_itable$def to i8*)
define cc 10 void @Main_mainzuzdszdwmySqrt_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg, double %D1_Arg, double %D2_Arg) align 8 nounwind section "X98A__STRIP,__me12"
{
c45O:
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %ls3Ze = alloca double, i32 1
  %ls3Zb = alloca double, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %D1_Var = alloca double, i32 1
  store double %D1_Arg, double* %D1_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %ln49M = load i64** %Hp_Var
  %ln49N = getelementptr inbounds i64* %ln49M, i32 4
  %ln49O = ptrtoint i64* %ln49N to i64
  %ln49P = inttoptr i64 %ln49O to i64*
  store i64* %ln49P, i64** %Hp_Var
  %ln49Q = load i64** %Hp_Var
  %ln49R = ptrtoint i64* %ln49Q to i64
  %ln49S = getelementptr inbounds i64* %Base_Arg, i32 107
  %ln49T = bitcast i64* %ln49S to i64*
  %ln49U = load i64* %ln49T, !tbaa !4
  %ln49V = icmp ugt i64 %ln49R, %ln49U
  br i1 %ln49V, label %c45S, label %c45R
c45R:
  %ln49W = load double* %D1_Var
  %ln49X = fcmp oeq double %ln49W, 0x0000000000000000
  br i1 %ln49X, label %c46f, label %c46g
c46g:
  %ln49Y = load double* %D1_Var
  %ln49Z = fmul double %D2_Arg, %D2_Arg
  %ln4a0 = fsub double %ln49Y, %ln49Z
  store double %ln4a0, double* %ls3Ze
  %ln4a1 = load double* %ls3Ze
  %ln4a2 = fcmp olt double %ln4a1, 0x0000000000000000
  br i1 %ln4a2, label %c46b, label %c46c
c46c:
  store double %D2_Arg, double* %ls3Zb
  %ln4a3 = load double* %ls3Ze
  %ln4a4 = fcmp ole double %ln4a3, 0x3EE4F8B588E368F1
  br i1 %ln4a4, label %c466, label %c460
c460:
  %ln4a6 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s3Zn_info$def to i64
  %ln4a5 = load i64** %Hp_Var
  %ln4a7 = getelementptr inbounds i64* %ln4a5, i32 -3
  store i64 %ln4a6, i64* %ln4a7, !tbaa !2
  %ln4a9 = load double* %ls3Zb
  %ln4a8 = load i64** %Hp_Var
  %ln4aa = getelementptr inbounds i64* %ln4a8, i32 -1
  %ln4ab = bitcast i64* %ln4aa to double*
  store double %ln4a9, double* %ln4ab, !tbaa !2
  %ln4ad = load double* %ls3Ze
  %ln4ac = load i64** %Hp_Var
  %ln4ae = getelementptr inbounds i64* %ln4ac, i32 0
  %ln4af = bitcast i64* %ln4ae to double*
  store double %ln4ad, double* %ln4af, !tbaa !2
  %ln4ag = load i64** %Hp_Var
  %ln4ah = getelementptr inbounds i64* %ln4ag, i32 -3
  %ln4ai = ptrtoint i64* %ln4ah to i64
  store i64 %ln4ai, i64* %R2_Var
  %ln4aj = load double* %D1_Var
  store double %ln4aj, double* %D1_Var
  %ln4ak = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* @Main_zdwmySqrt_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)*
  %ln4al = load i64** %Sp_Var
  %ln4am = load i64** %Hp_Var
  %ln4an = load i64* %R1_Var
  %ln4ao = load i64* %R2_Var
  %ln4ap = load double* %D1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* %ln4ak( i64* %Base_Arg, i64* %ln4al, i64* %ln4am, i64 %ln4an, i64 %ln4ao, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg, double %ln4ap ) nounwind
  ret void
c466:
  %ln4aq = load i64** %Hp_Var
  %ln4ar = getelementptr inbounds i64* %ln4aq, i32 -4
  %ln4as = ptrtoint i64* %ln4ar to i64
  %ln4at = inttoptr i64 %ln4as to i64*
  store i64* %ln4at, i64** %Hp_Var
  %ln4au = load double* %ls3Zb
  store double %ln4au, double* %D1_Var
  %ln4av = load i64** %Sp_Var
  %ln4aw = getelementptr inbounds i64* %ln4av, i32 0
  %ln4ax = bitcast i64* %ln4aw to i64*
  %ln4ay = load i64* %ln4ax, !tbaa !1
  %ln4az = inttoptr i64 %ln4ay to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)*
  %ln4aA = load i64** %Sp_Var
  %ln4aB = load i64** %Hp_Var
  %ln4aC = load i64* %R1_Var
  %ln4aD = load double* %D1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* %ln4az( i64* %Base_Arg, i64* %ln4aA, i64* %ln4aB, i64 %ln4aC, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg, double %ln4aD ) nounwind
  ret void
c46b:
  store double %D2_Arg, double* %ls3Zb
  %ln4aE = load double* %ls3Ze
  %ln4aF = fsub double 0x8000000000000000, %ln4aE
  %ln4aG = fcmp ole double %ln4aF, 0x3EE4F8B588E368F1
  br i1 %ln4aG, label %c466, label %c467
c467:
  %ln4aI = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s3Zu_info$def to i64
  %ln4aH = load i64** %Hp_Var
  %ln4aJ = getelementptr inbounds i64* %ln4aH, i32 -3
  store i64 %ln4aI, i64* %ln4aJ, !tbaa !2
  %ln4aL = load double* %ls3Zb
  %ln4aK = load i64** %Hp_Var
  %ln4aM = getelementptr inbounds i64* %ln4aK, i32 -1
  %ln4aN = bitcast i64* %ln4aM to double*
  store double %ln4aL, double* %ln4aN, !tbaa !2
  %ln4aP = load double* %ls3Ze
  %ln4aO = load i64** %Hp_Var
  %ln4aQ = getelementptr inbounds i64* %ln4aO, i32 0
  %ln4aR = bitcast i64* %ln4aQ to double*
  store double %ln4aP, double* %ln4aR, !tbaa !2
  %ln4aS = load i64** %Hp_Var
  %ln4aT = getelementptr inbounds i64* %ln4aS, i32 -3
  %ln4aU = ptrtoint i64* %ln4aT to i64
  store i64 %ln4aU, i64* %R2_Var
  %ln4aV = load double* %D1_Var
  store double %ln4aV, double* %D1_Var
  %ln4aW = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* @Main_zdwmySqrt_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)*
  %ln4aX = load i64** %Sp_Var
  %ln4aY = load i64** %Hp_Var
  %ln4aZ = load i64* %R1_Var
  %ln4b0 = load i64* %R2_Var
  %ln4b1 = load double* %D1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* %ln4aW( i64* %Base_Arg, i64* %ln4aX, i64* %ln4aY, i64 %ln4aZ, i64 %ln4b0, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg, double %ln4b1 ) nounwind
  ret void
c46f:
  %ln4b2 = load i64** %Hp_Var
  %ln4b3 = getelementptr inbounds i64* %ln4b2, i32 -4
  %ln4b4 = ptrtoint i64* %ln4b3 to i64
  %ln4b5 = inttoptr i64 %ln4b4 to i64*
  store i64* %ln4b5, i64** %Hp_Var
  store double 0x0000000000000000, double* %D1_Var
  %ln4b6 = load i64** %Sp_Var
  %ln4b7 = getelementptr inbounds i64* %ln4b6, i32 0
  %ln4b8 = bitcast i64* %ln4b7 to i64*
  %ln4b9 = load i64* %ln4b8, !tbaa !1
  %ln4ba = inttoptr i64 %ln4b9 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)*
  %ln4bb = load i64** %Sp_Var
  %ln4bc = load i64** %Hp_Var
  %ln4bd = load i64* %R1_Var
  %ln4be = load double* %D1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* %ln4ba( i64* %Base_Arg, i64* %ln4bb, i64* %ln4bc, i64 %ln4bd, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg, double %ln4be ) nounwind
  ret void
c45S:
  %ln4bf = getelementptr inbounds i64* %Base_Arg, i32 113
  store i64 32, i64* %ln4bf, !tbaa !4
  %ln4bg = ptrtoint %Main_mainzuzdszdwmySqrt_closure_struct* @Main_mainzuzdszdwmySqrt_closure$def to i64
  store i64 %ln4bg, i64* %R1_Var
  %ln4bi = load double* %D1_Var
  %ln4bh = load i64** %Sp_Var
  %ln4bj = getelementptr inbounds i64* %ln4bh, i32 -2
  %ln4bk = bitcast i64* %ln4bj to double*
  store double %ln4bi, double* %ln4bk, !tbaa !1
  %ln4bl = load i64** %Sp_Var
  %ln4bm = getelementptr inbounds i64* %ln4bl, i32 -1
  %ln4bn = bitcast i64* %ln4bm to double*
  store double %D2_Arg, double* %ln4bn, !tbaa !1
  %ln4bo = load i64** %Sp_Var
  %ln4bp = getelementptr inbounds i64* %ln4bo, i32 -2
  %ln4bq = ptrtoint i64* %ln4bp to i64
  %ln4br = inttoptr i64 %ln4bq to i64*
  store i64* %ln4br, i64** %Sp_Var
  %ln4bs = getelementptr inbounds i64* %Base_Arg, i32 -1
  %ln4bt = bitcast i64* %ln4bs to i64*
  %ln4bu = load i64* %ln4bt, !tbaa !4
  %ln4bv = inttoptr i64 %ln4bu to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4bw = load i64** %Sp_Var
  %ln4bx = load i64** %Hp_Var
  %ln4by = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4bv( i64* %Base_Arg, i64* %ln4bw, i64* %ln4bx, i64 %ln4by, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@Main_zdwmySqrt_slow = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_zdwmySqrt_slow$def to i8*)
define cc 10 void @Main_zdwmySqrt_slow$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind
{
c42N:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %D1_Var = alloca double, i32 1
  store double undef, double* %D1_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %ln4bz = load i64** %Sp_Var
  %ln4bA = getelementptr inbounds i64* %ln4bz, i32 1
  %ln4bB = bitcast i64* %ln4bA to i64*
  %ln4bC = load i64* %ln4bB, !tbaa !1
  store i64 %ln4bC, i64* %R2_Var
  %ln4bD = load i64** %Sp_Var
  %ln4bE = getelementptr inbounds i64* %ln4bD, i32 0
  %ln4bF = bitcast i64* %ln4bE to double*
  %ln4bG = load double* %ln4bF, !tbaa !1
  store double %ln4bG, double* %D1_Var
  %ln4bH = load i64* %R1_Var
  store i64 %ln4bH, i64* %R1_Var
  %ln4bI = load i64** %Sp_Var
  %ln4bJ = getelementptr inbounds i64* %ln4bI, i32 2
  %ln4bK = ptrtoint i64* %ln4bJ to i64
  %ln4bL = inttoptr i64 %ln4bK to i64*
  store i64* %ln4bL, i64** %Sp_Var
  %ln4bM = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* @Main_zdwmySqrt_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)*
  %ln4bN = load i64** %Sp_Var
  %ln4bO = load i64* %R1_Var
  %ln4bP = load i64* %R2_Var
  %ln4bQ = load double* %D1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* %ln4bM( i64* %Base_Arg, i64* %ln4bN, i64* %Hp_Arg, i64 %ln4bO, i64 %ln4bP, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg, double %ln4bQ ) nounwind
  ret void
}
@s3ZK_info = alias internal i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s3ZK_info$def to i8*)
%s3ZK_entry_struct = type <{i64, i64}>
@s3ZK_info_itable$def = internal constant %s3ZK_entry_struct<{i64 8589934592, i64 21}>, section "X98A__STRIP,__me15", align 8
@s3ZK_info_itable = alias internal i8* bitcast (%s3ZK_entry_struct* @s3ZK_info_itable$def to i8*)
define internal cc 10 void @s3ZK_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind section "X98A__STRIP,__me16"
{
c46G:
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %ls3ZA = alloca double, i32 1
  %ls3ZJ = alloca double, i32 1
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %ln4bR = load i64** %Hp_Var
  %ln4bS = getelementptr inbounds i64* %ln4bR, i32 2
  %ln4bT = ptrtoint i64* %ln4bS to i64
  %ln4bU = inttoptr i64 %ln4bT to i64*
  store i64* %ln4bU, i64** %Hp_Var
  %ln4bV = load i64** %Hp_Var
  %ln4bW = ptrtoint i64* %ln4bV to i64
  %ln4bX = getelementptr inbounds i64* %Base_Arg, i32 107
  %ln4bY = bitcast i64* %ln4bX to i64*
  %ln4bZ = load i64* %ln4bY, !tbaa !4
  %ln4c0 = icmp ugt i64 %ln4bW, %ln4bZ
  br i1 %ln4c0, label %c46S, label %c46R
c46R:
  %ln4c3 = load i64* %R1_Var
  %ln4c4 = add i64 %ln4c3, 16
  %ln4c5 = inttoptr i64 %ln4c4 to double*
  %ln4c6 = load double* %ln4c5, !tbaa !3
  store double %ln4c6, double* %ls3ZA
  %ln4c7 = load double* %ls3ZA
  %ln4ca = load i64* %R1_Var
  %ln4cb = add i64 %ln4ca, 24
  %ln4cc = inttoptr i64 %ln4cb to double*
  %ln4cd = load double* %ln4cc, !tbaa !3
  %ln4ce = load double* %ls3ZA
  %ln4cf = load double* %ls3ZA
  %ln4cg = fadd double %ln4ce, %ln4cf
  %ln4ch = fdiv double %ln4cd, %ln4cg
  %ln4ci = fadd double %ln4c7, %ln4ch
  store double %ln4ci, double* %ls3ZJ
  %ln4ck = ptrtoint i8* @ghczmprim_GHCziTypes_Dzh_con_info to i64
  %ln4cj = load i64** %Hp_Var
  %ln4cl = getelementptr inbounds i64* %ln4cj, i32 -1
  store i64 %ln4ck, i64* %ln4cl, !tbaa !2
  %ln4cn = load double* %ls3ZJ
  %ln4cm = load i64** %Hp_Var
  %ln4co = getelementptr inbounds i64* %ln4cm, i32 0
  %ln4cp = bitcast i64* %ln4co to double*
  store double %ln4cn, double* %ln4cp, !tbaa !2
  %ln4cr = load i64** %Hp_Var
  %ln4cs = ptrtoint i64* %ln4cr to i64
  %ln4ct = add i64 %ln4cs, -7
  store i64 %ln4ct, i64* %R1_Var
  %ln4cu = getelementptr inbounds i64* %Sp_Arg, i32 0
  %ln4cv = bitcast i64* %ln4cu to i64*
  %ln4cw = load i64* %ln4cv, !tbaa !1
  %ln4cx = inttoptr i64 %ln4cw to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4cy = load i64** %Hp_Var
  %ln4cz = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4cx( i64* %Base_Arg, i64* %Sp_Arg, i64* %ln4cy, i64 %ln4cz, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c46S:
  %ln4cA = getelementptr inbounds i64* %Base_Arg, i32 113
  store i64 16, i64* %ln4cA, !tbaa !4
  %ln4cB = load i64* %R1_Var
  store i64 %ln4cB, i64* %R1_Var
  %ln4cC = getelementptr inbounds i64* %Base_Arg, i32 -2
  %ln4cD = bitcast i64* %ln4cC to i64*
  %ln4cE = load i64* %ln4cD, !tbaa !4
  %ln4cF = inttoptr i64 %ln4cE to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4cG = load i64** %Hp_Var
  %ln4cH = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4cF( i64* %Base_Arg, i64* %Sp_Arg, i64* %ln4cG, i64 %ln4cH, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@s3ZR_info = alias internal i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s3ZR_info$def to i8*)
%s3ZR_entry_struct = type <{i64, i64}>
@s3ZR_info_itable$def = internal constant %s3ZR_entry_struct<{i64 8589934592, i64 21}>, section "X98A__STRIP,__me17", align 8
@s3ZR_info_itable = alias internal i8* bitcast (%s3ZR_entry_struct* @s3ZR_info_itable$def to i8*)
define internal cc 10 void @s3ZR_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind section "X98A__STRIP,__me18"
{
c46Y:
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %ls3ZA = alloca double, i32 1
  %ls3ZQ = alloca double, i32 1
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %ln4cI = load i64** %Hp_Var
  %ln4cJ = getelementptr inbounds i64* %ln4cI, i32 2
  %ln4cK = ptrtoint i64* %ln4cJ to i64
  %ln4cL = inttoptr i64 %ln4cK to i64*
  store i64* %ln4cL, i64** %Hp_Var
  %ln4cM = load i64** %Hp_Var
  %ln4cN = ptrtoint i64* %ln4cM to i64
  %ln4cO = getelementptr inbounds i64* %Base_Arg, i32 107
  %ln4cP = bitcast i64* %ln4cO to i64*
  %ln4cQ = load i64* %ln4cP, !tbaa !4
  %ln4cR = icmp ugt i64 %ln4cN, %ln4cQ
  br i1 %ln4cR, label %c47a, label %c479
c479:
  %ln4cU = load i64* %R1_Var
  %ln4cV = add i64 %ln4cU, 16
  %ln4cW = inttoptr i64 %ln4cV to double*
  %ln4cX = load double* %ln4cW, !tbaa !3
  store double %ln4cX, double* %ls3ZA
  %ln4cY = load double* %ls3ZA
  %ln4d1 = load i64* %R1_Var
  %ln4d2 = add i64 %ln4d1, 24
  %ln4d3 = inttoptr i64 %ln4d2 to double*
  %ln4d4 = load double* %ln4d3, !tbaa !3
  %ln4d5 = load double* %ls3ZA
  %ln4d6 = load double* %ls3ZA
  %ln4d7 = fadd double %ln4d5, %ln4d6
  %ln4d8 = fdiv double %ln4d4, %ln4d7
  %ln4d9 = fadd double %ln4cY, %ln4d8
  store double %ln4d9, double* %ls3ZQ
  %ln4db = ptrtoint i8* @ghczmprim_GHCziTypes_Dzh_con_info to i64
  %ln4da = load i64** %Hp_Var
  %ln4dc = getelementptr inbounds i64* %ln4da, i32 -1
  store i64 %ln4db, i64* %ln4dc, !tbaa !2
  %ln4de = load double* %ls3ZQ
  %ln4dd = load i64** %Hp_Var
  %ln4df = getelementptr inbounds i64* %ln4dd, i32 0
  %ln4dg = bitcast i64* %ln4df to double*
  store double %ln4de, double* %ln4dg, !tbaa !2
  %ln4di = load i64** %Hp_Var
  %ln4dj = ptrtoint i64* %ln4di to i64
  %ln4dk = add i64 %ln4dj, -7
  store i64 %ln4dk, i64* %R1_Var
  %ln4dl = getelementptr inbounds i64* %Sp_Arg, i32 0
  %ln4dm = bitcast i64* %ln4dl to i64*
  %ln4dn = load i64* %ln4dm, !tbaa !1
  %ln4do = inttoptr i64 %ln4dn to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4dp = load i64** %Hp_Var
  %ln4dq = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4do( i64* %Base_Arg, i64* %Sp_Arg, i64* %ln4dp, i64 %ln4dq, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c47a:
  %ln4dr = getelementptr inbounds i64* %Base_Arg, i32 113
  store i64 16, i64* %ln4dr, !tbaa !4
  %ln4ds = load i64* %R1_Var
  store i64 %ln4ds, i64* %R1_Var
  %ln4dt = getelementptr inbounds i64* %Base_Arg, i32 -2
  %ln4du = bitcast i64* %ln4dt to i64*
  %ln4dv = load i64* %ln4du, !tbaa !4
  %ln4dw = inttoptr i64 %ln4dv to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4dx = load i64** %Hp_Var
  %ln4dy = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4dw( i64* %Base_Arg, i64* %Sp_Arg, i64* %ln4dx, i64 %ln4dy, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@Main_zdwmySqrt_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* @Main_zdwmySqrt_info$def to i8*)
%Main_zdwmySqrt_entry_struct = type <{i64, i64, i64, i64, i64, i64}>
@Main_zdwmySqrt_info_itable$def = internal constant %Main_zdwmySqrt_entry_struct<{i64 add (i64 sub (i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_zdwmySqrt_slow$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* @Main_zdwmySqrt_info$def to i64)),i64 0), i64 66, i64 0, i64 8589934592, i64 0, i64 15}>, section "X98A__STRIP,__me19", align 8
@Main_zdwmySqrt_info_itable = alias i8* bitcast (%Main_zdwmySqrt_entry_struct* @Main_zdwmySqrt_info_itable$def to i8*)
define cc 10 void @Main_zdwmySqrt_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg, double %D1_Arg) align 8 nounwind section "X98A__STRIP,__me20"
{
c47b:
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %ln4dz = load i64** %Sp_Var
  %ln4dA = getelementptr inbounds i64* %ln4dz, i32 -3
  %ln4dB = ptrtoint i64* %ln4dA to i64
  %ln4dC = icmp uge i64 %ln4dB, %SpLim_Arg
  br i1 %ln4dC, label %u47F, label %c47c
c47c:
  %ln4dD = ptrtoint %Main_zdwmySqrt_closure_struct* @Main_zdwmySqrt_closure$def to i64
  store i64 %ln4dD, i64* %R1_Var
  %ln4dE = load i64** %Sp_Var
  %ln4dF = getelementptr inbounds i64* %ln4dE, i32 -2
  %ln4dG = bitcast i64* %ln4dF to double*
  store double %D1_Arg, double* %ln4dG, !tbaa !1
  %ln4dH = load i64** %Sp_Var
  %ln4dI = getelementptr inbounds i64* %ln4dH, i32 -1
  store i64 %R2_Arg, i64* %ln4dI, !tbaa !1
  %ln4dJ = load i64** %Sp_Var
  %ln4dK = getelementptr inbounds i64* %ln4dJ, i32 -2
  %ln4dL = ptrtoint i64* %ln4dK to i64
  %ln4dM = inttoptr i64 %ln4dL to i64*
  store i64* %ln4dM, i64** %Sp_Var
  %ln4dN = getelementptr inbounds i64* %Base_Arg, i32 -1
  %ln4dO = bitcast i64* %ln4dN to i64*
  %ln4dP = load i64* %ln4dO, !tbaa !4
  %ln4dQ = inttoptr i64 %ln4dP to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4dR = load i64** %Sp_Var
  %ln4dS = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4dQ( i64* %Base_Arg, i64* %ln4dR, i64* %Hp_Arg, i64 %ln4dS, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
u47F:
  %ln4dT = load i64** %Sp_Var
  %ln4dU = getelementptr inbounds i64* %ln4dT, i32 -2
  %ln4dV = bitcast i64* %ln4dU to double*
  store double %D1_Arg, double* %ln4dV, !tbaa !1
  %ln4dW = load i64** %Sp_Var
  %ln4dX = getelementptr inbounds i64* %ln4dW, i32 -1
  store i64 %R2_Arg, i64* %ln4dX, !tbaa !1
  %ln4dY = load i64** %Sp_Var
  %ln4dZ = getelementptr inbounds i64* %ln4dY, i32 -2
  %ln4e0 = ptrtoint i64* %ln4dZ to i64
  %ln4e1 = inttoptr i64 %ln4e0 to i64*
  store i64* %ln4e1, i64** %Sp_Var
  %ln4e2 = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c42O_entry$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4e3 = load i64** %Sp_Var
  %ln4e4 = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4e2( i64* %Base_Arg, i64* %ln4e3, i64* %Hp_Arg, i64 %ln4e4, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c42O_entry = alias internal i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c42O_entry$def to i8*)
define internal cc 10 void @c42O_entry$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind
{
c42O:
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %D1_Var = alloca double, i32 1
  store double undef, double* %D1_Var
  %ln4e5 = load i64** %Sp_Var
  %ln4e6 = getelementptr inbounds i64* %ln4e5, i32 0
  %ln4e7 = bitcast i64* %ln4e6 to double*
  %ln4e8 = load double* %ln4e7, !tbaa !1
  %ln4e9 = fcmp oeq double %ln4e8, 0x0000000000000000
  br i1 %ln4e9, label %c47D, label %c47E
c47E:
  %ln4eb = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c42W_info$def to i64
  %ln4ea = load i64** %Sp_Var
  %ln4ec = getelementptr inbounds i64* %ln4ea, i32 -1
  store i64 %ln4eb, i64* %ln4ec, !tbaa !1
  %ln4ed = load i64** %Sp_Var
  %ln4ee = getelementptr inbounds i64* %ln4ed, i32 1
  %ln4ef = bitcast i64* %ln4ee to i64*
  %ln4eg = load i64* %ln4ef, !tbaa !1
  store i64 %ln4eg, i64* %R1_Var
  %ln4eh = load i64** %Sp_Var
  %ln4ei = getelementptr inbounds i64* %ln4eh, i32 -1
  %ln4ej = ptrtoint i64* %ln4ei to i64
  %ln4ek = inttoptr i64 %ln4ej to i64*
  store i64* %ln4ek, i64** %Sp_Var
  %ln4el = load i64* %R1_Var
  %ln4em = and i64 %ln4el, 7
  %ln4en = icmp ne i64 %ln4em, 0
  br i1 %ln4en, label %u47I, label %c42X
c42X:
  %ln4ep = load i64* %R1_Var
  %ln4eq = inttoptr i64 %ln4ep to i64*
  %ln4er = load i64* %ln4eq, !tbaa !3
  %ln4es = inttoptr i64 %ln4er to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4et = load i64** %Sp_Var
  %ln4eu = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4es( i64* %Base_Arg, i64* %ln4et, i64* %Hp_Arg, i64 %ln4eu, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
u47I:
  %ln4ev = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c42W_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4ew = load i64** %Sp_Var
  %ln4ex = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4ev( i64* %Base_Arg, i64* %ln4ew, i64* %Hp_Arg, i64 %ln4ex, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c47D:
  store double 0x0000000000000000, double* %D1_Var
  %ln4ey = load i64** %Sp_Var
  %ln4ez = getelementptr inbounds i64* %ln4ey, i32 2
  %ln4eA = ptrtoint i64* %ln4ez to i64
  %ln4eB = inttoptr i64 %ln4eA to i64*
  store i64* %ln4eB, i64** %Sp_Var
  %ln4eC = load i64** %Sp_Var
  %ln4eD = getelementptr inbounds i64* %ln4eC, i32 0
  %ln4eE = bitcast i64* %ln4eD to i64*
  %ln4eF = load i64* %ln4eE, !tbaa !1
  %ln4eG = inttoptr i64 %ln4eF to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)*
  %ln4eH = load i64** %Sp_Var
  %ln4eI = load i64* %R1_Var
  %ln4eJ = load double* %D1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* %ln4eG( i64* %Base_Arg, i64* %ln4eH, i64* %Hp_Arg, i64 %ln4eI, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg, double %ln4eJ ) nounwind
  ret void
}
@c42W_info = alias internal i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c42W_info$def to i8*)
%c42W_entry_struct = type <{i64, i64}>
@c42W_info_itable$def = internal constant %c42W_entry_struct<{i64 194, i64 32}>, section "X98A__STRIP,__me23", align 8
@c42W_info_itable = alias internal i8* bitcast (%c42W_entry_struct* @c42W_info_itable$def to i8*)
define internal cc 10 void @c42W_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind section "X98A__STRIP,__me24"
{
c42W:
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %ls3Zv = alloca double, i32 1
  %ls3ZA = alloca double, i32 1
  %ls3ZB = alloca double, i32 1
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %D1_Var = alloca double, i32 1
  store double undef, double* %D1_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %ln4eK = load i64** %Hp_Var
  %ln4eL = getelementptr inbounds i64* %ln4eK, i32 4
  %ln4eM = ptrtoint i64* %ln4eL to i64
  %ln4eN = inttoptr i64 %ln4eM to i64*
  store i64* %ln4eN, i64** %Hp_Var
  %ln4eO = load i64** %Hp_Var
  %ln4eP = ptrtoint i64* %ln4eO to i64
  %ln4eQ = getelementptr inbounds i64* %Base_Arg, i32 107
  %ln4eR = bitcast i64* %ln4eQ to i64*
  %ln4eS = load i64* %ln4eR, !tbaa !4
  %ln4eT = icmp ugt i64 %ln4eP, %ln4eS
  br i1 %ln4eT, label %c47i, label %c47h
c47h:
  %ln4eU = load i64** %Sp_Var
  %ln4eV = getelementptr inbounds i64* %ln4eU, i32 1
  %ln4eW = bitcast i64* %ln4eV to double*
  %ln4eX = load double* %ln4eW, !tbaa !1
  store double %ln4eX, double* %ls3Zv
  %ln4f0 = load i64* %R1_Var
  %ln4f1 = add i64 %ln4f0, 7
  %ln4f2 = inttoptr i64 %ln4f1 to double*
  %ln4f3 = load double* %ln4f2, !tbaa !3
  store double %ln4f3, double* %ls3ZA
  %ln4f4 = load double* %ls3Zv
  %ln4f5 = load double* %ls3ZA
  %ln4f6 = load double* %ls3ZA
  %ln4f7 = fmul double %ln4f5, %ln4f6
  %ln4f8 = fsub double %ln4f4, %ln4f7
  store double %ln4f8, double* %ls3ZB
  %ln4f9 = load double* %ls3ZB
  %ln4fa = fcmp olt double %ln4f9, 0x0000000000000000
  br i1 %ln4fa, label %c47z, label %c47A
c47A:
  %ln4fb = load double* %ls3ZB
  %ln4fc = fcmp ole double %ln4fb, 0x3EE4F8B588E368F1
  br i1 %ln4fc, label %c47w, label %c47q
c47q:
  %ln4fe = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s3ZK_info$def to i64
  %ln4fd = load i64** %Hp_Var
  %ln4ff = getelementptr inbounds i64* %ln4fd, i32 -3
  store i64 %ln4fe, i64* %ln4ff, !tbaa !2
  %ln4fh = load double* %ls3ZA
  %ln4fg = load i64** %Hp_Var
  %ln4fi = getelementptr inbounds i64* %ln4fg, i32 -1
  %ln4fj = bitcast i64* %ln4fi to double*
  store double %ln4fh, double* %ln4fj, !tbaa !2
  %ln4fl = load double* %ls3ZB
  %ln4fk = load i64** %Hp_Var
  %ln4fm = getelementptr inbounds i64* %ln4fk, i32 0
  %ln4fn = bitcast i64* %ln4fm to double*
  store double %ln4fl, double* %ln4fn, !tbaa !2
  %ln4fp = load double* %ls3Zv
  %ln4fo = load i64** %Sp_Var
  %ln4fq = getelementptr inbounds i64* %ln4fo, i32 1
  %ln4fr = bitcast i64* %ln4fq to double*
  store double %ln4fp, double* %ln4fr, !tbaa !1
  %ln4ft = load i64** %Hp_Var
  %ln4fu = getelementptr inbounds i64* %ln4ft, i32 -3
  %ln4fv = ptrtoint i64* %ln4fu to i64
  %ln4fs = load i64** %Sp_Var
  %ln4fw = getelementptr inbounds i64* %ln4fs, i32 2
  store i64 %ln4fv, i64* %ln4fw, !tbaa !1
  %ln4fx = load i64** %Sp_Var
  %ln4fy = getelementptr inbounds i64* %ln4fx, i32 1
  %ln4fz = ptrtoint i64* %ln4fy to i64
  %ln4fA = inttoptr i64 %ln4fz to i64*
  store i64* %ln4fA, i64** %Sp_Var
  br label %u47K
u47K:
  %ln4fB = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c42O_entry$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4fC = load i64** %Sp_Var
  %ln4fD = load i64** %Hp_Var
  %ln4fE = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4fB( i64* %Base_Arg, i64* %ln4fC, i64* %ln4fD, i64 %ln4fE, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c47w:
  %ln4fF = load i64** %Hp_Var
  %ln4fG = getelementptr inbounds i64* %ln4fF, i32 -4
  %ln4fH = ptrtoint i64* %ln4fG to i64
  %ln4fI = inttoptr i64 %ln4fH to i64*
  store i64* %ln4fI, i64** %Hp_Var
  %ln4fJ = load double* %ls3ZA
  store double %ln4fJ, double* %D1_Var
  %ln4fK = load i64** %Sp_Var
  %ln4fL = getelementptr inbounds i64* %ln4fK, i32 3
  %ln4fM = ptrtoint i64* %ln4fL to i64
  %ln4fN = inttoptr i64 %ln4fM to i64*
  store i64* %ln4fN, i64** %Sp_Var
  %ln4fO = load i64** %Sp_Var
  %ln4fP = getelementptr inbounds i64* %ln4fO, i32 0
  %ln4fQ = bitcast i64* %ln4fP to i64*
  %ln4fR = load i64* %ln4fQ, !tbaa !1
  %ln4fS = inttoptr i64 %ln4fR to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)*
  %ln4fT = load i64** %Sp_Var
  %ln4fU = load i64** %Hp_Var
  %ln4fV = load i64* %R1_Var
  %ln4fW = load double* %D1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* %ln4fS( i64* %Base_Arg, i64* %ln4fT, i64* %ln4fU, i64 %ln4fV, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg, double %ln4fW ) nounwind
  ret void
c47z:
  %ln4fX = load double* %ls3ZB
  %ln4fY = fsub double 0x8000000000000000, %ln4fX
  %ln4fZ = fcmp ole double %ln4fY, 0x3EE4F8B588E368F1
  br i1 %ln4fZ, label %c47w, label %c47x
c47x:
  %ln4g1 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s3ZR_info$def to i64
  %ln4g0 = load i64** %Hp_Var
  %ln4g2 = getelementptr inbounds i64* %ln4g0, i32 -3
  store i64 %ln4g1, i64* %ln4g2, !tbaa !2
  %ln4g4 = load double* %ls3ZA
  %ln4g3 = load i64** %Hp_Var
  %ln4g5 = getelementptr inbounds i64* %ln4g3, i32 -1
  %ln4g6 = bitcast i64* %ln4g5 to double*
  store double %ln4g4, double* %ln4g6, !tbaa !2
  %ln4g8 = load double* %ls3ZB
  %ln4g7 = load i64** %Hp_Var
  %ln4g9 = getelementptr inbounds i64* %ln4g7, i32 0
  %ln4ga = bitcast i64* %ln4g9 to double*
  store double %ln4g8, double* %ln4ga, !tbaa !2
  %ln4gc = load double* %ls3Zv
  %ln4gb = load i64** %Sp_Var
  %ln4gd = getelementptr inbounds i64* %ln4gb, i32 1
  %ln4ge = bitcast i64* %ln4gd to double*
  store double %ln4gc, double* %ln4ge, !tbaa !1
  %ln4gg = load i64** %Hp_Var
  %ln4gh = getelementptr inbounds i64* %ln4gg, i32 -3
  %ln4gi = ptrtoint i64* %ln4gh to i64
  %ln4gf = load i64** %Sp_Var
  %ln4gj = getelementptr inbounds i64* %ln4gf, i32 2
  store i64 %ln4gi, i64* %ln4gj, !tbaa !1
  %ln4gk = load i64** %Sp_Var
  %ln4gl = getelementptr inbounds i64* %ln4gk, i32 1
  %ln4gm = ptrtoint i64* %ln4gl to i64
  %ln4gn = inttoptr i64 %ln4gm to i64*
  store i64* %ln4gn, i64** %Sp_Var
  br label %u47K
c47i:
  %ln4go = getelementptr inbounds i64* %Base_Arg, i32 113
  store i64 32, i64* %ln4go, !tbaa !4
  %ln4gp = load i64* %R1_Var
  store i64 %ln4gp, i64* %R1_Var
  %ln4gq = bitcast i8* @stg_gc_unpt_r1 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4gr = load i64** %Sp_Var
  %ln4gs = load i64** %Hp_Var
  %ln4gt = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4gq( i64* %Base_Arg, i64* %ln4gr, i64* %ln4gs, i64 %ln4gt, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%Main_mySqrt_closure_struct = type <{i64}>
@Main_mySqrt_closure$def = internal global %Main_mySqrt_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mySqrt_info$def to i64)}>
@Main_mySqrt_closure = alias i8* bitcast (%Main_mySqrt_closure_struct* @Main_mySqrt_closure$def to i8*)
@Main_mySqrt_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mySqrt_info$def to i8*)
%Main_mySqrt_entry_struct = type <{i64, i64, i64}>
@Main_mySqrt_info_itable$def = internal constant %Main_mySqrt_entry_struct<{i64 8589934607, i64 0, i64 15}>, section "X98A__STRIP,__me25", align 8
@Main_mySqrt_info_itable = alias i8* bitcast (%Main_mySqrt_entry_struct* @Main_mySqrt_info_itable$def to i8*)
define cc 10 void @Main_mySqrt_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind section "X98A__STRIP,__me26"
{
c4gI:
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R3_Var = alloca i64, i32 1
  store i64 %R3_Arg, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  %ln4gX = load i64** %Sp_Var
  %ln4gY = getelementptr inbounds i64* %ln4gX, i32 -2
  %ln4gZ = ptrtoint i64* %ln4gY to i64
  %ln4h0 = icmp ult i64 %ln4gZ, %SpLim_Arg
  br i1 %ln4h0, label %c4gQ, label %c4gR
c4gR:
  %ln4h2 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c4gF_info$def to i64
  %ln4h1 = load i64** %Sp_Var
  %ln4h3 = getelementptr inbounds i64* %ln4h1, i32 -2
  store i64 %ln4h2, i64* %ln4h3, !tbaa !1
  %ln4h4 = load i64* %R2_Var
  store i64 %ln4h4, i64* %R1_Var
  %ln4h6 = load i64* %R3_Var
  %ln4h5 = load i64** %Sp_Var
  %ln4h7 = getelementptr inbounds i64* %ln4h5, i32 -1
  store i64 %ln4h6, i64* %ln4h7, !tbaa !1
  %ln4h8 = load i64** %Sp_Var
  %ln4h9 = getelementptr inbounds i64* %ln4h8, i32 -2
  %ln4ha = ptrtoint i64* %ln4h9 to i64
  %ln4hb = inttoptr i64 %ln4ha to i64*
  store i64* %ln4hb, i64** %Sp_Var
  %ln4hc = load i64* %R1_Var
  %ln4hd = and i64 %ln4hc, 7
  %ln4he = icmp ne i64 %ln4hd, 0
  br i1 %ln4he, label %u4gW, label %c4gG
c4gG:
  %ln4hg = load i64* %R1_Var
  %ln4hh = inttoptr i64 %ln4hg to i64*
  %ln4hi = load i64* %ln4hh, !tbaa !3
  %ln4hj = inttoptr i64 %ln4hi to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4hk = load i64** %Sp_Var
  %ln4hl = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4hj( i64* %Base_Arg, i64* %ln4hk, i64* %Hp_Arg, i64 %ln4hl, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
u4gW:
  %ln4hm = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c4gF_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4hn = load i64** %Sp_Var
  %ln4ho = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4hm( i64* %Base_Arg, i64* %ln4hn, i64* %Hp_Arg, i64 %ln4ho, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c4gQ:
  %ln4hp = load i64* %R3_Var
  store i64 %ln4hp, i64* %R3_Var
  %ln4hq = load i64* %R2_Var
  store i64 %ln4hq, i64* %R2_Var
  %ln4hr = ptrtoint %Main_mySqrt_closure_struct* @Main_mySqrt_closure$def to i64
  store i64 %ln4hr, i64* %R1_Var
  %ln4hs = getelementptr inbounds i64* %Base_Arg, i32 -1
  %ln4ht = bitcast i64* %ln4hs to i64*
  %ln4hu = load i64* %ln4ht, !tbaa !4
  %ln4hv = inttoptr i64 %ln4hu to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4hw = load i64** %Sp_Var
  %ln4hx = load i64* %R1_Var
  %ln4hy = load i64* %R2_Var
  %ln4hz = load i64* %R3_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4hv( i64* %Base_Arg, i64* %ln4hw, i64* %Hp_Arg, i64 %ln4hx, i64 %ln4hy, i64 %ln4hz, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c4gF_info = alias internal i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c4gF_info$def to i8*)
%c4gF_entry_struct = type <{i64, i64}>
@c4gF_info_itable$def = internal constant %c4gF_entry_struct<{i64 1, i64 32}>, section "X98A__STRIP,__me27", align 8
@c4gF_info_itable = alias internal i8* bitcast (%c4gF_entry_struct* @c4gF_info_itable$def to i8*)
define internal cc 10 void @c4gF_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind section "X98A__STRIP,__me28"
{
c4gF:
  %ls3ZT = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %D1_Var = alloca double, i32 1
  store double undef, double* %D1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %ln4hA = load i64** %Sp_Var
  %ln4hB = getelementptr inbounds i64* %ln4hA, i32 1
  %ln4hC = bitcast i64* %ln4hB to i64*
  %ln4hD = load i64* %ln4hC, !tbaa !1
  store i64 %ln4hD, i64* %ls3ZT
  %ln4hF = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* @c4gL_info$def to i64
  %ln4hE = load i64** %Sp_Var
  %ln4hG = getelementptr inbounds i64* %ln4hE, i32 1
  store i64 %ln4hF, i64* %ln4hG, !tbaa !1
  %ln4hH = load i64* %ls3ZT
  store i64 %ln4hH, i64* %R2_Var
  %ln4hI = add i64 %R1_Arg, 7
  %ln4hJ = inttoptr i64 %ln4hI to double*
  %ln4hK = load double* %ln4hJ, !tbaa !3
  store double %ln4hK, double* %D1_Var
  %ln4hL = load i64** %Sp_Var
  %ln4hM = getelementptr inbounds i64* %ln4hL, i32 1
  %ln4hN = ptrtoint i64* %ln4hM to i64
  %ln4hO = inttoptr i64 %ln4hN to i64*
  store i64* %ln4hO, i64** %Sp_Var
  %ln4hP = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* @Main_zdwmySqrt_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)*
  %ln4hQ = load i64** %Sp_Var
  %ln4hR = load i64* %R2_Var
  %ln4hS = load double* %D1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* %ln4hP( i64* %Base_Arg, i64* %ln4hQ, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln4hR, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg, double %ln4hS ) nounwind
  ret void
}
@c4gL_info = alias internal i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* @c4gL_info$def to i8*)
%c4gL_entry_struct = type <{i64, i64}>
@c4gL_info_itable$def = internal constant %c4gL_entry_struct<{i64 0, i64 32}>, section "X98A__STRIP,__me29", align 8
@c4gL_info_itable = alias internal i8* bitcast (%c4gL_entry_struct* @c4gL_info_itable$def to i8*)
define internal cc 10 void @c4gL_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg, double %D1_Arg) align 8 nounwind section "X98A__STRIP,__me30"
{
c4gL:
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %D1_Var = alloca double, i32 1
  store double %D1_Arg, double* %D1_Var
  %ln4hT = load i64** %Hp_Var
  %ln4hU = getelementptr inbounds i64* %ln4hT, i32 2
  %ln4hV = ptrtoint i64* %ln4hU to i64
  %ln4hW = inttoptr i64 %ln4hV to i64*
  store i64* %ln4hW, i64** %Hp_Var
  %ln4hX = load i64** %Hp_Var
  %ln4hY = ptrtoint i64* %ln4hX to i64
  %ln4hZ = getelementptr inbounds i64* %Base_Arg, i32 107
  %ln4i0 = bitcast i64* %ln4hZ to i64*
  %ln4i1 = load i64* %ln4i0, !tbaa !4
  %ln4i2 = icmp ugt i64 %ln4hY, %ln4i1
  br i1 %ln4i2, label %c4gV, label %c4gU
c4gU:
  %ln4i4 = ptrtoint i8* @ghczmprim_GHCziTypes_Dzh_con_info to i64
  %ln4i3 = load i64** %Hp_Var
  %ln4i5 = getelementptr inbounds i64* %ln4i3, i32 -1
  store i64 %ln4i4, i64* %ln4i5, !tbaa !2
  %ln4i7 = load double* %D1_Var
  %ln4i6 = load i64** %Hp_Var
  %ln4i8 = getelementptr inbounds i64* %ln4i6, i32 0
  %ln4i9 = bitcast i64* %ln4i8 to double*
  store double %ln4i7, double* %ln4i9, !tbaa !2
  %ln4ib = load i64** %Hp_Var
  %ln4ic = ptrtoint i64* %ln4ib to i64
  %ln4id = add i64 %ln4ic, -7
  store i64 %ln4id, i64* %R1_Var
  %ln4ie = load i64** %Sp_Var
  %ln4if = getelementptr inbounds i64* %ln4ie, i32 1
  %ln4ig = ptrtoint i64* %ln4if to i64
  %ln4ih = inttoptr i64 %ln4ig to i64*
  store i64* %ln4ih, i64** %Sp_Var
  %ln4ii = load i64** %Sp_Var
  %ln4ij = getelementptr inbounds i64* %ln4ii, i32 0
  %ln4ik = bitcast i64* %ln4ij to i64*
  %ln4il = load i64* %ln4ik, !tbaa !1
  %ln4im = inttoptr i64 %ln4il to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4in = load i64** %Sp_Var
  %ln4io = load i64** %Hp_Var
  %ln4ip = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4im( i64* %Base_Arg, i64* %ln4in, i64* %ln4io, i64 %ln4ip, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c4gV:
  %ln4iq = getelementptr inbounds i64* %Base_Arg, i32 113
  store i64 16, i64* %ln4iq, !tbaa !4
  %ln4ir = load double* %D1_Var
  store double %ln4ir, double* %D1_Var
  %ln4is = bitcast i8* @stg_gc_d1 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)*
  %ln4it = load i64** %Sp_Var
  %ln4iu = load i64** %Hp_Var
  %ln4iv = load i64* %R1_Var
  %ln4iw = load double* %D1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* %ln4is( i64* %Base_Arg, i64* %ln4it, i64* %ln4iu, i64 %ln4iv, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg, double %ln4iw ) nounwind
  ret void
}
%Main_main2_closure_struct = type <{i64, i64, i64, i64}>
@Main_main2_closure$def = internal global %Main_main2_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main2_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main2_closure = alias i8* bitcast (%Main_main2_closure_struct* @Main_main2_closure$def to i8*)
@Main_main2_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main2_info$def to i8*)
%Main_main2_entry_struct = type <{i64, i64, i64}>
@Main_main2_info_itable$def = internal constant %Main_main2_entry_struct<{i64 add (i64 sub (i64 ptrtoint (i8* @S4iP_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main2_info$def to i64)),i64 0), i64 0, i64 4294967318}>, section "X98A__STRIP,__me31", align 8
@Main_main2_info_itable = alias i8* bitcast (%Main_main2_entry_struct* @Main_main2_info_itable$def to i8*)
define cc 10 void @Main_main2_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind section "X98A__STRIP,__me32"
{
c4iJ:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R4_Var = alloca i64, i32 1
  store i64 undef, i64* %R4_Var
  %R5_Var = alloca i64, i32 1
  store i64 undef, i64* %R5_Var
  %R6_Var = alloca i64, i32 1
  store i64 undef, i64* %R6_Var
  %F1_Var = alloca float, i32 1
  store float undef, float* %F1_Var
  %D1_Var = alloca double, i32 1
  store double undef, double* %D1_Var
  %F2_Var = alloca float, i32 1
  store float undef, float* %F2_Var
  %D2_Var = alloca double, i32 1
  store double undef, double* %D2_Var
  %F3_Var = alloca float, i32 1
  store float undef, float* %F3_Var
  %D3_Var = alloca double, i32 1
  store double undef, double* %D3_Var
  %F4_Var = alloca float, i32 1
  store float undef, float* %F4_Var
  %D4_Var = alloca double, i32 1
  store double undef, double* %D4_Var
  %F5_Var = alloca float, i32 1
  store float undef, float* %F5_Var
  %D5_Var = alloca double, i32 1
  store double undef, double* %D5_Var
  %F6_Var = alloca float, i32 1
  store float undef, float* %F6_Var
  %D6_Var = alloca double, i32 1
  store double undef, double* %D6_Var
  %lc4iE = alloca i64, i32 1
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %ln4iQ = load i64** %Sp_Var
  %ln4iR = getelementptr inbounds i64* %ln4iQ, i32 -4
  %ln4iS = ptrtoint i64* %ln4iR to i64
  %ln4iT = icmp ult i64 %ln4iS, %SpLim_Arg
  br i1 %ln4iT, label %c4iK, label %c4iL
c4iL:
  %ln4iU = ptrtoint i64* %Base_Arg to i64
  %ln4iV = inttoptr i64 %ln4iU to i8*
  %ln4iW = load i64* %R1_Var
  %ln4iX = inttoptr i64 %ln4iW to i8*
  %ln4iY = bitcast i8* @newCAF to i8* (i8*, i8*)*
  store i64 undef, i64* %R3_Var
  store i64 undef, i64* %R4_Var
  store i64 undef, i64* %R5_Var
  store i64 undef, i64* %R6_Var
  store float undef, float* %F1_Var
  store double undef, double* %D1_Var
  store float undef, float* %F2_Var
  store double undef, double* %D2_Var
  store float undef, float* %F3_Var
  store double undef, double* %D3_Var
  store float undef, float* %F4_Var
  store double undef, double* %D4_Var
  store float undef, float* %F5_Var
  store double undef, double* %D5_Var
  store float undef, float* %F6_Var
  store double undef, double* %D6_Var
  %ln4iZ = call ccc i8* (i8*, i8*)* %ln4iY( i8* %ln4iV, i8* %ln4iX ) nounwind
  %ln4j0 = ptrtoint i8* %ln4iZ to i64
  store i64 %ln4j0, i64* %lc4iE
  %ln4j1 = load i64* %lc4iE
  %ln4j2 = icmp eq i64 %ln4j1, 0
  br i1 %ln4j2, label %c4iG, label %c4iF
c4iF:
  %ln4j4 = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln4j3 = load i64** %Sp_Var
  %ln4j5 = getelementptr inbounds i64* %ln4j3, i32 -2
  store i64 %ln4j4, i64* %ln4j5, !tbaa !1
  %ln4j7 = load i64* %lc4iE
  %ln4j6 = load i64** %Sp_Var
  %ln4j8 = getelementptr inbounds i64* %ln4j6, i32 -1
  store i64 %ln4j7, i64* %ln4j8, !tbaa !1
  %ln4ja = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* @c4iH_info$def to i64
  %ln4j9 = load i64** %Sp_Var
  %ln4jb = getelementptr inbounds i64* %ln4j9, i32 -3
  store i64 %ln4ja, i64* %ln4jb, !tbaa !1
  store double 0x40289FE5C91D14E4, double* %D2_Var
  store double 0x405EC7DF3B645A1D, double* %D1_Var
  %ln4jc = load i64** %Sp_Var
  %ln4jd = getelementptr inbounds i64* %ln4jc, i32 -3
  %ln4je = ptrtoint i64* %ln4jd to i64
  %ln4jf = inttoptr i64 %ln4je to i64*
  store i64* %ln4jf, i64** %Sp_Var
  %ln4jg = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double, double)* @Main_mainzuzdszdwmySqrt_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double, double)*
  %ln4jh = load i64** %Sp_Var
  %ln4ji = load i64* %R1_Var
  %ln4jj = load double* %D1_Var
  %ln4jk = load double* %D2_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double, double)* %ln4jg( i64* %Base_Arg, i64* %ln4jh, i64* %Hp_Arg, i64 %ln4ji, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg, double %ln4jj, double %ln4jk ) nounwind
  ret void
c4iG:
  %ln4jm = load i64* %R1_Var
  %ln4jn = inttoptr i64 %ln4jm to i64*
  %ln4jo = load i64* %ln4jn, !tbaa !3
  %ln4jp = inttoptr i64 %ln4jo to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4jq = load i64** %Sp_Var
  %ln4jr = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4jp( i64* %Base_Arg, i64* %ln4jq, i64* %Hp_Arg, i64 %ln4jr, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c4iK:
  %ln4js = load i64* %R1_Var
  store i64 %ln4js, i64* %R1_Var
  %ln4jt = getelementptr inbounds i64* %Base_Arg, i32 -2
  %ln4ju = bitcast i64* %ln4jt to i64*
  %ln4jv = load i64* %ln4ju, !tbaa !4
  %ln4jw = inttoptr i64 %ln4jv to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4jx = load i64** %Sp_Var
  %ln4jy = load i64* %R1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4jw( i64* %Base_Arg, i64* %ln4jx, i64* %Hp_Arg, i64 %ln4jy, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c4iH_info = alias internal i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* @c4iH_info$def to i8*)
%c4iH_entry_struct = type <{i64, i64, i64}>
@c4iH_info_itable$def = internal constant %c4iH_entry_struct<{i64 add (i64 sub (i64 ptrtoint (i8* @S4iP_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* @c4iH_info$def to i64)),i64 0), i64 0, i64 4294967328}>, section "X98A__STRIP,__me33", align 8
@c4iH_info_itable = alias internal i8* bitcast (%c4iH_entry_struct* @c4iH_info_itable$def to i8*)
define internal cc 10 void @c4iH_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg, double %D1_Arg) align 8 nounwind section "X98A__STRIP,__me34"
{
c4iH:
  %D1_Var = alloca double, i32 1
  store double %D1_Arg, double* %D1_Var
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %ln4jz = load double* %D1_Var
  store double %ln4jz, double* %D1_Var
  %ln4jA = ptrtoint i8* @base_GHCziShow_shows18_closure to i64
  store i64 %ln4jA, i64* %R3_Var
  %ln4jB = ptrtoint i8* @base_GHCziFloat_zdfShowDoublezuzdsshowFloat_closure to i64
  %ln4jC = add i64 %ln4jB, 1
  store i64 %ln4jC, i64* %R2_Var
  %ln4jE = ptrtoint i8* @stg_ap_p_info to i64
  %ln4jD = load i64** %Sp_Var
  %ln4jF = getelementptr inbounds i64* %ln4jD, i32 -1
  store i64 %ln4jE, i64* %ln4jF, !tbaa !1
  %ln4jH = ptrtoint i8* @ghczmprim_GHCziTypes_ZMZN_closure to i64
  %ln4jI = add i64 %ln4jH, 1
  %ln4jG = load i64** %Sp_Var
  %ln4jJ = getelementptr inbounds i64* %ln4jG, i32 0
  store i64 %ln4jI, i64* %ln4jJ, !tbaa !1
  %ln4jK = load i64** %Sp_Var
  %ln4jL = getelementptr inbounds i64* %ln4jK, i32 -1
  %ln4jM = ptrtoint i64* %ln4jL to i64
  %ln4jN = inttoptr i64 %ln4jM to i64*
  store i64* %ln4jN, i64** %Sp_Var
  %ln4jO = bitcast i8* @base_GHCziFloat_zdwzdsshowSignedFloat_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)*
  %ln4jP = load i64** %Sp_Var
  %ln4jQ = load i64* %R2_Var
  %ln4jR = load i64* %R3_Var
  %ln4jS = load double* %D1_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, double)* %ln4jO( i64* %Base_Arg, i64* %ln4jP, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln4jQ, i64 %ln4jR, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg, double %ln4jS ) nounwind
  ret void
}
%Main_main1_closure_struct = type <{i64, i64}>
@Main_main1_closure$def = internal global %Main_main1_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main1_info$def to i64), i64 0}>
@Main_main1_closure = alias i8* bitcast (%Main_main1_closure_struct* @Main_main1_closure$def to i8*)
@Main_main1_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main1_info$def to i8*)
%Main_main1_entry_struct = type <{i64, i64, i64, i64}>
@Main_main1_info_itable$def = internal constant %Main_main1_entry_struct<{i64 add (i64 sub (i64 ptrtoint (i8* @S4iP_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main1_info$def to i64)),i64 8), i64 4294967299, i64 0, i64 30064771087}>, section "X98A__STRIP,__me35", align 8
@Main_main1_info_itable = alias i8* bitcast (%Main_main1_entry_struct* @Main_main1_info_itable$def to i8*)
define cc 10 void @Main_main1_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind section "X98A__STRIP,__me36"
{
c4jY:
  %R4_Var = alloca i64, i32 1
  store i64 undef, i64* %R4_Var
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %ln4k1 = ptrtoint i8* @ghczmprim_GHCziTypes_True_closure to i64
  %ln4k2 = add i64 %ln4k1, 2
  store i64 %ln4k2, i64* %R4_Var
  %ln4k3 = ptrtoint %Main_main2_closure_struct* @Main_main2_closure$def to i64
  store i64 %ln4k3, i64* %R3_Var
  %ln4k4 = ptrtoint i8* @base_GHCziIOziHandleziFD_stdout_closure to i64
  store i64 %ln4k4, i64* %R2_Var
  %ln4k5 = bitcast i8* @base_GHCziIOziHandleziText_hPutStr2_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4k6 = load i64* %R2_Var
  %ln4k7 = load i64* %R3_Var
  %ln4k8 = load i64* %R4_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4k5( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln4k6, i64 %ln4k7, i64 %ln4k8, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%Main_main_closure_struct = type <{i64, i64}>
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0}>
@Main_main_closure = alias i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
%Main_main_entry_struct = type <{i64, i64, i64, i64}>
@Main_main_info_itable$def = internal constant %Main_main_entry_struct<{i64 add (i64 sub (i64 ptrtoint (i8* @S4iP_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)),i64 32), i64 4294967299, i64 0, i64 4294967311}>, section "X98A__STRIP,__me37", align 8
@Main_main_info_itable = alias i8* bitcast (%Main_main_entry_struct* @Main_main_info_itable$def to i8*)
define cc 10 void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind section "X98A__STRIP,__me38"
{
c4ke:
  %ln4kh = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main1_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4kh( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%Main_main3_closure_struct = type <{i64, i64}>
@Main_main3_closure$def = internal global %Main_main3_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main3_info$def to i64), i64 0}>
@Main_main3_closure = alias i8* bitcast (%Main_main3_closure_struct* @Main_main3_closure$def to i8*)
@Main_main3_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main3_info$def to i8*)
%Main_main3_entry_struct = type <{i64, i64, i64, i64}>
@Main_main3_info_itable$def = internal constant %Main_main3_entry_struct<{i64 add (i64 sub (i64 ptrtoint (i8* @S4iP_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main3_info$def to i64)),i64 32), i64 4294967299, i64 0, i64 12884901903}>, section "X98A__STRIP,__me39", align 8
@Main_main3_info_itable = alias i8* bitcast (%Main_main3_entry_struct* @Main_main3_info_itable$def to i8*)
define cc 10 void @Main_main3_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind section "X98A__STRIP,__me40"
{
c4kn:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %ln4kq = ptrtoint %Main_main1_closure_struct* @Main_main1_closure$def to i64
  %ln4kr = add i64 %ln4kq, 1
  store i64 %ln4kr, i64* %R2_Var
  %ln4ks = bitcast i8* @base_GHCziTopHandler_runMainIO1_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln4kt = load i64* %R2_Var
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4ks( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln4kt, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%ZCMain_main_closure_struct = type <{i64, i64}>
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0}>
@ZCMain_main_closure = alias i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
%ZCMain_main_entry_struct = type <{i64, i64, i64, i64}>
@ZCMain_main_info_itable$def = internal constant %ZCMain_main_entry_struct<{i64 add (i64 sub (i64 ptrtoint (i8* @S4iP_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)),i64 48), i64 4294967299, i64 0, i64 4294967311}>, section "X98A__STRIP,__me41", align 8
@ZCMain_main_info_itable = alias i8* bitcast (%ZCMain_main_entry_struct* @ZCMain_main_info_itable$def to i8*)
define cc 10 void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind section "X98A__STRIP,__me42"
{
c4kz:
  %ln4kC = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main3_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  tail call cc 10 void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* %ln4kC( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%S4iP_srt_struct = type <{i64, i64, i64, i64, i64, i64, i64}>
@S4iP_srt$def = internal constant %S4iP_srt_struct<{i64 ptrtoint (i8* @base_GHCziFloat_zdfShowDoublezuzdsshowFloat_closure to i64), i64 ptrtoint (i8* @base_GHCziIOziHandleziText_hPutStr2_closure to i64), i64 ptrtoint (i8* @base_GHCziIOziHandleziFD_stdout_closure to i64), i64 ptrtoint (%Main_main2_closure_struct* @Main_main2_closure$def to i64), i64 ptrtoint (%Main_main1_closure_struct* @Main_main1_closure$def to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO1_closure to i64), i64 ptrtoint (%Main_main3_closure_struct* @Main_main3_closure$def to i64)}>
@S4iP_srt = alias internal i8* bitcast (%S4iP_srt_struct* @S4iP_srt$def to i8*)
@ghczmprim_GHCziTypes_Dzh_con_info = external global i8
@stg_gc_unpt_r1 = external global i8
@stg_gc_d1 = external global i8
@newCAF = external global i8
@stg_bh_upd_frame_info = external global i8
@base_GHCziShow_shows18_closure = external global i8
@base_GHCziFloat_zdfShowDoublezuzdsshowFloat_closure = external global i8
@stg_ap_p_info = external global i8
@ghczmprim_GHCziTypes_ZMZN_closure = external global i8
@base_GHCziFloat_zdwzdsshowSignedFloat_info = external global i8
@ghczmprim_GHCziTypes_True_closure = external global i8
@base_GHCziIOziHandleziFD_stdout_closure = external global i8
@base_GHCziIOziHandleziText_hPutStr2_info = external global i8
@base_GHCziTopHandler_runMainIO1_info = external global i8
@base_GHCziIOziHandleziText_hPutStr2_closure = external global i8
@base_GHCziTopHandler_runMainIO1_closure = external global i8
@llvm.used = appending constant [38 x i8*] [i8* bitcast (%S4iP_srt_struct* @S4iP_srt$def to i8*), i8* bitcast (%ZCMain_main_entry_struct* @ZCMain_main_info_itable$def to i8*), i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%Main_main3_entry_struct* @Main_main3_info_itable$def to i8*), i8* bitcast (%Main_main3_closure_struct* @Main_main3_closure$def to i8*), i8* bitcast (%Main_main_entry_struct* @Main_main_info_itable$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*), i8* bitcast (%Main_main1_entry_struct* @Main_main1_info_itable$def to i8*), i8* bitcast (%Main_main1_closure_struct* @Main_main1_closure$def to i8*), i8* bitcast (%c4iH_entry_struct* @c4iH_info_itable$def to i8*), i8* bitcast (%c4iH_entry_struct* @c4iH_info_itable$def to i8*), i8* bitcast (%Main_main2_entry_struct* @Main_main2_info_itable$def to i8*), i8* bitcast (%Main_main2_closure_struct* @Main_main2_closure$def to i8*), i8* bitcast (%c4gL_entry_struct* @c4gL_info_itable$def to i8*), i8* bitcast (%c4gL_entry_struct* @c4gL_info_itable$def to i8*), i8* bitcast (%c4gF_entry_struct* @c4gF_info_itable$def to i8*), i8* bitcast (%c4gF_entry_struct* @c4gF_info_itable$def to i8*), i8* bitcast (%Main_mySqrt_entry_struct* @Main_mySqrt_info_itable$def to i8*), i8* bitcast (%Main_mySqrt_closure_struct* @Main_mySqrt_closure$def to i8*), i8* bitcast (%c42W_entry_struct* @c42W_info_itable$def to i8*), i8* bitcast (%c42W_entry_struct* @c42W_info_itable$def to i8*), i8* bitcast (%Main_zdwmySqrt_entry_struct* @Main_zdwmySqrt_info_itable$def to i8*), i8* bitcast (%s3ZR_entry_struct* @s3ZR_info_itable$def to i8*), i8* bitcast (%s3ZR_entry_struct* @s3ZR_info_itable$def to i8*), i8* bitcast (%s3ZK_entry_struct* @s3ZK_info_itable$def to i8*), i8* bitcast (%s3ZK_entry_struct* @s3ZK_info_itable$def to i8*), i8* bitcast (%Main_mainzuzdszdwmySqrt_entry_struct* @Main_mainzuzdszdwmySqrt_info_itable$def to i8*), i8* bitcast (%s3Zu_entry_struct* @s3Zu_info_itable$def to i8*), i8* bitcast (%s3Zu_entry_struct* @s3Zu_info_itable$def to i8*), i8* bitcast (%s3Zn_entry_struct* @s3Zn_info_itable$def to i8*), i8* bitcast (%s3Zn_entry_struct* @s3Zn_info_itable$def to i8*), i8* bitcast (%Main_zdwmySqrt_closure_struct* @Main_zdwmySqrt_closure$def to i8*), i8* bitcast (%Main_mainzuzdszdwmySqrt_closure_struct* @Main_mainzuzdszdwmySqrt_closure$def to i8*), i8* bitcast (%c40g_entry_struct* @c40g_info_itable$def to i8*), i8* bitcast (%c40g_entry_struct* @c40g_info_itable$def to i8*), i8* bitcast (%Main_myFabs_entry_struct* @Main_myFabs_info_itable$def to i8*), i8* bitcast (%Main_myFabs_closure_struct* @Main_myFabs_closure$def to i8*), i8* bitcast (%__stginit_Main_struct* @__stginit_Main$def to i8*)], section "llvm.metadata"

; ModuleID = 'bs.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @search(i32 %target, i32* %arr, i32 %start, i32 %end) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32 %target, i32* %2, align 4
  store i32* %arr, i32** %3, align 8
  store i32 %start, i32* %4, align 4
  store i32 %end, i32* %5, align 4
  %6 = load i32* %4, align 4
  %7 = load i32* %5, align 4
  %8 = add nsw i32 %6, %7
  %9 = sdiv i32 %8, 2
  store i32 %9, i32* %mid, align 4
  %10 = load i32* %5, align 4
  %11 = load i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %19, label %13

; <label>:13                                      ; preds = %0
  %14 = load i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

; <label>:16                                      ; preds = %13
  %17 = load i32* %5, align 4
  %18 = icmp sgt i32 %17, 9999
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %16, %13, %0
  store i32 -1, i32* %1
  br label %65

; <label>:20                                      ; preds = %16
  %21 = load i32* %4, align 4
  %22 = load i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %35

; <label>:24                                      ; preds = %20
  %25 = load i32* %mid, align 4
  %26 = sext i32 %25 to i64
  %27 = load i32** %3, align 8
  %28 = getelementptr inbounds i32* %27, i64 %26
  %29 = load i32* %28, align 4
  %30 = load i32* %2, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

; <label>:32                                      ; preds = %24
  %33 = load i32* %mid, align 4
  store i32 %33, i32* %1
  br label %65

; <label>:34                                      ; preds = %24
  store i32 -1, i32* %1
  br label %65

; <label>:35                                      ; preds = %20
  %36 = load i32* %mid, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32** %3, align 8
  %39 = getelementptr inbounds i32* %38, i64 %37
  %40 = load i32* %39, align 4
  %41 = load i32* %2, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

; <label>:43                                      ; preds = %35
  %44 = load i32* %mid, align 4
  store i32 %44, i32* %1
  br label %65

; <label>:45                                      ; preds = %35
  %46 = load i32* %mid, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32** %3, align 8
  %49 = getelementptr inbounds i32* %48, i64 %47
  %50 = load i32* %49, align 4
  %51 = load i32* %2, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %59

; <label>:53                                      ; preds = %45
  %54 = load i32* %2, align 4
  %55 = load i32** %3, align 8
  %56 = load i32* %4, align 4
  %57 = load i32* %mid, align 4
  %58 = call i32 @search(i32 %54, i32* %55, i32 %56, i32 %57)
  store i32 %58, i32* %1
  br label %65

; <label>:59                                      ; preds = %45
  %60 = load i32* %2, align 4
  %61 = load i32** %3, align 8
  %62 = load i32* %mid, align 4
  %63 = load i32* %5, align 4
  %64 = call i32 @search(i32 %60, i32* %61, i32 %62, i32 %63)
  store i32 %64, i32* %1
  br label %65

; <label>:65                                      ; preds = %59, %53, %43, %34, %32, %19
  %66 = load i32* %1
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %arr = alloca [10000 x i32], align 16
  %i = alloca i32, align 4
  %target = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %11, %0
  %3 = load i32* %i, align 4
  %4 = icmp slt i32 %3, 10000
  br i1 %4, label %5, label %14

; <label>:5                                       ; preds = %2
  %6 = load i32* %i, align 4
  %7 = add nsw i32 %6, 1
  %8 = load i32* %i, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [10000 x i32]* %arr, i32 0, i64 %9
  store i32 %7, i32* %10, align 4
  br label %11

; <label>:11                                      ; preds = %5
  %12 = load i32* %i, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %i, align 4
  br label %2

; <label>:14                                      ; preds = %2
  store i32 1, i32* %target, align 4
  %15 = load i32* %target, align 4
  %16 = getelementptr inbounds [10000 x i32]* %arr, i32 0, i32 0
  %17 = call i32 @search(i32 %15, i32* %16, i32 0, i32 9999)
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %17)
  %19 = load i32* %1
  ret i32 %19
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}

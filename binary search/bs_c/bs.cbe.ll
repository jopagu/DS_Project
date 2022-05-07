; ModuleID = 'bs.cbe.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l_array_4_uint8_t = type { [4 x i8] }
%struct.l_array_10000_uint32_t = type { [10000 x i32] }

@_OC_str = internal global %struct.l_array_4_uint8_t { [4 x i8] c"%d\0A\00" }, align 1

; Function Attrs: noinline nounwind uwtable
define i32 @search(i32 %_1, i32* %_2, i32 %_3, i32 %_4) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %r.i1 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %r.i = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %_5 = alloca i32, align 4
  %_6 = alloca i32, align 4
  %_7 = alloca i32*, align 8
  %_8 = alloca i32, align 4
  %_9 = alloca i32, align 4
  %_10 = alloca i32, align 4
  %_11 = alloca i32, align 4
  %_12 = alloca i32, align 4
  %_13 = alloca i32, align 4
  %_14 = alloca i32, align 4
  %_15 = alloca i32, align 4
  %_16 = alloca i32, align 4
  %_17 = alloca i32, align 4
  %_18 = alloca i32, align 4
  %_19 = alloca i32*, align 8
  %_20 = alloca i32, align 4
  %_21 = alloca i32, align 4
  %_22 = alloca i32, align 4
  %_23 = alloca i32, align 4
  %_24 = alloca i32*, align 8
  %_25 = alloca i32, align 4
  %_26 = alloca i32, align 4
  %_27 = alloca i32, align 4
  %_28 = alloca i32, align 4
  %_29 = alloca i32*, align 8
  %_30 = alloca i32, align 4
  %_31 = alloca i32, align 4
  %_32 = alloca i32, align 4
  %_33 = alloca i32, align 4
  %_34 = alloca i32*, align 8
  %_35 = alloca i32, align 4
  %_36 = alloca i32, align 4
  %_37 = alloca i32, align 4
  %_38 = alloca i32, align 4
  %_39 = alloca i32*, align 8
  %_40 = alloca i32, align 4
  %_41 = alloca i32, align 4
  %_42 = alloca i32, align 4
  %_43 = alloca i32, align 4
  store i32 %_1, i32* %5, align 4
  store i32* %_2, i32** %6, align 8
  store i32 %_3, i32* %7, align 4
  store i32 %_4, i32* %8, align 4
  %9 = load i32* %5, align 4
  store i32 %9, i32* %_6, align 4
  %10 = load i32** %6, align 8
  store i32* %10, i32** %_7, align 8
  %11 = load i32* %7, align 4
  store i32 %11, i32* %_8, align 4
  %12 = load i32* %8, align 4
  store i32 %12, i32* %_9, align 4
  %13 = load i32* %_8, align 4
  store i32 %13, i32* %_11, align 4
  %14 = load i32* %_9, align 4
  store i32 %14, i32* %_12, align 4
  %15 = load i32* %_11, align 4
  %16 = load i32* %_12, align 4
  store i32 %15, i32* %3, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32* %3, align 4
  %18 = load i32* %4, align 4
  %19 = add i32 %17, %18
  store i32 %19, i32* %r.i, align 4
  %20 = load i32* %r.i, align 4
  store i32 %20, i32* %1, align 4
  store i32 2, i32* %2, align 4
  %21 = load i32* %1, align 4
  %22 = load i32* %2, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %r.i1, align 4
  %24 = load i32* %r.i1, align 4
  store i32 %24, i32* %_10, align 4
  %25 = load i32* %_9, align 4
  store i32 %25, i32* %_13, align 4
  %26 = load i32* %_8, align 4
  store i32 %26, i32* %_14, align 4
  %27 = load i32* %_13, align 4
  %28 = load i32* %_14, align 4
  %29 = icmp slt i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %0
  br label %53

; <label>:34                                      ; preds = %0
  br label %35

; <label>:35                                      ; preds = %34
  %36 = load i32* %_8, align 4
  store i32 %36, i32* %_15, align 4
  %37 = load i32* %_15, align 4
  %38 = icmp slt i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %35
  br label %53

; <label>:43                                      ; preds = %35
  br label %44

; <label>:44                                      ; preds = %43
  %45 = load i32* %_9, align 4
  store i32 %45, i32* %_16, align 4
  %46 = load i32* %_16, align 4
  %47 = icmp sgt i32 %46, 9999
  %48 = zext i1 %47 to i32
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %44
  br label %53

; <label>:52                                      ; preds = %44
  br label %54

; <label>:53                                      ; preds = %51, %42, %33
  store i32 -1, i32* %_5, align 4
  br label %145

; <label>:54                                      ; preds = %52
  %55 = load i32* %_8, align 4
  store i32 %55, i32* %_17, align 4
  %56 = load i32* %_9, align 4
  store i32 %56, i32* %_18, align 4
  %57 = load i32* %_17, align 4
  %58 = load i32* %_18, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %54
  br label %65

; <label>:64                                      ; preds = %54
  br label %86

; <label>:65                                      ; preds = %63
  %66 = load i32** %_7, align 8
  store i32* %66, i32** %_19, align 8
  %67 = load i32* %_10, align 4
  store i32 %67, i32* %_20, align 4
  %68 = load i32* %_20, align 4
  %69 = sext i32 %68 to i64
  %70 = load i32** %_19, align 8
  %71 = getelementptr inbounds i32* %70, i64 %69
  %72 = load i32* %71, align 4
  store i32 %72, i32* %_21, align 4
  %73 = load i32* %_6, align 4
  store i32 %73, i32* %_22, align 4
  %74 = load i32* %_21, align 4
  %75 = load i32* %_22, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %65
  br label %82

; <label>:81                                      ; preds = %65
  br label %85

; <label>:82                                      ; preds = %80
  %83 = load i32* %_10, align 4
  store i32 %83, i32* %_23, align 4
  %84 = load i32* %_23, align 4
  store i32 %84, i32* %_5, align 4
  br label %145

; <label>:85                                      ; preds = %81
  store i32 -1, i32* %_5, align 4
  br label %145

; <label>:86                                      ; preds = %64
  %87 = load i32** %_7, align 8
  store i32* %87, i32** %_24, align 8
  %88 = load i32* %_10, align 4
  store i32 %88, i32* %_25, align 4
  %89 = load i32* %_25, align 4
  %90 = sext i32 %89 to i64
  %91 = load i32** %_24, align 8
  %92 = getelementptr inbounds i32* %91, i64 %90
  %93 = load i32* %92, align 4
  store i32 %93, i32* %_26, align 4
  %94 = load i32* %_6, align 4
  store i32 %94, i32* %_27, align 4
  %95 = load i32* %_26, align 4
  %96 = load i32* %_27, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

; <label>:101                                     ; preds = %86
  br label %103

; <label>:102                                     ; preds = %86
  br label %106

; <label>:103                                     ; preds = %101
  %104 = load i32* %_10, align 4
  store i32 %104, i32* %_28, align 4
  %105 = load i32* %_28, align 4
  store i32 %105, i32* %_5, align 4
  br label %145

; <label>:106                                     ; preds = %102
  %107 = load i32** %_7, align 8
  store i32* %107, i32** %_29, align 8
  %108 = load i32* %_10, align 4
  store i32 %108, i32* %_30, align 4
  %109 = load i32* %_30, align 4
  %110 = sext i32 %109 to i64
  %111 = load i32** %_29, align 8
  %112 = getelementptr inbounds i32* %111, i64 %110
  %113 = load i32* %112, align 4
  store i32 %113, i32* %_31, align 4
  %114 = load i32* %_6, align 4
  store i32 %114, i32* %_32, align 4
  %115 = load i32* %_31, align 4
  %116 = load i32* %_32, align 4
  %117 = icmp sgt i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = and i32 %118, 1
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

; <label>:121                                     ; preds = %106
  br label %123

; <label>:122                                     ; preds = %106
  br label %134

; <label>:123                                     ; preds = %121
  %124 = load i32* %_6, align 4
  store i32 %124, i32* %_33, align 4
  %125 = load i32** %_7, align 8
  store i32* %125, i32** %_34, align 8
  %126 = load i32* %_8, align 4
  store i32 %126, i32* %_35, align 4
  %127 = load i32* %_10, align 4
  store i32 %127, i32* %_36, align 4
  %128 = load i32* %_33, align 4
  %129 = load i32** %_34, align 8
  %130 = load i32* %_35, align 4
  %131 = load i32* %_36, align 4
  %132 = call i32 @search(i32 %128, i32* %129, i32 %130, i32 %131) #2
  store i32 %132, i32* %_37, align 4
  %133 = load i32* %_37, align 4
  store i32 %133, i32* %_5, align 4
  br label %145

; <label>:134                                     ; preds = %122
  %135 = load i32* %_6, align 4
  store i32 %135, i32* %_38, align 4
  %136 = load i32** %_7, align 8
  store i32* %136, i32** %_39, align 8
  %137 = load i32* %_10, align 4
  store i32 %137, i32* %_40, align 4
  %138 = load i32* %_9, align 4
  store i32 %138, i32* %_41, align 4
  %139 = load i32* %_38, align 4
  %140 = load i32** %_39, align 8
  %141 = load i32* %_40, align 4
  %142 = load i32* %_41, align 4
  %143 = call i32 @search(i32 %139, i32* %140, i32 %141, i32 %142) #2
  store i32 %143, i32* %_42, align 4
  %144 = load i32* %_42, align 4
  store i32 %144, i32* %_5, align 4
  br label %145

; <label>:145                                     ; preds = %134, %123, %103, %85, %82, %53
  %146 = load i32* %_5, align 4
  store i32 %146, i32* %_43, align 4
  %147 = load i32* %_43, align 4
  ret i32 %147
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %r.i1 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %r.i = alloca i32, align 4
  %5 = alloca i32, align 4
  %_57 = alloca i32, align 4
  %_58 = alloca %struct.l_array_10000_uint32_t, align 16
  %_59 = alloca i32, align 4
  %_60 = alloca i32, align 4
  %_61 = alloca i32, align 4
  %_62 = alloca i32, align 4
  %_63 = alloca i32, align 4
  %_64 = alloca i32, align 4
  %_65 = alloca i32, align 4
  %_66 = alloca i32, align 4
  %_67 = alloca i32, align 4
  %_68 = alloca i32, align 4
  store i32 0, i32* %5
  store i32 0, i32* %_57, align 4
  store i32 0, i32* %_59, align 4
  br label %8
                                                  ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %36, %6
  br label %8

; <label>:8                                       ; preds = %29, %7, %0
  %9 = load i32* %_59, align 4
  store i32 %9, i32* %_61, align 4
  %10 = load i32* %_61, align 4
  %11 = icmp slt i32 %10, 10000
  %12 = zext i1 %11 to i32
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %8
  br label %17

; <label>:16                                      ; preds = %8
  br label %38

; <label>:17                                      ; preds = %15
  %18 = load i32* %_59, align 4
  store i32 %18, i32* %_62, align 4
  %19 = load i32* %_59, align 4
  store i32 %19, i32* %_63, align 4
  %20 = load i32* %_62, align 4
  store i32 %20, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %21 = load i32* %3, align 4
  %22 = load i32* %4, align 4
  %23 = add i32 %21, %22
  store i32 %23, i32* %r.i, align 4
  %24 = load i32* %r.i, align 4
  %25 = load i32* %_63, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.l_array_10000_uint32_t* %_58, i32 0, i32 0
  %28 = getelementptr inbounds [10000 x i32]* %27, i32 0, i64 %26
  store i32 %24, i32* %28, align 4
  br label %29

; <label>:29                                      ; preds = %17
  %30 = load i32* %_59, align 4
  store i32 %30, i32* %_64, align 4
  %31 = load i32* %_64, align 4
  store i32 %31, i32* %1, align 4
  store i32 1, i32* %2, align 4
  %32 = load i32* %1, align 4
  %33 = load i32* %2, align 4
  %34 = add i32 %32, %33
  store i32 %34, i32* %r.i1, align 4
  %35 = load i32* %r.i1, align 4
  store i32 %35, i32* %_59, align 4
  br label %8
                                                  ; No predecessors!
  br i1 true, label %7, label %37

; <label>:37                                      ; preds = %36
  br label %38

; <label>:38                                      ; preds = %37, %16
  store i32 1, i32* %_60, align 4
  %39 = load i32* %_60, align 4
  store i32 %39, i32* %_65, align 4
  %40 = load i32* %_65, align 4
  %41 = getelementptr inbounds %struct.l_array_10000_uint32_t* %_58, i32 0, i32 0
  %42 = getelementptr inbounds [10000 x i32]* %41, i32 0, i64 0
  %43 = call i32 @search(i32 %40, i32* %42, i32 0, i32 9999) #2
  store i32 %43, i32* %_66, align 4
  %44 = load i32* %_66, align 4
  %45 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds (%struct.l_array_4_uint8_t* @_OC_str, i32 0, i32 0, i64 0), i32 %44)
  store i32 %45, i32* %_67, align 4
  %46 = load i32* %_57, align 4
  store i32 %46, i32* %_68, align 4
  %47 = load i32* %_68, align 4
  ret i32 %47
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}

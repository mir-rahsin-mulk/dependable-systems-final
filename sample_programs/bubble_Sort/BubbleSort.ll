; ModuleID = 'BubbleSort.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Before the sort:\0A\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str3 = private unnamed_addr constant [17 x i8] c"After the sort:\0A\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"PAUSE\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %l = alloca i32, align 4
  %4 = alloca i8*
  %arr_size = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %INDEX = alloca i32, align 4
  %5 = alloca i32
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %6 = load i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4
  %9 = alloca i32, i64 %7, align 16
  %10 = load i32* %2, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %arr_size, align 4
  store i32 1, i32* %i, align 4
  br label %12

; <label>:12                                      ; preds = %27, %0
  %13 = load i32* %i, align 4
  %14 = load i32* %arr_size, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %30

; <label>:16                                      ; preds = %12
  %17 = load i32* %i, align 4
  %18 = sext i32 %17 to i64
  %19 = load i8*** %3, align 8
  %20 = getelementptr inbounds i8** %19, i64 %18
  %21 = load i8** %20, align 8
  %22 = call i32 @atoi(i8* %21) #4
  %23 = load i32* %i, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32* %9, i64 %25
  store i32 %22, i32* %26, align 4
  br label %27

; <label>:27                                      ; preds = %16
  %28 = load i32* %i, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %i, align 4
  br label %12

; <label>:30                                      ; preds = %12
  store i32 0, i32* %i1, align 4
  %31 = load i32* %2, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %INDEX, align 4
  %33 = load i32* %i1, align 4
  %34 = add nsw i32 %33, 0
  store i32 %34, i32* %i1, align 4
  %35 = load i32* %i1, align 4
  %36 = sdiv i32 %35, 1
  store i32 %36, i32* %i1, align 4
  %37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i1, align 4
  br label %38

; <label>:38                                      ; preds = %48, %30
  %39 = load i32* %i1, align 4
  %40 = load i32* %INDEX, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %51

; <label>:42                                      ; preds = %38
  %43 = load i32* %i1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32* %9, i64 %44
  %46 = load i32* %45, align 4
  %47 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %46)
  br label %48

; <label>:48                                      ; preds = %42
  %49 = load i32* %i1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %i1, align 4
  br label %38

; <label>:51                                      ; preds = %38
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %53 = load i32* %INDEX, align 4
  call void @bubble_srt(i32* %9, i32 %53)
  %54 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str3, i32 0, i32 0))
  store i32 0, i32* %i1, align 4
  br label %55

; <label>:55                                      ; preds = %65, %51
  %56 = load i32* %i1, align 4
  %57 = load i32* %INDEX, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %68

; <label>:59                                      ; preds = %55
  %60 = load i32* %i1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32* %9, i64 %61
  %63 = load i32* %62, align 4
  %64 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %63)
  br label %65

; <label>:65                                      ; preds = %59
  %66 = load i32* %i1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %i1, align 4
  br label %55

; <label>:68                                      ; preds = %55
  %69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %70 = call i32 @system(i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0))
  store i32 0, i32* %1
  store i32 1, i32* %5
  %71 = load i8** %4
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32* %1
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @bubble_srt(i32* %a, i32 %n) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  store i32* %a, i32** %1, align 8
  store i32 %n, i32* %2, align 4
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %54, %0
  %4 = load i32* %i, align 4
  %5 = load i32* %2, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %57

; <label>:7                                       ; preds = %3
  store i32 1, i32* %j, align 4
  br label %8

; <label>:8                                       ; preds = %50, %7
  %9 = load i32* %j, align 4
  %10 = load i32* %2, align 4
  %11 = load i32* %i, align 4
  %12 = sub nsw i32 %10, %11
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %53

; <label>:14                                      ; preds = %8
  %15 = load i32* %j, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = load i32** %1, align 8
  %19 = getelementptr inbounds i32* %18, i64 %17
  %20 = load i32* %19, align 4
  %21 = load i32* %j, align 4
  %22 = sext i32 %21 to i64
  %23 = load i32** %1, align 8
  %24 = getelementptr inbounds i32* %23, i64 %22
  %25 = load i32* %24, align 4
  %26 = icmp sgt i32 %20, %25
  br i1 %26, label %27, label %49

; <label>:27                                      ; preds = %14
  %28 = load i32* %j, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = load i32** %1, align 8
  %32 = getelementptr inbounds i32* %31, i64 %30
  %33 = load i32* %32, align 4
  store i32 %33, i32* %t, align 4
  %34 = load i32* %j, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32** %1, align 8
  %37 = getelementptr inbounds i32* %36, i64 %35
  %38 = load i32* %37, align 4
  %39 = load i32* %j, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = load i32** %1, align 8
  %43 = getelementptr inbounds i32* %42, i64 %41
  store i32 %38, i32* %43, align 4
  %44 = load i32* %t, align 4
  %45 = load i32* %j, align 4
  %46 = sext i32 %45 to i64
  %47 = load i32** %1, align 8
  %48 = getelementptr inbounds i32* %47, i64 %46
  store i32 %44, i32* %48, align 4
  br label %49

; <label>:49                                      ; preds = %27, %14
  br label %50

; <label>:50                                      ; preds = %49
  %51 = load i32* %j, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %j, align 4
  br label %8

; <label>:53                                      ; preds = %8
  br label %54

; <label>:54                                      ; preds = %53
  %55 = load i32* %i, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %i, align 4
  br label %3

; <label>:57                                      ; preds = %3
  ret void
}

declare i32 @system(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}

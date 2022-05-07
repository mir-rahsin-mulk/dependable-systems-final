; ModuleID = 'output_linked.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@count = global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"current execution number %d\0A\00", align 1
@.str1 = private unnamed_addr constant [18 x i8] c"Before the sort:\0A\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str3 = private unnamed_addr constant [17 x i8] c"After the sort:\0A\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"PAUSE\00", align 1

; Function Attrs: nounwind uwtable
define void @callCount() #0 {
  %1 = load i32* @count, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @count, align 4
  %3 = load i32* @count, align 4
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i32 %3)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  call void @callCount()
  %1 = alloca i32, align 4
  call void @callCount()
  %2 = alloca i32, align 4
  call void @callCount()
  %3 = alloca i8**, align 8
  call void @callCount()
  %l = alloca i32, align 4
  call void @callCount()
  %4 = alloca i8*
  call void @callCount()
  %arr_size = alloca i32, align 4
  call void @callCount()
  %i = alloca i32, align 4
  call void @callCount()
  %i1 = alloca i32, align 4
  call void @callCount()
  %INDEX = alloca i32, align 4
  call void @callCount()
  %5 = alloca i32
  call void @callCount()
  store i32 0, i32* %1
  call void @callCount()
  store i32 %argc, i32* %2, align 4
  call void @callCount()
  store i8** %argv, i8*** %3, align 8
  call void @callCount()
  %6 = load i32* %2, align 4
  call void @callCount()
  %7 = zext i32 %6 to i64
  call void @callCount()
  %8 = call i8* @llvm.stacksave()
  call void @callCount()
  store i8* %8, i8** %4
  call void @callCount()
  %9 = alloca i32, i64 %7, align 16
  call void @callCount()
  %10 = load i32* %2, align 4
  call void @callCount()
  store i32 %10, i32* %arr_size, align 4
  call void @callCount()
  store i32 1, i32* %i, align 4
  call void @callCount()
  br label %11

; <label>:11                                      ; preds = %26, %0
  call void @callCount()
  %12 = load i32* %i, align 4
  call void @callCount()
  %13 = load i32* %arr_size, align 4
  call void @callCount()
  %14 = icmp slt i32 %12, %13
  call void @callCount()
  br i1 %14, label %15, label %29

; <label>:15                                      ; preds = %11
  call void @callCount()
  %16 = load i32* %i, align 4
  call void @callCount()
  %17 = sext i32 %16 to i64
  call void @callCount()
  %18 = load i8*** %3, align 8
  call void @callCount()
  %19 = getelementptr inbounds i8** %18, i64 %17
  call void @callCount()
  %20 = load i8** %19, align 8
  call void @callCount()
  %21 = call i32 @atoi(i8* %20) #4
  call void @callCount()
  %22 = load i32* %i, align 4
  call void @callCount()
  %23 = sub nsw i32 %22, 1
  call void @callCount()
  %24 = sext i32 %23 to i64
  call void @callCount()
  %25 = getelementptr inbounds i32* %9, i64 %24
  call void @callCount()
  store i32 %21, i32* %25, align 4
  call void @callCount()
  br label %26

; <label>:26                                      ; preds = %15
  call void @callCount()
  %27 = load i32* %i, align 4
  call void @callCount()
  %28 = add nsw i32 %27, 1
  call void @callCount()
  store i32 %28, i32* %i, align 4
  call void @callCount()
  br label %11

; <label>:29                                      ; preds = %11
  call void @callCount()
  store i32 0, i32* %i1, align 4
  call void @callCount()
  %30 = load i32* %2, align 4
  call void @callCount()
  store i32 %30, i32* %INDEX, align 4
  call void @callCount()
  %31 = load i32* %i1, align 4
  call void @callCount()
  %32 = add nsw i32 %31, 0
  call void @callCount()
  store i32 %32, i32* %i1, align 4
  call void @callCount()
  %33 = load i32* %i1, align 4
  call void @callCount()
  %34 = sdiv i32 %33, 1
  call void @callCount()
  store i32 %34, i32* %i1, align 4
  call void @callCount()
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0))
  call void @callCount()
  store i32 0, i32* %i1, align 4
  call void @callCount()
  br label %36

; <label>:36                                      ; preds = %46, %29
  call void @callCount()
  %37 = load i32* %i1, align 4
  call void @callCount()
  %38 = load i32* %INDEX, align 4
  call void @callCount()
  %39 = icmp slt i32 %37, %38
  call void @callCount()
  br i1 %39, label %40, label %49

; <label>:40                                      ; preds = %36
  call void @callCount()
  %41 = load i32* %i1, align 4
  call void @callCount()
  %42 = sext i32 %41 to i64
  call void @callCount()
  %43 = getelementptr inbounds i32* %9, i64 %42
  call void @callCount()
  %44 = load i32* %43, align 4
  call void @callCount()
  %45 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str12, i32 0, i32 0), i32 %44)
  call void @callCount()
  br label %46

; <label>:46                                      ; preds = %40
  call void @callCount()
  %47 = load i32* %i1, align 4
  call void @callCount()
  %48 = add nsw i32 %47, 1
  call void @callCount()
  store i32 %48, i32* %i1, align 4
  call void @callCount()
  br label %36

; <label>:49                                      ; preds = %36
  call void @callCount()
  %50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  call void @callCount()
  %51 = load i32* %INDEX, align 4
  call void @callCount()
  call void @bubble_srt(i32* %9, i32 %51)
  call void @callCount()
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str3, i32 0, i32 0))
  call void @callCount()
  store i32 0, i32* %i1, align 4
  call void @callCount()
  br label %53

; <label>:53                                      ; preds = %63, %49
  call void @callCount()
  %54 = load i32* %i1, align 4
  call void @callCount()
  %55 = load i32* %INDEX, align 4
  call void @callCount()
  %56 = icmp slt i32 %54, %55
  call void @callCount()
  br i1 %56, label %57, label %66

; <label>:57                                      ; preds = %53
  call void @callCount()
  %58 = load i32* %i1, align 4
  call void @callCount()
  %59 = sext i32 %58 to i64
  call void @callCount()
  %60 = getelementptr inbounds i32* %9, i64 %59
  call void @callCount()
  %61 = load i32* %60, align 4
  call void @callCount()
  %62 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str12, i32 0, i32 0), i32 %61)
  call void @callCount()
  br label %63

; <label>:63                                      ; preds = %57
  call void @callCount()
  %64 = load i32* %i1, align 4
  call void @callCount()
  %65 = add nsw i32 %64, 1
  call void @callCount()
  store i32 %65, i32* %i1, align 4
  call void @callCount()
  br label %53

; <label>:66                                      ; preds = %53
  call void @callCount()
  %67 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  call void @callCount()
  %68 = call i32 @system(i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0))
  call void @callCount()
  store i32 0, i32* %1
  call void @callCount()
  store i32 1, i32* %5
  call void @callCount()
  %69 = load i8** %4
  call void @callCount()
  call void @llvm.stackrestore(i8* %69)
  call void @callCount()
  %70 = load i32* %1
  call void @callCount()
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind uwtable
define void @bubble_srt(i32* %a, i32 %n) #0 {
  call void @callCount()
  %1 = alloca i32*, align 8
  call void @callCount()
  %2 = alloca i32, align 4
  call void @callCount()
  %i = alloca i32, align 4
  call void @callCount()
  %j = alloca i32, align 4
  call void @callCount()
  %t = alloca i32, align 4
  call void @callCount()
  store i32* %a, i32** %1, align 8
  call void @callCount()
  store i32 %n, i32* %2, align 4
  call void @callCount()
  store i32 0, i32* %i, align 4
  call void @callCount()
  br label %3

; <label>:3                                       ; preds = %54, %0
  call void @callCount()
  %4 = load i32* %i, align 4
  call void @callCount()
  %5 = load i32* %2, align 4
  call void @callCount()
  %6 = icmp slt i32 %4, %5
  call void @callCount()
  br i1 %6, label %7, label %57

; <label>:7                                       ; preds = %3
  call void @callCount()
  store i32 1, i32* %j, align 4
  call void @callCount()
  br label %8

; <label>:8                                       ; preds = %50, %7
  call void @callCount()
  %9 = load i32* %j, align 4
  call void @callCount()
  %10 = load i32* %2, align 4
  call void @callCount()
  %11 = load i32* %i, align 4
  call void @callCount()
  %12 = sub nsw i32 %10, %11
  call void @callCount()
  %13 = icmp slt i32 %9, %12
  call void @callCount()
  br i1 %13, label %14, label %53

; <label>:14                                      ; preds = %8
  call void @callCount()
  %15 = load i32* %j, align 4
  call void @callCount()
  %16 = sub nsw i32 %15, 1
  call void @callCount()
  %17 = sext i32 %16 to i64
  call void @callCount()
  %18 = load i32** %1, align 8
  call void @callCount()
  %19 = getelementptr inbounds i32* %18, i64 %17
  call void @callCount()
  %20 = load i32* %19, align 4
  call void @callCount()
  %21 = load i32* %j, align 4
  call void @callCount()
  %22 = sext i32 %21 to i64
  call void @callCount()
  %23 = load i32** %1, align 8
  call void @callCount()
  %24 = getelementptr inbounds i32* %23, i64 %22
  call void @callCount()
  %25 = load i32* %24, align 4
  call void @callCount()
  %26 = icmp sgt i32 %20, %25
  call void @callCount()
  br i1 %26, label %27, label %49

; <label>:27                                      ; preds = %14
  call void @callCount()
  %28 = load i32* %j, align 4
  call void @callCount()
  %29 = sub nsw i32 %28, 1
  call void @callCount()
  %30 = sext i32 %29 to i64
  call void @callCount()
  %31 = load i32** %1, align 8
  call void @callCount()
  %32 = getelementptr inbounds i32* %31, i64 %30
  call void @callCount()
  %33 = load i32* %32, align 4
  call void @callCount()
  store i32 %33, i32* %t, align 4
  call void @callCount()
  %34 = load i32* %j, align 4
  call void @callCount()
  %35 = sext i32 %34 to i64
  call void @callCount()
  %36 = load i32** %1, align 8
  call void @callCount()
  %37 = getelementptr inbounds i32* %36, i64 %35
  call void @callCount()
  %38 = load i32* %37, align 4
  call void @callCount()
  %39 = load i32* %j, align 4
  call void @callCount()
  %40 = sub nsw i32 %39, 1
  call void @callCount()
  %41 = sext i32 %40 to i64
  call void @callCount()
  %42 = load i32** %1, align 8
  call void @callCount()
  %43 = getelementptr inbounds i32* %42, i64 %41
  call void @callCount()
  store i32 %38, i32* %43, align 4
  call void @callCount()
  %44 = load i32* %t, align 4
  call void @callCount()
  %45 = load i32* %j, align 4
  call void @callCount()
  %46 = sext i32 %45 to i64
  call void @callCount()
  %47 = load i32** %1, align 8
  call void @callCount()
  %48 = getelementptr inbounds i32* %47, i64 %46
  call void @callCount()
  store i32 %44, i32* %48, align 4
  call void @callCount()
  br label %49

; <label>:49                                      ; preds = %27, %14
  call void @callCount()
  br label %50

; <label>:50                                      ; preds = %49
  call void @callCount()
  %51 = load i32* %j, align 4
  call void @callCount()
  %52 = add nsw i32 %51, 1
  call void @callCount()
  store i32 %52, i32* %j, align 4
  call void @callCount()
  br label %8

; <label>:53                                      ; preds = %8
  call void @callCount()
  br label %54

; <label>:54                                      ; preds = %53
  call void @callCount()
  %55 = load i32* %i, align 4
  call void @callCount()
  %56 = add nsw i32 %55, 1
  call void @callCount()
  store i32 %56, i32* %i, align 4
  call void @callCount()
  br label %3

; <label>:57                                      ; preds = %3
  call void @callCount()
  ret void
}

declare i32 @system(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}

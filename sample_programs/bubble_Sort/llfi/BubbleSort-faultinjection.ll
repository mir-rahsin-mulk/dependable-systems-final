; ModuleID = '/home/llfi/tutorial/LLFI/sample_programs/merge_Sort/llfi/BubbleSort-llfi_index.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Before the sort:\0A\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str3 = private unnamed_addr constant [17 x i8] c"After the sort:\0A\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"PAUSE\00", align 1
@add_namestr = internal constant [4 x i8] c"add\00"
@load_namestr = internal constant [5 x i8] c"load\00"
@sdiv_namestr = internal constant [5 x i8] c"sdiv\00"
@zext_namestr = internal constant [5 x i8] c"zext\00"
@sub_namestr = internal constant [4 x i8] c"sub\00"
@icmp_namestr = internal constant [5 x i8] c"icmp\00"
@sext_namestr = internal constant [5 x i8] c"sext\00"
@getelementptr_namestr = internal constant [14 x i8] c"getelementptr\00"

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  call void @initInjections()
  %1 = alloca i32, align 4, !llfi_index !1
  %2 = alloca i32, align 4, !llfi_index !2
  %3 = alloca i8**, align 8, !llfi_index !3
  %l = alloca i32, align 4, !llfi_index !4
  %4 = alloca i8*, !llfi_index !5
  %arr_size = alloca i32, align 4, !llfi_index !6
  %i = alloca i32, align 4, !llfi_index !7
  %i1 = alloca i32, align 4, !llfi_index !8
  %INDEX = alloca i32, align 4, !llfi_index !9
  %5 = alloca i32, !llfi_index !10
  store i32 0, i32* %1, !llfi_index !11
  store i32 %argc, i32* %2, align 4, !llfi_index !12
  store i8** %argv, i8*** %3, align 8, !llfi_index !13
  %6 = load i32* %2, align 4, !llfi_index !14
  %fi3 = call i32 @injectFault0(i64 14, i32 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %7 = zext i32 %fi3 to i64, !llfi_index !16
  %fi4 = call i64 @injectFault1(i64 15, i64 %7, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %8 = call i8* @llvm.stacksave(), !llfi_index !17
  store i8* %8, i8** %4, !llfi_index !18
  %9 = alloca i32, i64 %fi4, align 16, !llfi_index !19
  %10 = load i32* %2, align 4, !llfi_index !20
  %fi6 = call i32 @injectFault0(i64 19, i32 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %11 = sub nsw i32 %fi6, 1, !llfi_index !21
  %fi7 = call i32 @injectFault0(i64 20, i32 %11, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !15
  store i32 %fi7, i32* %arr_size, align 4, !llfi_index !22
  store i32 1, i32* %i, align 4, !llfi_index !23
  br label %12, !llfi_index !24

; <label>:12                                      ; preds = %27, %0
  %13 = load i32* %i, align 4, !llfi_index !25
  %fi8 = call i32 @injectFault0(i64 24, i32 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %14 = load i32* %arr_size, align 4, !llfi_index !26
  %fi9 = call i32 @injectFault0(i64 25, i32 %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %15 = icmp slt i32 %fi8, %fi9, !llfi_index !27
  %fi10 = call i1 @injectFault2(i64 26, i1 %15, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !15
  br i1 %fi10, label %16, label %30, !llfi_index !28

; <label>:16                                      ; preds = %12
  %17 = load i32* %i, align 4, !llfi_index !29
  %fi5 = call i32 @injectFault0(i64 28, i32 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %18 = sext i32 %fi5 to i64, !llfi_index !30
  %fi11 = call i64 @injectFault1(i64 29, i64 %18, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %19 = load i8*** %3, align 8, !llfi_index !31
  %fi12 = call i8** @injectFault3(i64 30, i8** %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %20 = getelementptr i8** %fi12, i64 %fi11, !llfi_index !32
  %fi13 = call i8** @injectFault3(i64 31, i8** %20, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %21 = load i8** %fi13, align 8, !llfi_index !33
  %fi14 = call i8* @injectFault4(i64 32, i8* %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %22 = call i32 @atoi(i8* %fi14) #4, !llfi_index !34
  %23 = load i32* %i, align 4, !llfi_index !35
  %fi15 = call i32 @injectFault0(i64 34, i32 %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %24 = sub nsw i32 %fi15, 1, !llfi_index !36
  %fi16 = call i32 @injectFault0(i64 35, i32 %24, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %25 = sext i32 %fi16 to i64, !llfi_index !37
  %fi17 = call i64 @injectFault1(i64 36, i64 %25, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %26 = getelementptr i32* %9, i64 %fi17, !llfi_index !38
  %fi18 = call i32* @injectFault5(i64 37, i32* %26, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !15
  store i32 %22, i32* %fi18, align 4, !llfi_index !39
  br label %27, !llfi_index !40

; <label>:27                                      ; preds = %16
  %28 = load i32* %i, align 4, !llfi_index !41
  %fi19 = call i32 @injectFault0(i64 40, i32 %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %29 = add nsw i32 %fi19, 1, !llfi_index !42
  %fi20 = call i32 @injectFault0(i64 41, i32 %29, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !15
  store i32 %fi20, i32* %i, align 4, !llfi_index !43
  br label %12, !llfi_index !44

; <label>:30                                      ; preds = %12
  store i32 0, i32* %i1, align 4, !llfi_index !45
  %31 = load i32* %2, align 4, !llfi_index !46
  %fi21 = call i32 @injectFault0(i64 45, i32 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %32 = sub nsw i32 %fi21, 1, !llfi_index !47
  %fi22 = call i32 @injectFault0(i64 46, i32 %32, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !15
  store i32 %fi22, i32* %INDEX, align 4, !llfi_index !48
  %33 = load i32* %i1, align 4, !llfi_index !49
  %fi24 = call i32 @injectFault0(i64 48, i32 %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %34 = add nsw i32 %fi24, 0, !llfi_index !50
  %fi = call i32 @injectFault0(i64 49, i32 %34, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !15
  store i32 %fi, i32* %i1, align 4, !llfi_index !51
  %35 = load i32* %i1, align 4, !llfi_index !52
  %fi1 = call i32 @injectFault0(i64 51, i32 %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %36 = sdiv i32 %fi1, 1, !llfi_index !53
  %fi2 = call i32 @injectFault0(i64 52, i32 %36, i32 15, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sdiv_namestr, i32 0, i32 0)), !llfi_injectfault !15
  store i32 %fi2, i32* %i1, align 4, !llfi_index !54
  %37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str, i32 0, i32 0)), !llfi_index !55
  store i32 0, i32* %i1, align 4, !llfi_index !56
  br label %38, !llfi_index !57

; <label>:38                                      ; preds = %48, %30
  %39 = load i32* %i1, align 4, !llfi_index !58
  %fi26 = call i32 @injectFault0(i64 57, i32 %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %40 = load i32* %INDEX, align 4, !llfi_index !59
  %fi27 = call i32 @injectFault0(i64 58, i32 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %41 = icmp slt i32 %fi26, %fi27, !llfi_index !60
  %fi28 = call i1 @injectFault2(i64 59, i1 %41, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !15
  br i1 %fi28, label %42, label %51, !llfi_index !61

; <label>:42                                      ; preds = %38
  %43 = load i32* %i1, align 4, !llfi_index !62
  %fi29 = call i32 @injectFault0(i64 61, i32 %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %44 = sext i32 %fi29 to i64, !llfi_index !63
  %fi30 = call i64 @injectFault1(i64 62, i64 %44, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %45 = getelementptr i32* %9, i64 %fi30, !llfi_index !64
  %fi31 = call i32* @injectFault5(i64 63, i32* %45, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %46 = load i32* %fi31, align 4, !llfi_index !65
  %fi32 = call i32 @injectFault0(i64 64, i32 %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %47 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %fi32), !llfi_index !66
  br label %48, !llfi_index !67

; <label>:48                                      ; preds = %42
  %49 = load i32* %i1, align 4, !llfi_index !68
  %fi33 = call i32 @injectFault0(i64 67, i32 %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %50 = add nsw i32 %fi33, 1, !llfi_index !69
  %fi34 = call i32 @injectFault0(i64 68, i32 %50, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !15
  store i32 %fi34, i32* %i1, align 4, !llfi_index !70
  br label %38, !llfi_index !71

; <label>:51                                      ; preds = %38
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !llfi_index !72
  %53 = load i32* %INDEX, align 4, !llfi_index !73
  %fi35 = call i32 @injectFault0(i64 72, i32 %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  call void @bubble_srt(i32* %9, i32 %fi35), !llfi_index !74
  %54 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str3, i32 0, i32 0)), !llfi_index !75
  store i32 0, i32* %i1, align 4, !llfi_index !76
  br label %55, !llfi_index !77

; <label>:55                                      ; preds = %65, %51
  %56 = load i32* %i1, align 4, !llfi_index !78
  %fi36 = call i32 @injectFault0(i64 77, i32 %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %57 = load i32* %INDEX, align 4, !llfi_index !79
  %fi37 = call i32 @injectFault0(i64 78, i32 %57, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %58 = icmp slt i32 %fi36, %fi37, !llfi_index !80
  %fi38 = call i1 @injectFault2(i64 79, i1 %58, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !15
  br i1 %fi38, label %59, label %68, !llfi_index !81

; <label>:59                                      ; preds = %55
  %60 = load i32* %i1, align 4, !llfi_index !82
  %fi39 = call i32 @injectFault0(i64 81, i32 %60, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %61 = sext i32 %fi39 to i64, !llfi_index !83
  %fi40 = call i64 @injectFault1(i64 82, i64 %61, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %62 = getelementptr i32* %9, i64 %fi40, !llfi_index !84
  %fi41 = call i32* @injectFault5(i64 83, i32* %62, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %63 = load i32* %fi41, align 4, !llfi_index !85
  %fi42 = call i32 @injectFault0(i64 84, i32 %63, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %64 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %fi42), !llfi_index !86
  br label %65, !llfi_index !87

; <label>:65                                      ; preds = %59
  %66 = load i32* %i1, align 4, !llfi_index !88
  %fi23 = call i32 @injectFault0(i64 87, i32 %66, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %67 = add nsw i32 %fi23, 1, !llfi_index !89
  %fi43 = call i32 @injectFault0(i64 88, i32 %67, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !15
  store i32 %fi43, i32* %i1, align 4, !llfi_index !90
  br label %55, !llfi_index !91

; <label>:68                                      ; preds = %55
  %69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !llfi_index !92
  %70 = call i32 @system(i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0)), !llfi_index !93
  store i32 0, i32* %1, !llfi_index !94
  store i32 1, i32* %5, !llfi_index !95
  %71 = load i8** %4, !llfi_index !96
  %fi44 = call i8* @injectFault4(i64 95, i8* %71, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  call void @llvm.stackrestore(i8* %fi44), !llfi_index !97
  %72 = load i32* %1, !llfi_index !98
  %fi25 = call i32 @injectFault0(i64 97, i32 %72, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  call void @postInjections()
  ret i32 %fi25, !llfi_index !99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @bubble_srt(i32* %a, i32 %n) #0 {
  %1 = alloca i32*, align 8, !llfi_index !100
  %2 = alloca i32, align 4, !llfi_index !101
  %i = alloca i32, align 4, !llfi_index !102
  %j = alloca i32, align 4, !llfi_index !103
  %t = alloca i32, align 4, !llfi_index !104
  store i32* %a, i32** %1, align 8, !llfi_index !105
  store i32 %n, i32* %2, align 4, !llfi_index !106
  store i32 0, i32* %i, align 4, !llfi_index !107
  br label %3, !llfi_index !108

; <label>:3                                       ; preds = %54, %0
  %4 = load i32* %i, align 4, !llfi_index !109
  %fi = call i32 @injectFault0(i64 108, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %5 = load i32* %2, align 4, !llfi_index !110
  %fi1 = call i32 @injectFault0(i64 109, i32 %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %6 = icmp slt i32 %fi, %fi1, !llfi_index !111
  %fi2 = call i1 @injectFault2(i64 110, i1 %6, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !15
  br i1 %fi2, label %7, label %57, !llfi_index !112

; <label>:7                                       ; preds = %3
  store i32 1, i32* %j, align 4, !llfi_index !113
  br label %8, !llfi_index !114

; <label>:8                                       ; preds = %50, %7
  %9 = load i32* %j, align 4, !llfi_index !115
  %fi4 = call i32 @injectFault0(i64 114, i32 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %10 = load i32* %2, align 4, !llfi_index !116
  %fi5 = call i32 @injectFault0(i64 115, i32 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %11 = load i32* %i, align 4, !llfi_index !117
  %fi6 = call i32 @injectFault0(i64 116, i32 %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %12 = sub nsw i32 %fi5, %fi6, !llfi_index !118
  %fi7 = call i32 @injectFault0(i64 117, i32 %12, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %13 = icmp slt i32 %fi4, %fi7, !llfi_index !119
  %fi8 = call i1 @injectFault2(i64 118, i1 %13, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !15
  br i1 %fi8, label %14, label %53, !llfi_index !120

; <label>:14                                      ; preds = %8
  %15 = load i32* %j, align 4, !llfi_index !121
  %fi9 = call i32 @injectFault0(i64 120, i32 %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %16 = sub nsw i32 %fi9, 1, !llfi_index !122
  %fi10 = call i32 @injectFault0(i64 121, i32 %16, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %17 = sext i32 %fi10 to i64, !llfi_index !123
  %fi3 = call i64 @injectFault1(i64 122, i64 %17, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %18 = load i32** %1, align 8, !llfi_index !124
  %fi12 = call i32* @injectFault5(i64 123, i32* %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %19 = getelementptr i32* %fi12, i64 %fi3, !llfi_index !125
  %fi13 = call i32* @injectFault5(i64 124, i32* %19, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %20 = load i32* %fi13, align 4, !llfi_index !126
  %fi14 = call i32 @injectFault0(i64 125, i32 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %21 = load i32* %j, align 4, !llfi_index !127
  %fi15 = call i32 @injectFault0(i64 126, i32 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %22 = sext i32 %fi15 to i64, !llfi_index !128
  %fi16 = call i64 @injectFault1(i64 127, i64 %22, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %23 = load i32** %1, align 8, !llfi_index !129
  %fi17 = call i32* @injectFault5(i64 128, i32* %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %24 = getelementptr i32* %fi17, i64 %fi16, !llfi_index !130
  %fi18 = call i32* @injectFault5(i64 129, i32* %24, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %25 = load i32* %fi18, align 4, !llfi_index !131
  %fi19 = call i32 @injectFault0(i64 130, i32 %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %26 = icmp sgt i32 %fi14, %fi19, !llfi_index !132
  %fi20 = call i1 @injectFault2(i64 131, i1 %26, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !15
  br i1 %fi20, label %27, label %49, !llfi_index !133

; <label>:27                                      ; preds = %14
  %28 = load i32* %j, align 4, !llfi_index !134
  %fi21 = call i32 @injectFault0(i64 133, i32 %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %29 = sub nsw i32 %fi21, 1, !llfi_index !135
  %fi22 = call i32 @injectFault0(i64 134, i32 %29, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %30 = sext i32 %fi22 to i64, !llfi_index !136
  %fi23 = call i64 @injectFault1(i64 135, i64 %30, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %31 = load i32** %1, align 8, !llfi_index !137
  %fi24 = call i32* @injectFault5(i64 136, i32* %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %32 = getelementptr i32* %fi24, i64 %fi23, !llfi_index !138
  %fi25 = call i32* @injectFault5(i64 137, i32* %32, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %33 = load i32* %fi25, align 4, !llfi_index !139
  %fi11 = call i32 @injectFault0(i64 138, i32 %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  store i32 %fi11, i32* %t, align 4, !llfi_index !140
  %34 = load i32* %j, align 4, !llfi_index !141
  %fi26 = call i32 @injectFault0(i64 140, i32 %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %35 = sext i32 %fi26 to i64, !llfi_index !142
  %fi27 = call i64 @injectFault1(i64 141, i64 %35, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %36 = load i32** %1, align 8, !llfi_index !143
  %fi28 = call i32* @injectFault5(i64 142, i32* %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %37 = getelementptr i32* %fi28, i64 %fi27, !llfi_index !144
  %fi29 = call i32* @injectFault5(i64 143, i32* %37, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %38 = load i32* %fi29, align 4, !llfi_index !145
  %fi30 = call i32 @injectFault0(i64 144, i32 %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %39 = load i32* %j, align 4, !llfi_index !146
  %fi31 = call i32 @injectFault0(i64 145, i32 %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %40 = sub nsw i32 %fi31, 1, !llfi_index !147
  %fi32 = call i32 @injectFault0(i64 146, i32 %40, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %41 = sext i32 %fi32 to i64, !llfi_index !148
  %fi33 = call i64 @injectFault1(i64 147, i64 %41, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %42 = load i32** %1, align 8, !llfi_index !149
  %fi34 = call i32* @injectFault5(i64 148, i32* %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %43 = getelementptr i32* %fi34, i64 %fi33, !llfi_index !150
  %fi35 = call i32* @injectFault5(i64 149, i32* %43, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !15
  store i32 %fi30, i32* %fi35, align 4, !llfi_index !151
  %44 = load i32* %t, align 4, !llfi_index !152
  %fi36 = call i32 @injectFault0(i64 151, i32 %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %45 = load i32* %j, align 4, !llfi_index !153
  %fi37 = call i32 @injectFault0(i64 152, i32 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %46 = sext i32 %fi37 to i64, !llfi_index !154
  %fi38 = call i64 @injectFault1(i64 153, i64 %46, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %47 = load i32** %1, align 8, !llfi_index !155
  %fi39 = call i32* @injectFault5(i64 154, i32* %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %48 = getelementptr i32* %fi39, i64 %fi38, !llfi_index !156
  %fi40 = call i32* @injectFault5(i64 155, i32* %48, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !15
  store i32 %fi36, i32* %fi40, align 4, !llfi_index !157
  br label %49, !llfi_index !158

; <label>:49                                      ; preds = %27, %14
  br label %50, !llfi_index !159

; <label>:50                                      ; preds = %49
  %51 = load i32* %j, align 4, !llfi_index !160
  %fi41 = call i32 @injectFault0(i64 159, i32 %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %52 = add nsw i32 %fi41, 1, !llfi_index !161
  %fi42 = call i32 @injectFault0(i64 160, i32 %52, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !15
  store i32 %fi42, i32* %j, align 4, !llfi_index !162
  br label %8, !llfi_index !163

; <label>:53                                      ; preds = %8
  br label %54, !llfi_index !164

; <label>:54                                      ; preds = %53
  %55 = load i32* %i, align 4, !llfi_index !165
  %fi43 = call i32 @injectFault0(i64 164, i32 %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !15
  %56 = add nsw i32 %fi43, 1, !llfi_index !166
  %fi44 = call i32 @injectFault0(i64 165, i32 %56, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !15
  store i32 %fi44, i32* %i, align 4, !llfi_index !167
  br label %3, !llfi_index !168

; <label>:57                                      ; preds = %3
  ret void, !llfi_index !169
}

declare i32 @system(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

define i32 @injectFault0(i64, i32, i32, i32, i32, i32, i8*) {
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

define i64 @injectFault1(i64, i64, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i64
  store i64 %1, i64* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i64* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i64* %tmploc
  ret i64 %updateval
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

define i8** @injectFault3(i64, i8**, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i8**
  store i8** %1, i8*** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i8*** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i8*** %tmploc
  ret i8** %updateval
}

define i8* @injectFault4(i64, i8*, i32, i32, i32, i32, i8*) {
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

define i32* @injectFault5(i64, i32*, i32, i32, i32, i32, i8*) {
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

declare void @initInjections()

declare void @postInjections()

declare i1 @preFunc(i64, i32, i32, i32)

declare void @injectFunc(i64, i32, i8*, i32, i32, i8*)

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

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
!15 = metadata !{metadata !"after"}
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
!94 = metadata !{i64 93}
!95 = metadata !{i64 94}
!96 = metadata !{i64 95}
!97 = metadata !{i64 96}
!98 = metadata !{i64 97}
!99 = metadata !{i64 98}
!100 = metadata !{i64 99}
!101 = metadata !{i64 100}
!102 = metadata !{i64 101}
!103 = metadata !{i64 102}
!104 = metadata !{i64 103}
!105 = metadata !{i64 104}
!106 = metadata !{i64 105}
!107 = metadata !{i64 106}
!108 = metadata !{i64 107}
!109 = metadata !{i64 108}
!110 = metadata !{i64 109}
!111 = metadata !{i64 110}
!112 = metadata !{i64 111}
!113 = metadata !{i64 112}
!114 = metadata !{i64 113}
!115 = metadata !{i64 114}
!116 = metadata !{i64 115}
!117 = metadata !{i64 116}
!118 = metadata !{i64 117}
!119 = metadata !{i64 118}
!120 = metadata !{i64 119}
!121 = metadata !{i64 120}
!122 = metadata !{i64 121}
!123 = metadata !{i64 122}
!124 = metadata !{i64 123}
!125 = metadata !{i64 124}
!126 = metadata !{i64 125}
!127 = metadata !{i64 126}
!128 = metadata !{i64 127}
!129 = metadata !{i64 128}
!130 = metadata !{i64 129}
!131 = metadata !{i64 130}
!132 = metadata !{i64 131}
!133 = metadata !{i64 132}
!134 = metadata !{i64 133}
!135 = metadata !{i64 134}
!136 = metadata !{i64 135}
!137 = metadata !{i64 136}
!138 = metadata !{i64 137}
!139 = metadata !{i64 138}
!140 = metadata !{i64 139}
!141 = metadata !{i64 140}
!142 = metadata !{i64 141}
!143 = metadata !{i64 142}
!144 = metadata !{i64 143}
!145 = metadata !{i64 144}
!146 = metadata !{i64 145}
!147 = metadata !{i64 146}
!148 = metadata !{i64 147}
!149 = metadata !{i64 148}
!150 = metadata !{i64 149}
!151 = metadata !{i64 150}
!152 = metadata !{i64 151}
!153 = metadata !{i64 152}
!154 = metadata !{i64 153}
!155 = metadata !{i64 154}
!156 = metadata !{i64 155}
!157 = metadata !{i64 156}
!158 = metadata !{i64 157}
!159 = metadata !{i64 158}
!160 = metadata !{i64 159}
!161 = metadata !{i64 160}
!162 = metadata !{i64 161}
!163 = metadata !{i64 162}
!164 = metadata !{i64 163}
!165 = metadata !{i64 164}
!166 = metadata !{i64 165}
!167 = metadata !{i64 166}
!168 = metadata !{i64 167}
!169 = metadata !{i64 168}

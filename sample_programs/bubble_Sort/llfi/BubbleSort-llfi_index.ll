; ModuleID = '/home/llfi/tutorial/LLFI/sample_programs/merge_Sort/BubbleSort.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Before the sort:\0A\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str3 = private unnamed_addr constant [17 x i8] c"After the sort:\0A\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"PAUSE\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
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
  %7 = zext i32 %6 to i64, !llfi_index !15
  %8 = call i8* @llvm.stacksave(), !llfi_index !16
  store i8* %8, i8** %4, !llfi_index !17
  %9 = alloca i32, i64 %7, align 16, !llfi_index !18
  %10 = load i32* %2, align 4, !llfi_index !19
  %11 = sub nsw i32 %10, 1, !llfi_index !20
  store i32 %11, i32* %arr_size, align 4, !llfi_index !21
  store i32 1, i32* %i, align 4, !llfi_index !22
  br label %12, !llfi_index !23

; <label>:12                                      ; preds = %27, %0
  %13 = load i32* %i, align 4, !llfi_index !24
  %14 = load i32* %arr_size, align 4, !llfi_index !25
  %15 = icmp slt i32 %13, %14, !llfi_index !26
  br i1 %15, label %16, label %30, !llfi_index !27

; <label>:16                                      ; preds = %12
  %17 = load i32* %i, align 4, !llfi_index !28
  %18 = sext i32 %17 to i64, !llfi_index !29
  %19 = load i8*** %3, align 8, !llfi_index !30
  %20 = getelementptr inbounds i8** %19, i64 %18, !llfi_index !31
  %21 = load i8** %20, align 8, !llfi_index !32
  %22 = call i32 @atoi(i8* %21) #4, !llfi_index !33
  %23 = load i32* %i, align 4, !llfi_index !34
  %24 = sub nsw i32 %23, 1, !llfi_index !35
  %25 = sext i32 %24 to i64, !llfi_index !36
  %26 = getelementptr inbounds i32* %9, i64 %25, !llfi_index !37
  store i32 %22, i32* %26, align 4, !llfi_index !38
  br label %27, !llfi_index !39

; <label>:27                                      ; preds = %16
  %28 = load i32* %i, align 4, !llfi_index !40
  %29 = add nsw i32 %28, 1, !llfi_index !41
  store i32 %29, i32* %i, align 4, !llfi_index !42
  br label %12, !llfi_index !43

; <label>:30                                      ; preds = %12
  store i32 0, i32* %i1, align 4, !llfi_index !44
  %31 = load i32* %2, align 4, !llfi_index !45
  %32 = sub nsw i32 %31, 1, !llfi_index !46
  store i32 %32, i32* %INDEX, align 4, !llfi_index !47
  %33 = load i32* %i1, align 4, !llfi_index !48
  %34 = add nsw i32 %33, 0, !llfi_index !49
  store i32 %34, i32* %i1, align 4, !llfi_index !50
  %35 = load i32* %i1, align 4, !llfi_index !51
  %36 = sdiv i32 %35, 1, !llfi_index !52
  store i32 %36, i32* %i1, align 4, !llfi_index !53
  %37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str, i32 0, i32 0)), !llfi_index !54
  store i32 0, i32* %i1, align 4, !llfi_index !55
  br label %38, !llfi_index !56

; <label>:38                                      ; preds = %48, %30
  %39 = load i32* %i1, align 4, !llfi_index !57
  %40 = load i32* %INDEX, align 4, !llfi_index !58
  %41 = icmp slt i32 %39, %40, !llfi_index !59
  br i1 %41, label %42, label %51, !llfi_index !60

; <label>:42                                      ; preds = %38
  %43 = load i32* %i1, align 4, !llfi_index !61
  %44 = sext i32 %43 to i64, !llfi_index !62
  %45 = getelementptr inbounds i32* %9, i64 %44, !llfi_index !63
  %46 = load i32* %45, align 4, !llfi_index !64
  %47 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %46), !llfi_index !65
  br label %48, !llfi_index !66

; <label>:48                                      ; preds = %42
  %49 = load i32* %i1, align 4, !llfi_index !67
  %50 = add nsw i32 %49, 1, !llfi_index !68
  store i32 %50, i32* %i1, align 4, !llfi_index !69
  br label %38, !llfi_index !70

; <label>:51                                      ; preds = %38
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !llfi_index !71
  %53 = load i32* %INDEX, align 4, !llfi_index !72
  call void @bubble_srt(i32* %9, i32 %53), !llfi_index !73
  %54 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str3, i32 0, i32 0)), !llfi_index !74
  store i32 0, i32* %i1, align 4, !llfi_index !75
  br label %55, !llfi_index !76

; <label>:55                                      ; preds = %65, %51
  %56 = load i32* %i1, align 4, !llfi_index !77
  %57 = load i32* %INDEX, align 4, !llfi_index !78
  %58 = icmp slt i32 %56, %57, !llfi_index !79
  br i1 %58, label %59, label %68, !llfi_index !80

; <label>:59                                      ; preds = %55
  %60 = load i32* %i1, align 4, !llfi_index !81
  %61 = sext i32 %60 to i64, !llfi_index !82
  %62 = getelementptr inbounds i32* %9, i64 %61, !llfi_index !83
  %63 = load i32* %62, align 4, !llfi_index !84
  %64 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %63), !llfi_index !85
  br label %65, !llfi_index !86

; <label>:65                                      ; preds = %59
  %66 = load i32* %i1, align 4, !llfi_index !87
  %67 = add nsw i32 %66, 1, !llfi_index !88
  store i32 %67, i32* %i1, align 4, !llfi_index !89
  br label %55, !llfi_index !90

; <label>:68                                      ; preds = %55
  %69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !llfi_index !91
  %70 = call i32 @system(i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0)), !llfi_index !92
  store i32 0, i32* %1, !llfi_index !93
  store i32 1, i32* %5, !llfi_index !94
  %71 = load i8** %4, !llfi_index !95
  call void @llvm.stackrestore(i8* %71), !llfi_index !96
  %72 = load i32* %1, !llfi_index !97
  ret i32 %72, !llfi_index !98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @bubble_srt(i32* %a, i32 %n) #0 {
  %1 = alloca i32*, align 8, !llfi_index !99
  %2 = alloca i32, align 4, !llfi_index !100
  %i = alloca i32, align 4, !llfi_index !101
  %j = alloca i32, align 4, !llfi_index !102
  %t = alloca i32, align 4, !llfi_index !103
  store i32* %a, i32** %1, align 8, !llfi_index !104
  store i32 %n, i32* %2, align 4, !llfi_index !105
  store i32 0, i32* %i, align 4, !llfi_index !106
  br label %3, !llfi_index !107

; <label>:3                                       ; preds = %54, %0
  %4 = load i32* %i, align 4, !llfi_index !108
  %5 = load i32* %2, align 4, !llfi_index !109
  %6 = icmp slt i32 %4, %5, !llfi_index !110
  br i1 %6, label %7, label %57, !llfi_index !111

; <label>:7                                       ; preds = %3
  store i32 1, i32* %j, align 4, !llfi_index !112
  br label %8, !llfi_index !113

; <label>:8                                       ; preds = %50, %7
  %9 = load i32* %j, align 4, !llfi_index !114
  %10 = load i32* %2, align 4, !llfi_index !115
  %11 = load i32* %i, align 4, !llfi_index !116
  %12 = sub nsw i32 %10, %11, !llfi_index !117
  %13 = icmp slt i32 %9, %12, !llfi_index !118
  br i1 %13, label %14, label %53, !llfi_index !119

; <label>:14                                      ; preds = %8
  %15 = load i32* %j, align 4, !llfi_index !120
  %16 = sub nsw i32 %15, 1, !llfi_index !121
  %17 = sext i32 %16 to i64, !llfi_index !122
  %18 = load i32** %1, align 8, !llfi_index !123
  %19 = getelementptr inbounds i32* %18, i64 %17, !llfi_index !124
  %20 = load i32* %19, align 4, !llfi_index !125
  %21 = load i32* %j, align 4, !llfi_index !126
  %22 = sext i32 %21 to i64, !llfi_index !127
  %23 = load i32** %1, align 8, !llfi_index !128
  %24 = getelementptr inbounds i32* %23, i64 %22, !llfi_index !129
  %25 = load i32* %24, align 4, !llfi_index !130
  %26 = icmp sgt i32 %20, %25, !llfi_index !131
  br i1 %26, label %27, label %49, !llfi_index !132

; <label>:27                                      ; preds = %14
  %28 = load i32* %j, align 4, !llfi_index !133
  %29 = sub nsw i32 %28, 1, !llfi_index !134
  %30 = sext i32 %29 to i64, !llfi_index !135
  %31 = load i32** %1, align 8, !llfi_index !136
  %32 = getelementptr inbounds i32* %31, i64 %30, !llfi_index !137
  %33 = load i32* %32, align 4, !llfi_index !138
  store i32 %33, i32* %t, align 4, !llfi_index !139
  %34 = load i32* %j, align 4, !llfi_index !140
  %35 = sext i32 %34 to i64, !llfi_index !141
  %36 = load i32** %1, align 8, !llfi_index !142
  %37 = getelementptr inbounds i32* %36, i64 %35, !llfi_index !143
  %38 = load i32* %37, align 4, !llfi_index !144
  %39 = load i32* %j, align 4, !llfi_index !145
  %40 = sub nsw i32 %39, 1, !llfi_index !146
  %41 = sext i32 %40 to i64, !llfi_index !147
  %42 = load i32** %1, align 8, !llfi_index !148
  %43 = getelementptr inbounds i32* %42, i64 %41, !llfi_index !149
  store i32 %38, i32* %43, align 4, !llfi_index !150
  %44 = load i32* %t, align 4, !llfi_index !151
  %45 = load i32* %j, align 4, !llfi_index !152
  %46 = sext i32 %45 to i64, !llfi_index !153
  %47 = load i32** %1, align 8, !llfi_index !154
  %48 = getelementptr inbounds i32* %47, i64 %46, !llfi_index !155
  store i32 %44, i32* %48, align 4, !llfi_index !156
  br label %49, !llfi_index !157

; <label>:49                                      ; preds = %27, %14
  br label %50, !llfi_index !158

; <label>:50                                      ; preds = %49
  %51 = load i32* %j, align 4, !llfi_index !159
  %52 = add nsw i32 %51, 1, !llfi_index !160
  store i32 %52, i32* %j, align 4, !llfi_index !161
  br label %8, !llfi_index !162

; <label>:53                                      ; preds = %8
  br label %54, !llfi_index !163

; <label>:54                                      ; preds = %53
  %55 = load i32* %i, align 4, !llfi_index !164
  %56 = add nsw i32 %55, 1, !llfi_index !165
  store i32 %56, i32* %i, align 4, !llfi_index !166
  br label %3, !llfi_index !167

; <label>:57                                      ; preds = %3
  ret void, !llfi_index !168
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
!92 = metadata !{i64 92}
!93 = metadata !{i64 93}
!94 = metadata !{i64 94}
!95 = metadata !{i64 95}
!96 = metadata !{i64 96}
!97 = metadata !{i64 97}
!98 = metadata !{i64 98}
!99 = metadata !{i64 99}
!100 = metadata !{i64 100}
!101 = metadata !{i64 101}
!102 = metadata !{i64 102}
!103 = metadata !{i64 103}
!104 = metadata !{i64 104}
!105 = metadata !{i64 105}
!106 = metadata !{i64 106}
!107 = metadata !{i64 107}
!108 = metadata !{i64 108}
!109 = metadata !{i64 109}
!110 = metadata !{i64 110}
!111 = metadata !{i64 111}
!112 = metadata !{i64 112}
!113 = metadata !{i64 113}
!114 = metadata !{i64 114}
!115 = metadata !{i64 115}
!116 = metadata !{i64 116}
!117 = metadata !{i64 117}
!118 = metadata !{i64 118}
!119 = metadata !{i64 119}
!120 = metadata !{i64 120}
!121 = metadata !{i64 121}
!122 = metadata !{i64 122}
!123 = metadata !{i64 123}
!124 = metadata !{i64 124}
!125 = metadata !{i64 125}
!126 = metadata !{i64 126}
!127 = metadata !{i64 127}
!128 = metadata !{i64 128}
!129 = metadata !{i64 129}
!130 = metadata !{i64 130}
!131 = metadata !{i64 131}
!132 = metadata !{i64 132}
!133 = metadata !{i64 133}
!134 = metadata !{i64 134}
!135 = metadata !{i64 135}
!136 = metadata !{i64 136}
!137 = metadata !{i64 137}
!138 = metadata !{i64 138}
!139 = metadata !{i64 139}
!140 = metadata !{i64 140}
!141 = metadata !{i64 141}
!142 = metadata !{i64 142}
!143 = metadata !{i64 143}
!144 = metadata !{i64 144}
!145 = metadata !{i64 145}
!146 = metadata !{i64 146}
!147 = metadata !{i64 147}
!148 = metadata !{i64 148}
!149 = metadata !{i64 149}
!150 = metadata !{i64 150}
!151 = metadata !{i64 151}
!152 = metadata !{i64 152}
!153 = metadata !{i64 153}
!154 = metadata !{i64 154}
!155 = metadata !{i64 155}
!156 = metadata !{i64 156}
!157 = metadata !{i64 157}
!158 = metadata !{i64 158}
!159 = metadata !{i64 159}
!160 = metadata !{i64 160}
!161 = metadata !{i64 161}
!162 = metadata !{i64 162}
!163 = metadata !{i64 163}
!164 = metadata !{i64 164}
!165 = metadata !{i64 165}
!166 = metadata !{i64 166}
!167 = metadata !{i64 167}
!168 = metadata !{i64 168}

; ModuleID = 'HJM_Securities.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.parm = type { i32, double, double, double, double, double, double, double, i32, double, i32, double*, double** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@NUM_TRIALS = global i32 102400, align 4
@nThreads = global i32 1, align 4
@nSwaptions = global i32 1, align 4
@iN = global i32 11, align 4
@iFactors = global i32 3, align 4
@swaptions = global %struct.parm* null, align 8
@seed = global i64 1979, align 8
@swaption_seed = global i64 0, align 8
@dSumSimSwaptionPrice_global_ptr = global double* null, align 8
@dSumSquareSimSwaptionPrice_global_ptr = global double* null, align 8
@chunksize = global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"iSuccess == 1\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"HJM_Securities.cpp\00", align 1
@__PRETTY_FUNCTION__._Z6workerPv = private unnamed_addr constant [21 x i8] c"void *worker(void *)\00", align 1
@stderr = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [31 x i8] c"Usage: %s OPTION [OPTIONS]...\0A\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str4 = private unnamed_addr constant [59 x i8] c"\09-ns [number of swaptions (should be > number of threads]\0A\00", align 1
@.str5 = private unnamed_addr constant [30 x i8] c"\09-sm [number of simulations]\0A\00", align 1
@.str6 = private unnamed_addr constant [26 x i8] c"\09-nt [number of threads]\0A\00", align 1
@.str7 = private unnamed_addr constant [27 x i8] c"\09-sd [random number seed]\0A\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"PARSEC Benchmark Suite\0A\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"-sm\00", align 1
@.str10 = private unnamed_addr constant [4 x i8] c"-nt\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"-ns\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"-sd\00", align 1
@.str13 = private unnamed_addr constant [27 x i8] c"Error: Unknown option: %s\0A\00", align 1
@.str14 = private unnamed_addr constant [38 x i8] c"Error: Fewer swaptions than threads.\0A\00", align 1
@.str15 = private unnamed_addr constant [75 x i8] c"Number of Simulations: %d,  Number of threads: %d Number of swaptions: %d\0A\00", align 1
@.str16 = private unnamed_addr constant [46 x i8] c"Number of threads must be 1 (serial version)\0A\00", align 1
@.str17 = private unnamed_addr constant [56 x i8] c"Swaption %d: [SwaptionPrice: %.10lf StdError: %.10lf] \0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

define internal void @__cxx_global_var_init() section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @atexit(void ()* @__dtor__ZStL8__ioinit) #1
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #0

define internal void @__dtor__ZStL8__ioinit() section ".text.startup" {
  call void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  ret void
}

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #1

; Function Attrs: uwtable
define i8* @_Z6workerPv(i8* %arg) #2 {
  %1 = alloca i8*, align 8
  %tid = alloca i32, align 4
  %pdSwaptionPrice = alloca [2 x double], align 16
  %beg = alloca i32, align 4
  %end = alloca i32, align 4
  %chunksize = alloca i32, align 4
  %offsetThread = alloca i32, align 4
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  %iSuccess = alloca i32, align 4
  store i8* %arg, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = bitcast i8* %2 to i32*
  %4 = load i32* %3, align 4
  store i32 %4, i32* %tid, align 4
  %5 = load i32* %tid, align 4
  %6 = load i32* @nSwaptions, align 4
  %7 = load i32* @nThreads, align 4
  %8 = srem i32 %6, %7
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %22

; <label>:10                                      ; preds = %0
  %11 = load i32* @nSwaptions, align 4
  %12 = load i32* @nThreads, align 4
  %13 = sdiv i32 %11, %12
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %chunksize, align 4
  %15 = load i32* %tid, align 4
  %16 = load i32* %chunksize, align 4
  %17 = mul nsw i32 %15, %16
  store i32 %17, i32* %beg, align 4
  %18 = load i32* %tid, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32* %chunksize, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %end, align 4
  br label %48

; <label>:22                                      ; preds = %0
  %23 = load i32* @nSwaptions, align 4
  %24 = load i32* @nThreads, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %chunksize, align 4
  %26 = load i32* @nSwaptions, align 4
  %27 = load i32* @nThreads, align 4
  %28 = srem i32 %26, %27
  store i32 %28, i32* %offsetThread, align 4
  %29 = load i32* %offsetThread, align 4
  %30 = load i32* %chunksize, align 4
  %31 = add nsw i32 %30, 1
  %32 = mul nsw i32 %29, %31
  store i32 %32, i32* %offset, align 4
  %33 = load i32* %offset, align 4
  %34 = load i32* %tid, align 4
  %35 = load i32* %offsetThread, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32* %chunksize, align 4
  %38 = mul nsw i32 %36, %37
  %39 = add nsw i32 %33, %38
  store i32 %39, i32* %beg, align 4
  %40 = load i32* %offset, align 4
  %41 = load i32* %tid, align 4
  %42 = load i32* %offsetThread, align 4
  %43 = sub nsw i32 %41, %42
  %44 = add nsw i32 %43, 1
  %45 = load i32* %chunksize, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %40, %46
  store i32 %47, i32* %end, align 4
  br label %48

; <label>:48                                      ; preds = %22, %10
  %49 = load i32* %tid, align 4
  %50 = load i32* @nThreads, align 4
  %51 = sub nsw i32 %50, 1
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %55

; <label>:53                                      ; preds = %48
  %54 = load i32* @nSwaptions, align 4
  store i32 %54, i32* %end, align 4
  br label %55

; <label>:55                                      ; preds = %53, %48
  %56 = load i32* %beg, align 4
  store i32 %56, i32* %i, align 4
  br label %57

; <label>:57                                      ; preds = %150, %55
  %58 = load i32* %i, align 4
  %59 = load i32* %end, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %153

; <label>:61                                      ; preds = %57
  %62 = getelementptr inbounds [2 x double]* %pdSwaptionPrice, i32 0, i32 0
  %63 = load i32* %i, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.parm** @swaptions, align 8
  %66 = getelementptr inbounds %struct.parm* %65, i64 %64
  %67 = getelementptr inbounds %struct.parm* %66, i32 0, i32 3
  %68 = load double* %67, align 8
  %69 = load i32* %i, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.parm** @swaptions, align 8
  %72 = getelementptr inbounds %struct.parm* %71, i64 %70
  %73 = getelementptr inbounds %struct.parm* %72, i32 0, i32 4
  %74 = load double* %73, align 8
  %75 = load i32* %i, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.parm** @swaptions, align 8
  %78 = getelementptr inbounds %struct.parm* %77, i64 %76
  %79 = getelementptr inbounds %struct.parm* %78, i32 0, i32 5
  %80 = load double* %79, align 8
  %81 = load i32* %i, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.parm** @swaptions, align 8
  %84 = getelementptr inbounds %struct.parm* %83, i64 %82
  %85 = getelementptr inbounds %struct.parm* %84, i32 0, i32 6
  %86 = load double* %85, align 8
  %87 = load i32* %i, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.parm** @swaptions, align 8
  %90 = getelementptr inbounds %struct.parm* %89, i64 %88
  %91 = getelementptr inbounds %struct.parm* %90, i32 0, i32 7
  %92 = load double* %91, align 8
  %93 = load i32* %i, align 4
  %94 = sext i32 %93 to i64
  %95 = load %struct.parm** @swaptions, align 8
  %96 = getelementptr inbounds %struct.parm* %95, i64 %94
  %97 = getelementptr inbounds %struct.parm* %96, i32 0, i32 8
  %98 = load i32* %97, align 4
  %99 = load i32* %i, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.parm** @swaptions, align 8
  %102 = getelementptr inbounds %struct.parm* %101, i64 %100
  %103 = getelementptr inbounds %struct.parm* %102, i32 0, i32 10
  %104 = load i32* %103, align 4
  %105 = load i32* %i, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.parm** @swaptions, align 8
  %108 = getelementptr inbounds %struct.parm* %107, i64 %106
  %109 = getelementptr inbounds %struct.parm* %108, i32 0, i32 9
  %110 = load double* %109, align 8
  %111 = load i32* %i, align 4
  %112 = sext i32 %111 to i64
  %113 = load %struct.parm** @swaptions, align 8
  %114 = getelementptr inbounds %struct.parm* %113, i64 %112
  %115 = getelementptr inbounds %struct.parm* %114, i32 0, i32 11
  %116 = load double** %115, align 8
  %117 = load i32* %i, align 4
  %118 = sext i32 %117 to i64
  %119 = load %struct.parm** @swaptions, align 8
  %120 = getelementptr inbounds %struct.parm* %119, i64 %118
  %121 = getelementptr inbounds %struct.parm* %120, i32 0, i32 12
  %122 = load double*** %121, align 8
  %123 = load i64* @swaption_seed, align 8
  %124 = load i32* %i, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %123, %125
  %127 = load i32* @NUM_TRIALS, align 4
  %128 = sext i32 %127 to i64
  %129 = call i32 @_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii(double* %62, double %68, double %74, double %80, double %86, double %92, i32 %98, i32 %104, double %110, double* %116, double** %122, i64 %126, i64 %128, i32 16, i32 0)
  store i32 %129, i32* %iSuccess, align 4
  %130 = load i32* %iSuccess, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %133

; <label>:132                                     ; preds = %61
  br label %135

; <label>:133                                     ; preds = %61
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 110, i8* getelementptr inbounds ([21 x i8]* @__PRETTY_FUNCTION__._Z6workerPv, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %135

; <label>:135                                     ; preds = %134, %132
  %136 = getelementptr inbounds [2 x double]* %pdSwaptionPrice, i32 0, i64 0
  %137 = load double* %136, align 8
  %138 = load i32* %i, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.parm** @swaptions, align 8
  %141 = getelementptr inbounds %struct.parm* %140, i64 %139
  %142 = getelementptr inbounds %struct.parm* %141, i32 0, i32 1
  store double %137, double* %142, align 8
  %143 = getelementptr inbounds [2 x double]* %pdSwaptionPrice, i32 0, i64 1
  %144 = load double* %143, align 8
  %145 = load i32* %i, align 4
  %146 = sext i32 %145 to i64
  %147 = load %struct.parm** @swaptions, align 8
  %148 = getelementptr inbounds %struct.parm* %147, i64 %146
  %149 = getelementptr inbounds %struct.parm* %148, i32 0, i32 2
  store double %144, double* %149, align 8
  br label %150

; <label>:150                                     ; preds = %135
  %151 = load i32* %i, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %i, align 4
  br label %57

; <label>:153                                     ; preds = %57
  ret i8* null
}

declare i32 @_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii(double*, double, double, double, double, double, i32, i32, double, double*, double**, i64, i64, i32, i32) #0

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: uwtable
define void @_Z11print_usagePc(i8* %name) #2 {
  %1 = alloca i8*, align 8
  store i8* %name, i8** %1, align 8
  %2 = load %struct._IO_FILE** @stderr, align 8
  %3 = load i8** %1, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([31 x i8]* @.str2, i32 0, i32 0), i8* %3)
  %5 = load %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0))
  %7 = load %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([59 x i8]* @.str4, i32 0, i32 0))
  %9 = load %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([30 x i8]* @.str5, i32 0, i32 0))
  %11 = load %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([26 x i8]* @.str6, i32 0, i32 0))
  %13 = load %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([27 x i8]* @.str7, i32 0, i32 0))
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %argv) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %iSuccess = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %factors = alloca double**, align 8
  %j1 = alloca i32, align 4
  %k = alloca i32, align 4
  %threadID = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 0, i32* %iSuccess, align 4
  store double** null, double*** %factors, align 8
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str8, i32 0, i32 0))
  %5 = call i32 @fflush(%struct._IO_FILE* null)
  %6 = load i32* %2, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %0
  %9 = load i8*** %3, align 8
  %10 = getelementptr inbounds i8** %9, i64 0
  %11 = load i8** %10, align 8
  call void @_Z11print_usagePc(i8* %11)
  call void @exit(i32 1) #6
  unreachable

; <label>:12                                      ; preds = %0
  store i32 1, i32* %j1, align 4
  br label %13

; <label>:13                                      ; preds = %97, %12
  %14 = load i32* %j1, align 4
  %15 = load i32* %2, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %100

; <label>:17                                      ; preds = %13
  %18 = load i32* %j1, align 4
  %19 = sext i32 %18 to i64
  %20 = load i8*** %3, align 8
  %21 = getelementptr inbounds i8** %20, i64 %19
  %22 = load i8** %21, align 8
  %23 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 0), i8* %22) #7
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

; <label>:25                                      ; preds = %17
  %26 = load i32* %j1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %j1, align 4
  %28 = sext i32 %27 to i64
  %29 = load i8*** %3, align 8
  %30 = getelementptr inbounds i8** %29, i64 %28
  %31 = load i8** %30, align 8
  %32 = call i32 @atoi(i8* %31) #7
  store i32 %32, i32* @NUM_TRIALS, align 4
  br label %96

; <label>:33                                      ; preds = %17
  %34 = load i32* %j1, align 4
  %35 = sext i32 %34 to i64
  %36 = load i8*** %3, align 8
  %37 = getelementptr inbounds i8** %36, i64 %35
  %38 = load i8** %37, align 8
  %39 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0), i8* %38) #7
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

; <label>:41                                      ; preds = %33
  %42 = load i32* %j1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %j1, align 4
  %44 = sext i32 %43 to i64
  %45 = load i8*** %3, align 8
  %46 = getelementptr inbounds i8** %45, i64 %44
  %47 = load i8** %46, align 8
  %48 = call i32 @atoi(i8* %47) #7
  store i32 %48, i32* @nThreads, align 4
  br label %95

; <label>:49                                      ; preds = %33
  %50 = load i32* %j1, align 4
  %51 = sext i32 %50 to i64
  %52 = load i8*** %3, align 8
  %53 = getelementptr inbounds i8** %52, i64 %51
  %54 = load i8** %53, align 8
  %55 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8]* @.str11, i32 0, i32 0), i8* %54) #7
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

; <label>:57                                      ; preds = %49
  %58 = load i32* %j1, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %j1, align 4
  %60 = sext i32 %59 to i64
  %61 = load i8*** %3, align 8
  %62 = getelementptr inbounds i8** %61, i64 %60
  %63 = load i8** %62, align 8
  %64 = call i32 @atoi(i8* %63) #7
  store i32 %64, i32* @nSwaptions, align 4
  br label %94

; <label>:65                                      ; preds = %49
  %66 = load i32* %j1, align 4
  %67 = sext i32 %66 to i64
  %68 = load i8*** %3, align 8
  %69 = getelementptr inbounds i8** %68, i64 %67
  %70 = load i8** %69, align 8
  %71 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8]* @.str12, i32 0, i32 0), i8* %70) #7
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

; <label>:73                                      ; preds = %65
  %74 = load i32* %j1, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %j1, align 4
  %76 = sext i32 %75 to i64
  %77 = load i8*** %3, align 8
  %78 = getelementptr inbounds i8** %77, i64 %76
  %79 = load i8** %78, align 8
  %80 = call i32 @atoi(i8* %79) #7
  %81 = sext i32 %80 to i64
  store i64 %81, i64* @seed, align 8
  br label %93

; <label>:82                                      ; preds = %65
  %83 = load %struct._IO_FILE** @stderr, align 8
  %84 = load i32* %j1, align 4
  %85 = sext i32 %84 to i64
  %86 = load i8*** %3, align 8
  %87 = getelementptr inbounds i8** %86, i64 %85
  %88 = load i8** %87, align 8
  %89 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([27 x i8]* @.str13, i32 0, i32 0), i8* %88)
  %90 = load i8*** %3, align 8
  %91 = getelementptr inbounds i8** %90, i64 0
  %92 = load i8** %91, align 8
  call void @_Z11print_usagePc(i8* %92)
  call void @exit(i32 1) #6
  unreachable

; <label>:93                                      ; preds = %73
  br label %94

; <label>:94                                      ; preds = %93, %57
  br label %95

; <label>:95                                      ; preds = %94, %41
  br label %96

; <label>:96                                      ; preds = %95, %25
  br label %97

; <label>:97                                      ; preds = %96
  %98 = load i32* %j1, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %j1, align 4
  br label %13

; <label>:100                                     ; preds = %13
  %101 = load i32* @nSwaptions, align 4
  %102 = load i32* @nThreads, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %110

; <label>:104                                     ; preds = %100
  %105 = load %struct._IO_FILE** @stderr, align 8
  %106 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([38 x i8]* @.str14, i32 0, i32 0))
  %107 = load i8*** %3, align 8
  %108 = getelementptr inbounds i8** %107, i64 0
  %109 = load i8** %108, align 8
  call void @_Z11print_usagePc(i8* %109)
  call void @exit(i32 1) #6
  unreachable

; <label>:110                                     ; preds = %100
  %111 = load i32* @NUM_TRIALS, align 4
  %112 = load i32* @nThreads, align 4
  %113 = load i32* @nSwaptions, align 4
  %114 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([75 x i8]* @.str15, i32 0, i32 0), i32 %111, i32 %112, i32 %113)
  %115 = call double @_Z7RanUnifPl(i64* @seed)
  %116 = fmul double 0x41DFFFFFFFC00000, %115
  %117 = fptosi double %116 to i64
  store i64 %117, i64* @swaption_seed, align 8
  %118 = load i32* @nThreads, align 4
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %123

; <label>:120                                     ; preds = %110
  %121 = load %struct._IO_FILE** @stderr, align 8
  %122 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([46 x i8]* @.str16, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

; <label>:123                                     ; preds = %110
  %124 = load i32* @iFactors, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = load i32* @iN, align 4
  %128 = sub nsw i32 %127, 2
  %129 = sext i32 %128 to i64
  %130 = call double** @_Z7dmatrixllll(i64 0, i64 %126, i64 0, i64 %129)
  store double** %130, double*** %factors, align 8
  %131 = load double*** %factors, align 8
  %132 = getelementptr inbounds double** %131, i64 0
  %133 = load double** %132, align 8
  %134 = getelementptr inbounds double* %133, i64 0
  store double 1.000000e-02, double* %134, align 8
  %135 = load double*** %factors, align 8
  %136 = getelementptr inbounds double** %135, i64 0
  %137 = load double** %136, align 8
  %138 = getelementptr inbounds double* %137, i64 1
  store double 1.000000e-02, double* %138, align 8
  %139 = load double*** %factors, align 8
  %140 = getelementptr inbounds double** %139, i64 0
  %141 = load double** %140, align 8
  %142 = getelementptr inbounds double* %141, i64 2
  store double 1.000000e-02, double* %142, align 8
  %143 = load double*** %factors, align 8
  %144 = getelementptr inbounds double** %143, i64 0
  %145 = load double** %144, align 8
  %146 = getelementptr inbounds double* %145, i64 3
  store double 1.000000e-02, double* %146, align 8
  %147 = load double*** %factors, align 8
  %148 = getelementptr inbounds double** %147, i64 0
  %149 = load double** %148, align 8
  %150 = getelementptr inbounds double* %149, i64 4
  store double 1.000000e-02, double* %150, align 8
  %151 = load double*** %factors, align 8
  %152 = getelementptr inbounds double** %151, i64 0
  %153 = load double** %152, align 8
  %154 = getelementptr inbounds double* %153, i64 5
  store double 1.000000e-02, double* %154, align 8
  %155 = load double*** %factors, align 8
  %156 = getelementptr inbounds double** %155, i64 0
  %157 = load double** %156, align 8
  %158 = getelementptr inbounds double* %157, i64 6
  store double 1.000000e-02, double* %158, align 8
  %159 = load double*** %factors, align 8
  %160 = getelementptr inbounds double** %159, i64 0
  %161 = load double** %160, align 8
  %162 = getelementptr inbounds double* %161, i64 7
  store double 1.000000e-02, double* %162, align 8
  %163 = load double*** %factors, align 8
  %164 = getelementptr inbounds double** %163, i64 0
  %165 = load double** %164, align 8
  %166 = getelementptr inbounds double* %165, i64 8
  store double 1.000000e-02, double* %166, align 8
  %167 = load double*** %factors, align 8
  %168 = getelementptr inbounds double** %167, i64 0
  %169 = load double** %168, align 8
  %170 = getelementptr inbounds double* %169, i64 9
  store double 1.000000e-02, double* %170, align 8
  %171 = load double*** %factors, align 8
  %172 = getelementptr inbounds double** %171, i64 1
  %173 = load double** %172, align 8
  %174 = getelementptr inbounds double* %173, i64 0
  store double 9.048000e-03, double* %174, align 8
  %175 = load double*** %factors, align 8
  %176 = getelementptr inbounds double** %175, i64 1
  %177 = load double** %176, align 8
  %178 = getelementptr inbounds double* %177, i64 1
  store double 8.187000e-03, double* %178, align 8
  %179 = load double*** %factors, align 8
  %180 = getelementptr inbounds double** %179, i64 1
  %181 = load double** %180, align 8
  %182 = getelementptr inbounds double* %181, i64 2
  store double 7.408000e-03, double* %182, align 8
  %183 = load double*** %factors, align 8
  %184 = getelementptr inbounds double** %183, i64 1
  %185 = load double** %184, align 8
  %186 = getelementptr inbounds double* %185, i64 3
  store double 6.703000e-03, double* %186, align 8
  %187 = load double*** %factors, align 8
  %188 = getelementptr inbounds double** %187, i64 1
  %189 = load double** %188, align 8
  %190 = getelementptr inbounds double* %189, i64 4
  store double 6.065000e-03, double* %190, align 8
  %191 = load double*** %factors, align 8
  %192 = getelementptr inbounds double** %191, i64 1
  %193 = load double** %192, align 8
  %194 = getelementptr inbounds double* %193, i64 5
  store double 5.488000e-03, double* %194, align 8
  %195 = load double*** %factors, align 8
  %196 = getelementptr inbounds double** %195, i64 1
  %197 = load double** %196, align 8
  %198 = getelementptr inbounds double* %197, i64 6
  store double 4.966000e-03, double* %198, align 8
  %199 = load double*** %factors, align 8
  %200 = getelementptr inbounds double** %199, i64 1
  %201 = load double** %200, align 8
  %202 = getelementptr inbounds double* %201, i64 7
  store double 4.493000e-03, double* %202, align 8
  %203 = load double*** %factors, align 8
  %204 = getelementptr inbounds double** %203, i64 1
  %205 = load double** %204, align 8
  %206 = getelementptr inbounds double* %205, i64 8
  store double 4.066000e-03, double* %206, align 8
  %207 = load double*** %factors, align 8
  %208 = getelementptr inbounds double** %207, i64 1
  %209 = load double** %208, align 8
  %210 = getelementptr inbounds double* %209, i64 9
  store double 3.679000e-03, double* %210, align 8
  %211 = load double*** %factors, align 8
  %212 = getelementptr inbounds double** %211, i64 2
  %213 = load double** %212, align 8
  %214 = getelementptr inbounds double* %213, i64 0
  store double 1.000000e-03, double* %214, align 8
  %215 = load double*** %factors, align 8
  %216 = getelementptr inbounds double** %215, i64 2
  %217 = load double** %216, align 8
  %218 = getelementptr inbounds double* %217, i64 1
  store double 7.500000e-04, double* %218, align 8
  %219 = load double*** %factors, align 8
  %220 = getelementptr inbounds double** %219, i64 2
  %221 = load double** %220, align 8
  %222 = getelementptr inbounds double* %221, i64 2
  store double 5.000000e-04, double* %222, align 8
  %223 = load double*** %factors, align 8
  %224 = getelementptr inbounds double** %223, i64 2
  %225 = load double** %224, align 8
  %226 = getelementptr inbounds double* %225, i64 3
  store double 2.500000e-04, double* %226, align 8
  %227 = load double*** %factors, align 8
  %228 = getelementptr inbounds double** %227, i64 2
  %229 = load double** %228, align 8
  %230 = getelementptr inbounds double* %229, i64 4
  store double 0.000000e+00, double* %230, align 8
  %231 = load double*** %factors, align 8
  %232 = getelementptr inbounds double** %231, i64 2
  %233 = load double** %232, align 8
  %234 = getelementptr inbounds double* %233, i64 5
  store double -2.500000e-04, double* %234, align 8
  %235 = load double*** %factors, align 8
  %236 = getelementptr inbounds double** %235, i64 2
  %237 = load double** %236, align 8
  %238 = getelementptr inbounds double* %237, i64 6
  store double -5.000000e-04, double* %238, align 8
  %239 = load double*** %factors, align 8
  %240 = getelementptr inbounds double** %239, i64 2
  %241 = load double** %240, align 8
  %242 = getelementptr inbounds double* %241, i64 7
  store double -7.500000e-04, double* %242, align 8
  %243 = load double*** %factors, align 8
  %244 = getelementptr inbounds double** %243, i64 2
  %245 = load double** %244, align 8
  %246 = getelementptr inbounds double* %245, i64 8
  store double -1.000000e-03, double* %246, align 8
  %247 = load double*** %factors, align 8
  %248 = getelementptr inbounds double** %247, i64 2
  %249 = load double** %248, align 8
  %250 = getelementptr inbounds double* %249, i64 9
  store double -1.250000e-03, double* %250, align 8
  %251 = load i32* @nSwaptions, align 4
  %252 = sext i32 %251 to i64
  %253 = mul i64 104, %252
  %254 = call noalias i8* @malloc(i64 %253) #1
  %255 = bitcast i8* %254 to %struct.parm*
  store %struct.parm* %255, %struct.parm** @swaptions, align 8
  store i32 0, i32* %i, align 4
  br label %256

; <label>:256                                     ; preds = %447, %123
  %257 = load i32* %i, align 4
  %258 = load i32* @nSwaptions, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %450

; <label>:260                                     ; preds = %256
  %261 = load i32* %i, align 4
  %262 = load i32* %i, align 4
  %263 = sext i32 %262 to i64
  %264 = load %struct.parm** @swaptions, align 8
  %265 = getelementptr inbounds %struct.parm* %264, i64 %263
  %266 = getelementptr inbounds %struct.parm* %265, i32 0, i32 0
  store i32 %261, i32* %266, align 4
  %267 = load i32* @iN, align 4
  %268 = load i32* %i, align 4
  %269 = sext i32 %268 to i64
  %270 = load %struct.parm** @swaptions, align 8
  %271 = getelementptr inbounds %struct.parm* %270, i64 %269
  %272 = getelementptr inbounds %struct.parm* %271, i32 0, i32 8
  store i32 %267, i32* %272, align 4
  %273 = load i32* @iFactors, align 4
  %274 = load i32* %i, align 4
  %275 = sext i32 %274 to i64
  %276 = load %struct.parm** @swaptions, align 8
  %277 = getelementptr inbounds %struct.parm* %276, i64 %275
  %278 = getelementptr inbounds %struct.parm* %277, i32 0, i32 10
  store i32 %273, i32* %278, align 4
  %279 = call double @_Z7RanUnifPl(i64* @seed)
  %280 = fmul double 6.000000e+01, %279
  %281 = fptosi double %280 to i32
  %282 = sitofp i32 %281 to double
  %283 = fmul double %282, 2.500000e-01
  %284 = fadd double 5.000000e+00, %283
  %285 = load i32* %i, align 4
  %286 = sext i32 %285 to i64
  %287 = load %struct.parm** @swaptions, align 8
  %288 = getelementptr inbounds %struct.parm* %287, i64 %286
  %289 = getelementptr inbounds %struct.parm* %288, i32 0, i32 9
  store double %284, double* %289, align 8
  %290 = call double @_Z7RanUnifPl(i64* @seed)
  %291 = fmul double 4.900000e+01, %290
  %292 = fptosi double %291 to i32
  %293 = sitofp i32 %292 to double
  %294 = fmul double %293, 1.000000e-01
  %295 = fadd double 1.000000e-01, %294
  %296 = load i32* %i, align 4
  %297 = sext i32 %296 to i64
  %298 = load %struct.parm** @swaptions, align 8
  %299 = getelementptr inbounds %struct.parm* %298, i64 %297
  %300 = getelementptr inbounds %struct.parm* %299, i32 0, i32 3
  store double %295, double* %300, align 8
  %301 = load i32* %i, align 4
  %302 = sext i32 %301 to i64
  %303 = load %struct.parm** @swaptions, align 8
  %304 = getelementptr inbounds %struct.parm* %303, i64 %302
  %305 = getelementptr inbounds %struct.parm* %304, i32 0, i32 4
  store double 0.000000e+00, double* %305, align 8
  %306 = load i32* %i, align 4
  %307 = sext i32 %306 to i64
  %308 = load %struct.parm** @swaptions, align 8
  %309 = getelementptr inbounds %struct.parm* %308, i64 %307
  %310 = getelementptr inbounds %struct.parm* %309, i32 0, i32 5
  store double 1.000000e+00, double* %310, align 8
  %311 = load i32* %i, align 4
  %312 = sext i32 %311 to i64
  %313 = load %struct.parm** @swaptions, align 8
  %314 = getelementptr inbounds %struct.parm* %313, i64 %312
  %315 = getelementptr inbounds %struct.parm* %314, i32 0, i32 6
  store double 2.000000e+00, double* %315, align 8
  %316 = load i32* %i, align 4
  %317 = sext i32 %316 to i64
  %318 = load %struct.parm** @swaptions, align 8
  %319 = getelementptr inbounds %struct.parm* %318, i64 %317
  %320 = getelementptr inbounds %struct.parm* %319, i32 0, i32 7
  store double 1.000000e+00, double* %320, align 8
  %321 = load i32* @iN, align 4
  %322 = sub nsw i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = call double* @_Z7dvectorll(i64 0, i64 %323)
  %325 = load i32* %i, align 4
  %326 = sext i32 %325 to i64
  %327 = load %struct.parm** @swaptions, align 8
  %328 = getelementptr inbounds %struct.parm* %327, i64 %326
  %329 = getelementptr inbounds %struct.parm* %328, i32 0, i32 11
  store double* %324, double** %329, align 8
  %330 = load i32* %i, align 4
  %331 = sext i32 %330 to i64
  %332 = load %struct.parm** @swaptions, align 8
  %333 = getelementptr inbounds %struct.parm* %332, i64 %331
  %334 = getelementptr inbounds %struct.parm* %333, i32 0, i32 11
  %335 = load double** %334, align 8
  %336 = getelementptr inbounds double* %335, i64 0
  store double 1.000000e-01, double* %336, align 8
  store i32 1, i32* %j, align 4
  br label %337

; <label>:337                                     ; preds = %369, %260
  %338 = load i32* %j, align 4
  %339 = load i32* %i, align 4
  %340 = sext i32 %339 to i64
  %341 = load %struct.parm** @swaptions, align 8
  %342 = getelementptr inbounds %struct.parm* %341, i64 %340
  %343 = getelementptr inbounds %struct.parm* %342, i32 0, i32 8
  %344 = load i32* %343, align 4
  %345 = sub nsw i32 %344, 1
  %346 = icmp sle i32 %338, %345
  br i1 %346, label %347, label %372

; <label>:347                                     ; preds = %337
  %348 = load i32* %j, align 4
  %349 = sub nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = load i32* %i, align 4
  %352 = sext i32 %351 to i64
  %353 = load %struct.parm** @swaptions, align 8
  %354 = getelementptr inbounds %struct.parm* %353, i64 %352
  %355 = getelementptr inbounds %struct.parm* %354, i32 0, i32 11
  %356 = load double** %355, align 8
  %357 = getelementptr inbounds double* %356, i64 %350
  %358 = load double* %357, align 8
  %359 = fadd double %358, 5.000000e-03
  %360 = load i32* %j, align 4
  %361 = sext i32 %360 to i64
  %362 = load i32* %i, align 4
  %363 = sext i32 %362 to i64
  %364 = load %struct.parm** @swaptions, align 8
  %365 = getelementptr inbounds %struct.parm* %364, i64 %363
  %366 = getelementptr inbounds %struct.parm* %365, i32 0, i32 11
  %367 = load double** %366, align 8
  %368 = getelementptr inbounds double* %367, i64 %361
  store double %359, double* %368, align 8
  br label %369

; <label>:369                                     ; preds = %347
  %370 = load i32* %j, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %j, align 4
  br label %337

; <label>:372                                     ; preds = %337
  %373 = load i32* %i, align 4
  %374 = sext i32 %373 to i64
  %375 = load %struct.parm** @swaptions, align 8
  %376 = getelementptr inbounds %struct.parm* %375, i64 %374
  %377 = getelementptr inbounds %struct.parm* %376, i32 0, i32 10
  %378 = load i32* %377, align 4
  %379 = sub nsw i32 %378, 1
  %380 = sext i32 %379 to i64
  %381 = load i32* %i, align 4
  %382 = sext i32 %381 to i64
  %383 = load %struct.parm** @swaptions, align 8
  %384 = getelementptr inbounds %struct.parm* %383, i64 %382
  %385 = getelementptr inbounds %struct.parm* %384, i32 0, i32 8
  %386 = load i32* %385, align 4
  %387 = sub nsw i32 %386, 2
  %388 = sext i32 %387 to i64
  %389 = call double** @_Z7dmatrixllll(i64 0, i64 %380, i64 0, i64 %388)
  %390 = load i32* %i, align 4
  %391 = sext i32 %390 to i64
  %392 = load %struct.parm** @swaptions, align 8
  %393 = getelementptr inbounds %struct.parm* %392, i64 %391
  %394 = getelementptr inbounds %struct.parm* %393, i32 0, i32 12
  store double** %389, double*** %394, align 8
  store i32 0, i32* %k, align 4
  br label %395

; <label>:395                                     ; preds = %443, %372
  %396 = load i32* %k, align 4
  %397 = load i32* %i, align 4
  %398 = sext i32 %397 to i64
  %399 = load %struct.parm** @swaptions, align 8
  %400 = getelementptr inbounds %struct.parm* %399, i64 %398
  %401 = getelementptr inbounds %struct.parm* %400, i32 0, i32 10
  %402 = load i32* %401, align 4
  %403 = sub nsw i32 %402, 1
  %404 = icmp sle i32 %396, %403
  br i1 %404, label %405, label %446

; <label>:405                                     ; preds = %395
  store i32 0, i32* %j, align 4
  br label %406

; <label>:406                                     ; preds = %439, %405
  %407 = load i32* %j, align 4
  %408 = load i32* %i, align 4
  %409 = sext i32 %408 to i64
  %410 = load %struct.parm** @swaptions, align 8
  %411 = getelementptr inbounds %struct.parm* %410, i64 %409
  %412 = getelementptr inbounds %struct.parm* %411, i32 0, i32 8
  %413 = load i32* %412, align 4
  %414 = sub nsw i32 %413, 2
  %415 = icmp sle i32 %407, %414
  br i1 %415, label %416, label %442

; <label>:416                                     ; preds = %406
  %417 = load i32* %j, align 4
  %418 = sext i32 %417 to i64
  %419 = load i32* %k, align 4
  %420 = sext i32 %419 to i64
  %421 = load double*** %factors, align 8
  %422 = getelementptr inbounds double** %421, i64 %420
  %423 = load double** %422, align 8
  %424 = getelementptr inbounds double* %423, i64 %418
  %425 = load double* %424, align 8
  %426 = load i32* %j, align 4
  %427 = sext i32 %426 to i64
  %428 = load i32* %k, align 4
  %429 = sext i32 %428 to i64
  %430 = load i32* %i, align 4
  %431 = sext i32 %430 to i64
  %432 = load %struct.parm** @swaptions, align 8
  %433 = getelementptr inbounds %struct.parm* %432, i64 %431
  %434 = getelementptr inbounds %struct.parm* %433, i32 0, i32 12
  %435 = load double*** %434, align 8
  %436 = getelementptr inbounds double** %435, i64 %429
  %437 = load double** %436, align 8
  %438 = getelementptr inbounds double* %437, i64 %427
  store double %425, double* %438, align 8
  br label %439

; <label>:439                                     ; preds = %416
  %440 = load i32* %j, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %j, align 4
  br label %406

; <label>:442                                     ; preds = %406
  br label %443

; <label>:443                                     ; preds = %442
  %444 = load i32* %k, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %k, align 4
  br label %395

; <label>:446                                     ; preds = %395
  br label %447

; <label>:447                                     ; preds = %446
  %448 = load i32* %i, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %i, align 4
  br label %256

; <label>:450                                     ; preds = %256
  store i32 0, i32* %threadID, align 4
  %451 = bitcast i32* %threadID to i8*
  %452 = call i8* @_Z6workerPv(i8* %451)
  store i32 0, i32* %i, align 4
  br label %453

; <label>:453                                     ; preds = %473, %450
  %454 = load i32* %i, align 4
  %455 = load i32* @nSwaptions, align 4
  %456 = icmp slt i32 %454, %455
  br i1 %456, label %457, label %476

; <label>:457                                     ; preds = %453
  %458 = load %struct._IO_FILE** @stderr, align 8
  %459 = load i32* %i, align 4
  %460 = load i32* %i, align 4
  %461 = sext i32 %460 to i64
  %462 = load %struct.parm** @swaptions, align 8
  %463 = getelementptr inbounds %struct.parm* %462, i64 %461
  %464 = getelementptr inbounds %struct.parm* %463, i32 0, i32 1
  %465 = load double* %464, align 8
  %466 = load i32* %i, align 4
  %467 = sext i32 %466 to i64
  %468 = load %struct.parm** @swaptions, align 8
  %469 = getelementptr inbounds %struct.parm* %468, i64 %467
  %470 = getelementptr inbounds %struct.parm* %469, i32 0, i32 2
  %471 = load double* %470, align 8
  %472 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %458, i8* getelementptr inbounds ([56 x i8]* @.str17, i32 0, i32 0), i32 %459, double %465, double %471)
  br label %473

; <label>:473                                     ; preds = %457
  %474 = load i32* %i, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %i, align 4
  br label %453

; <label>:476                                     ; preds = %453
  store i32 0, i32* %i, align 4
  br label %477

; <label>:477                                     ; preds = %518, %476
  %478 = load i32* %i, align 4
  %479 = load i32* @nSwaptions, align 4
  %480 = icmp slt i32 %478, %479
  br i1 %480, label %481, label %521

; <label>:481                                     ; preds = %477
  %482 = load i32* %i, align 4
  %483 = sext i32 %482 to i64
  %484 = load %struct.parm** @swaptions, align 8
  %485 = getelementptr inbounds %struct.parm* %484, i64 %483
  %486 = getelementptr inbounds %struct.parm* %485, i32 0, i32 11
  %487 = load double** %486, align 8
  %488 = load i32* %i, align 4
  %489 = sext i32 %488 to i64
  %490 = load %struct.parm** @swaptions, align 8
  %491 = getelementptr inbounds %struct.parm* %490, i64 %489
  %492 = getelementptr inbounds %struct.parm* %491, i32 0, i32 8
  %493 = load i32* %492, align 4
  %494 = sub nsw i32 %493, 1
  %495 = sext i32 %494 to i64
  call void @_Z12free_dvectorPdll(double* %487, i64 0, i64 %495)
  %496 = load i32* %i, align 4
  %497 = sext i32 %496 to i64
  %498 = load %struct.parm** @swaptions, align 8
  %499 = getelementptr inbounds %struct.parm* %498, i64 %497
  %500 = getelementptr inbounds %struct.parm* %499, i32 0, i32 12
  %501 = load double*** %500, align 8
  %502 = load i32* %i, align 4
  %503 = sext i32 %502 to i64
  %504 = load %struct.parm** @swaptions, align 8
  %505 = getelementptr inbounds %struct.parm* %504, i64 %503
  %506 = getelementptr inbounds %struct.parm* %505, i32 0, i32 10
  %507 = load i32* %506, align 4
  %508 = sub nsw i32 %507, 1
  %509 = sext i32 %508 to i64
  %510 = load i32* %i, align 4
  %511 = sext i32 %510 to i64
  %512 = load %struct.parm** @swaptions, align 8
  %513 = getelementptr inbounds %struct.parm* %512, i64 %511
  %514 = getelementptr inbounds %struct.parm* %513, i32 0, i32 8
  %515 = load i32* %514, align 4
  %516 = sub nsw i32 %515, 2
  %517 = sext i32 %516 to i64
  call void @_Z12free_dmatrixPPdllll(double** %501, i64 0, i64 %509, i64 0, i64 %517)
  br label %518

; <label>:518                                     ; preds = %481
  %519 = load i32* %i, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %i, align 4
  br label %477

; <label>:521                                     ; preds = %477
  %522 = load %struct.parm** @swaptions, align 8
  %523 = bitcast %struct.parm* %522 to i8*
  call void @free(i8* %523) #1
  %524 = load i32* %iSuccess, align 4
  ret i32 %524
}

declare i32 @printf(i8*, ...) #0

declare i32 @fflush(%struct._IO_FILE*) #0

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare double @_Z7RanUnifPl(i64*) #0

declare double** @_Z7dmatrixllll(i64, i64, i64, i64) #0

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

declare double* @_Z7dvectorll(i64, i64) #0

declare void @_Z12free_dvectorPdll(double*, i64, i64) #0

declare void @_Z12free_dmatrixPPdllll(double**, i64, i64, i64, i64) #0

; Function Attrs: nounwind
declare void @free(i8*) #5

define internal void @_GLOBAL__I_a() section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}

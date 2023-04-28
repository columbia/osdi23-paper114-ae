; ModuleID = 'psa/key_ladder_demo.c'
source_filename = "psa/key_ladder_demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psa_key_attributes_s = type { %struct.psa_core_key_attributes_t, i8*, i64 }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.psa_key_derivation_s = type { i32, i8, i64, %union.anon }
%union.anon = type { %struct.psa_hkdf_key_derivation_t }
%struct.psa_hkdf_key_derivation_t = type { i8*, i64, i8, i8, i8, [64 x i8], [64 x i8], %struct.psa_mac_operation_s }
%struct.psa_mac_operation_s = type { i32, i8, i8, %union.psa_driver_mac_context_t }
%union.psa_driver_mac_context_t = type { %struct.mbedtls_psa_mac_operation_t }
%struct.mbedtls_psa_mac_operation_t = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.mbedtls_psa_hmac_operation_t }
%struct.mbedtls_psa_hmac_operation_t = type { i32, %struct.psa_hash_operation_s, [128 x i8] }
%struct.psa_hash_operation_s = type { i32, %union.psa_driver_hash_context_t }
%union.psa_driver_hash_context_t = type { %struct.mbedtls_psa_hash_operation_t }
%struct.mbedtls_psa_hash_operation_t = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.mbedtls_sha512_context }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.wrapped_data_header_t = type { [16 x i8], i64, i64, [13 x i8] }

@.str = private unnamed_addr constant [11 x i8] c"master.key\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Missing argument to option %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Maximum ladder depth %u exceeded.\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Unknown option: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"generate\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"unwrap\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Unknown action: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Required argument missing: input\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Required argument missing: output\0A\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"Usage: key_ladder_demo MODE [OPTION=VALUE]...\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"Demonstrate the usage of a key derivation ladder.\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Modes:\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"  generate  Generate the master key\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"  save      Save the derived key\0A\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"  unwrap    Unwrap (decrypt) input with the derived key\0A\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"  wrap      Wrap (encrypt) input with the derived key\0A\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.27 = private unnamed_addr constant [59 x i8] c"  input=FILENAME    Input file (required for wrap/unwrap)\0A\00", align 1
@.str.28 = private unnamed_addr constant [74 x i8] c"  master=FILENAME   File containing the master key (default: master.key)\0A\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"  output=FILENAME   Output file (required for save/wrap/unwrap)\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"  label=TEXT        Label for the key derivation.\0A\00", align 1
@.str.31 = private unnamed_addr constant [58 x i8] c"                    This may be repeated multiple times.\0A\00", align 1
@.str.32 = private unnamed_addr constant [75 x i8] c"                    To get the same key, you must use the same master key\0A\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c"                    and the same sequence of labels.\0A\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"Error %d at line %d: %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"psa_crypto_init( )\00", align 1
@.str.36 = private unnamed_addr constant [109 x i8] c"import_key_from_file( PSA_KEY_USAGE_DERIVE | PSA_KEY_USAGE_EXPORT, KDF_ALG, key_file_name, &derivation_key )\00", align 1
@.str.37 = private unnamed_addr constant [59 x i8] c"derive_key_ladder( ladder, ladder_depth, &derivation_key )\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"save_key( derivation_key, output_file_name )\00", align 1
@.str.39 = private unnamed_addr constant [76 x i8] c"derive_wrapping_key( PSA_KEY_USAGE_DECRYPT, derivation_key, &wrapping_key )\00", align 1
@.str.40 = private unnamed_addr constant [63 x i8] c"unwrap_data( input_file_name, output_file_name, wrapping_key )\00", align 1
@.str.41 = private unnamed_addr constant [76 x i8] c"derive_wrapping_key( PSA_KEY_USAGE_ENCRYPT, derivation_key, &wrapping_key )\00", align 1
@.str.42 = private unnamed_addr constant [61 x i8] c"wrap_data( input_file_name, output_file_name, wrapping_key )\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"psa_generate_key( &attributes, &key )\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"save_key( key, key_file_name )\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.46 = private unnamed_addr constant [52 x i8] c"( key_file = fopen( key_file_name, \22rb\22 ) ) != NULL\00", align 1
@.str.47 = private unnamed_addr constant [71 x i8] c"( key_size = fread( key_data, 1, sizeof( key_data ), key_file ) ) != 0\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"Key file too large (max: %u).\0A\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"fclose( key_file ) == 0\00", align 1
@.str.50 = private unnamed_addr constant [62 x i8] c"psa_import_key( &attributes, key_data, key_size, master_key )\00", align 1
@.str.51 = private unnamed_addr constant [48 x i8] c"psa_key_derivation_setup( &operation, KDF_ALG )\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"key_ladder_demo.derive\00", align 1
@.str.53 = private unnamed_addr constant [117 x i8] c"psa_key_derivation_input_bytes( &operation, PSA_KEY_DERIVATION_INPUT_SALT, DERIVE_KEY_SALT, DERIVE_KEY_SALT_LENGTH )\00", align 1
@.str.54 = private unnamed_addr constant [82 x i8] c"psa_key_derivation_input_key( &operation, PSA_KEY_DERIVATION_INPUT_SECRET, *key )\00", align 1
@.str.55 = private unnamed_addr constant [119 x i8] c"psa_key_derivation_input_bytes( &operation, PSA_KEY_DERIVATION_INPUT_INFO, (uint8_t*) ladder[i], strlen( ladder[i] ) )\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"psa_destroy_key( *key )\00", align 1
@.str.57 = private unnamed_addr constant [62 x i8] c"psa_key_derivation_output_key( &attributes, &operation, key )\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"psa_key_derivation_abort( &operation )\00", align 1
@.str.59 = private unnamed_addr constant [63 x i8] c"psa_export_key( key, key_data, sizeof( key_data ), &key_size )\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.61 = private unnamed_addr constant [55 x i8] c"( key_file = fopen( output_file_name, \22wb\22 ) ) != NULL\00", align 1
@.str.62 = private unnamed_addr constant [54 x i8] c"fwrite( key_data, 1, key_size, key_file ) == key_size\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"key_ladder_demo.wrap\00", align 1
@.str.64 = private unnamed_addr constant [121 x i8] c"psa_key_derivation_input_bytes( &operation, PSA_KEY_DERIVATION_INPUT_SALT, WRAPPING_KEY_SALT, WRAPPING_KEY_SALT_LENGTH )\00", align 1
@.str.65 = private unnamed_addr constant [89 x i8] c"psa_key_derivation_input_key( &operation, PSA_KEY_DERIVATION_INPUT_SECRET, derived_key )\00", align 1
@.str.66 = private unnamed_addr constant [85 x i8] c"psa_key_derivation_input_bytes( &operation, PSA_KEY_DERIVATION_INPUT_INFO, NULL, 0 )\00", align 1
@.str.67 = private unnamed_addr constant [71 x i8] c"psa_key_derivation_output_key( &attributes, &operation, wrapping_key )\00", align 1
@.str.68 = private unnamed_addr constant [56 x i8] c"( input_file = fopen( input_file_name, \22rb\22 ) ) != NULL\00", align 1
@.str.69 = private unnamed_addr constant [70 x i8] c"fread( &header, 1, sizeof( header ), input_file ) == sizeof( header )\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"key_ladder_demo\00", align 1
@.str.71 = private unnamed_addr constant [53 x i8] c"The input does not start with a valid magic header.\0A\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"The header size is not correct.\0A\00", align 1
@.str.73 = private unnamed_addr constant [51 x i8] c"psa_get_key_attributes( wrapping_key, &attributes)\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"Input file too large.\0A\00", align 1
@.str.75 = private unnamed_addr constant [50 x i8] c"( buffer = calloc( 1, ciphertext_size ) ) != NULL\00", align 1
@.str.76 = private unnamed_addr constant [67 x i8] c"fread( buffer, 1, ciphertext_size, input_file ) == ciphertext_size\00", align 1
@.str.77 = private unnamed_addr constant [32 x i8] c"Extra garbage after ciphertext\0A\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"fclose( input_file ) == 0\00", align 1
@.str.79 = private unnamed_addr constant [182 x i8] c"psa_aead_decrypt( wrapping_key, WRAPPING_ALG, header.iv, WRAPPING_IV_SIZE, (uint8_t *) &header, sizeof( header ), buffer, ciphertext_size, buffer, ciphertext_size, &plaintext_size )\00", align 1
@.str.80 = private unnamed_addr constant [39 x i8] c"Incorrect payload size in the header.\0A\00", align 1
@.str.81 = private unnamed_addr constant [58 x i8] c"( output_file = fopen( output_file_name, \22wb\22 ) ) != NULL\00", align 1
@.str.82 = private unnamed_addr constant [67 x i8] c"fwrite( buffer, 1, plaintext_size, output_file ) == plaintext_size\00", align 1
@.str.83 = private unnamed_addr constant [27 x i8] c"fclose( output_file ) == 0\00", align 1
@.str.84 = private unnamed_addr constant [38 x i8] c"fseek( input_file, 0, SEEK_END ) == 0\00", align 1
@.str.85 = private unnamed_addr constant [47 x i8] c"( input_position = ftell( input_file ) ) != -1\00", align 1
@.str.86 = private unnamed_addr constant [52 x i8] c"psa_get_key_attributes( wrapping_key, &attributes )\00", align 1
@.str.87 = private unnamed_addr constant [38 x i8] c"fseek( input_file, 0, SEEK_SET ) == 0\00", align 1
@.str.88 = private unnamed_addr constant [46 x i8] c"( buffer = calloc( 1, buffer_size ) ) != NULL\00", align 1
@.str.89 = private unnamed_addr constant [57 x i8] c"fread( buffer, 1, input_size, input_file ) == input_size\00", align 1
@.str.90 = private unnamed_addr constant [51 x i8] c"psa_generate_random( header.iv, WRAPPING_IV_SIZE )\00", align 1
@.str.91 = private unnamed_addr constant [174 x i8] c"psa_aead_encrypt( wrapping_key, WRAPPING_ALG, header.iv, WRAPPING_IV_SIZE, (uint8_t *) &header, sizeof( header ), buffer, input_size, buffer, buffer_size, &ciphertext_size )\00", align 1
@.str.92 = private unnamed_addr constant [72 x i8] c"fwrite( &header, 1, sizeof( header ), output_file ) == sizeof( header )\00", align 1
@.str.93 = private unnamed_addr constant [69 x i8] c"fwrite( buffer, 1, ciphertext_size, output_file ) == ciphertext_size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %key_file_name = alloca i8*, align 8
  %input_file_name = alloca i8*, align 8
  %output_file_name = alloca i8*, align 8
  %ladder = alloca [10 x i8*], align 16
  %ladder_depth = alloca i64, align 8
  %i = alloca i32, align 4
  %mode = alloca i32, align 4
  %status = alloca i32, align 4
  %q = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %key_file_name, align 8
  store i8* null, i8** %input_file_name, align 8
  store i8* null, i8** %output_file_name, align 8
  store i64 0, i64* %ladder_depth, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #5
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #5
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %5, i64 1
  %6 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i32 @strcmp(i8* noundef %6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #5
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false2, %lor.lhs.false, %entry
  call void @usage() #6
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false6
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %argc.addr, align 4
  %cmp10 = icmp slt i32 %7, %8
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8**, i8*** %argv.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %11 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i8* @strchr(i8* noundef %11, i32 noundef 61) #5
  store i8* %call12, i8** %q, align 8
  %12 = load i8*, i8** %q, align 8
  %cmp13 = icmp eq i8* %12, null
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %for.body
  %13 = load i8**, i8*** %argv.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds i8*, i8** %13, i64 %idxprom15
  %15 = load i8*, i8** %arrayidx16, align 8
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* noundef %15) #6
  br label %usage_failure

if.end18:                                         ; preds = %for.body
  %16 = load i8*, i8** %q, align 8
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  %18 = load i8**, i8*** %argv.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds i8*, i8** %18, i64 %idxprom19
  %20 = load i8*, i8** %arrayidx20, align 8
  %call21 = call i32 @strcmp(i8* noundef %20, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end18
  %21 = load i8*, i8** %q, align 8
  store i8* %21, i8** %input_file_name, align 8
  br label %if.end53

if.else:                                          ; preds = %if.end18
  %22 = load i8**, i8*** %argv.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds i8*, i8** %22, i64 %idxprom24
  %24 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i32 @strcmp(i8* noundef %24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #5
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.else34

if.then28:                                        ; preds = %if.else
  %25 = load i64, i64* %ladder_depth, align 8
  %cmp29 = icmp eq i64 %25, 10
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.then28
  %call31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 noundef 10) #6
  store i32 1, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.then28
  %26 = load i8*, i8** %q, align 8
  %27 = load i64, i64* %ladder_depth, align 8
  %arrayidx33 = getelementptr inbounds [10 x i8*], [10 x i8*]* %ladder, i64 0, i64 %27
  store i8* %26, i8** %arrayidx33, align 8
  %28 = load i64, i64* %ladder_depth, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %ladder_depth, align 8
  br label %if.end52

if.else34:                                        ; preds = %if.else
  %29 = load i8**, i8*** %argv.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %30 to i64
  %arrayidx36 = getelementptr inbounds i8*, i8** %29, i64 %idxprom35
  %31 = load i8*, i8** %arrayidx36, align 8
  %call37 = call i32 @strcmp(i8* noundef %31, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #5
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else34
  %32 = load i8*, i8** %q, align 8
  store i8* %32, i8** %key_file_name, align 8
  br label %if.end51

if.else40:                                        ; preds = %if.else34
  %33 = load i8**, i8*** %argv.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %34 to i64
  %arrayidx42 = getelementptr inbounds i8*, i8** %33, i64 %idxprom41
  %35 = load i8*, i8** %arrayidx42, align 8
  %call43 = call i32 @strcmp(i8* noundef %35, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #5
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.else40
  %36 = load i8*, i8** %q, align 8
  store i8* %36, i8** %output_file_name, align 8
  br label %if.end50

if.else46:                                        ; preds = %if.else40
  %37 = load i8**, i8*** %argv.addr, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %38 to i64
  %arrayidx48 = getelementptr inbounds i8*, i8** %37, i64 %idxprom47
  %39 = load i8*, i8** %arrayidx48, align 8
  %call49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* noundef %39) #6
  br label %usage_failure

if.end50:                                         ; preds = %if.then45
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then39
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end32
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then23
  br label %for.inc

for.inc:                                          ; preds = %if.end53
  %40 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %40, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %41 = load i8**, i8*** %argv.addr, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %41, i64 1
  %42 = load i8*, i8** %arrayidx55, align 8
  %call56 = call i32 @strcmp(i8* noundef %42, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #5
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.else59

if.then58:                                        ; preds = %for.end
  store i32 0, i32* %mode, align 4
  br label %if.end80

if.else59:                                        ; preds = %for.end
  %43 = load i8**, i8*** %argv.addr, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %43, i64 1
  %44 = load i8*, i8** %arrayidx60, align 8
  %call61 = call i32 @strcmp(i8* noundef %44, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #5
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then63, label %if.else64

if.then63:                                        ; preds = %if.else59
  store i32 1, i32* %mode, align 4
  br label %if.end79

if.else64:                                        ; preds = %if.else59
  %45 = load i8**, i8*** %argv.addr, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %45, i64 1
  %46 = load i8*, i8** %arrayidx65, align 8
  %call66 = call i32 @strcmp(i8* noundef %46, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #5
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then68, label %if.else69

if.then68:                                        ; preds = %if.else64
  store i32 2, i32* %mode, align 4
  br label %if.end78

if.else69:                                        ; preds = %if.else64
  %47 = load i8**, i8*** %argv.addr, align 8
  %arrayidx70 = getelementptr inbounds i8*, i8** %47, i64 1
  %48 = load i8*, i8** %arrayidx70, align 8
  %call71 = call i32 @strcmp(i8* noundef %48, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #5
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.then73, label %if.else74

if.then73:                                        ; preds = %if.else69
  store i32 3, i32* %mode, align 4
  br label %if.end77

if.else74:                                        ; preds = %if.else69
  %49 = load i8**, i8*** %argv.addr, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %49, i64 1
  %50 = load i8*, i8** %arrayidx75, align 8
  %call76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* noundef %50) #6
  br label %usage_failure

if.end77:                                         ; preds = %if.then73
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then68
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then63
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then58
  %51 = load i8*, i8** %input_file_name, align 8
  %cmp81 = icmp eq i8* %51, null
  br i1 %cmp81, label %land.lhs.true, label %if.end87

land.lhs.true:                                    ; preds = %if.end80
  %52 = load i32, i32* %mode, align 4
  %cmp82 = icmp eq i32 %52, 3
  br i1 %cmp82, label %if.then85, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %land.lhs.true
  %53 = load i32, i32* %mode, align 4
  %cmp84 = icmp eq i32 %53, 2
  br i1 %cmp84, label %if.then85, label %if.end87

if.then85:                                        ; preds = %lor.lhs.false83, %land.lhs.true
  %call86 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #6
  store i32 120, i32* %retval, align 4
  br label %return

if.end87:                                         ; preds = %lor.lhs.false83, %if.end80
  %54 = load i8*, i8** %output_file_name, align 8
  %cmp88 = icmp eq i8* %54, null
  br i1 %cmp88, label %land.lhs.true89, label %if.end97

land.lhs.true89:                                  ; preds = %if.end87
  %55 = load i32, i32* %mode, align 4
  %cmp90 = icmp eq i32 %55, 1
  br i1 %cmp90, label %if.then95, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %land.lhs.true89
  %56 = load i32, i32* %mode, align 4
  %cmp92 = icmp eq i32 %56, 3
  br i1 %cmp92, label %if.then95, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %lor.lhs.false91
  %57 = load i32, i32* %mode, align 4
  %cmp94 = icmp eq i32 %57, 2
  br i1 %cmp94, label %if.then95, label %if.end97

if.then95:                                        ; preds = %lor.lhs.false93, %lor.lhs.false91, %land.lhs.true89
  %call96 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0)) #6
  store i32 120, i32* %retval, align 4
  br label %return

if.end97:                                         ; preds = %lor.lhs.false93, %if.end87
  %58 = load i32, i32* %mode, align 4
  %59 = load i8*, i8** %key_file_name, align 8
  %arraydecay = getelementptr inbounds [10 x i8*], [10 x i8*]* %ladder, i64 0, i64 0
  %60 = load i64, i64* %ladder_depth, align 8
  %61 = load i8*, i8** %input_file_name, align 8
  %62 = load i8*, i8** %output_file_name, align 8
  %call98 = call i32 @run(i32 noundef %58, i8* noundef %59, i8** noundef %arraydecay, i64 noundef %60, i8* noundef %61, i8* noundef %62) #6
  store i32 %call98, i32* %status, align 4
  %63 = load i32, i32* %status, align 4
  %cmp99 = icmp eq i32 %63, 0
  %64 = zext i1 %cmp99 to i64
  %cond = select i1 %cmp99, i32 0, i32 1
  store i32 %cond, i32* %retval, align 4
  br label %return

usage_failure:                                    ; preds = %if.else74, %if.else46, %if.then14
  call void @usage() #6
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %usage_failure, %if.end97, %if.then95, %if.then85, %if.then30, %if.then
  %65 = load i32, i32* %retval, align 4
  ret i32 %65
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0)) #6
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i64 0, i64 0)) #6
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #6
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0)) #6
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0)) #6
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0)) #6
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i64 0, i64 0)) #6
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i64 0, i64 0)) #6
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #6
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)) #6
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.27, i64 0, i64 0)) #6
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.28, i64 0, i64 0)) #6
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.29, i64 0, i64 0)) #6
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0)) #6
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.31, i64 0, i64 0)) #6
  %call15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.32, i64 0, i64 0)) #6
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.33, i64 0, i64 0)) #6
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run(i32 noundef %mode, i8* noundef %key_file_name, i8** noundef %ladder, i64 noundef %ladder_depth, i8* noundef %input_file_name, i8* noundef %output_file_name) #0 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %key_file_name.addr = alloca i8*, align 8
  %ladder.addr = alloca i8**, align 8
  %ladder_depth.addr = alloca i64, align 8
  %input_file_name.addr = alloca i8*, align 8
  %output_file_name.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %derivation_key = alloca i32, align 4
  %wrapping_key = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %key_file_name, i8** %key_file_name.addr, align 8
  store i8** %ladder, i8*** %ladder.addr, align 8
  store i64 %ladder_depth, i64* %ladder_depth.addr, align 8
  store i8* %input_file_name, i8** %input_file_name.addr, align 8
  store i8* %output_file_name, i8** %output_file_name.addr, align 8
  store i32 0, i32* %status, align 4
  store i32 0, i32* %derivation_key, align 4
  store i32 0, i32* %wrapping_key, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @psa_crypto_init() #6
  store i32 %call, i32* %status, align 4
  %0 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load i32, i32* %status, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %1, i32 noundef 552, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0)) #6
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load i32, i32* %mode.addr, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %do.end
  %3 = load i8*, i8** %key_file_name.addr, align 8
  %call4 = call i32 @generate(i8* noundef %3) #6
  store i32 %call4, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %do.end
  br label %do.body6

do.body6:                                         ; preds = %if.end5
  %4 = load i8*, i8** %key_file_name.addr, align 8
  %call7 = call i32 @import_key_from_file(i32 noundef 16385, i32 noundef 134217993, i8* noundef %4, i32* noundef %derivation_key) #6
  store i32 %call7, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp8 = icmp ne i32 %5, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.body6
  %6 = load i32, i32* %status, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %6, i32 noundef 562, i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.36, i64 0, i64 0)) #6
  br label %exit

if.end11:                                         ; preds = %do.body6
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %7 = load i8**, i8*** %ladder.addr, align 8
  %8 = load i64, i64* %ladder_depth.addr, align 8
  %call14 = call i32 @derive_key_ladder(i8** noundef %7, i64 noundef %8, i32* noundef %derivation_key) #6
  store i32 %call14, i32* %status, align 4
  %9 = load i32, i32* %status, align 4
  %cmp15 = icmp ne i32 %9, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %do.body13
  %10 = load i32, i32* %status, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %10, i32 noundef 566, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.37, i64 0, i64 0)) #6
  br label %exit

if.end18:                                         ; preds = %do.body13
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  %11 = load i32, i32* %mode.addr, align 4
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb27
    i32 3, label %sw.bb42
  ]

sw.bb:                                            ; preds = %do.end19
  br label %do.body20

do.body20:                                        ; preds = %sw.bb
  %12 = load i32, i32* %derivation_key, align 4
  %13 = load i8*, i8** %output_file_name.addr, align 8
  %call21 = call i32 @save_key(i32 noundef %12, i8* noundef %13) #6
  store i32 %call21, i32* %status, align 4
  %14 = load i32, i32* %status, align 4
  %cmp22 = icmp ne i32 %14, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %do.body20
  %15 = load i32, i32* %status, align 4
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %15, i32 noundef 571, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0)) #6
  br label %exit

if.end25:                                         ; preds = %do.body20
  br label %do.end26

do.end26:                                         ; preds = %if.end25
  br label %sw.epilog

sw.bb27:                                          ; preds = %do.end19
  br label %do.body28

do.body28:                                        ; preds = %sw.bb27
  %16 = load i32, i32* %derivation_key, align 4
  %call29 = call i32 @derive_wrapping_key(i32 noundef 512, i32 noundef %16, i32* noundef %wrapping_key) #6
  store i32 %call29, i32* %status, align 4
  %17 = load i32, i32* %status, align 4
  %cmp30 = icmp ne i32 %17, 0
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %do.body28
  %18 = load i32, i32* %status, align 4
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %18, i32 noundef 576, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.39, i64 0, i64 0)) #6
  br label %exit

if.end33:                                         ; preds = %do.body28
  br label %do.end34

do.end34:                                         ; preds = %if.end33
  br label %do.body35

do.body35:                                        ; preds = %do.end34
  %19 = load i8*, i8** %input_file_name.addr, align 8
  %20 = load i8*, i8** %output_file_name.addr, align 8
  %21 = load i32, i32* %wrapping_key, align 4
  %call36 = call i32 @unwrap_data(i8* noundef %19, i8* noundef %20, i32 noundef %21) #6
  store i32 %call36, i32* %status, align 4
  %22 = load i32, i32* %status, align 4
  %cmp37 = icmp ne i32 %22, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %do.body35
  %23 = load i32, i32* %status, align 4
  %call39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %23, i32 noundef 578, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.40, i64 0, i64 0)) #6
  br label %exit

if.end40:                                         ; preds = %do.body35
  br label %do.end41

do.end41:                                         ; preds = %if.end40
  br label %sw.epilog

sw.bb42:                                          ; preds = %do.end19
  br label %do.body43

do.body43:                                        ; preds = %sw.bb42
  %24 = load i32, i32* %derivation_key, align 4
  %call44 = call i32 @derive_wrapping_key(i32 noundef 256, i32 noundef %24, i32* noundef %wrapping_key) #6
  store i32 %call44, i32* %status, align 4
  %25 = load i32, i32* %status, align 4
  %cmp45 = icmp ne i32 %25, 0
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %do.body43
  %26 = load i32, i32* %status, align 4
  %call47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %26, i32 noundef 583, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.41, i64 0, i64 0)) #6
  br label %exit

if.end48:                                         ; preds = %do.body43
  br label %do.end49

do.end49:                                         ; preds = %if.end48
  br label %do.body50

do.body50:                                        ; preds = %do.end49
  %27 = load i8*, i8** %input_file_name.addr, align 8
  %28 = load i8*, i8** %output_file_name.addr, align 8
  %29 = load i32, i32* %wrapping_key, align 4
  %call51 = call i32 @wrap_data(i8* noundef %27, i8* noundef %28, i32 noundef %29) #6
  store i32 %call51, i32* %status, align 4
  %30 = load i32, i32* %status, align 4
  %cmp52 = icmp ne i32 %30, 0
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %do.body50
  %31 = load i32, i32* %status, align 4
  %call54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %31, i32 noundef 585, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.42, i64 0, i64 0)) #6
  br label %exit

if.end55:                                         ; preds = %do.body50
  br label %do.end56

do.end56:                                         ; preds = %if.end55
  br label %sw.epilog

sw.default:                                       ; preds = %do.end19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end56, %do.end41, %do.end26
  br label %exit

exit:                                             ; preds = %sw.epilog, %if.then53, %if.then46, %if.then38, %if.then31, %if.then23, %if.then16, %if.then9, %if.then
  %32 = load i32, i32* %derivation_key, align 4
  %call57 = call i32 @psa_destroy_key(i32 noundef %32) #6
  %33 = load i32, i32* %wrapping_key, align 4
  %call58 = call i32 @psa_destroy_key(i32 noundef %33) #6
  call void @mbedtls_psa_crypto_free() #6
  %34 = load i32, i32* %status, align 4
  store i32 %34, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then3
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

declare dso_local i32 @psa_crypto_init() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate(i8* noundef %key_file_name) #0 {
entry:
  %key_file_name.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %key = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store i8* %key_file_name, i8** %key_file_name.addr, align 8
  store i32 0, i32* %status, align 4
  store i32 0, i32* %key, align 4
  %0 = bitcast %struct.psa_key_attributes_s* %attributes to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false)
  call void @psa_set_key_usage_flags(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef 16385) #6
  call void @psa_set_key_algorithm(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef 134217993) #6
  call void @psa_set_key_type(%struct.psa_key_attributes_s* noundef %attributes, i16 noundef zeroext 4608) #6
  call void @psa_set_key_bits(%struct.psa_key_attributes_s* noundef %attributes, i64 noundef 320) #6
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @psa_generate_key(%struct.psa_key_attributes_s* noundef %attributes, i32* noundef %key) #6
  store i32 %call, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %status, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %2, i32 noundef 210, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i64 0, i64 0)) #6
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %3 = load i32, i32* %key, align 4
  %4 = load i8*, i8** %key_file_name.addr, align 8
  %call3 = call i32 @save_key(i32 noundef %3, i8* noundef %4) #6
  store i32 %call3, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.body2
  %6 = load i32, i32* %status, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %6, i32 noundef 212, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i64 0, i64 0)) #6
  br label %exit

if.end7:                                          ; preds = %do.body2
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  br label %exit

exit:                                             ; preds = %do.end8, %if.then5, %if.then
  %7 = load i32, i32* %key, align 4
  %call9 = call i32 @psa_destroy_key(i32 noundef %7) #6
  %8 = load i32, i32* %status, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @import_key_from_file(i32 noundef %usage, i32 noundef %alg, i8* noundef %key_file_name, i32* noundef %master_key) #0 {
entry:
  %usage.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %key_file_name.addr = alloca i8*, align 8
  %master_key.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  %key_data = alloca [40 x i8], align 16
  %key_size = alloca i64, align 8
  %key_file = alloca %struct._IO_FILE*, align 8
  %extra_byte = alloca i8, align 1
  store i32 %usage, i32* %usage.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %key_file_name, i8** %key_file_name.addr, align 8
  store i32* %master_key, i32** %master_key.addr, align 8
  store i32 0, i32* %status, align 4
  %0 = bitcast %struct.psa_key_attributes_s* %attributes to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false)
  store %struct._IO_FILE* null, %struct._IO_FILE** %key_file, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i8*, i8** %key_file_name.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* noundef %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #6
  store %struct._IO_FILE* %call, %struct._IO_FILE** %key_file, align 8
  %cmp = icmp ne %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @perror(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.46, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %key_file, align 8
  call void @setbuf(%struct._IO_FILE* noundef %2, i8* noundef null) #7
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %key_data, i64 0, i64 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %key_file, align 8
  %call2 = call i64 @fread(i8* noundef %arraydecay, i64 noundef 1, i64 noundef 40, %struct._IO_FILE* noundef %3) #6
  store i64 %call2, i64* %key_size, align 8
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %do.body1
  call void @perror(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.47, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %key_file, align 8
  %call7 = call i64 @fread(i8* noundef %extra_byte, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %4) #6
  %cmp8 = icmp ne i64 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.end6
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.48, i64 0, i64 0), i32 noundef 40) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end11:                                         ; preds = %do.end6
  br label %do.body12

do.body12:                                        ; preds = %if.end11
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %key_file, align 8
  %call13 = call i32 @fclose(%struct._IO_FILE* noundef %5) #6
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %do.body12
  call void @perror(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end16:                                         ; preds = %do.body12
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  store %struct._IO_FILE* null, %struct._IO_FILE** %key_file, align 8
  %6 = load i32, i32* %usage.addr, align 4
  call void @psa_set_key_usage_flags(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef %6) #6
  %7 = load i32, i32* %alg.addr, align 4
  call void @psa_set_key_algorithm(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef %7) #6
  call void @psa_set_key_type(%struct.psa_key_attributes_s* noundef %attributes, i16 noundef zeroext 4608) #6
  br label %do.body18

do.body18:                                        ; preds = %do.end17
  %arraydecay19 = getelementptr inbounds [40 x i8], [40 x i8]* %key_data, i64 0, i64 0
  %8 = load i64, i64* %key_size, align 8
  %9 = load i32*, i32** %master_key.addr, align 8
  %call20 = call i32 @psa_import_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %arraydecay19, i64 noundef %8, i32* noundef %9) #6
  store i32 %call20, i32* %status, align 4
  %10 = load i32, i32* %status, align 4
  %cmp21 = icmp ne i32 %10, 0
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %do.body18
  %11 = load i32, i32* %status, align 4
  %call23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %11, i32 noundef 254, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.50, i64 0, i64 0)) #6
  br label %exit

if.end24:                                         ; preds = %do.body18
  br label %do.end25

do.end25:                                         ; preds = %if.end24
  br label %exit

exit:                                             ; preds = %do.end25, %if.then22, %if.then15, %if.then9, %if.then4, %if.then
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %key_file, align 8
  %cmp26 = icmp ne %struct._IO_FILE* %12, null
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %exit
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %key_file, align 8
  %call28 = call i32 @fclose(%struct._IO_FILE* noundef %13) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %exit
  %arraydecay30 = getelementptr inbounds [40 x i8], [40 x i8]* %key_data, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay30, i64 noundef 40) #6
  %14 = load i32, i32* %status, align 4
  %cmp31 = icmp ne i32 %14, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  %15 = load i32*, i32** %master_key.addr, align 8
  %16 = load i32, i32* %15, align 4
  %call33 = call i32 @psa_destroy_key(i32 noundef %16) #6
  %17 = load i32*, i32** %master_key.addr, align 8
  store i32 0, i32* %17, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29
  %18 = load i32, i32* %status, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derive_key_ladder(i8** noundef %ladder, i64 noundef %ladder_depth, i32* noundef %key) #0 {
entry:
  %ladder.addr = alloca i8**, align 8
  %ladder_depth.addr = alloca i64, align 8
  %key.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  %operation = alloca %struct.psa_key_derivation_s, align 8
  %i = alloca i64, align 8
  store i8** %ladder, i8*** %ladder.addr, align 8
  store i64 %ladder_depth, i64* %ladder_depth.addr, align 8
  store i32* %key, i32** %key.addr, align 8
  store i32 0, i32* %status, align 4
  %0 = bitcast %struct.psa_key_attributes_s* %attributes to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false)
  %1 = bitcast %struct.psa_key_derivation_s* %operation to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 552, i1 false)
  %2 = bitcast i8* %1 to { i32, i8, i64, { i8, [535 x i8] } }*
  %3 = getelementptr inbounds { i32, i8, i64, { i8, [535 x i8] } }, { i32, i8, i64, { i8, [535 x i8] } }* %2, i32 0, i32 3
  call void @psa_set_key_usage_flags(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef 16385) #6
  call void @psa_set_key_algorithm(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef 134217993) #6
  call void @psa_set_key_type(%struct.psa_key_attributes_s* noundef %attributes, i16 noundef zeroext 4608) #6
  call void @psa_set_key_bits(%struct.psa_key_attributes_s* noundef %attributes, i64 noundef 320) #6
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %ladder_depth.addr, align 8
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %call = call i32 @psa_key_derivation_setup(%struct.psa_key_derivation_s* noundef %operation, i32 noundef 134217993) #6
  store i32 %call, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp1 = icmp ne i32 %6, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %7 = load i32, i32* %status, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %7, i32 noundef 295, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.51, i64 0, i64 0)) #6
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %call4 = call i64 @strlen(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i64 0, i64 0)) #5
  %call5 = call i32 @psa_key_derivation_input_bytes(%struct.psa_key_derivation_s* noundef %operation, i16 noundef zeroext 514, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i64 0, i64 0), i64 noundef %call4) #6
  store i32 %call5, i32* %status, align 4
  %8 = load i32, i32* %status, align 4
  %cmp6 = icmp ne i32 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.body3
  %9 = load i32, i32* %status, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %9, i32 noundef 298, i8* noundef getelementptr inbounds ([117 x i8], [117 x i8]* @.str.53, i64 0, i64 0)) #6
  br label %exit

if.end9:                                          ; preds = %do.body3
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  %10 = load i32*, i32** %key.addr, align 8
  %11 = load i32, i32* %10, align 4
  %call12 = call i32 @psa_key_derivation_input_key(%struct.psa_key_derivation_s* noundef %operation, i16 noundef zeroext 257, i32 noundef %11) #6
  store i32 %call12, i32* %status, align 4
  %12 = load i32, i32* %status, align 4
  %cmp13 = icmp ne i32 %12, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.body11
  %13 = load i32, i32* %status, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %13, i32 noundef 301, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.54, i64 0, i64 0)) #6
  br label %exit

if.end16:                                         ; preds = %do.body11
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  br label %do.body18

do.body18:                                        ; preds = %do.end17
  %14 = load i8**, i8*** %ladder.addr, align 8
  %15 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %15
  %16 = load i8*, i8** %arrayidx, align 8
  %17 = load i8**, i8*** %ladder.addr, align 8
  %18 = load i64, i64* %i, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %19 = load i8*, i8** %arrayidx19, align 8
  %call20 = call i64 @strlen(i8* noundef %19) #5
  %call21 = call i32 @psa_key_derivation_input_bytes(%struct.psa_key_derivation_s* noundef %operation, i16 noundef zeroext 515, i8* noundef %16, i64 noundef %call20) #6
  store i32 %call21, i32* %status, align 4
  %20 = load i32, i32* %status, align 4
  %cmp22 = icmp ne i32 %20, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %do.body18
  %21 = load i32, i32* %status, align 4
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %21, i32 noundef 304, i8* noundef getelementptr inbounds ([119 x i8], [119 x i8]* @.str.55, i64 0, i64 0)) #6
  br label %exit

if.end25:                                         ; preds = %do.body18
  br label %do.end26

do.end26:                                         ; preds = %if.end25
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %22 = load i32*, i32** %key.addr, align 8
  %23 = load i32, i32* %22, align 4
  %call28 = call i32 @psa_destroy_key(i32 noundef %23) #6
  store i32 %call28, i32* %status, align 4
  %24 = load i32, i32* %status, align 4
  %cmp29 = icmp ne i32 %24, 0
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %do.body27
  %25 = load i32, i32* %status, align 4
  %call31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %25, i32 noundef 307, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i64 0, i64 0)) #6
  br label %exit

if.end32:                                         ; preds = %do.body27
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  %26 = load i32*, i32** %key.addr, align 8
  store i32 0, i32* %26, align 4
  br label %do.body34

do.body34:                                        ; preds = %do.end33
  %27 = load i32*, i32** %key.addr, align 8
  %call35 = call i32 @psa_key_derivation_output_key(%struct.psa_key_attributes_s* noundef %attributes, %struct.psa_key_derivation_s* noundef %operation, i32* noundef %27) #6
  store i32 %call35, i32* %status, align 4
  %28 = load i32, i32* %status, align 4
  %cmp36 = icmp ne i32 %28, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %do.body34
  %29 = load i32, i32* %status, align 4
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %29, i32 noundef 311, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.57, i64 0, i64 0)) #6
  br label %exit

if.end39:                                         ; preds = %do.body34
  br label %do.end40

do.end40:                                         ; preds = %if.end39
  br label %do.body41

do.body41:                                        ; preds = %do.end40
  %call42 = call i32 @psa_key_derivation_abort(%struct.psa_key_derivation_s* noundef %operation) #6
  store i32 %call42, i32* %status, align 4
  %30 = load i32, i32* %status, align 4
  %cmp43 = icmp ne i32 %30, 0
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %do.body41
  %31 = load i32, i32* %status, align 4
  %call45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %31, i32 noundef 312, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.58, i64 0, i64 0)) #6
  br label %exit

if.end46:                                         ; preds = %do.body41
  br label %do.end47

do.end47:                                         ; preds = %if.end46
  br label %for.inc

for.inc:                                          ; preds = %do.end47
  %32 = load i64, i64* %i, align 8
  %inc = add i64 %32, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %exit

exit:                                             ; preds = %for.end, %if.then44, %if.then37, %if.then30, %if.then23, %if.then14, %if.then7, %if.then
  %call48 = call i32 @psa_key_derivation_abort(%struct.psa_key_derivation_s* noundef %operation) #6
  %33 = load i32, i32* %status, align 4
  %cmp49 = icmp ne i32 %33, 0
  br i1 %cmp49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %exit
  %34 = load i32*, i32** %key.addr, align 8
  %35 = load i32, i32* %34, align 4
  %call51 = call i32 @psa_destroy_key(i32 noundef %35) #6
  %36 = load i32*, i32** %key.addr, align 8
  store i32 0, i32* %36, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %exit
  %37 = load i32, i32* %status, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_key(i32 noundef %key, i8* noundef %output_file_name) #0 {
entry:
  %key.addr = alloca i32, align 4
  %output_file_name.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %key_data = alloca [40 x i8], align 16
  %key_size = alloca i64, align 8
  %key_file = alloca %struct._IO_FILE*, align 8
  store i32 %key, i32* %key.addr, align 4
  store i8* %output_file_name, i8** %output_file_name.addr, align 8
  store i32 0, i32* %status, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %key_file, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %key.addr, align 4
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %key_data, i64 0, i64 0
  %call = call i32 @psa_export_key(i32 noundef %0, i8* noundef %arraydecay, i64 noundef 40, i64* noundef %key_size) #6
  store i32 %call, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %status, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %2, i32 noundef 179, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.59, i64 0, i64 0)) #6
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %3 = load i8*, i8** %output_file_name.addr, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0)) #6
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %key_file, align 8
  %cmp4 = icmp ne %struct._IO_FILE* %call3, null
  br i1 %cmp4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %do.body2
  call void @perror(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.61, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end6:                                          ; preds = %do.body2
  br label %do.end7

do.end7:                                          ; preds = %if.end6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %key_file, align 8
  call void @setbuf(%struct._IO_FILE* noundef %4, i8* noundef null) #7
  br label %do.body8

do.body8:                                         ; preds = %do.end7
  %arraydecay9 = getelementptr inbounds [40 x i8], [40 x i8]* %key_data, i64 0, i64 0
  %5 = load i64, i64* %key_size, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %key_file, align 8
  %call10 = call i64 @fwrite(i8* noundef %arraydecay9, i64 noundef 1, i64 noundef %5, %struct._IO_FILE* noundef %6) #6
  %7 = load i64, i64* %key_size, align 8
  %cmp11 = icmp eq i64 %call10, %7
  br i1 %cmp11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %do.body8
  call void @perror(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.62, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end13:                                         ; preds = %do.body8
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  br label %do.body15

do.body15:                                        ; preds = %do.end14
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %key_file, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* noundef %8) #6
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %do.body15
  call void @perror(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end19:                                         ; preds = %do.body15
  br label %do.end20

do.end20:                                         ; preds = %if.end19
  store %struct._IO_FILE* null, %struct._IO_FILE** %key_file, align 8
  br label %exit

exit:                                             ; preds = %do.end20, %if.then18, %if.then12, %if.then5, %if.then
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %key_file, align 8
  %cmp21 = icmp ne %struct._IO_FILE* %9, null
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %exit
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %key_file, align 8
  %call23 = call i32 @fclose(%struct._IO_FILE* noundef %10) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %exit
  %11 = load i32, i32* %status, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derive_wrapping_key(i32 noundef %usage, i32 noundef %derived_key, i32* noundef %wrapping_key) #0 {
entry:
  %usage.addr = alloca i32, align 4
  %derived_key.addr = alloca i32, align 4
  %wrapping_key.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  %operation = alloca %struct.psa_key_derivation_s, align 8
  store i32 %usage, i32* %usage.addr, align 4
  store i32 %derived_key, i32* %derived_key.addr, align 4
  store i32* %wrapping_key, i32** %wrapping_key.addr, align 8
  store i32 0, i32* %status, align 4
  %0 = bitcast %struct.psa_key_attributes_s* %attributes to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false)
  %1 = bitcast %struct.psa_key_derivation_s* %operation to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 552, i1 false)
  %2 = bitcast i8* %1 to { i32, i8, i64, { i8, [535 x i8] } }*
  %3 = getelementptr inbounds { i32, i8, i64, { i8, [535 x i8] } }, { i32, i8, i64, { i8, [535 x i8] } }* %2, i32 0, i32 3
  %4 = load i32*, i32** %wrapping_key.addr, align 8
  store i32 0, i32* %4, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @psa_key_derivation_setup(%struct.psa_key_derivation_s* noundef %operation, i32 noundef 134217993) #6
  store i32 %call, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %6 = load i32, i32* %status, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %6, i32 noundef 338, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.51, i64 0, i64 0)) #6
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %call3 = call i64 @strlen(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i64 0, i64 0)) #5
  %call4 = call i32 @psa_key_derivation_input_bytes(%struct.psa_key_derivation_s* noundef %operation, i16 noundef zeroext 514, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i64 0, i64 0), i64 noundef %call3) #6
  store i32 %call4, i32* %status, align 4
  %7 = load i32, i32* %status, align 4
  %cmp5 = icmp ne i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %do.body2
  %8 = load i32, i32* %status, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %8, i32 noundef 341, i8* noundef getelementptr inbounds ([121 x i8], [121 x i8]* @.str.64, i64 0, i64 0)) #6
  br label %exit

if.end8:                                          ; preds = %do.body2
  br label %do.end9

do.end9:                                          ; preds = %if.end8
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  %9 = load i32, i32* %derived_key.addr, align 4
  %call11 = call i32 @psa_key_derivation_input_key(%struct.psa_key_derivation_s* noundef %operation, i16 noundef zeroext 257, i32 noundef %9) #6
  store i32 %call11, i32* %status, align 4
  %10 = load i32, i32* %status, align 4
  %cmp12 = icmp ne i32 %10, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %do.body10
  %11 = load i32, i32* %status, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %11, i32 noundef 344, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.65, i64 0, i64 0)) #6
  br label %exit

if.end15:                                         ; preds = %do.body10
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  br label %do.body17

do.body17:                                        ; preds = %do.end16
  %call18 = call i32 @psa_key_derivation_input_bytes(%struct.psa_key_derivation_s* noundef %operation, i16 noundef zeroext 515, i8* noundef null, i64 noundef 0) #6
  store i32 %call18, i32* %status, align 4
  %12 = load i32, i32* %status, align 4
  %cmp19 = icmp ne i32 %12, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %do.body17
  %13 = load i32, i32* %status, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %13, i32 noundef 347, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.66, i64 0, i64 0)) #6
  br label %exit

if.end22:                                         ; preds = %do.body17
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  %14 = load i32, i32* %usage.addr, align 4
  call void @psa_set_key_usage_flags(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef %14) #6
  call void @psa_set_key_algorithm(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef 89129216) #6
  call void @psa_set_key_type(%struct.psa_key_attributes_s* noundef %attributes, i16 noundef zeroext 9216) #6
  call void @psa_set_key_bits(%struct.psa_key_attributes_s* noundef %attributes, i64 noundef 128) #6
  br label %do.body24

do.body24:                                        ; preds = %do.end23
  %15 = load i32*, i32** %wrapping_key.addr, align 8
  %call25 = call i32 @psa_key_derivation_output_key(%struct.psa_key_attributes_s* noundef %attributes, %struct.psa_key_derivation_s* noundef %operation, i32* noundef %15) #6
  store i32 %call25, i32* %status, align 4
  %16 = load i32, i32* %status, align 4
  %cmp26 = icmp ne i32 %16, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %do.body24
  %17 = load i32, i32* %status, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %17, i32 noundef 355, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.67, i64 0, i64 0)) #6
  br label %exit

if.end29:                                         ; preds = %do.body24
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  br label %exit

exit:                                             ; preds = %do.end30, %if.then27, %if.then20, %if.then13, %if.then6, %if.then
  %call31 = call i32 @psa_key_derivation_abort(%struct.psa_key_derivation_s* noundef %operation) #6
  %18 = load i32, i32* %status, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwrap_data(i8* noundef %input_file_name, i8* noundef %output_file_name, i32 noundef %wrapping_key) #0 {
entry:
  %input_file_name.addr = alloca i8*, align 8
  %output_file_name.addr = alloca i8*, align 8
  %wrapping_key.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %input_file = alloca %struct._IO_FILE*, align 8
  %output_file = alloca %struct._IO_FILE*, align 8
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  %key_type = alloca i16, align 2
  %buffer = alloca i8*, align 8
  %ciphertext_size = alloca i64, align 8
  %plaintext_size = alloca i64, align 8
  %header = alloca %struct.wrapped_data_header_t, align 8
  %extra_byte = alloca i8, align 1
  store i8* %input_file_name, i8** %input_file_name.addr, align 8
  store i8* %output_file_name, i8** %output_file_name.addr, align 8
  store i32 %wrapping_key, i32* %wrapping_key.addr, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %input_file, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %output_file, align 8
  %0 = bitcast %struct.psa_key_attributes_s* %attributes to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false)
  store i8* null, i8** %buffer, align 8
  store i64 0, i64* %ciphertext_size, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i8*, i8** %input_file_name.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* noundef %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #6
  store %struct._IO_FILE* %call, %struct._IO_FILE** %input_file, align 8
  %cmp = icmp ne %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @perror(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.68, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  call void @setbuf(%struct._IO_FILE* noundef %2, i8* noundef null) #7
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %3 = bitcast %struct.wrapped_data_header_t* %header to i8*
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call2 = call i64 @fread(i8* noundef %3, i64 noundef 1, i64 noundef 48, %struct._IO_FILE* noundef %4) #6
  %cmp3 = icmp eq i64 %call2, 48
  br i1 %cmp3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %do.body1
  call void @perror(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.69, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  %magic = getelementptr inbounds %struct.wrapped_data_header_t, %struct.wrapped_data_header_t* %header, i32 0, i32 0
  %5 = bitcast [16 x i8]* %magic to i8*
  %call7 = call i32 @memcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.70, i64 0, i64 0), i64 noundef 16) #5
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.end6
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.71, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end11:                                         ; preds = %do.end6
  %ad_size = getelementptr inbounds %struct.wrapped_data_header_t, %struct.wrapped_data_header_t* %header, i32 0, i32 1
  %6 = load i64, i64* %ad_size, align 8
  %cmp12 = icmp ne i64 %6, 48
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end15:                                         ; preds = %if.end11
  br label %do.body16

do.body16:                                        ; preds = %if.end15
  %7 = load i32, i32* %wrapping_key.addr, align 4
  %call17 = call i32 @psa_get_key_attributes(i32 noundef %7, %struct.psa_key_attributes_s* noundef %attributes) #6
  store i32 %call17, i32* %status, align 4
  %8 = load i32, i32* %status, align 4
  %cmp18 = icmp ne i32 %8, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %do.body16
  %9 = load i32, i32* %status, align 4
  %call20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %9, i32 noundef 482, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.73, i64 0, i64 0)) #6
  br label %exit

if.end21:                                         ; preds = %do.body16
  br label %do.end22

do.end22:                                         ; preds = %if.end21
  %call23 = call zeroext i16 @psa_get_key_type(%struct.psa_key_attributes_s* noundef %attributes) #6
  store i16 %call23, i16* %key_type, align 2
  %10 = load i16, i16* %key_type, align 2
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, 28672
  %cmp24 = icmp eq i32 %and, 8192
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end22
  %11 = load i16, i16* %key_type, align 2
  %conv26 = zext i16 %11 to i32
  %shr = ashr i32 %conv26, 8
  %and27 = and i32 %shr, 7
  %shl = shl i32 1, %and27
  br label %cond.end

cond.false:                                       ; preds = %do.end22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %cmp28 = icmp eq i32 %cond, 16
  br i1 %cmp28, label %cond.true30, label %cond.false31

cond.true30:                                      ; preds = %cond.end
  br label %cond.end36

cond.false31:                                     ; preds = %cond.end
  %12 = load i16, i16* %key_type, align 2
  %conv32 = zext i16 %12 to i32
  %cmp33 = icmp eq i32 %conv32, 8196
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false31
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false31
  %13 = phi i1 [ false, %cond.false31 ], [ false, %land.rhs ]
  %14 = zext i1 %13 to i64
  %cond35 = select i1 %13, i32 12, i32 0
  br label %cond.end36

cond.end36:                                       ; preds = %land.end, %cond.true30
  %cond37 = phi i32 [ 13, %cond.true30 ], [ %cond35, %land.end ]
  %cmp38 = icmp ne i32 %cond37, 0
  br i1 %cmp38, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %cond.end36
  %payload_size = getelementptr inbounds %struct.wrapped_data_header_t, %struct.wrapped_data_header_t* %header, i32 0, i32 2
  %15 = load i64, i64* %payload_size, align 8
  %add = add i64 %15, 16
  br label %cond.end42

cond.false41:                                     ; preds = %cond.end36
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false41, %cond.true40
  %cond43 = phi i64 [ %add, %cond.true40 ], [ 0, %cond.false41 ]
  store i64 %cond43, i64* %ciphertext_size, align 8
  %16 = load i64, i64* %ciphertext_size, align 8
  %payload_size44 = getelementptr inbounds %struct.wrapped_data_header_t, %struct.wrapped_data_header_t* %header, i32 0, i32 2
  %17 = load i64, i64* %payload_size44, align 8
  %cmp45 = icmp ult i64 %16, %17
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %cond.end42
  %call48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end49:                                         ; preds = %cond.end42
  br label %do.body50

do.body50:                                        ; preds = %if.end49
  %18 = load i64, i64* %ciphertext_size, align 8
  %call51 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %18) #7
  store i8* %call51, i8** %buffer, align 8
  %cmp52 = icmp ne i8* %call51, null
  br i1 %cmp52, label %if.end55, label %if.then54

if.then54:                                        ; preds = %do.body50
  call void @perror(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.75, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end55:                                         ; preds = %do.body50
  br label %do.end56

do.end56:                                         ; preds = %if.end55
  br label %do.body57

do.body57:                                        ; preds = %do.end56
  %19 = load i8*, i8** %buffer, align 8
  %20 = load i64, i64* %ciphertext_size, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call58 = call i64 @fread(i8* noundef %19, i64 noundef 1, i64 noundef %20, %struct._IO_FILE* noundef %21) #6
  %22 = load i64, i64* %ciphertext_size, align 8
  %cmp59 = icmp eq i64 %call58, %22
  br i1 %cmp59, label %if.end62, label %if.then61

if.then61:                                        ; preds = %do.body57
  call void @perror(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.76, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end62:                                         ; preds = %do.body57
  br label %do.end63

do.end63:                                         ; preds = %if.end62
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call64 = call i64 @fread(i8* noundef %extra_byte, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %23) #6
  %cmp65 = icmp ne i64 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %do.end63
  %call68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.77, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end69:                                         ; preds = %do.end63
  br label %do.body70

do.body70:                                        ; preds = %if.end69
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call71 = call i32 @fclose(%struct._IO_FILE* noundef %24) #6
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.end75, label %if.then74

if.then74:                                        ; preds = %do.body70
  call void @perror(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.78, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end75:                                         ; preds = %do.body70
  br label %do.end76

do.end76:                                         ; preds = %if.end75
  store %struct._IO_FILE* null, %struct._IO_FILE** %input_file, align 8
  br label %do.body77

do.body77:                                        ; preds = %do.end76
  %25 = load i32, i32* %wrapping_key.addr, align 4
  %iv = getelementptr inbounds %struct.wrapped_data_header_t, %struct.wrapped_data_header_t* %header, i32 0, i32 3
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %iv, i64 0, i64 0
  %26 = bitcast %struct.wrapped_data_header_t* %header to i8*
  %27 = load i8*, i8** %buffer, align 8
  %28 = load i64, i64* %ciphertext_size, align 8
  %29 = load i8*, i8** %buffer, align 8
  %30 = load i64, i64* %ciphertext_size, align 8
  %call78 = call i32 @psa_aead_decrypt(i32 noundef %25, i32 noundef 89129216, i8* noundef %arraydecay, i64 noundef 13, i8* noundef %26, i64 noundef 48, i8* noundef %27, i64 noundef %28, i8* noundef %29, i64 noundef %30, i64* noundef %plaintext_size) #6
  store i32 %call78, i32* %status, align 4
  %31 = load i32, i32* %status, align 4
  %cmp79 = icmp ne i32 %31, 0
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %do.body77
  %32 = load i32, i32* %status, align 4
  %call82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %32, i32 noundef 513, i8* noundef getelementptr inbounds ([182 x i8], [182 x i8]* @.str.79, i64 0, i64 0)) #6
  br label %exit

if.end83:                                         ; preds = %do.body77
  br label %do.end84

do.end84:                                         ; preds = %if.end83
  %33 = load i64, i64* %plaintext_size, align 8
  %payload_size85 = getelementptr inbounds %struct.wrapped_data_header_t, %struct.wrapped_data_header_t* %header, i32 0, i32 2
  %34 = load i64, i64* %payload_size85, align 8
  %cmp86 = icmp ne i64 %33, %34
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %do.end84
  %call89 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.80, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end90:                                         ; preds = %do.end84
  br label %do.body91

do.body91:                                        ; preds = %if.end90
  %35 = load i8*, i8** %output_file_name.addr, align 8
  %call92 = call %struct._IO_FILE* @fopen(i8* noundef %35, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0)) #6
  store %struct._IO_FILE* %call92, %struct._IO_FILE** %output_file, align 8
  %cmp93 = icmp ne %struct._IO_FILE* %call92, null
  br i1 %cmp93, label %if.end96, label %if.then95

if.then95:                                        ; preds = %do.body91
  call void @perror(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.81, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end96:                                         ; preds = %do.body91
  br label %do.end97

do.end97:                                         ; preds = %if.end96
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  call void @setbuf(%struct._IO_FILE* noundef %36, i8* noundef null) #7
  br label %do.body98

do.body98:                                        ; preds = %do.end97
  %37 = load i8*, i8** %buffer, align 8
  %38 = load i64, i64* %plaintext_size, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call99 = call i64 @fwrite(i8* noundef %37, i64 noundef 1, i64 noundef %38, %struct._IO_FILE* noundef %39) #6
  %40 = load i64, i64* %plaintext_size, align 8
  %cmp100 = icmp eq i64 %call99, %40
  br i1 %cmp100, label %if.end103, label %if.then102

if.then102:                                       ; preds = %do.body98
  call void @perror(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.82, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end103:                                        ; preds = %do.body98
  br label %do.end104

do.end104:                                        ; preds = %if.end103
  br label %do.body105

do.body105:                                       ; preds = %do.end104
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call106 = call i32 @fclose(%struct._IO_FILE* noundef %41) #6
  %cmp107 = icmp eq i32 %call106, 0
  br i1 %cmp107, label %if.end110, label %if.then109

if.then109:                                       ; preds = %do.body105
  call void @perror(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.83, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end110:                                        ; preds = %do.body105
  br label %do.end111

do.end111:                                        ; preds = %if.end110
  store %struct._IO_FILE* null, %struct._IO_FILE** %output_file, align 8
  br label %exit

exit:                                             ; preds = %do.end111, %if.then109, %if.then102, %if.then95, %if.then88, %if.then81, %if.then74, %if.then67, %if.then61, %if.then54, %if.then47, %if.then19, %if.then13, %if.then9, %if.then4, %if.then
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %cmp112 = icmp ne %struct._IO_FILE* %42, null
  br i1 %cmp112, label %if.then114, label %if.end116

if.then114:                                       ; preds = %exit
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call115 = call i32 @fclose(%struct._IO_FILE* noundef %43) #6
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %exit
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %cmp117 = icmp ne %struct._IO_FILE* %44, null
  br i1 %cmp117, label %if.then119, label %if.end121

if.then119:                                       ; preds = %if.end116
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call120 = call i32 @fclose(%struct._IO_FILE* noundef %45) #6
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end116
  %46 = load i8*, i8** %buffer, align 8
  %cmp122 = icmp ne i8* %46, null
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.end121
  %47 = load i8*, i8** %buffer, align 8
  %48 = load i64, i64* %ciphertext_size, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %47, i64 noundef %48) #6
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.end121
  %49 = load i8*, i8** %buffer, align 8
  call void @free(i8* noundef %49) #7
  %50 = load i32, i32* %status, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wrap_data(i8* noundef %input_file_name, i8* noundef %output_file_name, i32 noundef %wrapping_key) #0 {
entry:
  %input_file_name.addr = alloca i8*, align 8
  %output_file_name.addr = alloca i8*, align 8
  %wrapping_key.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %input_file = alloca %struct._IO_FILE*, align 8
  %output_file = alloca %struct._IO_FILE*, align 8
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  %key_type = alloca i16, align 2
  %input_position = alloca i64, align 8
  %input_size = alloca i64, align 8
  %buffer_size = alloca i64, align 8
  %buffer = alloca i8*, align 8
  %ciphertext_size = alloca i64, align 8
  %header = alloca %struct.wrapped_data_header_t, align 8
  store i8* %input_file_name, i8** %input_file_name.addr, align 8
  store i8* %output_file_name, i8** %output_file_name.addr, align 8
  store i32 %wrapping_key, i32* %wrapping_key.addr, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %input_file, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %output_file, align 8
  %0 = bitcast %struct.psa_key_attributes_s* %attributes to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false)
  store i64 0, i64* %buffer_size, align 8
  store i8* null, i8** %buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i8*, i8** %input_file_name.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* noundef %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #6
  store %struct._IO_FILE* %call, %struct._IO_FILE** %input_file, align 8
  %cmp = icmp ne %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @perror(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.68, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  call void @setbuf(%struct._IO_FILE* noundef %2, i8* noundef null) #7
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call2 = call i32 @fseek(%struct._IO_FILE* noundef %3, i64 noundef 0, i32 noundef 2) #6
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %do.body1
  call void @perror(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.84, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call8 = call i64 @ftell(%struct._IO_FILE* noundef %4) #6
  store i64 %call8, i64* %input_position, align 8
  %cmp9 = icmp ne i64 %call8, -1
  br i1 %cmp9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %do.body7
  call void @perror(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.85, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end11:                                         ; preds = %do.body7
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  %5 = load i64, i64* %input_position, align 8
  store i64 %5, i64* %input_size, align 8
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %6 = load i32, i32* %wrapping_key.addr, align 4
  %call14 = call i32 @psa_get_key_attributes(i32 noundef %6, %struct.psa_key_attributes_s* noundef %attributes) #6
  store i32 %call14, i32* %status, align 4
  %7 = load i32, i32* %status, align 4
  %cmp15 = icmp ne i32 %7, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %do.body13
  %8 = load i32, i32* %status, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %8, i32 noundef 393, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.86, i64 0, i64 0)) #6
  br label %exit

if.end18:                                         ; preds = %do.body13
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  %call20 = call zeroext i16 @psa_get_key_type(%struct.psa_key_attributes_s* noundef %attributes) #6
  store i16 %call20, i16* %key_type, align 2
  %9 = load i16, i16* %key_type, align 2
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 28672
  %cmp21 = icmp eq i32 %and, 8192
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end19
  %10 = load i16, i16* %key_type, align 2
  %conv23 = zext i16 %10 to i32
  %shr = ashr i32 %conv23, 8
  %and24 = and i32 %shr, 7
  %shl = shl i32 1, %and24
  br label %cond.end

cond.false:                                       ; preds = %do.end19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %cmp25 = icmp eq i32 %cond, 16
  br i1 %cmp25, label %cond.true27, label %cond.false28

cond.true27:                                      ; preds = %cond.end
  br label %cond.end33

cond.false28:                                     ; preds = %cond.end
  %11 = load i16, i16* %key_type, align 2
  %conv29 = zext i16 %11 to i32
  %cmp30 = icmp eq i32 %conv29, 8196
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false28
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false28
  %12 = phi i1 [ false, %cond.false28 ], [ false, %land.rhs ]
  %13 = zext i1 %12 to i64
  %cond32 = select i1 %12, i32 12, i32 0
  br label %cond.end33

cond.end33:                                       ; preds = %land.end, %cond.true27
  %cond34 = phi i32 [ 13, %cond.true27 ], [ %cond32, %land.end ]
  %cmp35 = icmp ne i32 %cond34, 0
  br i1 %cmp35, label %cond.true37, label %cond.false38

cond.true37:                                      ; preds = %cond.end33
  %14 = load i64, i64* %input_size, align 8
  %add = add i64 %14, 16
  br label %cond.end39

cond.false38:                                     ; preds = %cond.end33
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %cond.true37
  %cond40 = phi i64 [ %add, %cond.true37 ], [ 0, %cond.false38 ]
  store i64 %cond40, i64* %buffer_size, align 8
  %15 = load i64, i64* %buffer_size, align 8
  %16 = load i64, i64* %input_size, align 8
  %cmp41 = icmp ult i64 %15, %16
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %cond.end39
  %call44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end45:                                         ; preds = %cond.end39
  br label %do.body46

do.body46:                                        ; preds = %if.end45
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call47 = call i32 @fseek(%struct._IO_FILE* noundef %17, i64 noundef 0, i32 noundef 0) #6
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.end51, label %if.then50

if.then50:                                        ; preds = %do.body46
  call void @perror(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.87, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end51:                                         ; preds = %do.body46
  br label %do.end52

do.end52:                                         ; preds = %if.end51
  br label %do.body53

do.body53:                                        ; preds = %do.end52
  %18 = load i64, i64* %buffer_size, align 8
  %call54 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %18) #7
  store i8* %call54, i8** %buffer, align 8
  %cmp55 = icmp ne i8* %call54, null
  br i1 %cmp55, label %if.end58, label %if.then57

if.then57:                                        ; preds = %do.body53
  call void @perror(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.88, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end58:                                         ; preds = %do.body53
  br label %do.end59

do.end59:                                         ; preds = %if.end58
  br label %do.body60

do.body60:                                        ; preds = %do.end59
  %19 = load i8*, i8** %buffer, align 8
  %20 = load i64, i64* %input_size, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call61 = call i64 @fread(i8* noundef %19, i64 noundef 1, i64 noundef %20, %struct._IO_FILE* noundef %21) #6
  %22 = load i64, i64* %input_size, align 8
  %cmp62 = icmp eq i64 %call61, %22
  br i1 %cmp62, label %if.end65, label %if.then64

if.then64:                                        ; preds = %do.body60
  call void @perror(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.89, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end65:                                         ; preds = %do.body60
  br label %do.end66

do.end66:                                         ; preds = %if.end65
  br label %do.body67

do.body67:                                        ; preds = %do.end66
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call68 = call i32 @fclose(%struct._IO_FILE* noundef %23) #6
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %if.end72, label %if.then71

if.then71:                                        ; preds = %do.body67
  call void @perror(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.78, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end72:                                         ; preds = %do.body67
  br label %do.end73

do.end73:                                         ; preds = %if.end72
  store %struct._IO_FILE* null, %struct._IO_FILE** %input_file, align 8
  %magic = getelementptr inbounds %struct.wrapped_data_header_t, %struct.wrapped_data_header_t* %header, i32 0, i32 0
  %24 = bitcast [16 x i8]* %magic to i8*
  %call74 = call i8* @memcpy(i8* noundef %24, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.70, i64 0, i64 0), i64 noundef 16) #7
  %ad_size = getelementptr inbounds %struct.wrapped_data_header_t, %struct.wrapped_data_header_t* %header, i32 0, i32 1
  store i64 48, i64* %ad_size, align 8
  %25 = load i64, i64* %input_size, align 8
  %payload_size = getelementptr inbounds %struct.wrapped_data_header_t, %struct.wrapped_data_header_t* %header, i32 0, i32 2
  store i64 %25, i64* %payload_size, align 8
  br label %do.body75

do.body75:                                        ; preds = %do.end73
  %iv = getelementptr inbounds %struct.wrapped_data_header_t, %struct.wrapped_data_header_t* %header, i32 0, i32 3
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %iv, i64 0, i64 0
  %call76 = call i32 @psa_generate_random(i8* noundef %arraydecay, i64 noundef 13) #6
  store i32 %call76, i32* %status, align 4
  %26 = load i32, i32* %status, align 4
  %cmp77 = icmp ne i32 %26, 0
  br i1 %cmp77, label %if.then79, label %if.end81

if.then79:                                        ; preds = %do.body75
  %27 = load i32, i32* %status, align 4
  %call80 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %27, i32 noundef 418, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.90, i64 0, i64 0)) #6
  br label %exit

if.end81:                                         ; preds = %do.body75
  br label %do.end82

do.end82:                                         ; preds = %if.end81
  br label %do.body83

do.body83:                                        ; preds = %do.end82
  %28 = load i32, i32* %wrapping_key.addr, align 4
  %iv84 = getelementptr inbounds %struct.wrapped_data_header_t, %struct.wrapped_data_header_t* %header, i32 0, i32 3
  %arraydecay85 = getelementptr inbounds [13 x i8], [13 x i8]* %iv84, i64 0, i64 0
  %29 = bitcast %struct.wrapped_data_header_t* %header to i8*
  %30 = load i8*, i8** %buffer, align 8
  %31 = load i64, i64* %input_size, align 8
  %32 = load i8*, i8** %buffer, align 8
  %33 = load i64, i64* %buffer_size, align 8
  %call86 = call i32 @psa_aead_encrypt(i32 noundef %28, i32 noundef 89129216, i8* noundef %arraydecay85, i64 noundef 13, i8* noundef %29, i64 noundef 48, i8* noundef %30, i64 noundef %31, i8* noundef %32, i64 noundef %33, i64* noundef %ciphertext_size) #6
  store i32 %call86, i32* %status, align 4
  %34 = load i32, i32* %status, align 4
  %cmp87 = icmp ne i32 %34, 0
  br i1 %cmp87, label %if.then89, label %if.end91

if.then89:                                        ; preds = %do.body83
  %35 = load i32, i32* %status, align 4
  %call90 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %35, i32 noundef 424, i8* noundef getelementptr inbounds ([174 x i8], [174 x i8]* @.str.91, i64 0, i64 0)) #6
  br label %exit

if.end91:                                         ; preds = %do.body83
  br label %do.end92

do.end92:                                         ; preds = %if.end91
  br label %do.body93

do.body93:                                        ; preds = %do.end92
  %36 = load i8*, i8** %output_file_name.addr, align 8
  %call94 = call %struct._IO_FILE* @fopen(i8* noundef %36, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0)) #6
  store %struct._IO_FILE* %call94, %struct._IO_FILE** %output_file, align 8
  %cmp95 = icmp ne %struct._IO_FILE* %call94, null
  br i1 %cmp95, label %if.end98, label %if.then97

if.then97:                                        ; preds = %do.body93
  call void @perror(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.81, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end98:                                         ; preds = %do.body93
  br label %do.end99

do.end99:                                         ; preds = %if.end98
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  call void @setbuf(%struct._IO_FILE* noundef %37, i8* noundef null) #7
  br label %do.body100

do.body100:                                       ; preds = %do.end99
  %38 = bitcast %struct.wrapped_data_header_t* %header to i8*
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call101 = call i64 @fwrite(i8* noundef %38, i64 noundef 1, i64 noundef 48, %struct._IO_FILE* noundef %39) #6
  %cmp102 = icmp eq i64 %call101, 48
  br i1 %cmp102, label %if.end105, label %if.then104

if.then104:                                       ; preds = %do.body100
  call void @perror(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.92, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end105:                                        ; preds = %do.body100
  br label %do.end106

do.end106:                                        ; preds = %if.end105
  br label %do.body107

do.body107:                                       ; preds = %do.end106
  %40 = load i8*, i8** %buffer, align 8
  %41 = load i64, i64* %ciphertext_size, align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call108 = call i64 @fwrite(i8* noundef %40, i64 noundef 1, i64 noundef %41, %struct._IO_FILE* noundef %42) #6
  %43 = load i64, i64* %ciphertext_size, align 8
  %cmp109 = icmp eq i64 %call108, %43
  br i1 %cmp109, label %if.end112, label %if.then111

if.then111:                                       ; preds = %do.body107
  call void @perror(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.93, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end112:                                        ; preds = %do.body107
  br label %do.end113

do.end113:                                        ; preds = %if.end112
  br label %do.body114

do.body114:                                       ; preds = %do.end113
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call115 = call i32 @fclose(%struct._IO_FILE* noundef %44) #6
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %if.end119, label %if.then118

if.then118:                                       ; preds = %do.body114
  call void @perror(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.83, i64 0, i64 0)) #6
  store i32 120, i32* %status, align 4
  br label %exit

if.end119:                                        ; preds = %do.body114
  br label %do.end120

do.end120:                                        ; preds = %if.end119
  store %struct._IO_FILE* null, %struct._IO_FILE** %output_file, align 8
  br label %exit

exit:                                             ; preds = %do.end120, %if.then118, %if.then111, %if.then104, %if.then97, %if.then89, %if.then79, %if.then71, %if.then64, %if.then57, %if.then50, %if.then43, %if.then16, %if.then10, %if.then4, %if.then
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %cmp121 = icmp ne %struct._IO_FILE* %45, null
  br i1 %cmp121, label %if.then123, label %if.end125

if.then123:                                       ; preds = %exit
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call124 = call i32 @fclose(%struct._IO_FILE* noundef %46) #6
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %exit
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %cmp126 = icmp ne %struct._IO_FILE* %47, null
  br i1 %cmp126, label %if.then128, label %if.end130

if.then128:                                       ; preds = %if.end125
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call129 = call i32 @fclose(%struct._IO_FILE* noundef %48) #6
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.end125
  %49 = load i8*, i8** %buffer, align 8
  %cmp131 = icmp ne i8* %49, null
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.end130
  %50 = load i8*, i8** %buffer, align 8
  %51 = load i64, i64* %buffer_size, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %50, i64 noundef %51) #6
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.end130
  %52 = load i8*, i8** %buffer, align 8
  call void @free(i8* noundef %52) #7
  %53 = load i32, i32* %status, align 4
  ret i32 %53
}

declare dso_local i32 @psa_destroy_key(i32 noundef) #2

declare dso_local void @mbedtls_psa_crypto_free() #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_set_key_usage_flags(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef %usage_flags) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %usage_flags.addr = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i32 %usage_flags, i32* %usage_flags.addr, align 4
  call void @psa_extend_key_usage_flags(i32* noundef %usage_flags.addr) #6
  %0 = load i32, i32* %usage_flags.addr, align 4
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %1, i32 0, i32 0
  %private_policy = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core, i32 0, i32 4
  %private_usage = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %private_policy, i32 0, i32 0
  store i32 %0, i32* %private_usage, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_set_key_algorithm(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef %alg) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %alg.addr = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load i32, i32* %alg.addr, align 4
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %1, i32 0, i32 0
  %private_policy = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core, i32 0, i32 4
  %private_alg = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %private_policy, i32 0, i32 1
  store i32 %0, i32* %private_alg, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_set_key_type(%struct.psa_key_attributes_s* noundef %attributes, i16 noundef zeroext %type) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %type.addr = alloca i16, align 2
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i16 %type, i16* %type.addr, align 2
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %private_domain_parameters, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i16, i16* %type.addr, align 2
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %3, i32 0, i32 0
  %private_type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core, i32 0, i32 0
  store i16 %2, i16* %private_type, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %5 = load i16, i16* %type.addr, align 2
  %call = call i32 @psa_set_key_domain_parameters(%struct.psa_key_attributes_s* noundef %4, i16 noundef zeroext %5, i8* noundef null, i64 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_set_key_bits(%struct.psa_key_attributes_s* noundef %attributes, i64 noundef %bits) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %bits.addr = alloca i64, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i64 %bits, i64* %bits.addr, align 8
  %0 = load i64, i64* %bits.addr, align 8
  %cmp = icmp ugt i64 %0, 65528
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %1, i32 0, i32 0
  %private_bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core, i32 0, i32 1
  store i16 -1, i16* %private_bits, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %bits.addr, align 8
  %conv = trunc i64 %2 to i16
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core1 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %3, i32 0, i32 0
  %private_bits2 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core1, i32 0, i32 1
  store i16 %conv, i16* %private_bits2, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare dso_local i32 @psa_generate_key(%struct.psa_key_attributes_s* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_extend_key_usage_flags(i32* noundef %usage_flags) #0 {
entry:
  %usage_flags.addr = alloca i32*, align 8
  store i32* %usage_flags, i32** %usage_flags.addr, align 8
  %0 = load i32*, i32** %usage_flags.addr, align 8
  %1 = load i32, i32* %0, align 4
  %and = and i32 %1, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %usage_flags.addr, align 8
  %3 = load i32, i32* %2, align 4
  %or = or i32 %3, 1024
  store i32 %or, i32* %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32*, i32** %usage_flags.addr, align 8
  %5 = load i32, i32* %4, align 4
  %and1 = and i32 %5, 8192
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load i32*, i32** %usage_flags.addr, align 8
  %7 = load i32, i32* %6, align 4
  %or4 = or i32 %7, 2048
  store i32 %or4, i32* %6, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void
}

declare dso_local i32 @psa_set_key_domain_parameters(%struct.psa_key_attributes_s* noundef, i16 noundef zeroext, i8* noundef, i64 noundef) #2

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local void @perror(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local void @setbuf(%struct._IO_FILE* noundef, i8* noundef) #4

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local i32 @psa_import_key(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32* noundef) #2

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

declare dso_local i32 @psa_key_derivation_setup(%struct.psa_key_derivation_s* noundef, i32 noundef) #2

declare dso_local i32 @psa_key_derivation_input_bytes(%struct.psa_key_derivation_s* noundef, i16 noundef zeroext, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i32 @psa_key_derivation_input_key(%struct.psa_key_derivation_s* noundef, i16 noundef zeroext, i32 noundef) #2

declare dso_local i32 @psa_key_derivation_output_key(%struct.psa_key_attributes_s* noundef, %struct.psa_key_derivation_s* noundef, i32* noundef) #2

declare dso_local i32 @psa_key_derivation_abort(%struct.psa_key_derivation_s* noundef) #2

declare dso_local i32 @psa_export_key(i32 noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @psa_get_key_attributes(i32 noundef, %struct.psa_key_attributes_s* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @psa_get_key_type(%struct.psa_key_attributes_s* noundef %attributes) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %private_type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core, i32 0, i32 0
  %1 = load i16, i16* %private_type, align 8
  ret i16 %1
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #4

declare dso_local i32 @psa_aead_decrypt(i32 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #2

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #4

declare dso_local i32 @psa_generate_random(i8* noundef, i64 noundef) #2

declare dso_local i32 @psa_aead_encrypt(i32 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}

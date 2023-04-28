; ModuleID = 'crypto/cmp/cmp_err.c'
source_filename = "crypto/cmp/cmp_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@CMP_str_reasons = internal constant [85 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 486539403, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539431, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539372, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539420, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539373, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539433, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539376, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539421, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539377, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539378, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539445, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539440, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539426, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539379, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539380, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539381, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539427, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539382, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539383, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539384, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539386, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539387, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539388, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539389, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539390, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539371, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539422, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539391, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539392, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539424, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539404, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539435, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539428, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539405, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539374, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539393, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539364, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539438, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539429, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539394, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539406, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539385, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539430, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539395, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539407, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539432, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539375, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539408, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539425, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539434, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539366, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539458, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539409, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539367, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539410, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539396, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539436, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539411, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539444, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539412, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539413, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539446, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.61, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539414, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.62, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539415, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539448, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539416, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539423, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539397, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.67, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539449, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539417, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539398, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539399, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539450, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539400, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539401, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.74, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539418, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.75, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539439, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539441, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539402, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539453, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539451, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.80, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539419, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539452, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.82, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539437, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [24 x i8] c"algorithm not supported\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"bad checkafter in pollrep\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"bad request id\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"certhash unmatched\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"certid not found\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"certificate not accepted\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"certificate not found\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"certreqmsg not found\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"certresponse not found\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"cert and key do not match\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"checkafter out of range\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"encountered keyupdatewarning\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"encountered waiting\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"error calculating protection\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"error creating certconf\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"error creating certrep\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"error creating certreq\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"error creating error\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"error creating genm\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"error creating genp\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"error creating pkiconf\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"error creating pollrep\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"error creating pollreq\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"error creating rp\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"error creating rr\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"error parsing pkistatus\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"error processing message\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"error protecting message\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"error setting certhash\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"error unexpected certconf\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"error validating protection\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"error validating signature\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"failed building own chain\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"failed extracting pubkey\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"failure obtaining random\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"fail info out of range\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"invalid args\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"invalid option\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"missing certid\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"missing key input for creating protection\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"missing key usage digitalsignature\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"missing p10csr\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"missing pbm secret\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"missing private key\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"missing protection\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"missing reference cert\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"missing sender identification\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"missing trust store\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"multiple requests not supported\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"multiple responses not supported\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"multiple san sources\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"no stdio\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"no suitable sender cert\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"null argument\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"pkibody error\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"pkistatusinfo not found\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"polling failed\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"potentially invalid certificate\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"received error\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"recipnonce unmatched\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"request not accepted\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"request rejected by server\00", align 1
@.str.62 = private unnamed_addr constant [38 x i8] c"sender generalname type not supported\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"srvcert does not validate msg\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"total timeout\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"transactionid unmatched\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"transfer error\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"unexpected pkibody\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"unexpected pkistatus\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"unexpected pvno\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"unknown algorithm id\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"unknown cert type\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"unknown pkistatus\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"unsupported algorithm\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"unsupported key type\00", align 1
@.str.75 = private unnamed_addr constant [38 x i8] c"unsupported protection alg dhbasedmac\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"value too large\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"value too small\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"wrong algorithm oid\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"wrong certid\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"wrong certid in rp\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"wrong pbm value\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"wrong rp component count\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"wrong serial in rp\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_CMP_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 486539403) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([85 x %struct.ERR_string_data_st], [85 x %struct.ERR_string_data_st]* @CMP_str_reasons, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare i8* @ERR_reason_error_string(i64 noundef) local_unnamed_addr #1

declare i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}

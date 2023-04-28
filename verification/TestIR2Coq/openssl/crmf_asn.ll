; ModuleID = 'crypto/crmf/crmf_asn.c'
source_filename = "crypto/crmf/crmf_asn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ASN1_ADB_st = type { i64, i64, i32 (i64*)*, %struct.ASN1_ADB_TABLE_st*, i64, %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st* }
%struct.ASN1_ADB_TABLE_st = type { i64, %struct.ASN1_TEMPLATE_st }
%struct.ossl_crmf_privatekeyinfo_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.ossl_crmf_enckeywithid_identifier_st = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.asn1_string_st* }
%struct.ossl_crmf_enckeywithid_st = type { %struct.ossl_crmf_privatekeyinfo_st*, %struct.ossl_crmf_enckeywithid_identifier_st* }
%struct.ossl_crmf_certid_st = type { %struct.GENERAL_NAME_st*, %struct.asn1_string_st* }
%struct.GENERAL_NAME_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.ossl_crmf_encryptedvalue_st = type { %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.ossl_crmf_singlepubinfo_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st* }
%struct.ossl_crmf_pkipublicationinfo_st = type { %struct.asn1_string_st*, %struct.stack_st_OSSL_CRMF_SINGLEPUBINFO* }
%struct.stack_st_OSSL_CRMF_SINGLEPUBINFO = type opaque
%struct.ossl_crmf_pkmacvalue_st = type { %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.ossl_crmf_popoprivkey_st = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.asn1_string_st* }
%struct.ossl_crmf_pbmparameter_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.X509_algor_st* }
%struct.ossl_crmf_poposigningkeyinput_authinfo_st = type { i32, %union.anon.3 }
%union.anon.3 = type { %struct.GENERAL_NAME_st* }
%struct.ossl_crmf_poposigningkeyinput_st = type { %struct.ossl_crmf_poposigningkeyinput_authinfo_st*, %struct.X509_pubkey_st* }
%struct.X509_pubkey_st = type opaque
%struct.ossl_crmf_poposigningkey_st = type { %struct.ossl_crmf_poposigningkeyinput_st*, %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.ossl_crmf_popo_st = type { i32, %union.anon.4 }
%union.anon.4 = type { i32* }
%struct.ossl_crmf_attributetypeandvalue_st = type { %struct.asn1_object_st*, %union.anon.5 }
%union.anon.5 = type { %struct.asn1_string_st* }
%struct.ossl_crmf_optionalvalidity_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.ossl_crmf_certtemplate_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.X509_name_st*, %struct.ossl_crmf_optionalvalidity_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION* }
%struct.X509_name_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ossl_crmf_certrequest_st = type { %struct.asn1_string_st*, %struct.ossl_crmf_certtemplate_st*, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* }
%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE = type opaque
%struct.ossl_crmf_msg_st = type { %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_popo_st*, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* }
%struct.stack_st_OSSL_CRMF_MSG = type opaque

@OSSL_CRMF_PRIVATEKEYINFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_PRIVATEKEYINFO_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [25 x i8] c"OSSL_CRMF_PRIVATEKEYINFO\00", align 1
@OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_ch_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"OSSL_CRMF_ENCKEYWITHID_IDENTIFIER\00", align 1
@OSSL_CRMF_ENCKEYWITHID_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_ENCKEYWITHID_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"OSSL_CRMF_ENCKEYWITHID\00", align 1
@OSSL_CRMF_CERTID_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_CERTID_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"OSSL_CRMF_CERTID\00", align 1
@OSSL_CRMF_ENCRYPTEDVALUE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([6 x %struct.ASN1_TEMPLATE_st], [6 x %struct.ASN1_TEMPLATE_st]* bitcast ([6 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_ENCRYPTEDVALUE_seq_tt to [6 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 6, i8* null, i64 48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"OSSL_CRMF_ENCRYPTEDVALUE\00", align 1
@OSSL_CRMF_SINGLEPUBINFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_SINGLEPUBINFO_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0) }, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"OSSL_CRMF_SINGLEPUBINFO\00", align 1
@OSSL_CRMF_PKIPUBLICATIONINFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_PKIPUBLICATIONINFO_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0) }, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"OSSL_CRMF_PKIPUBLICATIONINFO\00", align 1
@OSSL_CRMF_PKMACVALUE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_PKMACVALUE_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0) }, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"OSSL_CRMF_PKMACVALUE\00", align 1
@OSSL_CRMF_POPOPRIVKEY_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([5 x %struct.ASN1_TEMPLATE_st], [5 x %struct.ASN1_TEMPLATE_st]* bitcast ([5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_POPOPRIVKEY_ch_tt to [5 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 5, i8* null, i64 16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0) }, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"OSSL_CRMF_POPOPRIVKEY\00", align 1
@OSSL_CRMF_PBMPARAMETER_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_PBMPARAMETER_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0) }, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"OSSL_CRMF_PBMPARAMETER\00", align 1
@OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_ch_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0) }, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO\00", align 1
@OSSL_CRMF_POPOSIGNINGKEYINPUT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_POPOSIGNINGKEYINPUT_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0) }, align 8
@.str.11 = private unnamed_addr constant [30 x i8] c"OSSL_CRMF_POPOSIGNINGKEYINPUT\00", align 1
@OSSL_CRMF_POPOSIGNINGKEY_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_POPOSIGNINGKEY_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0) }, align 8
@.str.12 = private unnamed_addr constant [25 x i8] c"OSSL_CRMF_POPOSIGNINGKEY\00", align 1
@OSSL_CRMF_POPO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_POPO_ch_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0) }, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"OSSL_CRMF_POPO\00", align 1
@OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0) }, align 8
@.str.14 = private unnamed_addr constant [32 x i8] c"OSSL_CRMF_ATTRIBUTETYPEANDVALUE\00", align 1
@OSSL_CRMF_OPTIONALVALIDITY_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_OPTIONALVALIDITY_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0) }, align 8
@.str.15 = private unnamed_addr constant [27 x i8] c"OSSL_CRMF_OPTIONALVALIDITY\00", align 1
@OSSL_CRMF_CERTTEMPLATE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([10 x %struct.ASN1_TEMPLATE_st], [10 x %struct.ASN1_TEMPLATE_st]* bitcast ([10 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_CERTTEMPLATE_seq_tt to [10 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 10, i8* null, i64 80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0) }, align 8
@.str.16 = private unnamed_addr constant [23 x i8] c"OSSL_CRMF_CERTTEMPLATE\00", align 1
@OSSL_CRMF_CERTREQUEST_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_CERTREQUEST_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, align 8
@.str.17 = private unnamed_addr constant [22 x i8] c"OSSL_CRMF_CERTREQUEST\00", align 1
@OSSL_CRMF_MSG_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CRMF_MSG_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0) }, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"OSSL_CRMF_MSG\00", align 1
@OSSL_CRMF_MSGS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @OSSL_CRMF_MSGS_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"OSSL_CRMF_MSGS\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"privateKeyAlgorithm\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"privateKey\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@OSSL_CRMF_PRIVATEKEYINFO_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 0, i64 24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ATTRIBUTE_it }], align 16
@.str.25 = private unnamed_addr constant [13 x i8] c"value.string\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"value.generalName\00", align 1
@OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_ch_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it }], align 16
@.str.28 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@OSSL_CRMF_ENCKEYWITHID_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_PRIVATEKEYINFO_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it }], align 16
@.str.30 = private unnamed_addr constant [7 x i8] c"issuer\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"serialNumber\00", align 1
@OSSL_CRMF_CERTID_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16
@.str.33 = private unnamed_addr constant [12 x i8] c"intendedAlg\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"symmAlg\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"encSymmKey\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"keyAlg\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"valueHint\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"encValue\00", align 1
@OSSL_CRMF_ENCRYPTEDVALUE_seq_tt = internal constant [6 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 0, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 1, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 2, i64 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 3, i64 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 4, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }], align 16
@.str.40 = private unnamed_addr constant [10 x i8] c"pubMethod\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"pubLocation\00", align 1
@OSSL_CRMF_SINGLEPUBINFO_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it }], align 16
@.str.43 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"pubInfos\00", align 1
@OSSL_CRMF_PKIPUBLICATIONINFO_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_SINGLEPUBINFO_it }], align 16
@.str.46 = private unnamed_addr constant [6 x i8] c"algId\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@OSSL_CRMF_PKMACVALUE_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }], align 16
@.str.49 = private unnamed_addr constant [18 x i8] c"value.thisMessage\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"value.subsequentMessage\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"value.dhMAC\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"value.agreeMAC\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"value.encryptedKey\00", align 1
@OSSL_CRMF_POPOPRIVKEY_ch_tt = internal constant [5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 0, i64 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 1, i64 8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 2, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 3, i64 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_PKMACVALUE_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 4, i64 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_NULL_it }], align 16
@.str.55 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"owf\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"iterationCount\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@OSSL_CRMF_PBMPARAMETER_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }], align 16
@.str.60 = private unnamed_addr constant [13 x i8] c"value.sender\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"value.publicKeyMAC\00", align 1
@OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_ch_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 0, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_PKMACVALUE_it }], align 16
@.str.63 = private unnamed_addr constant [9 x i8] c"authInfo\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"publicKey\00", align 1
@OSSL_CRMF_POPOSIGNINGKEYINPUT_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_PUBKEY_it }], align 16
@.str.66 = private unnamed_addr constant [12 x i8] c"poposkInput\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"algorithmIdentifier\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@OSSL_CRMF_POPOSIGNINGKEY_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 0, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_POPOSIGNINGKEYINPUT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }], align 16
@.str.70 = private unnamed_addr constant [17 x i8] c"value.raVerified\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"value.signature\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"value.keyEncipherment\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"value.keyAgreement\00", align 1
@OSSL_CRMF_POPO_ch_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 0, i64 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_NULL_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 1, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_POPOSIGNINGKEY_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 2, i64 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.72, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_POPOPRIVKEY_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 3, i64 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_POPOPRIVKEY_it }], align 16
@.str.75 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@OSSL_CRMF_ATTRIBUTETYPEANDVALUE_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 256, i64 -1, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_adb }], align 16
@OSSL_CRMF_ATTRIBUTETYPEANDVALUE_adb.internal_adb = internal constant %struct.ASN1_ADB_st { i64 0, i64 0, i32 (i64*)* null, %struct.ASN1_ADB_TABLE_st* getelementptr inbounds ([7 x %struct.ASN1_ADB_TABLE_st], [7 x %struct.ASN1_ADB_TABLE_st]* bitcast ([7 x { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } }]* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_adbtbl to [7 x %struct.ASN1_ADB_TABLE_st]*), i32 0, i32 0), i64 7, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @attributetypeandvalue_default_tt to %struct.ASN1_TEMPLATE_st*), %struct.ASN1_TEMPLATE_st* null }, align 8
@.str.77 = private unnamed_addr constant [15 x i8] c"value.regToken\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"value.authenticator\00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c"value.pkiPublicationInfo\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"value.oldCertID\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"value.protocolEncrKey\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"value.utf8Pairs\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"value.certReq\00", align 1
@OSSL_CRMF_ATTRIBUTETYPEANDVALUE_adbtbl = internal constant [7 x { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } }] [{ i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 315, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.77, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 316, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 317, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.79, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_PKIPUBLICATIONINFO_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 319, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_CERTID_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 320, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.81, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_PUBKEY_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 321, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.82, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 322, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_CERTREQUEST_it } }], align 16
@.str.85 = private unnamed_addr constant [12 x i8] c"value.other\00", align 1
@attributetypeandvalue_default_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }, align 8
@.str.87 = private unnamed_addr constant [10 x i8] c"notBefore\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"notAfter\00", align 1
@OSSL_CRMF_OPTIONALVALIDITY_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_TIME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 1, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_TIME_it }], align 16
@.str.90 = private unnamed_addr constant [11 x i8] c"signingAlg\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"validity\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"issuerUID\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"subjectUID\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"extensions\00", align 1
@OSSL_CRMF_CERTTEMPLATE_seq_tt = internal constant [10 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 1, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 2, i64 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 3, i64 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 4, i64 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_OPTIONALVALIDITY_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 5, i64 40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 6, i64 48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_PUBKEY_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 7, i64 56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 8, i64 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 141, i64 9, i64 72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_EXTENSION_it }], align 16
@.str.97 = private unnamed_addr constant [10 x i8] c"certReqId\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"certTemplate\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"controls\00", align 1
@OSSL_CRMF_CERTREQUEST_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_CERTTEMPLATE_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it }], align 16
@.str.101 = private unnamed_addr constant [8 x i8] c"certReq\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"popo\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"regInfo\00", align 1
@OSSL_CRMF_MSG_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_CERTREQUEST_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_POPO_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it }], align 16
@OSSL_CRMF_MSGS_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_MSG_it }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_PRIVATEKEYINFO_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_PRIVATEKEYINFO_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_privatekeyinfo_st* @d2i_OSSL_CRMF_PRIVATEKEYINFO(%struct.ossl_crmf_privatekeyinfo_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_privatekeyinfo_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PRIVATEKEYINFO_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_privatekeyinfo_st*
  ret %struct.ossl_crmf_privatekeyinfo_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_PRIVATEKEYINFO(%struct.ossl_crmf_privatekeyinfo_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_privatekeyinfo_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PRIVATEKEYINFO_it.local_it) #3
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_privatekeyinfo_st* @OSSL_CRMF_PRIVATEKEYINFO_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PRIVATEKEYINFO_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_privatekeyinfo_st*
  ret %struct.ossl_crmf_privatekeyinfo_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_PRIVATEKEYINFO_free(%struct.ossl_crmf_privatekeyinfo_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_privatekeyinfo_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PRIVATEKEYINFO_it.local_it) #3
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_enckeywithid_identifier_st* @d2i_OSSL_CRMF_ENCKEYWITHID_IDENTIFIER(%struct.ossl_crmf_enckeywithid_identifier_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_enckeywithid_identifier_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_enckeywithid_identifier_st*
  ret %struct.ossl_crmf_enckeywithid_identifier_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_ENCKEYWITHID_IDENTIFIER(%struct.ossl_crmf_enckeywithid_identifier_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_enckeywithid_identifier_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_enckeywithid_identifier_st* @OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_enckeywithid_identifier_st*
  ret %struct.ossl_crmf_enckeywithid_identifier_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_free(%struct.ossl_crmf_enckeywithid_identifier_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_enckeywithid_identifier_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_ENCKEYWITHID_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_ENCKEYWITHID_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_enckeywithid_st* @d2i_OSSL_CRMF_ENCKEYWITHID(%struct.ossl_crmf_enckeywithid_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_enckeywithid_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ENCKEYWITHID_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_enckeywithid_st*
  ret %struct.ossl_crmf_enckeywithid_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_ENCKEYWITHID(%struct.ossl_crmf_enckeywithid_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_enckeywithid_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ENCKEYWITHID_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_enckeywithid_st* @OSSL_CRMF_ENCKEYWITHID_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ENCKEYWITHID_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_enckeywithid_st*
  ret %struct.ossl_crmf_enckeywithid_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_ENCKEYWITHID_free(%struct.ossl_crmf_enckeywithid_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_enckeywithid_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ENCKEYWITHID_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_CERTID_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_CERTID_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_certid_st* @d2i_OSSL_CRMF_CERTID(%struct.ossl_crmf_certid_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_certid_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_CERTID_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_certid_st*
  ret %struct.ossl_crmf_certid_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_CERTID(%struct.ossl_crmf_certid_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_certid_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_CERTID_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_certid_st* @OSSL_CRMF_CERTID_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_CERTID_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_certid_st*
  ret %struct.ossl_crmf_certid_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_CERTID_free(%struct.ossl_crmf_certid_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_certid_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_CERTID_it.local_it) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_certid_st* @OSSL_CRMF_CERTID_dup(%struct.ossl_crmf_certid_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_certid_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_CERTID_it.local_it, i8* noundef %0) #3
  %1 = bitcast i8* %call1 to %struct.ossl_crmf_certid_st*
  ret %struct.ossl_crmf_certid_st* %1
}

declare i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_ENCRYPTEDVALUE_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_ENCRYPTEDVALUE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_encryptedvalue_st* @d2i_OSSL_CRMF_ENCRYPTEDVALUE(%struct.ossl_crmf_encryptedvalue_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_encryptedvalue_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ENCRYPTEDVALUE_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_encryptedvalue_st*
  ret %struct.ossl_crmf_encryptedvalue_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_ENCRYPTEDVALUE(%struct.ossl_crmf_encryptedvalue_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_encryptedvalue_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ENCRYPTEDVALUE_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_encryptedvalue_st* @OSSL_CRMF_ENCRYPTEDVALUE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ENCRYPTEDVALUE_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_encryptedvalue_st*
  ret %struct.ossl_crmf_encryptedvalue_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_ENCRYPTEDVALUE_free(%struct.ossl_crmf_encryptedvalue_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_encryptedvalue_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ENCRYPTEDVALUE_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_SINGLEPUBINFO_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_SINGLEPUBINFO_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_singlepubinfo_st* @d2i_OSSL_CRMF_SINGLEPUBINFO(%struct.ossl_crmf_singlepubinfo_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_singlepubinfo_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_SINGLEPUBINFO_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_singlepubinfo_st*
  ret %struct.ossl_crmf_singlepubinfo_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_SINGLEPUBINFO(%struct.ossl_crmf_singlepubinfo_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_singlepubinfo_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_SINGLEPUBINFO_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_singlepubinfo_st* @OSSL_CRMF_SINGLEPUBINFO_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_SINGLEPUBINFO_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_singlepubinfo_st*
  ret %struct.ossl_crmf_singlepubinfo_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_SINGLEPUBINFO_free(%struct.ossl_crmf_singlepubinfo_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_singlepubinfo_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_SINGLEPUBINFO_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_PKIPUBLICATIONINFO_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_PKIPUBLICATIONINFO_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_pkipublicationinfo_st* @d2i_OSSL_CRMF_PKIPUBLICATIONINFO(%struct.ossl_crmf_pkipublicationinfo_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_pkipublicationinfo_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PKIPUBLICATIONINFO_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_pkipublicationinfo_st*
  ret %struct.ossl_crmf_pkipublicationinfo_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_PKIPUBLICATIONINFO(%struct.ossl_crmf_pkipublicationinfo_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_pkipublicationinfo_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PKIPUBLICATIONINFO_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_pkipublicationinfo_st* @OSSL_CRMF_PKIPUBLICATIONINFO_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PKIPUBLICATIONINFO_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_pkipublicationinfo_st*
  ret %struct.ossl_crmf_pkipublicationinfo_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_PKIPUBLICATIONINFO_free(%struct.ossl_crmf_pkipublicationinfo_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_pkipublicationinfo_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PKIPUBLICATIONINFO_it.local_it) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_pkipublicationinfo_st* @OSSL_CRMF_PKIPUBLICATIONINFO_dup(%struct.ossl_crmf_pkipublicationinfo_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_pkipublicationinfo_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PKIPUBLICATIONINFO_it.local_it, i8* noundef %0) #3
  %1 = bitcast i8* %call1 to %struct.ossl_crmf_pkipublicationinfo_st*
  ret %struct.ossl_crmf_pkipublicationinfo_st* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_PKMACVALUE_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_PKMACVALUE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_pkmacvalue_st* @d2i_OSSL_CRMF_PKMACVALUE(%struct.ossl_crmf_pkmacvalue_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_pkmacvalue_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PKMACVALUE_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_pkmacvalue_st*
  ret %struct.ossl_crmf_pkmacvalue_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_PKMACVALUE(%struct.ossl_crmf_pkmacvalue_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_pkmacvalue_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PKMACVALUE_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_pkmacvalue_st* @OSSL_CRMF_PKMACVALUE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PKMACVALUE_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_pkmacvalue_st*
  ret %struct.ossl_crmf_pkmacvalue_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_PKMACVALUE_free(%struct.ossl_crmf_pkmacvalue_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_pkmacvalue_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PKMACVALUE_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_POPOPRIVKEY_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_POPOPRIVKEY_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_popoprivkey_st* @d2i_OSSL_CRMF_POPOPRIVKEY(%struct.ossl_crmf_popoprivkey_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_popoprivkey_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPOPRIVKEY_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_popoprivkey_st*
  ret %struct.ossl_crmf_popoprivkey_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_POPOPRIVKEY(%struct.ossl_crmf_popoprivkey_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_popoprivkey_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPOPRIVKEY_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_popoprivkey_st* @OSSL_CRMF_POPOPRIVKEY_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPOPRIVKEY_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_popoprivkey_st*
  ret %struct.ossl_crmf_popoprivkey_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_POPOPRIVKEY_free(%struct.ossl_crmf_popoprivkey_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_popoprivkey_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPOPRIVKEY_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_PBMPARAMETER_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_PBMPARAMETER_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_pbmparameter_st* @d2i_OSSL_CRMF_PBMPARAMETER(%struct.ossl_crmf_pbmparameter_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_pbmparameter_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PBMPARAMETER_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_pbmparameter_st*
  ret %struct.ossl_crmf_pbmparameter_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_PBMPARAMETER(%struct.ossl_crmf_pbmparameter_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_pbmparameter_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PBMPARAMETER_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_pbmparameter_st* @OSSL_CRMF_PBMPARAMETER_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PBMPARAMETER_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_pbmparameter_st*
  ret %struct.ossl_crmf_pbmparameter_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_PBMPARAMETER_free(%struct.ossl_crmf_pbmparameter_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_pbmparameter_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_PBMPARAMETER_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_poposigningkeyinput_authinfo_st* @d2i_OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO(%struct.ossl_crmf_poposigningkeyinput_authinfo_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_poposigningkeyinput_authinfo_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_poposigningkeyinput_authinfo_st*
  ret %struct.ossl_crmf_poposigningkeyinput_authinfo_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO(%struct.ossl_crmf_poposigningkeyinput_authinfo_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_poposigningkeyinput_authinfo_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_poposigningkeyinput_authinfo_st* @OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_poposigningkeyinput_authinfo_st*
  ret %struct.ossl_crmf_poposigningkeyinput_authinfo_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_free(%struct.ossl_crmf_poposigningkeyinput_authinfo_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_poposigningkeyinput_authinfo_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_POPOSIGNINGKEYINPUT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_POPOSIGNINGKEYINPUT_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_poposigningkeyinput_st* @d2i_OSSL_CRMF_POPOSIGNINGKEYINPUT(%struct.ossl_crmf_poposigningkeyinput_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_poposigningkeyinput_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPOSIGNINGKEYINPUT_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_poposigningkeyinput_st*
  ret %struct.ossl_crmf_poposigningkeyinput_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_POPOSIGNINGKEYINPUT(%struct.ossl_crmf_poposigningkeyinput_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_poposigningkeyinput_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPOSIGNINGKEYINPUT_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_poposigningkeyinput_st* @OSSL_CRMF_POPOSIGNINGKEYINPUT_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPOSIGNINGKEYINPUT_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_poposigningkeyinput_st*
  ret %struct.ossl_crmf_poposigningkeyinput_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_POPOSIGNINGKEYINPUT_free(%struct.ossl_crmf_poposigningkeyinput_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_poposigningkeyinput_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPOSIGNINGKEYINPUT_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_POPOSIGNINGKEY_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_POPOSIGNINGKEY_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_poposigningkey_st* @d2i_OSSL_CRMF_POPOSIGNINGKEY(%struct.ossl_crmf_poposigningkey_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_poposigningkey_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPOSIGNINGKEY_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_poposigningkey_st*
  ret %struct.ossl_crmf_poposigningkey_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_POPOSIGNINGKEY(%struct.ossl_crmf_poposigningkey_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_poposigningkey_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPOSIGNINGKEY_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_poposigningkey_st* @OSSL_CRMF_POPOSIGNINGKEY_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPOSIGNINGKEY_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_poposigningkey_st*
  ret %struct.ossl_crmf_poposigningkey_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_POPOSIGNINGKEY_free(%struct.ossl_crmf_poposigningkey_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_poposigningkey_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPOSIGNINGKEY_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_POPO_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_POPO_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_popo_st* @d2i_OSSL_CRMF_POPO(%struct.ossl_crmf_popo_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_popo_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPO_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_popo_st*
  ret %struct.ossl_crmf_popo_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_POPO(%struct.ossl_crmf_popo_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_popo_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPO_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_popo_st* @OSSL_CRMF_POPO_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPO_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_popo_st*
  ret %struct.ossl_crmf_popo_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_POPO_free(%struct.ossl_crmf_popo_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_popo_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_POPO_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_attributetypeandvalue_st* @d2i_OSSL_CRMF_ATTRIBUTETYPEANDVALUE(%struct.ossl_crmf_attributetypeandvalue_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_attributetypeandvalue_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_attributetypeandvalue_st*
  ret %struct.ossl_crmf_attributetypeandvalue_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_ATTRIBUTETYPEANDVALUE(%struct.ossl_crmf_attributetypeandvalue_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_attributetypeandvalue_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_attributetypeandvalue_st* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_attributetypeandvalue_st*
  ret %struct.ossl_crmf_attributetypeandvalue_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free(%struct.ossl_crmf_attributetypeandvalue_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_attributetypeandvalue_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it.local_it) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_attributetypeandvalue_st* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_dup(%struct.ossl_crmf_attributetypeandvalue_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_attributetypeandvalue_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it.local_it, i8* noundef %0) #3
  %1 = bitcast i8* %call1 to %struct.ossl_crmf_attributetypeandvalue_st*
  ret %struct.ossl_crmf_attributetypeandvalue_st* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_OPTIONALVALIDITY_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_OPTIONALVALIDITY_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_optionalvalidity_st* @d2i_OSSL_CRMF_OPTIONALVALIDITY(%struct.ossl_crmf_optionalvalidity_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_optionalvalidity_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_OPTIONALVALIDITY_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_optionalvalidity_st*
  ret %struct.ossl_crmf_optionalvalidity_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_OPTIONALVALIDITY(%struct.ossl_crmf_optionalvalidity_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_optionalvalidity_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_OPTIONALVALIDITY_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_optionalvalidity_st* @OSSL_CRMF_OPTIONALVALIDITY_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_OPTIONALVALIDITY_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_optionalvalidity_st*
  ret %struct.ossl_crmf_optionalvalidity_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_OPTIONALVALIDITY_free(%struct.ossl_crmf_optionalvalidity_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_optionalvalidity_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_OPTIONALVALIDITY_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_CERTTEMPLATE_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_CERTTEMPLATE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_certtemplate_st* @d2i_OSSL_CRMF_CERTTEMPLATE(%struct.ossl_crmf_certtemplate_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_certtemplate_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_CERTTEMPLATE_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_certtemplate_st*
  ret %struct.ossl_crmf_certtemplate_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_CERTTEMPLATE(%struct.ossl_crmf_certtemplate_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_certtemplate_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_CERTTEMPLATE_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_certtemplate_st* @OSSL_CRMF_CERTTEMPLATE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_CERTTEMPLATE_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_certtemplate_st*
  ret %struct.ossl_crmf_certtemplate_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_CERTTEMPLATE_free(%struct.ossl_crmf_certtemplate_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_certtemplate_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_CERTTEMPLATE_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_CERTREQUEST_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_CERTREQUEST_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_certrequest_st* @d2i_OSSL_CRMF_CERTREQUEST(%struct.ossl_crmf_certrequest_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_certrequest_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_CERTREQUEST_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_certrequest_st*
  ret %struct.ossl_crmf_certrequest_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_CERTREQUEST(%struct.ossl_crmf_certrequest_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_certrequest_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_CERTREQUEST_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_certrequest_st* @OSSL_CRMF_CERTREQUEST_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_CERTREQUEST_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_certrequest_st*
  ret %struct.ossl_crmf_certrequest_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_CERTREQUEST_free(%struct.ossl_crmf_certrequest_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_certrequest_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_CERTREQUEST_it.local_it) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_certrequest_st* @OSSL_CRMF_CERTREQUEST_dup(%struct.ossl_crmf_certrequest_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_certrequest_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_CERTREQUEST_it.local_it, i8* noundef %0) #3
  %1 = bitcast i8* %call1 to %struct.ossl_crmf_certrequest_st*
  ret %struct.ossl_crmf_certrequest_st* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_MSG_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_MSG_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_msg_st* @d2i_OSSL_CRMF_MSG(%struct.ossl_crmf_msg_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_msg_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_MSG_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_msg_st*
  ret %struct.ossl_crmf_msg_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_MSG(%struct.ossl_crmf_msg_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_msg_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_MSG_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_msg_st* @OSSL_CRMF_MSG_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_MSG_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_crmf_msg_st*
  ret %struct.ossl_crmf_msg_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_MSG_free(%struct.ossl_crmf_msg_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_msg_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_MSG_it.local_it) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_msg_st* @OSSL_CRMF_MSG_dup(%struct.ossl_crmf_msg_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_crmf_msg_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_MSG_it.local_it, i8* noundef %0) #3
  %1 = bitcast i8* %call1 to %struct.ossl_crmf_msg_st*
  ret %struct.ossl_crmf_msg_st* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CRMF_MSGS_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CRMF_MSGS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_OSSL_CRMF_MSG* @d2i_OSSL_CRMF_MSGS(%struct.stack_st_OSSL_CRMF_MSG** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CRMF_MSG** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_MSGS_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.stack_st_OSSL_CRMF_MSG*
  ret %struct.stack_st_OSSL_CRMF_MSG* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CRMF_MSGS(%struct.stack_st_OSSL_CRMF_MSG* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CRMF_MSG* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_MSGS_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_OSSL_CRMF_MSG* @OSSL_CRMF_MSGS_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_MSGS_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.stack_st_OSSL_CRMF_MSG*
  ret %struct.stack_st_OSSL_CRMF_MSG* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CRMF_MSGS_free(%struct.stack_st_OSSL_CRMF_MSG* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CRMF_MSG* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CRMF_MSGS_it.local_it) #3
  ret void
}

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

declare %struct.ASN1_ITEM_st* @X509_ATTRIBUTE_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_UTF8STRING_it() #2

declare %struct.ASN1_ITEM_st* @GENERAL_NAME_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_NULL_it() #2

declare %struct.ASN1_ITEM_st* @X509_PUBKEY_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ASN1_ITEM_st* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_adb() #0 {
entry:
  ret %struct.ASN1_ITEM_st* bitcast (%struct.ASN1_ADB_st* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_adb.internal_adb to %struct.ASN1_ITEM_st*)
}

declare %struct.ASN1_ITEM_st* @ASN1_ANY_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_TIME_it() #2

declare %struct.ASN1_ITEM_st* @X509_NAME_it() #2

declare %struct.ASN1_ITEM_st* @X509_EXTENSION_it() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}

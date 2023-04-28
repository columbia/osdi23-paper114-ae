; ModuleID = 'crypto/evp/ec_support.c'
source_filename = "crypto/evp/ec_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_name2nid_st = type { i8*, i32 }

@curve_list = internal unnamed_addr constant [82 x %struct.ec_name2nid_st] [%struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 704 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 705 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 706 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 707 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 708 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 709 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 710 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 711 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 712 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 713 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 714 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 715 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 716 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 409 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 410 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 411 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i32 412 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32 413 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i32 414 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 415 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 717 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 718 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 719 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32 720 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 721 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i32 722 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 723 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i32 724 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 725 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i32 726 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i32 727 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 728 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 729 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 730 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 731 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 732 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i32 733 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 734 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 684 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 685 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 686 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i32 687 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i32 688 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 689 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 690 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 693 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 694 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 695 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 696 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i32 699 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 700 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i32 701 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i32 702 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i32 703 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i32 0, i32 0), i32 735 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i32 0, i32 0), i32 736 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0), i32 737 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0), i32 738 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0), i32 739 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i32 0, i32 0), i32 740 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i32 0, i32 0), i32 741 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i32 0, i32 0), i32 742 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i32 0, i32 0), i32 743 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i32 0, i32 0), i32 744 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i32 0, i32 0), i32 745 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), i32 749 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0), i32 750 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i32 921 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0), i32 922 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0), i32 923 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.70, i32 0, i32 0), i32 924 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), i32 925 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0), i32 926 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i32 927 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i32 928 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0), i32 929 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i32 0, i32 0), i32 930 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0), i32 931 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i32 0, i32 0), i32 932 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0), i32 933 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i32 0, i32 0), i32 934 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0), i32 1172 }], align 16
@nist_curves = internal unnamed_addr constant [15 x %struct.ec_name2nid_st] [%struct.ec_name2nid_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i32 723 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i32 727 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i32 730 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i32 732 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 734 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i32 721 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i32 726 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i32 729 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i32 731 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i32 733 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i32 409 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i32 713 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i32 415 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i32 715 }, %struct.ec_name2nid_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0), i32 716 }], align 16
@.str = private unnamed_addr constant [10 x i8] c"secp112r1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"secp112r2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"secp128r1\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"secp128r2\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"secp160k1\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"secp160r1\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"secp160r2\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"secp192k1\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"secp224k1\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"secp224r1\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"secp256k1\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"secp384r1\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"secp521r1\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"prime192v1\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"prime192v2\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"prime192v3\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"prime239v1\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"prime239v2\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"prime239v3\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"prime256v1\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sect113r1\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sect113r2\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sect131r1\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sect131r2\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sect163k1\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sect163r1\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sect163r2\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sect193r1\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sect193r2\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sect233k1\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sect233r1\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sect239k1\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sect283k1\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sect283r1\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sect409k1\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sect409r1\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sect571k1\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sect571r1\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"c2pnb163v1\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"c2pnb163v2\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"c2pnb163v3\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"c2pnb176v1\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"c2tnb191v1\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"c2tnb191v2\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"c2tnb191v3\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"c2pnb208w1\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"c2tnb239v1\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"c2tnb239v2\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"c2tnb239v3\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"c2pnb272w1\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"c2pnb304w1\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"c2tnb359v1\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"c2pnb368w1\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"c2tnb431r1\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"wap-wsg-idm-ecid-wtls1\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"wap-wsg-idm-ecid-wtls3\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"wap-wsg-idm-ecid-wtls4\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"wap-wsg-idm-ecid-wtls5\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"wap-wsg-idm-ecid-wtls6\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"wap-wsg-idm-ecid-wtls7\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"wap-wsg-idm-ecid-wtls8\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"wap-wsg-idm-ecid-wtls9\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"wap-wsg-idm-ecid-wtls10\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"wap-wsg-idm-ecid-wtls11\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"wap-wsg-idm-ecid-wtls12\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"Oakley-EC2N-3\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"Oakley-EC2N-4\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"brainpoolP160r1\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"brainpoolP160t1\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"brainpoolP192r1\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"brainpoolP192t1\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"brainpoolP224r1\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"brainpoolP224t1\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"brainpoolP256r1\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"brainpoolP256t1\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"brainpoolP320r1\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"brainpoolP320t1\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"brainpoolP384r1\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"brainpoolP384t1\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"brainpoolP512r1\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"brainpoolP512t1\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"SM2\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"B-163\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"B-233\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"B-283\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"B-409\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"B-571\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"K-163\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"K-233\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"K-283\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"K-409\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"K-571\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"P-192\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"P-224\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"P-256\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"P-384\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"P-521\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define i8* @OSSL_EC_curve_nid2name(i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %nid, 1
  br i1 %cmp, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc.1
  %i.013 = phi i64 [ %inc.1, %for.inc.1 ], [ 0, %entry ]
  %nid2 = getelementptr inbounds [82 x %struct.ec_name2nid_st], [82 x %struct.ec_name2nid_st]* @curve_list, i64 0, i64 %i.013, i32 1
  %0 = load i32, i32* %nid2, align 8, !tbaa !4
  %cmp3 = icmp eq i32 %0, %nid
  br i1 %cmp3, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.inc, %for.body
  %i.013.lcssa = phi i64 [ %i.013, %for.body ], [ %inc, %for.inc ]
  %name = getelementptr inbounds [82 x %struct.ec_name2nid_st], [82 x %struct.ec_name2nid_st]* @curve_list, i64 0, i64 %i.013.lcssa, i32 0
  %1 = load i8*, i8** %name, align 16, !tbaa !10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = or i64 %i.013, 1
  %nid2.1 = getelementptr inbounds [82 x %struct.ec_name2nid_st], [82 x %struct.ec_name2nid_st]* @curve_list, i64 0, i64 %inc, i32 1
  %2 = load i32, i32* %nid2.1, align 8, !tbaa !4
  %cmp3.1 = icmp eq i32 %2, %nid
  br i1 %cmp3.1, label %if.then4, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %inc.1 = add nuw nsw i64 %i.013, 2
  %exitcond.not.1 = icmp eq i64 %inc.1, 82
  br i1 %exitcond.not.1, label %cleanup, label %for.body, !llvm.loop !11

cleanup:                                          ; preds = %for.inc.1, %entry, %if.then4
  %retval.0 = phi i8* [ %1, %if.then4 ], [ null, %entry ], [ null, %for.inc.1 ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define i32 @ossl_ec_curve_name2nid(i8* noundef readonly %name) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp eq i8* %name, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @ossl_ec_curve_nist2nid_int(i8* noundef nonnull %name) #3
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %for.body, label %cleanup

for.body:                                         ; preds = %if.then, %for.inc
  %i.021 = phi i64 [ %inc, %for.inc ], [ 0, %if.then ]
  %name4 = getelementptr inbounds [82 x %struct.ec_name2nid_st], [82 x %struct.ec_name2nid_st]* @curve_list, i64 0, i64 %i.021, i32 0
  %0 = load i8*, i8** %name4, align 16, !tbaa !10
  %call5 = tail call i32 @strcasecmp(i8* noundef %0, i8* noundef nonnull %name) #4
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %for.inc

if.then7:                                         ; preds = %for.body
  %nid9 = getelementptr inbounds [82 x %struct.ec_name2nid_st], [82 x %struct.ec_name2nid_st]* @curve_list, i64 0, i64 %i.021, i32 1
  %1 = load i32, i32* %nid9, align 8, !tbaa !4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i64 %i.021, 1
  %exitcond.not = icmp eq i64 %inc, 82
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !13

cleanup:                                          ; preds = %for.inc, %entry, %if.then, %if.then7
  %retval.0 = phi i32 [ %1, %if.then7 ], [ %call, %if.then ], [ 0, %entry ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define i32 @ossl_ec_curve_nist2nid_int(i8* noundef readonly %name) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i64 0, i64 0), i8* noundef %name) #4
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.inc.13, %for.inc.12, %for.inc.11, %for.inc.10, %for.inc.9, %for.inc.8, %for.inc.7, %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %entry
  %i.09.lcssa = phi i64 [ 0, %entry ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ], [ 6, %for.inc.5 ], [ 7, %for.inc.6 ], [ 8, %for.inc.7 ], [ 9, %for.inc.8 ], [ 10, %for.inc.9 ], [ 11, %for.inc.10 ], [ 12, %for.inc.11 ], [ 13, %for.inc.12 ], [ 14, %for.inc.13 ]
  %nid = getelementptr inbounds [15 x %struct.ec_name2nid_st], [15 x %struct.ec_name2nid_st]* @nist_curves, i64 0, i64 %i.09.lcssa, i32 1
  %0 = load i32, i32* %nid, align 8, !tbaa !4
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0), i8* noundef %name) #4
  %cmp2.1 = icmp eq i32 %call.1, 0
  br i1 %cmp2.1, label %if.then, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i64 0, i64 0), i8* noundef %name) #4
  %cmp2.2 = icmp eq i32 %call.2, 0
  br i1 %cmp2.2, label %if.then, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i8* noundef %name) #4
  %cmp2.3 = icmp eq i32 %call.3, 0
  br i1 %cmp2.3, label %if.then, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %call.4 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i64 0, i64 0), i8* noundef %name) #4
  %cmp2.4 = icmp eq i32 %call.4, 0
  br i1 %cmp2.4, label %if.then, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %call.5 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i64 0, i64 0), i8* noundef %name) #4
  %cmp2.5 = icmp eq i32 %call.5, 0
  br i1 %cmp2.5, label %if.then, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %call.6 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0), i8* noundef %name) #4
  %cmp2.6 = icmp eq i32 %call.6, 0
  br i1 %cmp2.6, label %if.then, label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %call.7 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i64 0, i64 0), i8* noundef %name) #4
  %cmp2.7 = icmp eq i32 %call.7, 0
  br i1 %cmp2.7, label %if.then, label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  %call.8 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i64 0, i64 0), i8* noundef %name) #4
  %cmp2.8 = icmp eq i32 %call.8, 0
  br i1 %cmp2.8, label %if.then, label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.7
  %call.9 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i64 0, i64 0), i8* noundef %name) #4
  %cmp2.9 = icmp eq i32 %call.9, 0
  br i1 %cmp2.9, label %if.then, label %for.inc.9

for.inc.9:                                        ; preds = %for.inc.8
  %call.10 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0), i8* noundef %name) #4
  %cmp2.10 = icmp eq i32 %call.10, 0
  br i1 %cmp2.10, label %if.then, label %for.inc.10

for.inc.10:                                       ; preds = %for.inc.9
  %call.11 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i8* noundef %name) #4
  %cmp2.11 = icmp eq i32 %call.11, 0
  br i1 %cmp2.11, label %if.then, label %for.inc.11

for.inc.11:                                       ; preds = %for.inc.10
  %call.12 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i64 0, i64 0), i8* noundef %name) #4
  %cmp2.12 = icmp eq i32 %call.12, 0
  br i1 %cmp2.12, label %if.then, label %for.inc.12

for.inc.12:                                       ; preds = %for.inc.11
  %call.13 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i64 0, i64 0), i8* noundef %name) #4
  %cmp2.13 = icmp eq i32 %call.13, 0
  br i1 %cmp2.13, label %if.then, label %for.inc.13

for.inc.13:                                       ; preds = %for.inc.12
  %call.14 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i64 0, i64 0), i8* noundef %name) #4
  %cmp2.14 = icmp eq i32 %call.14, 0
  br i1 %cmp2.14, label %if.then, label %cleanup

cleanup:                                          ; preds = %for.inc.13, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %for.inc.13 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define i8* @ossl_ec_curve_nid2nist_int(i32 noundef %nid) local_unnamed_addr #0 {
entry:
  switch i32 %nid, label %cleanup [
    i32 723, label %if.then
    i32 727, label %if.then.fold.split
    i32 730, label %if.then.fold.split11
    i32 732, label %if.then.fold.split12
    i32 734, label %if.then.fold.split13
    i32 721, label %if.then.fold.split14
    i32 726, label %if.then.fold.split15
    i32 729, label %if.then.fold.split16
    i32 731, label %if.then.fold.split17
    i32 733, label %if.then.fold.split18
    i32 409, label %if.then.fold.split19
    i32 713, label %if.then.fold.split20
    i32 415, label %if.then.fold.split21
    i32 715, label %if.then.fold.split22
    i32 716, label %if.then.fold.split23
  ]

if.then.fold.split:                               ; preds = %entry
  br label %if.then

if.then.fold.split11:                             ; preds = %entry
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  br label %if.then

if.then.fold.split17:                             ; preds = %entry
  br label %if.then

if.then.fold.split18:                             ; preds = %entry
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  br label %if.then

if.then.fold.split20:                             ; preds = %entry
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  br label %if.then

if.then.fold.split22:                             ; preds = %entry
  br label %if.then

if.then.fold.split23:                             ; preds = %entry
  br label %if.then

if.then:                                          ; preds = %entry, %if.then.fold.split23, %if.then.fold.split22, %if.then.fold.split21, %if.then.fold.split20, %if.then.fold.split19, %if.then.fold.split18, %if.then.fold.split17, %if.then.fold.split16, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split11, %if.then.fold.split
  %i.09.lcssa = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split11 ], [ 3, %if.then.fold.split12 ], [ 4, %if.then.fold.split13 ], [ 5, %if.then.fold.split14 ], [ 6, %if.then.fold.split15 ], [ 7, %if.then.fold.split16 ], [ 8, %if.then.fold.split17 ], [ 9, %if.then.fold.split18 ], [ 10, %if.then.fold.split19 ], [ 11, %if.then.fold.split20 ], [ 12, %if.then.fold.split21 ], [ 13, %if.then.fold.split22 ], [ 14, %if.then.fold.split23 ]
  %name = getelementptr inbounds [15 x %struct.ec_name2nid_st], [15 x %struct.ec_name2nid_st]* @nist_curves, i64 0, i64 %i.09.lcssa, i32 0
  %0 = load i8*, i8** %name, align 16, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %0, %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 8}
!5 = !{!"ec_name2nid_st", !6, i64 0, !9, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}

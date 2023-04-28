; ModuleID = 'test/packettest.c'
source_filename = "test/packettest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PACKET = type { i8*, i64 }

@smbuf = internal global [255 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [21 x i8] c"test_PACKET_buf_init\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"test_PACKET_null_init\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"test_PACKET_remaining\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"test_PACKET_end\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"test_PACKET_equal\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"test_PACKET_get_1\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"test_PACKET_get_4\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"test_PACKET_get_net_2\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"test_PACKET_get_net_3\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"test_PACKET_get_net_4\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"test_PACKET_get_sub_packet\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"test_PACKET_get_bytes\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"test_PACKET_copy_bytes\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"test_PACKET_copy_all\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"test_PACKET_memdup\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"test_PACKET_strndup\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"test_PACKET_contains_zero_byte\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"test_PACKET_forward\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"test_PACKET_get_length_prefixed_1\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"test_PACKET_get_length_prefixed_2\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"test_PACKET_get_length_prefixed_3\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"test_PACKET_as_length_prefixed_1\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"test_PACKET_as_length_prefixed_2\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"test/packettest.c\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"PACKET_buf_init(&pkt, buf1, 4)\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"PACKET_remaining(&pkt)\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"PACKET_buf_init(&pkt, buf1, BUF_LEN)\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"BUF_LEN\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"PACKET_buf_init(&pkt, buf1, -1)\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"PACKET_forward(&pkt, 1)\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"PACKET_buf_init(&pkt, smbuf, sizeof(smbuf))\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"PACKET_forward(&pkt, BUF_LEN - 1)\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"PACKET_end(&pkt)\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"smbuf + BUF_LEN\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"PACKET_buf_init(&pkt, smbuf, 4)\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"PACKET_equal(&pkt, smbuf, 4)\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"PACKET_equal(&pkt, smbuf + 1, 4)\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"PACKET_buf_init(&pkt, smbuf, BUF_LEN)\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"PACKET_equal(&pkt, smbuf, BUF_LEN)\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"PACKET_equal(&pkt, smbuf, BUF_LEN - 1)\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"PACKET_equal(&pkt, smbuf, BUF_LEN + 1)\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"PACKET_equal(&pkt, smbuf, 0)\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"PACKET_get_1(&pkt, &i)\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"0x02\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"PACKET_forward(&pkt, BUF_LEN - 2)\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"0xfe\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"PACKET_get_4(&pkt, &i)\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"0x08060402UL\00", align 1
@.str.52 = private unnamed_addr constant [34 x i8] c"PACKET_forward(&pkt, BUF_LEN - 8)\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"0xfefcfaf8UL\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"PACKET_get_net_2(&pkt, &i)\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"0x0204\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"PACKET_forward(&pkt, BUF_LEN - 4)\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"0xfcfe\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"PACKET_get_net_3(&pkt, &i)\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"0x020406UL\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"PACKET_forward(&pkt, BUF_LEN - 6)\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"0xfafcfeUL\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"PACKET_get_net_4(&pkt, &i)\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"0x02040608UL\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"0xf8fafcfeUL\00", align 1
@.str.65 = private unnamed_addr constant [40 x i8] c"PACKET_get_sub_packet(&pkt, &subpkt, 4)\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"PACKET_get_net_4(&subpkt, &i)\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"PACKET_remaining(&subpkt)\00", align 1
@.str.68 = private unnamed_addr constant [34 x i8] c"PACKET_get_bytes(&pkt, &bytes, 4)\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"bytes[0]\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"bytes[1]\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"bytes[2]\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"bytes[3]\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"BUF_LEN -4\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"0xf8\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"0xfa\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"0xfc\00", align 1
@.str.80 = private unnamed_addr constant [34 x i8] c"PACKET_copy_bytes(&pkt, bytes, 4)\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"BUF_LEN - 4\00", align 1
@.str.82 = private unnamed_addr constant [42 x i8] c"PACKET_copy_all(&pkt, tmp, BUF_LEN, &len)\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"smbuf\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.86 = private unnamed_addr constant [46 x i8] c"PACKET_copy_all(&pkt, tmp, BUF_LEN - 1, &len)\00", align 1
@.str.87 = private unnamed_addr constant [33 x i8] c"PACKET_memdup(&pkt, &data, &len)\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"PACKET_data(&pkt)\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"PACKET_forward(&pkt, 10)\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"BUF_LEN - 10\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"include/internal/packet.h\00", align 1
@.str.93 = private unnamed_addr constant [48 x i8] c"PACKET_buf_init(&pkt, (unsigned char*)buf1, 10)\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"PACKET_strndup(&pkt, &data)\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"strlen(data)\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"buf1\00", align 1
@.str.98 = private unnamed_addr constant [48 x i8] c"PACKET_buf_init(&pkt, (unsigned char*)buf2, 10)\00", align 1
@.str.99 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"buf2\00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"PACKET_contains_zero_byte(&pkt)\00", align 1
@.str.102 = private unnamed_addr constant [33 x i8] c"PACKET_get_bytes(&pkt, &byte, 1)\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"byte[0]\00", align 1
@.str.104 = private unnamed_addr constant [34 x i8] c"PACKET_forward(&pkt, BUF_LEN - 3)\00", align 1
@.str.105 = private unnamed_addr constant [39 x i8] c"PACKET_buf_init(&short_pkt, buf1, len)\00", align 1
@.str.106 = private unnamed_addr constant [44 x i8] c"PACKET_get_length_prefixed_1(&pkt, &subpkt)\00", align 1
@.str.107 = private unnamed_addr constant [30 x i8] c"PACKET_get_net_2(&subpkt, &i)\00", align 1
@.str.108 = private unnamed_addr constant [50 x i8] c"PACKET_get_length_prefixed_1(&short_pkt, &subpkt)\00", align 1
@.str.109 = private unnamed_addr constant [29 x i8] c"PACKET_remaining(&short_pkt)\00", align 1
@.str.110 = private unnamed_addr constant [34 x i8] c"PACKET_buf_init(&pkt, buf1, 1024)\00", align 1
@.str.111 = private unnamed_addr constant [44 x i8] c"PACKET_get_length_prefixed_2(&pkt, &subpkt)\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"0x0608\00", align 1
@.str.113 = private unnamed_addr constant [50 x i8] c"PACKET_get_length_prefixed_2(&short_pkt, &subpkt)\00", align 1
@.str.114 = private unnamed_addr constant [44 x i8] c"PACKET_get_length_prefixed_3(&pkt, &subpkt)\00", align 1
@.str.115 = private unnamed_addr constant [50 x i8] c"PACKET_get_length_prefixed_3(&short_pkt, &subpkt)\00", align 1
@.str.116 = private unnamed_addr constant [43 x i8] c"PACKET_buf_init(&exact_pkt, buf1, len + 1)\00", align 1
@.str.117 = private unnamed_addr constant [43 x i8] c"PACKET_as_length_prefixed_1(&pkt, &subpkt)\00", align 1
@.str.118 = private unnamed_addr constant [49 x i8] c"PACKET_as_length_prefixed_1(&exact_pkt, &subpkt)\00", align 1
@.str.119 = private unnamed_addr constant [29 x i8] c"PACKET_remaining(&exact_pkt)\00", align 1
@.str.120 = private unnamed_addr constant [33 x i8] c"PACKET_buf_init(&pkt, buf, 1024)\00", align 1
@.str.121 = private unnamed_addr constant [42 x i8] c"PACKET_buf_init(&exact_pkt, buf, len + 2)\00", align 1
@.str.122 = private unnamed_addr constant [43 x i8] c"PACKET_as_length_prefixed_2(&pkt, &subpkt)\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@.str.124 = private unnamed_addr constant [49 x i8] c"PACKET_as_length_prefixed_2(&exact_pkt, &subpkt)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  store <16 x i8> <i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 16, i8 18, i8 20, i8 22, i8 24, i8 26, i8 28, i8 30, i8 32>, <16 x i8>* bitcast ([255 x i8]* @smbuf to <16 x i8>*), align 16, !tbaa !3
  store <16 x i8> <i8 34, i8 36, i8 38, i8 40, i8 42, i8 44, i8 46, i8 48, i8 50, i8 52, i8 54, i8 56, i8 58, i8 60, i8 62, i8 64>, <16 x i8>* bitcast (i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 16) to <16 x i8>*), align 16, !tbaa !3
  store <16 x i8> <i8 66, i8 68, i8 70, i8 72, i8 74, i8 76, i8 78, i8 80, i8 82, i8 84, i8 86, i8 88, i8 90, i8 92, i8 94, i8 96>, <16 x i8>* bitcast (i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 32) to <16 x i8>*), align 16, !tbaa !3
  store <16 x i8> <i8 98, i8 100, i8 102, i8 104, i8 106, i8 108, i8 110, i8 112, i8 114, i8 116, i8 118, i8 120, i8 122, i8 124, i8 126, i8 -128>, <16 x i8>* bitcast (i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 48) to <16 x i8>*), align 16, !tbaa !3
  store <16 x i8> <i8 -126, i8 -124, i8 -122, i8 -120, i8 -118, i8 -116, i8 -114, i8 -112, i8 -110, i8 -108, i8 -106, i8 -104, i8 -102, i8 -100, i8 -98, i8 -96>, <16 x i8>* bitcast (i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 64) to <16 x i8>*), align 16, !tbaa !3
  store <16 x i8> <i8 -94, i8 -92, i8 -90, i8 -88, i8 -86, i8 -84, i8 -82, i8 -80, i8 -78, i8 -76, i8 -74, i8 -72, i8 -70, i8 -68, i8 -66, i8 -64>, <16 x i8>* bitcast (i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 80) to <16 x i8>*), align 16, !tbaa !3
  store <16 x i8> <i8 -62, i8 -60, i8 -58, i8 -56, i8 -54, i8 -52, i8 -50, i8 -48, i8 -46, i8 -44, i8 -42, i8 -40, i8 -38, i8 -36, i8 -34, i8 -32>, <16 x i8>* bitcast (i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 96) to <16 x i8>*), align 16, !tbaa !3
  store <16 x i8> <i8 -30, i8 -28, i8 -26, i8 -24, i8 -22, i8 -20, i8 -18, i8 -16, i8 -14, i8 -12, i8 -10, i8 -8, i8 -6, i8 -4, i8 -2, i8 0>, <16 x i8>* bitcast (i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 112) to <16 x i8>*), align 16, !tbaa !3
  store <16 x i8> <i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 16, i8 18, i8 20, i8 22, i8 24, i8 26, i8 28, i8 30, i8 32>, <16 x i8>* bitcast (i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 128) to <16 x i8>*), align 16, !tbaa !3
  store <16 x i8> <i8 34, i8 36, i8 38, i8 40, i8 42, i8 44, i8 46, i8 48, i8 50, i8 52, i8 54, i8 56, i8 58, i8 60, i8 62, i8 64>, <16 x i8>* bitcast (i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 144) to <16 x i8>*), align 16, !tbaa !3
  store <16 x i8> <i8 66, i8 68, i8 70, i8 72, i8 74, i8 76, i8 78, i8 80, i8 82, i8 84, i8 86, i8 88, i8 90, i8 92, i8 94, i8 96>, <16 x i8>* bitcast (i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 160) to <16 x i8>*), align 16, !tbaa !3
  store <16 x i8> <i8 98, i8 100, i8 102, i8 104, i8 106, i8 108, i8 110, i8 112, i8 114, i8 116, i8 118, i8 120, i8 122, i8 124, i8 126, i8 -128>, <16 x i8>* bitcast (i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 176) to <16 x i8>*), align 16, !tbaa !3
  store <16 x i8> <i8 -126, i8 -124, i8 -122, i8 -120, i8 -118, i8 -116, i8 -114, i8 -112, i8 -110, i8 -108, i8 -106, i8 -104, i8 -102, i8 -100, i8 -98, i8 -96>, <16 x i8>* bitcast (i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 192) to <16 x i8>*), align 16, !tbaa !3
  store <16 x i8> <i8 -94, i8 -92, i8 -90, i8 -88, i8 -86, i8 -84, i8 -82, i8 -80, i8 -78, i8 -76, i8 -74, i8 -72, i8 -70, i8 -68, i8 -66, i8 -64>, <16 x i8>* bitcast (i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 208) to <16 x i8>*), align 16, !tbaa !3
  store <16 x i8> <i8 -62, i8 -60, i8 -58, i8 -56, i8 -54, i8 -52, i8 -50, i8 -48, i8 -46, i8 -44, i8 -42, i8 -40, i8 -38, i8 -36, i8 -34, i8 -32>, <16 x i8>* bitcast (i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 224) to <16 x i8>*), align 16, !tbaa !3
  store i8 -30, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 240), align 16, !tbaa !3
  store i8 -28, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 241), align 1, !tbaa !3
  store i8 -26, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 242), align 2, !tbaa !3
  store i8 -24, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 243), align 1, !tbaa !3
  store i8 -22, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 244), align 4, !tbaa !3
  store i8 -20, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 245), align 1, !tbaa !3
  store i8 -18, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 246), align 2, !tbaa !3
  store i8 -16, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 247), align 1, !tbaa !3
  store i8 -14, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 248), align 8, !tbaa !3
  store i8 -12, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 249), align 1, !tbaa !3
  store i8 -10, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 250), align 2, !tbaa !3
  store i8 -8, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 251), align 1, !tbaa !3
  store i8 -6, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 252), align 4, !tbaa !3
  store i8 -4, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 253), align 1, !tbaa !3
  store i8 -2, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 254), align 2, !tbaa !3
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_buf_init) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_null_init) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_remaining) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_end) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_equal) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_get_1) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_get_4) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_get_net_2) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_get_net_3) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_get_net_4) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_get_sub_packet) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_get_bytes) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_copy_bytes) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_copy_all) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_memdup) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_strndup) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_contains_zero_byte) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_forward) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_get_length_prefixed_1) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_get_length_prefixed_2) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_get_length_prefixed_3) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_as_length_prefixed_1) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i32 ()* noundef nonnull @test_PACKET_as_length_prefixed_2) #11
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_buf_init() #0 {
entry:
  %buf1 = alloca [255 x i8], align 16
  %pkt = alloca %struct.PACKET, align 8
  %0 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 255, i8* nonnull %0) #12
  %1 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %0, i64 noundef 4) #13
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 309, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %call3 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 310, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i64 noundef %call2, i64 noundef 4) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call7 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %0, i64 noundef 255) #13
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 311, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv9) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false5
  %call13 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %call14 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 312, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i64 noundef %call13, i64 noundef 255) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %call18 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %0, i64 noundef -1) #13
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 313, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv20) #11
  %tobool22.not = icmp ne i32 %call21, 0
  %spec.select = zext i1 %tobool22.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false16, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false12
  %retval.0 = phi i32 [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false16 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 255, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_null_init() #0 {
entry:
  %pkt = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call fastcc void @PACKET_null_init(%struct.PACKET* noundef nonnull %pkt) #13
  %call = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %call1 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i64 noundef %call, i64 noundef 0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 1) #13
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 325, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv) #11
  %tobool4.not = icmp ne i32 %call3, 0
  %spec.select = zext i1 %tobool4.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %spec.select, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_remaining() #0 {
entry:
  %pkt = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 255) #13
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 21, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %call3 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i64 noundef %call2, i64 noundef 255) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 254) #13
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv8) #11
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false5
  %call12 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %call13 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i64 noundef %call12, i64 noundef 1) #11
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %call16 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 1) #13
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv18) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false15
  %call22 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %call23 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i64 noundef %call22, i64 noundef 0) #11
  %tobool24.not = icmp ne i32 %call23, 0
  %spec.select = zext i1 %tobool24.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false21, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false11, %lor.lhs.false15
  %retval.0 = phi i32 [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false21 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_end() #0 {
entry:
  %pkt = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 255) #13
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %call3 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i64 noundef %call2, i64 noundef 255) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call fastcc i8* @PACKET_end(%struct.PACKET* noundef nonnull %pkt) #13
  %call7 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i8* noundef %call6, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 1, i64 0)) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 254) #13
  %cmp11 = icmp ne i32 %call10, 0
  %conv12 = zext i1 %cmp11 to i32
  %call13 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv12) #11
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false9
  %call16 = call fastcc i8* @PACKET_end(%struct.PACKET* noundef nonnull %pkt) #13
  %call17 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i8* noundef %call16, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 1, i64 0)) #11
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false15
  %call20 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 1) #13
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv22) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %call26 = call fastcc i8* @PACKET_end(%struct.PACKET* noundef nonnull %pkt) #13
  %call27 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i8* noundef %call26, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 1, i64 0)) #11
  %tobool28.not = icmp ne i32 %call27, 0
  %spec.select = zext i1 %tobool28.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false25, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false15, %lor.lhs.false19
  %retval.0 = phi i32 [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false25 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_equal() #0 {
entry:
  %pkt = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 4) #13
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 335, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i32 @PACKET_equal(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 4) #13
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 336, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call fastcc i32 @PACKET_equal(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 1), i64 noundef 4) #13
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 337, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv10) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %call14 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 255) #13
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv16) #11
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %call20 = call fastcc i32 @PACKET_equal(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 255) #13
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv22) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %call26 = call fastcc i32 @PACKET_equal(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 254) #13
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 340, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv28) #11
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %call32 = call fastcc i32 @PACKET_equal(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 256) #13
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 341, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv34) #11
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %call38 = call fastcc i32 @PACKET_equal(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 0) #13
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 342, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv40) #11
  %tobool42.not = icmp ne i32 %call41, 0
  %spec.select = zext i1 %tobool42.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false37, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false13, %lor.lhs.false19, %lor.lhs.false25, %lor.lhs.false31
  %retval.0 = phi i32 [ 0, %lor.lhs.false31 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false37 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_get_1() #0 {
entry:
  %i = alloca i32, align 4
  %pkt = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  store i32 0, i32* %i, align 4, !tbaa !6
  %1 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 255) #13
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %i) #13
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %i, align 4, !tbaa !6
  %call8 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i32 noundef %2, i32 noundef 2) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call11 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 253) #13
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv13) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false10
  %call17 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %i) #13
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv19) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %3 = load i32, i32* %i, align 4, !tbaa !6
  %call23 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i32 noundef %3, i32 noundef 254) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %call26 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %i) #13
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv28) #11
  %tobool30.not = icmp ne i32 %call29, 0
  %spec.select = zext i1 %tobool30.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false25, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false10, %lor.lhs.false16, %lor.lhs.false22
  %retval.0 = phi i32 [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false25 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_get_4() #0 {
entry:
  %i = alloca i64, align 8
  %pkt = alloca %struct.PACKET, align 8
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %i, align 8, !tbaa !8
  %1 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 255) #13
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i32 @PACKET_get_4(%struct.PACKET* noundef nonnull %pkt, i64* noundef nonnull %i) #13
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0), i32 noundef %conv4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %2 = load i64, i64* %i, align 8, !tbaa !8
  %call8 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i64 0, i64 0), i64 noundef %2, i64 noundef 134611970) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call11 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 247) #13
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv13) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false10
  %call17 = call fastcc i32 @PACKET_get_4(%struct.PACKET* noundef nonnull %pkt, i64* noundef nonnull %i) #13
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0), i32 noundef %conv19) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %3 = load i64, i64* %i, align 8, !tbaa !8
  %call23 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 noundef %3, i64 noundef 4277992184) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %call26 = call fastcc i32 @PACKET_get_4(%struct.PACKET* noundef nonnull %pkt, i64* noundef nonnull %i) #13
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0), i32 noundef %conv28) #11
  %tobool30.not = icmp ne i32 %call29, 0
  %spec.select = zext i1 %tobool30.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false25, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false10, %lor.lhs.false16, %lor.lhs.false22
  %retval.0 = phi i32 [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false25 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_get_net_2() #0 {
entry:
  %i = alloca i32, align 4
  %pkt = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  store i32 0, i32* %i, align 4, !tbaa !6
  %1 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 255) #13
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %i) #13
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %i, align 4, !tbaa !6
  %call8 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i32 noundef %2, i32 noundef 516) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call11 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 251) #13
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.56, i64 0, i64 0), i32 noundef %conv13) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false10
  %call17 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %i) #13
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv19) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %3 = load i32, i32* %i, align 4, !tbaa !6
  %call23 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i32 noundef %3, i32 noundef 64766) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %call26 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %i) #13
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv28) #11
  %tobool30.not = icmp ne i32 %call29, 0
  %spec.select = zext i1 %tobool30.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false25, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false10, %lor.lhs.false16, %lor.lhs.false22
  %retval.0 = phi i32 [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false25 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_get_net_3() #0 {
entry:
  %i = alloca i64, align 8
  %pkt = alloca %struct.PACKET, align 8
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %i, align 8, !tbaa !8
  %1 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 255) #13
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i32 @PACKET_get_net_3(%struct.PACKET* noundef nonnull %pkt, i64* noundef nonnull %i) #13
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %2 = load i64, i64* %i, align 8, !tbaa !8
  %call8 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i64 0, i64 0), i64 noundef %2, i64 noundef 132102) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call11 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 249) #13
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv13) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false10
  %call17 = call fastcc i32 @PACKET_get_net_3(%struct.PACKET* noundef nonnull %pkt, i64* noundef nonnull %i) #13
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv19) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %3 = load i64, i64* %i, align 8, !tbaa !8
  %call23 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i64 0, i64 0), i64 noundef %3, i64 noundef 16448766) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %call26 = call fastcc i32 @PACKET_get_net_3(%struct.PACKET* noundef nonnull %pkt, i64* noundef nonnull %i) #13
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv28) #11
  %tobool30.not = icmp ne i32 %call29, 0
  %spec.select = zext i1 %tobool30.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false25, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false10, %lor.lhs.false16, %lor.lhs.false22
  %retval.0 = phi i32 [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false25 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_get_net_4() #0 {
entry:
  %i = alloca i64, align 8
  %pkt = alloca %struct.PACKET, align 8
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %i, align 8, !tbaa !8
  %1 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 255) #13
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i32 @PACKET_get_net_4(%struct.PACKET* noundef nonnull %pkt, i64* noundef nonnull %i) #13
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0), i32 noundef %conv4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %2 = load i64, i64* %i, align 8, !tbaa !8
  %call8 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0), i64 noundef %2, i64 noundef 33818120) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call11 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 247) #13
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv13) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false10
  %call17 = call fastcc i32 @PACKET_get_net_4(%struct.PACKET* noundef nonnull %pkt, i64* noundef nonnull %i) #13
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0), i32 noundef %conv19) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %3 = load i64, i64* %i, align 8, !tbaa !8
  %call23 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i64 0, i64 0), i64 noundef %3, i64 noundef 4177198334) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %call26 = call fastcc i32 @PACKET_get_net_4(%struct.PACKET* noundef nonnull %pkt, i64* noundef nonnull %i) #13
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0), i32 noundef %conv28) #11
  %tobool30.not = icmp ne i32 %call29, 0
  %spec.select = zext i1 %tobool30.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false25, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false10, %lor.lhs.false16, %lor.lhs.false22
  %retval.0 = phi i32 [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false25 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_get_sub_packet() #0 {
entry:
  %pkt = alloca %struct.PACKET, align 8
  %subpkt = alloca %struct.PACKET, align 8
  %i = alloca i64, align 8
  %0 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %1 = bitcast %struct.PACKET* %subpkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %2 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  store i64 0, i64* %i, align 8, !tbaa !8
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 255) #13
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i32 @PACKET_get_sub_packet(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %subpkt) #13
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.65, i64 0, i64 0), i32 noundef %conv4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call fastcc i32 @PACKET_get_net_4(%struct.PACKET* noundef nonnull %subpkt, i64* noundef nonnull %i) #13
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv10) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %3 = load i64, i64* %i, align 8, !tbaa !8
  %call14 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0), i64 noundef %3, i64 noundef 33818120) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %subpkt) #13
  %call18 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 142, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i64 noundef %call17, i64 noundef 0) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %call21 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 247) #13
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv23) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false20
  %call27 = call fastcc i32 @PACKET_get_sub_packet(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %subpkt) #13
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.65, i64 0, i64 0), i32 noundef %conv29) #11
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false26
  %call33 = call fastcc i32 @PACKET_get_net_4(%struct.PACKET* noundef nonnull %subpkt, i64* noundef nonnull %i) #13
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv35) #11
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cleanup, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false32
  %4 = load i64, i64* %i, align 8, !tbaa !8
  %call39 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i64 0, i64 0), i64 noundef %4, i64 noundef 4177198334) #11
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %cleanup, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false38
  %call42 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %subpkt) #13
  %call43 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i64 noundef %call42, i64 noundef 0) #11
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %cleanup, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %call46 = call fastcc i32 @PACKET_get_sub_packet(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %subpkt) #13
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.65, i64 0, i64 0), i32 noundef %conv48) #11
  %tobool50.not = icmp ne i32 %call49, 0
  %spec.select = zext i1 %tobool50.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false45, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false13, %lor.lhs.false16, %lor.lhs.false20, %lor.lhs.false26, %lor.lhs.false32, %lor.lhs.false38, %lor.lhs.false41
  %retval.0 = phi i32 [ 0, %lor.lhs.false41 ], [ 0, %lor.lhs.false38 ], [ 0, %lor.lhs.false32 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false45 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_get_bytes() #0 {
entry:
  %bytes = alloca i8*, align 8
  %pkt = alloca %struct.PACKET, align 8
  %0 = bitcast i8** %bytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i8* null, i8** %bytes, align 8, !tbaa !10
  %1 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 255) #13
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %pkt, i8** noundef nonnull %bytes, i64 noundef 4) #13
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.68, i64 0, i64 0), i32 noundef %conv4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %bytes, align 8, !tbaa !10
  %3 = load i8, i8* %2, align 1, !tbaa !3
  %call8 = tail call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8 noundef zeroext %3, i8 noundef zeroext 2) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %arrayidx11 = getelementptr inbounds i8, i8* %2, i64 1
  %4 = load i8, i8* %arrayidx11, align 1, !tbaa !3
  %call12 = tail call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i8 noundef zeroext %4, i8 noundef zeroext 4) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %arrayidx15 = getelementptr inbounds i8, i8* %2, i64 2
  %5 = load i8, i8* %arrayidx15, align 1, !tbaa !3
  %call16 = tail call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0), i8 noundef zeroext %5, i8 noundef zeroext 6) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %arrayidx19 = getelementptr inbounds i8, i8* %2, i64 3
  %6 = load i8, i8* %arrayidx19, align 1, !tbaa !3
  %call20 = tail call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0), i8 noundef zeroext %6, i8 noundef zeroext 8) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %call23 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %call24 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i64 0, i64 0), i64 noundef %call23, i64 noundef 251) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %call27 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 247) #13
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv29) #11
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false26
  %call33 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %pkt, i8** noundef nonnull %bytes, i64 noundef 4) #13
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.68, i64 0, i64 0), i32 noundef %conv35) #11
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cleanup, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false32
  %7 = load i8*, i8** %bytes, align 8, !tbaa !10
  %8 = load i8, i8* %7, align 1, !tbaa !3
  %call40 = tail call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i64 0, i64 0), i8 noundef zeroext %8, i8 noundef zeroext -8) #11
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false38
  %arrayidx43 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = load i8, i8* %arrayidx43, align 1, !tbaa !3
  %call44 = tail call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), i8 noundef zeroext %9, i8 noundef zeroext -6) #11
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cleanup, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false42
  %arrayidx47 = getelementptr inbounds i8, i8* %7, i64 2
  %10 = load i8, i8* %arrayidx47, align 1, !tbaa !3
  %call48 = tail call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0), i8 noundef zeroext %10, i8 noundef zeroext -4) #11
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %cleanup, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false46
  %arrayidx51 = getelementptr inbounds i8, i8* %7, i64 3
  %11 = load i8, i8* %arrayidx51, align 1, !tbaa !3
  %call52 = tail call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i8 noundef zeroext %11, i8 noundef zeroext -2) #11
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %cleanup, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false50
  %call55 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %cmp56 = icmp ne i64 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 172, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv57) #11
  %tobool59.not = icmp ne i32 %call58, 0
  %spec.select = zext i1 %tobool59.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false54, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false18, %lor.lhs.false22, %lor.lhs.false26, %lor.lhs.false32, %lor.lhs.false38, %lor.lhs.false42, %lor.lhs.false46, %lor.lhs.false50
  %retval.0 = phi i32 [ 0, %lor.lhs.false50 ], [ 0, %lor.lhs.false46 ], [ 0, %lor.lhs.false42 ], [ 0, %lor.lhs.false38 ], [ 0, %lor.lhs.false32 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false54 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_copy_bytes() #0 {
entry:
  %bytes = alloca [4 x i8], align 1
  %pkt = alloca %struct.PACKET, align 8
  %0 = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 255) #13
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %0) #13
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.80, i64 0, i64 0), i32 noundef %conv4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %2 = load i8, i8* %0, align 1, !tbaa !3
  %call8 = call i32 @test_char_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8 noundef signext %2, i8 noundef signext 2) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i64 0, i64 1
  %3 = load i8, i8* %arrayidx11, align 1, !tbaa !3
  %call12 = call i32 @test_char_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i8 noundef signext %3, i8 noundef signext 4) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i64 0, i64 2
  %4 = load i8, i8* %arrayidx15, align 1, !tbaa !3
  %call16 = call i32 @test_char_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0), i8 noundef signext %4, i8 noundef signext 6) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %arrayidx19 = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i64 0, i64 3
  %5 = load i8, i8* %arrayidx19, align 1, !tbaa !3
  %call20 = call i32 @test_char_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0), i8 noundef signext %5, i8 noundef signext 8) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %call23 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %call24 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i64 noundef %call23, i64 noundef 251) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %call27 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 247) #13
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv29) #11
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false26
  %call34 = call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %0) #13
  %cmp35 = icmp ne i32 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.80, i64 0, i64 0), i32 noundef %conv36) #11
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %cleanup, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false32
  %6 = load i8, i8* %0, align 1, !tbaa !3
  %call41 = call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i64 0, i64 0), i8 noundef zeroext %6, i8 noundef zeroext -8) #11
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cleanup, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false39
  %7 = load i8, i8* %arrayidx11, align 1, !tbaa !3
  %call45 = call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), i8 noundef zeroext %7, i8 noundef zeroext -6) #11
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cleanup, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false43
  %8 = load i8, i8* %arrayidx15, align 1, !tbaa !3
  %call49 = call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0), i8 noundef zeroext %8, i8 noundef zeroext -4) #11
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %cleanup, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false47
  %9 = load i8, i8* %arrayidx19, align 1, !tbaa !3
  %call53 = call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i8 noundef zeroext %9, i8 noundef zeroext -2) #11
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %cleanup, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false51
  %call56 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %cmp57 = icmp ne i64 %call56, 0
  %conv58 = zext i1 %cmp57 to i32
  %call59 = call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv58) #11
  %tobool60.not = icmp ne i32 %call59, 0
  %spec.select = zext i1 %tobool60.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false55, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false18, %lor.lhs.false22, %lor.lhs.false26, %lor.lhs.false32, %lor.lhs.false39, %lor.lhs.false43, %lor.lhs.false47, %lor.lhs.false51
  %retval.0 = phi i32 [ 0, %lor.lhs.false51 ], [ 0, %lor.lhs.false47 ], [ 0, %lor.lhs.false43 ], [ 0, %lor.lhs.false39 ], [ 0, %lor.lhs.false32 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false55 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_copy_all() #0 {
entry:
  %tmp = alloca [255 x i8], align 16
  %pkt = alloca %struct.PACKET, align 8
  %len = alloca i64, align 8
  %0 = getelementptr inbounds [255 x i8], [255 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 255, i8* nonnull %0) #12
  %1 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %2 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 255) #13
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i32 @PACKET_copy_all(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %0, i64 noundef 255, i64* noundef nonnull %len) #13
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.82, i64 0, i64 0), i32 noundef %conv4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %3 = load i64, i64* %len, align 8, !tbaa !8
  %call8 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 210, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i64 noundef %3, i64 noundef 255) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call12 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 255, i8* noundef nonnull %0, i64 noundef 255) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %call16 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i64 noundef %call15, i64 noundef 255) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call20 = call fastcc i32 @PACKET_copy_all(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %0, i64 noundef 254, i64* noundef nonnull %len) #13
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.86, i64 0, i64 0), i32 noundef %conv22) #11
  %tobool24.not = icmp ne i32 %call23, 0
  %spec.select = zext i1 %tobool24.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false18, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false10, %lor.lhs.false14
  %retval.0 = phi i32 [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false18 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 255, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_memdup() #0 {
entry:
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %pkt = alloca %struct.PACKET, align 8
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i8* null, i8** %data, align 8, !tbaa !10
  %1 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 255) #13
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i32 @PACKET_memdup(%struct.PACKET* noundef nonnull %pkt, i8** noundef nonnull %data, i64* noundef nonnull %len) #13
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.87, i64 0, i64 0), i32 noundef %conv4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %3 = load i64, i64* %len, align 8, !tbaa !8
  %call8 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i64 noundef %3, i64 noundef 255) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %end, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %4 = load i8*, i8** %data, align 8, !tbaa !10
  %call11 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %pkt) #13
  %call12 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.89, i64 0, i64 0), i8* noundef %4, i64 noundef %3, i8* noundef %call11, i64 noundef %3) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 10) #13
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.90, i64 0, i64 0), i32 noundef %conv17) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %end, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false14
  %call21 = call fastcc i32 @PACKET_memdup(%struct.PACKET* noundef nonnull %pkt, i8** noundef nonnull %data, i64* noundef nonnull %len) #13
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.87, i64 0, i64 0), i32 noundef %conv23) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %end, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false20
  %5 = load i64, i64* %len, align 8, !tbaa !8
  %call27 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i64 0, i64 0), i64 noundef %5, i64 noundef 245) #11
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %end, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %6 = load i8*, i8** %data, align 8, !tbaa !10
  %call30 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %pkt) #13
  %call31 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.89, i64 0, i64 0), i8* noundef %6, i64 noundef %5, i8* noundef %call30, i64 noundef %5) #11
  %tobool32.not = icmp ne i32 %call31, 0
  %spec.select = zext i1 %tobool32.not to i32
  br label %end

end:                                              ; preds = %lor.lhs.false29, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false20, %lor.lhs.false26
  %result.0 = phi i32 [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false29 ]
  %7 = load i8*, i8** %data, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 237) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %result.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_strndup() #0 {
entry:
  %buf1 = alloca [10 x i8], align 1
  %buf2 = alloca [10 x i8], align 1
  %data = alloca i8*, align 8
  %pkt = alloca %struct.PACKET, align 8
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %buf1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #12
  %1 = getelementptr inbounds [10 x i8], [10 x i8]* %buf2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %1) #12
  %2 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  store i8* null, i8** %data, align 8, !tbaa !10
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #12
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 120, i64 noundef 10) #11
  %call2 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 121, i64 noundef 10) #11
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %buf2, i64 0, i64 5
  store i8 0, i8* %arrayidx, align 1, !tbaa !3
  %call4 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %0, i64 noundef 10) #13
  %cmp = icmp ne i32 %call4, 0
  %conv = zext i1 %cmp to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 252, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.93, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call6 = call fastcc i32 @PACKET_strndup(%struct.PACKET* noundef nonnull %pkt, i8** noundef nonnull %data) #13
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.94, i64 0, i64 0), i32 noundef %conv8) #11
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %end, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %4 = load i8*, i8** %data, align 8, !tbaa !10
  %call12 = call i64 @strlen(i8* noundef %4) #14
  %call13 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i64 0, i64 0), i64 noundef %call12, i64 noundef 10) #11
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %end, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %call17 = call i32 @test_strn_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i64 0, i64 0), i8* noundef %4, i64 noundef 10, i8* noundef nonnull %0, i64 noundef 10) #11
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %end, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false15
  %call21 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %1, i64 noundef 10) #13
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.98, i64 0, i64 0), i32 noundef %conv23) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %end, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false19
  %call27 = call fastcc i32 @PACKET_strndup(%struct.PACKET* noundef nonnull %pkt, i8** noundef nonnull %data) #13
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.94, i64 0, i64 0), i32 noundef %conv29) #11
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %end, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false26
  %5 = load i8*, i8** %data, align 8, !tbaa !10
  %call33 = call i64 @strlen(i8* noundef %5) #14
  %call34 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i64 0, i64 0), i64 noundef %call33, i64 noundef 5) #11
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %end, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %call38 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i64 0, i64 0), i8* noundef %5, i8* noundef nonnull %1) #11
  %tobool39.not = icmp ne i32 %call38, 0
  %spec.select = zext i1 %tobool39.not to i32
  br label %end

end:                                              ; preds = %lor.lhs.false36, %entry, %lor.lhs.false, %lor.lhs.false11, %lor.lhs.false15, %lor.lhs.false19, %lor.lhs.false26, %lor.lhs.false32
  %result.0 = phi i32 [ 0, %lor.lhs.false32 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false36 ]
  %6 = load i8*, i8** %data, align 8, !tbaa !10
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 264) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #12
  ret i32 %result.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_contains_zero_byte() #0 {
entry:
  %buf1 = alloca [10 x i8], align 1
  %buf2 = alloca [10 x i8], align 1
  %pkt = alloca %struct.PACKET, align 8
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %buf1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #12
  %1 = getelementptr inbounds [10 x i8], [10 x i8]* %buf2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 120, i64 noundef 10) #11
  %call2 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 121, i64 noundef 10) #11
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %buf2, i64 0, i64 5
  store i8 0, i8* %arrayidx, align 1, !tbaa !3
  %call4 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %0, i64 noundef 10) #13
  %cmp = icmp ne i32 %call4, 0
  %conv = zext i1 %cmp to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.93, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call6 = call fastcc i32 @PACKET_contains_zero_byte(%struct.PACKET* noundef nonnull %pkt) #13
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.101, i64 0, i64 0), i32 noundef %conv8) #11
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %call13 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %1, i64 noundef 10) #13
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.98, i64 0, i64 0), i32 noundef %conv15) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false11
  %call19 = call fastcc i32 @PACKET_contains_zero_byte(%struct.PACKET* noundef nonnull %pkt) #13
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.101, i64 0, i64 0), i32 noundef %conv21) #11
  %tobool23.not = icmp ne i32 %call22, 0
  %spec.select = zext i1 %tobool23.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false18, %entry, %lor.lhs.false, %lor.lhs.false11
  %retval.0 = phi i32 [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false18 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_forward() #0 {
entry:
  %byte = alloca i8*, align 8
  %pkt = alloca %struct.PACKET, align 8
  %0 = bitcast i8** %byte to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i8* null, i8** %byte, align 8, !tbaa !10
  %1 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @smbuf, i64 0, i64 0), i64 noundef 255) #13
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 1) #13
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %pkt, i8** noundef nonnull %byte, i64 noundef 1) #13
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.102, i64 0, i64 0), i32 noundef %conv10) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %2 = load i8*, i8** %byte, align 8, !tbaa !10
  %3 = load i8, i8* %2, align 1, !tbaa !3
  %call14 = tail call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i8 noundef zeroext %3, i8 noundef zeroext 4) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 252) #13
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv19) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %call23 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %pkt, i8** noundef nonnull %byte, i64 noundef 1) #13
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.102, i64 0, i64 0), i32 noundef %conv25) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %4 = load i8*, i8** %byte, align 8, !tbaa !10
  %5 = load i8, i8* %4, align 1, !tbaa !3
  %call30 = tail call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 297, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i8 noundef zeroext %5, i8 noundef zeroext -2) #11
  %tobool31.not = icmp ne i32 %call30, 0
  %spec.select = zext i1 %tobool31.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false28, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false13, %lor.lhs.false16, %lor.lhs.false22
  %retval.0 = phi i32 [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false28 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_get_length_prefixed_1() #0 {
entry:
  %buf1 = alloca [255 x i8], align 16
  %i = alloca i32, align 4
  %pkt = alloca %struct.PACKET, align 8
  %short_pkt = alloca %struct.PACKET, align 8
  %subpkt = alloca %struct.PACKET, align 8
  %0 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 255, i8* nonnull %0) #12
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %short_pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #12
  %4 = bitcast %struct.PACKET* %subpkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #12
  %call = call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 16) #11
  store i8 16, i8* %0, align 16, !tbaa !3
  %5 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 1
  %6 = bitcast i8* %5 to <16 x i8>*
  store <16 x i8> <i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 16, i8 18, i8 20, i8 22, i8 24, i8 26, i8 28, i8 30, i8 32>, <16 x i8>* %6, align 1, !tbaa !3
  %7 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 17
  %8 = bitcast i8* %7 to <16 x i8>*
  store <16 x i8> <i8 34, i8 36, i8 38, i8 40, i8 42, i8 44, i8 46, i8 48, i8 50, i8 52, i8 54, i8 56, i8 58, i8 60, i8 62, i8 64>, <16 x i8>* %8, align 1, !tbaa !3
  %9 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 33
  %10 = bitcast i8* %9 to <16 x i8>*
  store <16 x i8> <i8 66, i8 68, i8 70, i8 72, i8 74, i8 76, i8 78, i8 80, i8 82, i8 84, i8 86, i8 88, i8 90, i8 92, i8 94, i8 96>, <16 x i8>* %10, align 1, !tbaa !3
  %11 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 49
  %12 = bitcast i8* %11 to <16 x i8>*
  store <16 x i8> <i8 98, i8 100, i8 102, i8 104, i8 106, i8 108, i8 110, i8 112, i8 114, i8 116, i8 118, i8 120, i8 122, i8 124, i8 126, i8 -128>, <16 x i8>* %12, align 1, !tbaa !3
  %13 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 65
  %14 = bitcast i8* %13 to <16 x i8>*
  store <16 x i8> <i8 -126, i8 -124, i8 -122, i8 -120, i8 -118, i8 -116, i8 -114, i8 -112, i8 -110, i8 -108, i8 -106, i8 -104, i8 -102, i8 -100, i8 -98, i8 -96>, <16 x i8>* %14, align 1, !tbaa !3
  %15 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 81
  %16 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> <i8 -94, i8 -92, i8 -90, i8 -88, i8 -86, i8 -84, i8 -82, i8 -80, i8 -78, i8 -76, i8 -74, i8 -72, i8 -70, i8 -68, i8 -66, i8 -64>, <16 x i8>* %16, align 1, !tbaa !3
  %17 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 97
  %18 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> <i8 -62, i8 -60, i8 -58, i8 -56, i8 -54, i8 -52, i8 -50, i8 -48, i8 -46, i8 -44, i8 -42, i8 -40, i8 -38, i8 -36, i8 -34, i8 -32>, <16 x i8>* %18, align 1, !tbaa !3
  %19 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 113
  %20 = bitcast i8* %19 to <16 x i8>*
  store <16 x i8> <i8 -30, i8 -28, i8 -26, i8 -24, i8 -22, i8 -20, i8 -18, i8 -16, i8 -14, i8 -12, i8 -10, i8 -8, i8 -6, i8 -4, i8 -2, i8 0>, <16 x i8>* %20, align 1, !tbaa !3
  %21 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 129
  %22 = bitcast i8* %21 to <16 x i8>*
  store <16 x i8> <i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 16, i8 18, i8 20, i8 22, i8 24, i8 26, i8 28, i8 30, i8 32>, <16 x i8>* %22, align 1, !tbaa !3
  %23 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 145
  %24 = bitcast i8* %23 to <16 x i8>*
  store <16 x i8> <i8 34, i8 36, i8 38, i8 40, i8 42, i8 44, i8 46, i8 48, i8 50, i8 52, i8 54, i8 56, i8 58, i8 60, i8 62, i8 64>, <16 x i8>* %24, align 1, !tbaa !3
  %25 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 161
  %26 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> <i8 66, i8 68, i8 70, i8 72, i8 74, i8 76, i8 78, i8 80, i8 82, i8 84, i8 86, i8 88, i8 90, i8 92, i8 94, i8 96>, <16 x i8>* %26, align 1, !tbaa !3
  %27 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 177
  %28 = bitcast i8* %27 to <16 x i8>*
  store <16 x i8> <i8 98, i8 100, i8 102, i8 104, i8 106, i8 108, i8 110, i8 112, i8 114, i8 116, i8 118, i8 120, i8 122, i8 124, i8 126, i8 -128>, <16 x i8>* %28, align 1, !tbaa !3
  %29 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 193
  %30 = bitcast i8* %29 to <16 x i8>*
  store <16 x i8> <i8 -126, i8 -124, i8 -122, i8 -120, i8 -118, i8 -116, i8 -114, i8 -112, i8 -110, i8 -108, i8 -106, i8 -104, i8 -102, i8 -100, i8 -98, i8 -96>, <16 x i8>* %30, align 1, !tbaa !3
  %31 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 209
  %32 = bitcast i8* %31 to <16 x i8>*
  store <16 x i8> <i8 -94, i8 -92, i8 -90, i8 -88, i8 -86, i8 -84, i8 -82, i8 -80, i8 -78, i8 -76, i8 -74, i8 -72, i8 -70, i8 -68, i8 -66, i8 -64>, <16 x i8>* %32, align 1, !tbaa !3
  %33 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 225
  %34 = bitcast i8* %33 to <16 x i8>*
  store <16 x i8> <i8 -62, i8 -60, i8 -58, i8 -56, i8 -54, i8 -52, i8 -50, i8 -48, i8 -46, i8 -44, i8 -42, i8 -40, i8 -38, i8 -36, i8 -34, i8 -32>, <16 x i8>* %34, align 1, !tbaa !3
  %arrayidx1 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 241
  store i8 -30, i8* %arrayidx1, align 1, !tbaa !3
  %arrayidx1.1 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 242
  store i8 -28, i8* %arrayidx1.1, align 2, !tbaa !3
  %arrayidx1.2 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 243
  store i8 -26, i8* %arrayidx1.2, align 1, !tbaa !3
  %arrayidx1.3 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 244
  store i8 -24, i8* %arrayidx1.3, align 4, !tbaa !3
  %arrayidx1.4 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 245
  store i8 -22, i8* %arrayidx1.4, align 1, !tbaa !3
  %arrayidx1.5 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 246
  store i8 -20, i8* %arrayidx1.5, align 2, !tbaa !3
  %arrayidx1.6 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 247
  store i8 -18, i8* %arrayidx1.6, align 1, !tbaa !3
  %arrayidx1.7 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 248
  store i8 -16, i8* %arrayidx1.7, align 8, !tbaa !3
  %arrayidx1.8 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 249
  store i8 -14, i8* %arrayidx1.8, align 1, !tbaa !3
  %arrayidx1.9 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 250
  store i8 -12, i8* %arrayidx1.9, align 2, !tbaa !3
  %arrayidx1.10 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 251
  store i8 -10, i8* %arrayidx1.10, align 1, !tbaa !3
  %arrayidx1.11 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 252
  store i8 -8, i8* %arrayidx1.11, align 4, !tbaa !3
  %arrayidx1.12 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 253
  store i8 -6, i8* %arrayidx1.12, align 1, !tbaa !3
  %arrayidx1.13 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 254
  store i8 -4, i8* %arrayidx1.13, align 2, !tbaa !3
  store i32 255, i32* %i, align 4, !tbaa !6
  %call2 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %0, i64 noundef 255) #13
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv4) #11
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call7 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %short_pkt, i8* noundef nonnull %0, i64 noundef 16) #13
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 361, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.105, i64 0, i64 0), i32 noundef %conv9) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %call13 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %subpkt) #13
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.106, i64 0, i64 0), i32 noundef %conv15) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false12
  %call19 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %subpkt) #13
  %call20 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0), i64 noundef %call19, i64 noundef 16) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %call23 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %subpkt, i32* noundef nonnull %i) #13
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 364, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.107, i64 0, i64 0), i32 noundef %conv25) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %35 = load i32, i32* %i, align 4, !tbaa !6
  %call29 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i32 noundef %35, i32 noundef 516) #11
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %call32 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %short_pkt, %struct.PACKET* noundef nonnull %subpkt) #13
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 366, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.108, i64 0, i64 0), i32 noundef %conv34) #11
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %call38 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %short_pkt) #13
  %call39 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0), i64 noundef %call38, i64 noundef 16) #11
  %tobool40.not = icmp ne i32 %call39, 0
  %spec.select = zext i1 %tobool40.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false37, %entry, %lor.lhs.false, %lor.lhs.false12, %lor.lhs.false18, %lor.lhs.false22, %lor.lhs.false28, %lor.lhs.false31
  %retval.0 = phi i32 [ 0, %lor.lhs.false31 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false37 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 255, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_get_length_prefixed_2() #0 {
entry:
  %buf1 = alloca [1024 x i8], align 16
  %i = alloca i32, align 4
  %pkt = alloca %struct.PACKET, align 8
  %short_pkt = alloca %struct.PACKET, align 8
  %subpkt = alloca %struct.PACKET, align 8
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #12
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %short_pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #12
  %4 = bitcast %struct.PACKET* %subpkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #12
  %call = call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 16) #11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next.3, %vector.body ]
  %vec.ind49 = phi <16 x i8> [ <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, %entry ], [ %vec.ind.next50.3, %vector.body ]
  %5 = shl <16 x i8> %vec.ind49, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf1, i64 0, i64 %index
  %7 = bitcast i8* %6 to <16 x i8>*
  store <16 x i8> %5, <16 x i8>* %7, align 16, !tbaa !3
  %index.next = or i64 %index, 16
  %vec.ind.next50 = shl <16 x i8> %vec.ind49, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %8 = add <16 x i8> %vec.ind.next50, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf1, i64 0, i64 %index.next
  %10 = bitcast i8* %9 to <16 x i8>*
  store <16 x i8> %8, <16 x i8>* %10, align 16, !tbaa !3
  %index.next.1 = or i64 %index, 32
  %vec.ind.next50.1 = shl <16 x i8> %vec.ind49, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %11 = add <16 x i8> %vec.ind.next50.1, <i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64>
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf1, i64 0, i64 %index.next.1
  %13 = bitcast i8* %12 to <16 x i8>*
  store <16 x i8> %11, <16 x i8>* %13, align 16, !tbaa !3
  %index.next.2 = or i64 %index, 48
  %vec.ind.next50.2 = shl <16 x i8> %vec.ind49, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %14 = add <16 x i8> %vec.ind.next50.2, <i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96>
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf1, i64 0, i64 %index.next.2
  %16 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %14, <16 x i8>* %16, align 16, !tbaa !3
  %index.next.3 = add nuw nsw i64 %index, 64
  %vec.ind.next50.3 = add <16 x i8> %vec.ind49, <i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64>
  %17 = icmp eq i64 %index.next.3, 1024
  br i1 %17, label %for.end, label %vector.body, !llvm.loop !12

for.end:                                          ; preds = %vector.body
  store i32 1025, i32* %i, align 4, !tbaa !6
  %call1 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %0, i64 noundef 1024) #13
  %cmp2 = icmp ne i32 %call1, 0
  %conv3 = zext i1 %cmp2 to i32
  %call4 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 384, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.110, i64 0, i64 0), i32 noundef %conv3) #11
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %call6 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %short_pkt, i8* noundef nonnull %0, i64 noundef 516) #13
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 385, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.105, i64 0, i64 0), i32 noundef %conv8) #11
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %call12 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %subpkt) #13
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 386, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.111, i64 0, i64 0), i32 noundef %conv14) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false11
  %call18 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %subpkt) #13
  %call19 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 387, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0), i64 noundef %call18, i64 noundef 516) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call22 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %subpkt, i32* noundef nonnull %i) #13
  %cmp23 = icmp ne i32 %call22, 0
  %conv24 = zext i1 %cmp23 to i32
  %call25 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 388, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.107, i64 0, i64 0), i32 noundef %conv24) #11
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false21
  %18 = load i32, i32* %i, align 4, !tbaa !6
  %call28 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 389, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i64 0, i64 0), i32 noundef %18, i32 noundef 1544) #11
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %call31 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %short_pkt, %struct.PACKET* noundef nonnull %subpkt) #13
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 390, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.113, i64 0, i64 0), i32 noundef %conv33) #11
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false30
  %call37 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %short_pkt) #13
  %call38 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 391, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0), i64 noundef %call37, i64 noundef 516) #11
  %tobool39.not = icmp ne i32 %call38, 0
  %spec.select = zext i1 %tobool39.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false36, %for.end, %lor.lhs.false, %lor.lhs.false11, %lor.lhs.false17, %lor.lhs.false21, %lor.lhs.false27, %lor.lhs.false30
  %retval.0 = phi i32 [ 0, %lor.lhs.false30 ], [ 0, %lor.lhs.false27 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false ], [ 0, %for.end ], [ %spec.select, %lor.lhs.false36 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_get_length_prefixed_3() #0 {
entry:
  %buf1 = alloca [1024 x i8], align 16
  %i = alloca i32, align 4
  %pkt = alloca %struct.PACKET, align 8
  %short_pkt = alloca %struct.PACKET, align 8
  %subpkt = alloca %struct.PACKET, align 8
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #12
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %short_pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #12
  %4 = bitcast %struct.PACKET* %subpkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #12
  %call = call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 16) #11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next.3, %vector.body ]
  %vec.ind48 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %entry ], [ %vec.ind.next49.3, %vector.body ]
  %5 = shl <16 x i8> %vec.ind48, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf1, i64 0, i64 %index
  %7 = bitcast i8* %6 to <16 x i8>*
  store <16 x i8> %5, <16 x i8>* %7, align 16, !tbaa !3
  %index.next = or i64 %index, 16
  %vec.ind.next49 = shl <16 x i8> %vec.ind48, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %8 = add <16 x i8> %vec.ind.next49, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf1, i64 0, i64 %index.next
  %10 = bitcast i8* %9 to <16 x i8>*
  store <16 x i8> %8, <16 x i8>* %10, align 16, !tbaa !3
  %index.next.1 = or i64 %index, 32
  %vec.ind.next49.1 = shl <16 x i8> %vec.ind48, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %11 = add <16 x i8> %vec.ind.next49.1, <i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64>
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf1, i64 0, i64 %index.next.1
  %13 = bitcast i8* %12 to <16 x i8>*
  store <16 x i8> %11, <16 x i8>* %13, align 16, !tbaa !3
  %index.next.2 = or i64 %index, 48
  %vec.ind.next49.2 = shl <16 x i8> %vec.ind48, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %14 = add <16 x i8> %vec.ind.next49.2, <i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96>
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf1, i64 0, i64 %index.next.2
  %16 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %14, <16 x i8>* %16, align 16, !tbaa !3
  %index.next.3 = add nuw nsw i64 %index, 64
  %vec.ind.next49.3 = add <16 x i8> %vec.ind48, <i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64>
  %17 = icmp eq i64 %index.next.3, 1024
  br i1 %17, label %for.end, label %vector.body, !llvm.loop !15

for.end:                                          ; preds = %vector.body
  store i32 1024, i32* %i, align 4, !tbaa !6
  %call1 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %0, i64 noundef 1024) #13
  %cmp2 = icmp ne i32 %call1, 0
  %conv3 = zext i1 %cmp2 to i32
  %call4 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 408, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.110, i64 0, i64 0), i32 noundef %conv3) #11
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %call6 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %short_pkt, i8* noundef nonnull %0, i64 noundef 516) #13
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 409, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.105, i64 0, i64 0), i32 noundef %conv8) #11
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %call12 = call fastcc i32 @PACKET_get_length_prefixed_3(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %subpkt) #13
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 410, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.114, i64 0, i64 0), i32 noundef %conv14) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false11
  %call18 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %subpkt) #13
  %call19 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 411, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0), i64 noundef %call18, i64 noundef 516) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call22 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %subpkt, i32* noundef nonnull %i) #13
  %cmp23 = icmp ne i32 %call22, 0
  %conv24 = zext i1 %cmp23 to i32
  %call25 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 412, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.107, i64 0, i64 0), i32 noundef %conv24) #11
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false21
  %18 = load i32, i32* %i, align 4, !tbaa !6
  %call28 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 413, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i64 0, i64 0), i32 noundef %18, i32 noundef 1544) #11
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %call31 = call fastcc i32 @PACKET_get_length_prefixed_3(%struct.PACKET* noundef nonnull %short_pkt, %struct.PACKET* noundef nonnull %subpkt) #13
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 414, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.115, i64 0, i64 0), i32 noundef %conv33) #11
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false30
  %call37 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %short_pkt) #13
  %call38 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 415, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0), i64 noundef %call37, i64 noundef 516) #11
  %tobool39.not = icmp ne i32 %call38, 0
  %spec.select = zext i1 %tobool39.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false36, %for.end, %lor.lhs.false, %lor.lhs.false11, %lor.lhs.false17, %lor.lhs.false21, %lor.lhs.false27, %lor.lhs.false30
  %retval.0 = phi i32 [ 0, %lor.lhs.false30 ], [ 0, %lor.lhs.false27 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false ], [ 0, %for.end ], [ %spec.select, %lor.lhs.false36 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_as_length_prefixed_1() #0 {
entry:
  %buf1 = alloca [255 x i8], align 16
  %pkt = alloca %struct.PACKET, align 8
  %exact_pkt = alloca %struct.PACKET, align 8
  %subpkt = alloca %struct.PACKET, align 8
  %0 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 255, i8* nonnull %0) #12
  %1 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %exact_pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %subpkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #12
  %call = call i8* @memset(i8* noundef nonnull %3, i32 noundef 0, i64 noundef 16) #11
  store i8 16, i8* %0, align 16, !tbaa !3
  %4 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 1
  %5 = bitcast i8* %4 to <16 x i8>*
  store <16 x i8> <i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 16, i8 18, i8 20, i8 22, i8 24, i8 26, i8 28, i8 30, i8 32>, <16 x i8>* %5, align 1, !tbaa !3
  %6 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 17
  %7 = bitcast i8* %6 to <16 x i8>*
  store <16 x i8> <i8 34, i8 36, i8 38, i8 40, i8 42, i8 44, i8 46, i8 48, i8 50, i8 52, i8 54, i8 56, i8 58, i8 60, i8 62, i8 64>, <16 x i8>* %7, align 1, !tbaa !3
  %8 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 33
  %9 = bitcast i8* %8 to <16 x i8>*
  store <16 x i8> <i8 66, i8 68, i8 70, i8 72, i8 74, i8 76, i8 78, i8 80, i8 82, i8 84, i8 86, i8 88, i8 90, i8 92, i8 94, i8 96>, <16 x i8>* %9, align 1, !tbaa !3
  %10 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 49
  %11 = bitcast i8* %10 to <16 x i8>*
  store <16 x i8> <i8 98, i8 100, i8 102, i8 104, i8 106, i8 108, i8 110, i8 112, i8 114, i8 116, i8 118, i8 120, i8 122, i8 124, i8 126, i8 -128>, <16 x i8>* %11, align 1, !tbaa !3
  %12 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 65
  %13 = bitcast i8* %12 to <16 x i8>*
  store <16 x i8> <i8 -126, i8 -124, i8 -122, i8 -120, i8 -118, i8 -116, i8 -114, i8 -112, i8 -110, i8 -108, i8 -106, i8 -104, i8 -102, i8 -100, i8 -98, i8 -96>, <16 x i8>* %13, align 1, !tbaa !3
  %14 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 81
  %15 = bitcast i8* %14 to <16 x i8>*
  store <16 x i8> <i8 -94, i8 -92, i8 -90, i8 -88, i8 -86, i8 -84, i8 -82, i8 -80, i8 -78, i8 -76, i8 -74, i8 -72, i8 -70, i8 -68, i8 -66, i8 -64>, <16 x i8>* %15, align 1, !tbaa !3
  %16 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 97
  %17 = bitcast i8* %16 to <16 x i8>*
  store <16 x i8> <i8 -62, i8 -60, i8 -58, i8 -56, i8 -54, i8 -52, i8 -50, i8 -48, i8 -46, i8 -44, i8 -42, i8 -40, i8 -38, i8 -36, i8 -34, i8 -32>, <16 x i8>* %17, align 1, !tbaa !3
  %18 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 113
  %19 = bitcast i8* %18 to <16 x i8>*
  store <16 x i8> <i8 -30, i8 -28, i8 -26, i8 -24, i8 -22, i8 -20, i8 -18, i8 -16, i8 -14, i8 -12, i8 -10, i8 -8, i8 -6, i8 -4, i8 -2, i8 0>, <16 x i8>* %19, align 1, !tbaa !3
  %20 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 129
  %21 = bitcast i8* %20 to <16 x i8>*
  store <16 x i8> <i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 16, i8 18, i8 20, i8 22, i8 24, i8 26, i8 28, i8 30, i8 32>, <16 x i8>* %21, align 1, !tbaa !3
  %22 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 145
  %23 = bitcast i8* %22 to <16 x i8>*
  store <16 x i8> <i8 34, i8 36, i8 38, i8 40, i8 42, i8 44, i8 46, i8 48, i8 50, i8 52, i8 54, i8 56, i8 58, i8 60, i8 62, i8 64>, <16 x i8>* %23, align 1, !tbaa !3
  %24 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 161
  %25 = bitcast i8* %24 to <16 x i8>*
  store <16 x i8> <i8 66, i8 68, i8 70, i8 72, i8 74, i8 76, i8 78, i8 80, i8 82, i8 84, i8 86, i8 88, i8 90, i8 92, i8 94, i8 96>, <16 x i8>* %25, align 1, !tbaa !3
  %26 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 177
  %27 = bitcast i8* %26 to <16 x i8>*
  store <16 x i8> <i8 98, i8 100, i8 102, i8 104, i8 106, i8 108, i8 110, i8 112, i8 114, i8 116, i8 118, i8 120, i8 122, i8 124, i8 126, i8 -128>, <16 x i8>* %27, align 1, !tbaa !3
  %28 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 193
  %29 = bitcast i8* %28 to <16 x i8>*
  store <16 x i8> <i8 -126, i8 -124, i8 -122, i8 -120, i8 -118, i8 -116, i8 -114, i8 -112, i8 -110, i8 -108, i8 -106, i8 -104, i8 -102, i8 -100, i8 -98, i8 -96>, <16 x i8>* %29, align 1, !tbaa !3
  %30 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 209
  %31 = bitcast i8* %30 to <16 x i8>*
  store <16 x i8> <i8 -94, i8 -92, i8 -90, i8 -88, i8 -86, i8 -84, i8 -82, i8 -80, i8 -78, i8 -76, i8 -74, i8 -72, i8 -70, i8 -68, i8 -66, i8 -64>, <16 x i8>* %31, align 1, !tbaa !3
  %32 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 225
  %33 = bitcast i8* %32 to <16 x i8>*
  store <16 x i8> <i8 -62, i8 -60, i8 -58, i8 -56, i8 -54, i8 -52, i8 -50, i8 -48, i8 -46, i8 -44, i8 -42, i8 -40, i8 -38, i8 -36, i8 -34, i8 -32>, <16 x i8>* %33, align 1, !tbaa !3
  %arrayidx1 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 241
  store i8 -30, i8* %arrayidx1, align 1, !tbaa !3
  %arrayidx1.1 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 242
  store i8 -28, i8* %arrayidx1.1, align 2, !tbaa !3
  %arrayidx1.2 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 243
  store i8 -26, i8* %arrayidx1.2, align 1, !tbaa !3
  %arrayidx1.3 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 244
  store i8 -24, i8* %arrayidx1.3, align 4, !tbaa !3
  %arrayidx1.4 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 245
  store i8 -22, i8* %arrayidx1.4, align 1, !tbaa !3
  %arrayidx1.5 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 246
  store i8 -20, i8* %arrayidx1.5, align 2, !tbaa !3
  %arrayidx1.6 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 247
  store i8 -18, i8* %arrayidx1.6, align 1, !tbaa !3
  %arrayidx1.7 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 248
  store i8 -16, i8* %arrayidx1.7, align 8, !tbaa !3
  %arrayidx1.8 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 249
  store i8 -14, i8* %arrayidx1.8, align 1, !tbaa !3
  %arrayidx1.9 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 250
  store i8 -12, i8* %arrayidx1.9, align 2, !tbaa !3
  %arrayidx1.10 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 251
  store i8 -10, i8* %arrayidx1.10, align 1, !tbaa !3
  %arrayidx1.11 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 252
  store i8 -8, i8* %arrayidx1.11, align 4, !tbaa !3
  %arrayidx1.12 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 253
  store i8 -6, i8* %arrayidx1.12, align 1, !tbaa !3
  %arrayidx1.13 = getelementptr inbounds [255 x i8], [255 x i8]* %buf1, i64 0, i64 254
  store i8 -4, i8* %arrayidx1.13, align 2, !tbaa !3
  %call2 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %0, i64 noundef 255) #13
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 433, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv4) #11
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call7 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %exact_pkt, i8* noundef nonnull %0, i64 noundef 17) #13
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 434, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.116, i64 0, i64 0), i32 noundef %conv9) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %call13 = call fastcc i32 @PACKET_as_length_prefixed_1(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %subpkt) #13
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 435, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.117, i64 0, i64 0), i32 noundef %conv15) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false12
  %call19 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %call20 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 436, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i64 noundef %call19, i64 noundef 255) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %call23 = call fastcc i32 @PACKET_as_length_prefixed_1(%struct.PACKET* noundef nonnull %exact_pkt, %struct.PACKET* noundef nonnull %subpkt) #13
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 437, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.118, i64 0, i64 0), i32 noundef %conv25) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %call29 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %exact_pkt) #13
  %call30 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 438, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i64 noundef %call29, i64 noundef 0) #11
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %call33 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %subpkt) #13
  %call34 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 439, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0), i64 noundef %call33, i64 noundef 16) #11
  %tobool35.not = icmp ne i32 %call34, 0
  %spec.select = zext i1 %tobool35.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false32, %entry, %lor.lhs.false, %lor.lhs.false12, %lor.lhs.false18, %lor.lhs.false22, %lor.lhs.false28
  %retval.0 = phi i32 [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false32 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 255, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PACKET_as_length_prefixed_2() #0 {
entry:
  %buf = alloca [1024 x i8], align 16
  %pkt = alloca %struct.PACKET, align 8
  %exact_pkt = alloca %struct.PACKET, align 8
  %subpkt = alloca %struct.PACKET, align 8
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #12
  %1 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %exact_pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %subpkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #12
  %call = call i8* @memset(i8* noundef nonnull %3, i32 noundef 0, i64 noundef 16) #11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next.3, %vector.body ]
  %vec.ind48 = phi <16 x i8> [ <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, %entry ], [ %vec.ind.next49.3, %vector.body ]
  %4 = shl <16 x i8> %vec.ind48, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 %index
  %6 = bitcast i8* %5 to <16 x i8>*
  store <16 x i8> %4, <16 x i8>* %6, align 16, !tbaa !3
  %index.next = or i64 %index, 16
  %vec.ind.next49 = shl <16 x i8> %vec.ind48, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %7 = add <16 x i8> %vec.ind.next49, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 %index.next
  %9 = bitcast i8* %8 to <16 x i8>*
  store <16 x i8> %7, <16 x i8>* %9, align 16, !tbaa !3
  %index.next.1 = or i64 %index, 32
  %vec.ind.next49.1 = shl <16 x i8> %vec.ind48, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %10 = add <16 x i8> %vec.ind.next49.1, <i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64>
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 %index.next.1
  %12 = bitcast i8* %11 to <16 x i8>*
  store <16 x i8> %10, <16 x i8>* %12, align 16, !tbaa !3
  %index.next.2 = or i64 %index, 48
  %vec.ind.next49.2 = shl <16 x i8> %vec.ind48, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %13 = add <16 x i8> %vec.ind.next49.2, <i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96>
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 %index.next.2
  %15 = bitcast i8* %14 to <16 x i8>*
  store <16 x i8> %13, <16 x i8>* %15, align 16, !tbaa !3
  %index.next.3 = add nuw nsw i64 %index, 64
  %vec.ind.next49.3 = add <16 x i8> %vec.ind48, <i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64>
  %16 = icmp eq i64 %index.next.3, 1024
  br i1 %16, label %for.end, label %vector.body, !llvm.loop !16

for.end:                                          ; preds = %vector.body
  %call1 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %0, i64 noundef 1024) #13
  %cmp2 = icmp ne i32 %call1, 0
  %conv3 = zext i1 %cmp2 to i32
  %call4 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 456, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.120, i64 0, i64 0), i32 noundef %conv3) #11
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %call6 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %exact_pkt, i8* noundef nonnull %0, i64 noundef 518) #13
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 457, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.121, i64 0, i64 0), i32 noundef %conv8) #11
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %call12 = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %subpkt) #13
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 458, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.122, i64 0, i64 0), i32 noundef %conv14) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false11
  %call18 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %call19 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 459, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0), i64 noundef %call18, i64 noundef 1024) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call22 = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef nonnull %exact_pkt, %struct.PACKET* noundef nonnull %subpkt) #13
  %cmp23 = icmp ne i32 %call22, 0
  %conv24 = zext i1 %cmp23 to i32
  %call25 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 460, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.124, i64 0, i64 0), i32 noundef %conv24) #11
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false21
  %call28 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %exact_pkt) #13
  %call29 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 461, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i64 noundef %call28, i64 noundef 0) #11
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %call32 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %subpkt) #13
  %call33 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef 462, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0), i64 noundef %call32, i64 noundef 516) #11
  %tobool34.not = icmp ne i32 %call33, 0
  %spec.select = zext i1 %tobool34.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false31, %for.end, %lor.lhs.false, %lor.lhs.false11, %lor.lhs.false17, %lor.lhs.false21, %lor.lhs.false27
  %retval.0 = phi i32 [ 0, %lor.lhs.false27 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false ], [ 0, %for.end ], [ %spec.select, %lor.lhs.false31 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc i32 @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #3 {
entry:
  %cmp = icmp slt i64 %len, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !17
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !19
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #4 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !19
  ret i64 %0
}

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @PACKET_null_init(%struct.PACKET* nocapture noundef writeonly %pkt) unnamed_addr #3 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* null, i8** %curr, align 8, !tbaa !17
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 0, i64* %remaining, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #5 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !17
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !17
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !19
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !19
  ret void
}

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @PACKET_end(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #4 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !17
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  ret i8* %add.ptr
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_equal(%struct.PACKET* nocapture noundef readonly %pkt, i8* noundef %ptr, i64 noundef %num) unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp.not = icmp eq i64 %call, %num
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !17
  %call1 = tail call i32 @CRYPTO_memcmp(i8* noundef %0, i8* noundef %ptr, i64 noundef %num) #11
  %cmp2 = icmp eq i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_1(%struct.PACKET* noundef %pkt, i32* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 1) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_uint_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !17
  %1 = load i8, i8* %0, align 1, !tbaa !3
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_4(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_4(%struct.PACKET* noundef %pkt, i64* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 4) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_ulong_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_4(%struct.PACKET* nocapture noundef readonly %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, 4
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !17
  %1 = load i8, i8* %0, align 1, !tbaa !3
  %conv = zext i8 %1 to i64
  store i64 %conv, i64* %data, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !3
  %conv2 = zext i8 %2 to i64
  %shl = shl nuw nsw i64 %conv2, 8
  %or = or i64 %shl, %conv
  store i64 %or, i64* %data, align 8, !tbaa !8
  %add.ptr4 = getelementptr inbounds i8, i8* %0, i64 2
  %3 = load i8, i8* %add.ptr4, align 1, !tbaa !3
  %conv5 = zext i8 %3 to i64
  %shl6 = shl nuw nsw i64 %conv5, 16
  %or7 = or i64 %shl6, %or
  store i64 %or7, i64* %data, align 8, !tbaa !8
  %add.ptr9 = getelementptr inbounds i8, i8* %0, i64 3
  %4 = load i8, i8* %add.ptr9, align 1, !tbaa !3
  %conv10 = zext i8 %4 to i64
  %shl11 = shl nuw nsw i64 %conv10, 24
  %or12 = or i64 %shl11, %or7
  store i64 %or12, i64* %data, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_2(%struct.PACKET* noundef %pkt, i32* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 2) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !17
  %1 = load i8, i8* %0, align 1, !tbaa !3
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %data, align 4, !tbaa !6
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !3
  %conv2 = zext i8 %2 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %data, align 4, !tbaa !6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_3(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_3(%struct.PACKET* noundef %pkt, i64* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 3) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_3(%struct.PACKET* nocapture noundef readonly %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, 3
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !17
  %1 = load i8, i8* %0, align 1, !tbaa !3
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 16
  store i64 %shl, i64* %data, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !3
  %conv2 = zext i8 %2 to i64
  %shl3 = shl nuw nsw i64 %conv2, 8
  %or = or i64 %shl3, %shl
  store i64 %or, i64* %data, align 8, !tbaa !8
  %add.ptr5 = getelementptr inbounds i8, i8* %0, i64 2
  %3 = load i8, i8* %add.ptr5, align 1, !tbaa !3
  %conv6 = zext i8 %3 to i64
  %or7 = or i64 %or, %conv6
  store i64 %or7, i64* %data, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_4(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_4(%struct.PACKET* noundef %pkt, i64* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 4) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_4(%struct.PACKET* nocapture noundef readonly %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, 4
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !17
  %1 = load i8, i8* %0, align 1, !tbaa !3
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 24
  store i64 %shl, i64* %data, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !3
  %conv2 = zext i8 %2 to i64
  %shl3 = shl nuw nsw i64 %conv2, 16
  %or = or i64 %shl3, %shl
  store i64 %or, i64* %data, align 8, !tbaa !8
  %add.ptr5 = getelementptr inbounds i8, i8* %0, i64 2
  %3 = load i8, i8* %add.ptr5, align 1, !tbaa !3
  %conv6 = zext i8 %3 to i64
  %shl7 = shl nuw nsw i64 %conv6, 8
  %or8 = or i64 %shl7, %or
  store i64 %or8, i64* %data, align 8, !tbaa !8
  %add.ptr10 = getelementptr inbounds i8, i8* %0, i64 3
  %4 = load i8, i8* %add.ptr10, align 1, !tbaa !3
  %conv11 = zext i8 %4 to i64
  %or12 = or i64 %or8, %conv11
  store i64 %or12, i64* %data, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_sub_packet(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_sub_packet(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef %subpkt) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 4) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_sub_packet(%struct.PACKET* nocapture noundef readonly %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, 4
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !17
  %call1 = tail call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef %subpkt, i8* noundef %0, i64 noundef 4) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_bytes(%struct.PACKET* nocapture noundef %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_bytes(%struct.PACKET* noundef %pkt, i8** noundef %data, i64 noundef %len) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_uchar_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !17
  store i8* %0, i8** %data, align 8, !tbaa !10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_copy_bytes(%struct.PACKET* nocapture noundef %pkt, i8* noundef %data) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_copy_bytes(%struct.PACKET* noundef %pkt, i8* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 4) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_char_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef signext, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_peek_copy_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8* noundef %data) unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, 4
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !17
  %call1 = tail call i8* @memcpy(i8* noundef %data, i8* noundef %0, i64 noundef 4) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_copy_all(%struct.PACKET* nocapture noundef readonly %pkt, i8* noundef %dest, i64 noundef %dest_len, i64* nocapture noundef writeonly %len) unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ugt i64 %call, %dest_len
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %len, align 8, !tbaa !8
  br label %return

if.end:                                           ; preds = %entry
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !19
  store i64 %0, i64* %len, align 8, !tbaa !8
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %1 = load i8*, i8** %curr, align 8, !tbaa !17
  %2 = load i64, i64* %remaining, align 8, !tbaa !19
  %call2 = tail call i8* @memcpy(i8* noundef %dest, i8* noundef %1, i64 noundef %2) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_memdup(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef %data, i64* nocapture noundef writeonly %len) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %data, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.92, i64 0, i64 0), i32 noundef 421) #11
  store i8* null, i8** %data, align 8, !tbaa !10
  store i64 0, i64* %len, align 8, !tbaa !8
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %1 = load i8*, i8** %curr, align 8, !tbaa !17
  %call1 = tail call i8* @CRYPTO_memdup(i8* noundef %1, i64 noundef %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.92, i64 0, i64 0), i32 noundef 430) #11
  store i8* %call1, i8** %data, align 8, !tbaa !10
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  store i64 %call, i64* %len, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @PACKET_data(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #4 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !17
  ret i8* %0
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_strndup(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef %data) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %data, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.92, i64 0, i64 0), i32 noundef 450) #11
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %1 = load i8*, i8** %curr, align 8, !tbaa !17
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %call1 = tail call i8* @CRYPTO_strndup(i8* noundef %1, i64 noundef %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.92, i64 0, i64 0), i32 noundef 453) #11
  store i8* %call1, i8** %data, align 8, !tbaa !10
  %cmp = icmp ne i8* %call1, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #7

declare dso_local i32 @test_strn_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i32 @PACKET_contains_zero_byte(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #8 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !17
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !19
  %call = tail call i8* @memchr(i8* noundef %0, i32 noundef 0, i64 noundef %1) #14
  %cmp = icmp ne i8* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #9 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !20
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !6
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %5 = load i8*, i8** %data, align 8, !tbaa !10
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !17
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #9 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !20
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !6
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %5 = load i8*, i8** %data, align 8, !tbaa !10
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !17
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_3(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #9 {
entry:
  %length = alloca i64, align 8
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !20
  %call = call fastcc i32 @PACKET_get_net_3(%struct.PACKET* noundef nonnull %tmp, i64* noundef nonnull %length) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %length, align 8, !tbaa !8
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %4) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %5 = load i8*, i8** %data, align 8, !tbaa !10
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !17
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %4, i64* %remaining, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_as_length_prefixed_1(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #9 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !20
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !6
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %tmp) #13
  %cmp.not = icmp eq i64 %call4, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %5 = load i8*, i8** %data, align 8, !tbaa !10
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !17
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #9 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !20
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !6
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %tmp) #13
  %cmp.not = icmp eq i64 %call4, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %5 = load i8*, i8** %data, align 8, !tbaa !10
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !17
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = !{!18, !11, i64 0}
!18 = !{!"", !11, i64 0, !9, i64 8}
!19 = !{!18, !9, i64 8}
!20 = !{i64 0, i64 8, !10, i64 8, i64 8, !8}

; ModuleID = 'test/ssl_old_test.c'
source_filename = "test/ssl_old_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.app_verify_arg = type { i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bio_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.ssl_session_st = type opaque
%struct.protocol_versions = type { i8*, i32 }
%struct.ossl_provider_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ssl_conf_ctx_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.stack_st = type opaque
%struct.comp_method_st = type opaque
%struct.stack_st_SSL_COMP = type opaque
%struct.ssl_comp_st = type opaque
%struct.ssl_method_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ssl_st = type opaque
%struct.x509_store_ctx_st = type opaque
%struct.x509_st = type opaque
%struct.X509_name_st = type opaque
%struct.bio_method_st = type opaque
%struct.ssl_cipher_st = type opaque
%struct.bignum_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"Test Callback Argument\00", align 1
@__const.main.app_verify_arg = private unnamed_addr constant %struct.app_verify_arg { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 0 }, align 8
@verbose = internal unnamed_addr global i1 false, align 4
@debug = internal unnamed_addr global i1 false, align 4
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@bio_stdout = internal unnamed_addr global %struct.bio_st* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"-s_\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-c_\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-F\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"not compiled with FIPS support, so exiting without running.\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"-server_auth\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"-client_auth\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"-reuse\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"-no_dhe\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"-dhe512\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"-dhe1024dsa\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"-no_ecdhe\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"-psk\00", align 1
@psk_key = internal unnamed_addr global i8* null, align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"abcdefABCDEF1234567890\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Not a hex number '%s'\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"-tls1_2\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"-tls1\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"-ssl3\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"-dtls1\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"-dtls12\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"-dtls\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"-num\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"-bytes\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"-cipher\00", align 1
@cipher = internal unnamed_addr global i8* null, align 8
@.str.26 = private unnamed_addr constant [14 x i8] c"-ciphersuites\00", align 1
@ciphersuites = internal unnamed_addr global i8* null, align 8
@.str.27 = private unnamed_addr constant [8 x i8] c"-CApath\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"-CAfile\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"-bio_pair\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"-ipv4\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"-ipv6\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"-time\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"-noct\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"-ct\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"-zlib\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"-app_verify\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"-npn_client\00", align 1
@npn_client = internal unnamed_addr global i1 false, align 4
@.str.39 = private unnamed_addr constant [12 x i8] c"-npn_server\00", align 1
@npn_server = internal unnamed_addr global i1 false, align 4
@.str.40 = private unnamed_addr constant [19 x i8] c"-npn_server_reject\00", align 1
@npn_server_reject = internal unnamed_addr global i1 false, align 4
@.str.41 = private unnamed_addr constant [16 x i8] c"-serverinfo_sct\00", align 1
@serverinfo_sct = internal unnamed_addr global i1 false, align 4
@.str.42 = private unnamed_addr constant [17 x i8] c"-serverinfo_tack\00", align 1
@serverinfo_tack = internal unnamed_addr global i1 false, align 4
@.str.43 = private unnamed_addr constant [17 x i8] c"-serverinfo_file\00", align 1
@serverinfo_file = internal unnamed_addr global i8* null, align 8
@.str.44 = private unnamed_addr constant [12 x i8] c"-custom_ext\00", align 1
@custom_ext = internal unnamed_addr global i1 false, align 4
@.str.45 = private unnamed_addr constant [13 x i8] c"-alpn_client\00", align 1
@alpn_client = internal unnamed_addr global i8* null, align 8
@.str.46 = private unnamed_addr constant [13 x i8] c"-alpn_server\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"-alpn_server1\00", align 1
@alpn_server = internal unnamed_addr global i8* null, align 8
@.str.48 = private unnamed_addr constant [14 x i8] c"-alpn_server2\00", align 1
@alpn_server2 = internal unnamed_addr global i8* null, align 8
@.str.49 = private unnamed_addr constant [15 x i8] c"-alpn_expected\00", align 1
@alpn_expected = internal unnamed_addr global i8* null, align 8
@.str.50 = private unnamed_addr constant [18 x i8] c"-server_min_proto\00", align 1
@server_min_proto = internal unnamed_addr global i8* null, align 8
@.str.51 = private unnamed_addr constant [18 x i8] c"-server_max_proto\00", align 1
@server_max_proto = internal unnamed_addr global i8* null, align 8
@.str.52 = private unnamed_addr constant [18 x i8] c"-client_min_proto\00", align 1
@client_min_proto = internal unnamed_addr global i8* null, align 8
@.str.53 = private unnamed_addr constant [18 x i8] c"-client_max_proto\00", align 1
@client_max_proto = internal unnamed_addr global i8* null, align 8
@.str.54 = private unnamed_addr constant [18 x i8] c"-should_negotiate\00", align 1
@should_negotiate = internal unnamed_addr global i8* null, align 8
@.str.55 = private unnamed_addr constant [11 x i8] c"-sn_client\00", align 1
@sn_client = internal unnamed_addr global i8* null, align 8
@.str.56 = private unnamed_addr constant [12 x i8] c"-sn_server1\00", align 1
@sn_server1 = internal unnamed_addr global i8* null, align 8
@.str.57 = private unnamed_addr constant [12 x i8] c"-sn_server2\00", align 1
@sn_server2 = internal unnamed_addr global i8* null, align 8
@.str.58 = private unnamed_addr constant [12 x i8] c"-sn_expect1\00", align 1
@sn_expect = internal unnamed_addr global i32 0, align 4
@.str.59 = private unnamed_addr constant [12 x i8] c"-sn_expect2\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"-server_sess_out\00", align 1
@server_sess_out = internal unnamed_addr global i8* null, align 8
@.str.61 = private unnamed_addr constant [16 x i8] c"-server_sess_in\00", align 1
@server_sess_in = internal unnamed_addr global i8* null, align 8
@.str.62 = private unnamed_addr constant [17 x i8] c"-client_sess_out\00", align 1
@client_sess_out = internal unnamed_addr global i8* null, align 8
@.str.63 = private unnamed_addr constant [16 x i8] c"-client_sess_in\00", align 1
@client_sess_in = internal unnamed_addr global i8* null, align 8
@.str.64 = private unnamed_addr constant [14 x i8] c"-should_reuse\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"-no_ticket\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"-provider\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"-config\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"Missing argument for %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"Error with command %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"unknown option %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [85 x i8] c"At most one of -ssl3, -tls1, -tls1_2, -dtls, -dtls1 or -dtls12 should be requested.\0A\00", align 1
@.str.72 = private unnamed_addr constant [64 x i8] c"Testing was requested for a disabled protocol. Skipping tests.\0A\00", align 1
@.str.73 = private unnamed_addr constant [185 x i8] c"This case cannot work.  Use -f to perform the test anyway (and\0A-d to see what happens), or add one of -ssl3, -tls1, -tls1_2, -dtls, -dtls1, -dtls12, -reuse\0Ato avoid protocol mismatch.\0A\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"Using BIO pair (-bio_pair)\0A\00", align 1
@.str.75 = private unnamed_addr constant [70 x i8] c"Warning: For accurate timings, use more connections (e.g. -num 1000)\0A\00", align 1
@.str.76 = private unnamed_addr constant [34 x i8] c"Failed to add compression method\0A\00", align 1
@.str.77 = private unnamed_addr constant [39 x i8] c"Warning: %s compression not supported\0A\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"zlib\00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"Available compression methods:\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"  %s:%d\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@s_ctx = internal unnamed_addr global %struct.ssl_ctx_st* null, align 8
@s_ctx2 = internal unnamed_addr global %struct.ssl_ctx_st* null, align 8
@.str.83 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.84 = private unnamed_addr constant [42 x i8] c"CLEARING ALL TLSv1.2 CIPHERS SHOULD FAIL\0A\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"Error processing %s %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [25 x i8] c"Error finishing context\0A\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"Error getting DH parameters\0A\00", align 1
@.str.88 = private unnamed_addr constant [23 x i8] c"client authentication\0A\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"server authentication\0A\00", align 1
@.str.90 = private unnamed_addr constant [36 x i8] c"setting PSK identity hint to s_ctx\0A\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"ctx server identity_hint\00", align 1
@.str.92 = private unnamed_addr constant [42 x i8] c"error setting PSK identity hint to s_ctx\0A\00", align 1
@.str.93 = private unnamed_addr constant [52 x i8] c"Can't have both -npn_server and -npn_server_reject\0A\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"Error adding SCT extension\0A\00", align 1
@.str.95 = private unnamed_addr constant [29 x i8] c"Error adding TACK extension\0A\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"missing serverinfo file\0A\00", align 1
@.str.97 = private unnamed_addr constant [33 x i8] c"Error setting custom extensions\0A\00", align 1
@.str.98 = private unnamed_addr constant [37 x i8] c"Error parsing -alpn_client argument\0A\00", align 1
@.str.99 = private unnamed_addr constant [20 x i8] c"Error setting ALPN\0A\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"test/ssl_old_test.c\00", align 1
@server_sess = internal unnamed_addr global %struct.ssl_session_st* null, align 8
@client_sess = internal unnamed_addr global %struct.ssl_session_st* null, align 8
@.str.101 = private unnamed_addr constant [26 x i8] c"Can't add server session\0A\00", align 1
@.str.102 = private unnamed_addr constant [31 x i8] c"Doing handshakes=%d bytes=%ld\0A\00", align 1
@.str.103 = private unnamed_addr constant [23 x i8] c"Failed to set session\0A\00", align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"Can't set client session\0A\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"fail-server\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"fail-client\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"Error parsing: %s\0A\00", align 1
@.str.108 = private unnamed_addr constant [53 x i8] c"Unexpected version negotiated. Expected: %s, got %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [70 x i8] c"Unexpected session reuse state. Expected: %d, server: %d, client: %d\0A\00", align 1
@.str.110 = private unnamed_addr constant [79 x i8] c"Approximate total server time: %6.2f s\0AApproximate total client time: %6.2f s\0A\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"127.0.0.1:0\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"[::1]:0\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@.str.114 = private unnamed_addr constant [36 x i8] c"client waiting in SSL_connect - %s\0A\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"ERROR in CLIENT\0A\00", align 1
@.str.116 = private unnamed_addr constant [27 x i8] c"SSL CLIENT STARTUP FAILED\0A\00", align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"client wrote %d\0A\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"client read %d\0A\00", align 1
@.str.119 = private unnamed_addr constant [35 x i8] c"server waiting in SSL_accept - %s\0A\00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"ERROR in SERVER\0A\00", align 1
@.str.121 = private unnamed_addr constant [27 x i8] c"SSL SERVER STARTUP FAILED\0A\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"server wrote %d\0A\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"server read %d\0A\00", align 1
@.str.124 = private unnamed_addr constant [23 x i8] c"DONE via TCP connect: \00", align 1
@.str.125 = private unnamed_addr constant [26 x i8] c"Server info verify error\0A\00", align 1
@custom_ext_error = internal unnamed_addr global i1 false, align 4
@.str.126 = private unnamed_addr constant [24 x i8] c"Custom extension error\0A\00", align 1
@doit_biopair.prev_progress = internal unnamed_addr global i32 1, align 4
@.str.127 = private unnamed_addr constant [70 x i8] c"ERROR: BIO_write could not write BIO_ctrl_get_write_guarantee() bytes\00", align 1
@.str.128 = private unnamed_addr constant [25 x i8] c"C->S relaying: %d bytes\0A\00", align 1
@.str.129 = private unnamed_addr constant [25 x i8] c"S->C relaying: %d bytes\0A\00", align 1
@.str.130 = private unnamed_addr constant [56 x i8] c"ERROR: BIO_read could not read BIO_ctrl_pending() bytes\00", align 1
@.str.131 = private unnamed_addr constant [55 x i8] c"ERROR: BIO_nwrite() did not accept BIO_nwrite0() bytes\00", align 1
@.str.132 = private unnamed_addr constant [18 x i8] c"ERROR: got stuck\0A\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c" ERROR.\0A\00", align 1
@.str.134 = private unnamed_addr constant [20 x i8] c"DONE via BIO pair: \00", align 1
@.str.135 = private unnamed_addr constant [18 x i8] c"ERROR IN STARTUP\0A\00", align 1
@.str.136 = private unnamed_addr constant [39 x i8] c"SSL SERVER STARTUP FAILED in SSL_read\0A\00", align 1
@.str.137 = private unnamed_addr constant [40 x i8] c"SSL SERVER STARTUP FAILED in SSL_write\0A\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"DONE: \00", align 1
@.str.139 = private unnamed_addr constant [27 x i8] c"usage: ssltest [args ...]\0A\00", align 1
@.str.140 = private unnamed_addr constant [43 x i8] c" -server_auth  - check server certificate\0A\00", align 1
@.str.141 = private unnamed_addr constant [43 x i8] c" -client_auth  - do client authentication\0A\00", align 1
@.str.142 = private unnamed_addr constant [30 x i8] c" -v            - more output\0A\00", align 1
@.str.143 = private unnamed_addr constant [31 x i8] c" -d            - debug output\0A\00", align 1
@.str.144 = private unnamed_addr constant [39 x i8] c" -reuse        - use session-id reuse\0A\00", align 1
@.str.145 = private unnamed_addr constant [51 x i8] c" -num <val>    - number of connections to perform\0A\00", align 1
@.str.146 = private unnamed_addr constant [64 x i8] c" -bytes <val>  - number of bytes to swap between client/server\0A\00", align 1
@.str.147 = private unnamed_addr constant [60 x i8] c" -dhe512       - use 512 bit key for DHE (to test failure)\0A\00", align 1
@.str.148 = private unnamed_addr constant [73 x i8] c" -dhe1024      - use 1024 bit key (safe prime) for DHE (default, no-op)\0A\00", align 1
@.str.149 = private unnamed_addr constant [67 x i8] c" -dhe1024dsa   - use 1024 bit key (with 160-bit subprime) for DHE\0A\00", align 1
@.str.150 = private unnamed_addr constant [30 x i8] c" -no_dhe       - disable DHE\0A\00", align 1
@.str.151 = private unnamed_addr constant [32 x i8] c" -no_ecdhe     - disable ECDHE\0A\00", align 1
@.str.152 = private unnamed_addr constant [42 x i8] c" -psk arg      - PSK in hex (without 0x)\0A\00", align 1
@.str.153 = private unnamed_addr constant [28 x i8] c" -tls1         - use TLSv1\0A\00", align 1
@.str.154 = private unnamed_addr constant [27 x i8] c" -dtls         - use DTLS\0A\00", align 1
@.str.155 = private unnamed_addr constant [29 x i8] c" -dtls1        - use DTLSv1\0A\00", align 1
@.str.156 = private unnamed_addr constant [31 x i8] c" -dtls12       - use DTLSv1.2\0A\00", align 1
@.str.157 = private unnamed_addr constant [47 x i8] c" -CApath arg   - PEM format directory of CA's\0A\00", align 1
@.str.158 = private unnamed_addr constant [42 x i8] c" -CAfile arg   - PEM format file of CA's\0A\00", align 1
@.str.159 = private unnamed_addr constant [42 x i8] c" -cert arg     - Server certificate file\0A\00", align 1
@.str.160 = private unnamed_addr constant [59 x i8] c" -key arg      - Server key file (default: same as -cert)\0A\00", align 1
@.str.161 = private unnamed_addr constant [42 x i8] c" -c_cert arg   - Client certificate file\0A\00", align 1
@.str.162 = private unnamed_addr constant [61 x i8] c" -c_key arg    - Client key file (default: same as -c_cert)\0A\00", align 1
@.str.163 = private unnamed_addr constant [52 x i8] c" -cipher arg   - The TLSv1.2 and below cipher list\0A\00", align 1
@.str.164 = private unnamed_addr constant [49 x i8] c" -ciphersuites arg   - The TLSv1.3 ciphersuites\0A\00", align 1
@.str.165 = private unnamed_addr constant [32 x i8] c" -bio_pair     - Use BIO pairs\0A\00", align 1
@.str.166 = private unnamed_addr constant [51 x i8] c" -ipv4         - Use IPv4 connection on localhost\0A\00", align 1
@.str.167 = private unnamed_addr constant [51 x i8] c" -ipv6         - Use IPv6 connection on localhost\0A\00", align 1
@.str.168 = private unnamed_addr constant [50 x i8] c" -f            - Test even cases that can't work\0A\00", align 1
@.str.169 = private unnamed_addr constant [67 x i8] c" -time         - measure processor time used by client and server\0A\00", align 1
@.str.170 = private unnamed_addr constant [39 x i8] c" -zlib         - use zlib compression\0A\00", align 1
@.str.171 = private unnamed_addr constant [43 x i8] c" -npn_client - have client side offer NPN\0A\00", align 1
@.str.172 = private unnamed_addr constant [43 x i8] c" -npn_server - have server side offer NPN\0A\00", align 1
@.str.173 = private unnamed_addr constant [46 x i8] c" -npn_server_reject - have server reject NPN\0A\00", align 1
@.str.174 = private unnamed_addr constant [52 x i8] c" -serverinfo_file file - have server use this file\0A\00", align 1
@.str.175 = private unnamed_addr constant [54 x i8] c" -serverinfo_sct  - have client offer and expect SCT\0A\00", align 1
@.str.176 = private unnamed_addr constant [55 x i8] c" -serverinfo_tack - have client offer and expect TACK\0A\00", align 1
@.str.177 = private unnamed_addr constant [55 x i8] c" -custom_ext - try various custom extension callbacks\0A\00", align 1
@.str.178 = private unnamed_addr constant [54 x i8] c" -alpn_client <string> - have client side offer ALPN\0A\00", align 1
@.str.179 = private unnamed_addr constant [54 x i8] c" -alpn_server <string> - have server side offer ALPN\0A\00", align 1
@.str.180 = private unnamed_addr constant [50 x i8] c" -alpn_server1 <string> - alias for -alpn_server\0A\00", align 1
@.str.181 = private unnamed_addr constant [65 x i8] c" -alpn_server2 <string> - have server side context 2 offer ALPN\0A\00", align 1
@.str.182 = private unnamed_addr constant [72 x i8] c" -alpn_expected <string> - the ALPN protocol that should be negotiated\0A\00", align 1
@.str.183 = private unnamed_addr constant [73 x i8] c" -server_min_proto <string> - Minimum version the server should support\0A\00", align 1
@.str.184 = private unnamed_addr constant [73 x i8] c" -server_max_proto <string> - Maximum version the server should support\0A\00", align 1
@.str.185 = private unnamed_addr constant [73 x i8] c" -client_min_proto <string> - Minimum version the client should support\0A\00", align 1
@.str.186 = private unnamed_addr constant [73 x i8] c" -client_max_proto <string> - Maximum version the client should support\0A\00", align 1
@.str.187 = private unnamed_addr constant [97 x i8] c" -should_negotiate <string> - The version that should be negotiated, fail-client or fail-server\0A\00", align 1
@.str.188 = private unnamed_addr constant [46 x i8] c" -noct         - no certificate transparency\0A\00", align 1
@.str.189 = private unnamed_addr constant [51 x i8] c" -requestct    - request certificate transparency\0A\00", align 1
@.str.190 = private unnamed_addr constant [51 x i8] c" -requirect    - require certificate transparency\0A\00", align 1
@.str.191 = private unnamed_addr constant [61 x i8] c" -sn_client <string>  - have client request this servername\0A\00", align 1
@.str.192 = private unnamed_addr constant [74 x i8] c" -sn_server1 <string> - have server context 1 respond to this servername\0A\00", align 1
@.str.193 = private unnamed_addr constant [74 x i8] c" -sn_server2 <string> - have server context 2 respond to this servername\0A\00", align 1
@.str.194 = private unnamed_addr constant [43 x i8] c" -sn_expect1          - expected server 1\0A\00", align 1
@.str.195 = private unnamed_addr constant [43 x i8] c" -sn_expect2          - expected server 2\0A\00", align 1
@.str.196 = private unnamed_addr constant [65 x i8] c" -server_sess_out <file>    - Save the server session to a file\0A\00", align 1
@.str.197 = private unnamed_addr constant [67 x i8] c" -server_sess_in <file>     - Read the server session from a file\0A\00", align 1
@.str.198 = private unnamed_addr constant [65 x i8] c" -client_sess_out <file>    - Save the client session to a file\0A\00", align 1
@.str.199 = private unnamed_addr constant [67 x i8] c" -client_sess_in <file>     - Read the client session from a file\0A\00", align 1
@.str.200 = private unnamed_addr constant [73 x i8] c" -should_reuse <number>     - The expected state of reusing the session\0A\00", align 1
@.str.201 = private unnamed_addr constant [50 x i8] c" -no_ticket    - do not issue TLS session ticket\0A\00", align 1
@.str.202 = private unnamed_addr constant [73 x i8] c" -provider <name>    - Load the given provider into the library context\0A\00", align 1
@.str.203 = private unnamed_addr constant [73 x i8] c" -config <cnf>    - Load the given config file into the library context\0A\00", align 1
@NEXT_PROTO_STRING = internal constant [11 x i8] c"\09testproto\00", align 1
@serverinfo_sct_seen = internal unnamed_addr global i32 0, align 4
@serverinfo_tack_seen = internal unnamed_addr global i32 0, align 4
@serverinfo_other_seen = internal unnamed_addr global i32 0, align 4
@custom_ext_cli_string = internal constant [4 x i8] c"abc\00", align 1
@custom_ext_srv_string = internal constant [5 x i8] c"defg\00", align 1
@.str.204 = private unnamed_addr constant [50 x i8] c"failed to parser ALPN server protocol string: %s\0A\00", align 1
@alpn_selected = internal unnamed_addr global i8* null, align 8
@.str.205 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.206 = private unnamed_addr constant [28 x i8] c"Can't open session file %s\0A\00", align 1
@.str.207 = private unnamed_addr constant [29 x i8] c"Can't parse session file %s\0A\00", align 1
@.str.208 = private unnamed_addr constant [22 x i8] c"Servername 2 is NULL\0A\00", align 1
@.str.209 = private unnamed_addr constant [27 x i8] c"Switching server context.\0A\00", align 1
@protocol_from_string.versions = internal unnamed_addr constant [7 x %struct.protocol_versions] [%struct.protocol_versions { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.210, i32 0, i32 0), i32 768 }, %struct.protocol_versions { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.211, i32 0, i32 0), i32 769 }, %struct.protocol_versions { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.212, i32 0, i32 0), i32 770 }, %struct.protocol_versions { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), i32 771 }, %struct.protocol_versions { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.214, i32 0, i32 0), i32 772 }, %struct.protocol_versions { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.215, i32 0, i32 0), i32 65279 }, %struct.protocol_versions { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.216, i32 0, i32 0), i32 65277 }], align 16
@.str.210 = private unnamed_addr constant [5 x i8] c"ssl3\00", align 1
@.str.211 = private unnamed_addr constant [5 x i8] c"tls1\00", align 1
@.str.212 = private unnamed_addr constant [7 x i8] c"tls1.1\00", align 1
@.str.213 = private unnamed_addr constant [7 x i8] c"tls1.2\00", align 1
@.str.214 = private unnamed_addr constant [7 x i8] c"tls1.3\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"dtls1\00", align 1
@.str.216 = private unnamed_addr constant [8 x i8] c"dtls1.2\00", align 1
@.str.217 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.218 = private unnamed_addr constant [24 x i8] c"No session information\0A\00", align 1
@.str.219 = private unnamed_addr constant [19 x i8] c"%s%s, cipher %s %s\00", align 1
@.str.220 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.221 = private unnamed_addr constant [13 x i8] c", temp key: \00", align 1
@.str.222 = private unnamed_addr constant [12 x i8] c", digest=%s\00", align 1
@.str.223 = private unnamed_addr constant [14 x i8] c"unknown group\00", align 1
@.str.224 = private unnamed_addr constant [16 x i8] c"%d bits EC (%s)\00", align 1
@.str.225 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.226 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.227 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.228 = private unnamed_addr constant [11 x i8] c"%d bits %s\00", align 1
@.str.229 = private unnamed_addr constant [13 x i8] c"Client NPN: \00", align 1
@.str.230 = private unnamed_addr constant [13 x i8] c"Server NPN: \00", align 1
@.str.231 = private unnamed_addr constant [33 x i8] c"ALPN selected protocols differ!\0A\00", align 1
@.str.232 = private unnamed_addr constant [30 x i8] c"ALPN unexpectedly negotiated\0A\00", align 1
@.str.233 = private unnamed_addr constant [60 x i8] c"ALPN selected protocols not equal to expected protocol: %s\0A\00", align 1
@.str.234 = private unnamed_addr constant [24 x i8] c"ALPN results: client: '\00", align 1
@.str.235 = private unnamed_addr constant [13 x i8] c"', server: '\00", align 1
@.str.236 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@.str.237 = private unnamed_addr constant [41 x i8] c"ALPN configured: client: '%s', server: '\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"%s'\0A\00", align 1
@.str.239 = private unnamed_addr constant [33 x i8] c"Servername: expected context %d\0A\00", align 1
@.str.240 = private unnamed_addr constant [26 x i8] c"Servername: context is 2\0A\00", align 1
@.str.241 = private unnamed_addr constant [26 x i8] c"Servername: context is 1\0A\00", align 1
@.str.242 = private unnamed_addr constant [32 x i8] c"Servername: context is unknown\0A\00", align 1
@.str.243 = private unnamed_addr constant [13 x i8] c"depth=%d %s\0A\00", align 1
@.str.244 = private unnamed_addr constant [22 x i8] c"depth=%d error=%d %s\0A\00", align 1
@.str.245 = private unnamed_addr constant [18 x i8] c"Error string: %s\0A\00", align 1
@.str.246 = private unnamed_addr constant [40 x i8] c"In app_verify_callback, allowing cert. \00", align 1
@.str.247 = private unnamed_addr constant [12 x i8] c"Arg is: %s\0A\00", align 1
@.str.248 = private unnamed_addr constant [59 x i8] c"Finished printing do we have a context? 0x%p a cert? 0x%p\0A\00", align 1
@.str.249 = private unnamed_addr constant [18 x i8] c"cert depth=%d %s\0A\00", align 1
@.str.250 = private unnamed_addr constant [16 x i8] c"Client_identity\00", align 1
@.str.251 = private unnamed_addr constant [38 x i8] c"client: created identity '%s' len=%d\0A\00", align 1
@.str.252 = private unnamed_addr constant [42 x i8] c"Could not convert PSK key '%s' to BIGNUM\0A\00", align 1
@.str.253 = private unnamed_addr constant [55 x i8] c"psk buffer of callback is too small (%d) for key (%d)\0A\00", align 1
@.str.254 = private unnamed_addr constant [46 x i8] c"server: PSK error: client identity not found\0A\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %app_verify_arg = alloca %struct.app_verify_arg, align 8
  %s_time = alloca i64, align 8
  %c_time = alloca i64, align 8
  %thisprov = alloca %struct.ossl_provider_st*, align 8
  %defctxnull = alloca %struct.ossl_provider_st*, align 8
  %libctx = alloca %struct.ossl_lib_ctx_st*, align 8
  %session_id_context = alloca i32, align 4
  %alpn_len = alloca i64, align 8
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !3
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !7
  %0 = bitcast %struct.app_verify_arg* %app_verify_arg to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.app_verify_arg* @__const.main.app_verify_arg to i8*), i64 16, i1 false)
  %1 = bitcast i64* %s_time to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  store i64 0, i64* %s_time, align 8, !tbaa !9
  %2 = bitcast i64* %c_time to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  store i64 0, i64* %c_time, align 8, !tbaa !9
  %3 = bitcast %struct.ossl_provider_st** %thisprov to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #15
  store %struct.ossl_provider_st* null, %struct.ossl_provider_st** %thisprov, align 8, !tbaa !7
  %4 = bitcast %struct.ossl_provider_st** %defctxnull to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #15
  store %struct.ossl_provider_st* null, %struct.ossl_provider_st** %defctxnull, align 8, !tbaa !7
  %5 = bitcast %struct.ossl_lib_ctx_st** %libctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #15
  store %struct.ossl_lib_ctx_st* null, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !7
  store i1 false, i1* @verbose, align 4
  store i1 false, i1* @debug, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %6, i32 noundef 16) #16
  store %struct.bio_st* %call, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %call1 = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %7, i32 noundef 16) #16
  store %struct.bio_st* %call1, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call2 = tail call %struct.ssl_conf_ctx_st* @SSL_CONF_CTX_new() #16
  %call3 = tail call %struct.ssl_conf_ctx_st* @SSL_CONF_CTX_new() #16
  %call4 = tail call %struct.ssl_conf_ctx_st* @SSL_CONF_CTX_new() #16
  %tobool = icmp ne %struct.ssl_conf_ctx_st* %call2, null
  %tobool5 = icmp ne %struct.ssl_conf_ctx_st* %call4, null
  %or.cond = select i1 %tobool, i1 %tobool5, i1 false
  %tobool7 = icmp ne %struct.ssl_conf_ctx_st* %call3, null
  %or.cond1309 = select i1 %or.cond, i1 %tobool7, i1 false
  br i1 %or.cond1309, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %8) #16
  br label %end

if.end:                                           ; preds = %entry
  %call8 = tail call i32 @SSL_CONF_CTX_set_flags(%struct.ssl_conf_ctx_st* noundef nonnull %call2, i32 noundef 105) #16
  %call9 = tail call i32 @SSL_CONF_CTX_set_flags(%struct.ssl_conf_ctx_st* noundef nonnull %call3, i32 noundef 105) #16
  %call10 = tail call i32 @SSL_CONF_CTX_set1_prefix(%struct.ssl_conf_ctx_st* noundef nonnull %call2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #16
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %9) #16
  br label %end

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @SSL_CONF_CTX_set1_prefix(%struct.ssl_conf_ctx_st* noundef nonnull %call3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #16
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %10) #16
  br label %end

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @SSL_CONF_CTX_set_flags(%struct.ssl_conf_ctx_st* noundef nonnull %call4, i32 noundef 101) #16
  %call19 = tail call i32 @SSL_CONF_CTX_set1_prefix(%struct.ssl_conf_ctx_st* noundef nonnull %call4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #16
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %11) #16
  br label %end

if.end22:                                         ; preds = %if.end17
  %dec = add nsw i32 %argc, -1
  store i32 %dec, i32* %argc.addr, align 4, !tbaa !3
  %incdec.ptr = getelementptr inbounds i8*, i8** %argv, i64 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8, !tbaa !7
  %app_verify = getelementptr inbounds %struct.app_verify_arg, %struct.app_verify_arg* %app_verify_arg, i64 0, i32 1
  %cmp28292882 = icmp sgt i32 %argc, 1
  br i1 %cmp28292882, label %while.body.lr.ph, label %if.end624

while.body.lr.ph:                                 ; preds = %if.end22, %if.end619
  %CApath.0.ph2938 = phi i8* [ %CApath.1, %if.end619 ], [ null, %if.end22 ]
  %CAfile.0.ph2935 = phi i8* [ %CAfile.1, %if.end619 ], [ null, %if.end22 ]
  %bio_type.0.ph2933 = phi i32 [ %bio_type.1, %if.end619 ], [ 0, %if.end22 ]
  %force.0.ph2931 = phi i32 [ %force.1, %if.end619 ], [ 0, %if.end22 ]
  %config.0.ph2928 = phi i8* [ %config.1, %if.end619 ], [ null, %if.end22 ]
  %provider.0.ph2925 = phi i8* [ %provider.1, %if.end619 ], [ null, %if.end22 ]
  %conf_args.0.ph2924 = phi %struct.stack_st_OPENSSL_STRING* [ %conf_args.02830, %if.end619 ], [ null, %if.end22 ]
  %ct_validation.0.ph2922 = phi i32 [ %ct_validation.1, %if.end619 ], [ 0, %if.end22 ]
  %comp.0.ph2920 = phi i32 [ %comp.1, %if.end619 ], [ 0, %if.end22 ]
  %dtls1.0.ph2918 = phi i32 [ %dtls1.1, %if.end619 ], [ 0, %if.end22 ]
  %print_time.0.ph2916 = phi i32 [ %print_time.1, %if.end619 ], [ 0, %if.end22 ]
  %dtls12.0.ph2914 = phi i32 [ %dtls12.1, %if.end619 ], [ 0, %if.end22 ]
  %no_dhe.0.ph2912 = phi i32 [ %no_dhe.1, %if.end619 ], [ 0, %if.end22 ]
  %dhe1024dsa.0.ph2910 = phi i32 [ %dhe1024dsa.1, %if.end619 ], [ 0, %if.end22 ]
  %dhe512.0.ph2908 = phi i32 [ %dhe512.1, %if.end619 ], [ 0, %if.end22 ]
  %bytes.0.ph2905 = phi i64 [ %bytes.2, %if.end619 ], [ 256, %if.end22 ]
  %no_ticket.0.ph2903 = phi i32 [ %no_ticket.1, %if.end619 ], [ 0, %if.end22 ]
  %should_reuse.0.ph2900 = phi i32 [ %should_reuse.1, %if.end619 ], [ -1, %if.end22 ]
  %reuse.0.ph2898 = phi i32 [ %reuse.1, %if.end619 ], [ 0, %if.end22 ]
  %number.0.ph2895 = phi i32 [ %number.1, %if.end619 ], [ 1, %if.end22 ]
  %dtls.0.ph2893 = phi i32 [ %dtls.1, %if.end619 ], [ 0, %if.end22 ]
  %tls1.0.ph2891 = phi i32 [ %tls1.1, %if.end619 ], [ 0, %if.end22 ]
  %server_auth.0.ph2889 = phi i32 [ %server_auth.1, %if.end619 ], [ 0, %if.end22 ]
  %client_auth.0.ph2887 = phi i32 [ %client_auth.1, %if.end619 ], [ 0, %if.end22 ]
  %ssl3.0.ph2885 = phi i32 [ %ssl3.1, %if.end619 ], [ 0, %if.end22 ]
  %tls1_2.0.ph2883 = phi i32 [ %tls1_2.1, %if.end619 ], [ 0, %if.end22 ]
  %12 = phi i32 [ %dec620, %if.end619 ], [ %dec, %if.end22 ]
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end534.while.cond_crit_edge
  %conf_args.02830 = phi %struct.stack_st_OPENSSL_STRING* [ %conf_args.0.ph2924, %while.body.lr.ph ], [ %conf_args.1, %if.end534.while.cond_crit_edge ]
  %13 = phi i32 [ %12, %while.body.lr.ph ], [ %.pre, %if.end534.while.cond_crit_edge ]
  %14 = load i8**, i8*** %argv.addr, align 8, !tbaa !7
  %15 = load i8*, i8** %14, align 8, !tbaa !7
  %call23 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #17
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %while.body
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0)) #16
  call void @exit(i32 noundef 0) #18
  unreachable

if.else:                                          ; preds = %while.body
  %call27 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)) #17
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.end619, label %if.else30

if.else30:                                        ; preds = %if.else
  %call31 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #17
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.end619, label %if.else34

if.else34:                                        ; preds = %if.else30
  %call35 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #17
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.else34
  store i1 true, i1* @verbose, align 4
  br label %if.end619

if.else38:                                        ; preds = %if.else34
  %call39 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #17
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.else38
  store i1 true, i1* @debug, align 4
  br label %if.end619

if.else42:                                        ; preds = %if.else38
  %call43 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #17
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.end619, label %if.else46

if.else46:                                        ; preds = %if.else42
  %call47 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #17
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.end619, label %if.else50

if.else50:                                        ; preds = %if.else46
  %call51 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #17
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.end619, label %if.else54

if.else54:                                        ; preds = %if.else50
  %call55 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0)) #17
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.end619, label %if.else58

if.else58:                                        ; preds = %if.else54
  %call59 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #17
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.end619, label %if.else62

if.else62:                                        ; preds = %if.else58
  %call63 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #17
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %if.then65, label %if.else77

if.then65:                                        ; preds = %if.else62
  %dec66 = add nsw i32 %13, -1
  store i32 %dec66, i32* %argc.addr, align 4, !tbaa !3
  %cmp67 = icmp ult i32 %13, 2
  br i1 %cmp67, label %bad, label %if.end69

if.end69:                                         ; preds = %if.then65
  %incdec.ptr70 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr70, i8*** %argv.addr, align 8, !tbaa !7
  %17 = load i8*, i8** %incdec.ptr70, align 8, !tbaa !7
  store i8* %17, i8** @psk_key, align 8, !tbaa !7
  %call71 = call i64 @strspn(i8* noundef %17, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0)) #17
  %call72 = call i64 @strlen(i8* noundef %17) #17
  %cmp73.not = icmp eq i64 %call71, %call72
  br i1 %cmp73.not, label %if.end619, label %bad.sink.split

if.else77:                                        ; preds = %if.else62
  %call78 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #17
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %if.end619, label %if.else81

if.else81:                                        ; preds = %if.else77
  %call82 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #17
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %if.end619, label %if.else85

if.else85:                                        ; preds = %if.else81
  %call86 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #17
  %cmp87 = icmp eq i32 %call86, 0
  br i1 %cmp87, label %if.end619, label %if.else89

if.else89:                                        ; preds = %if.else85
  %call90 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0)) #17
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.end619, label %if.else93

if.else93:                                        ; preds = %if.else89
  %call94 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0)) #17
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.end619, label %if.else97

if.else97:                                        ; preds = %if.else93
  %call98 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #17
  %cmp99 = icmp eq i32 %call98, 0
  br i1 %cmp99, label %if.end619, label %if.else101

if.else101:                                       ; preds = %if.else97
  %call102 = call i32 @strncmp(i8* noundef %15, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i64 noundef 4) #17
  %cmp103 = icmp eq i32 %call102, 0
  br i1 %cmp103, label %if.then104, label %if.else114

if.then104:                                       ; preds = %if.else101
  %dec105 = add nsw i32 %13, -1
  store i32 %dec105, i32* %argc.addr, align 4, !tbaa !3
  %cmp106 = icmp ult i32 %13, 2
  br i1 %cmp106, label %bad, label %if.end108

if.end108:                                        ; preds = %if.then104
  %incdec.ptr109 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr109, i8*** %argv.addr, align 8, !tbaa !7
  %18 = load i8*, i8** %incdec.ptr109, align 8, !tbaa !7
  %call110 = call i32 @atoi(i8* noundef %18) #17
  %cmp111 = icmp eq i32 %call110, 0
  %spec.store.select = select i1 %cmp111, i32 1, i32 %call110
  br label %if.end619

if.else114:                                       ; preds = %if.else101
  %call115 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0)) #17
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %if.then117, label %if.else145

if.then117:                                       ; preds = %if.else114
  %dec118 = add nsw i32 %13, -1
  store i32 %dec118, i32* %argc.addr, align 4, !tbaa !3
  %cmp119 = icmp ult i32 %13, 2
  br i1 %cmp119, label %bad, label %if.end121

if.end121:                                        ; preds = %if.then117
  %incdec.ptr122 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr122, i8*** %argv.addr, align 8, !tbaa !7
  %19 = load i8*, i8** %incdec.ptr122, align 8, !tbaa !7
  %call123 = call i64 @atol(i8* noundef %19) #17
  %cmp124 = icmp eq i64 %call123, 0
  %spec.store.select1310 = select i1 %cmp124, i64 1, i64 %call123
  %call127 = call i64 @strlen(i8* noundef nonnull %19) #17
  %sub = shl i64 %call127, 32
  %sext = add i64 %sub, -4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx129 = getelementptr inbounds i8, i8* %19, i64 %idxprom
  %20 = load i8, i8* %arrayidx129, align 1, !tbaa !11
  %cmp131 = icmp eq i8 %20, 107
  %mul = shl nsw i64 %spec.store.select1310, 10
  %spec.select = select i1 %cmp131, i64 %mul, i64 %spec.store.select1310
  %cmp140 = icmp eq i8 %20, 109
  %mul143 = shl nsw i64 %spec.select, 20
  %spec.select1532 = select i1 %cmp140, i64 %mul143, i64 %spec.select
  br label %if.end619

if.else145:                                       ; preds = %if.else114
  %call146 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0)) #17
  %cmp147 = icmp eq i32 %call146, 0
  br i1 %cmp147, label %if.then149, label %if.else156

if.then149:                                       ; preds = %if.else145
  %dec150 = add nsw i32 %13, -1
  store i32 %dec150, i32* %argc.addr, align 4, !tbaa !3
  %cmp151 = icmp ult i32 %13, 2
  br i1 %cmp151, label %bad, label %if.end154

if.end154:                                        ; preds = %if.then149
  %incdec.ptr155 = getelementptr inbounds i8*, i8** %14, i64 1
  %21 = load i8*, i8** %incdec.ptr155, align 8, !tbaa !7
  store i8* %21, i8** @cipher, align 8, !tbaa !7
  br label %if.end619

if.else156:                                       ; preds = %if.else145
  %call157 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0)) #17
  %cmp158 = icmp eq i32 %call157, 0
  br i1 %cmp158, label %if.then160, label %if.else167

if.then160:                                       ; preds = %if.else156
  %dec161 = add nsw i32 %13, -1
  store i32 %dec161, i32* %argc.addr, align 4, !tbaa !3
  %cmp162 = icmp ult i32 %13, 2
  br i1 %cmp162, label %bad, label %if.end165

if.end165:                                        ; preds = %if.then160
  %incdec.ptr166 = getelementptr inbounds i8*, i8** %14, i64 1
  %22 = load i8*, i8** %incdec.ptr166, align 8, !tbaa !7
  store i8* %22, i8** @ciphersuites, align 8, !tbaa !7
  br label %if.end619

if.else167:                                       ; preds = %if.else156
  %call168 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)) #17
  %cmp169 = icmp eq i32 %call168, 0
  br i1 %cmp169, label %if.then171, label %if.else178

if.then171:                                       ; preds = %if.else167
  %dec172 = add nsw i32 %13, -1
  store i32 %dec172, i32* %argc.addr, align 4, !tbaa !3
  %cmp173 = icmp ult i32 %13, 2
  br i1 %cmp173, label %bad, label %if.end176

if.end176:                                        ; preds = %if.then171
  %incdec.ptr177 = getelementptr inbounds i8*, i8** %14, i64 1
  %23 = load i8*, i8** %incdec.ptr177, align 8, !tbaa !7
  br label %if.end619

if.else178:                                       ; preds = %if.else167
  %call179 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)) #17
  %cmp180 = icmp eq i32 %call179, 0
  br i1 %cmp180, label %if.then182, label %if.else189

if.then182:                                       ; preds = %if.else178
  %dec183 = add nsw i32 %13, -1
  store i32 %dec183, i32* %argc.addr, align 4, !tbaa !3
  %cmp184 = icmp ult i32 %13, 2
  br i1 %cmp184, label %bad, label %if.end187

if.end187:                                        ; preds = %if.then182
  %incdec.ptr188 = getelementptr inbounds i8*, i8** %14, i64 1
  %24 = load i8*, i8** %incdec.ptr188, align 8, !tbaa !7
  br label %if.end619

if.else189:                                       ; preds = %if.else178
  %call190 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)) #17
  %cmp191 = icmp eq i32 %call190, 0
  br i1 %cmp191, label %if.end619, label %if.else194

if.else194:                                       ; preds = %if.else189
  %call195 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)) #17
  %cmp196 = icmp eq i32 %call195, 0
  br i1 %cmp196, label %if.end619, label %if.else199

if.else199:                                       ; preds = %if.else194
  %call200 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0)) #17
  %cmp201 = icmp eq i32 %call200, 0
  br i1 %cmp201, label %if.end619, label %if.else204

if.else204:                                       ; preds = %if.else199
  %call205 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0)) #17
  %cmp206 = icmp eq i32 %call205, 0
  br i1 %cmp206, label %if.end619, label %if.else209

if.else209:                                       ; preds = %if.else204
  %call210 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0)) #17
  %cmp211 = icmp eq i32 %call210, 0
  br i1 %cmp211, label %if.end619, label %if.else214

if.else214:                                       ; preds = %if.else209
  %call215 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0)) #17
  %cmp216 = icmp eq i32 %call215, 0
  br i1 %cmp216, label %if.end619, label %if.else219

if.else219:                                       ; preds = %if.else214
  %call220 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0)) #17
  %cmp221 = icmp eq i32 %call220, 0
  br i1 %cmp221, label %if.end619, label %if.else224

if.else224:                                       ; preds = %if.else219
  %call225 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0)) #17
  %cmp226 = icmp eq i32 %call225, 0
  br i1 %cmp226, label %if.end619, label %if.else229

if.else229:                                       ; preds = %if.else224
  %call230 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #17
  %cmp231 = icmp eq i32 %call230, 0
  br i1 %cmp231, label %if.then233, label %if.else234

if.then233:                                       ; preds = %if.else229
  store i32 1, i32* %app_verify, align 8, !tbaa !12
  br label %if.end619

if.else234:                                       ; preds = %if.else229
  %call235 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0)) #17
  %cmp236 = icmp eq i32 %call235, 0
  br i1 %cmp236, label %if.then238, label %if.else239

if.then238:                                       ; preds = %if.else234
  store i1 true, i1* @npn_client, align 4
  br label %if.end619

if.else239:                                       ; preds = %if.else234
  %call240 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0)) #17
  %cmp241 = icmp eq i32 %call240, 0
  br i1 %cmp241, label %if.then243, label %if.else244

if.then243:                                       ; preds = %if.else239
  store i1 true, i1* @npn_server, align 4
  br label %if.end619

if.else244:                                       ; preds = %if.else239
  %call245 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i64 0, i64 0)) #17
  %cmp246 = icmp eq i32 %call245, 0
  br i1 %cmp246, label %if.then248, label %if.else249

if.then248:                                       ; preds = %if.else244
  store i1 true, i1* @npn_server_reject, align 4
  br label %if.end619

if.else249:                                       ; preds = %if.else244
  %call250 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0)) #17
  %cmp251 = icmp eq i32 %call250, 0
  br i1 %cmp251, label %if.then253, label %if.else254

if.then253:                                       ; preds = %if.else249
  store i1 true, i1* @serverinfo_sct, align 4
  br label %if.end619

if.else254:                                       ; preds = %if.else249
  %call255 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0)) #17
  %cmp256 = icmp eq i32 %call255, 0
  br i1 %cmp256, label %if.then258, label %if.else259

if.then258:                                       ; preds = %if.else254
  store i1 true, i1* @serverinfo_tack, align 4
  br label %if.end619

if.else259:                                       ; preds = %if.else254
  %call260 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0)) #17
  %cmp261 = icmp eq i32 %call260, 0
  br i1 %cmp261, label %if.then263, label %if.else270

if.then263:                                       ; preds = %if.else259
  %dec264 = add nsw i32 %13, -1
  store i32 %dec264, i32* %argc.addr, align 4, !tbaa !3
  %cmp265 = icmp ult i32 %13, 2
  br i1 %cmp265, label %bad, label %if.end268

if.end268:                                        ; preds = %if.then263
  %incdec.ptr269 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr269, i8*** %argv.addr, align 8, !tbaa !7
  %25 = load i8*, i8** %incdec.ptr269, align 8, !tbaa !7
  store i8* %25, i8** @serverinfo_file, align 8, !tbaa !7
  br label %if.end619

if.else270:                                       ; preds = %if.else259
  %call271 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0)) #17
  %cmp272 = icmp eq i32 %call271, 0
  br i1 %cmp272, label %if.then274, label %if.else275

if.then274:                                       ; preds = %if.else270
  store i1 true, i1* @custom_ext, align 4
  br label %if.end619

if.else275:                                       ; preds = %if.else270
  %call276 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0)) #17
  %cmp277 = icmp eq i32 %call276, 0
  br i1 %cmp277, label %if.then279, label %if.else286

if.then279:                                       ; preds = %if.else275
  %dec280 = add nsw i32 %13, -1
  store i32 %dec280, i32* %argc.addr, align 4, !tbaa !3
  %cmp281 = icmp ult i32 %13, 2
  br i1 %cmp281, label %bad, label %if.end284

if.end284:                                        ; preds = %if.then279
  %incdec.ptr285 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr285, i8*** %argv.addr, align 8, !tbaa !7
  %26 = load i8*, i8** %incdec.ptr285, align 8, !tbaa !7
  store i8* %26, i8** @alpn_client, align 8, !tbaa !7
  br label %if.end619

if.else286:                                       ; preds = %if.else275
  %call287 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0)) #17
  %cmp288 = icmp eq i32 %call287, 0
  br i1 %cmp288, label %if.then294, label %lor.lhs.false290

lor.lhs.false290:                                 ; preds = %if.else286
  %call291 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0)) #17
  %cmp292 = icmp eq i32 %call291, 0
  br i1 %cmp292, label %if.then294, label %if.else301

if.then294:                                       ; preds = %lor.lhs.false290, %if.else286
  %dec295 = add nsw i32 %13, -1
  store i32 %dec295, i32* %argc.addr, align 4, !tbaa !3
  %cmp296 = icmp ult i32 %13, 2
  br i1 %cmp296, label %bad, label %if.end299

if.end299:                                        ; preds = %if.then294
  %incdec.ptr300 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr300, i8*** %argv.addr, align 8, !tbaa !7
  %27 = load i8*, i8** %incdec.ptr300, align 8, !tbaa !7
  store i8* %27, i8** @alpn_server, align 8, !tbaa !7
  br label %if.end619

if.else301:                                       ; preds = %lor.lhs.false290
  %call302 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0)) #17
  %cmp303 = icmp eq i32 %call302, 0
  br i1 %cmp303, label %if.then305, label %if.else312

if.then305:                                       ; preds = %if.else301
  %dec306 = add nsw i32 %13, -1
  store i32 %dec306, i32* %argc.addr, align 4, !tbaa !3
  %cmp307 = icmp ult i32 %13, 2
  br i1 %cmp307, label %bad, label %if.end310

if.end310:                                        ; preds = %if.then305
  %incdec.ptr311 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr311, i8*** %argv.addr, align 8, !tbaa !7
  %28 = load i8*, i8** %incdec.ptr311, align 8, !tbaa !7
  store i8* %28, i8** @alpn_server2, align 8, !tbaa !7
  br label %if.end619

if.else312:                                       ; preds = %if.else301
  %call313 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0)) #17
  %cmp314 = icmp eq i32 %call313, 0
  br i1 %cmp314, label %if.then316, label %if.else323

if.then316:                                       ; preds = %if.else312
  %dec317 = add nsw i32 %13, -1
  store i32 %dec317, i32* %argc.addr, align 4, !tbaa !3
  %cmp318 = icmp ult i32 %13, 2
  br i1 %cmp318, label %bad, label %if.end321

if.end321:                                        ; preds = %if.then316
  %incdec.ptr322 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr322, i8*** %argv.addr, align 8, !tbaa !7
  %29 = load i8*, i8** %incdec.ptr322, align 8, !tbaa !7
  store i8* %29, i8** @alpn_expected, align 8, !tbaa !7
  br label %if.end619

if.else323:                                       ; preds = %if.else312
  %call324 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i64 0, i64 0)) #17
  %cmp325 = icmp eq i32 %call324, 0
  br i1 %cmp325, label %if.then327, label %if.else334

if.then327:                                       ; preds = %if.else323
  %dec328 = add nsw i32 %13, -1
  store i32 %dec328, i32* %argc.addr, align 4, !tbaa !3
  %cmp329 = icmp ult i32 %13, 2
  br i1 %cmp329, label %bad, label %if.end332

if.end332:                                        ; preds = %if.then327
  %incdec.ptr333 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr333, i8*** %argv.addr, align 8, !tbaa !7
  %30 = load i8*, i8** %incdec.ptr333, align 8, !tbaa !7
  store i8* %30, i8** @server_min_proto, align 8, !tbaa !7
  br label %if.end619

if.else334:                                       ; preds = %if.else323
  %call335 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i64 0, i64 0)) #17
  %cmp336 = icmp eq i32 %call335, 0
  br i1 %cmp336, label %if.then338, label %if.else345

if.then338:                                       ; preds = %if.else334
  %dec339 = add nsw i32 %13, -1
  store i32 %dec339, i32* %argc.addr, align 4, !tbaa !3
  %cmp340 = icmp ult i32 %13, 2
  br i1 %cmp340, label %bad, label %if.end343

if.end343:                                        ; preds = %if.then338
  %incdec.ptr344 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr344, i8*** %argv.addr, align 8, !tbaa !7
  %31 = load i8*, i8** %incdec.ptr344, align 8, !tbaa !7
  store i8* %31, i8** @server_max_proto, align 8, !tbaa !7
  br label %if.end619

if.else345:                                       ; preds = %if.else334
  %call346 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i64 0, i64 0)) #17
  %cmp347 = icmp eq i32 %call346, 0
  br i1 %cmp347, label %if.then349, label %if.else356

if.then349:                                       ; preds = %if.else345
  %dec350 = add nsw i32 %13, -1
  store i32 %dec350, i32* %argc.addr, align 4, !tbaa !3
  %cmp351 = icmp ult i32 %13, 2
  br i1 %cmp351, label %bad, label %if.end354

if.end354:                                        ; preds = %if.then349
  %incdec.ptr355 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr355, i8*** %argv.addr, align 8, !tbaa !7
  %32 = load i8*, i8** %incdec.ptr355, align 8, !tbaa !7
  store i8* %32, i8** @client_min_proto, align 8, !tbaa !7
  br label %if.end619

if.else356:                                       ; preds = %if.else345
  %call357 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i64 0, i64 0)) #17
  %cmp358 = icmp eq i32 %call357, 0
  br i1 %cmp358, label %if.then360, label %if.else367

if.then360:                                       ; preds = %if.else356
  %dec361 = add nsw i32 %13, -1
  store i32 %dec361, i32* %argc.addr, align 4, !tbaa !3
  %cmp362 = icmp ult i32 %13, 2
  br i1 %cmp362, label %bad, label %if.end365

if.end365:                                        ; preds = %if.then360
  %incdec.ptr366 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr366, i8*** %argv.addr, align 8, !tbaa !7
  %33 = load i8*, i8** %incdec.ptr366, align 8, !tbaa !7
  store i8* %33, i8** @client_max_proto, align 8, !tbaa !7
  br label %if.end619

if.else367:                                       ; preds = %if.else356
  %call368 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i64 0, i64 0)) #17
  %cmp369 = icmp eq i32 %call368, 0
  br i1 %cmp369, label %if.then371, label %if.else378

if.then371:                                       ; preds = %if.else367
  %dec372 = add nsw i32 %13, -1
  store i32 %dec372, i32* %argc.addr, align 4, !tbaa !3
  %cmp373 = icmp ult i32 %13, 2
  br i1 %cmp373, label %bad, label %if.end376

if.end376:                                        ; preds = %if.then371
  %incdec.ptr377 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr377, i8*** %argv.addr, align 8, !tbaa !7
  %34 = load i8*, i8** %incdec.ptr377, align 8, !tbaa !7
  store i8* %34, i8** @should_negotiate, align 8, !tbaa !7
  br label %if.end619

if.else378:                                       ; preds = %if.else367
  %call379 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0)) #17
  %cmp380 = icmp eq i32 %call379, 0
  br i1 %cmp380, label %if.then382, label %if.else389

if.then382:                                       ; preds = %if.else378
  %dec383 = add nsw i32 %13, -1
  store i32 %dec383, i32* %argc.addr, align 4, !tbaa !3
  %cmp384 = icmp ult i32 %13, 2
  br i1 %cmp384, label %bad, label %if.end387

if.end387:                                        ; preds = %if.then382
  %incdec.ptr388 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr388, i8*** %argv.addr, align 8, !tbaa !7
  %35 = load i8*, i8** %incdec.ptr388, align 8, !tbaa !7
  store i8* %35, i8** @sn_client, align 8, !tbaa !7
  br label %if.end619

if.else389:                                       ; preds = %if.else378
  %call390 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0)) #17
  %cmp391 = icmp eq i32 %call390, 0
  br i1 %cmp391, label %if.then393, label %if.else400

if.then393:                                       ; preds = %if.else389
  %dec394 = add nsw i32 %13, -1
  store i32 %dec394, i32* %argc.addr, align 4, !tbaa !3
  %cmp395 = icmp ult i32 %13, 2
  br i1 %cmp395, label %bad, label %if.end398

if.end398:                                        ; preds = %if.then393
  %incdec.ptr399 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr399, i8*** %argv.addr, align 8, !tbaa !7
  %36 = load i8*, i8** %incdec.ptr399, align 8, !tbaa !7
  store i8* %36, i8** @sn_server1, align 8, !tbaa !7
  br label %if.end619

if.else400:                                       ; preds = %if.else389
  %call401 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0)) #17
  %cmp402 = icmp eq i32 %call401, 0
  br i1 %cmp402, label %if.then404, label %if.else411

if.then404:                                       ; preds = %if.else400
  %dec405 = add nsw i32 %13, -1
  store i32 %dec405, i32* %argc.addr, align 4, !tbaa !3
  %cmp406 = icmp ult i32 %13, 2
  br i1 %cmp406, label %bad, label %if.end409

if.end409:                                        ; preds = %if.then404
  %incdec.ptr410 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr410, i8*** %argv.addr, align 8, !tbaa !7
  %37 = load i8*, i8** %incdec.ptr410, align 8, !tbaa !7
  store i8* %37, i8** @sn_server2, align 8, !tbaa !7
  br label %if.end619

if.else411:                                       ; preds = %if.else400
  %call412 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0)) #17
  %cmp413 = icmp eq i32 %call412, 0
  br i1 %cmp413, label %if.then415, label %if.else416

if.then415:                                       ; preds = %if.else411
  store i32 1, i32* @sn_expect, align 4, !tbaa !3
  br label %if.end619

if.else416:                                       ; preds = %if.else411
  %call417 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0)) #17
  %cmp418 = icmp eq i32 %call417, 0
  br i1 %cmp418, label %if.then420, label %if.else421

if.then420:                                       ; preds = %if.else416
  store i32 2, i32* @sn_expect, align 4, !tbaa !3
  br label %if.end619

if.else421:                                       ; preds = %if.else416
  %call422 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i64 0, i64 0)) #17
  %cmp423 = icmp eq i32 %call422, 0
  br i1 %cmp423, label %if.then425, label %if.else432

if.then425:                                       ; preds = %if.else421
  %dec426 = add nsw i32 %13, -1
  store i32 %dec426, i32* %argc.addr, align 4, !tbaa !3
  %cmp427 = icmp ult i32 %13, 2
  br i1 %cmp427, label %bad, label %if.end430

if.end430:                                        ; preds = %if.then425
  %incdec.ptr431 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr431, i8*** %argv.addr, align 8, !tbaa !7
  %38 = load i8*, i8** %incdec.ptr431, align 8, !tbaa !7
  store i8* %38, i8** @server_sess_out, align 8, !tbaa !7
  br label %if.end619

if.else432:                                       ; preds = %if.else421
  %call433 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i64 0, i64 0)) #17
  %cmp434 = icmp eq i32 %call433, 0
  br i1 %cmp434, label %if.then436, label %if.else443

if.then436:                                       ; preds = %if.else432
  %dec437 = add nsw i32 %13, -1
  store i32 %dec437, i32* %argc.addr, align 4, !tbaa !3
  %cmp438 = icmp ult i32 %13, 2
  br i1 %cmp438, label %bad, label %if.end441

if.end441:                                        ; preds = %if.then436
  %incdec.ptr442 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr442, i8*** %argv.addr, align 8, !tbaa !7
  %39 = load i8*, i8** %incdec.ptr442, align 8, !tbaa !7
  store i8* %39, i8** @server_sess_in, align 8, !tbaa !7
  br label %if.end619

if.else443:                                       ; preds = %if.else432
  %call444 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i64 0, i64 0)) #17
  %cmp445 = icmp eq i32 %call444, 0
  br i1 %cmp445, label %if.then447, label %if.else454

if.then447:                                       ; preds = %if.else443
  %dec448 = add nsw i32 %13, -1
  store i32 %dec448, i32* %argc.addr, align 4, !tbaa !3
  %cmp449 = icmp ult i32 %13, 2
  br i1 %cmp449, label %bad, label %if.end452

if.end452:                                        ; preds = %if.then447
  %incdec.ptr453 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr453, i8*** %argv.addr, align 8, !tbaa !7
  %40 = load i8*, i8** %incdec.ptr453, align 8, !tbaa !7
  store i8* %40, i8** @client_sess_out, align 8, !tbaa !7
  br label %if.end619

if.else454:                                       ; preds = %if.else443
  %call455 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i64 0, i64 0)) #17
  %cmp456 = icmp eq i32 %call455, 0
  br i1 %cmp456, label %if.then458, label %if.else465

if.then458:                                       ; preds = %if.else454
  %dec459 = add nsw i32 %13, -1
  store i32 %dec459, i32* %argc.addr, align 4, !tbaa !3
  %cmp460 = icmp ult i32 %13, 2
  br i1 %cmp460, label %bad, label %if.end463

if.end463:                                        ; preds = %if.then458
  %incdec.ptr464 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr464, i8*** %argv.addr, align 8, !tbaa !7
  %41 = load i8*, i8** %incdec.ptr464, align 8, !tbaa !7
  store i8* %41, i8** @client_sess_in, align 8, !tbaa !7
  br label %if.end619

if.else465:                                       ; preds = %if.else454
  %call466 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i64 0, i64 0)) #17
  %cmp467 = icmp eq i32 %call466, 0
  br i1 %cmp467, label %if.then469, label %if.else479

if.then469:                                       ; preds = %if.else465
  %dec470 = add nsw i32 %13, -1
  store i32 %dec470, i32* %argc.addr, align 4, !tbaa !3
  %cmp471 = icmp ult i32 %13, 2
  br i1 %cmp471, label %bad, label %if.end474

if.end474:                                        ; preds = %if.then469
  %incdec.ptr475 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr475, i8*** %argv.addr, align 8, !tbaa !7
  %42 = load i8*, i8** %incdec.ptr475, align 8, !tbaa !7
  %call476 = call i32 @atoi(i8* noundef %42) #17
  %tobool477 = icmp ne i32 %call476, 0
  %lnot.ext = zext i1 %tobool477 to i32
  br label %if.end619

if.else479:                                       ; preds = %if.else465
  %call480 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i64 0, i64 0)) #17
  %cmp481 = icmp eq i32 %call480, 0
  br i1 %cmp481, label %if.end619, label %if.else484

if.else484:                                       ; preds = %if.else479
  %call485 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0)) #17
  %cmp486 = icmp eq i32 %call485, 0
  br i1 %cmp486, label %if.then488, label %if.else495

if.then488:                                       ; preds = %if.else484
  %dec489 = add nsw i32 %13, -1
  store i32 %dec489, i32* %argc.addr, align 4, !tbaa !3
  %cmp490 = icmp ult i32 %13, 2
  br i1 %cmp490, label %bad, label %if.end493

if.end493:                                        ; preds = %if.then488
  %incdec.ptr494 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr494, i8*** %argv.addr, align 8, !tbaa !7
  %43 = load i8*, i8** %incdec.ptr494, align 8, !tbaa !7
  br label %if.end619

if.else495:                                       ; preds = %if.else484
  %call496 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0)) #17
  %cmp497 = icmp eq i32 %call496, 0
  br i1 %cmp497, label %if.then499, label %if.else506

if.then499:                                       ; preds = %if.else495
  %dec500 = add nsw i32 %13, -1
  store i32 %dec500, i32* %argc.addr, align 4, !tbaa !3
  %cmp501 = icmp ult i32 %13, 2
  br i1 %cmp501, label %bad, label %if.end504

if.end504:                                        ; preds = %if.then499
  %incdec.ptr505 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %incdec.ptr505, i8*** %argv.addr, align 8, !tbaa !7
  %44 = load i8*, i8** %incdec.ptr505, align 8, !tbaa !7
  br label %if.end619

if.else506:                                       ; preds = %if.else495
  %arrayidx508 = getelementptr inbounds i8*, i8** %14, i64 1
  %45 = load i8*, i8** %arrayidx508, align 8, !tbaa !7
  %call509 = call i32 @SSL_CONF_cmd_argv(%struct.ssl_conf_ctx_st* noundef nonnull %call4, i32* noundef nonnull %argc.addr, i8*** noundef nonnull %argv.addr) #16
  %cmp510 = icmp eq i32 %call509, 0
  br i1 %cmp510, label %if.then512, label %if.end514

if.then512:                                       ; preds = %if.else506
  %call513 = call i32 @SSL_CONF_cmd_argv(%struct.ssl_conf_ctx_st* noundef nonnull %call2, i32* noundef nonnull %argc.addr, i8*** noundef nonnull %argv.addr) #16
  br label %if.end514

if.end514:                                        ; preds = %if.then512, %if.else506
  %rv.0 = phi i32 [ %call513, %if.then512 ], [ %call509, %if.else506 ]
  %cmp515 = icmp sgt i32 %rv.0, 0
  br i1 %cmp515, label %if.then517, label %if.end541

if.then517:                                       ; preds = %if.end514
  %cmp518 = icmp eq i32 %rv.0, 1
  %spec.select1526 = select i1 %cmp518, i8* null, i8* %45
  %tobool522.not = icmp eq %struct.stack_st_OPENSSL_STRING* %conf_args.02830, null
  br i1 %tobool522.not, label %if.then523, label %if.end528

if.then523:                                       ; preds = %if.then517
  %call524 = call %struct.stack_st* @OPENSSL_sk_new_null() #16
  %46 = bitcast %struct.stack_st* %call524 to %struct.stack_st_OPENSSL_STRING*
  %tobool525.not = icmp eq %struct.stack_st* %call524, null
  br i1 %tobool525.not, label %end, label %if.end528

if.end528:                                        ; preds = %if.then523, %if.then517
  %conf_args.1 = phi %struct.stack_st_OPENSSL_STRING* [ %conf_args.02830, %if.then517 ], [ %46, %if.then523 ]
  %call529 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %conf_args.1) #19
  %call531 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call529, i8* noundef %15) #16
  %tobool532.not = icmp eq i32 %call531, 0
  br i1 %tobool532.not, label %end, label %if.end534

if.end534:                                        ; preds = %if.end528
  %call537 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call529, i8* noundef %spec.select1526) #16
  %tobool538.not = icmp eq i32 %call537, 0
  br i1 %tobool538.not, label %end, label %if.end534.while.cond_crit_edge

if.end534.while.cond_crit_edge:                   ; preds = %if.end534
  %.pre = load i32, i32* %argc.addr, align 4, !tbaa !3
  %cmp = icmp sgt i32 %.pre, 0
  br i1 %cmp, label %while.body, label %if.end624

if.end541:                                        ; preds = %if.end514
  %cmp542 = icmp eq i32 %rv.0, -3
  br i1 %cmp542, label %bad.sink.split, label %if.else546

if.else546:                                       ; preds = %if.end541
  %cmp547 = icmp slt i32 %rv.0, 0
  %. = select i1 %cmp547, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i64 0, i64 0)
  br label %bad.sink.split

if.end619:                                        ; preds = %if.else479, %if.else224, %if.else219, %if.else214, %if.else209, %if.else204, %if.else199, %if.else194, %if.else189, %if.else97, %if.else93, %if.else89, %if.else85, %if.else81, %if.else77, %if.else54, %if.else50, %if.else46, %if.else42, %if.else30, %if.else, %if.else58, %if.end121, %if.then37, %if.end108, %if.end154, %if.end176, %if.then233, %if.then243, %if.then253, %if.end268, %if.end284, %if.end310, %if.end332, %if.end354, %if.end376, %if.end398, %if.then415, %if.end430, %if.end452, %if.end474, %if.end493, %if.end504, %if.end463, %if.end441, %if.then420, %if.end409, %if.end387, %if.end365, %if.end343, %if.end321, %if.end299, %if.then274, %if.then258, %if.then248, %if.then238, %if.end187, %if.end165, %if.end69, %if.then41
  %47 = phi i8** [ %14, %if.then37 ], [ %14, %if.then41 ], [ %incdec.ptr70, %if.end69 ], [ %incdec.ptr109, %if.end108 ], [ %incdec.ptr155, %if.end154 ], [ %incdec.ptr166, %if.end165 ], [ %incdec.ptr177, %if.end176 ], [ %incdec.ptr188, %if.end187 ], [ %14, %if.then233 ], [ %14, %if.then238 ], [ %14, %if.then243 ], [ %14, %if.then248 ], [ %14, %if.then253 ], [ %14, %if.then258 ], [ %incdec.ptr269, %if.end268 ], [ %14, %if.then274 ], [ %incdec.ptr285, %if.end284 ], [ %incdec.ptr300, %if.end299 ], [ %incdec.ptr311, %if.end310 ], [ %incdec.ptr322, %if.end321 ], [ %incdec.ptr333, %if.end332 ], [ %incdec.ptr344, %if.end343 ], [ %incdec.ptr355, %if.end354 ], [ %incdec.ptr366, %if.end365 ], [ %incdec.ptr377, %if.end376 ], [ %incdec.ptr388, %if.end387 ], [ %incdec.ptr399, %if.end398 ], [ %incdec.ptr410, %if.end409 ], [ %14, %if.then415 ], [ %14, %if.then420 ], [ %incdec.ptr431, %if.end430 ], [ %incdec.ptr442, %if.end441 ], [ %incdec.ptr453, %if.end452 ], [ %incdec.ptr464, %if.end463 ], [ %incdec.ptr475, %if.end474 ], [ %incdec.ptr494, %if.end493 ], [ %incdec.ptr505, %if.end504 ], [ %incdec.ptr122, %if.end121 ], [ %14, %if.else58 ], [ %14, %if.else ], [ %14, %if.else30 ], [ %14, %if.else42 ], [ %14, %if.else46 ], [ %14, %if.else50 ], [ %14, %if.else54 ], [ %14, %if.else77 ], [ %14, %if.else81 ], [ %14, %if.else85 ], [ %14, %if.else89 ], [ %14, %if.else93 ], [ %14, %if.else97 ], [ %14, %if.else189 ], [ %14, %if.else194 ], [ %14, %if.else199 ], [ %14, %if.else204 ], [ %14, %if.else209 ], [ %14, %if.else214 ], [ %14, %if.else219 ], [ %14, %if.else224 ], [ %14, %if.else479 ]
  %48 = phi i32 [ %13, %if.then37 ], [ %13, %if.then41 ], [ %dec66, %if.end69 ], [ %dec105, %if.end108 ], [ %dec150, %if.end154 ], [ %dec161, %if.end165 ], [ %dec172, %if.end176 ], [ %dec183, %if.end187 ], [ %13, %if.then233 ], [ %13, %if.then238 ], [ %13, %if.then243 ], [ %13, %if.then248 ], [ %13, %if.then253 ], [ %13, %if.then258 ], [ %dec264, %if.end268 ], [ %13, %if.then274 ], [ %dec280, %if.end284 ], [ %dec295, %if.end299 ], [ %dec306, %if.end310 ], [ %dec317, %if.end321 ], [ %dec328, %if.end332 ], [ %dec339, %if.end343 ], [ %dec350, %if.end354 ], [ %dec361, %if.end365 ], [ %dec372, %if.end376 ], [ %dec383, %if.end387 ], [ %dec394, %if.end398 ], [ %dec405, %if.end409 ], [ %13, %if.then415 ], [ %13, %if.then420 ], [ %dec426, %if.end430 ], [ %dec437, %if.end441 ], [ %dec448, %if.end452 ], [ %dec459, %if.end463 ], [ %dec470, %if.end474 ], [ %dec489, %if.end493 ], [ %dec500, %if.end504 ], [ %dec118, %if.end121 ], [ %13, %if.else58 ], [ %13, %if.else ], [ %13, %if.else30 ], [ %13, %if.else42 ], [ %13, %if.else46 ], [ %13, %if.else50 ], [ %13, %if.else54 ], [ %13, %if.else77 ], [ %13, %if.else81 ], [ %13, %if.else85 ], [ %13, %if.else89 ], [ %13, %if.else93 ], [ %13, %if.else97 ], [ %13, %if.else189 ], [ %13, %if.else194 ], [ %13, %if.else199 ], [ %13, %if.else204 ], [ %13, %if.else209 ], [ %13, %if.else214 ], [ %13, %if.else219 ], [ %13, %if.else224 ], [ %13, %if.else479 ]
  %tls1_2.1 = phi i32 [ %tls1_2.0.ph2883, %if.then37 ], [ %tls1_2.0.ph2883, %if.then41 ], [ %tls1_2.0.ph2883, %if.end69 ], [ %tls1_2.0.ph2883, %if.end108 ], [ %tls1_2.0.ph2883, %if.end154 ], [ %tls1_2.0.ph2883, %if.end165 ], [ %tls1_2.0.ph2883, %if.end176 ], [ %tls1_2.0.ph2883, %if.end187 ], [ %tls1_2.0.ph2883, %if.then233 ], [ %tls1_2.0.ph2883, %if.then238 ], [ %tls1_2.0.ph2883, %if.then243 ], [ %tls1_2.0.ph2883, %if.then248 ], [ %tls1_2.0.ph2883, %if.then253 ], [ %tls1_2.0.ph2883, %if.then258 ], [ %tls1_2.0.ph2883, %if.end268 ], [ %tls1_2.0.ph2883, %if.then274 ], [ %tls1_2.0.ph2883, %if.end284 ], [ %tls1_2.0.ph2883, %if.end299 ], [ %tls1_2.0.ph2883, %if.end310 ], [ %tls1_2.0.ph2883, %if.end321 ], [ %tls1_2.0.ph2883, %if.end332 ], [ %tls1_2.0.ph2883, %if.end343 ], [ %tls1_2.0.ph2883, %if.end354 ], [ %tls1_2.0.ph2883, %if.end365 ], [ %tls1_2.0.ph2883, %if.end376 ], [ %tls1_2.0.ph2883, %if.end387 ], [ %tls1_2.0.ph2883, %if.end398 ], [ %tls1_2.0.ph2883, %if.end409 ], [ %tls1_2.0.ph2883, %if.then415 ], [ %tls1_2.0.ph2883, %if.then420 ], [ %tls1_2.0.ph2883, %if.end430 ], [ %tls1_2.0.ph2883, %if.end441 ], [ %tls1_2.0.ph2883, %if.end452 ], [ %tls1_2.0.ph2883, %if.end463 ], [ %tls1_2.0.ph2883, %if.end474 ], [ %tls1_2.0.ph2883, %if.end493 ], [ %tls1_2.0.ph2883, %if.end504 ], [ %tls1_2.0.ph2883, %if.end121 ], [ %tls1_2.0.ph2883, %if.else479 ], [ %tls1_2.0.ph2883, %if.else224 ], [ %tls1_2.0.ph2883, %if.else219 ], [ %tls1_2.0.ph2883, %if.else214 ], [ %tls1_2.0.ph2883, %if.else209 ], [ %tls1_2.0.ph2883, %if.else204 ], [ %tls1_2.0.ph2883, %if.else199 ], [ %tls1_2.0.ph2883, %if.else194 ], [ %tls1_2.0.ph2883, %if.else189 ], [ %tls1_2.0.ph2883, %if.else97 ], [ %tls1_2.0.ph2883, %if.else93 ], [ %tls1_2.0.ph2883, %if.else89 ], [ %tls1_2.0.ph2883, %if.else85 ], [ %tls1_2.0.ph2883, %if.else81 ], [ 1, %if.else77 ], [ %tls1_2.0.ph2883, %if.else54 ], [ %tls1_2.0.ph2883, %if.else50 ], [ %tls1_2.0.ph2883, %if.else46 ], [ %tls1_2.0.ph2883, %if.else42 ], [ %tls1_2.0.ph2883, %if.else30 ], [ %tls1_2.0.ph2883, %if.else ], [ %tls1_2.0.ph2883, %if.else58 ]
  %ssl3.1 = phi i32 [ %ssl3.0.ph2885, %if.then37 ], [ %ssl3.0.ph2885, %if.then41 ], [ %ssl3.0.ph2885, %if.end69 ], [ %ssl3.0.ph2885, %if.end108 ], [ %ssl3.0.ph2885, %if.end154 ], [ %ssl3.0.ph2885, %if.end165 ], [ %ssl3.0.ph2885, %if.end176 ], [ %ssl3.0.ph2885, %if.end187 ], [ %ssl3.0.ph2885, %if.then233 ], [ %ssl3.0.ph2885, %if.then238 ], [ %ssl3.0.ph2885, %if.then243 ], [ %ssl3.0.ph2885, %if.then248 ], [ %ssl3.0.ph2885, %if.then253 ], [ %ssl3.0.ph2885, %if.then258 ], [ %ssl3.0.ph2885, %if.end268 ], [ %ssl3.0.ph2885, %if.then274 ], [ %ssl3.0.ph2885, %if.end284 ], [ %ssl3.0.ph2885, %if.end299 ], [ %ssl3.0.ph2885, %if.end310 ], [ %ssl3.0.ph2885, %if.end321 ], [ %ssl3.0.ph2885, %if.end332 ], [ %ssl3.0.ph2885, %if.end343 ], [ %ssl3.0.ph2885, %if.end354 ], [ %ssl3.0.ph2885, %if.end365 ], [ %ssl3.0.ph2885, %if.end376 ], [ %ssl3.0.ph2885, %if.end387 ], [ %ssl3.0.ph2885, %if.end398 ], [ %ssl3.0.ph2885, %if.end409 ], [ %ssl3.0.ph2885, %if.then415 ], [ %ssl3.0.ph2885, %if.then420 ], [ %ssl3.0.ph2885, %if.end430 ], [ %ssl3.0.ph2885, %if.end441 ], [ %ssl3.0.ph2885, %if.end452 ], [ %ssl3.0.ph2885, %if.end463 ], [ %ssl3.0.ph2885, %if.end474 ], [ %ssl3.0.ph2885, %if.end493 ], [ %ssl3.0.ph2885, %if.end504 ], [ %ssl3.0.ph2885, %if.end121 ], [ %ssl3.0.ph2885, %if.else479 ], [ %ssl3.0.ph2885, %if.else224 ], [ %ssl3.0.ph2885, %if.else219 ], [ %ssl3.0.ph2885, %if.else214 ], [ %ssl3.0.ph2885, %if.else209 ], [ %ssl3.0.ph2885, %if.else204 ], [ %ssl3.0.ph2885, %if.else199 ], [ %ssl3.0.ph2885, %if.else194 ], [ %ssl3.0.ph2885, %if.else189 ], [ %ssl3.0.ph2885, %if.else97 ], [ %ssl3.0.ph2885, %if.else93 ], [ %ssl3.0.ph2885, %if.else89 ], [ 1, %if.else85 ], [ %ssl3.0.ph2885, %if.else81 ], [ %ssl3.0.ph2885, %if.else77 ], [ %ssl3.0.ph2885, %if.else54 ], [ %ssl3.0.ph2885, %if.else50 ], [ %ssl3.0.ph2885, %if.else46 ], [ %ssl3.0.ph2885, %if.else42 ], [ %ssl3.0.ph2885, %if.else30 ], [ %ssl3.0.ph2885, %if.else ], [ %ssl3.0.ph2885, %if.else58 ]
  %client_auth.1 = phi i32 [ %client_auth.0.ph2887, %if.then37 ], [ %client_auth.0.ph2887, %if.then41 ], [ %client_auth.0.ph2887, %if.end69 ], [ %client_auth.0.ph2887, %if.end108 ], [ %client_auth.0.ph2887, %if.end154 ], [ %client_auth.0.ph2887, %if.end165 ], [ %client_auth.0.ph2887, %if.end176 ], [ %client_auth.0.ph2887, %if.end187 ], [ %client_auth.0.ph2887, %if.then233 ], [ %client_auth.0.ph2887, %if.then238 ], [ %client_auth.0.ph2887, %if.then243 ], [ %client_auth.0.ph2887, %if.then248 ], [ %client_auth.0.ph2887, %if.then253 ], [ %client_auth.0.ph2887, %if.then258 ], [ %client_auth.0.ph2887, %if.end268 ], [ %client_auth.0.ph2887, %if.then274 ], [ %client_auth.0.ph2887, %if.end284 ], [ %client_auth.0.ph2887, %if.end299 ], [ %client_auth.0.ph2887, %if.end310 ], [ %client_auth.0.ph2887, %if.end321 ], [ %client_auth.0.ph2887, %if.end332 ], [ %client_auth.0.ph2887, %if.end343 ], [ %client_auth.0.ph2887, %if.end354 ], [ %client_auth.0.ph2887, %if.end365 ], [ %client_auth.0.ph2887, %if.end376 ], [ %client_auth.0.ph2887, %if.end387 ], [ %client_auth.0.ph2887, %if.end398 ], [ %client_auth.0.ph2887, %if.end409 ], [ %client_auth.0.ph2887, %if.then415 ], [ %client_auth.0.ph2887, %if.then420 ], [ %client_auth.0.ph2887, %if.end430 ], [ %client_auth.0.ph2887, %if.end441 ], [ %client_auth.0.ph2887, %if.end452 ], [ %client_auth.0.ph2887, %if.end463 ], [ %client_auth.0.ph2887, %if.end474 ], [ %client_auth.0.ph2887, %if.end493 ], [ %client_auth.0.ph2887, %if.end504 ], [ %client_auth.0.ph2887, %if.end121 ], [ %client_auth.0.ph2887, %if.else479 ], [ %client_auth.0.ph2887, %if.else224 ], [ %client_auth.0.ph2887, %if.else219 ], [ %client_auth.0.ph2887, %if.else214 ], [ %client_auth.0.ph2887, %if.else209 ], [ %client_auth.0.ph2887, %if.else204 ], [ %client_auth.0.ph2887, %if.else199 ], [ %client_auth.0.ph2887, %if.else194 ], [ %client_auth.0.ph2887, %if.else189 ], [ %client_auth.0.ph2887, %if.else97 ], [ %client_auth.0.ph2887, %if.else93 ], [ %client_auth.0.ph2887, %if.else89 ], [ %client_auth.0.ph2887, %if.else85 ], [ %client_auth.0.ph2887, %if.else81 ], [ %client_auth.0.ph2887, %if.else77 ], [ %client_auth.0.ph2887, %if.else54 ], [ %client_auth.0.ph2887, %if.else50 ], [ %client_auth.0.ph2887, %if.else46 ], [ %client_auth.0.ph2887, %if.else42 ], [ 1, %if.else30 ], [ %client_auth.0.ph2887, %if.else ], [ %client_auth.0.ph2887, %if.else58 ]
  %server_auth.1 = phi i32 [ %server_auth.0.ph2889, %if.then37 ], [ %server_auth.0.ph2889, %if.then41 ], [ %server_auth.0.ph2889, %if.end69 ], [ %server_auth.0.ph2889, %if.end108 ], [ %server_auth.0.ph2889, %if.end154 ], [ %server_auth.0.ph2889, %if.end165 ], [ %server_auth.0.ph2889, %if.end176 ], [ %server_auth.0.ph2889, %if.end187 ], [ %server_auth.0.ph2889, %if.then233 ], [ %server_auth.0.ph2889, %if.then238 ], [ %server_auth.0.ph2889, %if.then243 ], [ %server_auth.0.ph2889, %if.then248 ], [ %server_auth.0.ph2889, %if.then253 ], [ %server_auth.0.ph2889, %if.then258 ], [ %server_auth.0.ph2889, %if.end268 ], [ %server_auth.0.ph2889, %if.then274 ], [ %server_auth.0.ph2889, %if.end284 ], [ %server_auth.0.ph2889, %if.end299 ], [ %server_auth.0.ph2889, %if.end310 ], [ %server_auth.0.ph2889, %if.end321 ], [ %server_auth.0.ph2889, %if.end332 ], [ %server_auth.0.ph2889, %if.end343 ], [ %server_auth.0.ph2889, %if.end354 ], [ %server_auth.0.ph2889, %if.end365 ], [ %server_auth.0.ph2889, %if.end376 ], [ %server_auth.0.ph2889, %if.end387 ], [ %server_auth.0.ph2889, %if.end398 ], [ %server_auth.0.ph2889, %if.end409 ], [ %server_auth.0.ph2889, %if.then415 ], [ %server_auth.0.ph2889, %if.then420 ], [ %server_auth.0.ph2889, %if.end430 ], [ %server_auth.0.ph2889, %if.end441 ], [ %server_auth.0.ph2889, %if.end452 ], [ %server_auth.0.ph2889, %if.end463 ], [ %server_auth.0.ph2889, %if.end474 ], [ %server_auth.0.ph2889, %if.end493 ], [ %server_auth.0.ph2889, %if.end504 ], [ %server_auth.0.ph2889, %if.end121 ], [ %server_auth.0.ph2889, %if.else479 ], [ %server_auth.0.ph2889, %if.else224 ], [ %server_auth.0.ph2889, %if.else219 ], [ %server_auth.0.ph2889, %if.else214 ], [ %server_auth.0.ph2889, %if.else209 ], [ %server_auth.0.ph2889, %if.else204 ], [ %server_auth.0.ph2889, %if.else199 ], [ %server_auth.0.ph2889, %if.else194 ], [ %server_auth.0.ph2889, %if.else189 ], [ %server_auth.0.ph2889, %if.else97 ], [ %server_auth.0.ph2889, %if.else93 ], [ %server_auth.0.ph2889, %if.else89 ], [ %server_auth.0.ph2889, %if.else85 ], [ %server_auth.0.ph2889, %if.else81 ], [ %server_auth.0.ph2889, %if.else77 ], [ %server_auth.0.ph2889, %if.else54 ], [ %server_auth.0.ph2889, %if.else50 ], [ %server_auth.0.ph2889, %if.else46 ], [ %server_auth.0.ph2889, %if.else42 ], [ %server_auth.0.ph2889, %if.else30 ], [ 1, %if.else ], [ %server_auth.0.ph2889, %if.else58 ]
  %tls1.1 = phi i32 [ %tls1.0.ph2891, %if.then37 ], [ %tls1.0.ph2891, %if.then41 ], [ %tls1.0.ph2891, %if.end69 ], [ %tls1.0.ph2891, %if.end108 ], [ %tls1.0.ph2891, %if.end154 ], [ %tls1.0.ph2891, %if.end165 ], [ %tls1.0.ph2891, %if.end176 ], [ %tls1.0.ph2891, %if.end187 ], [ %tls1.0.ph2891, %if.then233 ], [ %tls1.0.ph2891, %if.then238 ], [ %tls1.0.ph2891, %if.then243 ], [ %tls1.0.ph2891, %if.then248 ], [ %tls1.0.ph2891, %if.then253 ], [ %tls1.0.ph2891, %if.then258 ], [ %tls1.0.ph2891, %if.end268 ], [ %tls1.0.ph2891, %if.then274 ], [ %tls1.0.ph2891, %if.end284 ], [ %tls1.0.ph2891, %if.end299 ], [ %tls1.0.ph2891, %if.end310 ], [ %tls1.0.ph2891, %if.end321 ], [ %tls1.0.ph2891, %if.end332 ], [ %tls1.0.ph2891, %if.end343 ], [ %tls1.0.ph2891, %if.end354 ], [ %tls1.0.ph2891, %if.end365 ], [ %tls1.0.ph2891, %if.end376 ], [ %tls1.0.ph2891, %if.end387 ], [ %tls1.0.ph2891, %if.end398 ], [ %tls1.0.ph2891, %if.end409 ], [ %tls1.0.ph2891, %if.then415 ], [ %tls1.0.ph2891, %if.then420 ], [ %tls1.0.ph2891, %if.end430 ], [ %tls1.0.ph2891, %if.end441 ], [ %tls1.0.ph2891, %if.end452 ], [ %tls1.0.ph2891, %if.end463 ], [ %tls1.0.ph2891, %if.end474 ], [ %tls1.0.ph2891, %if.end493 ], [ %tls1.0.ph2891, %if.end504 ], [ %tls1.0.ph2891, %if.end121 ], [ %tls1.0.ph2891, %if.else479 ], [ %tls1.0.ph2891, %if.else224 ], [ %tls1.0.ph2891, %if.else219 ], [ %tls1.0.ph2891, %if.else214 ], [ %tls1.0.ph2891, %if.else209 ], [ %tls1.0.ph2891, %if.else204 ], [ %tls1.0.ph2891, %if.else199 ], [ %tls1.0.ph2891, %if.else194 ], [ %tls1.0.ph2891, %if.else189 ], [ %tls1.0.ph2891, %if.else97 ], [ %tls1.0.ph2891, %if.else93 ], [ %tls1.0.ph2891, %if.else89 ], [ %tls1.0.ph2891, %if.else85 ], [ 1, %if.else81 ], [ %tls1.0.ph2891, %if.else77 ], [ %tls1.0.ph2891, %if.else54 ], [ %tls1.0.ph2891, %if.else50 ], [ %tls1.0.ph2891, %if.else46 ], [ %tls1.0.ph2891, %if.else42 ], [ %tls1.0.ph2891, %if.else30 ], [ %tls1.0.ph2891, %if.else ], [ %tls1.0.ph2891, %if.else58 ]
  %dtls.1 = phi i32 [ %dtls.0.ph2893, %if.then37 ], [ %dtls.0.ph2893, %if.then41 ], [ %dtls.0.ph2893, %if.end69 ], [ %dtls.0.ph2893, %if.end108 ], [ %dtls.0.ph2893, %if.end154 ], [ %dtls.0.ph2893, %if.end165 ], [ %dtls.0.ph2893, %if.end176 ], [ %dtls.0.ph2893, %if.end187 ], [ %dtls.0.ph2893, %if.then233 ], [ %dtls.0.ph2893, %if.then238 ], [ %dtls.0.ph2893, %if.then243 ], [ %dtls.0.ph2893, %if.then248 ], [ %dtls.0.ph2893, %if.then253 ], [ %dtls.0.ph2893, %if.then258 ], [ %dtls.0.ph2893, %if.end268 ], [ %dtls.0.ph2893, %if.then274 ], [ %dtls.0.ph2893, %if.end284 ], [ %dtls.0.ph2893, %if.end299 ], [ %dtls.0.ph2893, %if.end310 ], [ %dtls.0.ph2893, %if.end321 ], [ %dtls.0.ph2893, %if.end332 ], [ %dtls.0.ph2893, %if.end343 ], [ %dtls.0.ph2893, %if.end354 ], [ %dtls.0.ph2893, %if.end365 ], [ %dtls.0.ph2893, %if.end376 ], [ %dtls.0.ph2893, %if.end387 ], [ %dtls.0.ph2893, %if.end398 ], [ %dtls.0.ph2893, %if.end409 ], [ %dtls.0.ph2893, %if.then415 ], [ %dtls.0.ph2893, %if.then420 ], [ %dtls.0.ph2893, %if.end430 ], [ %dtls.0.ph2893, %if.end441 ], [ %dtls.0.ph2893, %if.end452 ], [ %dtls.0.ph2893, %if.end463 ], [ %dtls.0.ph2893, %if.end474 ], [ %dtls.0.ph2893, %if.end493 ], [ %dtls.0.ph2893, %if.end504 ], [ %dtls.0.ph2893, %if.end121 ], [ %dtls.0.ph2893, %if.else479 ], [ %dtls.0.ph2893, %if.else224 ], [ %dtls.0.ph2893, %if.else219 ], [ %dtls.0.ph2893, %if.else214 ], [ %dtls.0.ph2893, %if.else209 ], [ %dtls.0.ph2893, %if.else204 ], [ %dtls.0.ph2893, %if.else199 ], [ %dtls.0.ph2893, %if.else194 ], [ %dtls.0.ph2893, %if.else189 ], [ 1, %if.else97 ], [ %dtls.0.ph2893, %if.else93 ], [ %dtls.0.ph2893, %if.else89 ], [ %dtls.0.ph2893, %if.else85 ], [ %dtls.0.ph2893, %if.else81 ], [ %dtls.0.ph2893, %if.else77 ], [ %dtls.0.ph2893, %if.else54 ], [ %dtls.0.ph2893, %if.else50 ], [ %dtls.0.ph2893, %if.else46 ], [ %dtls.0.ph2893, %if.else42 ], [ %dtls.0.ph2893, %if.else30 ], [ %dtls.0.ph2893, %if.else ], [ %dtls.0.ph2893, %if.else58 ]
  %number.1 = phi i32 [ %number.0.ph2895, %if.then37 ], [ %number.0.ph2895, %if.then41 ], [ %number.0.ph2895, %if.end69 ], [ %spec.store.select, %if.end108 ], [ %number.0.ph2895, %if.end154 ], [ %number.0.ph2895, %if.end165 ], [ %number.0.ph2895, %if.end176 ], [ %number.0.ph2895, %if.end187 ], [ %number.0.ph2895, %if.then233 ], [ %number.0.ph2895, %if.then238 ], [ %number.0.ph2895, %if.then243 ], [ %number.0.ph2895, %if.then248 ], [ %number.0.ph2895, %if.then253 ], [ %number.0.ph2895, %if.then258 ], [ %number.0.ph2895, %if.end268 ], [ %number.0.ph2895, %if.then274 ], [ %number.0.ph2895, %if.end284 ], [ %number.0.ph2895, %if.end299 ], [ %number.0.ph2895, %if.end310 ], [ %number.0.ph2895, %if.end321 ], [ %number.0.ph2895, %if.end332 ], [ %number.0.ph2895, %if.end343 ], [ %number.0.ph2895, %if.end354 ], [ %number.0.ph2895, %if.end365 ], [ %number.0.ph2895, %if.end376 ], [ %number.0.ph2895, %if.end387 ], [ %number.0.ph2895, %if.end398 ], [ %number.0.ph2895, %if.end409 ], [ %number.0.ph2895, %if.then415 ], [ %number.0.ph2895, %if.then420 ], [ %number.0.ph2895, %if.end430 ], [ %number.0.ph2895, %if.end441 ], [ %number.0.ph2895, %if.end452 ], [ %number.0.ph2895, %if.end463 ], [ %number.0.ph2895, %if.end474 ], [ %number.0.ph2895, %if.end493 ], [ %number.0.ph2895, %if.end504 ], [ %number.0.ph2895, %if.end121 ], [ %number.0.ph2895, %if.else58 ], [ %number.0.ph2895, %if.else ], [ %number.0.ph2895, %if.else30 ], [ %number.0.ph2895, %if.else42 ], [ %number.0.ph2895, %if.else46 ], [ %number.0.ph2895, %if.else50 ], [ %number.0.ph2895, %if.else54 ], [ %number.0.ph2895, %if.else77 ], [ %number.0.ph2895, %if.else81 ], [ %number.0.ph2895, %if.else85 ], [ %number.0.ph2895, %if.else89 ], [ %number.0.ph2895, %if.else93 ], [ %number.0.ph2895, %if.else97 ], [ %number.0.ph2895, %if.else189 ], [ %number.0.ph2895, %if.else194 ], [ %number.0.ph2895, %if.else199 ], [ %number.0.ph2895, %if.else204 ], [ %number.0.ph2895, %if.else209 ], [ %number.0.ph2895, %if.else214 ], [ %number.0.ph2895, %if.else219 ], [ %number.0.ph2895, %if.else224 ], [ %number.0.ph2895, %if.else479 ]
  %reuse.1 = phi i32 [ %reuse.0.ph2898, %if.then37 ], [ %reuse.0.ph2898, %if.then41 ], [ %reuse.0.ph2898, %if.end69 ], [ %reuse.0.ph2898, %if.end108 ], [ %reuse.0.ph2898, %if.end154 ], [ %reuse.0.ph2898, %if.end165 ], [ %reuse.0.ph2898, %if.end176 ], [ %reuse.0.ph2898, %if.end187 ], [ %reuse.0.ph2898, %if.then233 ], [ %reuse.0.ph2898, %if.then238 ], [ %reuse.0.ph2898, %if.then243 ], [ %reuse.0.ph2898, %if.then248 ], [ %reuse.0.ph2898, %if.then253 ], [ %reuse.0.ph2898, %if.then258 ], [ %reuse.0.ph2898, %if.end268 ], [ %reuse.0.ph2898, %if.then274 ], [ %reuse.0.ph2898, %if.end284 ], [ %reuse.0.ph2898, %if.end299 ], [ %reuse.0.ph2898, %if.end310 ], [ %reuse.0.ph2898, %if.end321 ], [ %reuse.0.ph2898, %if.end332 ], [ %reuse.0.ph2898, %if.end343 ], [ %reuse.0.ph2898, %if.end354 ], [ %reuse.0.ph2898, %if.end365 ], [ %reuse.0.ph2898, %if.end376 ], [ %reuse.0.ph2898, %if.end387 ], [ %reuse.0.ph2898, %if.end398 ], [ %reuse.0.ph2898, %if.end409 ], [ %reuse.0.ph2898, %if.then415 ], [ %reuse.0.ph2898, %if.then420 ], [ %reuse.0.ph2898, %if.end430 ], [ %reuse.0.ph2898, %if.end441 ], [ %reuse.0.ph2898, %if.end452 ], [ %reuse.0.ph2898, %if.end463 ], [ %reuse.0.ph2898, %if.end474 ], [ %reuse.0.ph2898, %if.end493 ], [ %reuse.0.ph2898, %if.end504 ], [ %reuse.0.ph2898, %if.end121 ], [ %reuse.0.ph2898, %if.else479 ], [ %reuse.0.ph2898, %if.else224 ], [ %reuse.0.ph2898, %if.else219 ], [ %reuse.0.ph2898, %if.else214 ], [ %reuse.0.ph2898, %if.else209 ], [ %reuse.0.ph2898, %if.else204 ], [ %reuse.0.ph2898, %if.else199 ], [ %reuse.0.ph2898, %if.else194 ], [ %reuse.0.ph2898, %if.else189 ], [ %reuse.0.ph2898, %if.else97 ], [ %reuse.0.ph2898, %if.else93 ], [ %reuse.0.ph2898, %if.else89 ], [ %reuse.0.ph2898, %if.else85 ], [ %reuse.0.ph2898, %if.else81 ], [ %reuse.0.ph2898, %if.else77 ], [ %reuse.0.ph2898, %if.else54 ], [ %reuse.0.ph2898, %if.else50 ], [ %reuse.0.ph2898, %if.else46 ], [ 1, %if.else42 ], [ %reuse.0.ph2898, %if.else30 ], [ %reuse.0.ph2898, %if.else ], [ %reuse.0.ph2898, %if.else58 ]
  %should_reuse.1 = phi i32 [ %should_reuse.0.ph2900, %if.then37 ], [ %should_reuse.0.ph2900, %if.then41 ], [ %should_reuse.0.ph2900, %if.end69 ], [ %should_reuse.0.ph2900, %if.end108 ], [ %should_reuse.0.ph2900, %if.end154 ], [ %should_reuse.0.ph2900, %if.end165 ], [ %should_reuse.0.ph2900, %if.end176 ], [ %should_reuse.0.ph2900, %if.end187 ], [ %should_reuse.0.ph2900, %if.then233 ], [ %should_reuse.0.ph2900, %if.then238 ], [ %should_reuse.0.ph2900, %if.then243 ], [ %should_reuse.0.ph2900, %if.then248 ], [ %should_reuse.0.ph2900, %if.then253 ], [ %should_reuse.0.ph2900, %if.then258 ], [ %should_reuse.0.ph2900, %if.end268 ], [ %should_reuse.0.ph2900, %if.then274 ], [ %should_reuse.0.ph2900, %if.end284 ], [ %should_reuse.0.ph2900, %if.end299 ], [ %should_reuse.0.ph2900, %if.end310 ], [ %should_reuse.0.ph2900, %if.end321 ], [ %should_reuse.0.ph2900, %if.end332 ], [ %should_reuse.0.ph2900, %if.end343 ], [ %should_reuse.0.ph2900, %if.end354 ], [ %should_reuse.0.ph2900, %if.end365 ], [ %should_reuse.0.ph2900, %if.end376 ], [ %should_reuse.0.ph2900, %if.end387 ], [ %should_reuse.0.ph2900, %if.end398 ], [ %should_reuse.0.ph2900, %if.end409 ], [ %should_reuse.0.ph2900, %if.then415 ], [ %should_reuse.0.ph2900, %if.then420 ], [ %should_reuse.0.ph2900, %if.end430 ], [ %should_reuse.0.ph2900, %if.end441 ], [ %should_reuse.0.ph2900, %if.end452 ], [ %should_reuse.0.ph2900, %if.end463 ], [ %lnot.ext, %if.end474 ], [ %should_reuse.0.ph2900, %if.end493 ], [ %should_reuse.0.ph2900, %if.end504 ], [ %should_reuse.0.ph2900, %if.end121 ], [ %should_reuse.0.ph2900, %if.else58 ], [ %should_reuse.0.ph2900, %if.else ], [ %should_reuse.0.ph2900, %if.else30 ], [ %should_reuse.0.ph2900, %if.else42 ], [ %should_reuse.0.ph2900, %if.else46 ], [ %should_reuse.0.ph2900, %if.else50 ], [ %should_reuse.0.ph2900, %if.else54 ], [ %should_reuse.0.ph2900, %if.else77 ], [ %should_reuse.0.ph2900, %if.else81 ], [ %should_reuse.0.ph2900, %if.else85 ], [ %should_reuse.0.ph2900, %if.else89 ], [ %should_reuse.0.ph2900, %if.else93 ], [ %should_reuse.0.ph2900, %if.else97 ], [ %should_reuse.0.ph2900, %if.else189 ], [ %should_reuse.0.ph2900, %if.else194 ], [ %should_reuse.0.ph2900, %if.else199 ], [ %should_reuse.0.ph2900, %if.else204 ], [ %should_reuse.0.ph2900, %if.else209 ], [ %should_reuse.0.ph2900, %if.else214 ], [ %should_reuse.0.ph2900, %if.else219 ], [ %should_reuse.0.ph2900, %if.else224 ], [ %should_reuse.0.ph2900, %if.else479 ]
  %no_ticket.1 = phi i32 [ %no_ticket.0.ph2903, %if.then37 ], [ %no_ticket.0.ph2903, %if.then41 ], [ %no_ticket.0.ph2903, %if.end69 ], [ %no_ticket.0.ph2903, %if.end108 ], [ %no_ticket.0.ph2903, %if.end154 ], [ %no_ticket.0.ph2903, %if.end165 ], [ %no_ticket.0.ph2903, %if.end176 ], [ %no_ticket.0.ph2903, %if.end187 ], [ %no_ticket.0.ph2903, %if.then233 ], [ %no_ticket.0.ph2903, %if.then238 ], [ %no_ticket.0.ph2903, %if.then243 ], [ %no_ticket.0.ph2903, %if.then248 ], [ %no_ticket.0.ph2903, %if.then253 ], [ %no_ticket.0.ph2903, %if.then258 ], [ %no_ticket.0.ph2903, %if.end268 ], [ %no_ticket.0.ph2903, %if.then274 ], [ %no_ticket.0.ph2903, %if.end284 ], [ %no_ticket.0.ph2903, %if.end299 ], [ %no_ticket.0.ph2903, %if.end310 ], [ %no_ticket.0.ph2903, %if.end321 ], [ %no_ticket.0.ph2903, %if.end332 ], [ %no_ticket.0.ph2903, %if.end343 ], [ %no_ticket.0.ph2903, %if.end354 ], [ %no_ticket.0.ph2903, %if.end365 ], [ %no_ticket.0.ph2903, %if.end376 ], [ %no_ticket.0.ph2903, %if.end387 ], [ %no_ticket.0.ph2903, %if.end398 ], [ %no_ticket.0.ph2903, %if.end409 ], [ %no_ticket.0.ph2903, %if.then415 ], [ %no_ticket.0.ph2903, %if.then420 ], [ %no_ticket.0.ph2903, %if.end430 ], [ %no_ticket.0.ph2903, %if.end441 ], [ %no_ticket.0.ph2903, %if.end452 ], [ %no_ticket.0.ph2903, %if.end463 ], [ %no_ticket.0.ph2903, %if.end474 ], [ %no_ticket.0.ph2903, %if.end493 ], [ %no_ticket.0.ph2903, %if.end504 ], [ %no_ticket.0.ph2903, %if.end121 ], [ 1, %if.else479 ], [ %no_ticket.0.ph2903, %if.else224 ], [ %no_ticket.0.ph2903, %if.else219 ], [ %no_ticket.0.ph2903, %if.else214 ], [ %no_ticket.0.ph2903, %if.else209 ], [ %no_ticket.0.ph2903, %if.else204 ], [ %no_ticket.0.ph2903, %if.else199 ], [ %no_ticket.0.ph2903, %if.else194 ], [ %no_ticket.0.ph2903, %if.else189 ], [ %no_ticket.0.ph2903, %if.else97 ], [ %no_ticket.0.ph2903, %if.else93 ], [ %no_ticket.0.ph2903, %if.else89 ], [ %no_ticket.0.ph2903, %if.else85 ], [ %no_ticket.0.ph2903, %if.else81 ], [ %no_ticket.0.ph2903, %if.else77 ], [ %no_ticket.0.ph2903, %if.else54 ], [ %no_ticket.0.ph2903, %if.else50 ], [ %no_ticket.0.ph2903, %if.else46 ], [ %no_ticket.0.ph2903, %if.else42 ], [ %no_ticket.0.ph2903, %if.else30 ], [ %no_ticket.0.ph2903, %if.else ], [ %no_ticket.0.ph2903, %if.else58 ]
  %bytes.2 = phi i64 [ %bytes.0.ph2905, %if.then37 ], [ %bytes.0.ph2905, %if.then41 ], [ %bytes.0.ph2905, %if.end69 ], [ %bytes.0.ph2905, %if.end108 ], [ %bytes.0.ph2905, %if.end154 ], [ %bytes.0.ph2905, %if.end165 ], [ %bytes.0.ph2905, %if.end176 ], [ %bytes.0.ph2905, %if.end187 ], [ %bytes.0.ph2905, %if.then233 ], [ %bytes.0.ph2905, %if.then238 ], [ %bytes.0.ph2905, %if.then243 ], [ %bytes.0.ph2905, %if.then248 ], [ %bytes.0.ph2905, %if.then253 ], [ %bytes.0.ph2905, %if.then258 ], [ %bytes.0.ph2905, %if.end268 ], [ %bytes.0.ph2905, %if.then274 ], [ %bytes.0.ph2905, %if.end284 ], [ %bytes.0.ph2905, %if.end299 ], [ %bytes.0.ph2905, %if.end310 ], [ %bytes.0.ph2905, %if.end321 ], [ %bytes.0.ph2905, %if.end332 ], [ %bytes.0.ph2905, %if.end343 ], [ %bytes.0.ph2905, %if.end354 ], [ %bytes.0.ph2905, %if.end365 ], [ %bytes.0.ph2905, %if.end376 ], [ %bytes.0.ph2905, %if.end387 ], [ %bytes.0.ph2905, %if.end398 ], [ %bytes.0.ph2905, %if.end409 ], [ %bytes.0.ph2905, %if.then415 ], [ %bytes.0.ph2905, %if.then420 ], [ %bytes.0.ph2905, %if.end430 ], [ %bytes.0.ph2905, %if.end441 ], [ %bytes.0.ph2905, %if.end452 ], [ %bytes.0.ph2905, %if.end463 ], [ %bytes.0.ph2905, %if.end474 ], [ %bytes.0.ph2905, %if.end493 ], [ %bytes.0.ph2905, %if.end504 ], [ %spec.select1532, %if.end121 ], [ %bytes.0.ph2905, %if.else58 ], [ %bytes.0.ph2905, %if.else ], [ %bytes.0.ph2905, %if.else30 ], [ %bytes.0.ph2905, %if.else42 ], [ %bytes.0.ph2905, %if.else46 ], [ %bytes.0.ph2905, %if.else50 ], [ %bytes.0.ph2905, %if.else54 ], [ %bytes.0.ph2905, %if.else77 ], [ %bytes.0.ph2905, %if.else81 ], [ %bytes.0.ph2905, %if.else85 ], [ %bytes.0.ph2905, %if.else89 ], [ %bytes.0.ph2905, %if.else93 ], [ %bytes.0.ph2905, %if.else97 ], [ %bytes.0.ph2905, %if.else189 ], [ %bytes.0.ph2905, %if.else194 ], [ %bytes.0.ph2905, %if.else199 ], [ %bytes.0.ph2905, %if.else204 ], [ %bytes.0.ph2905, %if.else209 ], [ %bytes.0.ph2905, %if.else214 ], [ %bytes.0.ph2905, %if.else219 ], [ %bytes.0.ph2905, %if.else224 ], [ %bytes.0.ph2905, %if.else479 ]
  %dhe512.1 = phi i32 [ %dhe512.0.ph2908, %if.then37 ], [ %dhe512.0.ph2908, %if.then41 ], [ %dhe512.0.ph2908, %if.end69 ], [ %dhe512.0.ph2908, %if.end108 ], [ %dhe512.0.ph2908, %if.end154 ], [ %dhe512.0.ph2908, %if.end165 ], [ %dhe512.0.ph2908, %if.end176 ], [ %dhe512.0.ph2908, %if.end187 ], [ %dhe512.0.ph2908, %if.then233 ], [ %dhe512.0.ph2908, %if.then238 ], [ %dhe512.0.ph2908, %if.then243 ], [ %dhe512.0.ph2908, %if.then248 ], [ %dhe512.0.ph2908, %if.then253 ], [ %dhe512.0.ph2908, %if.then258 ], [ %dhe512.0.ph2908, %if.end268 ], [ %dhe512.0.ph2908, %if.then274 ], [ %dhe512.0.ph2908, %if.end284 ], [ %dhe512.0.ph2908, %if.end299 ], [ %dhe512.0.ph2908, %if.end310 ], [ %dhe512.0.ph2908, %if.end321 ], [ %dhe512.0.ph2908, %if.end332 ], [ %dhe512.0.ph2908, %if.end343 ], [ %dhe512.0.ph2908, %if.end354 ], [ %dhe512.0.ph2908, %if.end365 ], [ %dhe512.0.ph2908, %if.end376 ], [ %dhe512.0.ph2908, %if.end387 ], [ %dhe512.0.ph2908, %if.end398 ], [ %dhe512.0.ph2908, %if.end409 ], [ %dhe512.0.ph2908, %if.then415 ], [ %dhe512.0.ph2908, %if.then420 ], [ %dhe512.0.ph2908, %if.end430 ], [ %dhe512.0.ph2908, %if.end441 ], [ %dhe512.0.ph2908, %if.end452 ], [ %dhe512.0.ph2908, %if.end463 ], [ %dhe512.0.ph2908, %if.end474 ], [ %dhe512.0.ph2908, %if.end493 ], [ %dhe512.0.ph2908, %if.end504 ], [ %dhe512.0.ph2908, %if.end121 ], [ %dhe512.0.ph2908, %if.else479 ], [ %dhe512.0.ph2908, %if.else224 ], [ %dhe512.0.ph2908, %if.else219 ], [ %dhe512.0.ph2908, %if.else214 ], [ %dhe512.0.ph2908, %if.else209 ], [ %dhe512.0.ph2908, %if.else204 ], [ %dhe512.0.ph2908, %if.else199 ], [ %dhe512.0.ph2908, %if.else194 ], [ %dhe512.0.ph2908, %if.else189 ], [ %dhe512.0.ph2908, %if.else97 ], [ %dhe512.0.ph2908, %if.else93 ], [ %dhe512.0.ph2908, %if.else89 ], [ %dhe512.0.ph2908, %if.else85 ], [ %dhe512.0.ph2908, %if.else81 ], [ %dhe512.0.ph2908, %if.else77 ], [ %dhe512.0.ph2908, %if.else54 ], [ 1, %if.else50 ], [ %dhe512.0.ph2908, %if.else46 ], [ %dhe512.0.ph2908, %if.else42 ], [ %dhe512.0.ph2908, %if.else30 ], [ %dhe512.0.ph2908, %if.else ], [ %dhe512.0.ph2908, %if.else58 ]
  %dhe1024dsa.1 = phi i32 [ %dhe1024dsa.0.ph2910, %if.then37 ], [ %dhe1024dsa.0.ph2910, %if.then41 ], [ %dhe1024dsa.0.ph2910, %if.end69 ], [ %dhe1024dsa.0.ph2910, %if.end108 ], [ %dhe1024dsa.0.ph2910, %if.end154 ], [ %dhe1024dsa.0.ph2910, %if.end165 ], [ %dhe1024dsa.0.ph2910, %if.end176 ], [ %dhe1024dsa.0.ph2910, %if.end187 ], [ %dhe1024dsa.0.ph2910, %if.then233 ], [ %dhe1024dsa.0.ph2910, %if.then238 ], [ %dhe1024dsa.0.ph2910, %if.then243 ], [ %dhe1024dsa.0.ph2910, %if.then248 ], [ %dhe1024dsa.0.ph2910, %if.then253 ], [ %dhe1024dsa.0.ph2910, %if.then258 ], [ %dhe1024dsa.0.ph2910, %if.end268 ], [ %dhe1024dsa.0.ph2910, %if.then274 ], [ %dhe1024dsa.0.ph2910, %if.end284 ], [ %dhe1024dsa.0.ph2910, %if.end299 ], [ %dhe1024dsa.0.ph2910, %if.end310 ], [ %dhe1024dsa.0.ph2910, %if.end321 ], [ %dhe1024dsa.0.ph2910, %if.end332 ], [ %dhe1024dsa.0.ph2910, %if.end343 ], [ %dhe1024dsa.0.ph2910, %if.end354 ], [ %dhe1024dsa.0.ph2910, %if.end365 ], [ %dhe1024dsa.0.ph2910, %if.end376 ], [ %dhe1024dsa.0.ph2910, %if.end387 ], [ %dhe1024dsa.0.ph2910, %if.end398 ], [ %dhe1024dsa.0.ph2910, %if.end409 ], [ %dhe1024dsa.0.ph2910, %if.then415 ], [ %dhe1024dsa.0.ph2910, %if.then420 ], [ %dhe1024dsa.0.ph2910, %if.end430 ], [ %dhe1024dsa.0.ph2910, %if.end441 ], [ %dhe1024dsa.0.ph2910, %if.end452 ], [ %dhe1024dsa.0.ph2910, %if.end463 ], [ %dhe1024dsa.0.ph2910, %if.end474 ], [ %dhe1024dsa.0.ph2910, %if.end493 ], [ %dhe1024dsa.0.ph2910, %if.end504 ], [ %dhe1024dsa.0.ph2910, %if.end121 ], [ %dhe1024dsa.0.ph2910, %if.else479 ], [ %dhe1024dsa.0.ph2910, %if.else224 ], [ %dhe1024dsa.0.ph2910, %if.else219 ], [ %dhe1024dsa.0.ph2910, %if.else214 ], [ %dhe1024dsa.0.ph2910, %if.else209 ], [ %dhe1024dsa.0.ph2910, %if.else204 ], [ %dhe1024dsa.0.ph2910, %if.else199 ], [ %dhe1024dsa.0.ph2910, %if.else194 ], [ %dhe1024dsa.0.ph2910, %if.else189 ], [ %dhe1024dsa.0.ph2910, %if.else97 ], [ %dhe1024dsa.0.ph2910, %if.else93 ], [ %dhe1024dsa.0.ph2910, %if.else89 ], [ %dhe1024dsa.0.ph2910, %if.else85 ], [ %dhe1024dsa.0.ph2910, %if.else81 ], [ %dhe1024dsa.0.ph2910, %if.else77 ], [ 1, %if.else54 ], [ %dhe1024dsa.0.ph2910, %if.else50 ], [ %dhe1024dsa.0.ph2910, %if.else46 ], [ %dhe1024dsa.0.ph2910, %if.else42 ], [ %dhe1024dsa.0.ph2910, %if.else30 ], [ %dhe1024dsa.0.ph2910, %if.else ], [ %dhe1024dsa.0.ph2910, %if.else58 ]
  %no_dhe.1 = phi i32 [ %no_dhe.0.ph2912, %if.then37 ], [ %no_dhe.0.ph2912, %if.then41 ], [ %no_dhe.0.ph2912, %if.end69 ], [ %no_dhe.0.ph2912, %if.end108 ], [ %no_dhe.0.ph2912, %if.end154 ], [ %no_dhe.0.ph2912, %if.end165 ], [ %no_dhe.0.ph2912, %if.end176 ], [ %no_dhe.0.ph2912, %if.end187 ], [ %no_dhe.0.ph2912, %if.then233 ], [ %no_dhe.0.ph2912, %if.then238 ], [ %no_dhe.0.ph2912, %if.then243 ], [ %no_dhe.0.ph2912, %if.then248 ], [ %no_dhe.0.ph2912, %if.then253 ], [ %no_dhe.0.ph2912, %if.then258 ], [ %no_dhe.0.ph2912, %if.end268 ], [ %no_dhe.0.ph2912, %if.then274 ], [ %no_dhe.0.ph2912, %if.end284 ], [ %no_dhe.0.ph2912, %if.end299 ], [ %no_dhe.0.ph2912, %if.end310 ], [ %no_dhe.0.ph2912, %if.end321 ], [ %no_dhe.0.ph2912, %if.end332 ], [ %no_dhe.0.ph2912, %if.end343 ], [ %no_dhe.0.ph2912, %if.end354 ], [ %no_dhe.0.ph2912, %if.end365 ], [ %no_dhe.0.ph2912, %if.end376 ], [ %no_dhe.0.ph2912, %if.end387 ], [ %no_dhe.0.ph2912, %if.end398 ], [ %no_dhe.0.ph2912, %if.end409 ], [ %no_dhe.0.ph2912, %if.then415 ], [ %no_dhe.0.ph2912, %if.then420 ], [ %no_dhe.0.ph2912, %if.end430 ], [ %no_dhe.0.ph2912, %if.end441 ], [ %no_dhe.0.ph2912, %if.end452 ], [ %no_dhe.0.ph2912, %if.end463 ], [ %no_dhe.0.ph2912, %if.end474 ], [ %no_dhe.0.ph2912, %if.end493 ], [ %no_dhe.0.ph2912, %if.end504 ], [ %no_dhe.0.ph2912, %if.end121 ], [ %no_dhe.0.ph2912, %if.else479 ], [ %no_dhe.0.ph2912, %if.else224 ], [ %no_dhe.0.ph2912, %if.else219 ], [ %no_dhe.0.ph2912, %if.else214 ], [ %no_dhe.0.ph2912, %if.else209 ], [ %no_dhe.0.ph2912, %if.else204 ], [ %no_dhe.0.ph2912, %if.else199 ], [ %no_dhe.0.ph2912, %if.else194 ], [ %no_dhe.0.ph2912, %if.else189 ], [ %no_dhe.0.ph2912, %if.else97 ], [ %no_dhe.0.ph2912, %if.else93 ], [ %no_dhe.0.ph2912, %if.else89 ], [ %no_dhe.0.ph2912, %if.else85 ], [ %no_dhe.0.ph2912, %if.else81 ], [ %no_dhe.0.ph2912, %if.else77 ], [ %no_dhe.0.ph2912, %if.else54 ], [ %no_dhe.0.ph2912, %if.else50 ], [ 1, %if.else46 ], [ %no_dhe.0.ph2912, %if.else42 ], [ %no_dhe.0.ph2912, %if.else30 ], [ %no_dhe.0.ph2912, %if.else ], [ %no_dhe.0.ph2912, %if.else58 ]
  %dtls12.1 = phi i32 [ %dtls12.0.ph2914, %if.then37 ], [ %dtls12.0.ph2914, %if.then41 ], [ %dtls12.0.ph2914, %if.end69 ], [ %dtls12.0.ph2914, %if.end108 ], [ %dtls12.0.ph2914, %if.end154 ], [ %dtls12.0.ph2914, %if.end165 ], [ %dtls12.0.ph2914, %if.end176 ], [ %dtls12.0.ph2914, %if.end187 ], [ %dtls12.0.ph2914, %if.then233 ], [ %dtls12.0.ph2914, %if.then238 ], [ %dtls12.0.ph2914, %if.then243 ], [ %dtls12.0.ph2914, %if.then248 ], [ %dtls12.0.ph2914, %if.then253 ], [ %dtls12.0.ph2914, %if.then258 ], [ %dtls12.0.ph2914, %if.end268 ], [ %dtls12.0.ph2914, %if.then274 ], [ %dtls12.0.ph2914, %if.end284 ], [ %dtls12.0.ph2914, %if.end299 ], [ %dtls12.0.ph2914, %if.end310 ], [ %dtls12.0.ph2914, %if.end321 ], [ %dtls12.0.ph2914, %if.end332 ], [ %dtls12.0.ph2914, %if.end343 ], [ %dtls12.0.ph2914, %if.end354 ], [ %dtls12.0.ph2914, %if.end365 ], [ %dtls12.0.ph2914, %if.end376 ], [ %dtls12.0.ph2914, %if.end387 ], [ %dtls12.0.ph2914, %if.end398 ], [ %dtls12.0.ph2914, %if.end409 ], [ %dtls12.0.ph2914, %if.then415 ], [ %dtls12.0.ph2914, %if.then420 ], [ %dtls12.0.ph2914, %if.end430 ], [ %dtls12.0.ph2914, %if.end441 ], [ %dtls12.0.ph2914, %if.end452 ], [ %dtls12.0.ph2914, %if.end463 ], [ %dtls12.0.ph2914, %if.end474 ], [ %dtls12.0.ph2914, %if.end493 ], [ %dtls12.0.ph2914, %if.end504 ], [ %dtls12.0.ph2914, %if.end121 ], [ %dtls12.0.ph2914, %if.else479 ], [ %dtls12.0.ph2914, %if.else224 ], [ %dtls12.0.ph2914, %if.else219 ], [ %dtls12.0.ph2914, %if.else214 ], [ %dtls12.0.ph2914, %if.else209 ], [ %dtls12.0.ph2914, %if.else204 ], [ %dtls12.0.ph2914, %if.else199 ], [ %dtls12.0.ph2914, %if.else194 ], [ %dtls12.0.ph2914, %if.else189 ], [ %dtls12.0.ph2914, %if.else97 ], [ 1, %if.else93 ], [ %dtls12.0.ph2914, %if.else89 ], [ %dtls12.0.ph2914, %if.else85 ], [ %dtls12.0.ph2914, %if.else81 ], [ %dtls12.0.ph2914, %if.else77 ], [ %dtls12.0.ph2914, %if.else54 ], [ %dtls12.0.ph2914, %if.else50 ], [ %dtls12.0.ph2914, %if.else46 ], [ %dtls12.0.ph2914, %if.else42 ], [ %dtls12.0.ph2914, %if.else30 ], [ %dtls12.0.ph2914, %if.else ], [ %dtls12.0.ph2914, %if.else58 ]
  %print_time.1 = phi i32 [ %print_time.0.ph2916, %if.then37 ], [ %print_time.0.ph2916, %if.then41 ], [ %print_time.0.ph2916, %if.end69 ], [ %print_time.0.ph2916, %if.end108 ], [ %print_time.0.ph2916, %if.end154 ], [ %print_time.0.ph2916, %if.end165 ], [ %print_time.0.ph2916, %if.end176 ], [ %print_time.0.ph2916, %if.end187 ], [ %print_time.0.ph2916, %if.then233 ], [ %print_time.0.ph2916, %if.then238 ], [ %print_time.0.ph2916, %if.then243 ], [ %print_time.0.ph2916, %if.then248 ], [ %print_time.0.ph2916, %if.then253 ], [ %print_time.0.ph2916, %if.then258 ], [ %print_time.0.ph2916, %if.end268 ], [ %print_time.0.ph2916, %if.then274 ], [ %print_time.0.ph2916, %if.end284 ], [ %print_time.0.ph2916, %if.end299 ], [ %print_time.0.ph2916, %if.end310 ], [ %print_time.0.ph2916, %if.end321 ], [ %print_time.0.ph2916, %if.end332 ], [ %print_time.0.ph2916, %if.end343 ], [ %print_time.0.ph2916, %if.end354 ], [ %print_time.0.ph2916, %if.end365 ], [ %print_time.0.ph2916, %if.end376 ], [ %print_time.0.ph2916, %if.end387 ], [ %print_time.0.ph2916, %if.end398 ], [ %print_time.0.ph2916, %if.end409 ], [ %print_time.0.ph2916, %if.then415 ], [ %print_time.0.ph2916, %if.then420 ], [ %print_time.0.ph2916, %if.end430 ], [ %print_time.0.ph2916, %if.end441 ], [ %print_time.0.ph2916, %if.end452 ], [ %print_time.0.ph2916, %if.end463 ], [ %print_time.0.ph2916, %if.end474 ], [ %print_time.0.ph2916, %if.end493 ], [ %print_time.0.ph2916, %if.end504 ], [ %print_time.0.ph2916, %if.end121 ], [ %print_time.0.ph2916, %if.else479 ], [ %print_time.0.ph2916, %if.else224 ], [ %print_time.0.ph2916, %if.else219 ], [ %print_time.0.ph2916, %if.else214 ], [ 1, %if.else209 ], [ %print_time.0.ph2916, %if.else204 ], [ %print_time.0.ph2916, %if.else199 ], [ %print_time.0.ph2916, %if.else194 ], [ %print_time.0.ph2916, %if.else189 ], [ %print_time.0.ph2916, %if.else97 ], [ %print_time.0.ph2916, %if.else93 ], [ %print_time.0.ph2916, %if.else89 ], [ %print_time.0.ph2916, %if.else85 ], [ %print_time.0.ph2916, %if.else81 ], [ %print_time.0.ph2916, %if.else77 ], [ %print_time.0.ph2916, %if.else54 ], [ %print_time.0.ph2916, %if.else50 ], [ %print_time.0.ph2916, %if.else46 ], [ %print_time.0.ph2916, %if.else42 ], [ %print_time.0.ph2916, %if.else30 ], [ %print_time.0.ph2916, %if.else ], [ %print_time.0.ph2916, %if.else58 ]
  %dtls1.1 = phi i32 [ %dtls1.0.ph2918, %if.then37 ], [ %dtls1.0.ph2918, %if.then41 ], [ %dtls1.0.ph2918, %if.end69 ], [ %dtls1.0.ph2918, %if.end108 ], [ %dtls1.0.ph2918, %if.end154 ], [ %dtls1.0.ph2918, %if.end165 ], [ %dtls1.0.ph2918, %if.end176 ], [ %dtls1.0.ph2918, %if.end187 ], [ %dtls1.0.ph2918, %if.then233 ], [ %dtls1.0.ph2918, %if.then238 ], [ %dtls1.0.ph2918, %if.then243 ], [ %dtls1.0.ph2918, %if.then248 ], [ %dtls1.0.ph2918, %if.then253 ], [ %dtls1.0.ph2918, %if.then258 ], [ %dtls1.0.ph2918, %if.end268 ], [ %dtls1.0.ph2918, %if.then274 ], [ %dtls1.0.ph2918, %if.end284 ], [ %dtls1.0.ph2918, %if.end299 ], [ %dtls1.0.ph2918, %if.end310 ], [ %dtls1.0.ph2918, %if.end321 ], [ %dtls1.0.ph2918, %if.end332 ], [ %dtls1.0.ph2918, %if.end343 ], [ %dtls1.0.ph2918, %if.end354 ], [ %dtls1.0.ph2918, %if.end365 ], [ %dtls1.0.ph2918, %if.end376 ], [ %dtls1.0.ph2918, %if.end387 ], [ %dtls1.0.ph2918, %if.end398 ], [ %dtls1.0.ph2918, %if.end409 ], [ %dtls1.0.ph2918, %if.then415 ], [ %dtls1.0.ph2918, %if.then420 ], [ %dtls1.0.ph2918, %if.end430 ], [ %dtls1.0.ph2918, %if.end441 ], [ %dtls1.0.ph2918, %if.end452 ], [ %dtls1.0.ph2918, %if.end463 ], [ %dtls1.0.ph2918, %if.end474 ], [ %dtls1.0.ph2918, %if.end493 ], [ %dtls1.0.ph2918, %if.end504 ], [ %dtls1.0.ph2918, %if.end121 ], [ %dtls1.0.ph2918, %if.else479 ], [ %dtls1.0.ph2918, %if.else224 ], [ %dtls1.0.ph2918, %if.else219 ], [ %dtls1.0.ph2918, %if.else214 ], [ %dtls1.0.ph2918, %if.else209 ], [ %dtls1.0.ph2918, %if.else204 ], [ %dtls1.0.ph2918, %if.else199 ], [ %dtls1.0.ph2918, %if.else194 ], [ %dtls1.0.ph2918, %if.else189 ], [ %dtls1.0.ph2918, %if.else97 ], [ %dtls1.0.ph2918, %if.else93 ], [ 1, %if.else89 ], [ %dtls1.0.ph2918, %if.else85 ], [ %dtls1.0.ph2918, %if.else81 ], [ %dtls1.0.ph2918, %if.else77 ], [ %dtls1.0.ph2918, %if.else54 ], [ %dtls1.0.ph2918, %if.else50 ], [ %dtls1.0.ph2918, %if.else46 ], [ %dtls1.0.ph2918, %if.else42 ], [ %dtls1.0.ph2918, %if.else30 ], [ %dtls1.0.ph2918, %if.else ], [ %dtls1.0.ph2918, %if.else58 ]
  %comp.1 = phi i32 [ %comp.0.ph2920, %if.then37 ], [ %comp.0.ph2920, %if.then41 ], [ %comp.0.ph2920, %if.end69 ], [ %comp.0.ph2920, %if.end108 ], [ %comp.0.ph2920, %if.end154 ], [ %comp.0.ph2920, %if.end165 ], [ %comp.0.ph2920, %if.end176 ], [ %comp.0.ph2920, %if.end187 ], [ %comp.0.ph2920, %if.then233 ], [ %comp.0.ph2920, %if.then238 ], [ %comp.0.ph2920, %if.then243 ], [ %comp.0.ph2920, %if.then248 ], [ %comp.0.ph2920, %if.then253 ], [ %comp.0.ph2920, %if.then258 ], [ %comp.0.ph2920, %if.end268 ], [ %comp.0.ph2920, %if.then274 ], [ %comp.0.ph2920, %if.end284 ], [ %comp.0.ph2920, %if.end299 ], [ %comp.0.ph2920, %if.end310 ], [ %comp.0.ph2920, %if.end321 ], [ %comp.0.ph2920, %if.end332 ], [ %comp.0.ph2920, %if.end343 ], [ %comp.0.ph2920, %if.end354 ], [ %comp.0.ph2920, %if.end365 ], [ %comp.0.ph2920, %if.end376 ], [ %comp.0.ph2920, %if.end387 ], [ %comp.0.ph2920, %if.end398 ], [ %comp.0.ph2920, %if.end409 ], [ %comp.0.ph2920, %if.then415 ], [ %comp.0.ph2920, %if.then420 ], [ %comp.0.ph2920, %if.end430 ], [ %comp.0.ph2920, %if.end441 ], [ %comp.0.ph2920, %if.end452 ], [ %comp.0.ph2920, %if.end463 ], [ %comp.0.ph2920, %if.end474 ], [ %comp.0.ph2920, %if.end493 ], [ %comp.0.ph2920, %if.end504 ], [ %comp.0.ph2920, %if.end121 ], [ %comp.0.ph2920, %if.else479 ], [ 1, %if.else224 ], [ %comp.0.ph2920, %if.else219 ], [ %comp.0.ph2920, %if.else214 ], [ %comp.0.ph2920, %if.else209 ], [ %comp.0.ph2920, %if.else204 ], [ %comp.0.ph2920, %if.else199 ], [ %comp.0.ph2920, %if.else194 ], [ %comp.0.ph2920, %if.else189 ], [ %comp.0.ph2920, %if.else97 ], [ %comp.0.ph2920, %if.else93 ], [ %comp.0.ph2920, %if.else89 ], [ %comp.0.ph2920, %if.else85 ], [ %comp.0.ph2920, %if.else81 ], [ %comp.0.ph2920, %if.else77 ], [ %comp.0.ph2920, %if.else54 ], [ %comp.0.ph2920, %if.else50 ], [ %comp.0.ph2920, %if.else46 ], [ %comp.0.ph2920, %if.else42 ], [ %comp.0.ph2920, %if.else30 ], [ %comp.0.ph2920, %if.else ], [ %comp.0.ph2920, %if.else58 ]
  %ct_validation.1 = phi i32 [ %ct_validation.0.ph2922, %if.then37 ], [ %ct_validation.0.ph2922, %if.then41 ], [ %ct_validation.0.ph2922, %if.end69 ], [ %ct_validation.0.ph2922, %if.end108 ], [ %ct_validation.0.ph2922, %if.end154 ], [ %ct_validation.0.ph2922, %if.end165 ], [ %ct_validation.0.ph2922, %if.end176 ], [ %ct_validation.0.ph2922, %if.end187 ], [ %ct_validation.0.ph2922, %if.then233 ], [ %ct_validation.0.ph2922, %if.then238 ], [ %ct_validation.0.ph2922, %if.then243 ], [ %ct_validation.0.ph2922, %if.then248 ], [ %ct_validation.0.ph2922, %if.then253 ], [ %ct_validation.0.ph2922, %if.then258 ], [ %ct_validation.0.ph2922, %if.end268 ], [ %ct_validation.0.ph2922, %if.then274 ], [ %ct_validation.0.ph2922, %if.end284 ], [ %ct_validation.0.ph2922, %if.end299 ], [ %ct_validation.0.ph2922, %if.end310 ], [ %ct_validation.0.ph2922, %if.end321 ], [ %ct_validation.0.ph2922, %if.end332 ], [ %ct_validation.0.ph2922, %if.end343 ], [ %ct_validation.0.ph2922, %if.end354 ], [ %ct_validation.0.ph2922, %if.end365 ], [ %ct_validation.0.ph2922, %if.end376 ], [ %ct_validation.0.ph2922, %if.end387 ], [ %ct_validation.0.ph2922, %if.end398 ], [ %ct_validation.0.ph2922, %if.end409 ], [ %ct_validation.0.ph2922, %if.then415 ], [ %ct_validation.0.ph2922, %if.then420 ], [ %ct_validation.0.ph2922, %if.end430 ], [ %ct_validation.0.ph2922, %if.end441 ], [ %ct_validation.0.ph2922, %if.end452 ], [ %ct_validation.0.ph2922, %if.end463 ], [ %ct_validation.0.ph2922, %if.end474 ], [ %ct_validation.0.ph2922, %if.end493 ], [ %ct_validation.0.ph2922, %if.end504 ], [ %ct_validation.0.ph2922, %if.end121 ], [ %ct_validation.0.ph2922, %if.else479 ], [ %ct_validation.0.ph2922, %if.else224 ], [ 1, %if.else219 ], [ 0, %if.else214 ], [ %ct_validation.0.ph2922, %if.else209 ], [ %ct_validation.0.ph2922, %if.else204 ], [ %ct_validation.0.ph2922, %if.else199 ], [ %ct_validation.0.ph2922, %if.else194 ], [ %ct_validation.0.ph2922, %if.else189 ], [ %ct_validation.0.ph2922, %if.else97 ], [ %ct_validation.0.ph2922, %if.else93 ], [ %ct_validation.0.ph2922, %if.else89 ], [ %ct_validation.0.ph2922, %if.else85 ], [ %ct_validation.0.ph2922, %if.else81 ], [ %ct_validation.0.ph2922, %if.else77 ], [ %ct_validation.0.ph2922, %if.else54 ], [ %ct_validation.0.ph2922, %if.else50 ], [ %ct_validation.0.ph2922, %if.else46 ], [ %ct_validation.0.ph2922, %if.else42 ], [ %ct_validation.0.ph2922, %if.else30 ], [ %ct_validation.0.ph2922, %if.else ], [ %ct_validation.0.ph2922, %if.else58 ]
  %provider.1 = phi i8* [ %provider.0.ph2925, %if.then37 ], [ %provider.0.ph2925, %if.then41 ], [ %provider.0.ph2925, %if.end69 ], [ %provider.0.ph2925, %if.end108 ], [ %provider.0.ph2925, %if.end154 ], [ %provider.0.ph2925, %if.end165 ], [ %provider.0.ph2925, %if.end176 ], [ %provider.0.ph2925, %if.end187 ], [ %provider.0.ph2925, %if.then233 ], [ %provider.0.ph2925, %if.then238 ], [ %provider.0.ph2925, %if.then243 ], [ %provider.0.ph2925, %if.then248 ], [ %provider.0.ph2925, %if.then253 ], [ %provider.0.ph2925, %if.then258 ], [ %provider.0.ph2925, %if.end268 ], [ %provider.0.ph2925, %if.then274 ], [ %provider.0.ph2925, %if.end284 ], [ %provider.0.ph2925, %if.end299 ], [ %provider.0.ph2925, %if.end310 ], [ %provider.0.ph2925, %if.end321 ], [ %provider.0.ph2925, %if.end332 ], [ %provider.0.ph2925, %if.end343 ], [ %provider.0.ph2925, %if.end354 ], [ %provider.0.ph2925, %if.end365 ], [ %provider.0.ph2925, %if.end376 ], [ %provider.0.ph2925, %if.end387 ], [ %provider.0.ph2925, %if.end398 ], [ %provider.0.ph2925, %if.end409 ], [ %provider.0.ph2925, %if.then415 ], [ %provider.0.ph2925, %if.then420 ], [ %provider.0.ph2925, %if.end430 ], [ %provider.0.ph2925, %if.end441 ], [ %provider.0.ph2925, %if.end452 ], [ %provider.0.ph2925, %if.end463 ], [ %provider.0.ph2925, %if.end474 ], [ %43, %if.end493 ], [ %provider.0.ph2925, %if.end504 ], [ %provider.0.ph2925, %if.end121 ], [ %provider.0.ph2925, %if.else58 ], [ %provider.0.ph2925, %if.else ], [ %provider.0.ph2925, %if.else30 ], [ %provider.0.ph2925, %if.else42 ], [ %provider.0.ph2925, %if.else46 ], [ %provider.0.ph2925, %if.else50 ], [ %provider.0.ph2925, %if.else54 ], [ %provider.0.ph2925, %if.else77 ], [ %provider.0.ph2925, %if.else81 ], [ %provider.0.ph2925, %if.else85 ], [ %provider.0.ph2925, %if.else89 ], [ %provider.0.ph2925, %if.else93 ], [ %provider.0.ph2925, %if.else97 ], [ %provider.0.ph2925, %if.else189 ], [ %provider.0.ph2925, %if.else194 ], [ %provider.0.ph2925, %if.else199 ], [ %provider.0.ph2925, %if.else204 ], [ %provider.0.ph2925, %if.else209 ], [ %provider.0.ph2925, %if.else214 ], [ %provider.0.ph2925, %if.else219 ], [ %provider.0.ph2925, %if.else224 ], [ %provider.0.ph2925, %if.else479 ]
  %config.1 = phi i8* [ %config.0.ph2928, %if.then37 ], [ %config.0.ph2928, %if.then41 ], [ %config.0.ph2928, %if.end69 ], [ %config.0.ph2928, %if.end108 ], [ %config.0.ph2928, %if.end154 ], [ %config.0.ph2928, %if.end165 ], [ %config.0.ph2928, %if.end176 ], [ %config.0.ph2928, %if.end187 ], [ %config.0.ph2928, %if.then233 ], [ %config.0.ph2928, %if.then238 ], [ %config.0.ph2928, %if.then243 ], [ %config.0.ph2928, %if.then248 ], [ %config.0.ph2928, %if.then253 ], [ %config.0.ph2928, %if.then258 ], [ %config.0.ph2928, %if.end268 ], [ %config.0.ph2928, %if.then274 ], [ %config.0.ph2928, %if.end284 ], [ %config.0.ph2928, %if.end299 ], [ %config.0.ph2928, %if.end310 ], [ %config.0.ph2928, %if.end321 ], [ %config.0.ph2928, %if.end332 ], [ %config.0.ph2928, %if.end343 ], [ %config.0.ph2928, %if.end354 ], [ %config.0.ph2928, %if.end365 ], [ %config.0.ph2928, %if.end376 ], [ %config.0.ph2928, %if.end387 ], [ %config.0.ph2928, %if.end398 ], [ %config.0.ph2928, %if.end409 ], [ %config.0.ph2928, %if.then415 ], [ %config.0.ph2928, %if.then420 ], [ %config.0.ph2928, %if.end430 ], [ %config.0.ph2928, %if.end441 ], [ %config.0.ph2928, %if.end452 ], [ %config.0.ph2928, %if.end463 ], [ %config.0.ph2928, %if.end474 ], [ %config.0.ph2928, %if.end493 ], [ %44, %if.end504 ], [ %config.0.ph2928, %if.end121 ], [ %config.0.ph2928, %if.else58 ], [ %config.0.ph2928, %if.else ], [ %config.0.ph2928, %if.else30 ], [ %config.0.ph2928, %if.else42 ], [ %config.0.ph2928, %if.else46 ], [ %config.0.ph2928, %if.else50 ], [ %config.0.ph2928, %if.else54 ], [ %config.0.ph2928, %if.else77 ], [ %config.0.ph2928, %if.else81 ], [ %config.0.ph2928, %if.else85 ], [ %config.0.ph2928, %if.else89 ], [ %config.0.ph2928, %if.else93 ], [ %config.0.ph2928, %if.else97 ], [ %config.0.ph2928, %if.else189 ], [ %config.0.ph2928, %if.else194 ], [ %config.0.ph2928, %if.else199 ], [ %config.0.ph2928, %if.else204 ], [ %config.0.ph2928, %if.else209 ], [ %config.0.ph2928, %if.else214 ], [ %config.0.ph2928, %if.else219 ], [ %config.0.ph2928, %if.else224 ], [ %config.0.ph2928, %if.else479 ]
  %force.1 = phi i32 [ %force.0.ph2931, %if.then37 ], [ %force.0.ph2931, %if.then41 ], [ %force.0.ph2931, %if.end69 ], [ %force.0.ph2931, %if.end108 ], [ %force.0.ph2931, %if.end154 ], [ %force.0.ph2931, %if.end165 ], [ %force.0.ph2931, %if.end176 ], [ %force.0.ph2931, %if.end187 ], [ %force.0.ph2931, %if.then233 ], [ %force.0.ph2931, %if.then238 ], [ %force.0.ph2931, %if.then243 ], [ %force.0.ph2931, %if.then248 ], [ %force.0.ph2931, %if.then253 ], [ %force.0.ph2931, %if.then258 ], [ %force.0.ph2931, %if.end268 ], [ %force.0.ph2931, %if.then274 ], [ %force.0.ph2931, %if.end284 ], [ %force.0.ph2931, %if.end299 ], [ %force.0.ph2931, %if.end310 ], [ %force.0.ph2931, %if.end321 ], [ %force.0.ph2931, %if.end332 ], [ %force.0.ph2931, %if.end343 ], [ %force.0.ph2931, %if.end354 ], [ %force.0.ph2931, %if.end365 ], [ %force.0.ph2931, %if.end376 ], [ %force.0.ph2931, %if.end387 ], [ %force.0.ph2931, %if.end398 ], [ %force.0.ph2931, %if.end409 ], [ %force.0.ph2931, %if.then415 ], [ %force.0.ph2931, %if.then420 ], [ %force.0.ph2931, %if.end430 ], [ %force.0.ph2931, %if.end441 ], [ %force.0.ph2931, %if.end452 ], [ %force.0.ph2931, %if.end463 ], [ %force.0.ph2931, %if.end474 ], [ %force.0.ph2931, %if.end493 ], [ %force.0.ph2931, %if.end504 ], [ %force.0.ph2931, %if.end121 ], [ %force.0.ph2931, %if.else479 ], [ %force.0.ph2931, %if.else224 ], [ %force.0.ph2931, %if.else219 ], [ %force.0.ph2931, %if.else214 ], [ %force.0.ph2931, %if.else209 ], [ 1, %if.else204 ], [ %force.0.ph2931, %if.else199 ], [ %force.0.ph2931, %if.else194 ], [ %force.0.ph2931, %if.else189 ], [ %force.0.ph2931, %if.else97 ], [ %force.0.ph2931, %if.else93 ], [ %force.0.ph2931, %if.else89 ], [ %force.0.ph2931, %if.else85 ], [ %force.0.ph2931, %if.else81 ], [ %force.0.ph2931, %if.else77 ], [ %force.0.ph2931, %if.else54 ], [ %force.0.ph2931, %if.else50 ], [ %force.0.ph2931, %if.else46 ], [ %force.0.ph2931, %if.else42 ], [ %force.0.ph2931, %if.else30 ], [ %force.0.ph2931, %if.else ], [ %force.0.ph2931, %if.else58 ]
  %bio_type.1 = phi i32 [ %bio_type.0.ph2933, %if.then37 ], [ %bio_type.0.ph2933, %if.then41 ], [ %bio_type.0.ph2933, %if.end69 ], [ %bio_type.0.ph2933, %if.end108 ], [ %bio_type.0.ph2933, %if.end154 ], [ %bio_type.0.ph2933, %if.end165 ], [ %bio_type.0.ph2933, %if.end176 ], [ %bio_type.0.ph2933, %if.end187 ], [ %bio_type.0.ph2933, %if.then233 ], [ %bio_type.0.ph2933, %if.then238 ], [ %bio_type.0.ph2933, %if.then243 ], [ %bio_type.0.ph2933, %if.then248 ], [ %bio_type.0.ph2933, %if.then253 ], [ %bio_type.0.ph2933, %if.then258 ], [ %bio_type.0.ph2933, %if.end268 ], [ %bio_type.0.ph2933, %if.then274 ], [ %bio_type.0.ph2933, %if.end284 ], [ %bio_type.0.ph2933, %if.end299 ], [ %bio_type.0.ph2933, %if.end310 ], [ %bio_type.0.ph2933, %if.end321 ], [ %bio_type.0.ph2933, %if.end332 ], [ %bio_type.0.ph2933, %if.end343 ], [ %bio_type.0.ph2933, %if.end354 ], [ %bio_type.0.ph2933, %if.end365 ], [ %bio_type.0.ph2933, %if.end376 ], [ %bio_type.0.ph2933, %if.end387 ], [ %bio_type.0.ph2933, %if.end398 ], [ %bio_type.0.ph2933, %if.end409 ], [ %bio_type.0.ph2933, %if.then415 ], [ %bio_type.0.ph2933, %if.then420 ], [ %bio_type.0.ph2933, %if.end430 ], [ %bio_type.0.ph2933, %if.end441 ], [ %bio_type.0.ph2933, %if.end452 ], [ %bio_type.0.ph2933, %if.end463 ], [ %bio_type.0.ph2933, %if.end474 ], [ %bio_type.0.ph2933, %if.end493 ], [ %bio_type.0.ph2933, %if.end504 ], [ %bio_type.0.ph2933, %if.end121 ], [ %bio_type.0.ph2933, %if.else479 ], [ %bio_type.0.ph2933, %if.else224 ], [ %bio_type.0.ph2933, %if.else219 ], [ %bio_type.0.ph2933, %if.else214 ], [ %bio_type.0.ph2933, %if.else209 ], [ %bio_type.0.ph2933, %if.else204 ], [ 3, %if.else199 ], [ 2, %if.else194 ], [ 1, %if.else189 ], [ %bio_type.0.ph2933, %if.else97 ], [ %bio_type.0.ph2933, %if.else93 ], [ %bio_type.0.ph2933, %if.else89 ], [ %bio_type.0.ph2933, %if.else85 ], [ %bio_type.0.ph2933, %if.else81 ], [ %bio_type.0.ph2933, %if.else77 ], [ %bio_type.0.ph2933, %if.else54 ], [ %bio_type.0.ph2933, %if.else50 ], [ %bio_type.0.ph2933, %if.else46 ], [ %bio_type.0.ph2933, %if.else42 ], [ %bio_type.0.ph2933, %if.else30 ], [ %bio_type.0.ph2933, %if.else ], [ %bio_type.0.ph2933, %if.else58 ]
  %CAfile.1 = phi i8* [ %CAfile.0.ph2935, %if.then37 ], [ %CAfile.0.ph2935, %if.then41 ], [ %CAfile.0.ph2935, %if.end69 ], [ %CAfile.0.ph2935, %if.end108 ], [ %CAfile.0.ph2935, %if.end154 ], [ %CAfile.0.ph2935, %if.end165 ], [ %CAfile.0.ph2935, %if.end176 ], [ %24, %if.end187 ], [ %CAfile.0.ph2935, %if.then233 ], [ %CAfile.0.ph2935, %if.then238 ], [ %CAfile.0.ph2935, %if.then243 ], [ %CAfile.0.ph2935, %if.then248 ], [ %CAfile.0.ph2935, %if.then253 ], [ %CAfile.0.ph2935, %if.then258 ], [ %CAfile.0.ph2935, %if.end268 ], [ %CAfile.0.ph2935, %if.then274 ], [ %CAfile.0.ph2935, %if.end284 ], [ %CAfile.0.ph2935, %if.end299 ], [ %CAfile.0.ph2935, %if.end310 ], [ %CAfile.0.ph2935, %if.end321 ], [ %CAfile.0.ph2935, %if.end332 ], [ %CAfile.0.ph2935, %if.end343 ], [ %CAfile.0.ph2935, %if.end354 ], [ %CAfile.0.ph2935, %if.end365 ], [ %CAfile.0.ph2935, %if.end376 ], [ %CAfile.0.ph2935, %if.end387 ], [ %CAfile.0.ph2935, %if.end398 ], [ %CAfile.0.ph2935, %if.end409 ], [ %CAfile.0.ph2935, %if.then415 ], [ %CAfile.0.ph2935, %if.then420 ], [ %CAfile.0.ph2935, %if.end430 ], [ %CAfile.0.ph2935, %if.end441 ], [ %CAfile.0.ph2935, %if.end452 ], [ %CAfile.0.ph2935, %if.end463 ], [ %CAfile.0.ph2935, %if.end474 ], [ %CAfile.0.ph2935, %if.end493 ], [ %CAfile.0.ph2935, %if.end504 ], [ %CAfile.0.ph2935, %if.end121 ], [ %CAfile.0.ph2935, %if.else58 ], [ %CAfile.0.ph2935, %if.else ], [ %CAfile.0.ph2935, %if.else30 ], [ %CAfile.0.ph2935, %if.else42 ], [ %CAfile.0.ph2935, %if.else46 ], [ %CAfile.0.ph2935, %if.else50 ], [ %CAfile.0.ph2935, %if.else54 ], [ %CAfile.0.ph2935, %if.else77 ], [ %CAfile.0.ph2935, %if.else81 ], [ %CAfile.0.ph2935, %if.else85 ], [ %CAfile.0.ph2935, %if.else89 ], [ %CAfile.0.ph2935, %if.else93 ], [ %CAfile.0.ph2935, %if.else97 ], [ %CAfile.0.ph2935, %if.else189 ], [ %CAfile.0.ph2935, %if.else194 ], [ %CAfile.0.ph2935, %if.else199 ], [ %CAfile.0.ph2935, %if.else204 ], [ %CAfile.0.ph2935, %if.else209 ], [ %CAfile.0.ph2935, %if.else214 ], [ %CAfile.0.ph2935, %if.else219 ], [ %CAfile.0.ph2935, %if.else224 ], [ %CAfile.0.ph2935, %if.else479 ]
  %CApath.1 = phi i8* [ %CApath.0.ph2938, %if.then37 ], [ %CApath.0.ph2938, %if.then41 ], [ %CApath.0.ph2938, %if.end69 ], [ %CApath.0.ph2938, %if.end108 ], [ %CApath.0.ph2938, %if.end154 ], [ %CApath.0.ph2938, %if.end165 ], [ %23, %if.end176 ], [ %CApath.0.ph2938, %if.end187 ], [ %CApath.0.ph2938, %if.then233 ], [ %CApath.0.ph2938, %if.then238 ], [ %CApath.0.ph2938, %if.then243 ], [ %CApath.0.ph2938, %if.then248 ], [ %CApath.0.ph2938, %if.then253 ], [ %CApath.0.ph2938, %if.then258 ], [ %CApath.0.ph2938, %if.end268 ], [ %CApath.0.ph2938, %if.then274 ], [ %CApath.0.ph2938, %if.end284 ], [ %CApath.0.ph2938, %if.end299 ], [ %CApath.0.ph2938, %if.end310 ], [ %CApath.0.ph2938, %if.end321 ], [ %CApath.0.ph2938, %if.end332 ], [ %CApath.0.ph2938, %if.end343 ], [ %CApath.0.ph2938, %if.end354 ], [ %CApath.0.ph2938, %if.end365 ], [ %CApath.0.ph2938, %if.end376 ], [ %CApath.0.ph2938, %if.end387 ], [ %CApath.0.ph2938, %if.end398 ], [ %CApath.0.ph2938, %if.end409 ], [ %CApath.0.ph2938, %if.then415 ], [ %CApath.0.ph2938, %if.then420 ], [ %CApath.0.ph2938, %if.end430 ], [ %CApath.0.ph2938, %if.end441 ], [ %CApath.0.ph2938, %if.end452 ], [ %CApath.0.ph2938, %if.end463 ], [ %CApath.0.ph2938, %if.end474 ], [ %CApath.0.ph2938, %if.end493 ], [ %CApath.0.ph2938, %if.end504 ], [ %CApath.0.ph2938, %if.end121 ], [ %CApath.0.ph2938, %if.else58 ], [ %CApath.0.ph2938, %if.else ], [ %CApath.0.ph2938, %if.else30 ], [ %CApath.0.ph2938, %if.else42 ], [ %CApath.0.ph2938, %if.else46 ], [ %CApath.0.ph2938, %if.else50 ], [ %CApath.0.ph2938, %if.else54 ], [ %CApath.0.ph2938, %if.else77 ], [ %CApath.0.ph2938, %if.else81 ], [ %CApath.0.ph2938, %if.else85 ], [ %CApath.0.ph2938, %if.else89 ], [ %CApath.0.ph2938, %if.else93 ], [ %CApath.0.ph2938, %if.else97 ], [ %CApath.0.ph2938, %if.else189 ], [ %CApath.0.ph2938, %if.else194 ], [ %CApath.0.ph2938, %if.else199 ], [ %CApath.0.ph2938, %if.else204 ], [ %CApath.0.ph2938, %if.else209 ], [ %CApath.0.ph2938, %if.else214 ], [ %CApath.0.ph2938, %if.else219 ], [ %CApath.0.ph2938, %if.else224 ], [ %CApath.0.ph2938, %if.else479 ]
  %dec620 = add nsw i32 %48, -1
  store i32 %dec620, i32* %argc.addr, align 4, !tbaa !3
  %incdec.ptr621 = getelementptr inbounds i8*, i8** %47, i64 1
  store i8** %incdec.ptr621, i8*** %argv.addr, align 8, !tbaa !7
  %cmp2829 = icmp sgt i32 %48, 1
  br i1 %cmp2829, label %while.body.lr.ph, label %if.end624, !llvm.loop !14

bad.sink.split:                                   ; preds = %if.end69, %if.end541, %if.else546
  %.lcssa2345.sink = phi i8* [ %15, %if.else546 ], [ %15, %if.end541 ], [ %17, %if.end69 ]
  %.sink2515 = phi i8* [ %., %if.else546 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i64 0, i64 0), %if.end541 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), %if.end69 ]
  %.sink = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call550 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %.sink, i8* noundef %.sink2515, i8* noundef %.lcssa2345.sink) #16
  br label %bad

bad:                                              ; preds = %if.then499, %if.then488, %if.then469, %if.then458, %if.then447, %if.then436, %if.then425, %if.then404, %if.then393, %if.then382, %if.then371, %if.then360, %if.then349, %if.then338, %if.then327, %if.then316, %if.then305, %if.then294, %if.then279, %if.then263, %if.then182, %if.then171, %if.then160, %if.then149, %if.then117, %if.then104, %if.then65, %bad.sink.split
  call fastcc void @sv_usage() #19
  br label %end

if.end624:                                        ; preds = %if.end619, %if.end534.while.cond_crit_edge, %if.end22
  %tls1_2.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %tls1_2.0.ph2883, %if.end534.while.cond_crit_edge ], [ %tls1_2.1, %if.end619 ]
  %ssl3.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %ssl3.0.ph2885, %if.end534.while.cond_crit_edge ], [ %ssl3.1, %if.end619 ]
  %client_auth.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %client_auth.0.ph2887, %if.end534.while.cond_crit_edge ], [ %client_auth.1, %if.end619 ]
  %server_auth.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %server_auth.0.ph2889, %if.end534.while.cond_crit_edge ], [ %server_auth.1, %if.end619 ]
  %tls1.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %tls1.0.ph2891, %if.end534.while.cond_crit_edge ], [ %tls1.1, %if.end619 ]
  %dtls.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %dtls.0.ph2893, %if.end534.while.cond_crit_edge ], [ %dtls.1, %if.end619 ]
  %number.0.ph.lcssa = phi i32 [ 1, %if.end22 ], [ %number.0.ph2895, %if.end534.while.cond_crit_edge ], [ %number.1, %if.end619 ]
  %reuse.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %reuse.0.ph2898, %if.end534.while.cond_crit_edge ], [ %reuse.1, %if.end619 ]
  %should_reuse.0.ph.lcssa = phi i32 [ -1, %if.end22 ], [ %should_reuse.0.ph2900, %if.end534.while.cond_crit_edge ], [ %should_reuse.1, %if.end619 ]
  %no_ticket.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %no_ticket.0.ph2903, %if.end534.while.cond_crit_edge ], [ %no_ticket.1, %if.end619 ]
  %bytes.0.ph.lcssa = phi i64 [ 256, %if.end22 ], [ %bytes.0.ph2905, %if.end534.while.cond_crit_edge ], [ %bytes.2, %if.end619 ]
  %dhe512.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %dhe512.0.ph2908, %if.end534.while.cond_crit_edge ], [ %dhe512.1, %if.end619 ]
  %dhe1024dsa.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %dhe1024dsa.0.ph2910, %if.end534.while.cond_crit_edge ], [ %dhe1024dsa.1, %if.end619 ]
  %no_dhe.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %no_dhe.0.ph2912, %if.end534.while.cond_crit_edge ], [ %no_dhe.1, %if.end619 ]
  %dtls12.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %dtls12.0.ph2914, %if.end534.while.cond_crit_edge ], [ %dtls12.1, %if.end619 ]
  %print_time.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %print_time.0.ph2916, %if.end534.while.cond_crit_edge ], [ %print_time.1, %if.end619 ]
  %dtls1.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %dtls1.0.ph2918, %if.end534.while.cond_crit_edge ], [ %dtls1.1, %if.end619 ]
  %comp.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %comp.0.ph2920, %if.end534.while.cond_crit_edge ], [ %comp.1, %if.end619 ]
  %ct_validation.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %ct_validation.0.ph2922, %if.end534.while.cond_crit_edge ], [ %ct_validation.1, %if.end619 ]
  %provider.0.ph.lcssa = phi i8* [ null, %if.end22 ], [ %provider.0.ph2925, %if.end534.while.cond_crit_edge ], [ %provider.1, %if.end619 ]
  %config.0.ph.lcssa = phi i8* [ null, %if.end22 ], [ %config.0.ph2928, %if.end534.while.cond_crit_edge ], [ %config.1, %if.end619 ]
  %force.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %force.0.ph2931, %if.end534.while.cond_crit_edge ], [ %force.1, %if.end619 ]
  %bio_type.0.ph.lcssa = phi i32 [ 0, %if.end22 ], [ %bio_type.0.ph2933, %if.end534.while.cond_crit_edge ], [ %bio_type.1, %if.end619 ]
  %CAfile.0.ph.lcssa = phi i8* [ null, %if.end22 ], [ %CAfile.0.ph2935, %if.end534.while.cond_crit_edge ], [ %CAfile.1, %if.end619 ]
  %CApath.0.ph.lcssa = phi i8* [ null, %if.end22 ], [ %CApath.0.ph2938, %if.end534.while.cond_crit_edge ], [ %CApath.1, %if.end619 ]
  %conf_args.0.lcssa = phi %struct.stack_st_OPENSSL_STRING* [ null, %if.end22 ], [ %conf_args.1, %if.end534.while.cond_crit_edge ], [ %conf_args.02830, %if.end619 ]
  %add = add i32 %ssl3.0.ph.lcssa, %tls1_2.0.ph.lcssa
  %add625 = add i32 %add, %tls1.0.ph.lcssa
  %add626 = add i32 %add625, %dtls.0.ph.lcssa
  %add627 = add i32 %add626, %dtls12.0.ph.lcssa
  %add628 = add i32 %add627, %dtls1.0.ph.lcssa
  %cmp629 = icmp sgt i32 %add628, 1
  br i1 %cmp629, label %if.then631, label %if.end633

if.then631:                                       ; preds = %if.end624
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call632 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.71, i64 0, i64 0)) #16
  call void @exit(i32 noundef 1) #18
  unreachable

if.end633:                                        ; preds = %if.end624
  %tobool634.not = icmp eq i32 %ssl3.0.ph.lcssa, 0
  br i1 %tobool634.not, label %if.end641, label %if.then639

if.then639:                                       ; preds = %if.end633
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call640 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.72, i64 0, i64 0)) #16
  br label %end

if.end641:                                        ; preds = %if.end633
  %tobool643 = icmp ne i32 %tls1.0.ph.lcssa, 0
  %tobool645 = icmp ne i32 %tls1_2.0.ph.lcssa, 0
  %or.cond1312 = select i1 %tobool643, i1 true, i1 %tobool645
  %tobool647 = icmp ne i32 %dtls.0.ph.lcssa, 0
  %or.cond1313 = select i1 %or.cond1312, i1 true, i1 %tobool647
  %tobool649 = icmp ne i32 %dtls1.0.ph.lcssa, 0
  %or.cond1314 = select i1 %or.cond1313, i1 true, i1 %tobool649
  %tobool651 = icmp ne i32 %dtls12.0.ph.lcssa, 0
  %or.cond1315 = select i1 %or.cond1314, i1 true, i1 %tobool651
  %cmp653 = icmp slt i32 %number.0.ph.lcssa, 2
  %or.cond1316.not = select i1 %or.cond1315, i1 true, i1 %cmp653
  %tobool656 = icmp ne i32 %reuse.0.ph.lcssa, 0
  %or.cond1317 = select i1 %or.cond1316.not, i1 true, i1 %tobool656
  %tobool658 = icmp ne i32 %force.0.ph.lcssa, 0
  %or.cond1318 = select i1 %or.cond1317, i1 true, i1 %tobool658
  br i1 %or.cond1318, label %if.end661, label %if.then659

if.then659:                                       ; preds = %if.end641
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call660 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.73, i64 0, i64 0)) #16
  call void @exit(i32 noundef 1) #18
  unreachable

if.end661:                                        ; preds = %if.end641
  %tobool662.not = icmp eq i32 %print_time.0.ph.lcssa, 0
  br i1 %tobool662.not, label %if.end676, label %if.then663

if.then663:                                       ; preds = %if.end661
  %cmp664.not = icmp eq i32 %bio_type.0.ph.lcssa, 1
  br i1 %cmp664.not, label %if.end668, label %if.then666

if.then666:                                       ; preds = %if.then663
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call667 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.74, i64 0, i64 0)) #16
  br label %if.end668

if.end668:                                        ; preds = %if.then666, %if.then663
  %cmp669 = icmp sgt i32 %number.0.ph.lcssa, 49
  %or.cond1319 = select i1 %cmp669, i1 true, i1 %tobool658
  br i1 %or.cond1319, label %if.end676, label %if.then673

if.then673:                                       ; preds = %if.end668
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call674 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.75, i64 0, i64 0)) #16
  br label %if.end676

if.end676:                                        ; preds = %if.end668, %if.then673, %if.end661
  %bio_type.3 = phi i32 [ 1, %if.end668 ], [ 1, %if.then673 ], [ %bio_type.0.ph.lcssa, %if.end661 ]
  %cmp677 = icmp eq i32 %comp.0.ph.lcssa, 1
  br i1 %cmp677, label %if.end681, label %if.end700

if.end681:                                        ; preds = %if.end676
  %call680 = call %struct.comp_method_st* @COMP_zlib() #16
  %cmp682.not = icmp eq %struct.comp_method_st* %call680, null
  br i1 %cmp682.not, label %if.end700, label %if.then684

if.then684:                                       ; preds = %if.end681
  %call685 = call i32 @COMP_get_type(%struct.comp_method_st* noundef nonnull %call680) #16
  %cmp686.not = icmp eq i32 %call685, 0
  br i1 %cmp686.not, label %if.else695, label %if.then688

if.then688:                                       ; preds = %if.then684
  %call689 = call i32 @SSL_COMP_add_compression_method(i32 noundef 1, %struct.comp_method_st* noundef nonnull %call680) #16
  %cmp690.not = icmp eq i32 %call689, 0
  br i1 %cmp690.not, label %if.end700, label %if.then692

if.then692:                                       ; preds = %if.then688
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call693 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.76, i64 0, i64 0)) #16
  br label %if.end700.sink.split

if.else695:                                       ; preds = %if.then684
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call698 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0)) #16
  br label %if.end700.sink.split

if.end700.sink.split:                             ; preds = %if.then692, %if.else695
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  call void @ERR_print_errors_fp(%struct._IO_FILE* noundef %56) #16
  br label %if.end700

if.end700:                                        ; preds = %if.end700.sink.split, %if.end676, %if.then688, %if.end681
  %call701 = call %struct.stack_st_SSL_COMP* @SSL_COMP_get_compression_methods() #16
  %call702 = call fastcc %struct.stack_st* @ossl_check_const_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef %call701) #19
  %call703 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call702) #16
  %tobool704.not = icmp eq i32 %call703, 0
  br i1 %tobool704.not, label %if.end715, label %if.then705

if.then705:                                       ; preds = %if.end700
  %call706 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.80, i64 0, i64 0)) #16
  %cmp7071877 = icmp sgt i32 %call703, 0
  br i1 %cmp7071877, label %for.body, label %for.end

for.body:                                         ; preds = %if.then705, %for.body
  %j.01878 = phi i32 [ %inc, %for.body ], [ 0, %if.then705 ]
  %call710 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call702, i32 noundef %j.01878) #16
  %57 = bitcast i8* %call710 to %struct.ssl_comp_st*
  %call711 = call i8* @SSL_COMP_get0_name(%struct.ssl_comp_st* noundef %57) #16
  %call712 = call i32 @SSL_COMP_get_id(%struct.ssl_comp_st* noundef %57) #16
  %call713 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i64 0, i64 0), i8* noundef %call711, i32 noundef %call712) #16
  %inc = add nuw nsw i32 %j.01878, 1
  %exitcond.not = icmp eq i32 %inc, %call703
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !16

for.end:                                          ; preds = %for.body, %if.then705
  %call714 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0)) #16
  br label %if.end715

if.end715:                                        ; preds = %for.end, %if.end700
  %call716 = call %struct.ssl_method_st* @TLS_method() #16
  %.1527 = select i1 %tobool645, i64 771, i64 0
  %spec.select1533 = select i1 %tobool643, i64 769, i64 %.1527
  %or.cond1320 = select i1 %tobool647, i1 true, i1 %tobool649
  %or.cond1321 = select i1 %or.cond1320, i1 true, i1 %tobool651
  br i1 %or.cond1321, label %if.then734, label %if.end744

if.then734:                                       ; preds = %if.end715
  %call735 = call %struct.ssl_method_st* @DTLS_method() #16
  %.1528 = select i1 %tobool651, i64 65277, i64 0
  %spec.select1534 = select i1 %tobool649, i64 65279, i64 %.1528
  br label %if.end744

if.end744:                                        ; preds = %if.then734, %if.end715
  %meth.0 = phi %struct.ssl_method_st* [ %call716, %if.end715 ], [ %call735, %if.then734 ]
  %max_version.1 = phi i64 [ %spec.select1533, %if.end715 ], [ %spec.select1534, %if.then734 ]
  %cmp745.not = icmp eq i8* %provider.0.ph.lcssa, null
  br i1 %cmp745.not, label %if.end751, label %land.lhs.true747

land.lhs.true747:                                 ; preds = %if.end744
  %call748 = call i32 @test_get_libctx(%struct.ossl_lib_ctx_st** noundef nonnull %libctx, %struct.ossl_provider_st** noundef nonnull %defctxnull, i8* noundef %config.0.ph.lcssa, %struct.ossl_provider_st** noundef nonnull %thisprov, i8* noundef nonnull %provider.0.ph.lcssa) #16
  %tobool749.not = icmp eq i32 %call748, 0
  br i1 %tobool749.not, label %end, label %if.end751

if.end751:                                        ; preds = %land.lhs.true747, %if.end744
  %58 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !7
  %call752 = call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %58, i8* noundef null, %struct.ssl_method_st* noundef %meth.0) #16
  %59 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !7
  %call753 = call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %59, i8* noundef null, %struct.ssl_method_st* noundef %meth.0) #16
  store %struct.ssl_ctx_st* %call753, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %60 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !7
  %call754 = call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %60, i8* noundef null, %struct.ssl_method_st* noundef %meth.0) #16
  store %struct.ssl_ctx_st* %call754, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %cmp755 = icmp eq %struct.ssl_ctx_st* %call752, null
  %61 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8
  %cmp758 = icmp eq %struct.ssl_ctx_st* %61, null
  %or.cond1322 = select i1 %cmp755, i1 true, i1 %cmp758
  %cmp761 = icmp eq %struct.ssl_ctx_st* %call754, null
  %or.cond1323 = select i1 %or.cond1322, i1 true, i1 %cmp761
  br i1 %or.cond1323, label %if.then763, label %if.end764

if.then763:                                       ; preds = %if.end751
  %62 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %62) #16
  br label %end

if.end764:                                        ; preds = %if.end751
  call void @SSL_CTX_set_security_level(%struct.ssl_ctx_st* noundef nonnull %call752, i32 noundef 0) #16
  %63 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  call void @SSL_CTX_set_security_level(%struct.ssl_ctx_st* noundef %63, i32 noundef 0) #16
  %64 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  call void @SSL_CTX_set_security_level(%struct.ssl_ctx_st* noundef %64, i32 noundef 0) #16
  %tobool765.not = icmp eq i32 %no_ticket.0.ph.lcssa, 0
  br i1 %tobool765.not, label %if.end769, label %if.then766

if.then766:                                       ; preds = %if.end764
  %call767 = call i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef nonnull %call752, i64 noundef 16384) #16
  %65 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call768 = call i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef %65, i64 noundef 16384) #16
  br label %if.end769

if.end769:                                        ; preds = %if.then766, %if.end764
  %call771 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %call752, i32 noundef 123, i64 noundef %max_version.1, i8* noundef null) #16
  %cmp772 = icmp eq i64 %call771, 0
  br i1 %cmp772, label %end, label %if.end775

if.end775:                                        ; preds = %if.end769
  %call777 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %call752, i32 noundef 124, i64 noundef %max_version.1, i8* noundef null) #16
  %cmp778 = icmp eq i64 %call777, 0
  br i1 %cmp778, label %end, label %if.end781

if.end781:                                        ; preds = %if.end775
  %66 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call783 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %66, i32 noundef 123, i64 noundef %max_version.1, i8* noundef null) #16
  %cmp784 = icmp eq i64 %call783, 0
  br i1 %cmp784, label %end, label %if.end787

if.end787:                                        ; preds = %if.end781
  %67 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call789 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %67, i32 noundef 124, i64 noundef %max_version.1, i8* noundef null) #16
  %cmp790 = icmp eq i64 %call789, 0
  br i1 %cmp790, label %end, label %if.end793

if.end793:                                        ; preds = %if.end787
  %68 = load i8*, i8** @cipher, align 8, !tbaa !7
  %cmp794.not = icmp eq i8* %68, null
  br i1 %cmp794.not, label %if.end852, label %if.then796

if.then796:                                       ; preds = %if.end793
  %call797 = call i32 @strcmp(i8* noundef nonnull %68, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.83, i64 0, i64 0)) #17
  %cmp798 = icmp eq i32 %call797, 0
  %call801 = call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef nonnull %call752, i8* noundef nonnull %68) #16
  %tobool802.not = icmp eq i32 %call801, 0
  br i1 %cmp798, label %if.then800, label %if.else840

if.then800:                                       ; preds = %if.then796
  br i1 %tobool802.not, label %if.then803, label %if.else811

if.then803:                                       ; preds = %if.then800
  %call804 = call i64 @ERR_peek_error() #16
  %call805 = call fastcc i32 @ERR_GET_REASON(i64 noundef %call804) #19
  %cmp806 = icmp eq i32 %call805, 185
  br i1 %cmp806, label %if.then808, label %if.else809

if.then808:                                       ; preds = %if.then803
  call void @ERR_clear_error() #16
  %69 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %70 = load i8*, i8** @cipher, align 8, !tbaa !7
  %call814 = call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %69, i8* noundef %70) #16
  %tobool815.not = icmp eq i32 %call814, 0
  br i1 %tobool815.not, label %if.then816, label %if.else824

if.else809:                                       ; preds = %if.then803
  %71 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %71) #16
  br label %end

if.else811:                                       ; preds = %if.then800
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call812 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %72, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.84, i64 0, i64 0)) #16
  br label %end

if.then816:                                       ; preds = %if.then808
  %call817 = call i64 @ERR_peek_error() #16
  %call818 = call fastcc i32 @ERR_GET_REASON(i64 noundef %call817) #19
  %cmp819 = icmp eq i32 %call818, 185
  br i1 %cmp819, label %if.then821, label %if.else822

if.then821:                                       ; preds = %if.then816
  call void @ERR_clear_error() #16
  %73 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %74 = load i8*, i8** @cipher, align 8, !tbaa !7
  %call827 = call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %73, i8* noundef %74) #16
  %tobool828.not = icmp eq i32 %call827, 0
  br i1 %tobool828.not, label %if.then829, label %if.else837

if.else822:                                       ; preds = %if.then816
  %75 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %75) #16
  br label %end

if.else824:                                       ; preds = %if.then808
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call825 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %76, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.84, i64 0, i64 0)) #16
  br label %end

if.then829:                                       ; preds = %if.then821
  %call830 = call i64 @ERR_peek_error() #16
  %call831 = call fastcc i32 @ERR_GET_REASON(i64 noundef %call830) #19
  %cmp832 = icmp eq i32 %call831, 185
  br i1 %cmp832, label %if.then834, label %if.else835

if.then834:                                       ; preds = %if.then829
  call void @ERR_clear_error() #16
  br label %if.end852

if.else835:                                       ; preds = %if.then829
  %77 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %77) #16
  br label %end

if.else837:                                       ; preds = %if.then821
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call838 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %78, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.84, i64 0, i64 0)) #16
  br label %end

if.else840:                                       ; preds = %if.then796
  br i1 %tobool802.not, label %if.then849, label %lor.lhs.false843

lor.lhs.false843:                                 ; preds = %if.else840
  %79 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %80 = load i8*, i8** @cipher, align 8, !tbaa !7
  %call844 = call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %79, i8* noundef %80) #16
  %tobool845.not = icmp eq i32 %call844, 0
  br i1 %tobool845.not, label %if.then849, label %lor.lhs.false846

lor.lhs.false846:                                 ; preds = %lor.lhs.false843
  %81 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %82 = load i8*, i8** @cipher, align 8, !tbaa !7
  %call847 = call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %81, i8* noundef %82) #16
  %tobool848.not = icmp eq i32 %call847, 0
  br i1 %tobool848.not, label %if.then849, label %if.end852

if.then849:                                       ; preds = %lor.lhs.false846, %lor.lhs.false843, %if.else840
  %83 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %83) #16
  br label %end

if.end852:                                        ; preds = %if.then834, %lor.lhs.false846, %if.end793
  %84 = load i8*, i8** @ciphersuites, align 8, !tbaa !7
  %cmp853.not = icmp eq i8* %84, null
  br i1 %cmp853.not, label %if.end866, label %if.then855

if.then855:                                       ; preds = %if.end852
  %call856 = call i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef nonnull %call752, i8* noundef nonnull %84) #16
  %tobool857.not = icmp eq i32 %call856, 0
  br i1 %tobool857.not, label %if.then864, label %lor.lhs.false858

lor.lhs.false858:                                 ; preds = %if.then855
  %85 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %86 = load i8*, i8** @ciphersuites, align 8, !tbaa !7
  %call859 = call i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef %85, i8* noundef %86) #16
  %tobool860.not = icmp eq i32 %call859, 0
  br i1 %tobool860.not, label %if.then864, label %lor.lhs.false861

lor.lhs.false861:                                 ; preds = %lor.lhs.false858
  %87 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %88 = load i8*, i8** @ciphersuites, align 8, !tbaa !7
  %call862 = call i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef %87, i8* noundef %88) #16
  %tobool863.not = icmp eq i32 %call862, 0
  br i1 %tobool863.not, label %if.then864, label %if.end866

if.then864:                                       ; preds = %lor.lhs.false861, %lor.lhs.false858, %if.then855
  %89 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %89) #16
  br label %end

if.end866:                                        ; preds = %lor.lhs.false861, %if.end852
  %tobool867.not = icmp eq i32 %ct_validation.0.ph.lcssa, 0
  br i1 %tobool867.not, label %if.end872, label %land.lhs.true868

land.lhs.true868:                                 ; preds = %if.end866
  %call869 = call i32 @SSL_CTX_enable_ct(%struct.ssl_ctx_st* noundef nonnull %call752, i32 noundef 1) #16
  %tobool870.not = icmp eq i32 %call869, 0
  br i1 %tobool870.not, label %if.then871, label %if.end872

if.then871:                                       ; preds = %land.lhs.true868
  %90 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %90) #16
  br label %end

if.end872:                                        ; preds = %land.lhs.true868, %if.end866
  call void @SSL_CONF_CTX_set_ssl_ctx(%struct.ssl_conf_ctx_st* noundef nonnull %call4, %struct.ssl_ctx_st* noundef nonnull %call752) #16
  %91 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  call void @SSL_CONF_CTX_set_ssl_ctx(%struct.ssl_conf_ctx_st* noundef nonnull %call2, %struct.ssl_ctx_st* noundef %91) #16
  %92 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  call void @SSL_CONF_CTX_set_ssl_ctx(%struct.ssl_conf_ctx_st* noundef nonnull %call3, %struct.ssl_ctx_st* noundef %92) #16
  %call874 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %conf_args.0.lcssa) #19
  %call8751879 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call874) #16
  %cmp8761880 = icmp sgt i32 %call8751879, 0
  br i1 %cmp8761880, label %for.body878, label %for.end907

for.cond873:                                      ; preds = %if.end895
  %call875 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call874) #16
  %cmp876 = icmp slt i32 %add906, %call875
  br i1 %cmp876, label %for.body878, label %for.end907, !llvm.loop !17

for.body878:                                      ; preds = %if.end872, %for.cond873
  %i.01881 = phi i32 [ %add906, %for.cond873 ], [ 0, %if.end872 ]
  %call881 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call874, i32 noundef %i.01881) #16
  %add883 = or i32 %i.01881, 1
  %call884 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call874, i32 noundef %add883) #16
  %call885 = call i32 @SSL_CONF_cmd(%struct.ssl_conf_ctx_st* noundef nonnull %call4, i8* noundef %call881, i8* noundef %call884) #16
  %cmp886 = icmp eq i32 %call885, -2
  br i1 %cmp886, label %if.then888, label %if.end895

if.then888:                                       ; preds = %for.body878
  %call889 = call i32 @SSL_CONF_cmd(%struct.ssl_conf_ctx_st* noundef nonnull %call3, i8* noundef %call881, i8* noundef %call884) #16
  %cmp890 = icmp sgt i32 %call889, 0
  br i1 %cmp890, label %if.then892, label %cleanup903

if.then892:                                       ; preds = %if.then888
  %call893 = call i32 @SSL_CONF_cmd(%struct.ssl_conf_ctx_st* noundef nonnull %call2, i8* noundef %call881, i8* noundef %call884) #16
  br label %if.end895

if.end895:                                        ; preds = %if.then892, %for.body878
  %rv879.0 = phi i32 [ %call893, %if.then892 ], [ %call885, %for.body878 ]
  %cmp896 = icmp slt i32 %rv879.0, 1
  %add906 = add nuw nsw i32 %i.01881, 2
  br i1 %cmp896, label %cleanup903, label %for.cond873

cleanup903:                                       ; preds = %if.then888, %if.end895
  %93 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %tobool899.not = icmp eq i8* %call884, null
  %cond900 = select i1 %tobool899.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.83, i64 0, i64 0), i8* %call884
  %call901 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %93, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.85, i64 0, i64 0), i8* noundef %call881, i8* noundef %cond900) #16
  %94 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %94) #16
  br label %end

for.end907:                                       ; preds = %for.cond873, %if.end872
  %call908 = call i32 @SSL_CONF_CTX_finish(%struct.ssl_conf_ctx_st* noundef nonnull %call2) #16
  %tobool909.not = icmp eq i32 %call908, 0
  br i1 %tobool909.not, label %if.then916, label %lor.lhs.false910

lor.lhs.false910:                                 ; preds = %for.end907
  %call911 = call i32 @SSL_CONF_CTX_finish(%struct.ssl_conf_ctx_st* noundef nonnull %call4) #16
  %tobool912.not = icmp eq i32 %call911, 0
  br i1 %tobool912.not, label %if.then916, label %lor.lhs.false913

lor.lhs.false913:                                 ; preds = %lor.lhs.false910
  %call914 = call i32 @SSL_CONF_CTX_finish(%struct.ssl_conf_ctx_st* noundef nonnull %call3) #16
  %tobool915.not = icmp eq i32 %call914, 0
  br i1 %tobool915.not, label %if.then916, label %if.end918

if.then916:                                       ; preds = %lor.lhs.false913, %lor.lhs.false910, %for.end907
  %95 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call917 = call i32 @BIO_puts(%struct.bio_st* noundef %95, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.86, i64 0, i64 0)) #16
  %96 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %96) #16
  br label %end

if.end918:                                        ; preds = %lor.lhs.false913
  %tobool919.not = icmp eq i32 %no_dhe.0.ph.lcssa, 0
  br i1 %tobool919.not, label %if.then920, label %if.end942

if.then920:                                       ; preds = %if.end918
  %tobool921.not = icmp eq i32 %dhe1024dsa.0.ph.lcssa, 0
  br i1 %tobool921.not, label %if.else924, label %if.then922

if.then922:                                       ; preds = %if.then920
  %97 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !7
  %call923 = call %struct.evp_pkey_st* @get_dh1024dsa(%struct.ossl_lib_ctx_st* noundef %97) #16
  br label %if.end931

if.else924:                                       ; preds = %if.then920
  %tobool925.not = icmp eq i32 %dhe512.0.ph.lcssa, 0
  %98 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !7
  br i1 %tobool925.not, label %if.else928, label %if.then926

if.then926:                                       ; preds = %if.else924
  %call927 = call %struct.evp_pkey_st* @get_dh512(%struct.ossl_lib_ctx_st* noundef %98) #16
  br label %if.end931

if.else928:                                       ; preds = %if.else924
  %call929 = call %struct.evp_pkey_st* @get_dh2048(%struct.ossl_lib_ctx_st* noundef %98) #16
  br label %if.end931

if.end931:                                        ; preds = %if.then926, %if.else928, %if.then922
  %dhpkey.0 = phi %struct.evp_pkey_st* [ %call923, %if.then922 ], [ %call927, %if.then926 ], [ %call929, %if.else928 ]
  %cmp932 = icmp eq %struct.evp_pkey_st* %dhpkey.0, null
  br i1 %cmp932, label %if.then937, label %lor.lhs.false934

lor.lhs.false934:                                 ; preds = %if.end931
  %call935 = call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef nonnull %dhpkey.0) #16
  %tobool936.not = icmp eq i32 %call935, 0
  br i1 %tobool936.not, label %if.then937, label %if.end939

if.then937:                                       ; preds = %lor.lhs.false934, %if.end931
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %dhpkey.0) #16
  %99 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call938 = call i32 @BIO_puts(%struct.bio_st* noundef %99, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i64 0, i64 0)) #16
  %100 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %100) #16
  br label %end

if.end939:                                        ; preds = %lor.lhs.false934
  %101 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call940 = call i32 @SSL_CTX_set0_tmp_dh_pkey(%struct.ssl_ctx_st* noundef %101, %struct.evp_pkey_st* noundef nonnull %dhpkey.0) #16
  %102 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %call941 = call i32 @SSL_CTX_set0_tmp_dh_pkey(%struct.ssl_ctx_st* noundef %102, %struct.evp_pkey_st* noundef nonnull %dhpkey.0) #16
  br label %if.end942

if.end942:                                        ; preds = %if.end939, %if.end918
  %103 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call943 = call i32 @SSL_CTX_load_verify_file(%struct.ssl_ctx_st* noundef %103, i8* noundef %CAfile.0.ph.lcssa) #16
  %tobool944.not = icmp eq i32 %call943, 0
  br i1 %tobool944.not, label %lor.lhs.false945, label %lor.lhs.false948

lor.lhs.false945:                                 ; preds = %if.end942
  %104 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call946 = call i32 @SSL_CTX_load_verify_dir(%struct.ssl_ctx_st* noundef %104, i8* noundef %CApath.0.ph.lcssa) #16
  %tobool947.not = icmp eq i32 %call946, 0
  br i1 %tobool947.not, label %if.then969, label %lor.lhs.false948

lor.lhs.false948:                                 ; preds = %lor.lhs.false945, %if.end942
  %105 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call949 = call i32 @SSL_CTX_set_default_verify_paths(%struct.ssl_ctx_st* noundef %105) #16
  %tobool950.not = icmp eq i32 %call949, 0
  br i1 %tobool950.not, label %if.then969, label %lor.lhs.false951

lor.lhs.false951:                                 ; preds = %lor.lhs.false948
  %106 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %call952 = call i32 @SSL_CTX_load_verify_file(%struct.ssl_ctx_st* noundef %106, i8* noundef %CAfile.0.ph.lcssa) #16
  %tobool953.not = icmp eq i32 %call952, 0
  br i1 %tobool953.not, label %lor.lhs.false954, label %lor.lhs.false957

lor.lhs.false954:                                 ; preds = %lor.lhs.false951
  %107 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %call955 = call i32 @SSL_CTX_load_verify_dir(%struct.ssl_ctx_st* noundef %107, i8* noundef %CApath.0.ph.lcssa) #16
  %tobool956.not = icmp eq i32 %call955, 0
  br i1 %tobool956.not, label %if.then969, label %lor.lhs.false957

lor.lhs.false957:                                 ; preds = %lor.lhs.false954, %lor.lhs.false951
  %108 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %call958 = call i32 @SSL_CTX_set_default_verify_paths(%struct.ssl_ctx_st* noundef %108) #16
  %tobool959.not = icmp eq i32 %call958, 0
  br i1 %tobool959.not, label %if.then969, label %lor.lhs.false960

lor.lhs.false960:                                 ; preds = %lor.lhs.false957
  %call961 = call i32 @SSL_CTX_load_verify_file(%struct.ssl_ctx_st* noundef %call752, i8* noundef %CAfile.0.ph.lcssa) #16
  %tobool962.not = icmp eq i32 %call961, 0
  br i1 %tobool962.not, label %lor.lhs.false963, label %lor.lhs.false966

lor.lhs.false963:                                 ; preds = %lor.lhs.false960
  %call964 = call i32 @SSL_CTX_load_verify_dir(%struct.ssl_ctx_st* noundef %call752, i8* noundef %CApath.0.ph.lcssa) #16
  %tobool965.not = icmp eq i32 %call964, 0
  br i1 %tobool965.not, label %if.then969, label %lor.lhs.false966

lor.lhs.false966:                                 ; preds = %lor.lhs.false963, %lor.lhs.false960
  %call967 = call i32 @SSL_CTX_set_default_verify_paths(%struct.ssl_ctx_st* noundef %call752) #16
  %tobool968.not = icmp eq i32 %call967, 0
  br i1 %tobool968.not, label %if.then969, label %if.end970

if.then969:                                       ; preds = %lor.lhs.false966, %lor.lhs.false963, %lor.lhs.false957, %lor.lhs.false954, %lor.lhs.false948, %lor.lhs.false945
  %109 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %109) #16
  br label %if.end970

if.end970:                                        ; preds = %if.then969, %lor.lhs.false966
  %110 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call971 = call i32 @SSL_CTX_set_default_ctlog_list_file(%struct.ssl_ctx_st* noundef %110) #16
  %tobool972.not = icmp eq i32 %call971, 0
  br i1 %tobool972.not, label %if.then979, label %lor.lhs.false973

lor.lhs.false973:                                 ; preds = %if.end970
  %111 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %call974 = call i32 @SSL_CTX_set_default_ctlog_list_file(%struct.ssl_ctx_st* noundef %111) #16
  %tobool975.not = icmp eq i32 %call974, 0
  br i1 %tobool975.not, label %if.then979, label %lor.lhs.false976

lor.lhs.false976:                                 ; preds = %lor.lhs.false973
  %call977 = call i32 @SSL_CTX_set_default_ctlog_list_file(%struct.ssl_ctx_st* noundef %call752) #16
  %tobool978.not = icmp eq i32 %call977, 0
  br i1 %tobool978.not, label %if.then979, label %if.end980

if.then979:                                       ; preds = %lor.lhs.false976, %lor.lhs.false973, %if.end970
  %112 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %112) #16
  br label %if.end980

if.end980:                                        ; preds = %if.then979, %lor.lhs.false976
  %tobool981.not = icmp eq i32 %client_auth.0.ph.lcssa, 0
  br i1 %tobool981.not, label %if.end984, label %if.then982

if.then982:                                       ; preds = %if.end980
  %call983 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.88, i64 0, i64 0)) #16
  %113 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  call void @SSL_CTX_set_verify(%struct.ssl_ctx_st* noundef %113, i32 noundef 3, i32 (i32, %struct.x509_store_ctx_st*)* noundef nonnull @verify_callback) #16
  %114 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  call void @SSL_CTX_set_verify(%struct.ssl_ctx_st* noundef %114, i32 noundef 3, i32 (i32, %struct.x509_store_ctx_st*)* noundef nonnull @verify_callback) #16
  %115 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  call void @SSL_CTX_set_cert_verify_callback(%struct.ssl_ctx_st* noundef %115, i32 (%struct.x509_store_ctx_st*, i8*)* noundef nonnull @app_verify_callback, i8* noundef nonnull %0) #16
  %116 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  call void @SSL_CTX_set_cert_verify_callback(%struct.ssl_ctx_st* noundef %116, i32 (%struct.x509_store_ctx_st*, i8*)* noundef nonnull @app_verify_callback, i8* noundef nonnull %0) #16
  br label %if.end984

if.end984:                                        ; preds = %if.then982, %if.end980
  %tobool985.not = icmp eq i32 %server_auth.0.ph.lcssa, 0
  br i1 %tobool985.not, label %if.end988, label %if.then986

if.then986:                                       ; preds = %if.end984
  %call987 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.89, i64 0, i64 0)) #16
  call void @SSL_CTX_set_verify(%struct.ssl_ctx_st* noundef %call752, i32 noundef 1, i32 (i32, %struct.x509_store_ctx_st*)* noundef nonnull @verify_callback) #16
  call void @SSL_CTX_set_cert_verify_callback(%struct.ssl_ctx_st* noundef %call752, i32 (%struct.x509_store_ctx_st*, i8*)* noundef nonnull @app_verify_callback, i8* noundef nonnull %0) #16
  br label %if.end988

if.end988:                                        ; preds = %if.then986, %if.end984
  %117 = bitcast i32* %session_id_context to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %117) #15
  store i32 0, i32* %session_id_context, align 4, !tbaa !3
  %118 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call989 = call i32 @SSL_CTX_set_session_id_context(%struct.ssl_ctx_st* noundef %118, i8* noundef nonnull %117, i32 noundef 4) #16
  %tobool990.not = icmp eq i32 %call989, 0
  br i1 %tobool990.not, label %cleanup996, label %lor.lhs.false991

lor.lhs.false991:                                 ; preds = %if.end988
  %119 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %call992 = call i32 @SSL_CTX_set_session_id_context(%struct.ssl_ctx_st* noundef %119, i8* noundef nonnull %117, i32 noundef 4) #16
  %tobool993.not = icmp eq i32 %call992, 0
  br i1 %tobool993.not, label %cleanup996, label %cleanup.cont998

cleanup996:                                       ; preds = %if.end988, %lor.lhs.false991
  %120 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %120) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %117) #15
  br label %end

cleanup.cont998:                                  ; preds = %lor.lhs.false991
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %117) #15
  %121 = load i8*, i8** @psk_key, align 8, !tbaa !7
  %cmp999.not = icmp eq i8* %121, null
  br i1 %cmp999.not, label %if.end1017, label %if.end1004

if.end1004:                                       ; preds = %cleanup.cont998
  call void @SSL_CTX_set_psk_client_callback(%struct.ssl_ctx_st* noundef %call752, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)* noundef nonnull @psk_client_callback) #16
  %122 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  call void @SSL_CTX_set_psk_server_callback(%struct.ssl_ctx_st* noundef %122, i32 (%struct.ssl_st*, i8*, i8*, i32)* noundef nonnull @psk_server_callback) #16
  %123 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  call void @SSL_CTX_set_psk_server_callback(%struct.ssl_ctx_st* noundef %123, i32 (%struct.ssl_st*, i8*, i8*, i32)* noundef nonnull @psk_server_callback) #16
  %.b1518 = load i1, i1* @debug, align 4
  br i1 %.b1518, label %if.then1006, label %if.end1008

if.then1006:                                      ; preds = %if.end1004
  %124 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1007 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %124, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.90, i64 0, i64 0)) #16
  br label %if.end1008

if.end1008:                                       ; preds = %if.then1006, %if.end1004
  %125 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call1009 = call i32 @SSL_CTX_use_psk_identity_hint(%struct.ssl_ctx_st* noundef %125, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.91, i64 0, i64 0)) #16
  %tobool1010.not = icmp eq i32 %call1009, 0
  br i1 %tobool1010.not, label %if.then1014, label %lor.lhs.false1011

lor.lhs.false1011:                                ; preds = %if.end1008
  %126 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %call1012 = call i32 @SSL_CTX_use_psk_identity_hint(%struct.ssl_ctx_st* noundef %126, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.91, i64 0, i64 0)) #16
  %tobool1013.not = icmp eq i32 %call1012, 0
  br i1 %tobool1013.not, label %if.then1014, label %if.end1017

if.then1014:                                      ; preds = %lor.lhs.false1011, %if.end1008
  %127 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1015 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %127, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.92, i64 0, i64 0)) #16
  %128 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %128) #16
  br label %end

if.end1017:                                       ; preds = %lor.lhs.false1011, %cleanup.cont998
  %.b1519 = load i1, i1* @npn_client, align 4
  br i1 %.b1519, label %if.then1019, label %if.end1020

if.then1019:                                      ; preds = %if.end1017
  call void @SSL_CTX_set_next_proto_select_cb(%struct.ssl_ctx_st* noundef %call752, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* noundef nonnull @cb_client_npn, i8* noundef null) #16
  br label %if.end1020

if.end1020:                                       ; preds = %if.then1019, %if.end1017
  %.b1520 = load i1, i1* @npn_server, align 4
  br i1 %.b1520, label %if.then1022, label %if.end1027

if.then1022:                                      ; preds = %if.end1020
  %.b1522 = load i1, i1* @npn_server_reject, align 4
  br i1 %.b1522, label %if.then1024, label %if.end1026

if.then1024:                                      ; preds = %if.then1022
  %129 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1025 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %129, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.93, i64 0, i64 0)) #16
  br label %end

if.end1026:                                       ; preds = %if.then1022
  %130 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  call void @SSL_CTX_set_next_protos_advertised_cb(%struct.ssl_ctx_st* noundef %130, i32 (%struct.ssl_st*, i8**, i32*, i8*)* noundef nonnull @cb_server_npn, i8* noundef null) #16
  %131 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  call void @SSL_CTX_set_next_protos_advertised_cb(%struct.ssl_ctx_st* noundef %131, i32 (%struct.ssl_st*, i8**, i32*, i8*)* noundef nonnull @cb_server_npn, i8* noundef null) #16
  br label %if.end1027

if.end1027:                                       ; preds = %if.end1026, %if.end1020
  %.b1521 = load i1, i1* @npn_server_reject, align 4
  br i1 %.b1521, label %if.then1029, label %if.end1030

if.then1029:                                      ; preds = %if.end1027
  %132 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  call void @SSL_CTX_set_next_protos_advertised_cb(%struct.ssl_ctx_st* noundef %132, i32 (%struct.ssl_st*, i8**, i32*, i8*)* noundef nonnull @cb_server_rejects_npn, i8* noundef null) #16
  %133 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  call void @SSL_CTX_set_next_protos_advertised_cb(%struct.ssl_ctx_st* noundef %133, i32 (%struct.ssl_st*, i8**, i32*, i8*)* noundef nonnull @cb_server_rejects_npn, i8* noundef null) #16
  br label %if.end1030

if.end1030:                                       ; preds = %if.then1029, %if.end1027
  %.b1523 = load i1, i1* @serverinfo_sct, align 4
  br i1 %.b1523, label %if.then1032, label %if.end1038

if.then1032:                                      ; preds = %if.end1030
  %call1033 = call i32 @SSL_CTX_add_client_custom_ext(%struct.ssl_ctx_st* noundef %call752, i32 noundef 18, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef null, void (%struct.ssl_st*, i32, i8*, i8*)* noundef null, i8* noundef null, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef nonnull @serverinfo_cli_parse_cb, i8* noundef null) #16
  %tobool1034.not = icmp eq i32 %call1033, 0
  br i1 %tobool1034.not, label %if.then1035, label %if.end1038

if.then1035:                                      ; preds = %if.then1032
  %134 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1036 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %134, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.94, i64 0, i64 0)) #16
  br label %end

if.end1038:                                       ; preds = %if.then1032, %if.end1030
  %.b1524 = load i1, i1* @serverinfo_tack, align 4
  br i1 %.b1524, label %if.then1040, label %if.end1046

if.then1040:                                      ; preds = %if.end1038
  %call1041 = call i32 @SSL_CTX_add_client_custom_ext(%struct.ssl_ctx_st* noundef %call752, i32 noundef 62208, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef null, void (%struct.ssl_st*, i32, i8*, i8*)* noundef null, i8* noundef null, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef nonnull @serverinfo_cli_parse_cb, i8* noundef null) #16
  %tobool1042.not = icmp eq i32 %call1041, 0
  br i1 %tobool1042.not, label %if.then1043, label %if.end1046

if.then1043:                                      ; preds = %if.then1040
  %135 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1044 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %135, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.95, i64 0, i64 0)) #16
  br label %end

if.end1046:                                       ; preds = %if.then1040, %if.end1038
  %136 = load i8*, i8** @serverinfo_file, align 8, !tbaa !7
  %tobool1047.not = icmp eq i8* %136, null
  br i1 %tobool1047.not, label %if.end1057, label %if.then1048

if.then1048:                                      ; preds = %if.end1046
  %137 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call1049 = call i32 @SSL_CTX_use_serverinfo_file(%struct.ssl_ctx_st* noundef %137, i8* noundef nonnull %136) #16
  %tobool1050.not = icmp eq i32 %call1049, 0
  br i1 %tobool1050.not, label %if.then1054, label %lor.lhs.false1051

lor.lhs.false1051:                                ; preds = %if.then1048
  %138 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %139 = load i8*, i8** @serverinfo_file, align 8, !tbaa !7
  %call1052 = call i32 @SSL_CTX_use_serverinfo_file(%struct.ssl_ctx_st* noundef %138, i8* noundef %139) #16
  %tobool1053.not = icmp eq i32 %call1052, 0
  br i1 %tobool1053.not, label %if.then1054, label %if.end1057

if.then1054:                                      ; preds = %lor.lhs.false1051, %if.then1048
  %140 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1055 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %140, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.96, i64 0, i64 0)) #16
  br label %end

if.end1057:                                       ; preds = %lor.lhs.false1051, %if.end1046
  %.b1525 = load i1, i1* @custom_ext, align 4
  br i1 %.b1525, label %if.then1059, label %if.end1098

if.then1059:                                      ; preds = %if.end1057
  %call1060 = call i32 @SSL_CTX_add_client_custom_ext(%struct.ssl_ctx_st* noundef %call752, i32 noundef 1000, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef nonnull @custom_ext_0_cli_add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef null, i8* noundef null, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef nonnull @custom_ext_0_cli_parse_cb, i8* noundef null) #16
  %tobool1061.not = icmp eq i32 %call1060, 0
  br i1 %tobool1061.not, label %if.then1095, label %lor.lhs.false1062

lor.lhs.false1062:                                ; preds = %if.then1059
  %call1063 = call i32 @SSL_CTX_add_client_custom_ext(%struct.ssl_ctx_st* noundef %call752, i32 noundef 1001, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef nonnull @custom_ext_1_cli_add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef null, i8* noundef null, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef nonnull @custom_ext_1_cli_parse_cb, i8* noundef null) #16
  %tobool1064.not = icmp eq i32 %call1063, 0
  br i1 %tobool1064.not, label %if.then1095, label %lor.lhs.false1065

lor.lhs.false1065:                                ; preds = %lor.lhs.false1062
  %call1066 = call i32 @SSL_CTX_add_client_custom_ext(%struct.ssl_ctx_st* noundef %call752, i32 noundef 1002, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef nonnull @custom_ext_2_cli_add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef null, i8* noundef null, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef nonnull @custom_ext_2_cli_parse_cb, i8* noundef null) #16
  %tobool1067.not = icmp eq i32 %call1066, 0
  br i1 %tobool1067.not, label %if.then1095, label %lor.lhs.false1068

lor.lhs.false1068:                                ; preds = %lor.lhs.false1065
  %call1069 = call i32 @SSL_CTX_add_client_custom_ext(%struct.ssl_ctx_st* noundef %call752, i32 noundef 1003, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef nonnull @custom_ext_3_cli_add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef null, i8* noundef null, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef nonnull @custom_ext_3_cli_parse_cb, i8* noundef null) #16
  %tobool1070.not = icmp eq i32 %call1069, 0
  br i1 %tobool1070.not, label %if.then1095, label %lor.lhs.false1071

lor.lhs.false1071:                                ; preds = %lor.lhs.false1068
  %141 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call1072 = call i32 @SSL_CTX_add_server_custom_ext(%struct.ssl_ctx_st* noundef %141, i32 noundef 1000, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef nonnull @custom_ext_0_srv_add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef null, i8* noundef null, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef nonnull @custom_ext_0_srv_parse_cb, i8* noundef null) #16
  %tobool1073.not = icmp eq i32 %call1072, 0
  br i1 %tobool1073.not, label %if.then1095, label %lor.lhs.false1074

lor.lhs.false1074:                                ; preds = %lor.lhs.false1071
  %142 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %call1075 = call i32 @SSL_CTX_add_server_custom_ext(%struct.ssl_ctx_st* noundef %142, i32 noundef 1000, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef nonnull @custom_ext_0_srv_add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef null, i8* noundef null, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef nonnull @custom_ext_0_srv_parse_cb, i8* noundef null) #16
  %tobool1076.not = icmp eq i32 %call1075, 0
  br i1 %tobool1076.not, label %if.then1095, label %lor.lhs.false1077

lor.lhs.false1077:                                ; preds = %lor.lhs.false1074
  %143 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call1078 = call i32 @SSL_CTX_add_server_custom_ext(%struct.ssl_ctx_st* noundef %143, i32 noundef 1001, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef nonnull @custom_ext_1_srv_add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef null, i8* noundef null, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef nonnull @custom_ext_1_srv_parse_cb, i8* noundef null) #16
  %tobool1079.not = icmp eq i32 %call1078, 0
  br i1 %tobool1079.not, label %if.then1095, label %lor.lhs.false1080

lor.lhs.false1080:                                ; preds = %lor.lhs.false1077
  %144 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %call1081 = call i32 @SSL_CTX_add_server_custom_ext(%struct.ssl_ctx_st* noundef %144, i32 noundef 1001, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef nonnull @custom_ext_1_srv_add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef null, i8* noundef null, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef nonnull @custom_ext_1_srv_parse_cb, i8* noundef null) #16
  %tobool1082.not = icmp eq i32 %call1081, 0
  br i1 %tobool1082.not, label %if.then1095, label %lor.lhs.false1083

lor.lhs.false1083:                                ; preds = %lor.lhs.false1080
  %145 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call1084 = call i32 @SSL_CTX_add_server_custom_ext(%struct.ssl_ctx_st* noundef %145, i32 noundef 1002, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef nonnull @custom_ext_2_srv_add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef null, i8* noundef null, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef nonnull @custom_ext_2_srv_parse_cb, i8* noundef null) #16
  %tobool1085.not = icmp eq i32 %call1084, 0
  br i1 %tobool1085.not, label %if.then1095, label %lor.lhs.false1086

lor.lhs.false1086:                                ; preds = %lor.lhs.false1083
  %146 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %call1087 = call i32 @SSL_CTX_add_server_custom_ext(%struct.ssl_ctx_st* noundef %146, i32 noundef 1002, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef nonnull @custom_ext_2_srv_add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef null, i8* noundef null, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef nonnull @custom_ext_2_srv_parse_cb, i8* noundef null) #16
  %tobool1088.not = icmp eq i32 %call1087, 0
  br i1 %tobool1088.not, label %if.then1095, label %lor.lhs.false1089

lor.lhs.false1089:                                ; preds = %lor.lhs.false1086
  %147 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call1090 = call i32 @SSL_CTX_add_server_custom_ext(%struct.ssl_ctx_st* noundef %147, i32 noundef 1003, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef nonnull @custom_ext_3_srv_add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef null, i8* noundef null, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef nonnull @custom_ext_3_srv_parse_cb, i8* noundef null) #16
  %tobool1091.not = icmp eq i32 %call1090, 0
  br i1 %tobool1091.not, label %if.then1095, label %lor.lhs.false1092

lor.lhs.false1092:                                ; preds = %lor.lhs.false1089
  %148 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %call1093 = call i32 @SSL_CTX_add_server_custom_ext(%struct.ssl_ctx_st* noundef %148, i32 noundef 1003, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef nonnull @custom_ext_3_srv_add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef null, i8* noundef null, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef nonnull @custom_ext_3_srv_parse_cb, i8* noundef null) #16
  %tobool1094.not = icmp eq i32 %call1093, 0
  br i1 %tobool1094.not, label %if.then1095, label %if.end1098

if.then1095:                                      ; preds = %lor.lhs.false1092, %lor.lhs.false1089, %lor.lhs.false1086, %lor.lhs.false1083, %lor.lhs.false1080, %lor.lhs.false1077, %lor.lhs.false1074, %lor.lhs.false1071, %lor.lhs.false1068, %lor.lhs.false1065, %lor.lhs.false1062, %if.then1059
  %149 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1096 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %149, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.97, i64 0, i64 0)) #16
  br label %end

if.end1098:                                       ; preds = %lor.lhs.false1092, %if.end1057
  %150 = load i8*, i8** @alpn_server, align 8, !tbaa !7
  %tobool1099.not = icmp eq i8* %150, null
  br i1 %tobool1099.not, label %if.end1101, label %if.then1100

if.then1100:                                      ; preds = %if.end1098
  %151 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  call void @SSL_CTX_set_alpn_select_cb(%struct.ssl_ctx_st* noundef %151, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* noundef nonnull @cb_server_alpn, i8* noundef nonnull %150) #16
  br label %if.end1101

if.end1101:                                       ; preds = %if.then1100, %if.end1098
  %152 = load i8*, i8** @alpn_server2, align 8, !tbaa !7
  %tobool1102.not = icmp eq i8* %152, null
  br i1 %tobool1102.not, label %if.end1104, label %if.then1103

if.then1103:                                      ; preds = %if.end1101
  %153 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  call void @SSL_CTX_set_alpn_select_cb(%struct.ssl_ctx_st* noundef %153, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* noundef nonnull @cb_server_alpn, i8* noundef nonnull %152) #16
  br label %if.end1104

if.end1104:                                       ; preds = %if.then1103, %if.end1101
  %154 = load i8*, i8** @alpn_client, align 8, !tbaa !7
  %tobool1105.not = icmp eq i8* %154, null
  br i1 %tobool1105.not, label %if.end1123, label %if.then1106

if.then1106:                                      ; preds = %if.end1104
  %155 = bitcast i64* %alpn_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %155) #15
  %call1107 = call fastcc i8* @next_protos_parse(i64* noundef nonnull %alpn_len, i8* noundef nonnull %154) #19
  %cmp1108 = icmp eq i8* %call1107, null
  br i1 %cmp1108, label %if.then1110, label %if.end1112

if.then1110:                                      ; preds = %if.then1106
  %156 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1111 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %156, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.98, i64 0, i64 0)) #16
  br label %cleanup1119.thread

if.end1112:                                       ; preds = %if.then1106
  %157 = load i64, i64* %alpn_len, align 8, !tbaa !9
  %conv1113 = trunc i64 %157 to i32
  %call1114 = call i32 @SSL_CTX_set_alpn_protos(%struct.ssl_ctx_st* noundef %call752, i8* noundef nonnull %call1107, i32 noundef %conv1113) #16
  %tobool1115.not = icmp eq i32 %call1114, 0
  br i1 %tobool1115.not, label %cleanup1119, label %if.then1116

if.then1116:                                      ; preds = %if.end1112
  %158 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1117 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %158, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.99, i64 0, i64 0)) #16
  call void @CRYPTO_free(i8* noundef nonnull %call1107, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i64 0, i64 0), i32 noundef 1689) #16
  br label %cleanup1119.thread

cleanup1119.thread:                               ; preds = %if.then1110, %if.then1116
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %155) #15
  br label %end

cleanup1119:                                      ; preds = %if.end1112
  call void @CRYPTO_free(i8* noundef nonnull %call1107, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i64 0, i64 0), i32 noundef 1692) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %155) #15
  br label %if.end1123

if.end1123:                                       ; preds = %cleanup1119, %if.end1104
  %159 = load i8*, i8** @server_sess_in, align 8, !tbaa !7
  %cmp1124.not = icmp eq i8* %159, null
  br i1 %cmp1124.not, label %if.end1132, label %if.then1126

if.then1126:                                      ; preds = %if.end1123
  %call1127 = call fastcc %struct.ssl_session_st* @read_session(i8* noundef nonnull %159) #19
  store %struct.ssl_session_st* %call1127, %struct.ssl_session_st** @server_sess, align 8, !tbaa !7
  %cmp1128 = icmp eq %struct.ssl_session_st* %call1127, null
  br i1 %cmp1128, label %end, label %if.end1132

if.end1132:                                       ; preds = %if.then1126, %if.end1123
  %160 = load i8*, i8** @client_sess_in, align 8, !tbaa !7
  %cmp1133.not = icmp eq i8* %160, null
  br i1 %cmp1133.not, label %if.end1141, label %if.then1135

if.then1135:                                      ; preds = %if.end1132
  %call1136 = call fastcc %struct.ssl_session_st* @read_session(i8* noundef nonnull %160) #19
  store %struct.ssl_session_st* %call1136, %struct.ssl_session_st** @client_sess, align 8, !tbaa !7
  %cmp1137 = icmp eq %struct.ssl_session_st* %call1136, null
  br i1 %cmp1137, label %end, label %if.end1141

if.end1141:                                       ; preds = %if.then1135, %if.end1132
  %161 = load i8*, i8** @server_sess_out, align 8, !tbaa !7
  %cmp1142 = icmp ne i8* %161, null
  %162 = load i8*, i8** @server_sess_in, align 8
  %cmp1145 = icmp ne i8* %162, null
  %or.cond1324 = select i1 %cmp1142, i1 true, i1 %cmp1145
  br i1 %or.cond1324, label %if.then1147, label %if.end1151

if.then1147:                                      ; preds = %if.end1141
  %163 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call1148 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %163, i32 noundef 59, i64 noundef 0, i8* noundef null) #16
  %call1149 = call i8* @CRYPTO_zalloc(i64 noundef %call1148, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i64 0, i64 0), i32 noundef 1712) #16
  %164 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call1150 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %164, i32 noundef 59, i64 noundef %call1148, i8* noundef %call1149) #16
  call void @CRYPTO_free(i8* noundef %call1149, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i64 0, i64 0), i32 noundef 1714) #16
  br label %if.end1151

if.end1151:                                       ; preds = %if.end1141, %if.then1147
  %165 = load i8*, i8** @sn_server1, align 8, !tbaa !7
  %cmp1152 = icmp ne i8* %165, null
  %166 = load i8*, i8** @sn_server2, align 8
  %cmp1155 = icmp ne i8* %166, null
  %or.cond1325 = select i1 %cmp1152, i1 true, i1 %cmp1155
  br i1 %or.cond1325, label %if.then1157, label %if.end1159

if.then1157:                                      ; preds = %if.end1151
  %167 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call1158 = call i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef %167, i32 noundef 53, void ()* noundef bitcast (i32 (%struct.ssl_st*, i32*, i8*)* @servername_cb to void ()*)) #16
  br label %if.end1159

if.end1159:                                       ; preds = %if.end1151, %if.then1157
  %call1160 = call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %call752) #16
  %168 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call1161 = call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %168) #16
  %169 = load i8*, i8** @sn_client, align 8, !tbaa !7
  %tobool1162.not = icmp eq i8* %169, null
  br i1 %tobool1162.not, label %if.end1165, label %if.then1163

if.then1163:                                      ; preds = %if.end1159
  %call1164 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %call1160, i32 noundef 55, i64 noundef 0, i8* noundef nonnull %169) #16
  br label %if.end1165

if.end1165:                                       ; preds = %if.then1163, %if.end1159
  %170 = load i8*, i8** @server_min_proto, align 8, !tbaa !7
  %call1166 = call fastcc i32 @set_protocol_version(i8* noundef %170, %struct.ssl_st* noundef %call1161, i32 noundef 123) #19
  %tobool1167.not = icmp eq i32 %call1166, 0
  br i1 %tobool1167.not, label %end, label %if.end1169

if.end1169:                                       ; preds = %if.end1165
  %171 = load i8*, i8** @server_max_proto, align 8, !tbaa !7
  %call1170 = call fastcc i32 @set_protocol_version(i8* noundef %171, %struct.ssl_st* noundef %call1161, i32 noundef 124) #19
  %tobool1171.not = icmp eq i32 %call1170, 0
  br i1 %tobool1171.not, label %end, label %if.end1173

if.end1173:                                       ; preds = %if.end1169
  %172 = load i8*, i8** @client_min_proto, align 8, !tbaa !7
  %call1174 = call fastcc i32 @set_protocol_version(i8* noundef %172, %struct.ssl_st* noundef %call1160, i32 noundef 123) #19
  %tobool1175.not = icmp eq i32 %call1174, 0
  br i1 %tobool1175.not, label %end, label %if.end1177

if.end1177:                                       ; preds = %if.end1173
  %173 = load i8*, i8** @client_max_proto, align 8, !tbaa !7
  %call1178 = call fastcc i32 @set_protocol_version(i8* noundef %173, %struct.ssl_st* noundef %call1160, i32 noundef 124) #19
  %tobool1179.not = icmp eq i32 %call1178, 0
  br i1 %tobool1179.not, label %end, label %if.end1181

if.end1181:                                       ; preds = %if.end1177
  %174 = load %struct.ssl_session_st*, %struct.ssl_session_st** @server_sess, align 8, !tbaa !7
  %tobool1182.not = icmp eq %struct.ssl_session_st* %174, null
  br i1 %tobool1182.not, label %if.end1190, label %if.then1183

if.then1183:                                      ; preds = %if.end1181
  %175 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %call1184 = call i32 @SSL_CTX_add_session(%struct.ssl_ctx_st* noundef %175, %struct.ssl_session_st* noundef nonnull %174) #16
  %cmp1185 = icmp eq i32 %call1184, 0
  br i1 %cmp1185, label %if.then1187, label %if.end1190

if.then1187:                                      ; preds = %if.then1183
  %176 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1188 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %176, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.101, i64 0, i64 0)) #16
  %177 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %177) #16
  br label %end

if.end1190:                                       ; preds = %if.then1183, %if.end1181
  %178 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call1191 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %178, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.102, i64 0, i64 0), i32 noundef %number.0.ph.lcssa, i64 noundef %bytes.0.ph.lcssa) #16
  %cmp11931882 = icmp sgt i32 %number.0.ph.lcssa, 0
  br i1 %cmp11931882, label %for.body1195, label %if.end1257

for.cond1192:                                     ; preds = %sw.epilog
  %exitcond2198.not = icmp eq i32 %inc1226, %number.0.ph.lcssa
  br i1 %exitcond2198.not, label %for.end1227, label %for.body1195, !llvm.loop !18

for.body1195:                                     ; preds = %if.end1190, %for.cond1192
  %i.11885 = phi i32 [ %inc1226, %for.cond1192 ], [ 0, %if.end1190 ]
  %ret.01883 = phi i32 [ 0, %for.cond1192 ], [ 1, %if.end1190 ]
  br i1 %tobool656, label %if.end1203, label %if.then1197

if.then1197:                                      ; preds = %for.body1195
  %call1198 = call i32 @SSL_set_session(%struct.ssl_st* noundef %call1160, %struct.ssl_session_st* noundef null) #16
  %tobool1199.not = icmp eq i32 %call1198, 0
  br i1 %tobool1199.not, label %if.then1200, label %if.end1203

if.then1200:                                      ; preds = %if.then1197
  %179 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1201 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %179, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.103, i64 0, i64 0)) #16
  br label %end

if.end1203:                                       ; preds = %if.then1197, %for.body1195
  %180 = load i8*, i8** @client_sess_in, align 8, !tbaa !7
  %cmp1204.not = icmp eq i8* %180, null
  br i1 %cmp1204.not, label %if.end1213, label %if.then1206

if.then1206:                                      ; preds = %if.end1203
  %181 = load %struct.ssl_session_st*, %struct.ssl_session_st** @client_sess, align 8, !tbaa !7
  %call1207 = call i32 @SSL_set_session(%struct.ssl_st* noundef %call1160, %struct.ssl_session_st* noundef %181) #16
  %cmp1208 = icmp eq i32 %call1207, 0
  br i1 %cmp1208, label %if.then1210, label %if.end1213

if.then1210:                                      ; preds = %if.then1206
  %182 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1211 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %182, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.104, i64 0, i64 0)) #16
  %183 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %183) #16
  br label %end

if.end1213:                                       ; preds = %if.then1206, %if.end1203
  switch i32 %bio_type.3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1215
    i32 2, label %sw.bb1217
    i32 3, label %sw.bb1219
  ]

sw.bb:                                            ; preds = %if.end1213
  %call1214 = call i32 @doit(%struct.ssl_st* noundef %call1161, %struct.ssl_st* noundef %call1160, i64 noundef %bytes.0.ph.lcssa) #19
  br label %sw.epilog

sw.bb1215:                                        ; preds = %if.end1213
  %call1216 = call i32 @doit_biopair(%struct.ssl_st* noundef %call1161, %struct.ssl_st* noundef %call1160, i64 noundef %bytes.0.ph.lcssa, i64* noundef nonnull %s_time, i64* noundef nonnull %c_time) #19
  br label %sw.epilog

sw.bb1217:                                        ; preds = %if.end1213
  %call1218 = call i32 @doit_localhost(%struct.ssl_st* noundef %call1161, %struct.ssl_st* noundef %call1160, i32 noundef 4, i64 noundef %bytes.0.ph.lcssa, i64* noundef nonnull %s_time, i64* noundef nonnull %c_time) #19
  br label %sw.epilog

sw.bb1219:                                        ; preds = %if.end1213
  %call1220 = call i32 @doit_localhost(%struct.ssl_st* noundef %call1161, %struct.ssl_st* noundef %call1160, i32 noundef 6, i64 noundef %bytes.0.ph.lcssa, i64* noundef nonnull %s_time, i64* noundef nonnull %c_time) #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end1213, %sw.bb1219, %sw.bb1217, %sw.bb1215, %sw.bb
  %ret.1 = phi i32 [ %ret.01883, %if.end1213 ], [ %call1220, %sw.bb1219 ], [ %call1218, %sw.bb1217 ], [ %call1216, %sw.bb1215 ], [ %call1214, %sw.bb ]
  %cmp1221.not = icmp eq i32 %ret.1, 0
  %inc1226 = add nuw nsw i32 %i.11885, 1
  br i1 %cmp1221.not, label %for.cond1192, label %if.end1257

for.end1227:                                      ; preds = %for.cond1192
  %184 = load i8*, i8** @should_negotiate, align 8, !tbaa !7
  %tobool1228 = icmp ne i8* %184, null
  %or.cond1326 = and i1 %cmp11931882, %tobool1228
  br i1 %or.cond1326, label %land.lhs.true1232, label %if.end1257

land.lhs.true1232:                                ; preds = %for.end1227
  %call1233 = call i32 @strcmp(i8* noundef nonnull %184, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0)) #17
  %cmp1234.not = icmp eq i32 %call1233, 0
  br i1 %cmp1234.not, label %if.end1257, label %land.lhs.true1236

land.lhs.true1236:                                ; preds = %land.lhs.true1232
  %call1237 = call i32 @strcmp(i8* noundef nonnull %184, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i64 0, i64 0)) #17
  %cmp1238.not = icmp eq i32 %call1237, 0
  br i1 %cmp1238.not, label %if.end1257, label %if.then1240

if.then1240:                                      ; preds = %land.lhs.true1236
  %call1241 = call fastcc i32 @protocol_from_string(i8* noundef nonnull %184) #19
  %cmp1242 = icmp slt i32 %call1241, 0
  br i1 %cmp1242, label %if.then1244, label %if.end1246

if.then1244:                                      ; preds = %if.then1240
  %185 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1245 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %185, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.107, i64 0, i64 0), i8* noundef nonnull %184) #16
  br label %err

if.end1246:                                       ; preds = %if.then1240
  %call1247 = call i32 @SSL_version(%struct.ssl_st* noundef %call1160) #16
  %cmp1248.not = icmp eq i32 %call1247, %call1241
  br i1 %cmp1248.not, label %if.end1257, label %if.then1250

if.then1250:                                      ; preds = %if.end1246
  %186 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %187 = load i8*, i8** @should_negotiate, align 8, !tbaa !7
  %call1251 = call i8* @SSL_get_version(%struct.ssl_st* noundef %call1160) #16
  %call1252 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %186, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.108, i64 0, i64 0), i8* noundef %187, i8* noundef %call1251) #16
  br label %err

if.end1257:                                       ; preds = %sw.epilog, %if.end1190, %if.end1246, %land.lhs.true1236, %land.lhs.true1232, %for.end1227
  %ret.4 = phi i32 [ 0, %land.lhs.true1236 ], [ 0, %land.lhs.true1232 ], [ 0, %for.end1227 ], [ 0, %if.end1246 ], [ 1, %if.end1190 ], [ %ret.1, %sw.epilog ]
  %cmp1258.not = icmp eq i32 %should_reuse.0.ph.lcssa, -1
  br i1 %cmp1258.not, label %if.end1273, label %if.then1260

if.then1260:                                      ; preds = %if.end1257
  %call1261 = call i32 @SSL_session_reused(%struct.ssl_st* noundef %call1161) #16
  %cmp1262.not = icmp eq i32 %call1261, %should_reuse.0.ph.lcssa
  br i1 %cmp1262.not, label %lor.lhs.false1264, label %if.then1268

lor.lhs.false1264:                                ; preds = %if.then1260
  %call1265 = call i32 @SSL_session_reused(%struct.ssl_st* noundef %call1160) #16
  %cmp1266.not = icmp eq i32 %call1265, %should_reuse.0.ph.lcssa
  br i1 %cmp1266.not, label %if.end1273, label %if.then1268

if.then1268:                                      ; preds = %lor.lhs.false1264, %if.then1260
  %188 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1269 = call i32 @SSL_session_reused(%struct.ssl_st* noundef %call1161) #16
  %call1270 = call i32 @SSL_session_reused(%struct.ssl_st* noundef %call1160) #16
  %call1271 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %188, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.109, i64 0, i64 0), i32 noundef %should_reuse.0.ph.lcssa, i32 noundef %call1269, i32 noundef %call1270) #16
  br label %err

if.end1273:                                       ; preds = %lor.lhs.false1264, %if.end1257
  %189 = load i8*, i8** @server_sess_out, align 8, !tbaa !7
  %cmp1274.not = icmp eq i8* %189, null
  br i1 %cmp1274.not, label %if.end1283, label %if.then1276

if.then1276:                                      ; preds = %if.end1273
  %call1277 = call %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* noundef %call1161) #16
  %call1278 = call fastcc i32 @write_session(i8* noundef nonnull %189, %struct.ssl_session_st* noundef %call1277) #19
  %cmp1279 = icmp eq i32 %call1278, 0
  br i1 %cmp1279, label %err, label %if.end1283

if.end1283:                                       ; preds = %if.then1276, %if.end1273
  %190 = load i8*, i8** @client_sess_out, align 8, !tbaa !7
  %cmp1284.not = icmp eq i8* %190, null
  br i1 %cmp1284.not, label %if.end1293, label %if.then1286

if.then1286:                                      ; preds = %if.end1283
  %call1287 = call %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* noundef %call1160) #16
  %call1288 = call fastcc i32 @write_session(i8* noundef nonnull %190, %struct.ssl_session_st* noundef %call1287) #19
  %cmp1289 = icmp eq i32 %call1288, 0
  br i1 %cmp1289, label %err, label %if.end1293

if.end1293:                                       ; preds = %if.then1286, %if.end1283
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.end1296, label %if.then1295

if.then1295:                                      ; preds = %if.end1293
  call fastcc void @print_details(%struct.ssl_st* noundef %call1160, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.83, i64 0, i64 0)) #19
  br label %if.end1296

if.end1296:                                       ; preds = %if.then1295, %if.end1293
  br i1 %tobool662.not, label %err, label %if.then1298

if.then1298:                                      ; preds = %if.end1296
  %191 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %192 = load i64, i64* %s_time, align 8, !tbaa !9
  %conv1299 = sitofp i64 %192 to double
  %div = fdiv double %conv1299, 1.000000e+06
  %193 = load i64, i64* %c_time, align 8, !tbaa !9
  %conv1300 = sitofp i64 %193 to double
  %div1301 = fdiv double %conv1300, 1.000000e+06
  %call1302 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %191, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.110, i64 0, i64 0), double noundef %div, double noundef %div1301) #16
  br label %err

err:                                              ; preds = %if.then1250, %if.then1244, %if.then1286, %if.then1276, %if.end1296, %if.then1298, %if.then1268
  %ret.5 = phi i32 [ 1, %if.then1268 ], [ %ret.4, %if.then1298 ], [ %ret.4, %if.end1296 ], [ 1, %if.then1276 ], [ 1, %if.then1286 ], [ 1, %if.then1244 ], [ 1, %if.then1250 ]
  call void @SSL_free(%struct.ssl_st* noundef %call1161) #16
  call void @SSL_free(%struct.ssl_st* noundef %call1160) #16
  br label %end

end:                                              ; preds = %if.end534, %if.end528, %if.then523, %cleanup1119.thread, %cleanup996, %cleanup903, %if.end1177, %if.end1173, %if.end1169, %if.end1165, %if.then1135, %if.then1126, %if.end787, %if.end781, %if.end775, %if.end769, %land.lhs.true747, %err, %if.then1210, %if.then1200, %if.then1187, %if.then1095, %if.then1054, %if.then1043, %if.then1035, %if.then1024, %if.then1014, %if.then937, %if.then916, %if.then871, %if.then864, %if.then849, %if.else837, %if.else835, %if.else824, %if.else822, %if.else811, %if.else809, %if.then763, %if.then639, %bad, %if.then21, %if.then16, %if.then12, %if.then
  %ret.6 = phi i32 [ 1, %bad ], [ 0, %if.then639 ], [ 1, %if.then763 ], [ 1, %if.end769 ], [ 1, %if.end775 ], [ 1, %if.end781 ], [ 1, %if.end787 ], [ 1, %if.else811 ], [ 1, %if.else824 ], [ 1, %if.else837 ], [ 1, %cleanup903 ], [ 1, %cleanup996 ], [ 1, %if.then1024 ], [ 1, %if.then1126 ], [ 1, %if.then1135 ], [ 1, %if.then1187 ], [ %ret.01883, %if.then1210 ], [ %ret.5, %err ], [ %ret.01883, %if.then1200 ], [ 1, %if.end1177 ], [ 1, %if.end1173 ], [ 1, %if.end1169 ], [ 1, %if.end1165 ], [ 1, %if.then1095 ], [ 1, %if.then1054 ], [ 1, %if.then1043 ], [ 1, %if.then1035 ], [ 1, %if.then1014 ], [ 1, %if.then937 ], [ 1, %if.then916 ], [ 1, %if.then871 ], [ 1, %if.then864 ], [ 1, %if.else835 ], [ 1, %if.else822 ], [ 1, %if.else809 ], [ 1, %if.then849 ], [ 1, %land.lhs.true747 ], [ 1, %if.then21 ], [ 1, %if.then16 ], [ 1, %if.then12 ], [ 1, %if.then ], [ 1, %cleanup1119.thread ], [ 1, %if.then523 ], [ 1, %if.end528 ], [ 1, %if.end534 ]
  %c_ctx.0 = phi %struct.ssl_ctx_st* [ null, %bad ], [ null, %if.then639 ], [ %call752, %if.then763 ], [ %call752, %if.end769 ], [ %call752, %if.end775 ], [ %call752, %if.end781 ], [ %call752, %if.end787 ], [ %call752, %if.else811 ], [ %call752, %if.else824 ], [ %call752, %if.else837 ], [ %call752, %cleanup903 ], [ %call752, %cleanup996 ], [ %call752, %if.then1024 ], [ %call752, %if.then1126 ], [ %call752, %if.then1135 ], [ %call752, %if.then1187 ], [ %call752, %if.then1210 ], [ %call752, %err ], [ %call752, %if.then1200 ], [ %call752, %if.end1177 ], [ %call752, %if.end1173 ], [ %call752, %if.end1169 ], [ %call752, %if.end1165 ], [ %call752, %if.then1095 ], [ %call752, %if.then1054 ], [ %call752, %if.then1043 ], [ %call752, %if.then1035 ], [ %call752, %if.then1014 ], [ %call752, %if.then937 ], [ %call752, %if.then916 ], [ %call752, %if.then871 ], [ %call752, %if.then864 ], [ %call752, %if.else835 ], [ %call752, %if.else822 ], [ %call752, %if.else809 ], [ %call752, %if.then849 ], [ null, %land.lhs.true747 ], [ null, %if.then21 ], [ null, %if.then16 ], [ null, %if.then12 ], [ null, %if.then ], [ %call752, %cleanup1119.thread ], [ null, %if.then523 ], [ null, %if.end528 ], [ null, %if.end534 ]
  %conf_args.5 = phi %struct.stack_st_OPENSSL_STRING* [ %conf_args.02830, %bad ], [ %conf_args.0.lcssa, %if.then639 ], [ %conf_args.0.lcssa, %if.then763 ], [ %conf_args.0.lcssa, %if.end769 ], [ %conf_args.0.lcssa, %if.end775 ], [ %conf_args.0.lcssa, %if.end781 ], [ %conf_args.0.lcssa, %if.end787 ], [ %conf_args.0.lcssa, %if.else811 ], [ %conf_args.0.lcssa, %if.else824 ], [ %conf_args.0.lcssa, %if.else837 ], [ %conf_args.0.lcssa, %cleanup903 ], [ %conf_args.0.lcssa, %cleanup996 ], [ %conf_args.0.lcssa, %if.then1024 ], [ %conf_args.0.lcssa, %if.then1126 ], [ %conf_args.0.lcssa, %if.then1135 ], [ %conf_args.0.lcssa, %if.then1187 ], [ %conf_args.0.lcssa, %if.then1210 ], [ %conf_args.0.lcssa, %err ], [ %conf_args.0.lcssa, %if.then1200 ], [ %conf_args.0.lcssa, %if.end1177 ], [ %conf_args.0.lcssa, %if.end1173 ], [ %conf_args.0.lcssa, %if.end1169 ], [ %conf_args.0.lcssa, %if.end1165 ], [ %conf_args.0.lcssa, %if.then1095 ], [ %conf_args.0.lcssa, %if.then1054 ], [ %conf_args.0.lcssa, %if.then1043 ], [ %conf_args.0.lcssa, %if.then1035 ], [ %conf_args.0.lcssa, %if.then1014 ], [ %conf_args.0.lcssa, %if.then937 ], [ %conf_args.0.lcssa, %if.then916 ], [ %conf_args.0.lcssa, %if.then871 ], [ %conf_args.0.lcssa, %if.then864 ], [ %conf_args.0.lcssa, %if.else835 ], [ %conf_args.0.lcssa, %if.else822 ], [ %conf_args.0.lcssa, %if.else809 ], [ %conf_args.0.lcssa, %if.then849 ], [ %conf_args.0.lcssa, %land.lhs.true747 ], [ null, %if.then21 ], [ null, %if.then16 ], [ null, %if.then12 ], [ null, %if.then ], [ %conf_args.0.lcssa, %cleanup1119.thread ], [ %conf_args.1, %if.end534 ], [ %conf_args.1, %if.end528 ], [ null, %if.then523 ]
  %194 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %194) #16
  %195 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %195) #16
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %c_ctx.0) #16
  call void @SSL_CONF_CTX_free(%struct.ssl_conf_ctx_st* noundef %call2) #16
  call void @SSL_CONF_CTX_free(%struct.ssl_conf_ctx_st* noundef %call3) #16
  call void @SSL_CONF_CTX_free(%struct.ssl_conf_ctx_st* noundef %call4) #16
  %call1304 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %conf_args.5) #19
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call1304) #16
  %196 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call1305 = call i32 @BIO_free(%struct.bio_st* noundef %196) #16
  %197 = load %struct.ssl_session_st*, %struct.ssl_session_st** @server_sess, align 8, !tbaa !7
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %197) #16
  %198 = load %struct.ssl_session_st*, %struct.ssl_session_st** @client_sess, align 8, !tbaa !7
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %198) #16
  %199 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %defctxnull, align 8, !tbaa !7
  %call1306 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %199) #16
  %200 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %thisprov, align 8, !tbaa !7
  %call1307 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %200) #16
  %201 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !7
  call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %201) #16
  %202 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1308 = call i32 @BIO_free(%struct.bio_st* noundef %202) #16
  call void @exit(i32 noundef %ret.6) #18
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_conf_ctx_st* @SSL_CONF_CTX_new() local_unnamed_addr #3

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_CONF_CTX_set_flags(%struct.ssl_conf_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_CONF_CTX_set1_prefix(%struct.ssl_conf_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strspn(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i32 @atoi(i8* noundef nonnull) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i64 @atol(i8* noundef nonnull) local_unnamed_addr #6

declare dso_local i32 @SSL_CONF_cmd_argv(%struct.ssl_conf_ctx_st* noundef, i32* noundef, i8*** noundef) local_unnamed_addr #3

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #3

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #7 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sv_usage() unnamed_addr #8 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.139, i64 0, i64 0)) #16
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0)) #16
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.140, i64 0, i64 0)) #16
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.141, i64 0, i64 0)) #16
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.142, i64 0, i64 0)) #16
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.143, i64 0, i64 0)) #16
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.144, i64 0, i64 0)) #16
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.145, i64 0, i64 0)) #16
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.146, i64 0, i64 0)) #16
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.147, i64 0, i64 0)) #16
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.148, i64 0, i64 0)) #16
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.149, i64 0, i64 0)) #16
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.150, i64 0, i64 0)) #16
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.151, i64 0, i64 0)) #16
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.152, i64 0, i64 0)) #16
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.153, i64 0, i64 0)) #16
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.154, i64 0, i64 0)) #16
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.155, i64 0, i64 0)) #16
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.156, i64 0, i64 0)) #16
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.157, i64 0, i64 0)) #16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.158, i64 0, i64 0)) #16
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.159, i64 0, i64 0)) #16
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.160, i64 0, i64 0)) #16
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.161, i64 0, i64 0)) #16
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.162, i64 0, i64 0)) #16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.163, i64 0, i64 0)) #16
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.164, i64 0, i64 0)) #16
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.165, i64 0, i64 0)) #16
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.166, i64 0, i64 0)) #16
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.167, i64 0, i64 0)) #16
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.168, i64 0, i64 0)) #16
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.169, i64 0, i64 0)) #16
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.170, i64 0, i64 0)) #16
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.171, i64 0, i64 0)) #16
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.172, i64 0, i64 0)) #16
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.173, i64 0, i64 0)) #16
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.174, i64 0, i64 0)) #16
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call37 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.175, i64 0, i64 0)) #16
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.176, i64 0, i64 0)) #16
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.177, i64 0, i64 0)) #16
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call40 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.178, i64 0, i64 0)) #16
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.179, i64 0, i64 0)) #16
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.180, i64 0, i64 0)) #16
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.181, i64 0, i64 0)) #16
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call44 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.182, i64 0, i64 0)) #16
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.183, i64 0, i64 0)) #16
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call46 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.184, i64 0, i64 0)) #16
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call47 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.185, i64 0, i64 0)) #16
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.186, i64 0, i64 0)) #16
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.187, i64 0, i64 0)) #16
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.188, i64 0, i64 0)) #16
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call51 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.189, i64 0, i64 0)) #16
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call52 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.190, i64 0, i64 0)) #16
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call53 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.191, i64 0, i64 0)) #16
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.192, i64 0, i64 0)) #16
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call55 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.193, i64 0, i64 0)) #16
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call56 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %56, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.194, i64 0, i64 0)) #16
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.195, i64 0, i64 0)) #16
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call58 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %58, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.196, i64 0, i64 0)) #16
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call59 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.197, i64 0, i64 0)) #16
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call60 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.198, i64 0, i64 0)) #16
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.199, i64 0, i64 0)) #16
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call62 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %62, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.200, i64 0, i64 0)) #16
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call63 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.201, i64 0, i64 0)) #16
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call64 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %64, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.202, i64 0, i64 0)) #16
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call65 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.203, i64 0, i64 0)) #16
  ret void
}

declare dso_local %struct.comp_method_st* @COMP_zlib() local_unnamed_addr #3

declare dso_local i32 @COMP_get_type(%struct.comp_method_st* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_COMP_add_compression_method(i32 noundef, %struct.comp_method_st* noundef) local_unnamed_addr #3

declare dso_local void @ERR_print_errors_fp(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare dso_local %struct.stack_st_SSL_COMP* @SSL_COMP_get_compression_methods() local_unnamed_addr #3

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef readnone %sk) unnamed_addr #7 {
entry:
  %0 = bitcast %struct.stack_st_SSL_COMP* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #3

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i8* @SSL_COMP_get0_name(%struct.ssl_comp_st* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_COMP_get_id(%struct.ssl_comp_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_method_st* @TLS_method() local_unnamed_addr #3

declare dso_local %struct.ssl_method_st* @DTLS_method() local_unnamed_addr #3

declare dso_local i32 @test_get_libctx(%struct.ossl_lib_ctx_st** noundef, %struct.ossl_provider_st** noundef, i8* noundef, %struct.ossl_provider_st** noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ssl_method_st* noundef) local_unnamed_addr #3

declare dso_local void @SSL_CTX_set_security_level(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #7 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare dso_local i64 @ERR_peek_error() local_unnamed_addr #3

declare dso_local void @ERR_clear_error() local_unnamed_addr #3

declare dso_local i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_CTX_enable_ct(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @SSL_CONF_CTX_set_ssl_ctx(%struct.ssl_conf_ctx_st* noundef, %struct.ssl_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #7 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @SSL_CONF_cmd(%struct.ssl_conf_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_CONF_CTX_finish(%struct.ssl_conf_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @get_dh1024dsa(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @get_dh512(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @get_dh2048(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_CTX_set0_tmp_dh_pkey(%struct.ssl_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_CTX_load_verify_file(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_CTX_load_verify_dir(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_CTX_set_default_verify_paths(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_CTX_set_default_ctlog_list_file(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @SSL_CTX_set_verify(%struct.ssl_ctx_st* noundef, i32 noundef, i32 (i32, %struct.x509_store_ctx_st*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @verify_callback(i32 noundef %ok, %struct.x509_store_ctx_st* noundef %ctx) #8 {
entry:
  %buf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #15
  %call = tail call %struct.x509_st* @X509_STORE_CTX_get_current_cert(%struct.x509_store_ctx_st* noundef %ctx) #16
  %call1 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %call) #16
  %call2 = call i8* @X509_NAME_oneline(%struct.X509_name_st* noundef %call1, i8* noundef nonnull %0, i32 noundef 256) #16
  %cmp.not = icmp eq i8* %call2, null
  %cmp12 = icmp eq i32 %ok, 0
  br i1 %cmp.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp12, label %if.end11.thread, label %if.end11.thread28

if.end11.thread28:                                ; preds = %if.then
  %call4 = call i32 @X509_STORE_CTX_get_error_depth(%struct.x509_store_ctx_st* noundef %ctx) #16
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.243, i64 0, i64 0), i32 noundef %call4, i8* noundef nonnull %0) #16
  br label %if.end17

if.end11.thread:                                  ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call7 = call i32 @X509_STORE_CTX_get_error_depth(%struct.x509_store_ctx_st* noundef %ctx) #16
  %call8 = call i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef %ctx) #16
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.244, i64 0, i64 0), i32 noundef %call7, i32 noundef %call8, i8* noundef nonnull %0) #16
  br label %if.then13

if.end11:                                         ; preds = %entry
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end11.thread, %if.end11
  %call14 = call i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef %ctx) #16
  switch i32 %call14, label %sw.default [
    i32 9, label %if.end17
    i32 10, label %if.end17
    i32 18, label %if.end17
  ]

sw.default:                                       ; preds = %if.then13
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %conv = sext i32 %call14 to i64
  %call15 = call i8* @X509_verify_cert_error_string(i64 noundef %conv) #16
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.245, i64 0, i64 0), i8* noundef %call15) #16
  br label %if.end17

if.end17:                                         ; preds = %if.end11.thread28, %sw.default, %if.then13, %if.then13, %if.then13, %if.end11
  %ok.addr.1 = phi i32 [ %ok, %if.end11 ], [ 0, %sw.default ], [ 1, %if.then13 ], [ 1, %if.then13 ], [ 1, %if.then13 ], [ %ok, %if.end11.thread28 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #15
  ret i32 %ok.addr.1
}

declare dso_local void @SSL_CTX_set_cert_verify_callback(%struct.ssl_ctx_st* noundef, i32 (%struct.x509_store_ctx_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @app_verify_callback(%struct.x509_store_ctx_st* noundef %ctx, i8* nocapture noundef readonly %arg) #8 {
entry:
  %buf = alloca [256 x i8], align 16
  %app_verify = getelementptr inbounds i8, i8* %arg, i64 8
  %0 = bitcast i8* %app_verify to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !12
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #15
  %call = tail call %struct.x509_st* @X509_STORE_CTX_get0_cert(%struct.x509_store_ctx_st* noundef %ctx) #16
  %call1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.246, i64 0, i64 0)) #16
  %string = bitcast i8* %arg to i8**
  %3 = load i8*, i8** %string, align 8, !tbaa !19
  %call2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.247, i64 0, i64 0), i8* noundef %3) #16
  %call3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.248, i64 0, i64 0), %struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st* noundef %call) #16
  %tobool4.not = icmp eq %struct.x509_st* %call, null
  br i1 %tobool4.not, label %if.end12, label %if.then5

if.then5:                                         ; preds = %if.then
  %call6 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %call) #16
  %call7 = call i8* @X509_NAME_oneline(%struct.X509_name_st* noundef %call6, i8* noundef nonnull %2, i32 noundef 256) #16
  %phi.cmp = icmp eq i8* %call7, null
  br i1 %phi.cmp, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.then5
  %call9 = call i32 @X509_STORE_CTX_get_error_depth(%struct.x509_store_ctx_st* noundef %ctx) #16
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.249, i64 0, i64 0), i32 noundef %call9, i8* noundef nonnull %2) #16
  br label %if.end12

if.end12:                                         ; preds = %if.then, %if.then8, %if.then5
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #15
  br label %cleanup

if.end13:                                         ; preds = %entry
  %call14 = tail call i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef %ctx) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end12
  %retval.0 = phi i32 [ 1, %if.end12 ], [ %call14, %if.end13 ]
  ret i32 %retval.0
}

declare dso_local i32 @SSL_CTX_set_session_id_context(%struct.ssl_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @SSL_CTX_set_psk_client_callback(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @psk_client_callback(%struct.ssl_st* nocapture noundef readnone %ssl, i8* nocapture noundef readnone %hint, i8* noundef %identity, i32 noundef %max_identity_len, i8* noundef %psk, i32 noundef %max_psk_len) #8 {
entry:
  %conv = zext i32 %max_identity_len to i64
  %call = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %identity, i64 noundef %conv, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.250, i64 0, i64 0)) #16
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %out_err, label %if.end

if.end:                                           ; preds = %entry
  %.b = load i1, i1* @debug, align 4
  br i1 %.b, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.251, i64 0, i64 0), i8* noundef %identity, i32 noundef %call) #16
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %1 = load i8*, i8** @psk_key, align 8, !tbaa !7
  %call5 = tail call fastcc i32 @psk_key2bn(i8* noundef %1, i8* noundef %psk, i32 noundef %max_psk_len) #19
  %2 = icmp sgt i32 %call5, 0
  %spec.select = select i1 %2, i32 %call5, i32 0
  br label %out_err

out_err:                                          ; preds = %if.end4, %entry
  %psk_len.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end4 ]
  ret i32 %psk_len.0
}

declare dso_local void @SSL_CTX_set_psk_server_callback(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i8*, i32)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @psk_server_callback(%struct.ssl_st* nocapture noundef readnone %ssl, i8* noundef readonly %identity, i8* noundef %psk, i32 noundef %max_psk_len) #8 {
entry:
  %call = tail call i32 @strcmp(i8* noundef %identity, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.250, i64 0, i64 0)) #17
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.254, i64 0, i64 0)) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @psk_key, align 8, !tbaa !7
  %call2 = tail call fastcc i32 @psk_key2bn(i8* noundef %1, i8* noundef %psk, i32 noundef %max_psk_len) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @SSL_CTX_use_psk_identity_hint(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @SSL_CTX_set_next_proto_select_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @cb_client_npn(%struct.ssl_st* nocapture noundef readnone %s, i8** nocapture noundef writeonly %out, i8* nocapture noundef writeonly %outlen, i8* nocapture noundef readnone %in, i32 noundef %inlen, i8* nocapture noundef readnone %arg) #9 {
entry:
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @NEXT_PROTO_STRING, i64 0, i64 1), i8** %out, align 8, !tbaa !7
  store i8 9, i8* %outlen, align 1, !tbaa !11
  ret i32 0
}

declare dso_local void @SSL_CTX_set_next_protos_advertised_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8**, i32*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @cb_server_npn(%struct.ssl_st* nocapture noundef readnone %s, i8** nocapture noundef writeonly %data, i32* nocapture noundef writeonly %len, i8* nocapture noundef readnone %arg) #9 {
entry:
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @NEXT_PROTO_STRING, i64 0, i64 0), i8** %data, align 8, !tbaa !7
  store i32 10, i32* %len, align 4, !tbaa !3
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @cb_server_rejects_npn(%struct.ssl_st* nocapture noundef readnone %s, i8** nocapture noundef readnone %data, i32* nocapture noundef readnone %len, i8* nocapture noundef readnone %arg) #7 {
entry:
  ret i32 3
}

declare dso_local i32 @SSL_CTX_add_client_custom_ext(%struct.ssl_ctx_st* noundef, i32 noundef, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef, void (%struct.ssl_st*, i32, i8*, i8*)* noundef, i8* noundef, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @serverinfo_cli_parse_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8* nocapture noundef readnone %in, i64 noundef %inlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #10 {
entry:
  %switch.selectcmp = icmp eq i32 %ext_type, 62208
  %switch.select = select i1 %switch.selectcmp, i32* @serverinfo_tack_seen, i32* @serverinfo_other_seen
  %switch.selectcmp9 = icmp eq i32 %ext_type, 18
  %switch.select10 = select i1 %switch.selectcmp9, i32* @serverinfo_sct_seen, i32* %switch.select
  %0 = load i32, i32* %switch.select10, align 4, !tbaa !3
  %inc3 = add nsw i32 %0, 1
  store i32 %inc3, i32* %switch.select10, align 4, !tbaa !3
  ret i32 1
}

declare dso_local i32 @SSL_CTX_use_serverinfo_file(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @custom_ext_0_cli_add_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8** nocapture noundef readnone %out, i64* nocapture noundef readnone %outlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #9 {
entry:
  %cmp.not = icmp eq i32 %ext_type, 1000
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, i1* @custom_ext_error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @custom_ext_0_cli_parse_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8* nocapture noundef readnone %in, i64 noundef %inlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #7 {
entry:
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @custom_ext_1_cli_add_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8** nocapture noundef writeonly %out, i64* nocapture noundef writeonly %outlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #11 {
entry:
  %cmp.not = icmp eq i32 %ext_type, 1001
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, i1* @custom_ext_error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @custom_ext_cli_string, i64 0, i64 0), i8** %out, align 8, !tbaa !7
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @custom_ext_cli_string, i64 0, i64 0)) #17
  store i64 %call, i64* %outlen, align 8, !tbaa !9
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @custom_ext_1_cli_parse_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8* nocapture noundef readnone %in, i64 noundef %inlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #7 {
entry:
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @custom_ext_2_cli_add_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8** nocapture noundef writeonly %out, i64* nocapture noundef writeonly %outlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #11 {
entry:
  %cmp.not = icmp eq i32 %ext_type, 1002
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, i1* @custom_ext_error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @custom_ext_cli_string, i64 0, i64 0), i8** %out, align 8, !tbaa !7
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @custom_ext_cli_string, i64 0, i64 0)) #17
  store i64 %call, i64* %outlen, align 8, !tbaa !9
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @custom_ext_2_cli_parse_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8* nocapture noundef readnone %in, i64 noundef %inlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #9 {
entry:
  %cmp.not = icmp ne i32 %ext_type, 1002
  %cmp1.not = icmp ne i64 %inlen, 0
  %0 = or i1 %cmp.not, %cmp1.not
  br i1 %0, label %1, label %2

1:                                                ; preds = %entry
  store i1 true, i1* @custom_ext_error, align 4
  br label %2

2:                                                ; preds = %entry, %1
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @custom_ext_3_cli_add_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8** nocapture noundef writeonly %out, i64* nocapture noundef writeonly %outlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #11 {
entry:
  %cmp.not = icmp eq i32 %ext_type, 1003
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, i1* @custom_ext_error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @custom_ext_cli_string, i64 0, i64 0), i8** %out, align 8, !tbaa !7
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @custom_ext_cli_string, i64 0, i64 0)) #17
  store i64 %call, i64* %outlen, align 8, !tbaa !9
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @custom_ext_3_cli_parse_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8* noundef readonly %in, i64 noundef %inlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #11 {
entry:
  %cmp.not = icmp eq i32 %ext_type, 1003
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, i1* @custom_ext_error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @custom_ext_srv_string, i64 0, i64 0)) #17
  %cmp1.not = icmp eq i64 %call, %inlen
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i1 true, i1* @custom_ext_error, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = tail call i32 @memcmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @custom_ext_srv_string, i64 0, i64 0), i8* noundef %in, i64 noundef %inlen) #17
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  store i1 true, i1* @custom_ext_error, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3
  ret i32 1
}

declare dso_local i32 @SSL_CTX_add_server_custom_ext(%struct.ssl_ctx_st* noundef, i32 noundef, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef, void (%struct.ssl_st*, i32, i8*, i8*)* noundef, i8* noundef, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @custom_ext_0_srv_add_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8** nocapture noundef readnone %out, i64* nocapture noundef readnone %outlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #9 {
entry:
  store i1 true, i1* @custom_ext_error, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @custom_ext_0_srv_parse_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8* nocapture noundef readnone %in, i64 noundef %inlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #9 {
entry:
  store i1 true, i1* @custom_ext_error, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @custom_ext_1_srv_add_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8** nocapture noundef readnone %out, i64* nocapture noundef readnone %outlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #7 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @custom_ext_1_srv_parse_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8* noundef readonly %in, i64 noundef %inlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #11 {
entry:
  %cmp.not = icmp eq i32 %ext_type, 1001
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, i1* @custom_ext_error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @custom_ext_cli_string, i64 0, i64 0)) #17
  %cmp1.not = icmp eq i64 %call, %inlen
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i1 true, i1* @custom_ext_error, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = tail call i32 @memcmp(i8* noundef %in, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @custom_ext_cli_string, i64 0, i64 0), i64 noundef %inlen) #17
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  store i1 true, i1* @custom_ext_error, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @custom_ext_2_srv_add_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8** nocapture noundef writeonly %out, i64* nocapture noundef writeonly %outlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #9 {
entry:
  store i8* null, i8** %out, align 8, !tbaa !7
  store i64 0, i64* %outlen, align 8, !tbaa !9
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @custom_ext_2_srv_parse_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8* noundef readonly %in, i64 noundef %inlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #11 {
entry:
  %cmp.not = icmp eq i32 %ext_type, 1002
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, i1* @custom_ext_error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @custom_ext_cli_string, i64 0, i64 0)) #17
  %cmp1.not = icmp eq i64 %call, %inlen
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i1 true, i1* @custom_ext_error, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = tail call i32 @memcmp(i8* noundef %in, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @custom_ext_cli_string, i64 0, i64 0), i64 noundef %inlen) #17
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  store i1 true, i1* @custom_ext_error, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @custom_ext_3_srv_add_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8** nocapture noundef writeonly %out, i64* nocapture noundef writeonly %outlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #11 {
entry:
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @custom_ext_srv_string, i64 0, i64 0), i8** %out, align 8, !tbaa !7
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @custom_ext_srv_string, i64 0, i64 0)) #17
  store i64 %call, i64* %outlen, align 8, !tbaa !9
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @custom_ext_3_srv_parse_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8* noundef readonly %in, i64 noundef %inlen, i32* nocapture noundef readnone %al, i8* nocapture noundef readnone %arg) #11 {
entry:
  %cmp.not = icmp eq i32 %ext_type, 1003
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, i1* @custom_ext_error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @custom_ext_cli_string, i64 0, i64 0)) #17
  %cmp1.not = icmp eq i64 %call, %inlen
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i1 true, i1* @custom_ext_error, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = tail call i32 @memcmp(i8* noundef %in, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @custom_ext_cli_string, i64 0, i64 0), i64 noundef %inlen) #17
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  store i1 true, i1* @custom_ext_error, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3
  ret i32 1
}

declare dso_local void @SSL_CTX_set_alpn_select_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @cb_server_alpn(%struct.ssl_st* nocapture noundef readnone %s, i8** noundef %out, i8* noundef %outlen, i8* noundef %in, i32 noundef %inlen, i8* noundef %arg) #8 {
entry:
  %protos_len = alloca i64, align 8
  %0 = bitcast i64* %protos_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  %call = call fastcc i8* @next_protos_parse(i64* noundef nonnull %protos_len, i8* noundef %arg) #19
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.204, i64 0, i64 0), i8* noundef %arg) #16
  tail call void @abort() #18
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %protos_len, align 8, !tbaa !9
  %conv = trunc i64 %2 to i32
  %call2 = tail call i32 @SSL_select_next_proto(i8** noundef %out, i8* noundef %outlen, i8* noundef nonnull %call, i32 noundef %conv, i8* noundef %in, i32 noundef %inlen) #16
  %cmp3.not = icmp eq i32 %call2, 1
  br i1 %cmp3.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = load i8, i8* %outlen, align 1, !tbaa !11
  %conv7 = zext i8 %3 to i64
  %call8 = tail call i8* @CRYPTO_malloc(i64 noundef %conv7, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i64 0, i64 0), i32 noundef 312) #16
  store i8* %call8, i8** @alpn_selected, align 8, !tbaa !7
  %4 = load i8*, i8** %out, align 8, !tbaa !7
  %5 = load i8, i8* %outlen, align 1, !tbaa !11
  %conv9 = zext i8 %5 to i64
  %call10 = tail call i8* @memcpy(i8* noundef %call8, i8* noundef %4, i64 noundef %conv9) #16
  %6 = load i8*, i8** @alpn_selected, align 8, !tbaa !7
  store i8* %6, i8** %out, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6
  %.sink = phi i32 [ 316, %if.end6 ], [ 304, %if.end ]
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 3, %if.end ]
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i64 0, i64 0), i32 noundef %.sink) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @next_protos_parse(i64* nocapture noundef writeonly %outlen, i8* noundef %in) unnamed_addr #8 {
entry:
  %call = tail call i64 @strlen(i8* noundef %in) #17
  %cmp = icmp ugt i64 %call, 65534
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add nuw nsw i64 %call, 1
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i64 0, i64 0), i32 noundef 266) #16
  %tobool.not = icmp eq i8* %call2, null
  br i1 %tobool.not, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %start.053 = phi i64 [ %start.1, %for.inc ], [ 0, %if.end ]
  %i.050 = phi i64 [ %inc.pre-phi, %for.inc ], [ 0, %if.end ]
  %cmp6 = icmp eq i64 %i.050, %call
  br i1 %cmp6, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 %i.050
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %cmp7 = icmp eq i8 %0, 44
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %lor.lhs.false, %for.body
  %sub = sub i64 %i.050, %start.053
  %cmp10 = icmp ugt i64 %sub, 255
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then9
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i64 0, i64 0), i32 noundef 273) #16
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  %conv15 = trunc i64 %sub to i8
  %arrayidx16 = getelementptr inbounds i8, i8* %call2, i64 %start.053
  store i8 %conv15, i8* %arrayidx16, align 1, !tbaa !11
  %add17 = add i64 %i.050, 1
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false
  %add19 = add i64 %i.050, 1
  %arrayidx20 = getelementptr inbounds i8, i8* %call2, i64 %add19
  store i8 %0, i8* %arrayidx20, align 1, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %if.else
  %inc.pre-phi = phi i64 [ %add17, %if.end13 ], [ %add19, %if.else ]
  %start.1 = phi i64 [ %add17, %if.end13 ], [ %start.053, %if.else ]
  %cmp5.not = icmp ugt i64 %inc.pre-phi, %call
  br i1 %cmp5.not, label %for.end, label %for.body, !llvm.loop !20

for.end:                                          ; preds = %for.inc
  store i64 %add, i64* %outlen, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %for.end, %if.then12
  %retval.0 = phi i8* [ null, %if.then12 ], [ %call2, %for.end ], [ null, %entry ], [ null, %if.end ]
  ret i8* %retval.0
}

declare dso_local i32 @SSL_CTX_set_alpn_protos(%struct.ssl_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ssl_session_st* @read_session(i8* noundef %filename) unnamed_addr #8 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %filename, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.205, i64 0, i64 0)) #16
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.206, i64 0, i64 0), i8* noundef %filename) #16
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %1) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.ssl_session_st* @PEM_read_bio_SSL_SESSION(%struct.bio_st* noundef nonnull %call, %struct.ssl_session_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #16
  %cmp3 = icmp eq %struct.ssl_session_st* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.207, i64 0, i64 0), i8* noundef %filename) #16
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %3) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %call7 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  %retval.0 = phi %struct.ssl_session_st* [ null, %if.then ], [ %call2, %if.end6 ]
  ret %struct.ssl_session_st* %retval.0
}

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, void ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @servername_cb(%struct.ssl_st* noundef %s, i32* nocapture noundef readnone %ad, i8* nocapture noundef readnone %arg) #8 {
entry:
  %call = tail call i8* @SSL_get_servername(%struct.ssl_st* noundef %s, i32 noundef 0) #16
  %0 = load i8*, i8** @sn_server2, align 8, !tbaa !7
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.208, i64 0, i64 0)) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i8* %call, null
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8
  %cmp3.not = icmp eq %struct.ssl_ctx_st* %2, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp3.not
  br i1 %or.cond, label %cleanup, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end
  %call6 = tail call i32 @strcasecmp(i8* noundef nonnull %call, i8* noundef nonnull %0) #17
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %cleanup

if.then8:                                         ; preds = %land.lhs.true5
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.209, i64 0, i64 0)) #16
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %call10 = tail call %struct.ssl_ctx_st* @SSL_set_SSL_CTX(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %4) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then8, %land.lhs.true5, %if.then
  %retval.0 = phi i32 [ 3, %if.then ], [ 0, %land.lhs.true5 ], [ 0, %if.then8 ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i64 @SSL_ctrl(%struct.ssl_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set_protocol_version(i8* noundef %version, %struct.ssl_st* noundef %ssl, i32 noundef %setting) unnamed_addr #8 {
entry:
  %cmp.not = icmp eq i8* %version, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @protocol_from_string(i8* noundef nonnull %version) #19
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.107, i64 0, i64 0), i8* noundef nonnull %version) #16
  br label %return

if.end:                                           ; preds = %if.then
  %conv11 = zext i32 %call to i64
  %call4 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %ssl, i32 noundef %setting, i64 noundef %conv11, i8* noundef null) #16
  %conv5 = trunc i64 %call4 to i32
  br label %return

return:                                           ; preds = %entry, %if.then2, %if.end
  %retval.1 = phi i32 [ 0, %if.then2 ], [ %conv5, %if.end ], [ 1, %entry ]
  ret i32 %retval.1
}

declare dso_local i32 @SSL_CTX_add_session(%struct.ssl_ctx_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_set_session(%struct.ssl_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @doit(%struct.ssl_st* noundef %s_ssl, %struct.ssl_st* noundef %c_ssl, i64 noundef %count) local_unnamed_addr #8 {
entry:
  %0 = icmp slt i64 %count, 40960
  %cond = select i1 %0, i64 %count, i64 40960
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef %cond, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i64 0, i64 0), i32 noundef 2555) #16
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @CRYPTO_zalloc(i64 noundef %cond, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i64 0, i64 0), i32 noundef 2557) #16
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.bio_method_st* @BIO_s_mem() #16
  %call7 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call6) #16
  %call8 = tail call %struct.bio_method_st* @BIO_s_mem() #16
  %call9 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call8) #16
  %cmp10 = icmp eq %struct.bio_st* %call9, null
  %cmp11 = icmp eq %struct.bio_st* %call7, null
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end5
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %1) #16
  br label %err

if.end13:                                         ; preds = %if.end5
  %call14 = tail call %struct.bio_method_st* @BIO_f_ssl() #16
  %call15 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call14) #16
  %call16 = tail call %struct.bio_method_st* @BIO_f_ssl() #16
  %call17 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call16) #16
  %cmp18 = icmp eq %struct.bio_st* %call15, null
  %cmp20 = icmp eq %struct.bio_st* %call17, null
  %or.cond327 = select i1 %cmp18, i1 true, i1 %cmp20
  br i1 %or.cond327, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end13
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #16
  br label %err

if.end22:                                         ; preds = %if.end13
  tail call void @SSL_set_connect_state(%struct.ssl_st* noundef %c_ssl) #16
  tail call void @SSL_set_bio(%struct.ssl_st* noundef %c_ssl, %struct.bio_st* noundef nonnull %call9, %struct.bio_st* noundef nonnull %call7) #16
  %call23 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %c_ssl, i32 noundef 52, i64 noundef 5120, i8* noundef null) #16
  %3 = bitcast %struct.ssl_st* %c_ssl to i8*
  %call24 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call15, i32 noundef 109, i64 noundef 0, i8* noundef %3) #16
  %call25 = tail call i32 @BIO_up_ref(%struct.bio_st* noundef nonnull %call7) #16
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end22
  %call28 = tail call i32 @BIO_up_ref(%struct.bio_st* noundef nonnull %call9) #16
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %if.end31

if.end31:                                         ; preds = %if.end27
  tail call void @SSL_set_accept_state(%struct.ssl_st* noundef %s_ssl) #16
  tail call void @SSL_set_bio(%struct.ssl_st* noundef %s_ssl, %struct.bio_st* noundef nonnull %call7, %struct.bio_st* noundef nonnull %call9) #16
  %call33 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %s_ssl, i32 noundef 52, i64 noundef 5120, i8* noundef null) #16
  %4 = bitcast %struct.ssl_st* %s_ssl to i8*
  %call34 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call17, i32 noundef 109, i64 noundef 0, i8* noundef %4) #16
  %conv132 = trunc i64 %cond to i32
  br label %for.cond

for.cond:                                         ; preds = %if.end276, %if.end31
  %cw_num.0 = phi i64 [ %count, %if.end31 ], [ %cw_num.1, %if.end276 ]
  %cr_num.0 = phi i64 [ %count, %if.end31 ], [ %cr_num.1, %if.end276 ]
  %sw_num.0 = phi i64 [ %count, %if.end31 ], [ %sw_num.1, %if.end276 ]
  %sr_num.0 = phi i64 [ %count, %if.end31 ], [ %sr_num.1, %if.end276 ]
  %c_r.0 = phi i32 [ 0, %if.end31 ], [ %c_r.4, %if.end276 ]
  %c_w.0 = phi i32 [ 1, %if.end31 ], [ %c_w.3, %if.end276 ]
  %s_r.0 = phi i32 [ 1, %if.end31 ], [ %s_r.4, %if.end276 ]
  %s_w.0 = phi i32 [ 0, %if.end31 ], [ %s_w.3, %if.end276 ]
  %done.0 = phi i32 [ 0, %if.end31 ], [ %done.3, %if.end276 ]
  %c_write.0 = phi i32 [ 1, %if.end31 ], [ %c_write.3, %if.end276 ]
  %s_write.0 = phi i32 [ 0, %if.end31 ], [ %s_write.3, %if.end276 ]
  %max_frag.0 = phi i32 [ 5120, %if.end31 ], [ %max_frag.2, %if.end276 ]
  %call35 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call17, i32 noundef 10, i64 noundef 0, i8* noundef null) #16
  %conv36 = trunc i64 %call35 to i32
  %tobool37 = icmp ne i32 %conv36, 0
  %tobool38 = icmp ne i32 %s_r.0, 0
  %or.cond328 = select i1 %tobool37, i1 %tobool38, i1 false
  %tobool40 = icmp ne i32 %s_w.0, 0
  %or.cond329 = select i1 %or.cond328, i1 true, i1 %tobool40
  %call43 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call15, i32 noundef 10, i64 noundef 0, i8* noundef null) #16
  %conv44 = trunc i64 %call43 to i32
  %tobool45 = icmp ne i32 %conv44, 0
  %tobool47 = icmp ne i32 %c_r.0, 0
  %or.cond330 = select i1 %tobool45, i1 %tobool47, i1 false
  %tobool49 = icmp ne i32 %c_w.0, 0
  %or.cond331 = select i1 %or.cond330, i1 true, i1 %tobool49
  %.b464 = load i1, i1* @debug, align 4
  %or.cond332 = select i1 %or.cond329, i1 %.b464, i1 false
  br i1 %or.cond332, label %if.then55, label %if.end62

if.then55:                                        ; preds = %for.cond
  %call56 = tail call i32 @SSL_in_init(%struct.ssl_st* noundef %s_ssl) #16
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end62, label %if.then58

if.then58:                                        ; preds = %if.then55
  %call59 = tail call i8* @SSL_state_string_long(%struct.ssl_st* noundef %s_ssl) #16
  %call60 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.119, i64 0, i64 0), i8* noundef %call59) #16
  br label %if.end62

if.end62:                                         ; preds = %if.then55, %if.then58, %for.cond
  %.b463 = load i1, i1* @debug, align 4
  %or.cond333 = select i1 %or.cond331, i1 %.b463, i1 false
  br i1 %or.cond333, label %if.then66, label %if.end73

if.then66:                                        ; preds = %if.end62
  %call67 = tail call i32 @SSL_in_init(%struct.ssl_st* noundef %c_ssl) #16
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end73, label %if.then69

if.then69:                                        ; preds = %if.then66
  %call70 = tail call i8* @SSL_state_string_long(%struct.ssl_st* noundef %c_ssl) #16
  %call71 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.114, i64 0, i64 0), i8* noundef %call70) #16
  br label %if.end73

if.end73:                                         ; preds = %if.then66, %if.then69, %if.end62
  %or.cond334 = select i1 %or.cond331, i1 true, i1 %or.cond329
  br i1 %or.cond334, label %if.end79, label %if.then77

if.then77:                                        ; preds = %if.end73
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %call78 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.135, i64 0, i64 0)) #16
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %6) #16
  br label %err

if.end79:                                         ; preds = %if.end73
  %and = and i32 %done.0, 1
  %tobool82.not = icmp eq i32 %and, 0
  %or.cond470 = select i1 %or.cond331, i1 %tobool82.not, i1 false
  br i1 %or.cond470, label %if.then83, label %if.end174

if.then83:                                        ; preds = %if.end79
  %tobool84.not = icmp eq i32 %c_write.0, 0
  br i1 %tobool84.not, label %if.else131, label %if.then85

if.then85:                                        ; preds = %if.then83
  %cmp86 = icmp sgt i64 %cw_num.0, %cond
  %cond93.v = select i1 %cmp86, i64 %cond, i64 %cw_num.0
  %cond93 = trunc i64 %cond93.v to i32
  %call94 = tail call i32 @BIO_write(%struct.bio_st* noundef %call15, i8* noundef nonnull %call, i32 noundef %cond93) #16
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.then97, label %if.else111

if.then97:                                        ; preds = %if.then85
  %call98 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call15, i32 noundef 8) #16
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.else, label %if.then100

if.then100:                                       ; preds = %if.then97
  %call101 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call15, i32 noundef 1) #16
  %tobool102.not = icmp ne i32 %call101, 0
  %spec.select = zext i1 %tobool102.not to i32
  %call105 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call15, i32 noundef 2) #16
  %tobool106.not = icmp ne i32 %call105, 0
  %spec.select482 = zext i1 %tobool106.not to i32
  br label %if.end174

if.else:                                          ; preds = %if.then97
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call109 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i64 0, i64 0)) #16
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %8) #16
  br label %err

if.else111:                                       ; preds = %if.then85
  %cmp112 = icmp eq i32 %call94, 0
  br i1 %cmp112, label %if.then114, label %if.else116

if.then114:                                       ; preds = %if.else111
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call115 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i64 0, i64 0)) #16
  br label %err

if.else116:                                       ; preds = %if.else111
  %.b468 = load i1, i1* @debug, align 4
  br i1 %.b468, label %if.then118, label %if.end120

if.then118:                                       ; preds = %if.else116
  %call119 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.117, i64 0, i64 0), i32 noundef %call94) #16
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %if.else116
  %conv121504 = zext i32 %call94 to i64
  %sub = sub nsw i64 %cw_num.0, %conv121504
  %cmp122 = icmp sgt i32 %max_frag.0, 1029
  br i1 %cmp122, label %if.then124, label %if.end174

if.then124:                                       ; preds = %if.end120
  %sub125 = add nsw i32 %max_frag.0, -5
  %10 = zext i32 %sub125 to i64
  %call127 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %c_ssl, i32 noundef 52, i64 noundef %10, i8* noundef null) #16
  br label %if.end174

if.else131:                                       ; preds = %if.then83
  %call133 = tail call i32 @BIO_read(%struct.bio_st* noundef %call15, i8* noundef nonnull %call, i32 noundef %conv132) #16
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %if.then136, label %if.else151

if.then136:                                       ; preds = %if.else131
  %call137 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call15, i32 noundef 8) #16
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.else148, label %if.then139

if.then139:                                       ; preds = %if.then136
  %call140 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call15, i32 noundef 1) #16
  %tobool141.not = icmp ne i32 %call140, 0
  %spec.select471 = zext i1 %tobool141.not to i32
  %call144 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call15, i32 noundef 2) #16
  %tobool145.not = icmp ne i32 %call144, 0
  %spec.select483 = zext i1 %tobool145.not to i32
  br label %if.end174

if.else148:                                       ; preds = %if.then136
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call149 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i64 0, i64 0)) #16
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %12) #16
  br label %err

if.else151:                                       ; preds = %if.else131
  %cmp152 = icmp eq i32 %call133, 0
  br i1 %cmp152, label %if.then154, label %if.else156

if.then154:                                       ; preds = %if.else151
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call155 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i64 0, i64 0)) #16
  br label %err

if.else156:                                       ; preds = %if.else151
  %.b467 = load i1, i1* @debug, align 4
  br i1 %.b467, label %if.then158, label %if.end160

if.then158:                                       ; preds = %if.else156
  %call159 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.118, i64 0, i64 0), i32 noundef %call133) #16
  br label %if.end160

if.end160:                                        ; preds = %if.then158, %if.else156
  %conv161503 = zext i32 %call133 to i64
  %sub162 = sub nsw i64 %cr_num.0, %conv161503
  %cmp163 = icmp sgt i64 %sw_num.0, 0
  %spec.select472 = select i1 %cmp163, i32 1, i32 %s_w.0
  %spec.select473 = select i1 %cmp163, i32 1, i32 %s_write.0
  %cmp167 = icmp slt i64 %sub162, 1
  br i1 %cmp167, label %for.end, label %if.end174

if.end174:                                        ; preds = %if.then139, %if.then100, %if.then124, %if.end120, %if.end160, %if.end79
  %cw_num.1 = phi i64 [ %sub, %if.then124 ], [ %sub, %if.end120 ], [ %cw_num.0, %if.end160 ], [ %cw_num.0, %if.end79 ], [ %cw_num.0, %if.then100 ], [ %cw_num.0, %if.then139 ]
  %cr_num.1 = phi i64 [ %cr_num.0, %if.then124 ], [ %cr_num.0, %if.end120 ], [ %sub162, %if.end160 ], [ %cr_num.0, %if.end79 ], [ %cr_num.0, %if.then100 ], [ %cr_num.0, %if.then139 ]
  %c_r.3 = phi i32 [ %c_r.0, %if.then124 ], [ %c_r.0, %if.end120 ], [ %c_r.0, %if.end160 ], [ %c_r.0, %if.end79 ], [ %spec.select, %if.then100 ], [ %spec.select471, %if.then139 ]
  %c_w.1 = phi i32 [ %c_w.0, %if.then124 ], [ %c_w.0, %if.end120 ], [ %c_w.0, %if.end160 ], [ %c_w.0, %if.end79 ], [ %spec.select482, %if.then100 ], [ %spec.select483, %if.then139 ]
  %s_r.1 = phi i32 [ 1, %if.then124 ], [ 1, %if.end120 ], [ %s_r.0, %if.end160 ], [ %s_r.0, %if.end79 ], [ %s_r.0, %if.then100 ], [ %s_r.0, %if.then139 ]
  %s_w.2 = phi i32 [ %s_w.0, %if.then124 ], [ %s_w.0, %if.end120 ], [ %spec.select472, %if.end160 ], [ %s_w.0, %if.end79 ], [ %s_w.0, %if.then100 ], [ %s_w.0, %if.then139 ]
  %c_write.1 = phi i32 [ 0, %if.then124 ], [ 0, %if.end120 ], [ 0, %if.end160 ], [ %c_write.0, %if.end79 ], [ 1, %if.then100 ], [ 0, %if.then139 ]
  %s_write.2 = phi i32 [ %s_write.0, %if.then124 ], [ %s_write.0, %if.end120 ], [ %spec.select473, %if.end160 ], [ %s_write.0, %if.end79 ], [ %s_write.0, %if.then100 ], [ %s_write.0, %if.then139 ]
  %max_frag.1 = phi i32 [ %sub125, %if.then124 ], [ %max_frag.0, %if.end120 ], [ %max_frag.0, %if.end160 ], [ %max_frag.0, %if.end79 ], [ %max_frag.0, %if.then100 ], [ %max_frag.0, %if.then139 ]
  %and177 = and i32 %done.0, 2
  %tobool178.not = icmp eq i32 %and177, 0
  %or.cond474 = select i1 %or.cond329, i1 %tobool178.not, i1 false
  br i1 %or.cond474, label %if.then179, label %if.end276

if.then179:                                       ; preds = %if.end174
  %tobool180.not = icmp eq i32 %s_write.2, 0
  br i1 %tobool180.not, label %if.then181, label %if.else223

if.then181:                                       ; preds = %if.then179
  %call183 = tail call i32 @BIO_read(%struct.bio_st* noundef %call17, i8* noundef nonnull %call2, i32 noundef %conv132) #16
  %cmp184 = icmp slt i32 %call183, 0
  br i1 %cmp184, label %if.then186, label %if.else201

if.then186:                                       ; preds = %if.then181
  %call187 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call17, i32 noundef 8) #16
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.else198, label %if.then189

if.then189:                                       ; preds = %if.then186
  %call190 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call17, i32 noundef 1) #16
  %tobool191.not = icmp ne i32 %call190, 0
  %spec.select475 = zext i1 %tobool191.not to i32
  %call194 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call17, i32 noundef 2) #16
  %tobool195.not = icmp ne i32 %call194, 0
  %spec.select484 = zext i1 %tobool195.not to i32
  br label %if.end276

if.else198:                                       ; preds = %if.then186
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call199 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.120, i64 0, i64 0)) #16
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %15) #16
  br label %err

if.else201:                                       ; preds = %if.then181
  %cmp202 = icmp eq i32 %call183, 0
  br i1 %cmp202, label %if.then204, label %if.else206

if.then204:                                       ; preds = %if.else201
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %16) #16
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call205 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.136, i64 0, i64 0)) #16
  br label %err

if.else206:                                       ; preds = %if.else201
  %.b466 = load i1, i1* @debug, align 4
  br i1 %.b466, label %if.then208, label %if.end210

if.then208:                                       ; preds = %if.else206
  %call209 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.123, i64 0, i64 0), i32 noundef %call183) #16
  br label %if.end210

if.end210:                                        ; preds = %if.then208, %if.else206
  %conv211501 = zext i32 %call183 to i64
  %sub212 = sub nsw i64 %sr_num.0, %conv211501
  %cmp213 = icmp sgt i64 %cw_num.1, 0
  %spec.select476 = select i1 %cmp213, i32 1, i32 %c_w.1
  %spec.select477 = select i1 %cmp213, i32 1, i32 %c_write.1
  %cmp217 = icmp slt i64 %sub212, 1
  br i1 %cmp217, label %if.then219, label %if.end276

if.then219:                                       ; preds = %if.end210
  br label %if.end276

if.else223:                                       ; preds = %if.then179
  %cmp224 = icmp sgt i64 %sw_num.0, %cond
  %cond231.v = select i1 %cmp224, i64 %cond, i64 %sw_num.0
  %cond231 = trunc i64 %cond231.v to i32
  %call232 = tail call i32 @BIO_write(%struct.bio_st* noundef %call17, i8* noundef nonnull %call2, i32 noundef %cond231) #16
  %cmp233 = icmp slt i32 %call232, 0
  br i1 %cmp233, label %if.then235, label %if.else250

if.then235:                                       ; preds = %if.else223
  %call236 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call17, i32 noundef 8) #16
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %if.else247, label %if.then238

if.then238:                                       ; preds = %if.then235
  %call239 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call17, i32 noundef 1) #16
  %tobool240.not = icmp ne i32 %call239, 0
  %spec.select478 = zext i1 %tobool240.not to i32
  %call243 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call17, i32 noundef 2) #16
  %tobool244.not = icmp ne i32 %call243, 0
  %spec.select485 = zext i1 %tobool244.not to i32
  br label %if.end276

if.else247:                                       ; preds = %if.then235
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call248 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.120, i64 0, i64 0)) #16
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %19) #16
  br label %err

if.else250:                                       ; preds = %if.else223
  %cmp251 = icmp eq i32 %call232, 0
  br i1 %cmp251, label %if.then253, label %if.else255

if.then253:                                       ; preds = %if.else250
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %20) #16
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call254 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.137, i64 0, i64 0)) #16
  br label %err

if.else255:                                       ; preds = %if.else250
  %.b465 = load i1, i1* @debug, align 4
  br i1 %.b465, label %if.then257, label %if.end259

if.then257:                                       ; preds = %if.else255
  %call258 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i64 0, i64 0), i32 noundef %call232) #16
  br label %if.end259

if.end259:                                        ; preds = %if.then257, %if.else255
  %conv260502 = zext i32 %call232 to i64
  %sub261 = sub nsw i64 %sw_num.0, %conv260502
  %cmp262 = icmp slt i64 %sub261, 1
  %or = or i32 %done.0, 2
  %spec.select479 = select i1 %cmp262, i32 %or, i32 %done.0
  %cmp266 = icmp sgt i32 %max_frag.1, 1029
  br i1 %cmp266, label %if.then268, label %if.end276

if.then268:                                       ; preds = %if.end259
  %sub269 = add nsw i32 %max_frag.1, -5
  %22 = zext i32 %sub269 to i64
  %call271 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %s_ssl, i32 noundef 52, i64 noundef %22, i8* noundef null) #16
  br label %if.end276

if.end276:                                        ; preds = %if.then238, %if.then189, %if.then219, %if.end210, %if.then268, %if.end259, %if.end174
  %sw_num.1 = phi i64 [ %sub261, %if.then268 ], [ %sub261, %if.end259 ], [ %sw_num.0, %if.then219 ], [ %sw_num.0, %if.end210 ], [ %sw_num.0, %if.end174 ], [ %sw_num.0, %if.then189 ], [ %sw_num.0, %if.then238 ]
  %sr_num.1 = phi i64 [ %sr_num.0, %if.then268 ], [ %sr_num.0, %if.end259 ], [ %sub212, %if.then219 ], [ %sub212, %if.end210 ], [ %sr_num.0, %if.end174 ], [ %sr_num.0, %if.then189 ], [ %sr_num.0, %if.then238 ]
  %c_r.4 = phi i32 [ 1, %if.then268 ], [ 1, %if.end259 ], [ %c_r.3, %if.then219 ], [ %c_r.3, %if.end210 ], [ %c_r.3, %if.end174 ], [ %c_r.3, %if.then189 ], [ %c_r.3, %if.then238 ]
  %c_w.3 = phi i32 [ %c_w.1, %if.then268 ], [ %c_w.1, %if.end259 ], [ %spec.select476, %if.then219 ], [ %spec.select476, %if.end210 ], [ %c_w.1, %if.end174 ], [ %c_w.1, %if.then189 ], [ %c_w.1, %if.then238 ]
  %s_r.4 = phi i32 [ %s_r.1, %if.then268 ], [ %s_r.1, %if.end259 ], [ %s_r.1, %if.then219 ], [ %s_r.1, %if.end210 ], [ %s_r.1, %if.end174 ], [ %spec.select475, %if.then189 ], [ %spec.select478, %if.then238 ]
  %s_w.3 = phi i32 [ %s_w.2, %if.then268 ], [ %s_w.2, %if.end259 ], [ 1, %if.then219 ], [ %s_w.2, %if.end210 ], [ %s_w.2, %if.end174 ], [ %spec.select484, %if.then189 ], [ %spec.select485, %if.then238 ]
  %done.3 = phi i32 [ %spec.select479, %if.then268 ], [ %spec.select479, %if.end259 ], [ %done.0, %if.then219 ], [ %done.0, %if.end210 ], [ %done.0, %if.end174 ], [ %done.0, %if.then189 ], [ %done.0, %if.then238 ]
  %c_write.3 = phi i32 [ %c_write.1, %if.then268 ], [ %c_write.1, %if.end259 ], [ 0, %if.then219 ], [ %spec.select477, %if.end210 ], [ %c_write.1, %if.end174 ], [ %c_write.1, %if.then189 ], [ %c_write.1, %if.then238 ]
  %s_write.3 = phi i32 [ 0, %if.then268 ], [ 0, %if.end259 ], [ 1, %if.then219 ], [ 0, %if.end210 ], [ %s_write.2, %if.end174 ], [ 0, %if.then189 ], [ 1, %if.then238 ]
  %max_frag.2 = phi i32 [ %sub269, %if.then268 ], [ %max_frag.1, %if.end259 ], [ %max_frag.1, %if.then219 ], [ %max_frag.1, %if.end210 ], [ %max_frag.1, %if.end174 ], [ %max_frag.1, %if.then189 ], [ %max_frag.1, %if.then238 ]
  %23 = and i32 %done.3, 3
  %.not = icmp eq i32 %23, 3
  br i1 %.not, label %for.end, label %for.cond

for.end:                                          ; preds = %if.end160, %if.end276
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then285, label %if.end286

if.then285:                                       ; preds = %for.end
  tail call fastcc void @print_details(%struct.ssl_st* noundef %c_ssl, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.138, i64 0, i64 0)) #19
  br label %if.end286

if.end286:                                        ; preds = %if.then285, %for.end
  %call287 = tail call fastcc i32 @verify_npn(%struct.ssl_st* noundef %c_ssl, %struct.ssl_st* noundef %s_ssl) #19
  %cmp288 = icmp slt i32 %call287, 0
  br i1 %cmp288, label %err, label %if.end291

if.end291:                                        ; preds = %if.end286
  %call292 = tail call fastcc i32 @verify_serverinfo() #19
  %cmp293 = icmp slt i32 %call292, 0
  br i1 %cmp293, label %if.then295, label %if.end297

if.then295:                                       ; preds = %if.end291
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call296 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.125, i64 0, i64 0)) #16
  br label %err

if.end297:                                        ; preds = %if.end291
  %.b469 = load i1, i1* @custom_ext_error, align 4
  br i1 %.b469, label %if.then299, label %err

if.then299:                                       ; preds = %if.end297
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call300 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.126, i64 0, i64 0)) #16
  br label %err

err:                                              ; preds = %if.end297, %if.end27, %if.end22, %if.end286, %if.end, %entry, %if.then299, %if.then295, %if.then253, %if.else247, %if.then204, %if.else198, %if.then154, %if.else148, %if.then114, %if.else, %if.then77, %if.then21, %if.then12
  %sbuf.0 = phi i8* [ null, %entry ], [ null, %if.end ], [ %call2, %if.then12 ], [ %call2, %if.then21 ], [ %call2, %if.end286 ], [ %call2, %if.then295 ], [ %call2, %if.then299 ], [ %call2, %if.else247 ], [ %call2, %if.then253 ], [ %call2, %if.else198 ], [ %call2, %if.then204 ], [ %call2, %if.else ], [ %call2, %if.then114 ], [ %call2, %if.else148 ], [ %call2, %if.then154 ], [ %call2, %if.then77 ], [ %call2, %if.end22 ], [ %call2, %if.end27 ], [ %call2, %if.end297 ]
  %ret.0 = phi i32 [ 1, %entry ], [ 1, %if.end ], [ 1, %if.then12 ], [ 1, %if.then21 ], [ 1, %if.end286 ], [ 1, %if.then295 ], [ 1, %if.then299 ], [ 1, %if.else247 ], [ 1, %if.then253 ], [ 1, %if.else198 ], [ 1, %if.then204 ], [ 1, %if.else ], [ 1, %if.then114 ], [ 1, %if.else148 ], [ 1, %if.then154 ], [ 1, %if.then77 ], [ 1, %if.end22 ], [ 1, %if.end27 ], [ 0, %if.end297 ]
  %c_to_s.0 = phi %struct.bio_st* [ null, %entry ], [ null, %if.end ], [ %call7, %if.then12 ], [ %call7, %if.then21 ], [ null, %if.end286 ], [ null, %if.then295 ], [ null, %if.then299 ], [ null, %if.else247 ], [ null, %if.then253 ], [ null, %if.else198 ], [ null, %if.then204 ], [ null, %if.else ], [ null, %if.then114 ], [ null, %if.else148 ], [ null, %if.then154 ], [ null, %if.then77 ], [ null, %if.end22 ], [ %call7, %if.end27 ], [ null, %if.end297 ]
  %s_to_c.0 = phi %struct.bio_st* [ null, %entry ], [ null, %if.end ], [ %call9, %if.then12 ], [ %call9, %if.then21 ], [ null, %if.end286 ], [ null, %if.then295 ], [ null, %if.then299 ], [ null, %if.else247 ], [ null, %if.then253 ], [ null, %if.else198 ], [ null, %if.then204 ], [ null, %if.else ], [ null, %if.then114 ], [ null, %if.else148 ], [ null, %if.then154 ], [ null, %if.then77 ], [ null, %if.end22 ], [ null, %if.end27 ], [ null, %if.end297 ]
  %c_bio.0 = phi %struct.bio_st* [ null, %entry ], [ null, %if.end ], [ null, %if.then12 ], [ %call15, %if.then21 ], [ %call15, %if.end286 ], [ %call15, %if.then295 ], [ %call15, %if.then299 ], [ %call15, %if.else247 ], [ %call15, %if.then253 ], [ %call15, %if.else198 ], [ %call15, %if.then204 ], [ %call15, %if.else ], [ %call15, %if.then114 ], [ %call15, %if.else148 ], [ %call15, %if.then154 ], [ %call15, %if.then77 ], [ %call15, %if.end22 ], [ %call15, %if.end27 ], [ %call15, %if.end297 ]
  %s_bio.0 = phi %struct.bio_st* [ null, %entry ], [ null, %if.end ], [ null, %if.then12 ], [ %call17, %if.then21 ], [ %call17, %if.end286 ], [ %call17, %if.then295 ], [ %call17, %if.then299 ], [ %call17, %if.else247 ], [ %call17, %if.then253 ], [ %call17, %if.else198 ], [ %call17, %if.then204 ], [ %call17, %if.else ], [ %call17, %if.then114 ], [ %call17, %if.else148 ], [ %call17, %if.then154 ], [ %call17, %if.then77 ], [ %call17, %if.end22 ], [ %call17, %if.end27 ], [ %call17, %if.end297 ]
  %cmp311.not = phi i32 [ 1, %entry ], [ 1, %if.end ], [ 1, %if.then12 ], [ 1, %if.then21 ], [ 1, %if.end286 ], [ 1, %if.then295 ], [ 1, %if.then299 ], [ 1, %if.else247 ], [ 1, %if.then253 ], [ 1, %if.else198 ], [ 1, %if.then204 ], [ 0, %if.else ], [ 1, %if.then114 ], [ 0, %if.else148 ], [ 1, %if.then154 ], [ 1, %if.then77 ], [ 1, %if.end22 ], [ 1, %if.end27 ], [ 1, %if.end297 ]
  %cmp322.not = phi i32 [ 1, %entry ], [ 1, %if.end ], [ 1, %if.then12 ], [ 1, %if.then21 ], [ 1, %if.end286 ], [ 1, %if.then295 ], [ 1, %if.then299 ], [ 0, %if.else247 ], [ 1, %if.then253 ], [ 0, %if.else198 ], [ 1, %if.then204 ], [ 1, %if.else ], [ 1, %if.then114 ], [ 1, %if.else148 ], [ 1, %if.then154 ], [ 1, %if.then77 ], [ 1, %if.end22 ], [ 1, %if.end27 ], [ 1, %if.end297 ]
  %call302 = tail call i32 @BIO_free(%struct.bio_st* noundef %c_to_s.0) #16
  %call303 = tail call i32 @BIO_free(%struct.bio_st* noundef %s_to_c.0) #16
  tail call void @BIO_free_all(%struct.bio_st* noundef %c_bio.0) #16
  tail call void @BIO_free_all(%struct.bio_st* noundef %s_bio.0) #16
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i64 0, i64 0), i32 noundef 2804) #16
  tail call void @CRYPTO_free(i8* noundef %sbuf.0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i64 0, i64 0), i32 noundef 2805) #16
  %26 = load i8*, i8** @should_negotiate, align 8, !tbaa !7
  %cmp304.not = icmp eq i8* %26, null
  br i1 %cmp304.not, label %if.end326, label %land.lhs.true306

land.lhs.true306:                                 ; preds = %err
  %call307 = tail call i32 @strcmp(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i64 0, i64 0)) #17
  %cmp308 = icmp eq i32 %call307, 0
  br i1 %cmp308, label %if.end326, label %land.lhs.true317

land.lhs.true317:                                 ; preds = %land.lhs.true306
  %call318 = tail call i32 @strcmp(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0)) #17
  %cmp319 = icmp eq i32 %call318, 0
  %spec.select481 = select i1 %cmp319, i32 %cmp322.not, i32 %ret.0
  br label %if.end326

if.end326:                                        ; preds = %err, %land.lhs.true317, %land.lhs.true306
  %ret.1 = phi i32 [ %cmp311.not, %land.lhs.true306 ], [ %spec.select481, %land.lhs.true317 ], [ %ret.0, %err ]
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @doit_biopair(%struct.ssl_st* noundef %s_ssl, %struct.ssl_st* noundef %c_ssl, i64 noundef %count, i64* nocapture noundef %s_time, i64* nocapture noundef %c_time) local_unnamed_addr #8 {
entry:
  %server = alloca %struct.bio_st*, align 8
  %server_io = alloca %struct.bio_st*, align 8
  %client = alloca %struct.bio_st*, align 8
  %client_io = alloca %struct.bio_st*, align 8
  %cbuf = alloca [8192 x i8], align 16
  %sbuf = alloca [8192 x i8], align 16
  %dataptr = alloca i8*, align 8
  %dataptr226 = alloca i8*, align 8
  %0 = bitcast %struct.bio_st** %server to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store %struct.bio_st* null, %struct.bio_st** %server, align 8, !tbaa !7
  %1 = bitcast %struct.bio_st** %server_io to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  store %struct.bio_st* null, %struct.bio_st** %server_io, align 8, !tbaa !7
  %2 = bitcast %struct.bio_st** %client to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  store %struct.bio_st* null, %struct.bio_st** %client, align 8, !tbaa !7
  %3 = bitcast %struct.bio_st** %client_io to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #15
  store %struct.bio_st* null, %struct.bio_st** %client_io, align 8, !tbaa !7
  %call = call i32 @BIO_new_bio_pair(%struct.bio_st** noundef nonnull %server, i64 noundef 256, %struct.bio_st** noundef nonnull %server_io, i64 noundef 256) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @BIO_new_bio_pair(%struct.bio_st** noundef nonnull %client, i64 noundef 256, %struct.bio_st** noundef nonnull %client_io, i64 noundef 256) #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call %struct.bio_method_st* @BIO_f_ssl() #16
  %call6 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call5) #16
  %tobool7.not = icmp eq %struct.bio_st* %call6, null
  br i1 %tobool7.not, label %err, label %if.end9

if.end9:                                          ; preds = %if.end4
  %call10 = call %struct.bio_method_st* @BIO_f_ssl() #16
  %call11 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call10) #16
  %tobool12.not = icmp eq %struct.bio_st* %call11, null
  br i1 %tobool12.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end9
  call void @SSL_set_connect_state(%struct.ssl_st* noundef %c_ssl) #16
  %4 = load %struct.bio_st*, %struct.bio_st** %client, align 8, !tbaa !7
  call void @SSL_set_bio(%struct.ssl_st* noundef %c_ssl, %struct.bio_st* noundef %4, %struct.bio_st* noundef %4) #16
  %5 = bitcast %struct.ssl_st* %c_ssl to i8*
  %call15 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call11, i32 noundef 109, i64 noundef 0, i8* noundef %5) #16
  call void @SSL_set_accept_state(%struct.ssl_st* noundef %s_ssl) #16
  %6 = load %struct.bio_st*, %struct.bio_st** %server, align 8, !tbaa !7
  call void @SSL_set_bio(%struct.ssl_st* noundef %s_ssl, %struct.bio_st* noundef %6, %struct.bio_st* noundef %6) #16
  %7 = bitcast %struct.ssl_st* %s_ssl to i8*
  %call16 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call6, i32 noundef 109, i64 noundef 0, i8* noundef %7) #16
  %8 = getelementptr inbounds [8192 x i8], [8192 x i8]* %cbuf, i64 0, i64 0
  %9 = getelementptr inbounds [8192 x i8], [8192 x i8]* %sbuf, i64 0, i64 0
  %10 = bitcast i8** %dataptr to i8*
  %11 = bitcast i8** %dataptr226 to i8*
  br label %do.body

do.body:                                          ; preds = %do.cond299, %if.end14
  %sr_num.0 = phi i64 [ %count, %if.end14 ], [ %sr_num.1, %do.cond299 ]
  %sw_num.0 = phi i64 [ %count, %if.end14 ], [ %sw_num.1, %do.cond299 ]
  %cr_num.0 = phi i64 [ %count, %if.end14 ], [ %cr_num.1, %do.cond299 ]
  %cw_num.0 = phi i64 [ %count, %if.end14 ], [ %cw_num.1, %do.cond299 ]
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %8) #15
  %call17 = call i64 @clock() #16
  %call18 = call i8* @memset(i8* noundef nonnull %8, i32 noundef 0, i64 noundef 8192) #16
  %.b530 = load i1, i1* @debug, align 4
  br i1 %.b530, label %if.then20, label %if.end27

if.then20:                                        ; preds = %do.body
  %call21 = call i32 @SSL_in_init(%struct.ssl_st* noundef %c_ssl) #16
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end27, label %if.then23

if.then23:                                        ; preds = %if.then20
  %call24 = call i8* @SSL_state_string_long(%struct.ssl_st* noundef %c_ssl) #16
  %call25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.114, i64 0, i64 0), i8* noundef %call24) #16
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.then23, %do.body
  %cmp = icmp sgt i64 %cw_num.0, 0
  br i1 %cmp, label %if.then28, label %if.end55

if.then28:                                        ; preds = %if.end27
  %12 = icmp ult i64 %cw_num.0, 8192
  %i.0572 = select i1 %12, i64 %cw_num.0, i64 8192
  %13 = trunc i64 %i.0572 to i32
  %call33 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %call11, i8* noundef nonnull %8, i32 noundef %13) #16
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.else42

if.then36:                                        ; preds = %if.then28
  %call37 = call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call11, i32 noundef 8) #16
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %cleanup.thread, label %if.end55

if.else42:                                        ; preds = %if.then28
  %cmp43 = icmp eq i32 %call33, 0
  br i1 %cmp43, label %cleanup.thread, label %if.else47

if.else47:                                        ; preds = %if.else42
  %.b529 = load i1, i1* @debug, align 4
  br i1 %.b529, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.else47
  %call50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.117, i64 0, i64 0), i32 noundef %call33) #16
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.else47
  %conv52569 = zext i32 %call33 to i64
  %sub = sub nsw i64 %cw_num.0, %conv52569
  br label %if.end55

if.end55:                                         ; preds = %if.end51, %if.then36, %if.end27
  %cw_num.1 = phi i64 [ %cw_num.0, %if.then36 ], [ %sub, %if.end51 ], [ %cw_num.0, %if.end27 ]
  %cmp56 = icmp sgt i64 %cr_num.0, 0
  br i1 %cmp56, label %if.then58, label %cleanup.cont

if.then58:                                        ; preds = %if.end55
  %call60 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call11, i8* noundef nonnull %8, i32 noundef 8192) #16
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.else69

if.then63:                                        ; preds = %if.then58
  %call64 = call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call11, i32 noundef 8) #16
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %cleanup.thread, label %cleanup.cont

if.else69:                                        ; preds = %if.then58
  %cmp70 = icmp eq i32 %call60, 0
  br i1 %cmp70, label %cleanup.thread, label %if.else74

if.else74:                                        ; preds = %if.else69
  %.b528 = load i1, i1* @debug, align 4
  br i1 %.b528, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.else74
  %call77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.118, i64 0, i64 0), i32 noundef %call60) #16
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.else74
  %conv79568 = zext i32 %call60 to i64
  %sub80 = sub nsw i64 %cr_num.0, %conv79568
  br label %cleanup.cont

cleanup.thread:                                   ; preds = %if.else69, %if.then63, %if.else42, %if.then36
  %.sink597 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i64 0, i64 0), %if.then36 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i64 0, i64 0), %if.else42 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i64 0, i64 0), %if.then63 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i64 0, i64 0), %if.else69 ]
  %err_in_client.1.ph = phi i32 [ 1, %if.then36 ], [ 0, %if.else42 ], [ 1, %if.then63 ], [ 0, %if.else69 ]
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef %.sink597) #16
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %8) #15
  br label %err

cleanup.cont:                                     ; preds = %if.end78, %if.then63, %if.end55
  %cr_num.1 = phi i64 [ %cr_num.0, %if.then63 ], [ %sub80, %if.end78 ], [ %cr_num.0, %if.end55 ]
  %call84 = call i64 @clock() #16
  %sub85 = sub i64 %call84, %call17
  %15 = load i64, i64* %c_time, align 8, !tbaa !9
  %add = add nsw i64 %sub85, %15
  store i64 %add, i64* %c_time, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %8) #15
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %9) #15
  %call91 = call i64 @clock() #16
  %call93 = call i8* @memset(i8* noundef nonnull %9, i32 noundef 0, i64 noundef 8192) #16
  %.b527 = load i1, i1* @debug, align 4
  br i1 %.b527, label %if.then95, label %if.end102

if.then95:                                        ; preds = %cleanup.cont
  %call96 = call i32 @SSL_in_init(%struct.ssl_st* noundef %s_ssl) #16
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end102, label %if.then98

if.then98:                                        ; preds = %if.then95
  %call99 = call i8* @SSL_state_string_long(%struct.ssl_st* noundef %s_ssl) #16
  %call100 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.119, i64 0, i64 0), i8* noundef %call99) #16
  br label %if.end102

if.end102:                                        ; preds = %if.then95, %if.then98, %cleanup.cont
  %cmp103 = icmp sgt i64 %sw_num.0, 0
  br i1 %cmp103, label %if.then105, label %if.end136

if.then105:                                       ; preds = %if.end102
  %16 = icmp ult i64 %sw_num.0, 8192
  %i89.0571 = select i1 %16, i64 %sw_num.0, i64 8192
  %17 = trunc i64 %i89.0571 to i32
  %call113 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %call6, i8* noundef nonnull %9, i32 noundef %17) #16
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.then116, label %if.else122

if.then116:                                       ; preds = %if.then105
  %call117 = call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call6, i32 noundef 8) #16
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %cleanup168.thread, label %if.end136

if.else122:                                       ; preds = %if.then105
  %cmp123 = icmp eq i32 %call113, 0
  br i1 %cmp123, label %cleanup168.thread, label %if.else127

if.else127:                                       ; preds = %if.else122
  %.b526 = load i1, i1* @debug, align 4
  br i1 %.b526, label %if.then129, label %if.end131

if.then129:                                       ; preds = %if.else127
  %call130 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i64 0, i64 0), i32 noundef %call113) #16
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.else127
  %conv132567 = zext i32 %call113 to i64
  %sub133 = sub nsw i64 %sw_num.0, %conv132567
  br label %if.end136

if.end136:                                        ; preds = %if.end131, %if.then116, %if.end102
  %sw_num.1 = phi i64 [ %sw_num.0, %if.then116 ], [ %sub133, %if.end131 ], [ %sw_num.0, %if.end102 ]
  %cmp137 = icmp sgt i64 %sr_num.0, 0
  br i1 %cmp137, label %if.then139, label %cleanup.cont173

if.then139:                                       ; preds = %if.end136
  %call141 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call6, i8* noundef nonnull %9, i32 noundef 8192) #16
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %if.then144, label %if.else150

if.then144:                                       ; preds = %if.then139
  %call145 = call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call6, i32 noundef 8) #16
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %cleanup168.thread, label %cleanup.cont173

if.else150:                                       ; preds = %if.then139
  %cmp151 = icmp eq i32 %call141, 0
  br i1 %cmp151, label %cleanup168.thread, label %if.else155

if.else155:                                       ; preds = %if.else150
  %.b525 = load i1, i1* @debug, align 4
  br i1 %.b525, label %if.then157, label %if.end159

if.then157:                                       ; preds = %if.else155
  %call158 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.123, i64 0, i64 0), i32 noundef %call141) #16
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %if.else155
  %conv160566 = zext i32 %call141 to i64
  %sub161 = sub nsw i64 %sr_num.0, %conv160566
  br label %cleanup.cont173

cleanup168.thread:                                ; preds = %if.else150, %if.then144, %if.else122, %if.then116
  %.sink598 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.120, i64 0, i64 0), %if.then116 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.121, i64 0, i64 0), %if.else122 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.120, i64 0, i64 0), %if.then144 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.121, i64 0, i64 0), %if.else150 ]
  %err_in_server.1.ph = phi i32 [ 1, %if.then116 ], [ 0, %if.else122 ], [ 1, %if.then144 ], [ 0, %if.else150 ]
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef %.sink598) #16
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %9) #15
  br label %err

cleanup.cont173:                                  ; preds = %if.end159, %if.then144, %if.end136
  %sr_num.1 = phi i64 [ %sr_num.0, %if.then144 ], [ %sub161, %if.end159 ], [ %sr_num.0, %if.end136 ]
  %call165 = call i64 @clock() #16
  %sub166 = sub i64 %call165, %call91
  %19 = load i64, i64* %s_time, align 8, !tbaa !9
  %add167 = add nsw i64 %sub166, %19
  store i64 %add167, i64* %s_time, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %9) #15
  %20 = load %struct.bio_st*, %struct.bio_st** %server_io, align 8, !tbaa !7
  %21 = load %struct.bio_st*, %struct.bio_st** %client_io, align 8, !tbaa !7
  br label %do.body174

do.body174:                                       ; preds = %do.cond, %cleanup.cont173
  %progress.0 = phi i32 [ 0, %cleanup.cont173 ], [ %progress.3.ph, %do.cond ]
  %call176 = call i64 @BIO_ctrl_pending(%struct.bio_st* noundef %20) #16
  %call177 = call i64 @BIO_ctrl_get_write_guarantee(%struct.bio_st* noundef %21) #16
  %cmp178 = icmp ult i64 %call177, %call176
  %spec.select = select i1 %cmp178, i64 %call177, i64 %call176
  %tobool182.not = icmp eq i64 %spec.select, 0
  br i1 %tobool182.not, label %do.cond, label %if.then183

if.then183:                                       ; preds = %do.body174
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #15
  %22 = icmp ult i64 %spec.select, 2147483647
  %spec.store.select = select i1 %22, i64 %spec.select, i64 2147483647
  %conv188 = trunc i64 %spec.store.select to i32
  %call189 = call i32 @BIO_nread(%struct.bio_st* noundef %20, i8** noundef nonnull %dataptr, i32 noundef %conv188) #16
  %23 = load i8*, i8** %dataptr, align 8, !tbaa !7
  %call192 = call i32 @BIO_write(%struct.bio_st* noundef %21, i8* noundef %23, i32 noundef %call189) #16
  %cmp194.not = icmp eq i32 %call192, %call189
  br i1 %cmp194.not, label %if.end198, label %cleanup210

if.end198:                                        ; preds = %if.then183
  %.b524 = load i1, i1* @debug, align 4
  br i1 %.b524, label %if.then200, label %cleanup206.thread

if.then200:                                       ; preds = %if.end198
  %24 = load %struct.bio_st*, %struct.bio_st** %client_io, align 8, !tbaa !7
  %cmp201 = icmp eq %struct.bio_st* %20, %24
  %cond = select i1 %cmp201, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.128, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.129, i64 0, i64 0)
  %call204 = call i32 (i8*, ...) @printf(i8* noundef %cond, i32 noundef %call189) #16
  br label %cleanup206.thread

cleanup206.thread:                                ; preds = %if.end198, %if.then200
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #15
  br label %do.cond

cleanup210:                                       ; preds = %if.then183
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.127, i64 0, i64 0)) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #15
  br label %err

do.cond:                                          ; preds = %cleanup206.thread, %do.body174
  %progress.3.ph = phi i32 [ 1, %cleanup206.thread ], [ %progress.0, %do.body174 ]
  %tobool214 = icmp ne i64 %call176, 0
  %tobool215 = icmp ne i64 %call177, 0
  %26 = select i1 %tobool214, i1 %tobool215, i1 false
  br i1 %26, label %do.body174, label %do.end, !llvm.loop !21

do.end:                                           ; preds = %do.cond
  %call218 = call i64 @BIO_ctrl_pending(%struct.bio_st* noundef %21) #16
  %call219 = call i64 @BIO_ctrl_get_read_request(%struct.bio_st* noundef %20) #16
  %cmp220 = icmp ult i64 %call219, %call218
  %spec.select535 = select i1 %cmp220, i64 %call219, i64 %call218
  %tobool224.not = icmp eq i64 %spec.select535, 0
  br i1 %tobool224.not, label %cleanup.cont273, label %if.then225

if.then225:                                       ; preds = %do.end
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #15
  %27 = icmp ult i64 %spec.select535, 2147483647
  %spec.store.select385 = select i1 %27, i64 %spec.select535, i64 2147483647
  %cmp231 = icmp ugt i64 %spec.store.select385, 1
  %dec = add nsw i64 %spec.store.select385, -1
  %spec.select536 = select i1 %cmp231, i64 %dec, i64 1
  %call235 = call i32 @BIO_nwrite0(%struct.bio_st* noundef %20, i8** noundef nonnull %dataptr226) #16
  %conv236 = trunc i64 %spec.select536 to i32
  %cmp237 = icmp slt i32 %call235, %conv236
  %conv240570 = zext i32 %call235 to i64
  %num216.2 = select i1 %cmp237, i64 %conv240570, i64 %spec.select536
  %28 = load i8*, i8** %dataptr226, align 8, !tbaa !7
  %conv242 = trunc i64 %num216.2 to i32
  %call243 = call i32 @BIO_read(%struct.bio_st* noundef %21, i8* noundef %28, i32 noundef %conv242) #16
  %cmp245.not = icmp eq i32 %call243, %conv242
  br i1 %cmp245.not, label %if.end249, label %cleanup270

if.end249:                                        ; preds = %if.then225
  %call251 = call i32 @BIO_nwrite(%struct.bio_st* noundef %20, i8** noundef nonnull %dataptr226, i32 noundef %conv242) #16
  %cmp253.not = icmp eq i32 %call251, %conv242
  br i1 %cmp253.not, label %if.end257, label %cleanup270

if.end257:                                        ; preds = %if.end249
  %.b523 = load i1, i1* @debug, align 4
  br i1 %.b523, label %if.then259, label %cleanup.cont273.thread

if.then259:                                       ; preds = %if.end257
  %29 = load %struct.bio_st*, %struct.bio_st** %client_io, align 8, !tbaa !7
  %cmp260 = icmp eq %struct.bio_st* %21, %29
  %cond262 = select i1 %cmp260, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.128, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.129, i64 0, i64 0)
  %call264 = call i32 (i8*, ...) @printf(i8* noundef %cond262, i32 noundef %conv242) #16
  br label %cleanup.cont273.thread

cleanup.cont273.thread:                           ; preds = %if.end257, %if.then259
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #15
  br label %do.cond299

cleanup270:                                       ; preds = %if.end249, %if.then225
  %.sink599 = phi i8* [ getelementptr inbounds ([56 x i8], [56 x i8]* @.str.130, i64 0, i64 0), %if.then225 ], [ getelementptr inbounds ([55 x i8], [55 x i8]* @.str.131, i64 0, i64 0), %if.end249 ]
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef %.sink599) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #15
  br label %err

cleanup.cont273:                                  ; preds = %do.end
  %tobool274 = icmp ne i32 %progress.3.ph, 0
  %31 = load i32, i32* @doit_biopair.prev_progress, align 4
  %tobool275 = icmp ne i32 %31, 0
  %or.cond = select i1 %tobool274, i1 true, i1 %tobool275
  br i1 %or.cond, label %do.cond299, label %if.then276

if.then276:                                       ; preds = %cleanup.cont273
  %cmp277 = icmp sgt i64 %cw_num.1, 0
  %cmp279 = icmp sgt i64 %cr_num.1, 0
  %or.cond386 = select i1 %cmp277, i1 true, i1 %cmp279
  %cmp282 = icmp sgt i64 %sw_num.1, 0
  %or.cond387 = select i1 %or.cond386, i1 true, i1 %cmp282
  %cmp285 = icmp sgt i64 %sr_num.1, 0
  %or.cond388 = select i1 %or.cond387, i1 true, i1 %cmp285
  br i1 %or.cond388, label %if.then287, label %do.cond299

if.then287:                                       ; preds = %if.then276
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call288 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.132, i64 0, i64 0)) #16
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call289 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.133, i64 0, i64 0)) #16
  br label %err

do.cond299:                                       ; preds = %cleanup.cont273.thread, %if.then276, %cleanup.cont273
  %progress.6.ph564 = phi i32 [ 1, %cleanup.cont273.thread ], [ 0, %if.then276 ], [ %progress.3.ph, %cleanup.cont273 ]
  store i32 %progress.6.ph564, i32* @doit_biopair.prev_progress, align 4, !tbaa !3
  %cmp300 = icmp sgt i64 %cw_num.1, 0
  %cmp303 = icmp sgt i64 %cr_num.1, 0
  %or.cond389 = select i1 %cmp300, i1 true, i1 %cmp303
  %cmp306 = icmp sgt i64 %sw_num.1, 0
  %or.cond390 = select i1 %or.cond389, i1 true, i1 %cmp306
  %cmp308 = icmp sgt i64 %sr_num.1, 0
  %or.cond391 = select i1 %or.cond390, i1 true, i1 %cmp308
  br i1 %or.cond391, label %do.body, label %do.end310, !llvm.loop !22

do.end310:                                        ; preds = %do.cond299
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then312, label %if.end313

if.then312:                                       ; preds = %do.end310
  call fastcc void @print_details(%struct.ssl_st* noundef %c_ssl, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.134, i64 0, i64 0)) #19
  br label %if.end313

if.end313:                                        ; preds = %if.then312, %do.end310
  %call314 = call fastcc i32 @verify_npn(%struct.ssl_st* noundef %c_ssl, %struct.ssl_st* noundef %s_ssl) #19
  %cmp315 = icmp slt i32 %call314, 0
  br i1 %cmp315, label %err, label %if.end318

if.end318:                                        ; preds = %if.end313
  %call319 = call fastcc i32 @verify_serverinfo() #19
  %cmp320 = icmp slt i32 %call319, 0
  br i1 %cmp320, label %if.then322, label %if.end324

if.then322:                                       ; preds = %if.end318
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call323 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.125, i64 0, i64 0)) #16
  br label %err

if.end324:                                        ; preds = %if.end318
  %call325 = call fastcc i32 @verify_alpn(%struct.ssl_st* noundef %c_ssl, %struct.ssl_st* noundef %s_ssl) #19
  %cmp326 = icmp slt i32 %call325, 0
  br i1 %cmp326, label %err, label %lor.lhs.false328

lor.lhs.false328:                                 ; preds = %if.end324
  %call329 = call fastcc i32 @verify_servername(%struct.ssl_st* noundef %s_ssl) #19
  %cmp330 = icmp slt i32 %call329, 0
  br i1 %cmp330, label %err, label %if.end333

if.end333:                                        ; preds = %lor.lhs.false328
  %.b531 = load i1, i1* @custom_ext_error, align 4
  br i1 %.b531, label %if.then335, label %err

if.then335:                                       ; preds = %if.end333
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call336 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.126, i64 0, i64 0)) #16
  br label %err

err:                                              ; preds = %cleanup210, %cleanup270, %if.then287, %cleanup168.thread, %cleanup.thread, %if.end313, %if.end333, %if.end324, %lor.lhs.false328, %if.end9, %if.end4, %if.end, %entry, %if.then335, %if.then322
  %c_ssl_bio.0 = phi %struct.bio_st* [ %call11, %if.then322 ], [ %call11, %if.end324 ], [ %call11, %lor.lhs.false328 ], [ %call11, %if.then335 ], [ null, %if.end9 ], [ null, %if.end4 ], [ null, %if.end ], [ null, %entry ], [ %call11, %if.end333 ], [ %call11, %if.end313 ], [ %call11, %cleanup.thread ], [ %call11, %cleanup168.thread ], [ %call11, %if.then287 ], [ %call11, %cleanup270 ], [ %call11, %cleanup210 ]
  %ret.0 = phi i32 [ 1, %if.then322 ], [ 1, %if.end324 ], [ 1, %lor.lhs.false328 ], [ 1, %if.then335 ], [ 1, %if.end9 ], [ 1, %if.end4 ], [ 1, %if.end ], [ 1, %entry ], [ 0, %if.end333 ], [ 0, %if.end313 ], [ 1, %cleanup.thread ], [ 1, %cleanup168.thread ], [ 1, %if.then287 ], [ 1, %cleanup270 ], [ 1, %cleanup210 ]
  %err_in_client.2 = phi i32 [ 0, %if.then322 ], [ 0, %if.end324 ], [ 0, %lor.lhs.false328 ], [ 0, %if.then335 ], [ 0, %if.end9 ], [ 0, %if.end4 ], [ 0, %if.end ], [ 0, %entry ], [ 0, %if.end333 ], [ 0, %if.end313 ], [ %err_in_client.1.ph, %cleanup.thread ], [ 0, %cleanup168.thread ], [ 0, %if.then287 ], [ 0, %cleanup270 ], [ 0, %cleanup210 ]
  %err_in_server.2 = phi i32 [ 0, %if.then322 ], [ 0, %if.end324 ], [ 0, %lor.lhs.false328 ], [ 0, %if.then335 ], [ 0, %if.end9 ], [ 0, %if.end4 ], [ 0, %if.end ], [ 0, %entry ], [ 0, %if.end333 ], [ 0, %if.end313 ], [ 0, %cleanup.thread ], [ %err_in_server.1.ph, %cleanup168.thread ], [ 0, %if.then287 ], [ 0, %cleanup270 ], [ 0, %cleanup210 ]
  %s_ssl_bio.0 = phi %struct.bio_st* [ %call6, %if.then322 ], [ %call6, %if.end324 ], [ %call6, %lor.lhs.false328 ], [ %call6, %if.then335 ], [ %call6, %if.end9 ], [ null, %if.end4 ], [ null, %if.end ], [ null, %entry ], [ %call6, %if.end333 ], [ %call6, %if.end313 ], [ %call6, %cleanup.thread ], [ %call6, %cleanup168.thread ], [ %call6, %if.then287 ], [ %call6, %cleanup270 ], [ %call6, %cleanup210 ]
  %36 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %36) #16
  %37 = load %struct.bio_st*, %struct.bio_st** %server, align 8, !tbaa !7
  %call338 = call i32 @BIO_free(%struct.bio_st* noundef %37) #16
  %38 = load %struct.bio_st*, %struct.bio_st** %server_io, align 8, !tbaa !7
  %call339 = call i32 @BIO_free(%struct.bio_st* noundef %38) #16
  %39 = load %struct.bio_st*, %struct.bio_st** %client, align 8, !tbaa !7
  %call340 = call i32 @BIO_free(%struct.bio_st* noundef %39) #16
  %40 = load %struct.bio_st*, %struct.bio_st** %client_io, align 8, !tbaa !7
  %call341 = call i32 @BIO_free(%struct.bio_st* noundef %40) #16
  %call342 = call i32 @BIO_free(%struct.bio_st* noundef %s_ssl_bio.0) #16
  %call343 = call i32 @BIO_free(%struct.bio_st* noundef %c_ssl_bio.0) #16
  %41 = load i8*, i8** @should_negotiate, align 8, !tbaa !7
  %cmp344.not = icmp eq i8* %41, null
  br i1 %cmp344.not, label %cleanup367, label %land.lhs.true346

land.lhs.true346:                                 ; preds = %err
  %call347 = call i32 @strcmp(i8* noundef nonnull %41, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i64 0, i64 0)) #17
  %cmp348 = icmp eq i32 %call347, 0
  br i1 %cmp348, label %if.then350, label %land.lhs.true357

if.then350:                                       ; preds = %land.lhs.true346
  %cmp351.not = icmp eq i32 %err_in_client.2, 0
  %cond353 = zext i1 %cmp351.not to i32
  br label %cleanup367

land.lhs.true357:                                 ; preds = %land.lhs.true346
  %call358 = call i32 @strcmp(i8* noundef nonnull %41, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0)) #17
  %cmp359 = icmp eq i32 %call358, 0
  br i1 %cmp359, label %if.then361, label %cleanup367

if.then361:                                       ; preds = %land.lhs.true357
  %cmp362.not = icmp eq i32 %err_in_server.2, 0
  %cond364 = zext i1 %cmp362.not to i32
  br label %cleanup367

cleanup367:                                       ; preds = %err, %if.then350, %if.then361, %land.lhs.true357
  %retval.0 = phi i32 [ %cond353, %if.then350 ], [ %cond364, %if.then361 ], [ %ret.0, %land.lhs.true357 ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @doit_localhost(%struct.ssl_st* noundef %s_ssl, %struct.ssl_st* noundef %c_ssl, i32 noundef %family, i64 noundef %count, i64* nocapture noundef %s_time, i64* nocapture noundef %c_time) local_unnamed_addr #8 {
entry:
  %addr_str = alloca [40 x i8], align 16
  %cbuf = alloca [8192 x i8], align 16
  %sbuf = alloca [8192 x i8], align 16
  %0 = getelementptr inbounds [40 x i8], [40 x i8]* %addr_str, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #15
  %cmp = icmp eq i32 %family, 4
  %cond = select i1 %cmp, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i64 0, i64 0)
  %call = tail call %struct.bio_st* @BIO_new_accept(i8* noundef %cond) #16
  %cmp1 = icmp eq %struct.bio_st* %call, null
  br i1 %cmp1, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @BIO_int_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef 118, i64 noundef 4, i32 noundef %family) #16
  %call3 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef 131, i64 noundef 9, i8* noundef null) #16
  %call4 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef 101, i64 noundef 0, i8* noundef null) #16
  %cmp5 = icmp slt i64 %call4, 1
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = tail call i8* @BIO_ptr_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef 124, i64 noundef 1) #16
  %call9 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 40, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0), i8* noundef %call8) #16
  %call11 = call %struct.bio_st* @BIO_new_connect(i8* noundef nonnull %0) #16
  %call12 = call i64 @BIO_int_ctrl(%struct.bio_st* noundef %call11, i32 noundef 100, i64 noundef 3, i32 noundef %family) #16
  %tobool.not = icmp eq %struct.bio_st* %call11, null
  br i1 %tobool.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end7
  %call15 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call11, i32 noundef 102, i64 noundef 1, i8* noundef null) #16
  %cmp16 = icmp slt i64 %call15, 1
  br i1 %cmp16, label %err, label %if.end18

if.end18:                                         ; preds = %if.end14
  %call19 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef 102, i64 noundef 1, i8* noundef null) #16
  %cmp20 = icmp slt i64 %call19, 1
  br i1 %cmp20, label %err, label %while.body

while.body:                                       ; preds = %if.end18, %if.end47
  %tobool24.not450 = phi i1 [ %tobool24.not, %if.end47 ], [ true, %if.end18 ]
  %tobool23.not449 = phi i1 [ %tobool23.not, %if.end47 ], [ true, %if.end18 ]
  br i1 %tobool23.not449, label %if.then26, label %if.end35

if.then26:                                        ; preds = %while.body
  %call27 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call11, i32 noundef 101, i64 noundef 0, i8* noundef null) #16
  %cmp28 = icmp slt i64 %call27, 1
  br i1 %cmp28, label %if.then29, label %if.end35

if.then29:                                        ; preds = %if.then26
  %call30 = call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call11, i32 noundef 8) #16
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.then26, %if.then29, %while.body
  %tobool23.not = phi i1 [ false, %if.then26 ], [ true, %if.then29 ], [ false, %while.body ]
  br i1 %tobool24.not450, label %if.then37, label %if.end47

if.then37:                                        ; preds = %if.end35
  %call38 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef 101, i64 noundef 0, i8* noundef null) #16
  %cmp39 = icmp slt i64 %call38, 1
  br i1 %cmp39, label %if.then40, label %if.end47

if.then40:                                        ; preds = %if.then37
  %call41 = call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call, i32 noundef 8) #16
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %if.end47

if.end47:                                         ; preds = %if.then37, %if.then40, %if.end35
  %tobool24.not = phi i1 [ false, %if.then37 ], [ true, %if.then40 ], [ false, %if.end35 ]
  %1 = or i1 %tobool23.not, %tobool24.not
  br i1 %1, label %while.body, label %cleanup.cont, !llvm.loop !23

cleanup.cont:                                     ; preds = %if.end47
  %call49 = call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef nonnull %call) #16
  call void @BIO_free_all(%struct.bio_st* noundef nonnull %call) #16
  %call50 = call %struct.bio_method_st* @BIO_f_ssl() #16
  %call51 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call50) #16
  %tobool52.not = icmp eq %struct.bio_st* %call51, null
  br i1 %tobool52.not, label %err, label %if.end54

if.end54:                                         ; preds = %cleanup.cont
  %call55 = call %struct.bio_method_st* @BIO_f_ssl() #16
  %call56 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call55) #16
  %tobool57.not = icmp eq %struct.bio_st* %call56, null
  br i1 %tobool57.not, label %err, label %if.end59

if.end59:                                         ; preds = %if.end54
  call void @SSL_set_connect_state(%struct.ssl_st* noundef %c_ssl) #16
  call void @SSL_set_bio(%struct.ssl_st* noundef %c_ssl, %struct.bio_st* noundef nonnull %call11, %struct.bio_st* noundef nonnull %call11) #16
  %2 = bitcast %struct.ssl_st* %c_ssl to i8*
  %call60 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call56, i32 noundef 109, i64 noundef 0, i8* noundef %2) #16
  call void @SSL_set_accept_state(%struct.ssl_st* noundef %s_ssl) #16
  call void @SSL_set_bio(%struct.ssl_st* noundef %s_ssl, %struct.bio_st* noundef %call49, %struct.bio_st* noundef %call49) #16
  %3 = bitcast %struct.ssl_st* %s_ssl to i8*
  %call61 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call51, i32 noundef 109, i64 noundef 0, i8* noundef %3) #16
  %4 = getelementptr inbounds [8192 x i8], [8192 x i8]* %cbuf, i64 0, i64 0
  %5 = getelementptr inbounds [8192 x i8], [8192 x i8]* %sbuf, i64 0, i64 0
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end59
  %cr_num.0 = phi i64 [ %count, %if.end59 ], [ %cr_num.1, %do.cond ]
  %sw_num.0 = phi i64 [ %count, %if.end59 ], [ %sw_num.1, %do.cond ]
  %sr_num.0 = phi i64 [ %count, %if.end59 ], [ %sr_num.1, %do.cond ]
  %cw_num.0 = phi i64 [ %count, %if.end59 ], [ %cw_num.1, %do.cond ]
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %4) #15
  %call62 = call i64 @clock() #16
  %call64 = call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 8192) #16
  %.b411 = load i1, i1* @debug, align 4
  br i1 %.b411, label %if.then66, label %if.end73

if.then66:                                        ; preds = %do.body
  %call67 = call i32 @SSL_in_init(%struct.ssl_st* noundef %c_ssl) #16
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end73, label %if.then69

if.then69:                                        ; preds = %if.then66
  %call70 = call i8* @SSL_state_string_long(%struct.ssl_st* noundef %c_ssl) #16
  %call71 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.114, i64 0, i64 0), i8* noundef %call70) #16
  br label %if.end73

if.end73:                                         ; preds = %if.then66, %if.then69, %do.body
  %cmp74 = icmp sgt i64 %cw_num.0, 0
  br i1 %cmp74, label %if.then75, label %if.end103

if.then75:                                        ; preds = %if.end73
  %6 = icmp ult i64 %cw_num.0, 8192
  %i.0435 = select i1 %6, i64 %cw_num.0, i64 8192
  %7 = trunc i64 %i.0435 to i32
  %call81 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %call56, i8* noundef nonnull %4, i32 noundef %7) #16
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.else90

if.then84:                                        ; preds = %if.then75
  %call85 = call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call56, i32 noundef 8) #16
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %cleanup134.thread, label %if.end103

if.else90:                                        ; preds = %if.then75
  %cmp91 = icmp eq i32 %call81, 0
  br i1 %cmp91, label %cleanup134.thread, label %if.else95

if.else95:                                        ; preds = %if.else90
  %.b410 = load i1, i1* @debug, align 4
  br i1 %.b410, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.else95
  %call98 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.117, i64 0, i64 0), i32 noundef %call81) #16
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.else95
  %conv100433 = zext i32 %call81 to i64
  %sub = sub nsw i64 %cw_num.0, %conv100433
  br label %if.end103

if.end103:                                        ; preds = %if.end99, %if.then84, %if.end73
  %cw_num.1 = phi i64 [ %cw_num.0, %if.then84 ], [ %sub, %if.end99 ], [ %cw_num.0, %if.end73 ]
  %cmp104 = icmp sgt i64 %cr_num.0, 0
  br i1 %cmp104, label %if.then106, label %cleanup.cont139

if.then106:                                       ; preds = %if.end103
  %call108 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call56, i8* noundef nonnull %4, i32 noundef 8192) #16
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then111, label %if.else117

if.then111:                                       ; preds = %if.then106
  %call112 = call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call56, i32 noundef 8) #16
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %cleanup134.thread, label %cleanup.cont139

if.else117:                                       ; preds = %if.then106
  %cmp118 = icmp eq i32 %call108, 0
  br i1 %cmp118, label %cleanup134.thread, label %if.else122

if.else122:                                       ; preds = %if.else117
  %.b409 = load i1, i1* @debug, align 4
  br i1 %.b409, label %if.then124, label %if.end126

if.then124:                                       ; preds = %if.else122
  %call125 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.118, i64 0, i64 0), i32 noundef %call108) #16
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %if.else122
  %conv127432 = zext i32 %call108 to i64
  %sub128 = sub nsw i64 %cr_num.0, %conv127432
  br label %cleanup.cont139

cleanup134.thread:                                ; preds = %if.else117, %if.then111, %if.else90, %if.then84
  %.sink451 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i64 0, i64 0), %if.then84 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i64 0, i64 0), %if.else90 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i64 0, i64 0), %if.then111 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i64 0, i64 0), %if.else117 ]
  %err_in_client.1.ph = phi i32 [ 1, %if.then84 ], [ 0, %if.else90 ], [ 1, %if.then111 ], [ 0, %if.else117 ]
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef %.sink451) #16
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %4) #15
  br label %err

cleanup.cont139:                                  ; preds = %if.end126, %if.then111, %if.end103
  %cr_num.1 = phi i64 [ %cr_num.0, %if.then111 ], [ %sub128, %if.end126 ], [ %cr_num.0, %if.end103 ]
  %call132 = call i64 @clock() #16
  %sub133 = sub i64 %call132, %call62
  %9 = load i64, i64* %c_time, align 8, !tbaa !9
  %add = add nsw i64 %sub133, %9
  store i64 %add, i64* %c_time, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %4) #15
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %5) #15
  %call142 = call i64 @clock() #16
  %call144 = call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i64 noundef 8192) #16
  %.b408 = load i1, i1* @debug, align 4
  br i1 %.b408, label %if.then146, label %if.end153

if.then146:                                       ; preds = %cleanup.cont139
  %call147 = call i32 @SSL_in_init(%struct.ssl_st* noundef %s_ssl) #16
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end153, label %if.then149

if.then149:                                       ; preds = %if.then146
  %call150 = call i8* @SSL_state_string_long(%struct.ssl_st* noundef %s_ssl) #16
  %call151 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.119, i64 0, i64 0), i8* noundef %call150) #16
  br label %if.end153

if.end153:                                        ; preds = %if.then146, %if.then149, %cleanup.cont139
  %cmp154 = icmp sgt i64 %sw_num.0, 0
  br i1 %cmp154, label %if.then156, label %if.end187

if.then156:                                       ; preds = %if.end153
  %10 = icmp ult i64 %sw_num.0, 8192
  %i140.0434 = select i1 %10, i64 %sw_num.0, i64 8192
  %11 = trunc i64 %i140.0434 to i32
  %call164 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %call51, i8* noundef nonnull %5, i32 noundef %11) #16
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %if.then167, label %if.else173

if.then167:                                       ; preds = %if.then156
  %call168 = call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call51, i32 noundef 8) #16
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %cleanup219.thread, label %if.end187

if.else173:                                       ; preds = %if.then156
  %cmp174 = icmp eq i32 %call164, 0
  br i1 %cmp174, label %cleanup219.thread, label %if.else178

if.else178:                                       ; preds = %if.else173
  %.b407 = load i1, i1* @debug, align 4
  br i1 %.b407, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.else178
  %call181 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i64 0, i64 0), i32 noundef %call164) #16
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %if.else178
  %conv183431 = zext i32 %call164 to i64
  %sub184 = sub nsw i64 %sw_num.0, %conv183431
  br label %if.end187

if.end187:                                        ; preds = %if.end182, %if.then167, %if.end153
  %sw_num.1 = phi i64 [ %sw_num.0, %if.then167 ], [ %sub184, %if.end182 ], [ %sw_num.0, %if.end153 ]
  %cmp188 = icmp sgt i64 %sr_num.0, 0
  br i1 %cmp188, label %if.then190, label %do.cond

if.then190:                                       ; preds = %if.end187
  %call192 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call51, i8* noundef nonnull %5, i32 noundef 8192) #16
  %cmp193 = icmp slt i32 %call192, 0
  br i1 %cmp193, label %if.then195, label %if.else201

if.then195:                                       ; preds = %if.then190
  %call196 = call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call51, i32 noundef 8) #16
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %cleanup219.thread, label %do.cond

if.else201:                                       ; preds = %if.then190
  %cmp202 = icmp eq i32 %call192, 0
  br i1 %cmp202, label %cleanup219.thread, label %if.else206

if.else206:                                       ; preds = %if.else201
  %.b406 = load i1, i1* @debug, align 4
  br i1 %.b406, label %if.then208, label %if.end210

if.then208:                                       ; preds = %if.else206
  %call209 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.123, i64 0, i64 0), i32 noundef %call192) #16
  br label %if.end210

if.end210:                                        ; preds = %if.then208, %if.else206
  %conv211430 = zext i32 %call192 to i64
  %sub212 = sub nsw i64 %sr_num.0, %conv211430
  br label %do.cond

cleanup219.thread:                                ; preds = %if.else201, %if.then195, %if.else173, %if.then167
  %.sink452 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.120, i64 0, i64 0), %if.then167 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.121, i64 0, i64 0), %if.else173 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.120, i64 0, i64 0), %if.then195 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.121, i64 0, i64 0), %if.else201 ]
  %err_in_server.1.ph = phi i32 [ 1, %if.then167 ], [ 0, %if.else173 ], [ 1, %if.then195 ], [ 0, %if.else201 ]
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call199 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef %.sink452) #16
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %5) #15
  br label %err

do.cond:                                          ; preds = %if.end210, %if.then195, %if.end187
  %sr_num.1 = phi i64 [ %sr_num.0, %if.then195 ], [ %sub212, %if.end210 ], [ %sr_num.0, %if.end187 ]
  %call216 = call i64 @clock() #16
  %sub217 = sub i64 %call216, %call142
  %13 = load i64, i64* %s_time, align 8, !tbaa !9
  %add218 = add nsw i64 %sub217, %13
  store i64 %add218, i64* %s_time, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %5) #15
  %cmp225 = icmp sgt i64 %cw_num.1, 0
  %cmp227 = icmp sgt i64 %cr_num.1, 0
  %or.cond = select i1 %cmp225, i1 true, i1 %cmp227
  %cmp230 = icmp sgt i64 %sw_num.1, 0
  %or.cond302 = select i1 %or.cond, i1 true, i1 %cmp230
  %cmp233 = icmp sgt i64 %sr_num.1, 0
  %or.cond303 = select i1 %or.cond302, i1 true, i1 %cmp233
  br i1 %or.cond303, label %do.body, label %do.end, !llvm.loop !24

do.end:                                           ; preds = %do.cond
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then237, label %if.end238

if.then237:                                       ; preds = %do.end
  call fastcc void @print_details(%struct.ssl_st* noundef %c_ssl, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.124, i64 0, i64 0)) #19
  br label %if.end238

if.end238:                                        ; preds = %if.then237, %do.end
  %call239 = call fastcc i32 @verify_npn(%struct.ssl_st* noundef %c_ssl, %struct.ssl_st* noundef %s_ssl) #19
  %cmp240 = icmp slt i32 %call239, 0
  br i1 %cmp240, label %err, label %if.end243

if.end243:                                        ; preds = %if.end238
  %call244 = call fastcc i32 @verify_serverinfo() #19
  %cmp245 = icmp slt i32 %call244, 0
  br i1 %cmp245, label %if.then247, label %if.end249

if.then247:                                       ; preds = %if.end243
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.125, i64 0, i64 0)) #16
  br label %err

if.end249:                                        ; preds = %if.end243
  %call250 = call fastcc i32 @verify_alpn(%struct.ssl_st* noundef %c_ssl, %struct.ssl_st* noundef %s_ssl) #19
  %cmp251 = icmp slt i32 %call250, 0
  br i1 %cmp251, label %err, label %lor.lhs.false253

lor.lhs.false253:                                 ; preds = %if.end249
  %call254 = call fastcc i32 @verify_servername(%struct.ssl_st* noundef %s_ssl) #19
  %cmp255 = icmp slt i32 %call254, 0
  br i1 %cmp255, label %err, label %if.end258

if.end258:                                        ; preds = %lor.lhs.false253
  %.b412 = load i1, i1* @custom_ext_error, align 4
  br i1 %.b412, label %if.then260, label %err

if.then260:                                       ; preds = %if.end258
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call261 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.126, i64 0, i64 0)) #16
  br label %err

err:                                              ; preds = %if.then40, %if.then29, %cleanup219.thread, %cleanup134.thread, %if.end238, %if.end258, %if.end249, %lor.lhs.false253, %if.end54, %cleanup.cont, %if.end18, %if.end14, %if.end7, %if.end, %entry, %if.then260, %if.then247
  %s_ssl_bio.0 = phi %struct.bio_st* [ null, %entry ], [ null, %if.end ], [ null, %if.end14 ], [ null, %if.end18 ], [ %call51, %if.then247 ], [ %call51, %if.end249 ], [ %call51, %lor.lhs.false253 ], [ %call51, %if.then260 ], [ %call51, %if.end54 ], [ null, %cleanup.cont ], [ null, %if.end7 ], [ %call51, %if.end258 ], [ %call51, %if.end238 ], [ %call51, %cleanup134.thread ], [ %call51, %cleanup219.thread ], [ null, %if.then29 ], [ null, %if.then40 ]
  %c_ssl_bio.0 = phi %struct.bio_st* [ null, %entry ], [ null, %if.end ], [ null, %if.end14 ], [ null, %if.end18 ], [ %call56, %if.then247 ], [ %call56, %if.end249 ], [ %call56, %lor.lhs.false253 ], [ %call56, %if.then260 ], [ null, %if.end54 ], [ null, %cleanup.cont ], [ null, %if.end7 ], [ %call56, %if.end258 ], [ %call56, %if.end238 ], [ %call56, %cleanup134.thread ], [ %call56, %cleanup219.thread ], [ null, %if.then29 ], [ null, %if.then40 ]
  %acpt.0 = phi %struct.bio_st* [ null, %entry ], [ %call, %if.end ], [ %call, %if.end14 ], [ %call, %if.end18 ], [ null, %if.then247 ], [ null, %if.end249 ], [ null, %lor.lhs.false253 ], [ null, %if.then260 ], [ null, %if.end54 ], [ null, %cleanup.cont ], [ %call, %if.end7 ], [ null, %if.end258 ], [ null, %if.end238 ], [ null, %cleanup134.thread ], [ null, %cleanup219.thread ], [ %call, %if.then29 ], [ %call, %if.then40 ]
  %server.0 = phi %struct.bio_st* [ null, %entry ], [ null, %if.end ], [ null, %if.end14 ], [ null, %if.end18 ], [ %call49, %if.then247 ], [ %call49, %if.end249 ], [ %call49, %lor.lhs.false253 ], [ %call49, %if.then260 ], [ %call49, %if.end54 ], [ %call49, %cleanup.cont ], [ null, %if.end7 ], [ %call49, %if.end258 ], [ %call49, %if.end238 ], [ %call49, %cleanup134.thread ], [ %call49, %cleanup219.thread ], [ null, %if.then29 ], [ null, %if.then40 ]
  %client.0 = phi %struct.bio_st* [ null, %entry ], [ null, %if.end ], [ %call11, %if.end14 ], [ %call11, %if.end18 ], [ %call11, %if.then247 ], [ %call11, %if.end249 ], [ %call11, %lor.lhs.false253 ], [ %call11, %if.then260 ], [ %call11, %if.end54 ], [ %call11, %cleanup.cont ], [ null, %if.end7 ], [ %call11, %if.end258 ], [ %call11, %if.end238 ], [ %call11, %cleanup134.thread ], [ %call11, %cleanup219.thread ], [ %call11, %if.then29 ], [ %call11, %if.then40 ]
  %ret.0 = phi i32 [ 1, %entry ], [ 1, %if.end ], [ 1, %if.end14 ], [ 1, %if.end18 ], [ 1, %if.then247 ], [ 1, %if.end249 ], [ 1, %lor.lhs.false253 ], [ 1, %if.then260 ], [ 1, %if.end54 ], [ 1, %cleanup.cont ], [ 1, %if.end7 ], [ 0, %if.end258 ], [ 0, %if.end238 ], [ 1, %cleanup134.thread ], [ 1, %cleanup219.thread ], [ 1, %if.then29 ], [ 1, %if.then40 ]
  %err_in_client.2 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end14 ], [ 0, %if.end18 ], [ 0, %if.then247 ], [ 0, %if.end249 ], [ 0, %lor.lhs.false253 ], [ 0, %if.then260 ], [ 0, %if.end54 ], [ 0, %cleanup.cont ], [ 0, %if.end7 ], [ 0, %if.end258 ], [ 0, %if.end238 ], [ %err_in_client.1.ph, %cleanup134.thread ], [ 0, %cleanup219.thread ], [ 0, %if.then29 ], [ 0, %if.then40 ]
  %err_in_server.2 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end14 ], [ 0, %if.end18 ], [ 0, %if.then247 ], [ 0, %if.end249 ], [ 0, %lor.lhs.false253 ], [ 0, %if.then260 ], [ 0, %if.end54 ], [ 0, %cleanup.cont ], [ 0, %if.end7 ], [ 0, %if.end258 ], [ 0, %if.end238 ], [ 0, %cleanup134.thread ], [ %err_in_server.1.ph, %cleanup219.thread ], [ 0, %if.then29 ], [ 0, %if.then40 ]
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %16) #16
  call void @BIO_free_all(%struct.bio_st* noundef %acpt.0) #16
  %call263 = call i32 @BIO_free(%struct.bio_st* noundef %server.0) #16
  %call264 = call i32 @BIO_free(%struct.bio_st* noundef %client.0) #16
  %call265 = call i32 @BIO_free(%struct.bio_st* noundef %s_ssl_bio.0) #16
  %call266 = call i32 @BIO_free(%struct.bio_st* noundef %c_ssl_bio.0) #16
  %17 = load i8*, i8** @should_negotiate, align 8, !tbaa !7
  %cmp267.not = icmp eq i8* %17, null
  br i1 %cmp267.not, label %cleanup289, label %land.lhs.true

land.lhs.true:                                    ; preds = %err
  %call269 = call i32 @strcmp(i8* noundef nonnull %17, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i64 0, i64 0)) #17
  %cmp270 = icmp eq i32 %call269, 0
  br i1 %cmp270, label %if.then272, label %land.lhs.true279

if.then272:                                       ; preds = %land.lhs.true
  %cmp273.not = icmp eq i32 %err_in_client.2, 0
  %cond275 = zext i1 %cmp273.not to i32
  br label %cleanup289

land.lhs.true279:                                 ; preds = %land.lhs.true
  %call280 = call i32 @strcmp(i8* noundef nonnull %17, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0)) #17
  %cmp281 = icmp eq i32 %call280, 0
  br i1 %cmp281, label %if.then283, label %cleanup289

if.then283:                                       ; preds = %land.lhs.true279
  %cmp284.not = icmp eq i32 %err_in_server.2, 0
  %cond286 = zext i1 %cmp284.not to i32
  br label %cleanup289

cleanup289:                                       ; preds = %err, %if.then272, %if.then283, %land.lhs.true279
  %ret.1 = phi i32 [ %cond275, %if.then272 ], [ %cond286, %if.then283 ], [ %ret.0, %land.lhs.true279 ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #15
  ret i32 %ret.1
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal fastcc i32 @protocol_from_string(i8* noundef readonly %value) unnamed_addr #12 {
entry:
  %call = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.210, i64 0, i64 0), i8* noundef %value) #17
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %entry
  %i.010.lcssa = phi i64 [ 0, %entry ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ], [ 6, %for.inc.5 ]
  %version = getelementptr inbounds [7 x %struct.protocol_versions], [7 x %struct.protocol_versions]* @protocol_from_string.versions, i64 0, i64 %i.010.lcssa, i32 1
  %0 = load i32, i32* %version, align 8, !tbaa !25
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.211, i64 0, i64 0), i8* noundef %value) #17
  %cmp1.1 = icmp eq i32 %call.1, 0
  br i1 %cmp1.1, label %if.then, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.212, i64 0, i64 0), i8* noundef %value) #17
  %cmp1.2 = icmp eq i32 %call.2, 0
  br i1 %cmp1.2, label %if.then, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i64 0, i64 0), i8* noundef %value) #17
  %cmp1.3 = icmp eq i32 %call.3, 0
  br i1 %cmp1.3, label %if.then, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %call.4 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.214, i64 0, i64 0), i8* noundef %value) #17
  %cmp1.4 = icmp eq i32 %call.4, 0
  br i1 %cmp1.4, label %if.then, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %call.5 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.215, i64 0, i64 0), i8* noundef %value) #17
  %cmp1.5 = icmp eq i32 %call.5, 0
  br i1 %cmp1.5, label %if.then, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %call.6 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.216, i64 0, i64 0), i8* noundef %value) #17
  %cmp1.6 = icmp eq i32 %call.6, 0
  br i1 %cmp1.6, label %if.then, label %cleanup

cleanup:                                          ; preds = %for.inc.5, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ -1, %for.inc.5 ]
  ret i32 %retval.0
}

declare dso_local i32 @SSL_version(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local i8* @SSL_get_version(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_session_reused(%struct.ssl_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @write_session(i8* noundef %filename, %struct.ssl_session_st* noundef %sess) unnamed_addr #8 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %filename, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.217, i64 0, i64 0)) #16
  %cmp = icmp eq %struct.ssl_session_st* %sess, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.218, i64 0, i64 0)) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq %struct.bio_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.206, i64 0, i64 0), i8* noundef %filename) #16
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @PEM_write_bio_SSL_SESSION(%struct.bio_st* noundef nonnull %call, %struct.ssl_session_st* noundef nonnull %sess) #16
  %call7 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.end5 ]
  ret i32 %retval.0
}

declare dso_local %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_details(%struct.ssl_st* noundef %c_ssl, i8* noundef %prefix) unnamed_addr #8 {
entry:
  %mdnid = alloca i32, align 4
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast i32* %mdnid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  %1 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  %call = tail call %struct.ssl_cipher_st* @SSL_get_current_cipher(%struct.ssl_st* noundef %c_ssl) #16
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call1 = tail call i8* @SSL_get_version(%struct.ssl_st* noundef %c_ssl) #16
  %call2 = tail call i8* @SSL_CIPHER_get_version(%struct.ssl_cipher_st* noundef %call) #16
  %call3 = tail call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %call) #16
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.219, i64 0, i64 0), i8* noundef %prefix, i8* noundef %call1, i8* noundef %call2, i8* noundef %call3) #16
  %call5 = tail call %struct.x509_st* @SSL_get0_peer_certificate(%struct.ssl_st* noundef %c_ssl) #16
  %cmp.not = icmp eq %struct.x509_st* %call5, null
  br i1 %cmp.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %call6 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef nonnull %call5) #16
  %cmp7.not = icmp eq %struct.evp_pkey_st* %call6, null
  br i1 %cmp7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.then
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call9 = tail call i32 @BIO_puts(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.220, i64 0, i64 0)) #16
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  tail call fastcc void @print_key_details(%struct.bio_st* noundef %4, %struct.evp_pkey_st* noundef nonnull %call6) #19
  br label %if.end10

if.end10:                                         ; preds = %if.then, %if.then8, %entry
  %call11 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %c_ssl, i32 noundef 109, i64 noundef 0, i8* noundef nonnull %1) #16
  %tobool.not = icmp eq i64 %call11, 0
  br i1 %tobool.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call13 = call i32 @BIO_puts(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.221, i64 0, i64 0)) #16
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !7
  call fastcc void @print_key_details(%struct.bio_st* noundef %6, %struct.evp_pkey_st* noundef %7) #19
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !7
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %8) #16
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %call15 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %c_ssl, i32 noundef 108, i64 noundef 0, i8* noundef nonnull %0) #16
  %tobool16.not = icmp eq i64 %call15, 0
  br i1 %tobool16.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.end14
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %10 = load i32, i32* %mdnid, align 4, !tbaa !3
  %call18 = call i8* @OBJ_nid2sn(i32 noundef %10) #16
  %call19 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.222, i64 0, i64 0), i8* noundef %call18) #16
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call21 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0)) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret void
}

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @SSL_CONF_CTX_free(%struct.ssl_conf_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local void @SSL_SESSION_free(%struct.ssl_session_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new_accept(i8* noundef) local_unnamed_addr #3

declare dso_local i64 @BIO_int_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i8* @BIO_ptr_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new_connect(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_test_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_pop(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_method_st* @BIO_f_ssl() local_unnamed_addr #3

declare dso_local void @SSL_set_connect_state(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local void @SSL_set_bio(%struct.ssl_st* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local void @SSL_set_accept_state(%struct.ssl_st* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i64 @clock() local_unnamed_addr #13

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #13

declare dso_local i32 @SSL_in_init(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local i8* @SSL_state_string_long(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @verify_npn(%struct.ssl_st* noundef %client, %struct.ssl_st* noundef %server) unnamed_addr #8 {
entry:
  %client_s = alloca i8*, align 8
  %client_len = alloca i32, align 4
  %server_s = alloca i8*, align 8
  %server_len = alloca i32, align 4
  %0 = bitcast i8** %client_s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  %1 = bitcast i32* %client_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #15
  %2 = bitcast i8** %server_s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  %3 = bitcast i32* %server_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15
  call void @SSL_get0_next_proto_negotiated(%struct.ssl_st* noundef %client, i8** noundef nonnull %client_s, i32* noundef nonnull %client_len) #16
  call void @SSL_get0_next_proto_negotiated(%struct.ssl_st* noundef %server, i8** noundef nonnull %server_s, i32* noundef nonnull %server_len) #16
  %4 = load i32, i32* %client_len, align 4, !tbaa !3
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.229, i64 0, i64 0)) #16
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %7 = load i8*, i8** %client_s, align 8, !tbaa !7
  %8 = load i32, i32* %client_len, align 4, !tbaa !3
  %call1 = call i32 @BIO_write(%struct.bio_st* noundef %6, i8* noundef %7, i32 noundef %8) #16
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0)) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %server_len, align 4, !tbaa !3
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call5 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.230, i64 0, i64 0)) #16
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %13 = load i8*, i8** %server_s, align 8, !tbaa !7
  %14 = load i32, i32* %server_len, align 4, !tbaa !3
  %call6 = call i32 @BIO_write(%struct.bio_st* noundef %12, i8* noundef %13, i32 noundef %14) #16
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call7 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0)) #16
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end
  %16 = load i32, i32* %client_len, align 4, !tbaa !3
  switch i32 %16, label %cleanup [
    i32 0, label %if.end15
    i32 9, label %lor.lhs.false
  ]

lor.lhs.false:                                    ; preds = %if.end8
  %17 = load i8*, i8** %client_s, align 8, !tbaa !7
  %call12 = call i32 @memcmp(i8* noundef %17, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @NEXT_PROTO_STRING, i64 0, i64 1), i64 noundef 9) #17
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %cleanup

if.end15:                                         ; preds = %if.end8, %lor.lhs.false
  %18 = load i32, i32* %server_len, align 4, !tbaa !3
  switch i32 %18, label %cleanup [
    i32 0, label %if.end26
    i32 9, label %lor.lhs.false21
  ]

lor.lhs.false21:                                  ; preds = %if.end15
  %19 = load i8*, i8** %server_s, align 8, !tbaa !7
  %call23 = call i32 @memcmp(i8* noundef %19, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @NEXT_PROTO_STRING, i64 0, i64 1), i64 noundef 9) #17
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %cleanup

if.end26:                                         ; preds = %if.end15, %lor.lhs.false21
  %.b = load i1, i1* @npn_client, align 4
  %tobool27 = xor i1 %.b, true
  %tobool29 = icmp ne i32 %16, 0
  %or.cond = select i1 %tobool27, i1 %tobool29, i1 false
  br i1 %or.cond, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end26
  %.b59 = load i1, i1* @npn_server, align 4
  %tobool32 = xor i1 %.b59, true
  %tobool34 = icmp ne i32 %18, 0
  %or.cond54 = select i1 %tobool32, i1 %tobool34, i1 false
  br i1 %or.cond54, label %cleanup, label %if.end36

if.end36:                                         ; preds = %if.end31
  %.b60 = load i1, i1* @npn_server_reject, align 4
  %or.cond55 = select i1 %.b60, i1 %tobool34, i1 false
  br i1 %or.cond55, label %cleanup, label %if.end41

if.end41:                                         ; preds = %if.end36
  %or.cond56 = select i1 %.b, i1 %.b59, i1 false
  br i1 %or.cond56, label %land.lhs.true45, label %if.end50

land.lhs.true45:                                  ; preds = %if.end41
  %or.cond57 = select i1 %tobool29, i1 %tobool34, i1 false
  br i1 %or.cond57, label %if.end50, label %cleanup

if.end50:                                         ; preds = %land.lhs.true45, %if.end41
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true45, %if.end36, %if.end31, %if.end26, %lor.lhs.false21, %if.end15, %lor.lhs.false, %if.end8, %if.end50
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -1, %if.end8 ], [ -1, %lor.lhs.false ], [ -1, %if.end15 ], [ -1, %lor.lhs.false21 ], [ -1, %if.end26 ], [ -1, %if.end31 ], [ -1, %if.end36 ], [ -1, %land.lhs.true45 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @verify_serverinfo() unnamed_addr #14 {
entry:
  %.b = load i1, i1* @serverinfo_sct, align 4
  %0 = zext i1 %.b to i32
  %1 = load i32, i32* @serverinfo_sct_seen, align 4, !tbaa !3
  %cmp.not = icmp eq i32 %1, %0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %.b6 = load i1, i1* @serverinfo_tack, align 4
  %2 = zext i1 %.b6 to i32
  %3 = load i32, i32* @serverinfo_tack_seen, align 4, !tbaa !3
  %cmp1.not = icmp eq i32 %3, %2
  br i1 %cmp1.not, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  %4 = load i32, i32* @serverinfo_other_seen, align 4, !tbaa !3
  %tobool.not = icmp ne i32 %4, 0
  %. = sext i1 %tobool.not to i32
  br label %return

return:                                           ; preds = %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ %., %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @verify_alpn(%struct.ssl_st* noundef %client, %struct.ssl_st* noundef %server) unnamed_addr #8 {
entry:
  %client_proto = alloca i8*, align 8
  %server_proto = alloca i8*, align 8
  %client_proto_len = alloca i32, align 4
  %server_proto_len = alloca i32, align 4
  %0 = bitcast i8** %client_proto to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  %1 = bitcast i8** %server_proto to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  %2 = bitcast i32* %client_proto_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #15
  store i32 0, i32* %client_proto_len, align 4, !tbaa !3
  %3 = bitcast i32* %server_proto_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15
  store i32 0, i32* %server_proto_len, align 4, !tbaa !3
  call void @SSL_get0_alpn_selected(%struct.ssl_st* noundef %client, i8** noundef nonnull %client_proto, i32* noundef nonnull %client_proto_len) #16
  call void @SSL_get0_alpn_selected(%struct.ssl_st* noundef %server, i8** noundef nonnull %server_proto, i32* noundef nonnull %server_proto_len) #16
  %4 = load i8*, i8** @alpn_selected, align 8, !tbaa !7
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i64 0, i64 0), i32 noundef 327) #16
  store i8* null, i8** @alpn_selected, align 8, !tbaa !7
  %5 = load i32, i32* %client_proto_len, align 4, !tbaa !3
  %6 = load i32, i32* %server_proto_len, align 4, !tbaa !3
  %cmp.not = icmp eq i32 %5, %6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.231, i64 0, i64 0)) #16
  br label %err

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %client_proto, align 8, !tbaa !7
  %cmp1.not = icmp eq i8* %8, null
  br i1 %cmp1.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %9 = load i8*, i8** %server_proto, align 8, !tbaa !7
  %conv = zext i32 %5 to i64
  %call2 = call i32 @memcmp(i8* noundef nonnull %8, i8* noundef %9, i64 noundef %conv) #17
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call6 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.231, i64 0, i64 0)) #16
  br label %err

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %cmp8 = icmp ne i32 %5, 0
  %11 = load i8*, i8** @alpn_expected, align 8
  %cmp11 = icmp eq i8* %11, null
  %or.cond = select i1 %cmp8, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end7
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call14 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.232, i64 0, i64 0)) #16
  br label %err

if.end15:                                         ; preds = %if.end7
  br i1 %cmp11, label %cleanup, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end15
  %conv19 = zext i32 %5 to i64
  %call20 = call i64 @strlen(i8* noundef nonnull %11) #17
  %cmp21.not = icmp eq i64 %call20, %conv19
  br i1 %cmp21.not, label %lor.lhs.false, label %if.then27

lor.lhs.false:                                    ; preds = %land.lhs.true18
  %call24 = call i32 @memcmp(i8* noundef %8, i8* noundef nonnull %11, i64 noundef %conv19) #17
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %cleanup, label %if.then27

if.then27:                                        ; preds = %lor.lhs.false, %land.lhs.true18
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call28 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.233, i64 0, i64 0), i8* noundef nonnull %11) #16
  br label %err

err:                                              ; preds = %if.then27, %if.then13, %if.then5, %if.then
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call30 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.234, i64 0, i64 0)) #16
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %16 = load i8*, i8** %client_proto, align 8, !tbaa !7
  %17 = load i32, i32* %client_proto_len, align 4, !tbaa !3
  %call31 = call i32 @BIO_write(%struct.bio_st* noundef %15, i8* noundef %16, i32 noundef %17) #16
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call32 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.235, i64 0, i64 0)) #16
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %20 = load i8*, i8** %server_proto, align 8, !tbaa !7
  %21 = load i32, i32* %server_proto_len, align 4, !tbaa !3
  %call33 = call i32 @BIO_write(%struct.bio_st* noundef %19, i8* noundef %20, i32 noundef %21) #16
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call34 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.236, i64 0, i64 0)) #16
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %24 = load i8*, i8** @alpn_client, align 8, !tbaa !7
  %call35 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %23, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.237, i64 0, i64 0), i8* noundef %24) #16
  %call36 = call %struct.ssl_ctx_st* @SSL_get_SSL_CTX(%struct.ssl_st* noundef %server) #16
  %25 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %cmp37 = icmp eq %struct.ssl_ctx_st* %call36, %25
  %26 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %alpn_server2.val = load i8*, i8** @alpn_server2, align 8
  %alpn_server.val = load i8*, i8** @alpn_server, align 8
  %27 = select i1 %cmp37, i8* %alpn_server2.val, i8* %alpn_server.val
  %call40 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %26, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.238, i64 0, i64 0), i8* noundef %27) #16
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end15, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %if.end15 ], [ -1, %err ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @verify_servername(%struct.ssl_st* noundef %server) unnamed_addr #8 {
entry:
  %call = tail call %struct.ssl_ctx_st* @SSL_get_SSL_CTX(%struct.ssl_st* noundef %server) #16
  %0 = load i32, i32* @sn_expect, align 4, !tbaa !3
  switch i32 %0, label %if.end4 [
    i32 0, label %cleanup
    i32 1, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %cmp2 = icmp eq %struct.ssl_ctx_st* %call, %1
  br i1 %cmp2, label %cleanup, label %if.end9

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %0, 2
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8
  %cmp7 = icmp eq %struct.ssl_ctx_st* %call, %2
  %or.cond = select i1 %cmp5, i1 %cmp7, i1 false
  br i1 %or.cond, label %cleanup, label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end4
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call10 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.239, i64 0, i64 0), i32 noundef %0) #16
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx2, align 8, !tbaa !7
  %cmp11 = icmp eq %struct.ssl_ctx_st* %call, %4
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.240, i64 0, i64 0)) #16
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %6 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @s_ctx, align 8, !tbaa !7
  %cmp14 = icmp eq %struct.ssl_ctx_st* %call, %6
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_stdout, align 8, !tbaa !7
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else
  %call16 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.241, i64 0, i64 0)) #16
  br label %cleanup

if.else17:                                        ; preds = %if.else
  %call18 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.242, i64 0, i64 0)) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.else17, %if.then15, %if.end4, %land.lhs.true, %entry
  %retval.0 = phi i32 [ %0, %entry ], [ 0, %land.lhs.true ], [ 0, %if.end4 ], [ -1, %if.then15 ], [ -1, %if.else17 ], [ -1, %if.then12 ]
  ret i32 %retval.0
}

declare dso_local i32 @BIO_new_bio_pair(%struct.bio_st** noundef, i64 noundef, %struct.bio_st** noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i64 @BIO_ctrl_pending(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i64 @BIO_ctrl_get_write_guarantee(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_nread(%struct.bio_st* noundef, i8** noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i64 @BIO_ctrl_get_read_request(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_nwrite0(%struct.bio_st* noundef, i8** noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_nwrite(%struct.bio_st* noundef, i8** noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #3

declare dso_local i32 @BIO_up_ref(%struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare dso_local void @abort() local_unnamed_addr #5

declare dso_local i32 @SSL_select_next_proto(i8** noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #13

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_session_st* @PEM_read_bio_SSL_SESSION(%struct.bio_st* noundef, %struct.ssl_session_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @SSL_get_servername(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local %struct.ssl_ctx_st* @SSL_set_SSL_CTX(%struct.ssl_st* noundef, %struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @PEM_write_bio_SSL_SESSION(%struct.bio_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_cipher_st* @SSL_get_current_cipher(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local i8* @SSL_CIPHER_get_version(%struct.ssl_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef) local_unnamed_addr #3

declare dso_local %struct.x509_st* @SSL_get0_peer_certificate(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_key_details(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %key) unnamed_addr #8 {
entry:
  %group = alloca [80 x i8], align 16
  %size = alloca i64, align 8
  %call = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %key) #16
  switch i32 %call, label %sw.default [
    i32 408, label %if.then
    i32 6, label %sw.epilog
    i32 116, label %sw.bb8
    i32 28, label %sw.bb9
  ]

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %group, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #15
  %1 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  %call1 = call i32 @EVP_PKEY_get_group_name(%struct.evp_pkey_st* noundef %key, i8* noundef nonnull %0, i64 noundef 80, i64* noundef nonnull %size) #16
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call4 = call i8* @strcpy(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.223, i64 0, i64 0)) #16
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %call5 = call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %key) #16
  %call7 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.224, i64 0, i64 0), i32 noundef %call5, i8* noundef nonnull %0) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #15
  br label %if.end13

sw.bb8:                                           ; preds = %entry
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call10 = tail call i8* @OBJ_nid2sn(i32 noundef %call) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.default, %sw.bb9, %sw.bb8
  %algname.0 = phi i8* [ %call10, %sw.default ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.227, i64 0, i64 0), %sw.bb9 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.226, i64 0, i64 0), %sw.bb8 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.225, i64 0, i64 0), %entry ]
  %call11 = tail call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %key) #16
  %call12 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.228, i64 0, i64 0), i32 noundef %call11, i8* noundef %algname.0) #16
  br label %if.end13

if.end13:                                         ; preds = %sw.epilog, %if.end
  ret void
}

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_get_group_name(%struct.evp_pkey_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #13

declare dso_local i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local void @SSL_get0_next_proto_negotiated(%struct.ssl_st* noundef, i8** noundef, i32* noundef) local_unnamed_addr #3

declare dso_local void @SSL_get0_alpn_selected(%struct.ssl_st* noundef, i8** noundef, i32* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_ctx_st* @SSL_get_SSL_CTX(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local i8* @X509_NAME_oneline(%struct.X509_name_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local %struct.x509_st* @X509_STORE_CTX_get_current_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_STORE_CTX_get_error_depth(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i8* @X509_verify_cert_error_string(i64 noundef) local_unnamed_addr #3

declare dso_local %struct.x509_st* @X509_STORE_CTX_get0_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @psk_key2bn(i8* noundef %pskkey, i8* noundef %psk, i32 noundef %max_psk_len) unnamed_addr #8 {
entry:
  %bn = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %bn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store %struct.bignum_st* null, %struct.bignum_st** %bn, align 8, !tbaa !7
  %call = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %bn, i8* noundef %pskkey) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.252, i64 0, i64 0), i8* noundef %pskkey) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !7
  %call2 = call i32 @BN_num_bits(%struct.bignum_st* noundef %2) #16
  %add = add nsw i32 %call2, 7
  %div = sdiv i32 %add, 8
  %cmp = icmp sgt i32 %div, %max_psk_len
  br i1 %cmp, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %4 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !7
  %call4 = call i32 @BN_num_bits(%struct.bignum_st* noundef %4) #16
  %add5 = add nsw i32 %call4, 7
  %div6 = sdiv i32 %add5, 8
  %call7 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.253, i64 0, i64 0), i32 noundef %max_psk_len, i32 noundef %div6) #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %5 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !7
  %call9 = call i32 @BN_bn2bin(%struct.bignum_st* noundef %5, i8* noundef %psk) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %call9, %if.end8 ], [ 0, %if.then ]
  %.sink = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %.sink) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.0
}

declare dso_local i32 @BN_hex2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_bn2bin(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #3

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin nounwind "no-builtins" }
attributes #17 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #18 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #19 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !4, i64 8}
!13 = !{!"app_verify_arg", !8, i64 0, !4, i64 8}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = !{!13, !8, i64 0}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = !{!26, !4, i64 8}
!26 = !{!"protocol_versions", !8, i64 0, !4, i64 8}

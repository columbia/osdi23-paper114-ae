; ModuleID = 'apps/s_server.c'
source_filename = "apps/s_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.tlsextctx_st = type { i8*, %struct.bio_st*, i32 }
%struct.bio_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.verify_options_st = type { i32, i32, i32, i32 }
%struct.tlsextstatusctx_st = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.ssl_session_st = type opaque
%struct.srpsrvparm_st = type { i8*, %struct.SRP_VBASE_st*, %struct.SRP_user_pwd_st* }
%struct.SRP_VBASE_st = type { %struct.stack_st_SRP_user_pwd*, %struct.stack_st_SRP_gN_cache*, i8*, %struct.bignum_st*, %struct.bignum_st* }
%struct.stack_st_SRP_user_pwd = type opaque
%struct.stack_st_SRP_gN_cache = type opaque
%struct.bignum_st = type opaque
%struct.SRP_user_pwd_st = type { i8*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8* }
%struct.simple_ssl_session_st = type { i8*, i32, i8*, i32, %struct.simple_ssl_session_st* }
%struct.ssl_excert_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.tlsextnextprotoctx_st = type { i8*, i64 }
%struct.tlsextalpnctx_st = type { i8*, i64 }
%struct.ssl_method_st = type opaque
%struct.ssl_conf_ctx_st = type opaque
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.engine_st = type opaque
%struct.stack_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.x509_st = type opaque
%struct.X509_crl_st = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.bio_method_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_X509_NAME = type opaque
%struct.ssl_st = type opaque
%struct.ssl_cipher_st = type opaque
%struct.x509_store_ctx_st = type opaque
%struct.ocsp_response_st = type opaque
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.stack_st_SSL_CIPHER = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.x509_store_st = type opaque
%struct.X509_name_st = type opaque
%struct.x509_object_st = type opaque
%struct.ocsp_cert_id_st = type opaque
%struct.evp_md_st = type opaque
%struct.ocsp_request_st = type opaque
%struct.ocsp_one_request_st = type opaque
%struct.X509_extension_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.srtp_protection_profile_st = type { i8*, i64 }
%union.bio_addr_st = type opaque

@psk_key = dso_local local_unnamed_addr global i8* null, align 8
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ssl_config\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Configure SSL_CTX using the given configuration value\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"trace protocol messages\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Network options:\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"TCP/IP port to listen on for connections (default is 4433)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.13 = private unnamed_addr constant [79 x i8] c"TCP/IP optional host and port to listen on for connections (default is *:4433)\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Unix domain socket to accept on\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"For -unix, unlink existing socket first\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Use IPv4 only\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Use IPv6 only\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"Identity options:\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Set session ID context\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"CAfile\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"PEM format file of CA's\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"CApath\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"PEM format directory of CA's\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"CAstore\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"URI to store of CA's\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"no-CAfile\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"Do not load the default certificates file\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"no-CApath\00", align 1
@.str.34 = private unnamed_addr constant [65 x i8] c"Do not load certificates from the default certificates directory\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"no-CAstore\00", align 1
@.str.36 = private unnamed_addr constant [65 x i8] c"Do not load certificates from the default certificates store URI\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"nocert\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"Don't use any certificates (Anon-DH)\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"Turn on peer certificate verification\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"Verify\00", align 1
@.str.42 = private unnamed_addr constant [56 x i8] c"Turn on peer certificate verification, must have a cert\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"nameopt\00", align 1
@.str.44 = private unnamed_addr constant [49 x i8] c"Certificate subject/issuer name printing options\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"Server certificate file to use; default server.pem\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"cert2\00", align 1
@.str.48 = private unnamed_addr constant [60 x i8] c"Certificate file to use for servername; default server2.pem\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"certform\00", align 1
@.str.50 = private unnamed_addr constant [60 x i8] c"Server certificate file format (PEM/DER/P12); has no effect\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"cert_chain\00", align 1
@.str.52 = private unnamed_addr constant [44 x i8] c"Server certificate chain file in PEM format\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"build_chain\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"Build server certificate chain\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"serverinfo\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"PEM serverinfo file for certificate\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.58 = private unnamed_addr constant [65 x i8] c"Private key file to use; default is -cert file or elseserver.pem\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"key2\00", align 1
@.str.60 = private unnamed_addr constant [57 x i8] c"-Private Key file to use for servername if not in -cert2\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"keyform\00", align 1
@.str.62 = private unnamed_addr constant [42 x i8] c"Key format (ENGINE, other values ignored)\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.64 = private unnamed_addr constant [45 x i8] c"Private key and cert file pass phrase source\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"dcert\00", align 1
@.str.66 = private unnamed_addr constant [56 x i8] c"Second server certificate file to use (usually for DSA)\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"dcertform\00", align 1
@.str.68 = private unnamed_addr constant [67 x i8] c"Second server certificate file format (PEM/DER/P12); has no effect\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"dcert_chain\00", align 1
@.str.70 = private unnamed_addr constant [51 x i8] c"second server certificate chain file in PEM format\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"dkey\00", align 1
@.str.72 = private unnamed_addr constant [49 x i8] c"Second private key file to use (usually for DSA)\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"dkeyform\00", align 1
@.str.74 = private unnamed_addr constant [54 x i8] c"Second key file format (ENGINE, other values ignored)\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"dpass\00", align 1
@.str.76 = private unnamed_addr constant [52 x i8] c"Second private key and cert file pass phrase source\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"dhparam\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"DH parameters file to use\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"servername\00", align 1
@.str.80 = private unnamed_addr constant [38 x i8] c"Servername for HostName TLS extension\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"servername_fatal\00", align 1
@.str.82 = private unnamed_addr constant [64 x i8] c"On servername mismatch send fatal alert (default warning alert)\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"nbio_test\00", align 1
@.str.84 = private unnamed_addr constant [36 x i8] c"Test with the non-blocking test bio\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"crlf\00", align 1
@.str.86 = private unnamed_addr constant [35 x i8] c"Convert LF from terminal into CRLF\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"No server output\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"no_resume_ephemeral\00", align 1
@.str.90 = private unnamed_addr constant [56 x i8] c"Disable caching and tickets if ephemeral (EC)DH is used\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"www\00", align 1
@.str.92 = private unnamed_addr constant [40 x i8] c"Respond to a 'GET /' with a status page\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"WWW\00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c"Respond to a 'GET with the file ./path\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"ignore_unexpected_eof\00", align 1
@.str.96 = private unnamed_addr constant [58 x i8] c"Do not treat lack of close_notify from a peer as an error\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"tlsextdebug\00", align 1
@.str.98 = private unnamed_addr constant [40 x i8] c"Hex dump of all TLS extensions received\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.100 = private unnamed_addr constant [43 x i8] c"Like -WWW but ./path includes HTTP headers\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"id_prefix\00", align 1
@.str.102 = private unnamed_addr constant [45 x i8] c"Generate SSL/TLS session IDs prefixed by arg\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"keymatexport\00", align 1
@.str.104 = private unnamed_addr constant [35 x i8] c"Export keying material using label\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"keymatexportlen\00", align 1
@.str.106 = private unnamed_addr constant [48 x i8] c"Export len bytes of keying material; default 20\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"CRL\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"CRL file to use\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"CRLform\00", align 1
@.str.110 = private unnamed_addr constant [42 x i8] c"CRL file format (PEM or DER); default PEM\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"crl_download\00", align 1
@.str.112 = private unnamed_addr constant [66 x i8] c"Download CRLs from distribution points in certificate CDP entries\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"chainCAfile\00", align 1
@.str.114 = private unnamed_addr constant [43 x i8] c"CA file for certificate chain (PEM format)\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"chainCApath\00", align 1
@.str.116 = private unnamed_addr constant [64 x i8] c"use dir as certificate store path to build CA certificate chain\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"chainCAstore\00", align 1
@.str.118 = private unnamed_addr constant [59 x i8] c"use URI as certificate store to build CA certificate chain\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"verifyCAfile\00", align 1
@.str.120 = private unnamed_addr constant [50 x i8] c"CA file for certificate verification (PEM format)\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"verifyCApath\00", align 1
@.str.122 = private unnamed_addr constant [59 x i8] c"use dir as certificate store path to verify CA certificate\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"verifyCAstore\00", align 1
@.str.124 = private unnamed_addr constant [54 x i8] c"use URI as certificate store to verify CA certificate\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"no_cache\00", align 1
@.str.126 = private unnamed_addr constant [22 x i8] c"Disable session cache\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"ext_cache\00", align 1
@.str.128 = private unnamed_addr constant [54 x i8] c"Disable internal cache, set up and use external cache\00", align 1
@.str.129 = private unnamed_addr constant [20 x i8] c"verify_return_error\00", align 1
@.str.130 = private unnamed_addr constant [39 x i8] c"Close connection on verification error\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"verify_quiet\00", align 1
@.str.132 = private unnamed_addr constant [38 x i8] c"No verify output except verify errors\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"ign_eof\00", align 1
@.str.134 = private unnamed_addr constant [39 x i8] c"Ignore input EOF (default when -quiet)\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"no_ign_eof\00", align 1
@.str.136 = private unnamed_addr constant [24 x i8] c"Do not ignore input EOF\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"OCSP options:\0A\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.139 = private unnamed_addr constant [39 x i8] c"Request certificate status from server\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"status_verbose\00", align 1
@.str.141 = private unnamed_addr constant [49 x i8] c"Print more output in certificate status callback\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"status_timeout\00", align 1
@.str.143 = private unnamed_addr constant [33 x i8] c"Status request responder timeout\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"status_url\00", align 1
@.str.145 = private unnamed_addr constant [28 x i8] c"Status request fallback URL\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@.str.147 = private unnamed_addr constant [72 x i8] c"[http[s]://]host[:port][/path] of HTTP(S) proxy to use; path is ignored\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"no_proxy\00", align 1
@.str.149 = private unnamed_addr constant [58 x i8] c"List of addresses of servers not to use HTTP(S) proxy for\00", align 1
@OPT_MORE_STR = external dso_local constant [0 x i8], align 1
@.str.150 = private unnamed_addr constant [73 x i8] c"Default from environment variable 'no_proxy', else 'NO_PROXY', else none\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"status_file\00", align 1
@.str.152 = private unnamed_addr constant [42 x i8] c"File containing DER encoded OCSP Response\00", align 1
@.str.153 = private unnamed_addr constant [16 x i8] c"Debug options:\0A\00", align 1
@.str.154 = private unnamed_addr constant [15 x i8] c"security_debug\00", align 1
@.str.155 = private unnamed_addr constant [45 x i8] c"Print output from SSL/TLS security framework\00", align 1
@.str.156 = private unnamed_addr constant [23 x i8] c"security_debug_verbose\00", align 1
@.str.157 = private unnamed_addr constant [50 x i8] c"Print more output from SSL/TLS security framework\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"brief\00", align 1
@.str.159 = private unnamed_addr constant [58 x i8] c"Restrict output to brief summary of connection parameters\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@.str.161 = private unnamed_addr constant [61 x i8] c"act as an echo server that sends back received text reversed\00", align 1
@.str.162 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.163 = private unnamed_addr constant [18 x i8] c"Print more output\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.165 = private unnamed_addr constant [23 x i8] c"Show protocol messages\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"msgfile\00", align 1
@.str.167 = private unnamed_addr constant [57 x i8] c"File to send output of -msg or -trace, instead of stdout\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.169 = private unnamed_addr constant [21 x i8] c"Print the SSL states\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.171 = private unnamed_addr constant [29 x i8] c"Operate in asynchronous mode\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"max_pipelines\00", align 1
@.str.173 = private unnamed_addr constant [55 x i8] c"Maximum number of encrypt/decrypt pipelines to be used\00", align 1
@.str.174 = private unnamed_addr constant [8 x i8] c"naccept\00", align 1
@.str.175 = private unnamed_addr constant [33 x i8] c"Terminate after #num connections\00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"keylogfile\00", align 1
@.str.177 = private unnamed_addr constant [26 x i8] c"Write TLS secrets to file\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"nbio\00", align 1
@.str.179 = private unnamed_addr constant [20 x i8] c"Use non-blocking IO\00", align 1
@.str.180 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.181 = private unnamed_addr constant [16 x i8] c"Enable timeouts\00", align 1
@.str.182 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@.str.183 = private unnamed_addr constant [19 x i8] c"Set link-layer MTU\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"read_buf\00", align 1
@.str.185 = private unnamed_addr constant [52 x i8] c"Default read buffer size to be used for connections\00", align 1
@.str.186 = private unnamed_addr constant [16 x i8] c"split_send_frag\00", align 1
@.str.187 = private unnamed_addr constant [46 x i8] c"Size used to split data for encrypt pipelines\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"max_send_frag\00", align 1
@.str.189 = private unnamed_addr constant [29 x i8] c"Maximum Size of send frames \00", align 1
@.str.190 = private unnamed_addr constant [26 x i8] c"Server identity options:\0A\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"psk_identity\00", align 1
@.str.192 = private unnamed_addr constant [23 x i8] c"PSK identity to expect\00", align 1
@.str.193 = private unnamed_addr constant [9 x i8] c"psk_hint\00", align 1
@.str.194 = private unnamed_addr constant [25 x i8] c"PSK identity hint to use\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"psk\00", align 1
@.str.196 = private unnamed_addr constant [24 x i8] c"PSK in hex (without 0x)\00", align 1
@.str.197 = private unnamed_addr constant [12 x i8] c"psk_session\00", align 1
@.str.198 = private unnamed_addr constant [34 x i8] c"File to read PSK SSL session from\00", align 1
@.str.199 = private unnamed_addr constant [9 x i8] c"srpvfile\00", align 1
@.str.200 = private unnamed_addr constant [39 x i8] c"(deprecated) The verifier file for SRP\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"srpuserseed\00", align 1
@.str.202 = private unnamed_addr constant [51 x i8] c"(deprecated) A seed string for a default user salt\00", align 1
@.str.203 = private unnamed_addr constant [31 x i8] c"Protocol and version options:\0A\00", align 1
@.str.204 = private unnamed_addr constant [15 x i8] c"max_early_data\00", align 1
@.str.205 = private unnamed_addr constant [67 x i8] c"The maximum number of bytes of early data as advertised in tickets\00", align 1
@.str.206 = private unnamed_addr constant [20 x i8] c"recv_max_early_data\00", align 1
@.str.207 = private unnamed_addr constant [55 x i8] c"The maximum number of bytes of early data (hard limit)\00", align 1
@.str.208 = private unnamed_addr constant [11 x i8] c"early_data\00", align 1
@.str.209 = private unnamed_addr constant [27 x i8] c"Attempt to read early data\00", align 1
@.str.210 = private unnamed_addr constant [12 x i8] c"num_tickets\00", align 1
@.str.211 = private unnamed_addr constant [77 x i8] c"The number of TLSv1.3 session tickets that a server will automatically issue\00", align 1
@.str.212 = private unnamed_addr constant [12 x i8] c"anti_replay\00", align 1
@.str.213 = private unnamed_addr constant [43 x i8] c"Switch on anti-replay protection (default)\00", align 1
@.str.214 = private unnamed_addr constant [15 x i8] c"no_anti_replay\00", align 1
@.str.215 = private unnamed_addr constant [34 x i8] c"Switch off anti-replay protection\00", align 1
@.str.216 = private unnamed_addr constant [20 x i8] c"http_server_binmode\00", align 1
@.str.217 = private unnamed_addr constant [73 x i8] c"opening files in binary mode when acting as http server (-WWW and -HTTP)\00", align 1
@.str.218 = private unnamed_addr constant [12 x i8] c"no_ca_names\00", align 1
@.str.219 = private unnamed_addr constant [31 x i8] c"Disable TLS Extension CA Names\00", align 1
@.str.220 = private unnamed_addr constant [10 x i8] c"stateless\00", align 1
@.str.221 = private unnamed_addr constant [24 x i8] c"Require TLSv1.3 cookies\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c"tls1\00", align 1
@.str.223 = private unnamed_addr constant [16 x i8] c"Just talk TLSv1\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"tls1_1\00", align 1
@.str.225 = private unnamed_addr constant [18 x i8] c"Just talk TLSv1.1\00", align 1
@.str.226 = private unnamed_addr constant [7 x i8] c"tls1_2\00", align 1
@.str.227 = private unnamed_addr constant [18 x i8] c"just talk TLSv1.2\00", align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"tls1_3\00", align 1
@.str.229 = private unnamed_addr constant [18 x i8] c"just talk TLSv1.3\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"dtls\00", align 1
@.str.231 = private unnamed_addr constant [21 x i8] c"Use any DTLS version\00", align 1
@.str.232 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.233 = private unnamed_addr constant [61 x i8] c"Listen for a DTLS ClientHello with a cookie and then connect\00", align 1
@.str.234 = private unnamed_addr constant [6 x i8] c"dtls1\00", align 1
@.str.235 = private unnamed_addr constant [17 x i8] c"Just talk DTLSv1\00", align 1
@.str.236 = private unnamed_addr constant [8 x i8] c"dtls1_2\00", align 1
@.str.237 = private unnamed_addr constant [19 x i8] c"Just talk DTLSv1.2\00", align 1
@.str.238 = private unnamed_addr constant [9 x i8] c"use_srtp\00", align 1
@.str.239 = private unnamed_addr constant [62 x i8] c"Offer SRTP key management with a colon-separated profile list\00", align 1
@.str.240 = private unnamed_addr constant [7 x i8] c"no_dhe\00", align 1
@.str.241 = private unnamed_addr constant [21 x i8] c"Disable ephemeral DH\00", align 1
@.str.242 = private unnamed_addr constant [13 x i8] c"nextprotoneg\00", align 1
@.str.243 = private unnamed_addr constant [74 x i8] c"Set the advertised protocols for the NPN extension (comma-separated list)\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"alpn\00", align 1
@.str.245 = private unnamed_addr constant [75 x i8] c"Set the advertised protocols for the ALPN extension (comma-separated list)\00", align 1
@.str.246 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.247 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.248 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.249 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.250 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.251 = private unnamed_addr constant [18 x i8] c"TLS/SSL options:\0A\00", align 1
@.str.252 = private unnamed_addr constant [8 x i8] c"no_ssl3\00", align 1
@.str.253 = private unnamed_addr constant [19 x i8] c"Just disable SSLv3\00", align 1
@.str.254 = private unnamed_addr constant [8 x i8] c"no_tls1\00", align 1
@.str.255 = private unnamed_addr constant [19 x i8] c"Just disable TLSv1\00", align 1
@.str.256 = private unnamed_addr constant [10 x i8] c"no_tls1_1\00", align 1
@.str.257 = private unnamed_addr constant [21 x i8] c"Just disable TLSv1.1\00", align 1
@.str.258 = private unnamed_addr constant [10 x i8] c"no_tls1_2\00", align 1
@.str.259 = private unnamed_addr constant [21 x i8] c"Just disable TLSv1.2\00", align 1
@.str.260 = private unnamed_addr constant [10 x i8] c"no_tls1_3\00", align 1
@.str.261 = private unnamed_addr constant [21 x i8] c"Just disable TLSv1.3\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"bugs\00", align 1
@.str.263 = private unnamed_addr constant [30 x i8] c"Turn on SSL bug compatibility\00", align 1
@.str.264 = private unnamed_addr constant [8 x i8] c"no_comp\00", align 1
@.str.265 = private unnamed_addr constant [38 x i8] c"Disable SSL/TLS compression (default)\00", align 1
@.str.266 = private unnamed_addr constant [5 x i8] c"comp\00", align 1
@.str.267 = private unnamed_addr constant [30 x i8] c"Use SSL/TLS-level compression\00", align 1
@.str.268 = private unnamed_addr constant [10 x i8] c"no_ticket\00", align 1
@.str.269 = private unnamed_addr constant [35 x i8] c"Disable use of TLS session tickets\00", align 1
@.str.270 = private unnamed_addr constant [11 x i8] c"serverpref\00", align 1
@.str.271 = private unnamed_addr constant [32 x i8] c"Use server's cipher preferences\00", align 1
@.str.272 = private unnamed_addr constant [21 x i8] c"legacy_renegotiation\00", align 1
@.str.273 = private unnamed_addr constant [47 x i8] c"Enable use of legacy renegotiation (dangerous)\00", align 1
@.str.274 = private unnamed_addr constant [21 x i8] c"client_renegotiation\00", align 1
@.str.275 = private unnamed_addr constant [37 x i8] c"Allow client-initiated renegotiation\00", align 1
@.str.276 = private unnamed_addr constant [17 x i8] c"no_renegotiation\00", align 1
@.str.277 = private unnamed_addr constant [27 x i8] c"Disable all renegotiation.\00", align 1
@.str.278 = private unnamed_addr constant [22 x i8] c"legacy_server_connect\00", align 1
@.str.279 = private unnamed_addr constant [58 x i8] c"Allow initial connection to servers that don't support RI\00", align 1
@.str.280 = private unnamed_addr constant [23 x i8] c"no_resumption_on_reneg\00", align 1
@.str.281 = private unnamed_addr constant [45 x i8] c"Disallow session resumption on renegotiation\00", align 1
@.str.282 = private unnamed_addr constant [25 x i8] c"no_legacy_server_connect\00", align 1
@.str.283 = private unnamed_addr constant [61 x i8] c"Disallow initial connection to servers that don't support RI\00", align 1
@.str.284 = private unnamed_addr constant [17 x i8] c"allow_no_dhe_kex\00", align 1
@.str.285 = private unnamed_addr constant [62 x i8] c"In TLSv1.3 allow non-(ec)dhe based key exchange on resumption\00", align 1
@.str.286 = private unnamed_addr constant [18 x i8] c"prioritize_chacha\00", align 1
@.str.287 = private unnamed_addr constant [52 x i8] c"Prioritize ChaCha ciphers when preferred by clients\00", align 1
@.str.288 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.289 = private unnamed_addr constant [54 x i8] c"Enforce strict certificate checks as per TLS standard\00", align 1
@.str.290 = private unnamed_addr constant [8 x i8] c"sigalgs\00", align 1
@.str.291 = private unnamed_addr constant [55 x i8] c"Signature algorithms to support (colon-separated list)\00", align 1
@.str.292 = private unnamed_addr constant [15 x i8] c"client_sigalgs\00", align 1
@.str.293 = private unnamed_addr constant [93 x i8] c"Signature algorithms to support for client certificate authentication (colon-separated list)\00", align 1
@.str.294 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.295 = private unnamed_addr constant [43 x i8] c"Groups to advertise (colon-separated list)\00", align 1
@.str.296 = private unnamed_addr constant [7 x i8] c"curves\00", align 1
@.str.297 = private unnamed_addr constant [12 x i8] c"named_curve\00", align 1
@.str.298 = private unnamed_addr constant [49 x i8] c"Elliptic curve used for ECDHE (server-side only)\00", align 1
@.str.299 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.300 = private unnamed_addr constant [49 x i8] c"Specify TLSv1.2 and below cipher list to be used\00", align 1
@.str.301 = private unnamed_addr constant [13 x i8] c"ciphersuites\00", align 1
@.str.302 = private unnamed_addr constant [40 x i8] c"Specify TLSv1.3 ciphersuites to be used\00", align 1
@.str.303 = private unnamed_addr constant [13 x i8] c"min_protocol\00", align 1
@.str.304 = private unnamed_addr constant [48 x i8] c"Specify the minimum protocol version to be used\00", align 1
@.str.305 = private unnamed_addr constant [13 x i8] c"max_protocol\00", align 1
@.str.306 = private unnamed_addr constant [48 x i8] c"Specify the maximum protocol version to be used\00", align 1
@.str.307 = private unnamed_addr constant [15 x i8] c"record_padding\00", align 1
@.str.308 = private unnamed_addr constant [38 x i8] c"Block size to pad TLS 1.3 records to.\00", align 1
@.str.309 = private unnamed_addr constant [22 x i8] c"debug_broken_protocol\00", align 1
@.str.310 = private unnamed_addr constant [62 x i8] c"Perform all sorts of protocol violations for testing purposes\00", align 1
@.str.311 = private unnamed_addr constant [13 x i8] c"no_middlebox\00", align 1
@.str.312 = private unnamed_addr constant [38 x i8] c"Disable TLSv1.3 middlebox compat mode\00", align 1
@.str.313 = private unnamed_addr constant [7 x i8] c"no_etm\00", align 1
@.str.314 = private unnamed_addr constant [35 x i8] c"Disable Encrypt-then-Mac extension\00", align 1
@.str.315 = private unnamed_addr constant [21 x i8] c"Validation options:\0A\00", align 1
@.str.316 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.317 = private unnamed_addr constant [41 x i8] c"adds policy to the acceptable policy set\00", align 1
@.str.318 = private unnamed_addr constant [8 x i8] c"purpose\00", align 1
@.str.319 = private unnamed_addr constant [26 x i8] c"certificate chain purpose\00", align 1
@.str.320 = private unnamed_addr constant [12 x i8] c"verify_name\00", align 1
@.str.321 = private unnamed_addr constant [25 x i8] c"verification policy name\00", align 1
@.str.322 = private unnamed_addr constant [13 x i8] c"verify_depth\00", align 1
@.str.323 = private unnamed_addr constant [18 x i8] c"chain depth limit\00", align 1
@.str.324 = private unnamed_addr constant [11 x i8] c"auth_level\00", align 1
@.str.325 = private unnamed_addr constant [36 x i8] c"chain authentication security level\00", align 1
@.str.326 = private unnamed_addr constant [7 x i8] c"attime\00", align 1
@.str.327 = private unnamed_addr constant [24 x i8] c"verification epoch time\00", align 1
@.str.328 = private unnamed_addr constant [16 x i8] c"verify_hostname\00", align 1
@.str.329 = private unnamed_addr constant [23 x i8] c"expected peer hostname\00", align 1
@.str.330 = private unnamed_addr constant [13 x i8] c"verify_email\00", align 1
@.str.331 = private unnamed_addr constant [20 x i8] c"expected peer email\00", align 1
@.str.332 = private unnamed_addr constant [10 x i8] c"verify_ip\00", align 1
@.str.333 = private unnamed_addr constant [25 x i8] c"expected peer IP address\00", align 1
@.str.334 = private unnamed_addr constant [16 x i8] c"ignore_critical\00", align 1
@.str.335 = private unnamed_addr constant [37 x i8] c"permit unhandled critical extensions\00", align 1
@.str.336 = private unnamed_addr constant [14 x i8] c"issuer_checks\00", align 1
@.str.337 = private unnamed_addr constant [13 x i8] c"(deprecated)\00", align 1
@.str.338 = private unnamed_addr constant [10 x i8] c"crl_check\00", align 1
@.str.339 = private unnamed_addr constant [34 x i8] c"check leaf certificate revocation\00", align 1
@.str.340 = private unnamed_addr constant [14 x i8] c"crl_check_all\00", align 1
@.str.341 = private unnamed_addr constant [28 x i8] c"check full chain revocation\00", align 1
@.str.342 = private unnamed_addr constant [13 x i8] c"policy_check\00", align 1
@.str.343 = private unnamed_addr constant [30 x i8] c"perform rfc5280 policy checks\00", align 1
@.str.344 = private unnamed_addr constant [16 x i8] c"explicit_policy\00", align 1
@.str.345 = private unnamed_addr constant [44 x i8] c"set policy variable require-explicit-policy\00", align 1
@.str.346 = private unnamed_addr constant [12 x i8] c"inhibit_any\00", align 1
@.str.347 = private unnamed_addr constant [39 x i8] c"set policy variable inhibit-any-policy\00", align 1
@.str.348 = private unnamed_addr constant [12 x i8] c"inhibit_map\00", align 1
@.str.349 = private unnamed_addr constant [43 x i8] c"set policy variable inhibit-policy-mapping\00", align 1
@.str.350 = private unnamed_addr constant [12 x i8] c"x509_strict\00", align 1
@.str.351 = private unnamed_addr constant [47 x i8] c"disable certificate compatibility work-arounds\00", align 1
@.str.352 = private unnamed_addr constant [13 x i8] c"extended_crl\00", align 1
@.str.353 = private unnamed_addr constant [29 x i8] c"enable extended CRL features\00", align 1
@.str.354 = private unnamed_addr constant [11 x i8] c"use_deltas\00", align 1
@.str.355 = private unnamed_addr constant [15 x i8] c"use delta CRLs\00", align 1
@.str.356 = private unnamed_addr constant [13 x i8] c"policy_print\00", align 1
@.str.357 = private unnamed_addr constant [36 x i8] c"print policy processing diagnostics\00", align 1
@.str.358 = private unnamed_addr constant [13 x i8] c"check_ss_sig\00", align 1
@.str.359 = private unnamed_addr constant [30 x i8] c"check root CA self-signatures\00", align 1
@.str.360 = private unnamed_addr constant [14 x i8] c"trusted_first\00", align 1
@.str.361 = private unnamed_addr constant [35 x i8] c"search trust store first (default)\00", align 1
@.str.362 = private unnamed_addr constant [16 x i8] c"suiteB_128_only\00", align 1
@.str.363 = private unnamed_addr constant [26 x i8] c"Suite B 128-bit-only mode\00", align 1
@.str.364 = private unnamed_addr constant [11 x i8] c"suiteB_128\00", align 1
@.str.365 = private unnamed_addr constant [49 x i8] c"Suite B 128-bit mode allowing 192-bit algorithms\00", align 1
@.str.366 = private unnamed_addr constant [11 x i8] c"suiteB_192\00", align 1
@.str.367 = private unnamed_addr constant [26 x i8] c"Suite B 192-bit-only mode\00", align 1
@.str.368 = private unnamed_addr constant [14 x i8] c"partial_chain\00", align 1
@.str.369 = private unnamed_addr constant [55 x i8] c"accept chains anchored by intermediate trust-store CAs\00", align 1
@.str.370 = private unnamed_addr constant [14 x i8] c"no_alt_chains\00", align 1
@.str.371 = private unnamed_addr constant [14 x i8] c"no_check_time\00", align 1
@.str.372 = private unnamed_addr constant [33 x i8] c"ignore certificate validity time\00", align 1
@.str.373 = private unnamed_addr constant [18 x i8] c"allow_proxy_certs\00", align 1
@.str.374 = private unnamed_addr constant [36 x i8] c"allow the use of proxy certificates\00", align 1
@.str.375 = private unnamed_addr constant [31 x i8] c"Extended certificate options:\0A\00", align 1
@.str.376 = private unnamed_addr constant [5 x i8] c"xkey\00", align 1
@.str.377 = private unnamed_addr constant [30 x i8] c"key for Extended certificates\00", align 1
@.str.378 = private unnamed_addr constant [6 x i8] c"xcert\00", align 1
@.str.379 = private unnamed_addr constant [31 x i8] c"cert for Extended certificates\00", align 1
@.str.380 = private unnamed_addr constant [7 x i8] c"xchain\00", align 1
@.str.381 = private unnamed_addr constant [32 x i8] c"chain for Extended certificates\00", align 1
@.str.382 = private unnamed_addr constant [13 x i8] c"xchain_build\00", align 1
@.str.383 = private unnamed_addr constant [54 x i8] c"build certificate chain for the extended certificates\00", align 1
@.str.384 = private unnamed_addr constant [10 x i8] c"xcertform\00", align 1
@.str.385 = private unnamed_addr constant [60 x i8] c"format of Extended certificate (PEM/DER/P12); has no effect\00", align 1
@.str.386 = private unnamed_addr constant [9 x i8] c"xkeyform\00", align 1
@.str.387 = private unnamed_addr constant [66 x i8] c"format of Extended certificate's key (DER/PEM/P12); has no effect\00", align 1
@.str.388 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.389 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.390 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.391 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.392 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.393 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.394 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@s_server_options = dso_local constant [207 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 84, i32 115, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 64, i32 45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 2, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 6, i32 112, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 5, i32 115, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 7, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i32 4, i32 45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 13, i32 115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 41, i32 60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 31, i32 47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i32 45, i32 58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 42, i32 45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 32, i32 45, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i32 46, i32 45, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 30, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 10, i32 110, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 12, i32 110, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.42, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 11, i32 115, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.44, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 14, i32 60, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 105, i32 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.48, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 18, i32 70, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.50, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i32 22, i32 60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.52, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 40, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.54, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i32 17, i32 115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i32 19, i32 115, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.58, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 106, i32 60, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.60, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i32 20, i32 102, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.62, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 21, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.64, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i32 25, i32 60, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.66, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 24, i32 70, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.68, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i32 0, i32 0), i32 29, i32 60, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.70, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i32 28, i32 60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.72, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i32 26, i32 70, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.74, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i32 27, i32 115, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.76, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i32 23, i32 60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.78, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i32 103, i32 115, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.80, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i32 0, i32 0), i32 104, i32 45, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.82, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i32 50, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.84, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i32 68, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.86, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i32 69, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.88, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.89, i32 0, i32 0), i32 72, i32 45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.90, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i32 80, i32 45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.92, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i32 81, i32 45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.94, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.95, i32 0, i32 0), i32 123, i32 45, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.96, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0), i32 54, i32 45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.98, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), i32 82, i32 45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.100, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i32 0, i32 0), i32 102, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.102, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i32 0, i32 0), i32 111, i32 115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.104, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.105, i32 0, i32 0), i32 112, i32 112, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.106, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i32 15, i32 60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.108, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i32 0, i32 0), i32 37, i32 70, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.110, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.112, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i32 0, i32 0), i32 43, i32 60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.114, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i32 0, i32 0), i32 33, i32 47, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.116, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i32 0, i32 0), i32 47, i32 58, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.118, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.119, i32 0, i32 0), i32 44, i32 60, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.120, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.121, i32 0, i32 0), i32 34, i32 47, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.122, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.123, i32 0, i32 0), i32 48, i32 58, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.124, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.125, i32 0, i32 0), i32 35, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.126, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.127, i32 0, i32 0), i32 36, i32 45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.128, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.129, i32 0, i32 0), i32 38, i32 45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.130, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.131, i32 0, i32 0), i32 39, i32 45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.132, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.133, i32 0, i32 0), i32 51, i32 45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.134, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.135, i32 0, i32 0), i32 52, i32 45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.136, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.137, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.138, i32 0, i32 0), i32 55, i32 45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.139, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.140, i32 0, i32 0), i32 56, i32 45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.141, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.142, i32 0, i32 0), i32 57, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.143, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.144, i32 0, i32 0), i32 60, i32 115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.145, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i32 0, i32 0), i32 58, i32 115, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.147, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.148, i32 0, i32 0), i32 59, i32 115, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.149, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_MORE_STR, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.150, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i32 0, i32 0), i32 61, i32 60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.152, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.153, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.154, i32 0, i32 0), i32 65, i32 45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.155, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.156, i32 0, i32 0), i32 66, i32 45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.157, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.158, i32 0, i32 0), i32 70, i32 45, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.159, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.160, i32 0, i32 0), i32 79, i32 45, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.161, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.162, i32 0, i32 0), i32 53, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.163, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.164, i32 0, i32 0), i32 62, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.165, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.166, i32 0, i32 0), i32 63, i32 62, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.167, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i32 0, i32 0), i32 67, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.169, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.170, i32 0, i32 0), i32 83, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.171, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.172, i32 0, i32 0), i32 87, i32 112, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.173, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.174, i32 0, i32 0), i32 9, i32 112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.175, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.176, i32 0, i32 0), i32 113, i32 62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.177, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.178, i32 0, i32 0), i32 49, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.179, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.180, i32 0, i32 0), i32 98, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.181, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.182, i32 0, i32 0), i32 99, i32 112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.183, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.184, i32 0, i32 0), i32 88, i32 112, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.185, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.186, i32 0, i32 0), i32 86, i32 112, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.187, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.188, i32 0, i32 0), i32 85, i32 112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.189, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.190, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.191, i32 0, i32 0), i32 73, i32 115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.192, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.193, i32 0, i32 0), i32 74, i32 115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.194, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.195, i32 0, i32 0), i32 75, i32 115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.196, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i32 0, i32 0), i32 76, i32 60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.198, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.199, i32 0, i32 0), i32 77, i32 60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.200, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.201, i32 0, i32 0), i32 78, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.202, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.203, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.204, i32 0, i32 0), i32 114, i32 110, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.205, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.206, i32 0, i32 0), i32 115, i32 110, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.207, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.208, i32 0, i32 0), i32 116, i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.209, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.210, i32 0, i32 0), i32 117, i32 110, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.211, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.212, i32 0, i32 0), i32 118, i32 45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.213, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.214, i32 0, i32 0), i32 119, i32 45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.215, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.216, i32 0, i32 0), i32 121, i32 45, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.217, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.218, i32 0, i32 0), i32 122, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.219, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.220, i32 0, i32 0), i32 101, i32 45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.221, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.222, i32 0, i32 0), i32 93, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.223, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.224, i32 0, i32 0), i32 92, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.225, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.226, i32 0, i32 0), i32 91, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.227, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.228, i32 0, i32 0), i32 90, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.229, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.230, i32 0, i32 0), i32 94, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.231, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.232, i32 0, i32 0), i32 100, i32 45, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.233, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.234, i32 0, i32 0), i32 95, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.235, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.236, i32 0, i32 0), i32 96, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.237, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.238, i32 0, i32 0), i32 110, i32 115, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.239, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.240, i32 0, i32 0), i32 71, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.241, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.242, i32 0, i32 0), i32 107, i32 115, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.243, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.244, i32 0, i32 0), i32 108, i32 115, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.245, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.246, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.247, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.248, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.249, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.250, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.251, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.252, i32 0, i32 0), i32 3001, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.253, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.254, i32 0, i32 0), i32 3002, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.255, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.256, i32 0, i32 0), i32 3003, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.257, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.258, i32 0, i32 0), i32 3004, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.259, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.260, i32 0, i32 0), i32 3005, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.261, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.262, i32 0, i32 0), i32 3006, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.263, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.264, i32 0, i32 0), i32 3007, i32 45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.265, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.266, i32 0, i32 0), i32 3027, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.267, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.268, i32 0, i32 0), i32 3008, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.269, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.270, i32 0, i32 0), i32 3009, i32 45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.271, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.272, i32 0, i32 0), i32 3010, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.273, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.274, i32 0, i32 0), i32 3011, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.275, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.276, i32 0, i32 0), i32 3030, i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.277, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.278, i32 0, i32 0), i32 3012, i32 45, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.279, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.280, i32 0, i32 0), i32 3013, i32 45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.281, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.282, i32 0, i32 0), i32 3014, i32 45, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.283, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.284, i32 0, i32 0), i32 3015, i32 45, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.285, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.286, i32 0, i32 0), i32 3016, i32 45, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.287, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.288, i32 0, i32 0), i32 3017, i32 45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.289, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.290, i32 0, i32 0), i32 3018, i32 115, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.291, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.292, i32 0, i32 0), i32 3019, i32 115, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.293, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.294, i32 0, i32 0), i32 3020, i32 115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.295, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.296, i32 0, i32 0), i32 3021, i32 115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.295, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.297, i32 0, i32 0), i32 3022, i32 115, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.298, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.299, i32 0, i32 0), i32 3023, i32 115, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.300, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.301, i32 0, i32 0), i32 3024, i32 115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.302, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.303, i32 0, i32 0), i32 3028, i32 115, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.304, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.305, i32 0, i32 0), i32 3029, i32 115, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.306, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.307, i32 0, i32 0), i32 3025, i32 115, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.308, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.309, i32 0, i32 0), i32 3026, i32 45, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.310, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.311, i32 0, i32 0), i32 3031, i32 45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.312, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.313, i32 0, i32 0), i32 3032, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.314, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.315, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.316, i32 0, i32 0), i32 2001, i32 115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.317, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.318, i32 0, i32 0), i32 2002, i32 115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.319, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.320, i32 0, i32 0), i32 2003, i32 115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.321, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.322, i32 0, i32 0), i32 2004, i32 110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.323, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.324, i32 0, i32 0), i32 2029, i32 110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.325, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.326, i32 0, i32 0), i32 2005, i32 77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.327, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.328, i32 0, i32 0), i32 2006, i32 115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.329, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.330, i32 0, i32 0), i32 2007, i32 115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.331, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.332, i32 0, i32 0), i32 2008, i32 115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.333, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.334, i32 0, i32 0), i32 2009, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.335, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.336, i32 0, i32 0), i32 2010, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.337, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.338, i32 0, i32 0), i32 2011, i32 45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.339, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.340, i32 0, i32 0), i32 2012, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.341, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.342, i32 0, i32 0), i32 2013, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.343, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.344, i32 0, i32 0), i32 2014, i32 45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.345, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.346, i32 0, i32 0), i32 2015, i32 45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.347, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.348, i32 0, i32 0), i32 2016, i32 45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.349, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.350, i32 0, i32 0), i32 2017, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.351, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.352, i32 0, i32 0), i32 2018, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.353, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.354, i32 0, i32 0), i32 2019, i32 45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.355, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.356, i32 0, i32 0), i32 2020, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.357, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.358, i32 0, i32 0), i32 2021, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.359, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.360, i32 0, i32 0), i32 2022, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.361, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.362, i32 0, i32 0), i32 2023, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.363, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.364, i32 0, i32 0), i32 2024, i32 45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.365, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.366, i32 0, i32 0), i32 2025, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.367, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.368, i32 0, i32 0), i32 2026, i32 45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.369, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.370, i32 0, i32 0), i32 2027, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.337, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.371, i32 0, i32 0), i32 2028, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.372, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.373, i32 0, i32 0), i32 2030, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.374, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.375, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.376, i32 0, i32 0), i32 1001, i32 60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.377, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.378, i32 0, i32 0), i32 1002, i32 60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.379, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.380, i32 0, i32 0), i32 1003, i32 60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.381, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.382, i32 0, i32 0), i32 1004, i32 45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.383, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.384, i32 0, i32 0), i32 1005, i32 70, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.385, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.386, i32 0, i32 0), i32 1006, i32 70, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.387, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.388, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.389, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.390, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.391, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.392, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.393, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.394, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@.str.395 = private unnamed_addr constant [5 x i8] c"4433\00", align 1
@.str.396 = private unnamed_addr constant [16 x i8] c"apps/s_server.c\00", align 1
@__const.s_server_main.tlsextcbp = private unnamed_addr constant %struct.tlsextctx_st { i8* null, %struct.bio_st* null, i32 1 }, align 8
@.str.397 = private unnamed_addr constant [11 x i8] c"server.pem\00", align 1
@.str.398 = private unnamed_addr constant [12 x i8] c"server2.pem\00", align 1
@local_argc = internal unnamed_addr global i32 0, align 4
@local_argv = internal unnamed_addr global i8** null, align 8
@ctx2 = internal unnamed_addr global %struct.ssl_ctx_st* null, align 8
@ctx = internal unnamed_addr global %struct.ssl_ctx_st* null, align 8
@s_nbio_test = internal unnamed_addr global i1 false, align 4
@s_nbio = internal unnamed_addr global i1 false, align 4
@www = internal unnamed_addr global i32 0, align 4
@bio_s_out = internal unnamed_addr global %struct.bio_st* null, align 8
@s_debug = internal unnamed_addr global i1 false, align 4
@s_msg = internal unnamed_addr global i32 0, align 4
@s_quiet = internal unnamed_addr global i1 false, align 4
@s_brief = internal unnamed_addr global i1 false, align 4
@async = internal unnamed_addr global i1 false, align 4
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.399 = private unnamed_addr constant [39 x i8] c"Cannot supply multiple protocol flags\0A\00", align 1
@.str.400 = private unnamed_addr constant [53 x i8] c"Cannot supply both a protocol flag and '-no_<prot>'\0A\00", align 1
@.str.401 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.402 = private unnamed_addr constant [43 x i8] c"%s: -port argument malformed or ambiguous\0A\00", align 1
@.str.403 = private unnamed_addr constant [45 x i8] c"%s: -accept argument malformed or ambiguous\0A\00", align 1
@verify_args = external dso_local local_unnamed_addr global %struct.verify_options_st, align 4
@.str.404 = private unnamed_addr constant [20 x i8] c"verify depth is %d\0A\00", align 1
@.str.405 = private unnamed_addr constant [47 x i8] c"verify depth is %d, must return a certificate\0A\00", align 1
@.str.406 = private unnamed_addr constant [31 x i8] c"%s: Memory allocation failure\0A\00", align 1
@s_ign_eof = internal unnamed_addr global i1 false, align 4
@s_tlsextdebug = internal unnamed_addr global i1 false, align 4
@tlscstatp = internal global %struct.tlsextstatusctx_st { i32 -1, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i32 0, i32 0 }, align 8
@.str.407 = private unnamed_addr constant [36 x i8] c"Error parsing -status_url argument\0A\00", align 1
@.str.408 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@bio_s_msg = internal unnamed_addr global %struct.bio_st* null, align 8
@s_crlf = internal unnamed_addr global i1 false, align 4
@psk_identity = internal unnamed_addr global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.450, i64 0, i64 0), align 8
@.str.409 = private unnamed_addr constant [23 x i8] c"Not a hex number '%s'\0A\00", align 1
@enable_timeouts = internal unnamed_addr global i1 false, align 4
@socket_mtu = internal unnamed_addr global i64 0, align 8
@dtlslisten = internal unnamed_addr global i1 false, align 4
@stateless = internal unnamed_addr global i1 false, align 4
@session_id_prefix = internal unnamed_addr global i8* null, align 8
@keymatexportlabel = internal unnamed_addr global i8* null, align 8
@keymatexportlen = internal unnamed_addr global i32 20, align 4
@.str.410 = private unnamed_addr constant [34 x i8] c"Invalid value for max_early_data\0A\00", align 1
@.str.411 = private unnamed_addr constant [39 x i8] c"Invalid value for recv_max_early_data\0A\00", align 1
@early_data = internal unnamed_addr global i1 false, align 4
@http_server_binmode = internal unnamed_addr global i1 false, align 1
@.str.412 = private unnamed_addr constant [42 x i8] c"Cannot supply -nextprotoneg with TLSv1.3\0A\00", align 1
@.str.413 = private unnamed_addr constant [41 x i8] c"Can't use -HTTP, -www or -WWW with DTLS\0A\00", align 1
@.str.414 = private unnamed_addr constant [32 x i8] c"Can only use -listen with DTLS\0A\00", align 1
@.str.415 = private unnamed_addr constant [35 x i8] c"Can only use --stateless with TLS\0A\00", align 1
@.str.416 = private unnamed_addr constant [47 x i8] c"Can't use unix sockets and datagrams together\0A\00", align 1
@.str.417 = private unnamed_addr constant [70 x i8] c"Can't use -early_data in combination with -www, -WWW, -HTTP, or -rev\0A\00", align 1
@.str.418 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@.str.419 = private unnamed_addr constant [31 x i8] c"server certificate private key\00", align 1
@.str.420 = private unnamed_addr constant [19 x i8] c"server certificate\00", align 1
@.str.421 = private unnamed_addr constant [25 x i8] c"server certificate chain\00", align 1
@.str.422 = private unnamed_addr constant [38 x i8] c"second server certificate private key\00", align 1
@.str.423 = private unnamed_addr constant [26 x i8] c"second server certificate\00", align 1
@.str.424 = private unnamed_addr constant [18 x i8] c"Error adding CRL\0A\00", align 1
@.str.425 = private unnamed_addr constant [31 x i8] c"second certificate private key\00", align 1
@.str.426 = private unnamed_addr constant [32 x i8] c"second server certificate chain\00", align 1
@.str.427 = private unnamed_addr constant [32 x i8] c"Error using configuration \22%s\22\0A\00", align 1
@.str.428 = private unnamed_addr constant [71 x i8] c"warning: id_prefix is too long, only one new session will be possible\0A\00", align 1
@.str.429 = private unnamed_addr constant [27 x i8] c"error setting 'id_prefix'\0A\00", align 1
@.str.430 = private unnamed_addr constant [21 x i8] c"id_prefix '%s' set.\0A\00", align 1
@.str.431 = private unnamed_addr constant [57 x i8] c"%s: Max send fragment size %u is out of permitted range\0A\00", align 1
@.str.432 = private unnamed_addr constant [59 x i8] c"%s: Split send fragment size %u is out of permitted range\0A\00", align 1
@.str.433 = private unnamed_addr constant [48 x i8] c"%s: Max pipelines %u is out of permitted range\0A\00", align 1
@.str.434 = private unnamed_addr constant [28 x i8] c"Error setting SRTP profile\0A\00", align 1
@.str.435 = private unnamed_addr constant [29 x i8] c"Error setting verify params\0A\00", align 1
@.str.436 = private unnamed_addr constant [31 x i8] c"Error loading store locations\0A\00", align 1
@.str.437 = private unnamed_addr constant [34 x i8] c"Setting secondary ctx parameters\0A\00", align 1
@.str.438 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.439 = private unnamed_addr constant [14 x i8] c"DH parameters\00", align 1
@.str.440 = private unnamed_addr constant [28 x i8] c"Setting temp DH parameters\0A\00", align 1
@.str.441 = private unnamed_addr constant [34 x i8] c"Using default temp DH parameters\0A\00", align 1
@.str.442 = private unnamed_addr constant [34 x i8] c"Error setting temp DH parameters\0A\00", align 1
@.str.443 = private unnamed_addr constant [40 x i8] c"PSK key given, setting server callback\0A\00", align 1
@.str.444 = private unnamed_addr constant [51 x i8] c"PSK warning: there is NO identity hint in TLSv1.3\0A\00", align 1
@.str.445 = private unnamed_addr constant [44 x i8] c"error setting PSK identity hint to context\0A\00", align 1
@.str.446 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.447 = private unnamed_addr constant [32 x i8] c"Can't open PSK session file %s\0A\00", align 1
@psksess = internal unnamed_addr global %struct.ssl_session_st* null, align 8
@.str.448 = private unnamed_addr constant [32 x i8] c"Can't read PSK session file %s\0A\00", align 1
@.str.449 = private unnamed_addr constant [34 x i8] c"error setting session id context\0A\00", align 1
@srp_callback_parm = internal global %struct.srpsrvparm_st zeroinitializer, align 8
@accept_socket = internal global i32 -1, align 4
@.str.450 = private unnamed_addr constant [16 x i8] c"Client_identity\00", align 1
@.str.451 = private unnamed_addr constant [42 x i8] c"ALPN protocols advertised by the client: \00", align 1
@.str.452 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.453 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.454 = private unnamed_addr constant [26 x i8] c"ALPN protocols selected: \00", align 1
@.str.455 = private unnamed_addr constant [15 x i8] c"psk_server_cb\0A\00", align 1
@.str.456 = private unnamed_addr constant [41 x i8] c"Error: client did not send PSK identity\0A\00", align 1
@.str.457 = private unnamed_addr constant [29 x i8] c"identity_len=%d identity=%s\0A\00", align 1
@.str.458 = private unnamed_addr constant [76 x i8] c"PSK warning: client identity not what we expected (got '%s' expected '%s')\0A\00", align 1
@.str.459 = private unnamed_addr constant [27 x i8] c"PSK client identity found\0A\00", align 1
@.str.460 = private unnamed_addr constant [42 x i8] c"Could not convert PSK key '%s' to buffer\0A\00", align 1
@.str.461 = private unnamed_addr constant [56 x i8] c"psk buffer of callback is too small (%d) for key (%ld)\0A\00", align 1
@.str.462 = private unnamed_addr constant [21 x i8] c"fetched PSK len=%ld\0A\00", align 1
@.str.463 = private unnamed_addr constant [30 x i8] c"Error in PSK server callback\0A\00", align 1
@tls13_aes128gcmsha256_id = external dso_local constant [0 x i8], align 1
@.str.464 = private unnamed_addr constant [36 x i8] c"Error finding suitable ciphersuite\0A\00", align 1
@.str.465 = private unnamed_addr constant [29 x i8] c"Hostname in TLS extension: \22\00", align 1
@.str.466 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.467 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.468 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.469 = private unnamed_addr constant [27 x i8] c"Switching server context.\0A\00", align 1
@.str.470 = private unnamed_addr constant [30 x i8] c"cert_status: callback called\0A\00", align 1
@.str.471 = private unnamed_addr constant [45 x i8] c"cert_status: Cannot open OCSP response file\0A\00", align 1
@.str.472 = private unnamed_addr constant [42 x i8] c"cert_status: Error reading OCSP response\0A\00", align 1
@.str.473 = private unnamed_addr constant [34 x i8] c"cert_status: ocsp response sent:\0A\00", align 1
@.str.474 = private unnamed_addr constant [34 x i8] c"cert_status: can't parse AIA URL\0A\00", align 1
@.str.475 = private unnamed_addr constant [26 x i8] c"cert_status: AIA URL: %s\0A\00", align 1
@.str.476 = private unnamed_addr constant [50 x i8] c"cert_status: no AIA and no default responder URL\0A\00", align 1
@.str.477 = private unnamed_addr constant [49 x i8] c"cert_status: Can't retrieve issuer certificate.\0A\00", align 1
@.str.478 = private unnamed_addr constant [39 x i8] c"cert_status: error querying responder\0A\00", align 1
@.str.479 = private unnamed_addr constant [33 x i8] c"%4ld items in the session cache\0A\00", align 1
@.str.480 = private unnamed_addr constant [38 x i8] c"%4ld client connects (SSL_connect())\0A\00", align 1
@.str.481 = private unnamed_addr constant [42 x i8] c"%4ld client renegotiates (SSL_connect())\0A\00", align 1
@.str.482 = private unnamed_addr constant [36 x i8] c"%4ld client connects that finished\0A\00", align 1
@.str.483 = private unnamed_addr constant [36 x i8] c"%4ld server accepts (SSL_accept())\0A\00", align 1
@.str.484 = private unnamed_addr constant [41 x i8] c"%4ld server renegotiates (SSL_accept())\0A\00", align 1
@.str.485 = private unnamed_addr constant [35 x i8] c"%4ld server accepts that finished\0A\00", align 1
@.str.486 = private unnamed_addr constant [25 x i8] c"%4ld session cache hits\0A\00", align 1
@.str.487 = private unnamed_addr constant [27 x i8] c"%4ld session cache misses\0A\00", align 1
@.str.488 = private unnamed_addr constant [29 x i8] c"%4ld session cache timeouts\0A\00", align 1
@.str.489 = private unnamed_addr constant [26 x i8] c"%4ld callback cache hits\0A\00", align 1
@.str.490 = private unnamed_addr constant [41 x i8] c"%4ld cache full overflows (%ld allowed)\0A\00", align 1
@.str.491 = private unnamed_addr constant [14 x i8] c"server buffer\00", align 1
@.str.492 = private unnamed_addr constant [27 x i8] c"Turned on non blocking io\0A\00", align 1
@.str.493 = private unnamed_addr constant [34 x i8] c"Error setting session id context\0A\00", align 1
@.str.494 = private unnamed_addr constant [31 x i8] c"Error clearing SSL connection\0A\00", align 1
@.str.495 = private unnamed_addr constant [37 x i8] c"MTU too small. Must be at least %ld\0A\00", align 1
@.str.496 = private unnamed_addr constant [19 x i8] c"Failed to set MTU\0A\00", align 1
@.str.497 = private unnamed_addr constant [22 x i8] c"Unable to create BIO\0A\00", align 1
@.str.498 = private unnamed_addr constant [26 x i8] c"Error reading early data\0A\00", align 1
@.str.499 = private unnamed_addr constant [22 x i8] c"Early data received:\0A\00", align 1
@.str.500 = private unnamed_addr constant [24 x i8] c"No early data received\0A\00", align 1
@.str.501 = private unnamed_addr constant [25 x i8] c"Early data was rejected\0A\00", align 1
@.str.502 = private unnamed_addr constant [20 x i8] c"\0AEnd of early data\0A\00", align 1
@.str.503 = private unnamed_addr constant [18 x i8] c"TIMEOUT occurred\0A\00", align 1
@.str.504 = private unnamed_addr constant [6 x i8] c"DONE\0A\00", align 1
@.str.505 = private unnamed_addr constant [24 x i8] c"SSL_do_handshake -> %d\0A\00", align 1
@.str.506 = private unnamed_addr constant [28 x i8] c"Failed to initiate request\0A\00", align 1
@sv_body.str = internal constant [28 x i8] c"Lets print some clear text\0A\00", align 16
@.str.507 = private unnamed_addr constant [28 x i8] c"LOOKUP renego during write\0A\00", align 1
@.str.508 = private unnamed_addr constant [21 x i8] c"Write BLOCK (Async)\0A\00", align 1
@.str.509 = private unnamed_addr constant [13 x i8] c"Write BLOCK\0A\00", align 1
@.str.510 = private unnamed_addr constant [7 x i8] c"ERROR\0A\00", align 1
@.str.511 = private unnamed_addr constant [27 x i8] c"LOOKUP renego during read\0A\00", align 1
@.str.512 = private unnamed_addr constant [20 x i8] c"Read BLOCK (Async)\0A\00", align 1
@.str.513 = private unnamed_addr constant [12 x i8] c"Read BLOCK\0A\00", align 1
@.str.514 = private unnamed_addr constant [19 x i8] c"shutting down SSL\0A\00", align 1
@.str.515 = private unnamed_addr constant [19 x i8] c"CONNECTION CLOSED\0A\00", align 1
@.str.516 = private unnamed_addr constant [20 x i8] c"Client certificate\0A\00", align 1
@.str.517 = private unnamed_addr constant [19 x i8] c"Shared ciphers:%s\0A\00", align 1
@.str.518 = private unnamed_addr constant [14 x i8] c"CIPHER is %s\0A\00", align 1
@.str.519 = private unnamed_addr constant [7 x i8] c"(NONE)\00", align 1
@.str.520 = private unnamed_addr constant [14 x i8] c"NEXTPROTO is \00", align 1
@.str.521 = private unnamed_addr constant [39 x i8] c"SRTP Extension negotiated, profile=%s\0A\00", align 1
@.str.522 = private unnamed_addr constant [19 x i8] c"Reused session-id\0A\00", align 1
@.str.523 = private unnamed_addr constant [37 x i8] c"Secure Renegotiation IS%s supported\0A\00", align 1
@.str.524 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.525 = private unnamed_addr constant [5 x i8] c" NOT\00", align 1
@.str.526 = private unnamed_addr constant [27 x i8] c"Renegotiation is DISABLED\0A\00", align 1
@.str.527 = private unnamed_addr constant [27 x i8] c"Keying material exporter:\0A\00", align 1
@.str.528 = private unnamed_addr constant [17 x i8] c"    Label: '%s'\0A\00", align 1
@.str.529 = private unnamed_addr constant [22 x i8] c"    Length: %i bytes\0A\00", align 1
@.str.530 = private unnamed_addr constant [11 x i8] c"export key\00", align 1
@.str.531 = private unnamed_addr constant [11 x i8] c"    Error\0A\00", align 1
@.str.532 = private unnamed_addr constant [22 x i8] c"    Keying material: \00", align 1
@.str.533 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.534 = private unnamed_addr constant [24 x i8] c"shutdown accept socket\0A\00", align 1
@.str.535 = private unnamed_addr constant [16 x i8] c"ERROR - memory\0A\00", align 1
@.str.536 = private unnamed_addr constant [27 x i8] c"ERROR - unable to connect\0A\00", align 1
@.str.537 = private unnamed_addr constant [25 x i8] c"LOOKUP during accept %s\0A\00", align 1
@.str.538 = private unnamed_addr constant [7 x i8] c"DELAY\0A\00", align 1
@.str.539 = private unnamed_addr constant [17 x i8] c"verify error:%s\0A\00", align 1
@.str.540 = private unnamed_addr constant [18 x i8] c"server www buffer\00", align 1
@.str.541 = private unnamed_addr constant [14 x i8] c"read R BLOCK\0A\00", align 1
@.str.542 = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.543 = private unnamed_addr constant [12 x i8] c"GET /stats \00", align 1
@.str.544 = private unnamed_addr constant [27 x i8] c"                          \00", align 1
@.str.545 = private unnamed_addr constant [11 x i8] c"GET /reneg\00", align 1
@.str.546 = private unnamed_addr constant [15 x i8] c"GET /renegcert\00", align 1
@.str.547 = private unnamed_addr constant [23 x i8] c"SSL_renegotiate -> %d\0A\00", align 1
@.str.548 = private unnamed_addr constant [30 x i8] c"SSL_do_handshake() Retval %d\0A\00", align 1
@.str.549 = private unnamed_addr constant [35 x i8] c"Error waiting for client response\0A\00", align 1
@.str.550 = private unnamed_addr constant [45 x i8] c"HTTP/1.0 200 ok\0D\0AContent-type: text/html\0D\0A\0D\0A\00", align 1
@.str.551 = private unnamed_addr constant [32 x i8] c"<HTML><BODY BGCOLOR=\22#ffffff\22>\0A\00", align 1
@.str.552 = private unnamed_addr constant [7 x i8] c"<pre>\0A\00", align 1
@.str.553 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.554 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.555 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.556 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.557 = private unnamed_addr constant [38 x i8] c"Ciphers supported in s_server binary\0A\00", align 1
@.str.558 = private unnamed_addr constant [13 x i8] c"%-11s:%-25s \00", align 1
@.str.559 = private unnamed_addr constant [49 x i8] c"---\0ACiphers common between both SSL end points:\0A\00", align 1
@.str.560 = private unnamed_addr constant [13 x i8] c"---\0AReused, \00", align 1
@.str.561 = private unnamed_addr constant [10 x i8] c"---\0ANew, \00", align 1
@.str.562 = private unnamed_addr constant [18 x i8] c"%s, Cipher is %s\0A\00", align 1
@.str.563 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.564 = private unnamed_addr constant [33 x i8] c"no client certificate available\0A\00", align 1
@.str.565 = private unnamed_addr constant [25 x i8] c"</pre></BODY></HTML>\0D\0A\0D\0A\00", align 1
@.str.566 = private unnamed_addr constant [6 x i8] c"GET /\00", align 1
@.str.567 = private unnamed_addr constant [46 x i8] c"HTTP/1.0 200 ok\0D\0AContent-type: text/plain\0D\0A\0D\0A\00", align 1
@.str.568 = private unnamed_addr constant [31 x i8] c"'%s' is an invalid file name\0D\0A\00", align 1
@.str.569 = private unnamed_addr constant [28 x i8] c"'%s' contains '..' or ':'\0D\0A\00", align 1
@.str.570 = private unnamed_addr constant [26 x i8] c"'%s' is an invalid path\0D\0A\00", align 1
@.str.571 = private unnamed_addr constant [22 x i8] c"'%s' is a directory\0D\0A\00", align 1
@.str.572 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.573 = private unnamed_addr constant [31 x i8] c"Error opening '%s' mode='%s'\0D\0A\00", align 1
@.str.574 = private unnamed_addr constant [9 x i8] c"FILE:%s\0A\00", align 1
@.str.575 = private unnamed_addr constant [6 x i8] c".html\00", align 1
@.str.576 = private unnamed_addr constant [5 x i8] c".php\00", align 1
@.str.577 = private unnamed_addr constant [5 x i8] c".htm\00", align 1
@.str.578 = private unnamed_addr constant [16 x i8] c"rwrite W BLOCK\0A\00", align 1
@.str.579 = private unnamed_addr constant [18 x i8] c"server rev buffer\00", align 1
@.str.580 = private unnamed_addr constant [20 x i8] c"CONNECTION FAILURE\0A\00", align 1
@.str.581 = private unnamed_addr constant [29 x i8] c"LOOKUP renego during accept\0A\00", align 1
@.str.582 = private unnamed_addr constant [24 x i8] c"CONNECTION ESTABLISHED\0A\00", align 1
@.str.583 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@.str.584 = private unnamed_addr constant [12 x i8] c"get session\00", align 1
@.str.585 = private unnamed_addr constant [24 x i8] c"Error encoding session\0A\00", align 1
@.str.586 = private unnamed_addr constant [19 x i8] c"get session buffer\00", align 1
@.str.587 = private unnamed_addr constant [40 x i8] c"Out of memory adding to external cache\0A\00", align 1
@.str.588 = private unnamed_addr constant [36 x i8] c"Unexpected session encoding length\0A\00", align 1
@first = internal unnamed_addr global %struct.simple_ssl_session_st* null, align 8
@.str.589 = private unnamed_addr constant [37 x i8] c"New session added to external cache\0A\00", align 1
@.str.590 = private unnamed_addr constant [27 x i8] c"Lookup session: cache hit\0A\00", align 1
@.str.591 = private unnamed_addr constant [28 x i8] c"Lookup session: cache miss\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s_server_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %exc = alloca %struct.ssl_excert_st*, align 8
  %s_chain = alloca %struct.stack_st_X509*, align 8
  %s_dchain = alloca %struct.stack_st_X509*, align 8
  %dpass = alloca i8*, align 8
  %pass = alloca i8*, align 8
  %s_cert_format = alloca i32, align 4
  %s_key_format = alloca i32, align 4
  %s_dcert_format = alloca i32, align 4
  %s_dkey_format = alloca i32, align 4
  %crl_format = alloca i32, align 4
  %host = alloca i8*, align 8
  %port = alloca i8*, align 8
  %tlsextcbp = alloca %struct.tlsextctx_st, align 8
  %next_proto = alloca %struct.tlsextnextprotoctx_st, align 8
  %alpn_ctx = alloca %struct.tlsextalpnctx_st, align 8
  %s_server_session_id_context = alloca i32, align 4
  %call = tail call %struct.ssl_method_st* @TLS_server_method() #12
  %0 = bitcast %struct.ssl_excert_st** %exc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.ssl_excert_st* null, %struct.ssl_excert_st** %exc, align 8, !tbaa !3
  %1 = bitcast %struct.stack_st_X509** %s_chain to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %s_chain, align 8, !tbaa !3
  %2 = bitcast %struct.stack_st_X509** %s_dchain to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #13
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %s_dchain, align 8, !tbaa !3
  %3 = bitcast i8** %dpass to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #13
  store i8* null, i8** %dpass, align 8, !tbaa !3
  %4 = bitcast i8** %pass to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  store i8* null, i8** %pass, align 8, !tbaa !3
  %5 = bitcast i32* %s_cert_format to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13
  store i32 0, i32* %s_cert_format, align 4, !tbaa !7
  %6 = bitcast i32* %s_key_format to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13
  store i32 0, i32* %s_key_format, align 4, !tbaa !7
  %7 = bitcast i32* %s_dcert_format to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13
  store i32 0, i32* %s_dcert_format, align 4, !tbaa !7
  %8 = bitcast i32* %s_dkey_format to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #13
  store i32 0, i32* %s_dkey_format, align 4, !tbaa !7
  %9 = bitcast i32* %crl_format to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #13
  store i32 0, i32* %crl_format, align 4, !tbaa !7
  %10 = bitcast i8** %host to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #13
  store i8* null, i8** %host, align 8, !tbaa !3
  %11 = bitcast i8** %port to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #13
  %call1 = tail call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.395, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 1009) #12
  store i8* %call1, i8** %port, align 8, !tbaa !3
  %12 = bitcast %struct.tlsextctx_st* %tlsextcbp to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %12, i8* noundef nonnull align 8 dereferenceable(24) bitcast (%struct.tlsextctx_st* @__const.s_server_main.tlsextcbp to i8*), i64 24, i1 false)
  %13 = bitcast %struct.tlsextnextprotoctx_st* %next_proto to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %14 = bitcast %struct.tlsextalpnctx_st* %alpn_ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %15 = bitcast i32* %s_server_session_id_context to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #13
  store i32 1, i32* %s_server_session_id_context, align 4, !tbaa !7
  store i32 %argc, i32* @local_argc, align 4, !tbaa !7
  store i8** %argv, i8*** @local_argv, align 8, !tbaa !3
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  store i1 false, i1* @s_nbio_test, align 4
  store i1 false, i1* @s_nbio, align 4
  store i32 0, i32* @www, align 4, !tbaa !7
  store %struct.bio_st* null, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  store i1 false, i1* @s_debug, align 4
  store i32 0, i32* @s_msg, align 4, !tbaa !7
  store i1 false, i1* @s_quiet, align 4
  store i1 false, i1* @s_brief, align 4
  store i1 false, i1* @async, align 4
  %call2 = tail call %struct.ssl_conf_ctx_st* @SSL_CONF_CTX_new() #12
  %call3 = tail call %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() #12
  %cmp = icmp eq %struct.ssl_conf_ctx_st* %call2, null
  %cmp4 = icmp eq %struct.X509_VERIFY_PARAM_st* %call3, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %end, label %if.end

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @SSL_CONF_CTX_set_flags(%struct.ssl_conf_ctx_st* noundef nonnull %call2, i32 noundef 9) #12
  %call6 = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([207 x %struct.options_st], [207 x %struct.options_st]* @s_server_options, i64 0, i64 0)) #12
  %extension_error = getelementptr inbounds %struct.tlsextctx_st, %struct.tlsextctx_st* %tlsextcbp, i64 0, i32 2
  %servername = getelementptr inbounds %struct.tlsextctx_st, %struct.tlsextctx_st* %tlsextcbp, i64 0, i32 0
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %16 = phi i8* [ null, %if.end ], [ %.be, %while.cond.backedge ]
  %meth.0 = phi %struct.ssl_method_st* [ %call, %if.end ], [ %meth.0.be, %while.cond.backedge ]
  %ssl_args.0 = phi %struct.stack_st_OPENSSL_STRING* [ null, %if.end ], [ %ssl_args.0.be, %while.cond.backedge ]
  %CApath.0 = phi i8* [ null, %if.end ], [ %CApath.0.be, %while.cond.backedge ]
  %CAfile.0 = phi i8* [ null, %if.end ], [ %CAfile.0.be, %while.cond.backedge ]
  %CAstore.0 = phi i8* [ null, %if.end ], [ %CAstore.0.be, %while.cond.backedge ]
  %chCApath.0 = phi i8* [ null, %if.end ], [ %chCApath.0.be, %while.cond.backedge ]
  %chCAfile.0 = phi i8* [ null, %if.end ], [ %chCAfile.0.be, %while.cond.backedge ]
  %chCAstore.0 = phi i8* [ null, %if.end ], [ %chCAstore.0.be, %while.cond.backedge ]
  %dpassarg.0 = phi i8* [ null, %if.end ], [ %dpassarg.0.be, %while.cond.backedge ]
  %passarg.0 = phi i8* [ null, %if.end ], [ %passarg.0.be, %while.cond.backedge ]
  %vfyCApath.0 = phi i8* [ null, %if.end ], [ %vfyCApath.0.be, %while.cond.backedge ]
  %vfyCAfile.0 = phi i8* [ null, %if.end ], [ %vfyCAfile.0.be, %while.cond.backedge ]
  %vfyCAstore.0 = phi i8* [ null, %if.end ], [ %vfyCAstore.0.be, %while.cond.backedge ]
  %crl_file.0 = phi i8* [ null, %if.end ], [ %crl_file.0.be, %while.cond.backedge ]
  %unlink_unix_path.0 = phi i32 [ 0, %if.end ], [ %unlink_unix_path.0.be, %while.cond.backedge ]
  %vpmtouched.0 = phi i32 [ 0, %if.end ], [ %vpmtouched.0.be, %while.cond.backedge ]
  %build_chain.0 = phi i32 [ 0, %if.end ], [ %build_chain.0.be, %while.cond.backedge ]
  %no_cache.0 = phi i32 [ 0, %if.end ], [ %no_cache.0.be, %while.cond.backedge ]
  %ext_cache.0 = phi i32 [ 0, %if.end ], [ %ext_cache.0.be, %while.cond.backedge ]
  %dhfile.0 = phi i8* [ null, %if.end ], [ %dhfile.0.be, %while.cond.backedge ]
  %no_dhe.0 = phi i32 [ 0, %if.end ], [ %no_dhe.0.be, %while.cond.backedge ]
  %nocert.0 = phi i32 [ 0, %if.end ], [ %nocert.0.be, %while.cond.backedge ]
  %noCApath.0 = phi i32 [ 0, %if.end ], [ %noCApath.0.be, %while.cond.backedge ]
  %noCAfile.0 = phi i32 [ 0, %if.end ], [ %noCAfile.0.be, %while.cond.backedge ]
  %noCAstore.0 = phi i32 [ 0, %if.end ], [ %noCAstore.0.be, %while.cond.backedge ]
  %rev.0 = phi i32 [ 0, %if.end ], [ %rev.0.be, %while.cond.backedge ]
  %naccept.0 = phi i32 [ -1, %if.end ], [ %naccept.0.be, %while.cond.backedge ]
  %sdebug.0 = phi i32 [ 0, %if.end ], [ %sdebug.0.be, %while.cond.backedge ]
  %socket_family.0 = phi i32 [ 0, %if.end ], [ %socket_family.0.be, %while.cond.backedge ]
  %socket_type.0 = phi i32 [ 1, %if.end ], [ %socket_type.0.be, %while.cond.backedge ]
  %state.0 = phi i32 [ 0, %if.end ], [ %state.0.be, %while.cond.backedge ]
  %crl_download.0 = phi i32 [ 0, %if.end ], [ %crl_download.0.be, %while.cond.backedge ]
  %context.0 = phi i8* [ null, %if.end ], [ %context.0.be, %while.cond.backedge ]
  %ssl_config.0 = phi i8* [ null, %if.end ], [ %ssl_config.0.be, %while.cond.backedge ]
  %read_buf_len.0 = phi i32 [ 0, %if.end ], [ %read_buf_len.0.be, %while.cond.backedge ]
  %next_proto_neg_in.0 = phi i8* [ null, %if.end ], [ %next_proto_neg_in.0.be, %while.cond.backedge ]
  %alpn_in.0 = phi i8* [ null, %if.end ], [ %alpn_in.0.be, %while.cond.backedge ]
  %psk_identity_hint.0 = phi i8* [ null, %if.end ], [ %psk_identity_hint.0.be, %while.cond.backedge ]
  %srpuserseed.0 = phi i8* [ null, %if.end ], [ %srpuserseed.0.be, %while.cond.backedge ]
  %srp_verifier_file.0 = phi i8* [ null, %if.end ], [ %srp_verifier_file.0.be, %while.cond.backedge ]
  %srtp_profiles.0 = phi i8* [ null, %if.end ], [ %srtp_profiles.0.be, %while.cond.backedge ]
  %min_version.0 = phi i32 [ 0, %if.end ], [ %min_version.0.be, %while.cond.backedge ]
  %max_version.0 = phi i32 [ 0, %if.end ], [ %max_version.0.be, %while.cond.backedge ]
  %prot_opt.0 = phi i32 [ 0, %if.end ], [ %prot_opt.1, %while.cond.backedge ]
  %no_prot_opt.0 = phi i32 [ 0, %if.end ], [ %spec.select, %while.cond.backedge ]
  %s_server_verify.0 = phi i32 [ 0, %if.end ], [ %s_server_verify.0.be, %while.cond.backedge ]
  %s_cert_file.0 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.397, i64 0, i64 0), %if.end ], [ %s_cert_file.0.be, %while.cond.backedge ]
  %s_key_file.0 = phi i8* [ null, %if.end ], [ %s_key_file.0.be, %while.cond.backedge ]
  %s_chain_file.0 = phi i8* [ null, %if.end ], [ %s_chain_file.0.be, %while.cond.backedge ]
  %s_cert_file2.0 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.398, i64 0, i64 0), %if.end ], [ %s_cert_file2.0.be, %while.cond.backedge ]
  %s_key_file2.0 = phi i8* [ null, %if.end ], [ %s_key_file2.0.be, %while.cond.backedge ]
  %s_dcert_file.0 = phi i8* [ null, %if.end ], [ %s_dcert_file.0.be, %while.cond.backedge ]
  %s_dkey_file.0 = phi i8* [ null, %if.end ], [ %s_dkey_file.0.be, %while.cond.backedge ]
  %s_dchain_file.0 = phi i8* [ null, %if.end ], [ %s_dchain_file.0.be, %while.cond.backedge ]
  %s_tlsextstatus.0 = phi i32 [ 0, %if.end ], [ %s_tlsextstatus.0.be, %while.cond.backedge ]
  %no_resume_ephemeral.0 = phi i32 [ 0, %if.end ], [ %no_resume_ephemeral.0.be, %while.cond.backedge ]
  %max_send_fragment.0 = phi i32 [ 0, %if.end ], [ %max_send_fragment.0.be, %while.cond.backedge ]
  %split_send_fragment.0 = phi i32 [ 0, %if.end ], [ %split_send_fragment.0.be, %while.cond.backedge ]
  %max_pipelines.0 = phi i32 [ 0, %if.end ], [ %max_pipelines.0.be, %while.cond.backedge ]
  %s_serverinfo_file.0 = phi i8* [ null, %if.end ], [ %s_serverinfo_file.0.be, %while.cond.backedge ]
  %keylog_file.0 = phi i8* [ null, %if.end ], [ %keylog_file.0.be, %while.cond.backedge ]
  %max_early_data.0 = phi i32 [ -1, %if.end ], [ %max_early_data.0.be, %while.cond.backedge ]
  %recv_max_early_data.0 = phi i32 [ -1, %if.end ], [ %recv_max_early_data.0.be, %while.cond.backedge ]
  %psksessf.0 = phi i8* [ null, %if.end ], [ %psksessf.0.be, %while.cond.backedge ]
  %no_ca_names.0 = phi i32 [ 0, %if.end ], [ %no_ca_names.0.be, %while.cond.backedge ]
  %ignore_unexpected_eof.0 = phi i32 [ 0, %if.end ], [ %ignore_unexpected_eof.0.be, %while.cond.backedge ]
  %engine.0 = phi %struct.engine_st* [ null, %if.end ], [ %engine.0.be, %while.cond.backedge ]
  %call7 = call i32 @opt_next() #12
  switch i32 %call7, label %if.end27 [
    i32 0, label %while.end
    i32 96, label %land.lhs.true
    i32 95, label %land.lhs.true
    i32 94, label %land.lhs.true
    i32 93, label %land.lhs.true
    i32 92, label %land.lhs.true
    i32 91, label %land.lhs.true
    i32 90, label %land.lhs.true
    i32 89, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond
  %cmp24 = icmp sgt i32 %prot_opt.0, 0
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %land.lhs.true
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call26 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.399, i64 0, i64 0)) #12
  br label %end

if.end27:                                         ; preds = %while.cond, %land.lhs.true
  %prot_opt.1 = phi i32 [ 1, %land.lhs.true ], [ %prot_opt.0, %while.cond ]
  %18 = add i32 %call7, -3001
  %19 = icmp ult i32 %18, 5
  %inc38 = zext i1 %19 to i32
  %spec.select = add nuw nsw i32 %no_prot_opt.0, %inc38
  %cmp40 = icmp eq i32 %prot_opt.1, 1
  %tobool = icmp ne i32 %spec.select, 0
  %or.cond1156 = select i1 %cmp40, i1 %tobool, i1 false
  br i1 %or.cond1156, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end27
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call43 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.400, i64 0, i64 0)) #12
  br label %end

if.end44:                                         ; preds = %if.end27
  switch i32 %call7, label %while.cond.backedge [
    i32 0, label %opthelp
    i32 -1, label %opthelp
    i32 1, label %sw.bb46
    i32 3, label %sw.bb47
    i32 4, label %sw.bb51
    i32 6, label %sw.bb55
    i32 5, label %sw.bb65
    i32 7, label %sw.bb75
    i32 8, label %sw.bb78
    i32 9, label %sw.bb79
    i32 10, label %sw.bb82
    i32 12, label %sw.bb89
    i32 13, label %sw.bb96
    i32 14, label %sw.bb98
    i32 11, label %sw.bb100
    i32 15, label %sw.bb106
    i32 16, label %sw.bb108
    i32 17, label %sw.bb109
    i32 18, label %sw.bb111
    i32 19, label %sw.bb117
    i32 20, label %sw.bb119
    i32 21, label %sw.bb125
    i32 22, label %sw.bb127
    i32 23, label %sw.bb129
    i32 24, label %sw.bb131
    i32 25, label %sw.bb137
    i32 26, label %sw.bb139
    i32 27, label %sw.bb145
    i32 28, label %sw.bb147
    i32 29, label %sw.bb149
    i32 30, label %sw.bb151
    i32 31, label %sw.bb152
    i32 32, label %sw.bb154
    i32 33, label %sw.bb155
    i32 34, label %sw.bb157
    i32 45, label %sw.bb159
    i32 46, label %sw.bb161
    i32 47, label %sw.bb162
    i32 48, label %sw.bb164
    i32 35, label %sw.bb166
    i32 36, label %sw.bb167
    i32 37, label %sw.bb168
    i32 121, label %sw.bb380
    i32 116, label %sw.bb375
    i32 3001, label %sw.bb175
    i32 3002, label %sw.bb175
    i32 3003, label %sw.bb175
    i32 3004, label %sw.bb175
    i32 3005, label %sw.bb175
    i32 3006, label %sw.bb175
    i32 3007, label %sw.bb175
    i32 3027, label %sw.bb175
    i32 3008, label %sw.bb175
    i32 3009, label %sw.bb175
    i32 3010, label %sw.bb175
    i32 3011, label %sw.bb175
    i32 3012, label %sw.bb175
    i32 3013, label %sw.bb175
    i32 3014, label %sw.bb175
    i32 3015, label %sw.bb175
    i32 3016, label %sw.bb175
    i32 3017, label %sw.bb175
    i32 3018, label %sw.bb175
    i32 3019, label %sw.bb175
    i32 3020, label %sw.bb175
    i32 3021, label %sw.bb175
    i32 3022, label %sw.bb175
    i32 3023, label %sw.bb175
    i32 3024, label %sw.bb175
    i32 3025, label %sw.bb175
    i32 3030, label %sw.bb175
    i32 3028, label %sw.bb175
    i32 3029, label %sw.bb175
    i32 3026, label %sw.bb175
    i32 3031, label %sw.bb175
    i32 3032, label %sw.bb175
    i32 117, label %sw.bb175
    i32 118, label %sw.bb175
    i32 119, label %sw.bb175
    i32 115, label %sw.bb367
    i32 114, label %sw.bb359
    i32 2001, label %sw.bb199
    i32 2002, label %sw.bb199
    i32 2003, label %sw.bb199
    i32 2004, label %sw.bb199
    i32 2029, label %sw.bb199
    i32 2005, label %sw.bb199
    i32 2006, label %sw.bb199
    i32 2007, label %sw.bb199
    i32 2008, label %sw.bb199
    i32 2009, label %sw.bb199
    i32 2010, label %sw.bb199
    i32 2011, label %sw.bb199
    i32 2012, label %sw.bb199
    i32 2013, label %sw.bb199
    i32 2014, label %sw.bb199
    i32 2015, label %sw.bb199
    i32 2016, label %sw.bb199
    i32 2017, label %sw.bb199
    i32 2018, label %sw.bb199
    i32 2019, label %sw.bb199
    i32 2020, label %sw.bb199
    i32 2021, label %sw.bb199
    i32 2022, label %sw.bb199
    i32 2023, label %sw.bb199
    i32 2024, label %sw.bb199
    i32 2025, label %sw.bb199
    i32 2026, label %sw.bb199
    i32 2027, label %sw.bb199
    i32 2028, label %sw.bb199
    i32 2030, label %sw.bb199
    i32 113, label %sw.bb357
    i32 88, label %sw.bb354
    i32 1001, label %sw.bb206
    i32 1002, label %sw.bb206
    i32 1003, label %sw.bb206
    i32 1004, label %sw.bb206
    i32 1005, label %sw.bb206
    i32 1006, label %sw.bb206
    i32 38, label %sw.bb211
    i32 39, label %sw.bb212
    i32 40, label %sw.bb213
    i32 41, label %sw.bb214
    i32 42, label %sw.bb216
    i32 43, label %sw.bb217
    i32 44, label %sw.bb219
    i32 49, label %sw.bb221
    i32 50, label %sw.bb222
    i32 51, label %sw.bb223
    i32 52, label %sw.bb224
    i32 53, label %sw.bb225
    i32 54, label %sw.bb226
    i32 55, label %sw.bb227
    i32 56, label %sw.bb228
    i32 57, label %sw.bb229
    i32 58, label %sw.bb232
    i32 59, label %sw.bb234
    i32 60, label %sw.bb236
    i32 61, label %sw.bb243
    i32 62, label %sw.bb245
    i32 63, label %sw.bb246
    i32 64, label %sw.bb249
    i32 65, label %sw.bb250
    i32 66, label %sw.bb251
    i32 67, label %sw.bb252
    i32 68, label %sw.bb253
    i32 69, label %sw.bb254
    i32 70, label %sw.bb255
    i32 71, label %sw.bb256
    i32 72, label %sw.bb257
    i32 73, label %sw.bb258
    i32 74, label %sw.bb260
    i32 75, label %sw.bb262
    i32 76, label %sw.bb272
    i32 77, label %sw.bb274
    i32 78, label %sw.bb280
    i32 79, label %sw.bb286
    i32 80, label %sw.bb287
    i32 81, label %sw.bb288
    i32 82, label %sw.bb289
    i32 84, label %sw.bb290
    i32 89, label %sw.bb292
    i32 90, label %sw.bb293
    i32 91, label %sw.bb294
    i32 92, label %sw.bb295
    i32 93, label %sw.bb296
    i32 94, label %sw.bb297
    i32 95, label %sw.bb299
    i32 96, label %sw.bb301
    i32 123, label %sw.bb382
    i32 122, label %sw.bb381
    i32 98, label %sw.bb303
    i32 99, label %sw.bb304
    i32 100, label %sw.bb307
    i32 101, label %sw.bb308
    i32 102, label %sw.bb309
    i32 2, label %sw.bb311
    i32 87, label %sw.bb351
    i32 86, label %sw.bb348
    i32 1501, label %sw.bb315
    i32 1502, label %sw.bb315
    i32 85, label %sw.bb345
    i32 83, label %sw.bb344
    i32 1601, label %sw.bb321
    i32 1602, label %sw.bb321
    i32 1603, label %sw.bb321
    i32 103, label %sw.bb326
    i32 104, label %sw.bb328
    i32 105, label %sw.bb329
    i32 106, label %sw.bb331
    i32 107, label %sw.bb333
    i32 108, label %sw.bb335
    i32 110, label %sw.bb337
    i32 111, label %sw.bb339
    i32 112, label %sw.bb341
  ]

opthelp:                                          ; preds = %sw.bb168, %sw.bb139, %sw.bb131, %sw.bb119, %sw.bb111, %if.end44, %if.end44, %while.end, %if.then397
  %21 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call45 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %21, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.401, i64 0, i64 0), i8* noundef %call6) #12
  br label %end

sw.bb46:                                          ; preds = %if.end44
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([207 x %struct.options_st], [207 x %struct.options_st]* @s_server_options, i64 0, i64 0)) #12
  br label %end

sw.bb47:                                          ; preds = %if.end44
  %cmp48 = icmp eq i32 %socket_family.0, 1
  br i1 %cmp48, label %if.then49, label %while.cond.backedge

if.then49:                                        ; preds = %sw.bb47
  %22 = load i8*, i8** %host, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %22, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 1106) #12
  store i8* null, i8** %host, align 8, !tbaa !3
  %23 = load i8*, i8** %port, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %23, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 1107) #12
  store i8* null, i8** %port, align 8, !tbaa !3
  br label %while.cond.backedge

sw.bb51:                                          ; preds = %if.end44
  %cmp52 = icmp eq i32 %socket_family.0, 1
  br i1 %cmp52, label %if.then53, label %while.cond.backedge

if.then53:                                        ; preds = %sw.bb51
  %24 = load i8*, i8** %host, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %24, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 1117) #12
  store i8* null, i8** %host, align 8, !tbaa !3
  %25 = load i8*, i8** %port, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %25, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 1118) #12
  store i8* null, i8** %port, align 8, !tbaa !3
  br label %while.cond.backedge

sw.bb55:                                          ; preds = %if.end44
  %cmp56 = icmp eq i32 %socket_family.0, 1
  %spec.store.select = select i1 %cmp56, i32 0, i32 %socket_family.0
  %26 = load i8*, i8** %port, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %26, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 1134) #12
  store i8* null, i8** %port, align 8, !tbaa !3
  %27 = load i8*, i8** %host, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %27, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 1135) #12
  store i8* null, i8** %host, align 8, !tbaa !3
  %call59 = call i8* @opt_arg() #12
  %call60 = call i32 @BIO_parse_hostserv(i8* noundef %call59, i8** noundef null, i8** noundef nonnull %port, i32 noundef 1) #12
  %cmp61 = icmp slt i32 %call60, 1
  br i1 %cmp61, label %if.then62, label %while.cond.backedge

if.then62:                                        ; preds = %sw.bb55
  %28 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %29 = load i8*, i8** %port, align 8, !tbaa !3
  %call63 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %28, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.402, i64 0, i64 0), i8* noundef %29) #12
  br label %end

sw.bb65:                                          ; preds = %if.end44
  %cmp66 = icmp eq i32 %socket_family.0, 1
  %spec.store.select1157 = select i1 %cmp66, i32 0, i32 %socket_family.0
  %30 = load i8*, i8** %port, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %30, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 1149) #12
  store i8* null, i8** %port, align 8, !tbaa !3
  %31 = load i8*, i8** %host, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %31, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 1150) #12
  store i8* null, i8** %host, align 8, !tbaa !3
  %call69 = call i8* @opt_arg() #12
  %call70 = call i32 @BIO_parse_hostserv(i8* noundef %call69, i8** noundef nonnull %host, i8** noundef nonnull %port, i32 noundef 1) #12
  %cmp71 = icmp slt i32 %call70, 1
  br i1 %cmp71, label %if.then72, label %while.cond.backedge

if.then72:                                        ; preds = %sw.bb65
  %32 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %33 = load i8*, i8** %port, align 8, !tbaa !3
  %call73 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %32, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.403, i64 0, i64 0), i8* noundef %33) #12
  br label %end

sw.bb75:                                          ; preds = %if.end44
  %34 = load i8*, i8** %host, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %34, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 1161) #12
  %call76 = call i8* @opt_arg() #12
  %call77 = call i8* @CRYPTO_strdup(i8* noundef %call76, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 1161) #12
  store i8* %call77, i8** %host, align 8, !tbaa !3
  %35 = load i8*, i8** %port, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %35, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 1162) #12
  store i8* null, i8** %port, align 8, !tbaa !3
  br label %while.cond.backedge

sw.bb78:                                          ; preds = %if.end44
  br label %while.cond.backedge

sw.bb79:                                          ; preds = %if.end44
  %call80 = call i8* @opt_arg() #12
  %call81 = call i64 @atol(i8* noundef %call80) #14
  %conv = trunc i64 %call81 to i32
  br label %while.cond.backedge

sw.bb82:                                          ; preds = %if.end44
  %call83 = call i8* @opt_arg() #12
  %call84 = call i32 @atoi(i8* noundef %call83) #14
  store i32 %call84, i32* getelementptr inbounds (%struct.verify_options_st, %struct.verify_options_st* @verify_args, i64 0, i32 0), align 4, !tbaa !9
  %.b1431 = load i1, i1* @s_quiet, align 4
  br i1 %.b1431, label %while.cond.backedge, label %if.then86

if.then86:                                        ; preds = %sw.bb82
  %36 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call87 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %36, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.404, i64 0, i64 0), i32 noundef %call84) #12
  br label %while.cond.backedge

sw.bb89:                                          ; preds = %if.end44
  %call90 = call i8* @opt_arg() #12
  %call91 = call i32 @atoi(i8* noundef %call90) #14
  store i32 %call91, i32* getelementptr inbounds (%struct.verify_options_st, %struct.verify_options_st* @verify_args, i64 0, i32 0), align 4, !tbaa !9
  %.b1430 = load i1, i1* @s_quiet, align 4
  br i1 %.b1430, label %while.cond.backedge, label %if.then93

if.then93:                                        ; preds = %sw.bb89
  %37 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call94 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %37, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.405, i64 0, i64 0), i32 noundef %call91) #12
  br label %while.cond.backedge

sw.bb96:                                          ; preds = %if.end44
  %call97 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb98:                                          ; preds = %if.end44
  %call99 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb100:                                         ; preds = %if.end44
  %call101 = call i8* @opt_arg() #12
  %call102 = call i32 @set_nameopt(i8* noundef %call101) #12
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %end, label %while.cond.backedge

sw.bb106:                                         ; preds = %if.end44
  %call107 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb108:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb109:                                         ; preds = %if.end44
  %call110 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb111:                                         ; preds = %if.end44
  %call112 = call i8* @opt_arg() #12
  %call113 = call i32 @opt_format(i8* noundef %call112, i64 noundef 1982, i32* noundef nonnull %s_cert_format) #12
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %opthelp, label %while.cond.backedge

sw.bb117:                                         ; preds = %if.end44
  %call118 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb119:                                         ; preds = %if.end44
  %call120 = call i8* @opt_arg() #12
  %call121 = call i32 @opt_format(i8* noundef %call120, i64 noundef 1982, i32* noundef nonnull %s_key_format) #12
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %opthelp, label %while.cond.backedge

sw.bb125:                                         ; preds = %if.end44
  %call126 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb127:                                         ; preds = %if.end44
  %call128 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb129:                                         ; preds = %if.end44
  %call130 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb131:                                         ; preds = %if.end44
  %call132 = call i8* @opt_arg() #12
  %call133 = call i32 @opt_format(i8* noundef %call132, i64 noundef 1982, i32* noundef nonnull %s_dcert_format) #12
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %opthelp, label %while.cond.backedge

sw.bb137:                                         ; preds = %if.end44
  %call138 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb139:                                         ; preds = %if.end44
  %call140 = call i8* @opt_arg() #12
  %call141 = call i32 @opt_format(i8* noundef %call140, i64 noundef 1982, i32* noundef nonnull %s_dkey_format) #12
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %opthelp, label %while.cond.backedge

sw.bb145:                                         ; preds = %if.end44
  %call146 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb147:                                         ; preds = %if.end44
  %call148 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb149:                                         ; preds = %if.end44
  %call150 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb151:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb152:                                         ; preds = %if.end44
  %call153 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb154:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb155:                                         ; preds = %if.end44
  %call156 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb157:                                         ; preds = %if.end44
  %call158 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb159:                                         ; preds = %if.end44
  %call160 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb161:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb162:                                         ; preds = %if.end44
  %call163 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb164:                                         ; preds = %if.end44
  %call165 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb166:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb167:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb168:                                         ; preds = %if.end44
  %call169 = call i8* @opt_arg() #12
  %call170 = call i32 @opt_format(i8* noundef %call169, i64 noundef 2, i32* noundef nonnull %crl_format) #12
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %opthelp, label %while.cond.backedge

sw.bb175:                                         ; preds = %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44
  %cmp176 = icmp eq %struct.stack_st_OPENSSL_STRING* %ssl_args.0, null
  br i1 %cmp176, label %if.end180, label %lor.lhs.false183

if.end180:                                        ; preds = %sw.bb175
  %call179 = call %struct.stack_st* @OPENSSL_sk_new_null() #12
  %38 = bitcast %struct.stack_st* %call179 to %struct.stack_st_OPENSSL_STRING*
  %cmp181 = icmp eq %struct.stack_st* %call179, null
  br i1 %cmp181, label %if.then195, label %lor.lhs.false183

lor.lhs.false183:                                 ; preds = %sw.bb175, %if.end180
  %ssl_args.11448 = phi %struct.stack_st_OPENSSL_STRING* [ %38, %if.end180 ], [ %ssl_args.0, %sw.bb175 ]
  %call184 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %ssl_args.11448) #15
  %call185 = call i8* @opt_flag() #12
  %call187 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call184, i8* noundef %call185) #12
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.then195, label %lor.lhs.false189

lor.lhs.false189:                                 ; preds = %lor.lhs.false183
  %call191 = call i8* @opt_arg() #12
  %call193 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call184, i8* noundef %call191) #12
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.then195, label %while.cond.backedge

if.then195:                                       ; preds = %lor.lhs.false189, %lor.lhs.false183, %if.end180
  %ssl_args.11449 = phi %struct.stack_st_OPENSSL_STRING* [ %ssl_args.11448, %lor.lhs.false189 ], [ %ssl_args.11448, %lor.lhs.false183 ], [ null, %if.end180 ]
  %39 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call196 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %39, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.406, i64 0, i64 0), i8* noundef %call6) #12
  br label %end

sw.bb199:                                         ; preds = %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44
  %call200 = call i32 @opt_verify(i32 noundef %call7, %struct.X509_VERIFY_PARAM_st* noundef %call3) #12
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %end, label %if.end203

if.end203:                                        ; preds = %sw.bb199
  %inc204 = add nsw i32 %vpmtouched.0, 1
  br label %while.cond.backedge

sw.bb206:                                         ; preds = %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44
  %call207 = call i32 @args_excert(i32 noundef %call7, %struct.ssl_excert_st** noundef nonnull %exc) #12
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %end, label %while.cond.backedge

sw.bb211:                                         ; preds = %if.end44
  store i32 1, i32* getelementptr inbounds (%struct.verify_options_st, %struct.verify_options_st* @verify_args, i64 0, i32 3), align 4, !tbaa !11
  br label %while.cond.backedge

sw.bb212:                                         ; preds = %if.end44
  store i32 1, i32* getelementptr inbounds (%struct.verify_options_st, %struct.verify_options_st* @verify_args, i64 0, i32 1), align 4, !tbaa !12
  br label %while.cond.backedge

sw.bb213:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb214:                                         ; preds = %if.end44
  %call215 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb216:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb217:                                         ; preds = %if.end44
  %call218 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb219:                                         ; preds = %if.end44
  %call220 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb221:                                         ; preds = %if.end44
  store i1 true, i1* @s_nbio, align 4
  br label %while.cond.backedge

sw.bb222:                                         ; preds = %if.end44
  store i1 true, i1* @s_nbio_test, align 4
  store i1 true, i1* @s_nbio, align 4
  br label %while.cond.backedge

sw.bb223:                                         ; preds = %if.end44
  store i1 true, i1* @s_ign_eof, align 4
  br label %while.cond.backedge

sw.bb224:                                         ; preds = %if.end44
  store i1 false, i1* @s_ign_eof, align 4
  br label %while.cond.backedge

sw.bb225:                                         ; preds = %if.end44
  store i1 true, i1* @s_debug, align 4
  br label %while.cond.backedge

sw.bb226:                                         ; preds = %if.end44
  store i1 true, i1* @s_tlsextdebug, align 4
  br label %while.cond.backedge

sw.bb227:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb228:                                         ; preds = %if.end44
  store i32 1, i32* getelementptr inbounds (%struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* @tlscstatp, i64 0, i32 8), align 4, !tbaa !13
  br label %while.cond.backedge

sw.bb229:                                         ; preds = %if.end44
  %call230 = call i8* @opt_arg() #12
  %call231 = call i32 @atoi(i8* noundef %call230) #14
  store i32 %call231, i32* getelementptr inbounds (%struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* @tlscstatp, i64 0, i32 0), align 8, !tbaa !15
  br label %while.cond.backedge

sw.bb232:                                         ; preds = %if.end44
  %call233 = call i8* @opt_arg() #12
  store i8* %call233, i8** getelementptr inbounds (%struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* @tlscstatp, i64 0, i32 5), align 8, !tbaa !16
  br label %while.cond.backedge

sw.bb234:                                         ; preds = %if.end44
  %call235 = call i8* @opt_arg() #12
  store i8* %call235, i8** getelementptr inbounds (%struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* @tlscstatp, i64 0, i32 6), align 8, !tbaa !17
  br label %while.cond.backedge

sw.bb236:                                         ; preds = %if.end44
  %call237 = call i8* @opt_arg() #12
  %call238 = call i32 @OSSL_HTTP_parse_url(i8* noundef %call237, i32* noundef getelementptr inbounds (%struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* @tlscstatp, i64 0, i32 7), i8** noundef null, i8** noundef getelementptr inbounds (%struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* @tlscstatp, i64 0, i32 2), i8** noundef getelementptr inbounds (%struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* @tlscstatp, i64 0, i32 4), i32* noundef null, i8** noundef getelementptr inbounds (%struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* @tlscstatp, i64 0, i32 3), i8** noundef null, i8** noundef null) #12
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.then240, label %while.cond.backedge

if.then240:                                       ; preds = %sw.bb236
  %40 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call241 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %40, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.407, i64 0, i64 0)) #12
  br label %end

sw.bb243:                                         ; preds = %if.end44
  %call244 = call i8* @opt_arg() #12
  store i8* %call244, i8** getelementptr inbounds (%struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* @tlscstatp, i64 0, i32 1), align 8, !tbaa !18
  br label %while.cond.backedge

sw.bb245:                                         ; preds = %if.end44
  store i32 1, i32* @s_msg, align 4, !tbaa !7
  br label %while.cond.backedge

sw.bb246:                                         ; preds = %if.end44
  %call247 = call i8* @opt_arg() #12
  %call248 = call %struct.bio_st* @BIO_new_file(i8* noundef %call247, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.408, i64 0, i64 0)) #12
  store %struct.bio_st* %call248, %struct.bio_st** @bio_s_msg, align 8, !tbaa !3
  br label %while.cond.backedge

sw.bb249:                                         ; preds = %if.end44
  store i32 2, i32* @s_msg, align 4, !tbaa !7
  br label %while.cond.backedge

sw.bb250:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb251:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb252:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb253:                                         ; preds = %if.end44
  store i1 true, i1* @s_crlf, align 4
  br label %while.cond.backedge

sw.bb254:                                         ; preds = %if.end44
  store i1 true, i1* @s_quiet, align 4
  br label %while.cond.backedge

sw.bb255:                                         ; preds = %if.end44
  store i32 1, i32* getelementptr inbounds (%struct.verify_options_st, %struct.verify_options_st* @verify_args, i64 0, i32 1), align 4, !tbaa !12
  store i1 true, i1* @s_brief, align 4
  store i1 true, i1* @s_quiet, align 4
  br label %while.cond.backedge

sw.bb256:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb257:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb258:                                         ; preds = %if.end44
  %call259 = call i8* @opt_arg() #12
  store i8* %call259, i8** @psk_identity, align 8, !tbaa !3
  br label %while.cond.backedge

sw.bb260:                                         ; preds = %if.end44
  %call261 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb262:                                         ; preds = %if.end44
  %call263 = call i8* @opt_arg() #12
  store i8* %call263, i8** @psk_key, align 8, !tbaa !3
  %41 = load i8, i8* %call263, align 1, !tbaa !19
  %tobool264.not2264 = icmp eq i8 %41, 0
  br i1 %tobool264.not2264, label %while.cond.backedge, label %for.body.lr.ph

while.cond.backedge:                              ; preds = %for.cond, %sw.bb262, %sw.bb51, %if.then53, %sw.bb47, %if.then49, %sw.bb367, %sw.bb359, %sw.bb321, %sw.bb315, %sw.bb236, %sw.bb206, %lor.lhs.false189, %sw.bb168, %sw.bb139, %sw.bb131, %sw.bb119, %sw.bb111, %sw.bb100, %sw.bb89, %if.then93, %sw.bb82, %if.then86, %sw.bb65, %sw.bb55, %if.end44, %sw.bb382, %sw.bb381, %sw.bb380, %sw.bb375, %sw.bb357, %sw.bb354, %sw.bb351, %sw.bb348, %sw.bb345, %sw.bb344, %sw.bb341, %sw.bb339, %sw.bb337, %sw.bb335, %sw.bb333, %sw.bb331, %sw.bb329, %sw.bb328, %sw.bb326, %sw.bb311, %sw.bb309, %sw.bb308, %sw.bb307, %sw.bb304, %sw.bb303, %sw.bb301, %sw.bb299, %sw.bb297, %sw.bb296, %sw.bb295, %sw.bb294, %sw.bb293, %sw.bb292, %sw.bb290, %sw.bb289, %sw.bb288, %sw.bb287, %sw.bb286, %sw.bb280, %sw.bb274, %sw.bb272, %sw.bb260, %sw.bb258, %sw.bb257, %sw.bb256, %sw.bb255, %sw.bb254, %sw.bb253, %sw.bb252, %sw.bb251, %sw.bb250, %sw.bb249, %sw.bb246, %sw.bb245, %sw.bb243, %sw.bb234, %sw.bb232, %sw.bb229, %sw.bb228, %sw.bb227, %sw.bb226, %sw.bb225, %sw.bb224, %sw.bb223, %sw.bb222, %sw.bb221, %sw.bb219, %sw.bb217, %sw.bb216, %sw.bb214, %sw.bb213, %sw.bb212, %sw.bb211, %if.end203, %sw.bb167, %sw.bb166, %sw.bb164, %sw.bb162, %sw.bb161, %sw.bb159, %sw.bb157, %sw.bb155, %sw.bb154, %sw.bb152, %sw.bb151, %sw.bb149, %sw.bb147, %sw.bb145, %sw.bb137, %sw.bb129, %sw.bb127, %sw.bb125, %sw.bb117, %sw.bb109, %sw.bb108, %sw.bb106, %sw.bb98, %sw.bb96, %sw.bb79, %sw.bb78, %sw.bb75
  %.be = phi i8* [ %16, %if.end44 ], [ %16, %sw.bb341 ], [ %16, %sw.bb339 ], [ %16, %sw.bb337 ], [ %16, %sw.bb335 ], [ %16, %sw.bb333 ], [ %16, %sw.bb331 ], [ %16, %sw.bb329 ], [ %16, %sw.bb328 ], [ %call327, %sw.bb326 ], [ %16, %sw.bb321 ], [ %16, %sw.bb344 ], [ %16, %sw.bb345 ], [ %16, %sw.bb315 ], [ %16, %sw.bb348 ], [ %16, %sw.bb351 ], [ %16, %sw.bb311 ], [ %16, %sw.bb309 ], [ %16, %sw.bb308 ], [ %16, %sw.bb307 ], [ %16, %sw.bb304 ], [ %16, %sw.bb303 ], [ %16, %sw.bb381 ], [ %16, %sw.bb382 ], [ %16, %sw.bb301 ], [ %16, %sw.bb299 ], [ %16, %sw.bb297 ], [ %16, %sw.bb296 ], [ %16, %sw.bb295 ], [ %16, %sw.bb294 ], [ %16, %sw.bb293 ], [ %16, %sw.bb292 ], [ %16, %sw.bb290 ], [ %16, %sw.bb289 ], [ %16, %sw.bb288 ], [ %16, %sw.bb287 ], [ %16, %sw.bb286 ], [ %16, %sw.bb280 ], [ %16, %sw.bb274 ], [ %16, %sw.bb272 ], [ %16, %sw.bb260 ], [ %16, %sw.bb258 ], [ %16, %sw.bb257 ], [ %16, %sw.bb256 ], [ %16, %sw.bb255 ], [ %16, %sw.bb254 ], [ %16, %sw.bb253 ], [ %16, %sw.bb252 ], [ %16, %sw.bb251 ], [ %16, %sw.bb250 ], [ %16, %sw.bb249 ], [ %16, %sw.bb246 ], [ %16, %sw.bb245 ], [ %16, %sw.bb243 ], [ %16, %sw.bb236 ], [ %16, %sw.bb234 ], [ %16, %sw.bb232 ], [ %16, %sw.bb229 ], [ %16, %sw.bb228 ], [ %16, %sw.bb227 ], [ %16, %sw.bb226 ], [ %16, %sw.bb225 ], [ %16, %sw.bb224 ], [ %16, %sw.bb223 ], [ %16, %sw.bb222 ], [ %16, %sw.bb221 ], [ %16, %sw.bb219 ], [ %16, %sw.bb217 ], [ %16, %sw.bb216 ], [ %16, %sw.bb214 ], [ %16, %sw.bb213 ], [ %16, %sw.bb212 ], [ %16, %sw.bb211 ], [ %16, %sw.bb206 ], [ %16, %sw.bb354 ], [ %16, %sw.bb357 ], [ %16, %if.end203 ], [ %16, %sw.bb359 ], [ %16, %sw.bb367 ], [ %16, %lor.lhs.false189 ], [ %16, %sw.bb375 ], [ %16, %sw.bb380 ], [ %16, %sw.bb168 ], [ %16, %sw.bb167 ], [ %16, %sw.bb166 ], [ %16, %sw.bb164 ], [ %16, %sw.bb162 ], [ %16, %sw.bb161 ], [ %16, %sw.bb159 ], [ %16, %sw.bb157 ], [ %16, %sw.bb155 ], [ %16, %sw.bb154 ], [ %16, %sw.bb152 ], [ %16, %sw.bb151 ], [ %16, %sw.bb149 ], [ %16, %sw.bb147 ], [ %16, %sw.bb145 ], [ %16, %sw.bb139 ], [ %16, %sw.bb137 ], [ %16, %sw.bb131 ], [ %16, %sw.bb129 ], [ %16, %sw.bb127 ], [ %16, %sw.bb125 ], [ %16, %sw.bb119 ], [ %16, %sw.bb117 ], [ %16, %sw.bb111 ], [ %16, %sw.bb109 ], [ %16, %sw.bb108 ], [ %16, %sw.bb106 ], [ %16, %sw.bb100 ], [ %16, %sw.bb98 ], [ %16, %sw.bb96 ], [ %16, %sw.bb89 ], [ %16, %if.then93 ], [ %16, %sw.bb82 ], [ %16, %if.then86 ], [ %16, %sw.bb79 ], [ %16, %sw.bb78 ], [ %16, %sw.bb75 ], [ %16, %sw.bb65 ], [ %16, %sw.bb55 ], [ %16, %if.then49 ], [ %16, %sw.bb47 ], [ %16, %if.then53 ], [ %16, %sw.bb51 ], [ %16, %sw.bb262 ], [ %16, %for.cond ]
  %meth.0.be = phi %struct.ssl_method_st* [ %meth.0, %if.end44 ], [ %meth.0, %sw.bb341 ], [ %meth.0, %sw.bb339 ], [ %meth.0, %sw.bb337 ], [ %meth.0, %sw.bb335 ], [ %meth.0, %sw.bb333 ], [ %meth.0, %sw.bb331 ], [ %meth.0, %sw.bb329 ], [ %meth.0, %sw.bb328 ], [ %meth.0, %sw.bb326 ], [ %meth.0, %sw.bb321 ], [ %meth.0, %sw.bb344 ], [ %meth.0, %sw.bb345 ], [ %meth.0, %sw.bb315 ], [ %meth.0, %sw.bb348 ], [ %meth.0, %sw.bb351 ], [ %meth.0, %sw.bb311 ], [ %meth.0, %sw.bb309 ], [ %meth.0, %sw.bb308 ], [ %meth.0, %sw.bb307 ], [ %meth.0, %sw.bb304 ], [ %meth.0, %sw.bb303 ], [ %meth.0, %sw.bb381 ], [ %meth.0, %sw.bb382 ], [ %call302, %sw.bb301 ], [ %call300, %sw.bb299 ], [ %call298, %sw.bb297 ], [ %meth.0, %sw.bb296 ], [ %meth.0, %sw.bb295 ], [ %meth.0, %sw.bb294 ], [ %meth.0, %sw.bb293 ], [ %meth.0, %sw.bb292 ], [ %meth.0, %sw.bb290 ], [ %meth.0, %sw.bb289 ], [ %meth.0, %sw.bb288 ], [ %meth.0, %sw.bb287 ], [ %meth.0, %sw.bb286 ], [ %meth.0, %sw.bb280 ], [ %meth.0, %sw.bb274 ], [ %meth.0, %sw.bb272 ], [ %meth.0, %sw.bb260 ], [ %meth.0, %sw.bb258 ], [ %meth.0, %sw.bb257 ], [ %meth.0, %sw.bb256 ], [ %meth.0, %sw.bb255 ], [ %meth.0, %sw.bb254 ], [ %meth.0, %sw.bb253 ], [ %meth.0, %sw.bb252 ], [ %meth.0, %sw.bb251 ], [ %meth.0, %sw.bb250 ], [ %meth.0, %sw.bb249 ], [ %meth.0, %sw.bb246 ], [ %meth.0, %sw.bb245 ], [ %meth.0, %sw.bb243 ], [ %meth.0, %sw.bb236 ], [ %meth.0, %sw.bb234 ], [ %meth.0, %sw.bb232 ], [ %meth.0, %sw.bb229 ], [ %meth.0, %sw.bb228 ], [ %meth.0, %sw.bb227 ], [ %meth.0, %sw.bb226 ], [ %meth.0, %sw.bb225 ], [ %meth.0, %sw.bb224 ], [ %meth.0, %sw.bb223 ], [ %meth.0, %sw.bb222 ], [ %meth.0, %sw.bb221 ], [ %meth.0, %sw.bb219 ], [ %meth.0, %sw.bb217 ], [ %meth.0, %sw.bb216 ], [ %meth.0, %sw.bb214 ], [ %meth.0, %sw.bb213 ], [ %meth.0, %sw.bb212 ], [ %meth.0, %sw.bb211 ], [ %meth.0, %sw.bb206 ], [ %meth.0, %sw.bb354 ], [ %meth.0, %sw.bb357 ], [ %meth.0, %if.end203 ], [ %meth.0, %sw.bb359 ], [ %meth.0, %sw.bb367 ], [ %meth.0, %lor.lhs.false189 ], [ %meth.0, %sw.bb375 ], [ %meth.0, %sw.bb380 ], [ %meth.0, %sw.bb168 ], [ %meth.0, %sw.bb167 ], [ %meth.0, %sw.bb166 ], [ %meth.0, %sw.bb164 ], [ %meth.0, %sw.bb162 ], [ %meth.0, %sw.bb161 ], [ %meth.0, %sw.bb159 ], [ %meth.0, %sw.bb157 ], [ %meth.0, %sw.bb155 ], [ %meth.0, %sw.bb154 ], [ %meth.0, %sw.bb152 ], [ %meth.0, %sw.bb151 ], [ %meth.0, %sw.bb149 ], [ %meth.0, %sw.bb147 ], [ %meth.0, %sw.bb145 ], [ %meth.0, %sw.bb139 ], [ %meth.0, %sw.bb137 ], [ %meth.0, %sw.bb131 ], [ %meth.0, %sw.bb129 ], [ %meth.0, %sw.bb127 ], [ %meth.0, %sw.bb125 ], [ %meth.0, %sw.bb119 ], [ %meth.0, %sw.bb117 ], [ %meth.0, %sw.bb111 ], [ %meth.0, %sw.bb109 ], [ %meth.0, %sw.bb108 ], [ %meth.0, %sw.bb106 ], [ %meth.0, %sw.bb100 ], [ %meth.0, %sw.bb98 ], [ %meth.0, %sw.bb96 ], [ %meth.0, %sw.bb89 ], [ %meth.0, %if.then93 ], [ %meth.0, %sw.bb82 ], [ %meth.0, %if.then86 ], [ %meth.0, %sw.bb79 ], [ %meth.0, %sw.bb78 ], [ %meth.0, %sw.bb75 ], [ %meth.0, %sw.bb65 ], [ %meth.0, %sw.bb55 ], [ %meth.0, %if.then49 ], [ %meth.0, %sw.bb47 ], [ %meth.0, %if.then53 ], [ %meth.0, %sw.bb51 ], [ %meth.0, %sw.bb262 ], [ %meth.0, %for.cond ]
  %ssl_args.0.be = phi %struct.stack_st_OPENSSL_STRING* [ %ssl_args.0, %if.end44 ], [ %ssl_args.0, %sw.bb341 ], [ %ssl_args.0, %sw.bb339 ], [ %ssl_args.0, %sw.bb337 ], [ %ssl_args.0, %sw.bb335 ], [ %ssl_args.0, %sw.bb333 ], [ %ssl_args.0, %sw.bb331 ], [ %ssl_args.0, %sw.bb329 ], [ %ssl_args.0, %sw.bb328 ], [ %ssl_args.0, %sw.bb326 ], [ %ssl_args.0, %sw.bb321 ], [ %ssl_args.0, %sw.bb344 ], [ %ssl_args.0, %sw.bb345 ], [ %ssl_args.0, %sw.bb315 ], [ %ssl_args.0, %sw.bb348 ], [ %ssl_args.0, %sw.bb351 ], [ %ssl_args.0, %sw.bb311 ], [ %ssl_args.0, %sw.bb309 ], [ %ssl_args.0, %sw.bb308 ], [ %ssl_args.0, %sw.bb307 ], [ %ssl_args.0, %sw.bb304 ], [ %ssl_args.0, %sw.bb303 ], [ %ssl_args.0, %sw.bb381 ], [ %ssl_args.0, %sw.bb382 ], [ %ssl_args.0, %sw.bb301 ], [ %ssl_args.0, %sw.bb299 ], [ %ssl_args.0, %sw.bb297 ], [ %ssl_args.0, %sw.bb296 ], [ %ssl_args.0, %sw.bb295 ], [ %ssl_args.0, %sw.bb294 ], [ %ssl_args.0, %sw.bb293 ], [ %ssl_args.0, %sw.bb292 ], [ %ssl_args.0, %sw.bb290 ], [ %ssl_args.0, %sw.bb289 ], [ %ssl_args.0, %sw.bb288 ], [ %ssl_args.0, %sw.bb287 ], [ %ssl_args.0, %sw.bb286 ], [ %ssl_args.0, %sw.bb280 ], [ %ssl_args.0, %sw.bb274 ], [ %ssl_args.0, %sw.bb272 ], [ %ssl_args.0, %sw.bb260 ], [ %ssl_args.0, %sw.bb258 ], [ %ssl_args.0, %sw.bb257 ], [ %ssl_args.0, %sw.bb256 ], [ %ssl_args.0, %sw.bb255 ], [ %ssl_args.0, %sw.bb254 ], [ %ssl_args.0, %sw.bb253 ], [ %ssl_args.0, %sw.bb252 ], [ %ssl_args.0, %sw.bb251 ], [ %ssl_args.0, %sw.bb250 ], [ %ssl_args.0, %sw.bb249 ], [ %ssl_args.0, %sw.bb246 ], [ %ssl_args.0, %sw.bb245 ], [ %ssl_args.0, %sw.bb243 ], [ %ssl_args.0, %sw.bb236 ], [ %ssl_args.0, %sw.bb234 ], [ %ssl_args.0, %sw.bb232 ], [ %ssl_args.0, %sw.bb229 ], [ %ssl_args.0, %sw.bb228 ], [ %ssl_args.0, %sw.bb227 ], [ %ssl_args.0, %sw.bb226 ], [ %ssl_args.0, %sw.bb225 ], [ %ssl_args.0, %sw.bb224 ], [ %ssl_args.0, %sw.bb223 ], [ %ssl_args.0, %sw.bb222 ], [ %ssl_args.0, %sw.bb221 ], [ %ssl_args.0, %sw.bb219 ], [ %ssl_args.0, %sw.bb217 ], [ %ssl_args.0, %sw.bb216 ], [ %ssl_args.0, %sw.bb214 ], [ %ssl_args.0, %sw.bb213 ], [ %ssl_args.0, %sw.bb212 ], [ %ssl_args.0, %sw.bb211 ], [ %ssl_args.0, %sw.bb206 ], [ %ssl_args.0, %sw.bb354 ], [ %ssl_args.0, %sw.bb357 ], [ %ssl_args.0, %if.end203 ], [ %ssl_args.0, %sw.bb359 ], [ %ssl_args.0, %sw.bb367 ], [ %ssl_args.11448, %lor.lhs.false189 ], [ %ssl_args.0, %sw.bb375 ], [ %ssl_args.0, %sw.bb380 ], [ %ssl_args.0, %sw.bb168 ], [ %ssl_args.0, %sw.bb167 ], [ %ssl_args.0, %sw.bb166 ], [ %ssl_args.0, %sw.bb164 ], [ %ssl_args.0, %sw.bb162 ], [ %ssl_args.0, %sw.bb161 ], [ %ssl_args.0, %sw.bb159 ], [ %ssl_args.0, %sw.bb157 ], [ %ssl_args.0, %sw.bb155 ], [ %ssl_args.0, %sw.bb154 ], [ %ssl_args.0, %sw.bb152 ], [ %ssl_args.0, %sw.bb151 ], [ %ssl_args.0, %sw.bb149 ], [ %ssl_args.0, %sw.bb147 ], [ %ssl_args.0, %sw.bb145 ], [ %ssl_args.0, %sw.bb139 ], [ %ssl_args.0, %sw.bb137 ], [ %ssl_args.0, %sw.bb131 ], [ %ssl_args.0, %sw.bb129 ], [ %ssl_args.0, %sw.bb127 ], [ %ssl_args.0, %sw.bb125 ], [ %ssl_args.0, %sw.bb119 ], [ %ssl_args.0, %sw.bb117 ], [ %ssl_args.0, %sw.bb111 ], [ %ssl_args.0, %sw.bb109 ], [ %ssl_args.0, %sw.bb108 ], [ %ssl_args.0, %sw.bb106 ], [ %ssl_args.0, %sw.bb100 ], [ %ssl_args.0, %sw.bb98 ], [ %ssl_args.0, %sw.bb96 ], [ %ssl_args.0, %sw.bb89 ], [ %ssl_args.0, %if.then93 ], [ %ssl_args.0, %sw.bb82 ], [ %ssl_args.0, %if.then86 ], [ %ssl_args.0, %sw.bb79 ], [ %ssl_args.0, %sw.bb78 ], [ %ssl_args.0, %sw.bb75 ], [ %ssl_args.0, %sw.bb65 ], [ %ssl_args.0, %sw.bb55 ], [ %ssl_args.0, %if.then49 ], [ %ssl_args.0, %sw.bb47 ], [ %ssl_args.0, %if.then53 ], [ %ssl_args.0, %sw.bb51 ], [ %ssl_args.0, %sw.bb262 ], [ %ssl_args.0, %for.cond ]
  %CApath.0.be = phi i8* [ %CApath.0, %if.end44 ], [ %CApath.0, %sw.bb341 ], [ %CApath.0, %sw.bb339 ], [ %CApath.0, %sw.bb337 ], [ %CApath.0, %sw.bb335 ], [ %CApath.0, %sw.bb333 ], [ %CApath.0, %sw.bb331 ], [ %CApath.0, %sw.bb329 ], [ %CApath.0, %sw.bb328 ], [ %CApath.0, %sw.bb326 ], [ %CApath.0, %sw.bb321 ], [ %CApath.0, %sw.bb344 ], [ %CApath.0, %sw.bb345 ], [ %CApath.0, %sw.bb315 ], [ %CApath.0, %sw.bb348 ], [ %CApath.0, %sw.bb351 ], [ %CApath.0, %sw.bb311 ], [ %CApath.0, %sw.bb309 ], [ %CApath.0, %sw.bb308 ], [ %CApath.0, %sw.bb307 ], [ %CApath.0, %sw.bb304 ], [ %CApath.0, %sw.bb303 ], [ %CApath.0, %sw.bb381 ], [ %CApath.0, %sw.bb382 ], [ %CApath.0, %sw.bb301 ], [ %CApath.0, %sw.bb299 ], [ %CApath.0, %sw.bb297 ], [ %CApath.0, %sw.bb296 ], [ %CApath.0, %sw.bb295 ], [ %CApath.0, %sw.bb294 ], [ %CApath.0, %sw.bb293 ], [ %CApath.0, %sw.bb292 ], [ %CApath.0, %sw.bb290 ], [ %CApath.0, %sw.bb289 ], [ %CApath.0, %sw.bb288 ], [ %CApath.0, %sw.bb287 ], [ %CApath.0, %sw.bb286 ], [ %CApath.0, %sw.bb280 ], [ %CApath.0, %sw.bb274 ], [ %CApath.0, %sw.bb272 ], [ %CApath.0, %sw.bb260 ], [ %CApath.0, %sw.bb258 ], [ %CApath.0, %sw.bb257 ], [ %CApath.0, %sw.bb256 ], [ %CApath.0, %sw.bb255 ], [ %CApath.0, %sw.bb254 ], [ %CApath.0, %sw.bb253 ], [ %CApath.0, %sw.bb252 ], [ %CApath.0, %sw.bb251 ], [ %CApath.0, %sw.bb250 ], [ %CApath.0, %sw.bb249 ], [ %CApath.0, %sw.bb246 ], [ %CApath.0, %sw.bb245 ], [ %CApath.0, %sw.bb243 ], [ %CApath.0, %sw.bb236 ], [ %CApath.0, %sw.bb234 ], [ %CApath.0, %sw.bb232 ], [ %CApath.0, %sw.bb229 ], [ %CApath.0, %sw.bb228 ], [ %CApath.0, %sw.bb227 ], [ %CApath.0, %sw.bb226 ], [ %CApath.0, %sw.bb225 ], [ %CApath.0, %sw.bb224 ], [ %CApath.0, %sw.bb223 ], [ %CApath.0, %sw.bb222 ], [ %CApath.0, %sw.bb221 ], [ %CApath.0, %sw.bb219 ], [ %CApath.0, %sw.bb217 ], [ %CApath.0, %sw.bb216 ], [ %CApath.0, %sw.bb214 ], [ %CApath.0, %sw.bb213 ], [ %CApath.0, %sw.bb212 ], [ %CApath.0, %sw.bb211 ], [ %CApath.0, %sw.bb206 ], [ %CApath.0, %sw.bb354 ], [ %CApath.0, %sw.bb357 ], [ %CApath.0, %if.end203 ], [ %CApath.0, %sw.bb359 ], [ %CApath.0, %sw.bb367 ], [ %CApath.0, %lor.lhs.false189 ], [ %CApath.0, %sw.bb375 ], [ %CApath.0, %sw.bb380 ], [ %CApath.0, %sw.bb168 ], [ %CApath.0, %sw.bb167 ], [ %CApath.0, %sw.bb166 ], [ %CApath.0, %sw.bb164 ], [ %CApath.0, %sw.bb162 ], [ %CApath.0, %sw.bb161 ], [ %CApath.0, %sw.bb159 ], [ %CApath.0, %sw.bb157 ], [ %CApath.0, %sw.bb155 ], [ %CApath.0, %sw.bb154 ], [ %call153, %sw.bb152 ], [ %CApath.0, %sw.bb151 ], [ %CApath.0, %sw.bb149 ], [ %CApath.0, %sw.bb147 ], [ %CApath.0, %sw.bb145 ], [ %CApath.0, %sw.bb139 ], [ %CApath.0, %sw.bb137 ], [ %CApath.0, %sw.bb131 ], [ %CApath.0, %sw.bb129 ], [ %CApath.0, %sw.bb127 ], [ %CApath.0, %sw.bb125 ], [ %CApath.0, %sw.bb119 ], [ %CApath.0, %sw.bb117 ], [ %CApath.0, %sw.bb111 ], [ %CApath.0, %sw.bb109 ], [ %CApath.0, %sw.bb108 ], [ %CApath.0, %sw.bb106 ], [ %CApath.0, %sw.bb100 ], [ %CApath.0, %sw.bb98 ], [ %CApath.0, %sw.bb96 ], [ %CApath.0, %sw.bb89 ], [ %CApath.0, %if.then93 ], [ %CApath.0, %sw.bb82 ], [ %CApath.0, %if.then86 ], [ %CApath.0, %sw.bb79 ], [ %CApath.0, %sw.bb78 ], [ %CApath.0, %sw.bb75 ], [ %CApath.0, %sw.bb65 ], [ %CApath.0, %sw.bb55 ], [ %CApath.0, %if.then49 ], [ %CApath.0, %sw.bb47 ], [ %CApath.0, %if.then53 ], [ %CApath.0, %sw.bb51 ], [ %CApath.0, %sw.bb262 ], [ %CApath.0, %for.cond ]
  %CAfile.0.be = phi i8* [ %CAfile.0, %if.end44 ], [ %CAfile.0, %sw.bb341 ], [ %CAfile.0, %sw.bb339 ], [ %CAfile.0, %sw.bb337 ], [ %CAfile.0, %sw.bb335 ], [ %CAfile.0, %sw.bb333 ], [ %CAfile.0, %sw.bb331 ], [ %CAfile.0, %sw.bb329 ], [ %CAfile.0, %sw.bb328 ], [ %CAfile.0, %sw.bb326 ], [ %CAfile.0, %sw.bb321 ], [ %CAfile.0, %sw.bb344 ], [ %CAfile.0, %sw.bb345 ], [ %CAfile.0, %sw.bb315 ], [ %CAfile.0, %sw.bb348 ], [ %CAfile.0, %sw.bb351 ], [ %CAfile.0, %sw.bb311 ], [ %CAfile.0, %sw.bb309 ], [ %CAfile.0, %sw.bb308 ], [ %CAfile.0, %sw.bb307 ], [ %CAfile.0, %sw.bb304 ], [ %CAfile.0, %sw.bb303 ], [ %CAfile.0, %sw.bb381 ], [ %CAfile.0, %sw.bb382 ], [ %CAfile.0, %sw.bb301 ], [ %CAfile.0, %sw.bb299 ], [ %CAfile.0, %sw.bb297 ], [ %CAfile.0, %sw.bb296 ], [ %CAfile.0, %sw.bb295 ], [ %CAfile.0, %sw.bb294 ], [ %CAfile.0, %sw.bb293 ], [ %CAfile.0, %sw.bb292 ], [ %CAfile.0, %sw.bb290 ], [ %CAfile.0, %sw.bb289 ], [ %CAfile.0, %sw.bb288 ], [ %CAfile.0, %sw.bb287 ], [ %CAfile.0, %sw.bb286 ], [ %CAfile.0, %sw.bb280 ], [ %CAfile.0, %sw.bb274 ], [ %CAfile.0, %sw.bb272 ], [ %CAfile.0, %sw.bb260 ], [ %CAfile.0, %sw.bb258 ], [ %CAfile.0, %sw.bb257 ], [ %CAfile.0, %sw.bb256 ], [ %CAfile.0, %sw.bb255 ], [ %CAfile.0, %sw.bb254 ], [ %CAfile.0, %sw.bb253 ], [ %CAfile.0, %sw.bb252 ], [ %CAfile.0, %sw.bb251 ], [ %CAfile.0, %sw.bb250 ], [ %CAfile.0, %sw.bb249 ], [ %CAfile.0, %sw.bb246 ], [ %CAfile.0, %sw.bb245 ], [ %CAfile.0, %sw.bb243 ], [ %CAfile.0, %sw.bb236 ], [ %CAfile.0, %sw.bb234 ], [ %CAfile.0, %sw.bb232 ], [ %CAfile.0, %sw.bb229 ], [ %CAfile.0, %sw.bb228 ], [ %CAfile.0, %sw.bb227 ], [ %CAfile.0, %sw.bb226 ], [ %CAfile.0, %sw.bb225 ], [ %CAfile.0, %sw.bb224 ], [ %CAfile.0, %sw.bb223 ], [ %CAfile.0, %sw.bb222 ], [ %CAfile.0, %sw.bb221 ], [ %CAfile.0, %sw.bb219 ], [ %CAfile.0, %sw.bb217 ], [ %CAfile.0, %sw.bb216 ], [ %call215, %sw.bb214 ], [ %CAfile.0, %sw.bb213 ], [ %CAfile.0, %sw.bb212 ], [ %CAfile.0, %sw.bb211 ], [ %CAfile.0, %sw.bb206 ], [ %CAfile.0, %sw.bb354 ], [ %CAfile.0, %sw.bb357 ], [ %CAfile.0, %if.end203 ], [ %CAfile.0, %sw.bb359 ], [ %CAfile.0, %sw.bb367 ], [ %CAfile.0, %lor.lhs.false189 ], [ %CAfile.0, %sw.bb375 ], [ %CAfile.0, %sw.bb380 ], [ %CAfile.0, %sw.bb168 ], [ %CAfile.0, %sw.bb167 ], [ %CAfile.0, %sw.bb166 ], [ %CAfile.0, %sw.bb164 ], [ %CAfile.0, %sw.bb162 ], [ %CAfile.0, %sw.bb161 ], [ %CAfile.0, %sw.bb159 ], [ %CAfile.0, %sw.bb157 ], [ %CAfile.0, %sw.bb155 ], [ %CAfile.0, %sw.bb154 ], [ %CAfile.0, %sw.bb152 ], [ %CAfile.0, %sw.bb151 ], [ %CAfile.0, %sw.bb149 ], [ %CAfile.0, %sw.bb147 ], [ %CAfile.0, %sw.bb145 ], [ %CAfile.0, %sw.bb139 ], [ %CAfile.0, %sw.bb137 ], [ %CAfile.0, %sw.bb131 ], [ %CAfile.0, %sw.bb129 ], [ %CAfile.0, %sw.bb127 ], [ %CAfile.0, %sw.bb125 ], [ %CAfile.0, %sw.bb119 ], [ %CAfile.0, %sw.bb117 ], [ %CAfile.0, %sw.bb111 ], [ %CAfile.0, %sw.bb109 ], [ %CAfile.0, %sw.bb108 ], [ %CAfile.0, %sw.bb106 ], [ %CAfile.0, %sw.bb100 ], [ %CAfile.0, %sw.bb98 ], [ %CAfile.0, %sw.bb96 ], [ %CAfile.0, %sw.bb89 ], [ %CAfile.0, %if.then93 ], [ %CAfile.0, %sw.bb82 ], [ %CAfile.0, %if.then86 ], [ %CAfile.0, %sw.bb79 ], [ %CAfile.0, %sw.bb78 ], [ %CAfile.0, %sw.bb75 ], [ %CAfile.0, %sw.bb65 ], [ %CAfile.0, %sw.bb55 ], [ %CAfile.0, %if.then49 ], [ %CAfile.0, %sw.bb47 ], [ %CAfile.0, %if.then53 ], [ %CAfile.0, %sw.bb51 ], [ %CAfile.0, %sw.bb262 ], [ %CAfile.0, %for.cond ]
  %CAstore.0.be = phi i8* [ %CAstore.0, %if.end44 ], [ %CAstore.0, %sw.bb341 ], [ %CAstore.0, %sw.bb339 ], [ %CAstore.0, %sw.bb337 ], [ %CAstore.0, %sw.bb335 ], [ %CAstore.0, %sw.bb333 ], [ %CAstore.0, %sw.bb331 ], [ %CAstore.0, %sw.bb329 ], [ %CAstore.0, %sw.bb328 ], [ %CAstore.0, %sw.bb326 ], [ %CAstore.0, %sw.bb321 ], [ %CAstore.0, %sw.bb344 ], [ %CAstore.0, %sw.bb345 ], [ %CAstore.0, %sw.bb315 ], [ %CAstore.0, %sw.bb348 ], [ %CAstore.0, %sw.bb351 ], [ %CAstore.0, %sw.bb311 ], [ %CAstore.0, %sw.bb309 ], [ %CAstore.0, %sw.bb308 ], [ %CAstore.0, %sw.bb307 ], [ %CAstore.0, %sw.bb304 ], [ %CAstore.0, %sw.bb303 ], [ %CAstore.0, %sw.bb381 ], [ %CAstore.0, %sw.bb382 ], [ %CAstore.0, %sw.bb301 ], [ %CAstore.0, %sw.bb299 ], [ %CAstore.0, %sw.bb297 ], [ %CAstore.0, %sw.bb296 ], [ %CAstore.0, %sw.bb295 ], [ %CAstore.0, %sw.bb294 ], [ %CAstore.0, %sw.bb293 ], [ %CAstore.0, %sw.bb292 ], [ %CAstore.0, %sw.bb290 ], [ %CAstore.0, %sw.bb289 ], [ %CAstore.0, %sw.bb288 ], [ %CAstore.0, %sw.bb287 ], [ %CAstore.0, %sw.bb286 ], [ %CAstore.0, %sw.bb280 ], [ %CAstore.0, %sw.bb274 ], [ %CAstore.0, %sw.bb272 ], [ %CAstore.0, %sw.bb260 ], [ %CAstore.0, %sw.bb258 ], [ %CAstore.0, %sw.bb257 ], [ %CAstore.0, %sw.bb256 ], [ %CAstore.0, %sw.bb255 ], [ %CAstore.0, %sw.bb254 ], [ %CAstore.0, %sw.bb253 ], [ %CAstore.0, %sw.bb252 ], [ %CAstore.0, %sw.bb251 ], [ %CAstore.0, %sw.bb250 ], [ %CAstore.0, %sw.bb249 ], [ %CAstore.0, %sw.bb246 ], [ %CAstore.0, %sw.bb245 ], [ %CAstore.0, %sw.bb243 ], [ %CAstore.0, %sw.bb236 ], [ %CAstore.0, %sw.bb234 ], [ %CAstore.0, %sw.bb232 ], [ %CAstore.0, %sw.bb229 ], [ %CAstore.0, %sw.bb228 ], [ %CAstore.0, %sw.bb227 ], [ %CAstore.0, %sw.bb226 ], [ %CAstore.0, %sw.bb225 ], [ %CAstore.0, %sw.bb224 ], [ %CAstore.0, %sw.bb223 ], [ %CAstore.0, %sw.bb222 ], [ %CAstore.0, %sw.bb221 ], [ %CAstore.0, %sw.bb219 ], [ %CAstore.0, %sw.bb217 ], [ %CAstore.0, %sw.bb216 ], [ %CAstore.0, %sw.bb214 ], [ %CAstore.0, %sw.bb213 ], [ %CAstore.0, %sw.bb212 ], [ %CAstore.0, %sw.bb211 ], [ %CAstore.0, %sw.bb206 ], [ %CAstore.0, %sw.bb354 ], [ %CAstore.0, %sw.bb357 ], [ %CAstore.0, %if.end203 ], [ %CAstore.0, %sw.bb359 ], [ %CAstore.0, %sw.bb367 ], [ %CAstore.0, %lor.lhs.false189 ], [ %CAstore.0, %sw.bb375 ], [ %CAstore.0, %sw.bb380 ], [ %CAstore.0, %sw.bb168 ], [ %CAstore.0, %sw.bb167 ], [ %CAstore.0, %sw.bb166 ], [ %CAstore.0, %sw.bb164 ], [ %CAstore.0, %sw.bb162 ], [ %CAstore.0, %sw.bb161 ], [ %call160, %sw.bb159 ], [ %CAstore.0, %sw.bb157 ], [ %CAstore.0, %sw.bb155 ], [ %CAstore.0, %sw.bb154 ], [ %CAstore.0, %sw.bb152 ], [ %CAstore.0, %sw.bb151 ], [ %CAstore.0, %sw.bb149 ], [ %CAstore.0, %sw.bb147 ], [ %CAstore.0, %sw.bb145 ], [ %CAstore.0, %sw.bb139 ], [ %CAstore.0, %sw.bb137 ], [ %CAstore.0, %sw.bb131 ], [ %CAstore.0, %sw.bb129 ], [ %CAstore.0, %sw.bb127 ], [ %CAstore.0, %sw.bb125 ], [ %CAstore.0, %sw.bb119 ], [ %CAstore.0, %sw.bb117 ], [ %CAstore.0, %sw.bb111 ], [ %CAstore.0, %sw.bb109 ], [ %CAstore.0, %sw.bb108 ], [ %CAstore.0, %sw.bb106 ], [ %CAstore.0, %sw.bb100 ], [ %CAstore.0, %sw.bb98 ], [ %CAstore.0, %sw.bb96 ], [ %CAstore.0, %sw.bb89 ], [ %CAstore.0, %if.then93 ], [ %CAstore.0, %sw.bb82 ], [ %CAstore.0, %if.then86 ], [ %CAstore.0, %sw.bb79 ], [ %CAstore.0, %sw.bb78 ], [ %CAstore.0, %sw.bb75 ], [ %CAstore.0, %sw.bb65 ], [ %CAstore.0, %sw.bb55 ], [ %CAstore.0, %if.then49 ], [ %CAstore.0, %sw.bb47 ], [ %CAstore.0, %if.then53 ], [ %CAstore.0, %sw.bb51 ], [ %CAstore.0, %sw.bb262 ], [ %CAstore.0, %for.cond ]
  %chCApath.0.be = phi i8* [ %chCApath.0, %if.end44 ], [ %chCApath.0, %sw.bb341 ], [ %chCApath.0, %sw.bb339 ], [ %chCApath.0, %sw.bb337 ], [ %chCApath.0, %sw.bb335 ], [ %chCApath.0, %sw.bb333 ], [ %chCApath.0, %sw.bb331 ], [ %chCApath.0, %sw.bb329 ], [ %chCApath.0, %sw.bb328 ], [ %chCApath.0, %sw.bb326 ], [ %chCApath.0, %sw.bb321 ], [ %chCApath.0, %sw.bb344 ], [ %chCApath.0, %sw.bb345 ], [ %chCApath.0, %sw.bb315 ], [ %chCApath.0, %sw.bb348 ], [ %chCApath.0, %sw.bb351 ], [ %chCApath.0, %sw.bb311 ], [ %chCApath.0, %sw.bb309 ], [ %chCApath.0, %sw.bb308 ], [ %chCApath.0, %sw.bb307 ], [ %chCApath.0, %sw.bb304 ], [ %chCApath.0, %sw.bb303 ], [ %chCApath.0, %sw.bb381 ], [ %chCApath.0, %sw.bb382 ], [ %chCApath.0, %sw.bb301 ], [ %chCApath.0, %sw.bb299 ], [ %chCApath.0, %sw.bb297 ], [ %chCApath.0, %sw.bb296 ], [ %chCApath.0, %sw.bb295 ], [ %chCApath.0, %sw.bb294 ], [ %chCApath.0, %sw.bb293 ], [ %chCApath.0, %sw.bb292 ], [ %chCApath.0, %sw.bb290 ], [ %chCApath.0, %sw.bb289 ], [ %chCApath.0, %sw.bb288 ], [ %chCApath.0, %sw.bb287 ], [ %chCApath.0, %sw.bb286 ], [ %chCApath.0, %sw.bb280 ], [ %chCApath.0, %sw.bb274 ], [ %chCApath.0, %sw.bb272 ], [ %chCApath.0, %sw.bb260 ], [ %chCApath.0, %sw.bb258 ], [ %chCApath.0, %sw.bb257 ], [ %chCApath.0, %sw.bb256 ], [ %chCApath.0, %sw.bb255 ], [ %chCApath.0, %sw.bb254 ], [ %chCApath.0, %sw.bb253 ], [ %chCApath.0, %sw.bb252 ], [ %chCApath.0, %sw.bb251 ], [ %chCApath.0, %sw.bb250 ], [ %chCApath.0, %sw.bb249 ], [ %chCApath.0, %sw.bb246 ], [ %chCApath.0, %sw.bb245 ], [ %chCApath.0, %sw.bb243 ], [ %chCApath.0, %sw.bb236 ], [ %chCApath.0, %sw.bb234 ], [ %chCApath.0, %sw.bb232 ], [ %chCApath.0, %sw.bb229 ], [ %chCApath.0, %sw.bb228 ], [ %chCApath.0, %sw.bb227 ], [ %chCApath.0, %sw.bb226 ], [ %chCApath.0, %sw.bb225 ], [ %chCApath.0, %sw.bb224 ], [ %chCApath.0, %sw.bb223 ], [ %chCApath.0, %sw.bb222 ], [ %chCApath.0, %sw.bb221 ], [ %chCApath.0, %sw.bb219 ], [ %chCApath.0, %sw.bb217 ], [ %chCApath.0, %sw.bb216 ], [ %chCApath.0, %sw.bb214 ], [ %chCApath.0, %sw.bb213 ], [ %chCApath.0, %sw.bb212 ], [ %chCApath.0, %sw.bb211 ], [ %chCApath.0, %sw.bb206 ], [ %chCApath.0, %sw.bb354 ], [ %chCApath.0, %sw.bb357 ], [ %chCApath.0, %if.end203 ], [ %chCApath.0, %sw.bb359 ], [ %chCApath.0, %sw.bb367 ], [ %chCApath.0, %lor.lhs.false189 ], [ %chCApath.0, %sw.bb375 ], [ %chCApath.0, %sw.bb380 ], [ %chCApath.0, %sw.bb168 ], [ %chCApath.0, %sw.bb167 ], [ %chCApath.0, %sw.bb166 ], [ %chCApath.0, %sw.bb164 ], [ %chCApath.0, %sw.bb162 ], [ %chCApath.0, %sw.bb161 ], [ %chCApath.0, %sw.bb159 ], [ %chCApath.0, %sw.bb157 ], [ %call156, %sw.bb155 ], [ %chCApath.0, %sw.bb154 ], [ %chCApath.0, %sw.bb152 ], [ %chCApath.0, %sw.bb151 ], [ %chCApath.0, %sw.bb149 ], [ %chCApath.0, %sw.bb147 ], [ %chCApath.0, %sw.bb145 ], [ %chCApath.0, %sw.bb139 ], [ %chCApath.0, %sw.bb137 ], [ %chCApath.0, %sw.bb131 ], [ %chCApath.0, %sw.bb129 ], [ %chCApath.0, %sw.bb127 ], [ %chCApath.0, %sw.bb125 ], [ %chCApath.0, %sw.bb119 ], [ %chCApath.0, %sw.bb117 ], [ %chCApath.0, %sw.bb111 ], [ %chCApath.0, %sw.bb109 ], [ %chCApath.0, %sw.bb108 ], [ %chCApath.0, %sw.bb106 ], [ %chCApath.0, %sw.bb100 ], [ %chCApath.0, %sw.bb98 ], [ %chCApath.0, %sw.bb96 ], [ %chCApath.0, %sw.bb89 ], [ %chCApath.0, %if.then93 ], [ %chCApath.0, %sw.bb82 ], [ %chCApath.0, %if.then86 ], [ %chCApath.0, %sw.bb79 ], [ %chCApath.0, %sw.bb78 ], [ %chCApath.0, %sw.bb75 ], [ %chCApath.0, %sw.bb65 ], [ %chCApath.0, %sw.bb55 ], [ %chCApath.0, %if.then49 ], [ %chCApath.0, %sw.bb47 ], [ %chCApath.0, %if.then53 ], [ %chCApath.0, %sw.bb51 ], [ %chCApath.0, %sw.bb262 ], [ %chCApath.0, %for.cond ]
  %chCAfile.0.be = phi i8* [ %chCAfile.0, %if.end44 ], [ %chCAfile.0, %sw.bb341 ], [ %chCAfile.0, %sw.bb339 ], [ %chCAfile.0, %sw.bb337 ], [ %chCAfile.0, %sw.bb335 ], [ %chCAfile.0, %sw.bb333 ], [ %chCAfile.0, %sw.bb331 ], [ %chCAfile.0, %sw.bb329 ], [ %chCAfile.0, %sw.bb328 ], [ %chCAfile.0, %sw.bb326 ], [ %chCAfile.0, %sw.bb321 ], [ %chCAfile.0, %sw.bb344 ], [ %chCAfile.0, %sw.bb345 ], [ %chCAfile.0, %sw.bb315 ], [ %chCAfile.0, %sw.bb348 ], [ %chCAfile.0, %sw.bb351 ], [ %chCAfile.0, %sw.bb311 ], [ %chCAfile.0, %sw.bb309 ], [ %chCAfile.0, %sw.bb308 ], [ %chCAfile.0, %sw.bb307 ], [ %chCAfile.0, %sw.bb304 ], [ %chCAfile.0, %sw.bb303 ], [ %chCAfile.0, %sw.bb381 ], [ %chCAfile.0, %sw.bb382 ], [ %chCAfile.0, %sw.bb301 ], [ %chCAfile.0, %sw.bb299 ], [ %chCAfile.0, %sw.bb297 ], [ %chCAfile.0, %sw.bb296 ], [ %chCAfile.0, %sw.bb295 ], [ %chCAfile.0, %sw.bb294 ], [ %chCAfile.0, %sw.bb293 ], [ %chCAfile.0, %sw.bb292 ], [ %chCAfile.0, %sw.bb290 ], [ %chCAfile.0, %sw.bb289 ], [ %chCAfile.0, %sw.bb288 ], [ %chCAfile.0, %sw.bb287 ], [ %chCAfile.0, %sw.bb286 ], [ %chCAfile.0, %sw.bb280 ], [ %chCAfile.0, %sw.bb274 ], [ %chCAfile.0, %sw.bb272 ], [ %chCAfile.0, %sw.bb260 ], [ %chCAfile.0, %sw.bb258 ], [ %chCAfile.0, %sw.bb257 ], [ %chCAfile.0, %sw.bb256 ], [ %chCAfile.0, %sw.bb255 ], [ %chCAfile.0, %sw.bb254 ], [ %chCAfile.0, %sw.bb253 ], [ %chCAfile.0, %sw.bb252 ], [ %chCAfile.0, %sw.bb251 ], [ %chCAfile.0, %sw.bb250 ], [ %chCAfile.0, %sw.bb249 ], [ %chCAfile.0, %sw.bb246 ], [ %chCAfile.0, %sw.bb245 ], [ %chCAfile.0, %sw.bb243 ], [ %chCAfile.0, %sw.bb236 ], [ %chCAfile.0, %sw.bb234 ], [ %chCAfile.0, %sw.bb232 ], [ %chCAfile.0, %sw.bb229 ], [ %chCAfile.0, %sw.bb228 ], [ %chCAfile.0, %sw.bb227 ], [ %chCAfile.0, %sw.bb226 ], [ %chCAfile.0, %sw.bb225 ], [ %chCAfile.0, %sw.bb224 ], [ %chCAfile.0, %sw.bb223 ], [ %chCAfile.0, %sw.bb222 ], [ %chCAfile.0, %sw.bb221 ], [ %chCAfile.0, %sw.bb219 ], [ %call218, %sw.bb217 ], [ %chCAfile.0, %sw.bb216 ], [ %chCAfile.0, %sw.bb214 ], [ %chCAfile.0, %sw.bb213 ], [ %chCAfile.0, %sw.bb212 ], [ %chCAfile.0, %sw.bb211 ], [ %chCAfile.0, %sw.bb206 ], [ %chCAfile.0, %sw.bb354 ], [ %chCAfile.0, %sw.bb357 ], [ %chCAfile.0, %if.end203 ], [ %chCAfile.0, %sw.bb359 ], [ %chCAfile.0, %sw.bb367 ], [ %chCAfile.0, %lor.lhs.false189 ], [ %chCAfile.0, %sw.bb375 ], [ %chCAfile.0, %sw.bb380 ], [ %chCAfile.0, %sw.bb168 ], [ %chCAfile.0, %sw.bb167 ], [ %chCAfile.0, %sw.bb166 ], [ %chCAfile.0, %sw.bb164 ], [ %chCAfile.0, %sw.bb162 ], [ %chCAfile.0, %sw.bb161 ], [ %chCAfile.0, %sw.bb159 ], [ %chCAfile.0, %sw.bb157 ], [ %chCAfile.0, %sw.bb155 ], [ %chCAfile.0, %sw.bb154 ], [ %chCAfile.0, %sw.bb152 ], [ %chCAfile.0, %sw.bb151 ], [ %chCAfile.0, %sw.bb149 ], [ %chCAfile.0, %sw.bb147 ], [ %chCAfile.0, %sw.bb145 ], [ %chCAfile.0, %sw.bb139 ], [ %chCAfile.0, %sw.bb137 ], [ %chCAfile.0, %sw.bb131 ], [ %chCAfile.0, %sw.bb129 ], [ %chCAfile.0, %sw.bb127 ], [ %chCAfile.0, %sw.bb125 ], [ %chCAfile.0, %sw.bb119 ], [ %chCAfile.0, %sw.bb117 ], [ %chCAfile.0, %sw.bb111 ], [ %chCAfile.0, %sw.bb109 ], [ %chCAfile.0, %sw.bb108 ], [ %chCAfile.0, %sw.bb106 ], [ %chCAfile.0, %sw.bb100 ], [ %chCAfile.0, %sw.bb98 ], [ %chCAfile.0, %sw.bb96 ], [ %chCAfile.0, %sw.bb89 ], [ %chCAfile.0, %if.then93 ], [ %chCAfile.0, %sw.bb82 ], [ %chCAfile.0, %if.then86 ], [ %chCAfile.0, %sw.bb79 ], [ %chCAfile.0, %sw.bb78 ], [ %chCAfile.0, %sw.bb75 ], [ %chCAfile.0, %sw.bb65 ], [ %chCAfile.0, %sw.bb55 ], [ %chCAfile.0, %if.then49 ], [ %chCAfile.0, %sw.bb47 ], [ %chCAfile.0, %if.then53 ], [ %chCAfile.0, %sw.bb51 ], [ %chCAfile.0, %sw.bb262 ], [ %chCAfile.0, %for.cond ]
  %chCAstore.0.be = phi i8* [ %chCAstore.0, %if.end44 ], [ %chCAstore.0, %sw.bb341 ], [ %chCAstore.0, %sw.bb339 ], [ %chCAstore.0, %sw.bb337 ], [ %chCAstore.0, %sw.bb335 ], [ %chCAstore.0, %sw.bb333 ], [ %chCAstore.0, %sw.bb331 ], [ %chCAstore.0, %sw.bb329 ], [ %chCAstore.0, %sw.bb328 ], [ %chCAstore.0, %sw.bb326 ], [ %chCAstore.0, %sw.bb321 ], [ %chCAstore.0, %sw.bb344 ], [ %chCAstore.0, %sw.bb345 ], [ %chCAstore.0, %sw.bb315 ], [ %chCAstore.0, %sw.bb348 ], [ %chCAstore.0, %sw.bb351 ], [ %chCAstore.0, %sw.bb311 ], [ %chCAstore.0, %sw.bb309 ], [ %chCAstore.0, %sw.bb308 ], [ %chCAstore.0, %sw.bb307 ], [ %chCAstore.0, %sw.bb304 ], [ %chCAstore.0, %sw.bb303 ], [ %chCAstore.0, %sw.bb381 ], [ %chCAstore.0, %sw.bb382 ], [ %chCAstore.0, %sw.bb301 ], [ %chCAstore.0, %sw.bb299 ], [ %chCAstore.0, %sw.bb297 ], [ %chCAstore.0, %sw.bb296 ], [ %chCAstore.0, %sw.bb295 ], [ %chCAstore.0, %sw.bb294 ], [ %chCAstore.0, %sw.bb293 ], [ %chCAstore.0, %sw.bb292 ], [ %chCAstore.0, %sw.bb290 ], [ %chCAstore.0, %sw.bb289 ], [ %chCAstore.0, %sw.bb288 ], [ %chCAstore.0, %sw.bb287 ], [ %chCAstore.0, %sw.bb286 ], [ %chCAstore.0, %sw.bb280 ], [ %chCAstore.0, %sw.bb274 ], [ %chCAstore.0, %sw.bb272 ], [ %chCAstore.0, %sw.bb260 ], [ %chCAstore.0, %sw.bb258 ], [ %chCAstore.0, %sw.bb257 ], [ %chCAstore.0, %sw.bb256 ], [ %chCAstore.0, %sw.bb255 ], [ %chCAstore.0, %sw.bb254 ], [ %chCAstore.0, %sw.bb253 ], [ %chCAstore.0, %sw.bb252 ], [ %chCAstore.0, %sw.bb251 ], [ %chCAstore.0, %sw.bb250 ], [ %chCAstore.0, %sw.bb249 ], [ %chCAstore.0, %sw.bb246 ], [ %chCAstore.0, %sw.bb245 ], [ %chCAstore.0, %sw.bb243 ], [ %chCAstore.0, %sw.bb236 ], [ %chCAstore.0, %sw.bb234 ], [ %chCAstore.0, %sw.bb232 ], [ %chCAstore.0, %sw.bb229 ], [ %chCAstore.0, %sw.bb228 ], [ %chCAstore.0, %sw.bb227 ], [ %chCAstore.0, %sw.bb226 ], [ %chCAstore.0, %sw.bb225 ], [ %chCAstore.0, %sw.bb224 ], [ %chCAstore.0, %sw.bb223 ], [ %chCAstore.0, %sw.bb222 ], [ %chCAstore.0, %sw.bb221 ], [ %chCAstore.0, %sw.bb219 ], [ %chCAstore.0, %sw.bb217 ], [ %chCAstore.0, %sw.bb216 ], [ %chCAstore.0, %sw.bb214 ], [ %chCAstore.0, %sw.bb213 ], [ %chCAstore.0, %sw.bb212 ], [ %chCAstore.0, %sw.bb211 ], [ %chCAstore.0, %sw.bb206 ], [ %chCAstore.0, %sw.bb354 ], [ %chCAstore.0, %sw.bb357 ], [ %chCAstore.0, %if.end203 ], [ %chCAstore.0, %sw.bb359 ], [ %chCAstore.0, %sw.bb367 ], [ %chCAstore.0, %lor.lhs.false189 ], [ %chCAstore.0, %sw.bb375 ], [ %chCAstore.0, %sw.bb380 ], [ %chCAstore.0, %sw.bb168 ], [ %chCAstore.0, %sw.bb167 ], [ %chCAstore.0, %sw.bb166 ], [ %chCAstore.0, %sw.bb164 ], [ %call163, %sw.bb162 ], [ %chCAstore.0, %sw.bb161 ], [ %chCAstore.0, %sw.bb159 ], [ %chCAstore.0, %sw.bb157 ], [ %chCAstore.0, %sw.bb155 ], [ %chCAstore.0, %sw.bb154 ], [ %chCAstore.0, %sw.bb152 ], [ %chCAstore.0, %sw.bb151 ], [ %chCAstore.0, %sw.bb149 ], [ %chCAstore.0, %sw.bb147 ], [ %chCAstore.0, %sw.bb145 ], [ %chCAstore.0, %sw.bb139 ], [ %chCAstore.0, %sw.bb137 ], [ %chCAstore.0, %sw.bb131 ], [ %chCAstore.0, %sw.bb129 ], [ %chCAstore.0, %sw.bb127 ], [ %chCAstore.0, %sw.bb125 ], [ %chCAstore.0, %sw.bb119 ], [ %chCAstore.0, %sw.bb117 ], [ %chCAstore.0, %sw.bb111 ], [ %chCAstore.0, %sw.bb109 ], [ %chCAstore.0, %sw.bb108 ], [ %chCAstore.0, %sw.bb106 ], [ %chCAstore.0, %sw.bb100 ], [ %chCAstore.0, %sw.bb98 ], [ %chCAstore.0, %sw.bb96 ], [ %chCAstore.0, %sw.bb89 ], [ %chCAstore.0, %if.then93 ], [ %chCAstore.0, %sw.bb82 ], [ %chCAstore.0, %if.then86 ], [ %chCAstore.0, %sw.bb79 ], [ %chCAstore.0, %sw.bb78 ], [ %chCAstore.0, %sw.bb75 ], [ %chCAstore.0, %sw.bb65 ], [ %chCAstore.0, %sw.bb55 ], [ %chCAstore.0, %if.then49 ], [ %chCAstore.0, %sw.bb47 ], [ %chCAstore.0, %if.then53 ], [ %chCAstore.0, %sw.bb51 ], [ %chCAstore.0, %sw.bb262 ], [ %chCAstore.0, %for.cond ]
  %dpassarg.0.be = phi i8* [ %dpassarg.0, %if.end44 ], [ %dpassarg.0, %sw.bb341 ], [ %dpassarg.0, %sw.bb339 ], [ %dpassarg.0, %sw.bb337 ], [ %dpassarg.0, %sw.bb335 ], [ %dpassarg.0, %sw.bb333 ], [ %dpassarg.0, %sw.bb331 ], [ %dpassarg.0, %sw.bb329 ], [ %dpassarg.0, %sw.bb328 ], [ %dpassarg.0, %sw.bb326 ], [ %dpassarg.0, %sw.bb321 ], [ %dpassarg.0, %sw.bb344 ], [ %dpassarg.0, %sw.bb345 ], [ %dpassarg.0, %sw.bb315 ], [ %dpassarg.0, %sw.bb348 ], [ %dpassarg.0, %sw.bb351 ], [ %dpassarg.0, %sw.bb311 ], [ %dpassarg.0, %sw.bb309 ], [ %dpassarg.0, %sw.bb308 ], [ %dpassarg.0, %sw.bb307 ], [ %dpassarg.0, %sw.bb304 ], [ %dpassarg.0, %sw.bb303 ], [ %dpassarg.0, %sw.bb381 ], [ %dpassarg.0, %sw.bb382 ], [ %dpassarg.0, %sw.bb301 ], [ %dpassarg.0, %sw.bb299 ], [ %dpassarg.0, %sw.bb297 ], [ %dpassarg.0, %sw.bb296 ], [ %dpassarg.0, %sw.bb295 ], [ %dpassarg.0, %sw.bb294 ], [ %dpassarg.0, %sw.bb293 ], [ %dpassarg.0, %sw.bb292 ], [ %dpassarg.0, %sw.bb290 ], [ %dpassarg.0, %sw.bb289 ], [ %dpassarg.0, %sw.bb288 ], [ %dpassarg.0, %sw.bb287 ], [ %dpassarg.0, %sw.bb286 ], [ %dpassarg.0, %sw.bb280 ], [ %dpassarg.0, %sw.bb274 ], [ %dpassarg.0, %sw.bb272 ], [ %dpassarg.0, %sw.bb260 ], [ %dpassarg.0, %sw.bb258 ], [ %dpassarg.0, %sw.bb257 ], [ %dpassarg.0, %sw.bb256 ], [ %dpassarg.0, %sw.bb255 ], [ %dpassarg.0, %sw.bb254 ], [ %dpassarg.0, %sw.bb253 ], [ %dpassarg.0, %sw.bb252 ], [ %dpassarg.0, %sw.bb251 ], [ %dpassarg.0, %sw.bb250 ], [ %dpassarg.0, %sw.bb249 ], [ %dpassarg.0, %sw.bb246 ], [ %dpassarg.0, %sw.bb245 ], [ %dpassarg.0, %sw.bb243 ], [ %dpassarg.0, %sw.bb236 ], [ %dpassarg.0, %sw.bb234 ], [ %dpassarg.0, %sw.bb232 ], [ %dpassarg.0, %sw.bb229 ], [ %dpassarg.0, %sw.bb228 ], [ %dpassarg.0, %sw.bb227 ], [ %dpassarg.0, %sw.bb226 ], [ %dpassarg.0, %sw.bb225 ], [ %dpassarg.0, %sw.bb224 ], [ %dpassarg.0, %sw.bb223 ], [ %dpassarg.0, %sw.bb222 ], [ %dpassarg.0, %sw.bb221 ], [ %dpassarg.0, %sw.bb219 ], [ %dpassarg.0, %sw.bb217 ], [ %dpassarg.0, %sw.bb216 ], [ %dpassarg.0, %sw.bb214 ], [ %dpassarg.0, %sw.bb213 ], [ %dpassarg.0, %sw.bb212 ], [ %dpassarg.0, %sw.bb211 ], [ %dpassarg.0, %sw.bb206 ], [ %dpassarg.0, %sw.bb354 ], [ %dpassarg.0, %sw.bb357 ], [ %dpassarg.0, %if.end203 ], [ %dpassarg.0, %sw.bb359 ], [ %dpassarg.0, %sw.bb367 ], [ %dpassarg.0, %lor.lhs.false189 ], [ %dpassarg.0, %sw.bb375 ], [ %dpassarg.0, %sw.bb380 ], [ %dpassarg.0, %sw.bb168 ], [ %dpassarg.0, %sw.bb167 ], [ %dpassarg.0, %sw.bb166 ], [ %dpassarg.0, %sw.bb164 ], [ %dpassarg.0, %sw.bb162 ], [ %dpassarg.0, %sw.bb161 ], [ %dpassarg.0, %sw.bb159 ], [ %dpassarg.0, %sw.bb157 ], [ %dpassarg.0, %sw.bb155 ], [ %dpassarg.0, %sw.bb154 ], [ %dpassarg.0, %sw.bb152 ], [ %dpassarg.0, %sw.bb151 ], [ %dpassarg.0, %sw.bb149 ], [ %dpassarg.0, %sw.bb147 ], [ %call146, %sw.bb145 ], [ %dpassarg.0, %sw.bb139 ], [ %dpassarg.0, %sw.bb137 ], [ %dpassarg.0, %sw.bb131 ], [ %dpassarg.0, %sw.bb129 ], [ %dpassarg.0, %sw.bb127 ], [ %dpassarg.0, %sw.bb125 ], [ %dpassarg.0, %sw.bb119 ], [ %dpassarg.0, %sw.bb117 ], [ %dpassarg.0, %sw.bb111 ], [ %dpassarg.0, %sw.bb109 ], [ %dpassarg.0, %sw.bb108 ], [ %dpassarg.0, %sw.bb106 ], [ %dpassarg.0, %sw.bb100 ], [ %dpassarg.0, %sw.bb98 ], [ %dpassarg.0, %sw.bb96 ], [ %dpassarg.0, %sw.bb89 ], [ %dpassarg.0, %if.then93 ], [ %dpassarg.0, %sw.bb82 ], [ %dpassarg.0, %if.then86 ], [ %dpassarg.0, %sw.bb79 ], [ %dpassarg.0, %sw.bb78 ], [ %dpassarg.0, %sw.bb75 ], [ %dpassarg.0, %sw.bb65 ], [ %dpassarg.0, %sw.bb55 ], [ %dpassarg.0, %if.then49 ], [ %dpassarg.0, %sw.bb47 ], [ %dpassarg.0, %if.then53 ], [ %dpassarg.0, %sw.bb51 ], [ %dpassarg.0, %sw.bb262 ], [ %dpassarg.0, %for.cond ]
  %passarg.0.be = phi i8* [ %passarg.0, %if.end44 ], [ %passarg.0, %sw.bb341 ], [ %passarg.0, %sw.bb339 ], [ %passarg.0, %sw.bb337 ], [ %passarg.0, %sw.bb335 ], [ %passarg.0, %sw.bb333 ], [ %passarg.0, %sw.bb331 ], [ %passarg.0, %sw.bb329 ], [ %passarg.0, %sw.bb328 ], [ %passarg.0, %sw.bb326 ], [ %passarg.0, %sw.bb321 ], [ %passarg.0, %sw.bb344 ], [ %passarg.0, %sw.bb345 ], [ %passarg.0, %sw.bb315 ], [ %passarg.0, %sw.bb348 ], [ %passarg.0, %sw.bb351 ], [ %passarg.0, %sw.bb311 ], [ %passarg.0, %sw.bb309 ], [ %passarg.0, %sw.bb308 ], [ %passarg.0, %sw.bb307 ], [ %passarg.0, %sw.bb304 ], [ %passarg.0, %sw.bb303 ], [ %passarg.0, %sw.bb381 ], [ %passarg.0, %sw.bb382 ], [ %passarg.0, %sw.bb301 ], [ %passarg.0, %sw.bb299 ], [ %passarg.0, %sw.bb297 ], [ %passarg.0, %sw.bb296 ], [ %passarg.0, %sw.bb295 ], [ %passarg.0, %sw.bb294 ], [ %passarg.0, %sw.bb293 ], [ %passarg.0, %sw.bb292 ], [ %passarg.0, %sw.bb290 ], [ %passarg.0, %sw.bb289 ], [ %passarg.0, %sw.bb288 ], [ %passarg.0, %sw.bb287 ], [ %passarg.0, %sw.bb286 ], [ %passarg.0, %sw.bb280 ], [ %passarg.0, %sw.bb274 ], [ %passarg.0, %sw.bb272 ], [ %passarg.0, %sw.bb260 ], [ %passarg.0, %sw.bb258 ], [ %passarg.0, %sw.bb257 ], [ %passarg.0, %sw.bb256 ], [ %passarg.0, %sw.bb255 ], [ %passarg.0, %sw.bb254 ], [ %passarg.0, %sw.bb253 ], [ %passarg.0, %sw.bb252 ], [ %passarg.0, %sw.bb251 ], [ %passarg.0, %sw.bb250 ], [ %passarg.0, %sw.bb249 ], [ %passarg.0, %sw.bb246 ], [ %passarg.0, %sw.bb245 ], [ %passarg.0, %sw.bb243 ], [ %passarg.0, %sw.bb236 ], [ %passarg.0, %sw.bb234 ], [ %passarg.0, %sw.bb232 ], [ %passarg.0, %sw.bb229 ], [ %passarg.0, %sw.bb228 ], [ %passarg.0, %sw.bb227 ], [ %passarg.0, %sw.bb226 ], [ %passarg.0, %sw.bb225 ], [ %passarg.0, %sw.bb224 ], [ %passarg.0, %sw.bb223 ], [ %passarg.0, %sw.bb222 ], [ %passarg.0, %sw.bb221 ], [ %passarg.0, %sw.bb219 ], [ %passarg.0, %sw.bb217 ], [ %passarg.0, %sw.bb216 ], [ %passarg.0, %sw.bb214 ], [ %passarg.0, %sw.bb213 ], [ %passarg.0, %sw.bb212 ], [ %passarg.0, %sw.bb211 ], [ %passarg.0, %sw.bb206 ], [ %passarg.0, %sw.bb354 ], [ %passarg.0, %sw.bb357 ], [ %passarg.0, %if.end203 ], [ %passarg.0, %sw.bb359 ], [ %passarg.0, %sw.bb367 ], [ %passarg.0, %lor.lhs.false189 ], [ %passarg.0, %sw.bb375 ], [ %passarg.0, %sw.bb380 ], [ %passarg.0, %sw.bb168 ], [ %passarg.0, %sw.bb167 ], [ %passarg.0, %sw.bb166 ], [ %passarg.0, %sw.bb164 ], [ %passarg.0, %sw.bb162 ], [ %passarg.0, %sw.bb161 ], [ %passarg.0, %sw.bb159 ], [ %passarg.0, %sw.bb157 ], [ %passarg.0, %sw.bb155 ], [ %passarg.0, %sw.bb154 ], [ %passarg.0, %sw.bb152 ], [ %passarg.0, %sw.bb151 ], [ %passarg.0, %sw.bb149 ], [ %passarg.0, %sw.bb147 ], [ %passarg.0, %sw.bb145 ], [ %passarg.0, %sw.bb139 ], [ %passarg.0, %sw.bb137 ], [ %passarg.0, %sw.bb131 ], [ %passarg.0, %sw.bb129 ], [ %passarg.0, %sw.bb127 ], [ %call126, %sw.bb125 ], [ %passarg.0, %sw.bb119 ], [ %passarg.0, %sw.bb117 ], [ %passarg.0, %sw.bb111 ], [ %passarg.0, %sw.bb109 ], [ %passarg.0, %sw.bb108 ], [ %passarg.0, %sw.bb106 ], [ %passarg.0, %sw.bb100 ], [ %passarg.0, %sw.bb98 ], [ %passarg.0, %sw.bb96 ], [ %passarg.0, %sw.bb89 ], [ %passarg.0, %if.then93 ], [ %passarg.0, %sw.bb82 ], [ %passarg.0, %if.then86 ], [ %passarg.0, %sw.bb79 ], [ %passarg.0, %sw.bb78 ], [ %passarg.0, %sw.bb75 ], [ %passarg.0, %sw.bb65 ], [ %passarg.0, %sw.bb55 ], [ %passarg.0, %if.then49 ], [ %passarg.0, %sw.bb47 ], [ %passarg.0, %if.then53 ], [ %passarg.0, %sw.bb51 ], [ %passarg.0, %sw.bb262 ], [ %passarg.0, %for.cond ]
  %vfyCApath.0.be = phi i8* [ %vfyCApath.0, %if.end44 ], [ %vfyCApath.0, %sw.bb341 ], [ %vfyCApath.0, %sw.bb339 ], [ %vfyCApath.0, %sw.bb337 ], [ %vfyCApath.0, %sw.bb335 ], [ %vfyCApath.0, %sw.bb333 ], [ %vfyCApath.0, %sw.bb331 ], [ %vfyCApath.0, %sw.bb329 ], [ %vfyCApath.0, %sw.bb328 ], [ %vfyCApath.0, %sw.bb326 ], [ %vfyCApath.0, %sw.bb321 ], [ %vfyCApath.0, %sw.bb344 ], [ %vfyCApath.0, %sw.bb345 ], [ %vfyCApath.0, %sw.bb315 ], [ %vfyCApath.0, %sw.bb348 ], [ %vfyCApath.0, %sw.bb351 ], [ %vfyCApath.0, %sw.bb311 ], [ %vfyCApath.0, %sw.bb309 ], [ %vfyCApath.0, %sw.bb308 ], [ %vfyCApath.0, %sw.bb307 ], [ %vfyCApath.0, %sw.bb304 ], [ %vfyCApath.0, %sw.bb303 ], [ %vfyCApath.0, %sw.bb381 ], [ %vfyCApath.0, %sw.bb382 ], [ %vfyCApath.0, %sw.bb301 ], [ %vfyCApath.0, %sw.bb299 ], [ %vfyCApath.0, %sw.bb297 ], [ %vfyCApath.0, %sw.bb296 ], [ %vfyCApath.0, %sw.bb295 ], [ %vfyCApath.0, %sw.bb294 ], [ %vfyCApath.0, %sw.bb293 ], [ %vfyCApath.0, %sw.bb292 ], [ %vfyCApath.0, %sw.bb290 ], [ %vfyCApath.0, %sw.bb289 ], [ %vfyCApath.0, %sw.bb288 ], [ %vfyCApath.0, %sw.bb287 ], [ %vfyCApath.0, %sw.bb286 ], [ %vfyCApath.0, %sw.bb280 ], [ %vfyCApath.0, %sw.bb274 ], [ %vfyCApath.0, %sw.bb272 ], [ %vfyCApath.0, %sw.bb260 ], [ %vfyCApath.0, %sw.bb258 ], [ %vfyCApath.0, %sw.bb257 ], [ %vfyCApath.0, %sw.bb256 ], [ %vfyCApath.0, %sw.bb255 ], [ %vfyCApath.0, %sw.bb254 ], [ %vfyCApath.0, %sw.bb253 ], [ %vfyCApath.0, %sw.bb252 ], [ %vfyCApath.0, %sw.bb251 ], [ %vfyCApath.0, %sw.bb250 ], [ %vfyCApath.0, %sw.bb249 ], [ %vfyCApath.0, %sw.bb246 ], [ %vfyCApath.0, %sw.bb245 ], [ %vfyCApath.0, %sw.bb243 ], [ %vfyCApath.0, %sw.bb236 ], [ %vfyCApath.0, %sw.bb234 ], [ %vfyCApath.0, %sw.bb232 ], [ %vfyCApath.0, %sw.bb229 ], [ %vfyCApath.0, %sw.bb228 ], [ %vfyCApath.0, %sw.bb227 ], [ %vfyCApath.0, %sw.bb226 ], [ %vfyCApath.0, %sw.bb225 ], [ %vfyCApath.0, %sw.bb224 ], [ %vfyCApath.0, %sw.bb223 ], [ %vfyCApath.0, %sw.bb222 ], [ %vfyCApath.0, %sw.bb221 ], [ %vfyCApath.0, %sw.bb219 ], [ %vfyCApath.0, %sw.bb217 ], [ %vfyCApath.0, %sw.bb216 ], [ %vfyCApath.0, %sw.bb214 ], [ %vfyCApath.0, %sw.bb213 ], [ %vfyCApath.0, %sw.bb212 ], [ %vfyCApath.0, %sw.bb211 ], [ %vfyCApath.0, %sw.bb206 ], [ %vfyCApath.0, %sw.bb354 ], [ %vfyCApath.0, %sw.bb357 ], [ %vfyCApath.0, %if.end203 ], [ %vfyCApath.0, %sw.bb359 ], [ %vfyCApath.0, %sw.bb367 ], [ %vfyCApath.0, %lor.lhs.false189 ], [ %vfyCApath.0, %sw.bb375 ], [ %vfyCApath.0, %sw.bb380 ], [ %vfyCApath.0, %sw.bb168 ], [ %vfyCApath.0, %sw.bb167 ], [ %vfyCApath.0, %sw.bb166 ], [ %vfyCApath.0, %sw.bb164 ], [ %vfyCApath.0, %sw.bb162 ], [ %vfyCApath.0, %sw.bb161 ], [ %vfyCApath.0, %sw.bb159 ], [ %call158, %sw.bb157 ], [ %vfyCApath.0, %sw.bb155 ], [ %vfyCApath.0, %sw.bb154 ], [ %vfyCApath.0, %sw.bb152 ], [ %vfyCApath.0, %sw.bb151 ], [ %vfyCApath.0, %sw.bb149 ], [ %vfyCApath.0, %sw.bb147 ], [ %vfyCApath.0, %sw.bb145 ], [ %vfyCApath.0, %sw.bb139 ], [ %vfyCApath.0, %sw.bb137 ], [ %vfyCApath.0, %sw.bb131 ], [ %vfyCApath.0, %sw.bb129 ], [ %vfyCApath.0, %sw.bb127 ], [ %vfyCApath.0, %sw.bb125 ], [ %vfyCApath.0, %sw.bb119 ], [ %vfyCApath.0, %sw.bb117 ], [ %vfyCApath.0, %sw.bb111 ], [ %vfyCApath.0, %sw.bb109 ], [ %vfyCApath.0, %sw.bb108 ], [ %vfyCApath.0, %sw.bb106 ], [ %vfyCApath.0, %sw.bb100 ], [ %vfyCApath.0, %sw.bb98 ], [ %vfyCApath.0, %sw.bb96 ], [ %vfyCApath.0, %sw.bb89 ], [ %vfyCApath.0, %if.then93 ], [ %vfyCApath.0, %sw.bb82 ], [ %vfyCApath.0, %if.then86 ], [ %vfyCApath.0, %sw.bb79 ], [ %vfyCApath.0, %sw.bb78 ], [ %vfyCApath.0, %sw.bb75 ], [ %vfyCApath.0, %sw.bb65 ], [ %vfyCApath.0, %sw.bb55 ], [ %vfyCApath.0, %if.then49 ], [ %vfyCApath.0, %sw.bb47 ], [ %vfyCApath.0, %if.then53 ], [ %vfyCApath.0, %sw.bb51 ], [ %vfyCApath.0, %sw.bb262 ], [ %vfyCApath.0, %for.cond ]
  %vfyCAfile.0.be = phi i8* [ %vfyCAfile.0, %if.end44 ], [ %vfyCAfile.0, %sw.bb341 ], [ %vfyCAfile.0, %sw.bb339 ], [ %vfyCAfile.0, %sw.bb337 ], [ %vfyCAfile.0, %sw.bb335 ], [ %vfyCAfile.0, %sw.bb333 ], [ %vfyCAfile.0, %sw.bb331 ], [ %vfyCAfile.0, %sw.bb329 ], [ %vfyCAfile.0, %sw.bb328 ], [ %vfyCAfile.0, %sw.bb326 ], [ %vfyCAfile.0, %sw.bb321 ], [ %vfyCAfile.0, %sw.bb344 ], [ %vfyCAfile.0, %sw.bb345 ], [ %vfyCAfile.0, %sw.bb315 ], [ %vfyCAfile.0, %sw.bb348 ], [ %vfyCAfile.0, %sw.bb351 ], [ %vfyCAfile.0, %sw.bb311 ], [ %vfyCAfile.0, %sw.bb309 ], [ %vfyCAfile.0, %sw.bb308 ], [ %vfyCAfile.0, %sw.bb307 ], [ %vfyCAfile.0, %sw.bb304 ], [ %vfyCAfile.0, %sw.bb303 ], [ %vfyCAfile.0, %sw.bb381 ], [ %vfyCAfile.0, %sw.bb382 ], [ %vfyCAfile.0, %sw.bb301 ], [ %vfyCAfile.0, %sw.bb299 ], [ %vfyCAfile.0, %sw.bb297 ], [ %vfyCAfile.0, %sw.bb296 ], [ %vfyCAfile.0, %sw.bb295 ], [ %vfyCAfile.0, %sw.bb294 ], [ %vfyCAfile.0, %sw.bb293 ], [ %vfyCAfile.0, %sw.bb292 ], [ %vfyCAfile.0, %sw.bb290 ], [ %vfyCAfile.0, %sw.bb289 ], [ %vfyCAfile.0, %sw.bb288 ], [ %vfyCAfile.0, %sw.bb287 ], [ %vfyCAfile.0, %sw.bb286 ], [ %vfyCAfile.0, %sw.bb280 ], [ %vfyCAfile.0, %sw.bb274 ], [ %vfyCAfile.0, %sw.bb272 ], [ %vfyCAfile.0, %sw.bb260 ], [ %vfyCAfile.0, %sw.bb258 ], [ %vfyCAfile.0, %sw.bb257 ], [ %vfyCAfile.0, %sw.bb256 ], [ %vfyCAfile.0, %sw.bb255 ], [ %vfyCAfile.0, %sw.bb254 ], [ %vfyCAfile.0, %sw.bb253 ], [ %vfyCAfile.0, %sw.bb252 ], [ %vfyCAfile.0, %sw.bb251 ], [ %vfyCAfile.0, %sw.bb250 ], [ %vfyCAfile.0, %sw.bb249 ], [ %vfyCAfile.0, %sw.bb246 ], [ %vfyCAfile.0, %sw.bb245 ], [ %vfyCAfile.0, %sw.bb243 ], [ %vfyCAfile.0, %sw.bb236 ], [ %vfyCAfile.0, %sw.bb234 ], [ %vfyCAfile.0, %sw.bb232 ], [ %vfyCAfile.0, %sw.bb229 ], [ %vfyCAfile.0, %sw.bb228 ], [ %vfyCAfile.0, %sw.bb227 ], [ %vfyCAfile.0, %sw.bb226 ], [ %vfyCAfile.0, %sw.bb225 ], [ %vfyCAfile.0, %sw.bb224 ], [ %vfyCAfile.0, %sw.bb223 ], [ %vfyCAfile.0, %sw.bb222 ], [ %vfyCAfile.0, %sw.bb221 ], [ %call220, %sw.bb219 ], [ %vfyCAfile.0, %sw.bb217 ], [ %vfyCAfile.0, %sw.bb216 ], [ %vfyCAfile.0, %sw.bb214 ], [ %vfyCAfile.0, %sw.bb213 ], [ %vfyCAfile.0, %sw.bb212 ], [ %vfyCAfile.0, %sw.bb211 ], [ %vfyCAfile.0, %sw.bb206 ], [ %vfyCAfile.0, %sw.bb354 ], [ %vfyCAfile.0, %sw.bb357 ], [ %vfyCAfile.0, %if.end203 ], [ %vfyCAfile.0, %sw.bb359 ], [ %vfyCAfile.0, %sw.bb367 ], [ %vfyCAfile.0, %lor.lhs.false189 ], [ %vfyCAfile.0, %sw.bb375 ], [ %vfyCAfile.0, %sw.bb380 ], [ %vfyCAfile.0, %sw.bb168 ], [ %vfyCAfile.0, %sw.bb167 ], [ %vfyCAfile.0, %sw.bb166 ], [ %vfyCAfile.0, %sw.bb164 ], [ %vfyCAfile.0, %sw.bb162 ], [ %vfyCAfile.0, %sw.bb161 ], [ %vfyCAfile.0, %sw.bb159 ], [ %vfyCAfile.0, %sw.bb157 ], [ %vfyCAfile.0, %sw.bb155 ], [ %vfyCAfile.0, %sw.bb154 ], [ %vfyCAfile.0, %sw.bb152 ], [ %vfyCAfile.0, %sw.bb151 ], [ %vfyCAfile.0, %sw.bb149 ], [ %vfyCAfile.0, %sw.bb147 ], [ %vfyCAfile.0, %sw.bb145 ], [ %vfyCAfile.0, %sw.bb139 ], [ %vfyCAfile.0, %sw.bb137 ], [ %vfyCAfile.0, %sw.bb131 ], [ %vfyCAfile.0, %sw.bb129 ], [ %vfyCAfile.0, %sw.bb127 ], [ %vfyCAfile.0, %sw.bb125 ], [ %vfyCAfile.0, %sw.bb119 ], [ %vfyCAfile.0, %sw.bb117 ], [ %vfyCAfile.0, %sw.bb111 ], [ %vfyCAfile.0, %sw.bb109 ], [ %vfyCAfile.0, %sw.bb108 ], [ %vfyCAfile.0, %sw.bb106 ], [ %vfyCAfile.0, %sw.bb100 ], [ %vfyCAfile.0, %sw.bb98 ], [ %vfyCAfile.0, %sw.bb96 ], [ %vfyCAfile.0, %sw.bb89 ], [ %vfyCAfile.0, %if.then93 ], [ %vfyCAfile.0, %sw.bb82 ], [ %vfyCAfile.0, %if.then86 ], [ %vfyCAfile.0, %sw.bb79 ], [ %vfyCAfile.0, %sw.bb78 ], [ %vfyCAfile.0, %sw.bb75 ], [ %vfyCAfile.0, %sw.bb65 ], [ %vfyCAfile.0, %sw.bb55 ], [ %vfyCAfile.0, %if.then49 ], [ %vfyCAfile.0, %sw.bb47 ], [ %vfyCAfile.0, %if.then53 ], [ %vfyCAfile.0, %sw.bb51 ], [ %vfyCAfile.0, %sw.bb262 ], [ %vfyCAfile.0, %for.cond ]
  %vfyCAstore.0.be = phi i8* [ %vfyCAstore.0, %if.end44 ], [ %vfyCAstore.0, %sw.bb341 ], [ %vfyCAstore.0, %sw.bb339 ], [ %vfyCAstore.0, %sw.bb337 ], [ %vfyCAstore.0, %sw.bb335 ], [ %vfyCAstore.0, %sw.bb333 ], [ %vfyCAstore.0, %sw.bb331 ], [ %vfyCAstore.0, %sw.bb329 ], [ %vfyCAstore.0, %sw.bb328 ], [ %vfyCAstore.0, %sw.bb326 ], [ %vfyCAstore.0, %sw.bb321 ], [ %vfyCAstore.0, %sw.bb344 ], [ %vfyCAstore.0, %sw.bb345 ], [ %vfyCAstore.0, %sw.bb315 ], [ %vfyCAstore.0, %sw.bb348 ], [ %vfyCAstore.0, %sw.bb351 ], [ %vfyCAstore.0, %sw.bb311 ], [ %vfyCAstore.0, %sw.bb309 ], [ %vfyCAstore.0, %sw.bb308 ], [ %vfyCAstore.0, %sw.bb307 ], [ %vfyCAstore.0, %sw.bb304 ], [ %vfyCAstore.0, %sw.bb303 ], [ %vfyCAstore.0, %sw.bb381 ], [ %vfyCAstore.0, %sw.bb382 ], [ %vfyCAstore.0, %sw.bb301 ], [ %vfyCAstore.0, %sw.bb299 ], [ %vfyCAstore.0, %sw.bb297 ], [ %vfyCAstore.0, %sw.bb296 ], [ %vfyCAstore.0, %sw.bb295 ], [ %vfyCAstore.0, %sw.bb294 ], [ %vfyCAstore.0, %sw.bb293 ], [ %vfyCAstore.0, %sw.bb292 ], [ %vfyCAstore.0, %sw.bb290 ], [ %vfyCAstore.0, %sw.bb289 ], [ %vfyCAstore.0, %sw.bb288 ], [ %vfyCAstore.0, %sw.bb287 ], [ %vfyCAstore.0, %sw.bb286 ], [ %vfyCAstore.0, %sw.bb280 ], [ %vfyCAstore.0, %sw.bb274 ], [ %vfyCAstore.0, %sw.bb272 ], [ %vfyCAstore.0, %sw.bb260 ], [ %vfyCAstore.0, %sw.bb258 ], [ %vfyCAstore.0, %sw.bb257 ], [ %vfyCAstore.0, %sw.bb256 ], [ %vfyCAstore.0, %sw.bb255 ], [ %vfyCAstore.0, %sw.bb254 ], [ %vfyCAstore.0, %sw.bb253 ], [ %vfyCAstore.0, %sw.bb252 ], [ %vfyCAstore.0, %sw.bb251 ], [ %vfyCAstore.0, %sw.bb250 ], [ %vfyCAstore.0, %sw.bb249 ], [ %vfyCAstore.0, %sw.bb246 ], [ %vfyCAstore.0, %sw.bb245 ], [ %vfyCAstore.0, %sw.bb243 ], [ %vfyCAstore.0, %sw.bb236 ], [ %vfyCAstore.0, %sw.bb234 ], [ %vfyCAstore.0, %sw.bb232 ], [ %vfyCAstore.0, %sw.bb229 ], [ %vfyCAstore.0, %sw.bb228 ], [ %vfyCAstore.0, %sw.bb227 ], [ %vfyCAstore.0, %sw.bb226 ], [ %vfyCAstore.0, %sw.bb225 ], [ %vfyCAstore.0, %sw.bb224 ], [ %vfyCAstore.0, %sw.bb223 ], [ %vfyCAstore.0, %sw.bb222 ], [ %vfyCAstore.0, %sw.bb221 ], [ %vfyCAstore.0, %sw.bb219 ], [ %vfyCAstore.0, %sw.bb217 ], [ %vfyCAstore.0, %sw.bb216 ], [ %vfyCAstore.0, %sw.bb214 ], [ %vfyCAstore.0, %sw.bb213 ], [ %vfyCAstore.0, %sw.bb212 ], [ %vfyCAstore.0, %sw.bb211 ], [ %vfyCAstore.0, %sw.bb206 ], [ %vfyCAstore.0, %sw.bb354 ], [ %vfyCAstore.0, %sw.bb357 ], [ %vfyCAstore.0, %if.end203 ], [ %vfyCAstore.0, %sw.bb359 ], [ %vfyCAstore.0, %sw.bb367 ], [ %vfyCAstore.0, %lor.lhs.false189 ], [ %vfyCAstore.0, %sw.bb375 ], [ %vfyCAstore.0, %sw.bb380 ], [ %vfyCAstore.0, %sw.bb168 ], [ %vfyCAstore.0, %sw.bb167 ], [ %vfyCAstore.0, %sw.bb166 ], [ %call165, %sw.bb164 ], [ %vfyCAstore.0, %sw.bb162 ], [ %vfyCAstore.0, %sw.bb161 ], [ %vfyCAstore.0, %sw.bb159 ], [ %vfyCAstore.0, %sw.bb157 ], [ %vfyCAstore.0, %sw.bb155 ], [ %vfyCAstore.0, %sw.bb154 ], [ %vfyCAstore.0, %sw.bb152 ], [ %vfyCAstore.0, %sw.bb151 ], [ %vfyCAstore.0, %sw.bb149 ], [ %vfyCAstore.0, %sw.bb147 ], [ %vfyCAstore.0, %sw.bb145 ], [ %vfyCAstore.0, %sw.bb139 ], [ %vfyCAstore.0, %sw.bb137 ], [ %vfyCAstore.0, %sw.bb131 ], [ %vfyCAstore.0, %sw.bb129 ], [ %vfyCAstore.0, %sw.bb127 ], [ %vfyCAstore.0, %sw.bb125 ], [ %vfyCAstore.0, %sw.bb119 ], [ %vfyCAstore.0, %sw.bb117 ], [ %vfyCAstore.0, %sw.bb111 ], [ %vfyCAstore.0, %sw.bb109 ], [ %vfyCAstore.0, %sw.bb108 ], [ %vfyCAstore.0, %sw.bb106 ], [ %vfyCAstore.0, %sw.bb100 ], [ %vfyCAstore.0, %sw.bb98 ], [ %vfyCAstore.0, %sw.bb96 ], [ %vfyCAstore.0, %sw.bb89 ], [ %vfyCAstore.0, %if.then93 ], [ %vfyCAstore.0, %sw.bb82 ], [ %vfyCAstore.0, %if.then86 ], [ %vfyCAstore.0, %sw.bb79 ], [ %vfyCAstore.0, %sw.bb78 ], [ %vfyCAstore.0, %sw.bb75 ], [ %vfyCAstore.0, %sw.bb65 ], [ %vfyCAstore.0, %sw.bb55 ], [ %vfyCAstore.0, %if.then49 ], [ %vfyCAstore.0, %sw.bb47 ], [ %vfyCAstore.0, %if.then53 ], [ %vfyCAstore.0, %sw.bb51 ], [ %vfyCAstore.0, %sw.bb262 ], [ %vfyCAstore.0, %for.cond ]
  %crl_file.0.be = phi i8* [ %crl_file.0, %if.end44 ], [ %crl_file.0, %sw.bb341 ], [ %crl_file.0, %sw.bb339 ], [ %crl_file.0, %sw.bb337 ], [ %crl_file.0, %sw.bb335 ], [ %crl_file.0, %sw.bb333 ], [ %crl_file.0, %sw.bb331 ], [ %crl_file.0, %sw.bb329 ], [ %crl_file.0, %sw.bb328 ], [ %crl_file.0, %sw.bb326 ], [ %crl_file.0, %sw.bb321 ], [ %crl_file.0, %sw.bb344 ], [ %crl_file.0, %sw.bb345 ], [ %crl_file.0, %sw.bb315 ], [ %crl_file.0, %sw.bb348 ], [ %crl_file.0, %sw.bb351 ], [ %crl_file.0, %sw.bb311 ], [ %crl_file.0, %sw.bb309 ], [ %crl_file.0, %sw.bb308 ], [ %crl_file.0, %sw.bb307 ], [ %crl_file.0, %sw.bb304 ], [ %crl_file.0, %sw.bb303 ], [ %crl_file.0, %sw.bb381 ], [ %crl_file.0, %sw.bb382 ], [ %crl_file.0, %sw.bb301 ], [ %crl_file.0, %sw.bb299 ], [ %crl_file.0, %sw.bb297 ], [ %crl_file.0, %sw.bb296 ], [ %crl_file.0, %sw.bb295 ], [ %crl_file.0, %sw.bb294 ], [ %crl_file.0, %sw.bb293 ], [ %crl_file.0, %sw.bb292 ], [ %crl_file.0, %sw.bb290 ], [ %crl_file.0, %sw.bb289 ], [ %crl_file.0, %sw.bb288 ], [ %crl_file.0, %sw.bb287 ], [ %crl_file.0, %sw.bb286 ], [ %crl_file.0, %sw.bb280 ], [ %crl_file.0, %sw.bb274 ], [ %crl_file.0, %sw.bb272 ], [ %crl_file.0, %sw.bb260 ], [ %crl_file.0, %sw.bb258 ], [ %crl_file.0, %sw.bb257 ], [ %crl_file.0, %sw.bb256 ], [ %crl_file.0, %sw.bb255 ], [ %crl_file.0, %sw.bb254 ], [ %crl_file.0, %sw.bb253 ], [ %crl_file.0, %sw.bb252 ], [ %crl_file.0, %sw.bb251 ], [ %crl_file.0, %sw.bb250 ], [ %crl_file.0, %sw.bb249 ], [ %crl_file.0, %sw.bb246 ], [ %crl_file.0, %sw.bb245 ], [ %crl_file.0, %sw.bb243 ], [ %crl_file.0, %sw.bb236 ], [ %crl_file.0, %sw.bb234 ], [ %crl_file.0, %sw.bb232 ], [ %crl_file.0, %sw.bb229 ], [ %crl_file.0, %sw.bb228 ], [ %crl_file.0, %sw.bb227 ], [ %crl_file.0, %sw.bb226 ], [ %crl_file.0, %sw.bb225 ], [ %crl_file.0, %sw.bb224 ], [ %crl_file.0, %sw.bb223 ], [ %crl_file.0, %sw.bb222 ], [ %crl_file.0, %sw.bb221 ], [ %crl_file.0, %sw.bb219 ], [ %crl_file.0, %sw.bb217 ], [ %crl_file.0, %sw.bb216 ], [ %crl_file.0, %sw.bb214 ], [ %crl_file.0, %sw.bb213 ], [ %crl_file.0, %sw.bb212 ], [ %crl_file.0, %sw.bb211 ], [ %crl_file.0, %sw.bb206 ], [ %crl_file.0, %sw.bb354 ], [ %crl_file.0, %sw.bb357 ], [ %crl_file.0, %if.end203 ], [ %crl_file.0, %sw.bb359 ], [ %crl_file.0, %sw.bb367 ], [ %crl_file.0, %lor.lhs.false189 ], [ %crl_file.0, %sw.bb375 ], [ %crl_file.0, %sw.bb380 ], [ %crl_file.0, %sw.bb168 ], [ %crl_file.0, %sw.bb167 ], [ %crl_file.0, %sw.bb166 ], [ %crl_file.0, %sw.bb164 ], [ %crl_file.0, %sw.bb162 ], [ %crl_file.0, %sw.bb161 ], [ %crl_file.0, %sw.bb159 ], [ %crl_file.0, %sw.bb157 ], [ %crl_file.0, %sw.bb155 ], [ %crl_file.0, %sw.bb154 ], [ %crl_file.0, %sw.bb152 ], [ %crl_file.0, %sw.bb151 ], [ %crl_file.0, %sw.bb149 ], [ %crl_file.0, %sw.bb147 ], [ %crl_file.0, %sw.bb145 ], [ %crl_file.0, %sw.bb139 ], [ %crl_file.0, %sw.bb137 ], [ %crl_file.0, %sw.bb131 ], [ %crl_file.0, %sw.bb129 ], [ %crl_file.0, %sw.bb127 ], [ %crl_file.0, %sw.bb125 ], [ %crl_file.0, %sw.bb119 ], [ %crl_file.0, %sw.bb117 ], [ %crl_file.0, %sw.bb111 ], [ %crl_file.0, %sw.bb109 ], [ %crl_file.0, %sw.bb108 ], [ %call107, %sw.bb106 ], [ %crl_file.0, %sw.bb100 ], [ %crl_file.0, %sw.bb98 ], [ %crl_file.0, %sw.bb96 ], [ %crl_file.0, %sw.bb89 ], [ %crl_file.0, %if.then93 ], [ %crl_file.0, %sw.bb82 ], [ %crl_file.0, %if.then86 ], [ %crl_file.0, %sw.bb79 ], [ %crl_file.0, %sw.bb78 ], [ %crl_file.0, %sw.bb75 ], [ %crl_file.0, %sw.bb65 ], [ %crl_file.0, %sw.bb55 ], [ %crl_file.0, %if.then49 ], [ %crl_file.0, %sw.bb47 ], [ %crl_file.0, %if.then53 ], [ %crl_file.0, %sw.bb51 ], [ %crl_file.0, %sw.bb262 ], [ %crl_file.0, %for.cond ]
  %unlink_unix_path.0.be = phi i32 [ %unlink_unix_path.0, %if.end44 ], [ %unlink_unix_path.0, %sw.bb341 ], [ %unlink_unix_path.0, %sw.bb339 ], [ %unlink_unix_path.0, %sw.bb337 ], [ %unlink_unix_path.0, %sw.bb335 ], [ %unlink_unix_path.0, %sw.bb333 ], [ %unlink_unix_path.0, %sw.bb331 ], [ %unlink_unix_path.0, %sw.bb329 ], [ %unlink_unix_path.0, %sw.bb328 ], [ %unlink_unix_path.0, %sw.bb326 ], [ %unlink_unix_path.0, %sw.bb321 ], [ %unlink_unix_path.0, %sw.bb344 ], [ %unlink_unix_path.0, %sw.bb345 ], [ %unlink_unix_path.0, %sw.bb315 ], [ %unlink_unix_path.0, %sw.bb348 ], [ %unlink_unix_path.0, %sw.bb351 ], [ %unlink_unix_path.0, %sw.bb311 ], [ %unlink_unix_path.0, %sw.bb309 ], [ %unlink_unix_path.0, %sw.bb308 ], [ %unlink_unix_path.0, %sw.bb307 ], [ %unlink_unix_path.0, %sw.bb304 ], [ %unlink_unix_path.0, %sw.bb303 ], [ %unlink_unix_path.0, %sw.bb381 ], [ %unlink_unix_path.0, %sw.bb382 ], [ %unlink_unix_path.0, %sw.bb301 ], [ %unlink_unix_path.0, %sw.bb299 ], [ %unlink_unix_path.0, %sw.bb297 ], [ %unlink_unix_path.0, %sw.bb296 ], [ %unlink_unix_path.0, %sw.bb295 ], [ %unlink_unix_path.0, %sw.bb294 ], [ %unlink_unix_path.0, %sw.bb293 ], [ %unlink_unix_path.0, %sw.bb292 ], [ %unlink_unix_path.0, %sw.bb290 ], [ %unlink_unix_path.0, %sw.bb289 ], [ %unlink_unix_path.0, %sw.bb288 ], [ %unlink_unix_path.0, %sw.bb287 ], [ %unlink_unix_path.0, %sw.bb286 ], [ %unlink_unix_path.0, %sw.bb280 ], [ %unlink_unix_path.0, %sw.bb274 ], [ %unlink_unix_path.0, %sw.bb272 ], [ %unlink_unix_path.0, %sw.bb260 ], [ %unlink_unix_path.0, %sw.bb258 ], [ %unlink_unix_path.0, %sw.bb257 ], [ %unlink_unix_path.0, %sw.bb256 ], [ %unlink_unix_path.0, %sw.bb255 ], [ %unlink_unix_path.0, %sw.bb254 ], [ %unlink_unix_path.0, %sw.bb253 ], [ %unlink_unix_path.0, %sw.bb252 ], [ %unlink_unix_path.0, %sw.bb251 ], [ %unlink_unix_path.0, %sw.bb250 ], [ %unlink_unix_path.0, %sw.bb249 ], [ %unlink_unix_path.0, %sw.bb246 ], [ %unlink_unix_path.0, %sw.bb245 ], [ %unlink_unix_path.0, %sw.bb243 ], [ %unlink_unix_path.0, %sw.bb236 ], [ %unlink_unix_path.0, %sw.bb234 ], [ %unlink_unix_path.0, %sw.bb232 ], [ %unlink_unix_path.0, %sw.bb229 ], [ %unlink_unix_path.0, %sw.bb228 ], [ %unlink_unix_path.0, %sw.bb227 ], [ %unlink_unix_path.0, %sw.bb226 ], [ %unlink_unix_path.0, %sw.bb225 ], [ %unlink_unix_path.0, %sw.bb224 ], [ %unlink_unix_path.0, %sw.bb223 ], [ %unlink_unix_path.0, %sw.bb222 ], [ %unlink_unix_path.0, %sw.bb221 ], [ %unlink_unix_path.0, %sw.bb219 ], [ %unlink_unix_path.0, %sw.bb217 ], [ %unlink_unix_path.0, %sw.bb216 ], [ %unlink_unix_path.0, %sw.bb214 ], [ %unlink_unix_path.0, %sw.bb213 ], [ %unlink_unix_path.0, %sw.bb212 ], [ %unlink_unix_path.0, %sw.bb211 ], [ %unlink_unix_path.0, %sw.bb206 ], [ %unlink_unix_path.0, %sw.bb354 ], [ %unlink_unix_path.0, %sw.bb357 ], [ %unlink_unix_path.0, %if.end203 ], [ %unlink_unix_path.0, %sw.bb359 ], [ %unlink_unix_path.0, %sw.bb367 ], [ %unlink_unix_path.0, %lor.lhs.false189 ], [ %unlink_unix_path.0, %sw.bb375 ], [ %unlink_unix_path.0, %sw.bb380 ], [ %unlink_unix_path.0, %sw.bb168 ], [ %unlink_unix_path.0, %sw.bb167 ], [ %unlink_unix_path.0, %sw.bb166 ], [ %unlink_unix_path.0, %sw.bb164 ], [ %unlink_unix_path.0, %sw.bb162 ], [ %unlink_unix_path.0, %sw.bb161 ], [ %unlink_unix_path.0, %sw.bb159 ], [ %unlink_unix_path.0, %sw.bb157 ], [ %unlink_unix_path.0, %sw.bb155 ], [ %unlink_unix_path.0, %sw.bb154 ], [ %unlink_unix_path.0, %sw.bb152 ], [ %unlink_unix_path.0, %sw.bb151 ], [ %unlink_unix_path.0, %sw.bb149 ], [ %unlink_unix_path.0, %sw.bb147 ], [ %unlink_unix_path.0, %sw.bb145 ], [ %unlink_unix_path.0, %sw.bb139 ], [ %unlink_unix_path.0, %sw.bb137 ], [ %unlink_unix_path.0, %sw.bb131 ], [ %unlink_unix_path.0, %sw.bb129 ], [ %unlink_unix_path.0, %sw.bb127 ], [ %unlink_unix_path.0, %sw.bb125 ], [ %unlink_unix_path.0, %sw.bb119 ], [ %unlink_unix_path.0, %sw.bb117 ], [ %unlink_unix_path.0, %sw.bb111 ], [ %unlink_unix_path.0, %sw.bb109 ], [ %unlink_unix_path.0, %sw.bb108 ], [ %unlink_unix_path.0, %sw.bb106 ], [ %unlink_unix_path.0, %sw.bb100 ], [ %unlink_unix_path.0, %sw.bb98 ], [ %unlink_unix_path.0, %sw.bb96 ], [ %unlink_unix_path.0, %sw.bb89 ], [ %unlink_unix_path.0, %if.then93 ], [ %unlink_unix_path.0, %sw.bb82 ], [ %unlink_unix_path.0, %if.then86 ], [ %unlink_unix_path.0, %sw.bb79 ], [ 1, %sw.bb78 ], [ %unlink_unix_path.0, %sw.bb75 ], [ %unlink_unix_path.0, %sw.bb65 ], [ %unlink_unix_path.0, %sw.bb55 ], [ %unlink_unix_path.0, %if.then49 ], [ %unlink_unix_path.0, %sw.bb47 ], [ %unlink_unix_path.0, %if.then53 ], [ %unlink_unix_path.0, %sw.bb51 ], [ %unlink_unix_path.0, %sw.bb262 ], [ %unlink_unix_path.0, %for.cond ]
  %vpmtouched.0.be = phi i32 [ %vpmtouched.0, %if.end44 ], [ %vpmtouched.0, %sw.bb341 ], [ %vpmtouched.0, %sw.bb339 ], [ %vpmtouched.0, %sw.bb337 ], [ %vpmtouched.0, %sw.bb335 ], [ %vpmtouched.0, %sw.bb333 ], [ %vpmtouched.0, %sw.bb331 ], [ %vpmtouched.0, %sw.bb329 ], [ %vpmtouched.0, %sw.bb328 ], [ %vpmtouched.0, %sw.bb326 ], [ %vpmtouched.0, %sw.bb321 ], [ %vpmtouched.0, %sw.bb344 ], [ %vpmtouched.0, %sw.bb345 ], [ %vpmtouched.0, %sw.bb315 ], [ %vpmtouched.0, %sw.bb348 ], [ %vpmtouched.0, %sw.bb351 ], [ %vpmtouched.0, %sw.bb311 ], [ %vpmtouched.0, %sw.bb309 ], [ %vpmtouched.0, %sw.bb308 ], [ %vpmtouched.0, %sw.bb307 ], [ %vpmtouched.0, %sw.bb304 ], [ %vpmtouched.0, %sw.bb303 ], [ %vpmtouched.0, %sw.bb381 ], [ %vpmtouched.0, %sw.bb382 ], [ %vpmtouched.0, %sw.bb301 ], [ %vpmtouched.0, %sw.bb299 ], [ %vpmtouched.0, %sw.bb297 ], [ %vpmtouched.0, %sw.bb296 ], [ %vpmtouched.0, %sw.bb295 ], [ %vpmtouched.0, %sw.bb294 ], [ %vpmtouched.0, %sw.bb293 ], [ %vpmtouched.0, %sw.bb292 ], [ %vpmtouched.0, %sw.bb290 ], [ %vpmtouched.0, %sw.bb289 ], [ %vpmtouched.0, %sw.bb288 ], [ %vpmtouched.0, %sw.bb287 ], [ %vpmtouched.0, %sw.bb286 ], [ %vpmtouched.0, %sw.bb280 ], [ %vpmtouched.0, %sw.bb274 ], [ %vpmtouched.0, %sw.bb272 ], [ %vpmtouched.0, %sw.bb260 ], [ %vpmtouched.0, %sw.bb258 ], [ %vpmtouched.0, %sw.bb257 ], [ %vpmtouched.0, %sw.bb256 ], [ %vpmtouched.0, %sw.bb255 ], [ %vpmtouched.0, %sw.bb254 ], [ %vpmtouched.0, %sw.bb253 ], [ %vpmtouched.0, %sw.bb252 ], [ %vpmtouched.0, %sw.bb251 ], [ %vpmtouched.0, %sw.bb250 ], [ %vpmtouched.0, %sw.bb249 ], [ %vpmtouched.0, %sw.bb246 ], [ %vpmtouched.0, %sw.bb245 ], [ %vpmtouched.0, %sw.bb243 ], [ %vpmtouched.0, %sw.bb236 ], [ %vpmtouched.0, %sw.bb234 ], [ %vpmtouched.0, %sw.bb232 ], [ %vpmtouched.0, %sw.bb229 ], [ %vpmtouched.0, %sw.bb228 ], [ %vpmtouched.0, %sw.bb227 ], [ %vpmtouched.0, %sw.bb226 ], [ %vpmtouched.0, %sw.bb225 ], [ %vpmtouched.0, %sw.bb224 ], [ %vpmtouched.0, %sw.bb223 ], [ %vpmtouched.0, %sw.bb222 ], [ %vpmtouched.0, %sw.bb221 ], [ %vpmtouched.0, %sw.bb219 ], [ %vpmtouched.0, %sw.bb217 ], [ %vpmtouched.0, %sw.bb216 ], [ %vpmtouched.0, %sw.bb214 ], [ %vpmtouched.0, %sw.bb213 ], [ %vpmtouched.0, %sw.bb212 ], [ %vpmtouched.0, %sw.bb211 ], [ %vpmtouched.0, %sw.bb206 ], [ %vpmtouched.0, %sw.bb354 ], [ %vpmtouched.0, %sw.bb357 ], [ %inc204, %if.end203 ], [ %vpmtouched.0, %sw.bb359 ], [ %vpmtouched.0, %sw.bb367 ], [ %vpmtouched.0, %lor.lhs.false189 ], [ %vpmtouched.0, %sw.bb375 ], [ %vpmtouched.0, %sw.bb380 ], [ %vpmtouched.0, %sw.bb168 ], [ %vpmtouched.0, %sw.bb167 ], [ %vpmtouched.0, %sw.bb166 ], [ %vpmtouched.0, %sw.bb164 ], [ %vpmtouched.0, %sw.bb162 ], [ %vpmtouched.0, %sw.bb161 ], [ %vpmtouched.0, %sw.bb159 ], [ %vpmtouched.0, %sw.bb157 ], [ %vpmtouched.0, %sw.bb155 ], [ %vpmtouched.0, %sw.bb154 ], [ %vpmtouched.0, %sw.bb152 ], [ %vpmtouched.0, %sw.bb151 ], [ %vpmtouched.0, %sw.bb149 ], [ %vpmtouched.0, %sw.bb147 ], [ %vpmtouched.0, %sw.bb145 ], [ %vpmtouched.0, %sw.bb139 ], [ %vpmtouched.0, %sw.bb137 ], [ %vpmtouched.0, %sw.bb131 ], [ %vpmtouched.0, %sw.bb129 ], [ %vpmtouched.0, %sw.bb127 ], [ %vpmtouched.0, %sw.bb125 ], [ %vpmtouched.0, %sw.bb119 ], [ %vpmtouched.0, %sw.bb117 ], [ %vpmtouched.0, %sw.bb111 ], [ %vpmtouched.0, %sw.bb109 ], [ %vpmtouched.0, %sw.bb108 ], [ %vpmtouched.0, %sw.bb106 ], [ %vpmtouched.0, %sw.bb100 ], [ %vpmtouched.0, %sw.bb98 ], [ %vpmtouched.0, %sw.bb96 ], [ %vpmtouched.0, %sw.bb89 ], [ %vpmtouched.0, %if.then93 ], [ %vpmtouched.0, %sw.bb82 ], [ %vpmtouched.0, %if.then86 ], [ %vpmtouched.0, %sw.bb79 ], [ %vpmtouched.0, %sw.bb78 ], [ %vpmtouched.0, %sw.bb75 ], [ %vpmtouched.0, %sw.bb65 ], [ %vpmtouched.0, %sw.bb55 ], [ %vpmtouched.0, %if.then49 ], [ %vpmtouched.0, %sw.bb47 ], [ %vpmtouched.0, %if.then53 ], [ %vpmtouched.0, %sw.bb51 ], [ %vpmtouched.0, %sw.bb262 ], [ %vpmtouched.0, %for.cond ]
  %build_chain.0.be = phi i32 [ %build_chain.0, %if.end44 ], [ %build_chain.0, %sw.bb341 ], [ %build_chain.0, %sw.bb339 ], [ %build_chain.0, %sw.bb337 ], [ %build_chain.0, %sw.bb335 ], [ %build_chain.0, %sw.bb333 ], [ %build_chain.0, %sw.bb331 ], [ %build_chain.0, %sw.bb329 ], [ %build_chain.0, %sw.bb328 ], [ %build_chain.0, %sw.bb326 ], [ %build_chain.0, %sw.bb321 ], [ %build_chain.0, %sw.bb344 ], [ %build_chain.0, %sw.bb345 ], [ %build_chain.0, %sw.bb315 ], [ %build_chain.0, %sw.bb348 ], [ %build_chain.0, %sw.bb351 ], [ %build_chain.0, %sw.bb311 ], [ %build_chain.0, %sw.bb309 ], [ %build_chain.0, %sw.bb308 ], [ %build_chain.0, %sw.bb307 ], [ %build_chain.0, %sw.bb304 ], [ %build_chain.0, %sw.bb303 ], [ %build_chain.0, %sw.bb381 ], [ %build_chain.0, %sw.bb382 ], [ %build_chain.0, %sw.bb301 ], [ %build_chain.0, %sw.bb299 ], [ %build_chain.0, %sw.bb297 ], [ %build_chain.0, %sw.bb296 ], [ %build_chain.0, %sw.bb295 ], [ %build_chain.0, %sw.bb294 ], [ %build_chain.0, %sw.bb293 ], [ %build_chain.0, %sw.bb292 ], [ %build_chain.0, %sw.bb290 ], [ %build_chain.0, %sw.bb289 ], [ %build_chain.0, %sw.bb288 ], [ %build_chain.0, %sw.bb287 ], [ %build_chain.0, %sw.bb286 ], [ %build_chain.0, %sw.bb280 ], [ %build_chain.0, %sw.bb274 ], [ %build_chain.0, %sw.bb272 ], [ %build_chain.0, %sw.bb260 ], [ %build_chain.0, %sw.bb258 ], [ %build_chain.0, %sw.bb257 ], [ %build_chain.0, %sw.bb256 ], [ %build_chain.0, %sw.bb255 ], [ %build_chain.0, %sw.bb254 ], [ %build_chain.0, %sw.bb253 ], [ %build_chain.0, %sw.bb252 ], [ %build_chain.0, %sw.bb251 ], [ %build_chain.0, %sw.bb250 ], [ %build_chain.0, %sw.bb249 ], [ %build_chain.0, %sw.bb246 ], [ %build_chain.0, %sw.bb245 ], [ %build_chain.0, %sw.bb243 ], [ %build_chain.0, %sw.bb236 ], [ %build_chain.0, %sw.bb234 ], [ %build_chain.0, %sw.bb232 ], [ %build_chain.0, %sw.bb229 ], [ %build_chain.0, %sw.bb228 ], [ %build_chain.0, %sw.bb227 ], [ %build_chain.0, %sw.bb226 ], [ %build_chain.0, %sw.bb225 ], [ %build_chain.0, %sw.bb224 ], [ %build_chain.0, %sw.bb223 ], [ %build_chain.0, %sw.bb222 ], [ %build_chain.0, %sw.bb221 ], [ %build_chain.0, %sw.bb219 ], [ %build_chain.0, %sw.bb217 ], [ %build_chain.0, %sw.bb216 ], [ %build_chain.0, %sw.bb214 ], [ 1, %sw.bb213 ], [ %build_chain.0, %sw.bb212 ], [ %build_chain.0, %sw.bb211 ], [ %build_chain.0, %sw.bb206 ], [ %build_chain.0, %sw.bb354 ], [ %build_chain.0, %sw.bb357 ], [ %build_chain.0, %if.end203 ], [ %build_chain.0, %sw.bb359 ], [ %build_chain.0, %sw.bb367 ], [ %build_chain.0, %lor.lhs.false189 ], [ %build_chain.0, %sw.bb375 ], [ %build_chain.0, %sw.bb380 ], [ %build_chain.0, %sw.bb168 ], [ %build_chain.0, %sw.bb167 ], [ %build_chain.0, %sw.bb166 ], [ %build_chain.0, %sw.bb164 ], [ %build_chain.0, %sw.bb162 ], [ %build_chain.0, %sw.bb161 ], [ %build_chain.0, %sw.bb159 ], [ %build_chain.0, %sw.bb157 ], [ %build_chain.0, %sw.bb155 ], [ %build_chain.0, %sw.bb154 ], [ %build_chain.0, %sw.bb152 ], [ %build_chain.0, %sw.bb151 ], [ %build_chain.0, %sw.bb149 ], [ %build_chain.0, %sw.bb147 ], [ %build_chain.0, %sw.bb145 ], [ %build_chain.0, %sw.bb139 ], [ %build_chain.0, %sw.bb137 ], [ %build_chain.0, %sw.bb131 ], [ %build_chain.0, %sw.bb129 ], [ %build_chain.0, %sw.bb127 ], [ %build_chain.0, %sw.bb125 ], [ %build_chain.0, %sw.bb119 ], [ %build_chain.0, %sw.bb117 ], [ %build_chain.0, %sw.bb111 ], [ %build_chain.0, %sw.bb109 ], [ %build_chain.0, %sw.bb108 ], [ %build_chain.0, %sw.bb106 ], [ %build_chain.0, %sw.bb100 ], [ %build_chain.0, %sw.bb98 ], [ %build_chain.0, %sw.bb96 ], [ %build_chain.0, %sw.bb89 ], [ %build_chain.0, %if.then93 ], [ %build_chain.0, %sw.bb82 ], [ %build_chain.0, %if.then86 ], [ %build_chain.0, %sw.bb79 ], [ %build_chain.0, %sw.bb78 ], [ %build_chain.0, %sw.bb75 ], [ %build_chain.0, %sw.bb65 ], [ %build_chain.0, %sw.bb55 ], [ %build_chain.0, %if.then49 ], [ %build_chain.0, %sw.bb47 ], [ %build_chain.0, %if.then53 ], [ %build_chain.0, %sw.bb51 ], [ %build_chain.0, %sw.bb262 ], [ %build_chain.0, %for.cond ]
  %no_cache.0.be = phi i32 [ %no_cache.0, %if.end44 ], [ %no_cache.0, %sw.bb341 ], [ %no_cache.0, %sw.bb339 ], [ %no_cache.0, %sw.bb337 ], [ %no_cache.0, %sw.bb335 ], [ %no_cache.0, %sw.bb333 ], [ %no_cache.0, %sw.bb331 ], [ %no_cache.0, %sw.bb329 ], [ %no_cache.0, %sw.bb328 ], [ %no_cache.0, %sw.bb326 ], [ %no_cache.0, %sw.bb321 ], [ %no_cache.0, %sw.bb344 ], [ %no_cache.0, %sw.bb345 ], [ %no_cache.0, %sw.bb315 ], [ %no_cache.0, %sw.bb348 ], [ %no_cache.0, %sw.bb351 ], [ %no_cache.0, %sw.bb311 ], [ %no_cache.0, %sw.bb309 ], [ %no_cache.0, %sw.bb308 ], [ %no_cache.0, %sw.bb307 ], [ %no_cache.0, %sw.bb304 ], [ %no_cache.0, %sw.bb303 ], [ %no_cache.0, %sw.bb381 ], [ %no_cache.0, %sw.bb382 ], [ %no_cache.0, %sw.bb301 ], [ %no_cache.0, %sw.bb299 ], [ %no_cache.0, %sw.bb297 ], [ %no_cache.0, %sw.bb296 ], [ %no_cache.0, %sw.bb295 ], [ %no_cache.0, %sw.bb294 ], [ %no_cache.0, %sw.bb293 ], [ %no_cache.0, %sw.bb292 ], [ %no_cache.0, %sw.bb290 ], [ %no_cache.0, %sw.bb289 ], [ %no_cache.0, %sw.bb288 ], [ %no_cache.0, %sw.bb287 ], [ %no_cache.0, %sw.bb286 ], [ %no_cache.0, %sw.bb280 ], [ %no_cache.0, %sw.bb274 ], [ %no_cache.0, %sw.bb272 ], [ %no_cache.0, %sw.bb260 ], [ %no_cache.0, %sw.bb258 ], [ %no_cache.0, %sw.bb257 ], [ %no_cache.0, %sw.bb256 ], [ %no_cache.0, %sw.bb255 ], [ %no_cache.0, %sw.bb254 ], [ %no_cache.0, %sw.bb253 ], [ %no_cache.0, %sw.bb252 ], [ %no_cache.0, %sw.bb251 ], [ %no_cache.0, %sw.bb250 ], [ %no_cache.0, %sw.bb249 ], [ %no_cache.0, %sw.bb246 ], [ %no_cache.0, %sw.bb245 ], [ %no_cache.0, %sw.bb243 ], [ %no_cache.0, %sw.bb236 ], [ %no_cache.0, %sw.bb234 ], [ %no_cache.0, %sw.bb232 ], [ %no_cache.0, %sw.bb229 ], [ %no_cache.0, %sw.bb228 ], [ %no_cache.0, %sw.bb227 ], [ %no_cache.0, %sw.bb226 ], [ %no_cache.0, %sw.bb225 ], [ %no_cache.0, %sw.bb224 ], [ %no_cache.0, %sw.bb223 ], [ %no_cache.0, %sw.bb222 ], [ %no_cache.0, %sw.bb221 ], [ %no_cache.0, %sw.bb219 ], [ %no_cache.0, %sw.bb217 ], [ %no_cache.0, %sw.bb216 ], [ %no_cache.0, %sw.bb214 ], [ %no_cache.0, %sw.bb213 ], [ %no_cache.0, %sw.bb212 ], [ %no_cache.0, %sw.bb211 ], [ %no_cache.0, %sw.bb206 ], [ %no_cache.0, %sw.bb354 ], [ %no_cache.0, %sw.bb357 ], [ %no_cache.0, %if.end203 ], [ %no_cache.0, %sw.bb359 ], [ %no_cache.0, %sw.bb367 ], [ %no_cache.0, %lor.lhs.false189 ], [ %no_cache.0, %sw.bb375 ], [ %no_cache.0, %sw.bb380 ], [ %no_cache.0, %sw.bb168 ], [ %no_cache.0, %sw.bb167 ], [ 1, %sw.bb166 ], [ %no_cache.0, %sw.bb164 ], [ %no_cache.0, %sw.bb162 ], [ %no_cache.0, %sw.bb161 ], [ %no_cache.0, %sw.bb159 ], [ %no_cache.0, %sw.bb157 ], [ %no_cache.0, %sw.bb155 ], [ %no_cache.0, %sw.bb154 ], [ %no_cache.0, %sw.bb152 ], [ %no_cache.0, %sw.bb151 ], [ %no_cache.0, %sw.bb149 ], [ %no_cache.0, %sw.bb147 ], [ %no_cache.0, %sw.bb145 ], [ %no_cache.0, %sw.bb139 ], [ %no_cache.0, %sw.bb137 ], [ %no_cache.0, %sw.bb131 ], [ %no_cache.0, %sw.bb129 ], [ %no_cache.0, %sw.bb127 ], [ %no_cache.0, %sw.bb125 ], [ %no_cache.0, %sw.bb119 ], [ %no_cache.0, %sw.bb117 ], [ %no_cache.0, %sw.bb111 ], [ %no_cache.0, %sw.bb109 ], [ %no_cache.0, %sw.bb108 ], [ %no_cache.0, %sw.bb106 ], [ %no_cache.0, %sw.bb100 ], [ %no_cache.0, %sw.bb98 ], [ %no_cache.0, %sw.bb96 ], [ %no_cache.0, %sw.bb89 ], [ %no_cache.0, %if.then93 ], [ %no_cache.0, %sw.bb82 ], [ %no_cache.0, %if.then86 ], [ %no_cache.0, %sw.bb79 ], [ %no_cache.0, %sw.bb78 ], [ %no_cache.0, %sw.bb75 ], [ %no_cache.0, %sw.bb65 ], [ %no_cache.0, %sw.bb55 ], [ %no_cache.0, %if.then49 ], [ %no_cache.0, %sw.bb47 ], [ %no_cache.0, %if.then53 ], [ %no_cache.0, %sw.bb51 ], [ %no_cache.0, %sw.bb262 ], [ %no_cache.0, %for.cond ]
  %ext_cache.0.be = phi i32 [ %ext_cache.0, %if.end44 ], [ %ext_cache.0, %sw.bb341 ], [ %ext_cache.0, %sw.bb339 ], [ %ext_cache.0, %sw.bb337 ], [ %ext_cache.0, %sw.bb335 ], [ %ext_cache.0, %sw.bb333 ], [ %ext_cache.0, %sw.bb331 ], [ %ext_cache.0, %sw.bb329 ], [ %ext_cache.0, %sw.bb328 ], [ %ext_cache.0, %sw.bb326 ], [ %ext_cache.0, %sw.bb321 ], [ %ext_cache.0, %sw.bb344 ], [ %ext_cache.0, %sw.bb345 ], [ %ext_cache.0, %sw.bb315 ], [ %ext_cache.0, %sw.bb348 ], [ %ext_cache.0, %sw.bb351 ], [ %ext_cache.0, %sw.bb311 ], [ %ext_cache.0, %sw.bb309 ], [ %ext_cache.0, %sw.bb308 ], [ %ext_cache.0, %sw.bb307 ], [ %ext_cache.0, %sw.bb304 ], [ %ext_cache.0, %sw.bb303 ], [ %ext_cache.0, %sw.bb381 ], [ %ext_cache.0, %sw.bb382 ], [ %ext_cache.0, %sw.bb301 ], [ %ext_cache.0, %sw.bb299 ], [ %ext_cache.0, %sw.bb297 ], [ %ext_cache.0, %sw.bb296 ], [ %ext_cache.0, %sw.bb295 ], [ %ext_cache.0, %sw.bb294 ], [ %ext_cache.0, %sw.bb293 ], [ %ext_cache.0, %sw.bb292 ], [ %ext_cache.0, %sw.bb290 ], [ %ext_cache.0, %sw.bb289 ], [ %ext_cache.0, %sw.bb288 ], [ %ext_cache.0, %sw.bb287 ], [ %ext_cache.0, %sw.bb286 ], [ %ext_cache.0, %sw.bb280 ], [ %ext_cache.0, %sw.bb274 ], [ %ext_cache.0, %sw.bb272 ], [ %ext_cache.0, %sw.bb260 ], [ %ext_cache.0, %sw.bb258 ], [ %ext_cache.0, %sw.bb257 ], [ %ext_cache.0, %sw.bb256 ], [ %ext_cache.0, %sw.bb255 ], [ %ext_cache.0, %sw.bb254 ], [ %ext_cache.0, %sw.bb253 ], [ %ext_cache.0, %sw.bb252 ], [ %ext_cache.0, %sw.bb251 ], [ %ext_cache.0, %sw.bb250 ], [ %ext_cache.0, %sw.bb249 ], [ %ext_cache.0, %sw.bb246 ], [ %ext_cache.0, %sw.bb245 ], [ %ext_cache.0, %sw.bb243 ], [ %ext_cache.0, %sw.bb236 ], [ %ext_cache.0, %sw.bb234 ], [ %ext_cache.0, %sw.bb232 ], [ %ext_cache.0, %sw.bb229 ], [ %ext_cache.0, %sw.bb228 ], [ %ext_cache.0, %sw.bb227 ], [ %ext_cache.0, %sw.bb226 ], [ %ext_cache.0, %sw.bb225 ], [ %ext_cache.0, %sw.bb224 ], [ %ext_cache.0, %sw.bb223 ], [ %ext_cache.0, %sw.bb222 ], [ %ext_cache.0, %sw.bb221 ], [ %ext_cache.0, %sw.bb219 ], [ %ext_cache.0, %sw.bb217 ], [ %ext_cache.0, %sw.bb216 ], [ %ext_cache.0, %sw.bb214 ], [ %ext_cache.0, %sw.bb213 ], [ %ext_cache.0, %sw.bb212 ], [ %ext_cache.0, %sw.bb211 ], [ %ext_cache.0, %sw.bb206 ], [ %ext_cache.0, %sw.bb354 ], [ %ext_cache.0, %sw.bb357 ], [ %ext_cache.0, %if.end203 ], [ %ext_cache.0, %sw.bb359 ], [ %ext_cache.0, %sw.bb367 ], [ %ext_cache.0, %lor.lhs.false189 ], [ %ext_cache.0, %sw.bb375 ], [ %ext_cache.0, %sw.bb380 ], [ %ext_cache.0, %sw.bb168 ], [ 1, %sw.bb167 ], [ %ext_cache.0, %sw.bb166 ], [ %ext_cache.0, %sw.bb164 ], [ %ext_cache.0, %sw.bb162 ], [ %ext_cache.0, %sw.bb161 ], [ %ext_cache.0, %sw.bb159 ], [ %ext_cache.0, %sw.bb157 ], [ %ext_cache.0, %sw.bb155 ], [ %ext_cache.0, %sw.bb154 ], [ %ext_cache.0, %sw.bb152 ], [ %ext_cache.0, %sw.bb151 ], [ %ext_cache.0, %sw.bb149 ], [ %ext_cache.0, %sw.bb147 ], [ %ext_cache.0, %sw.bb145 ], [ %ext_cache.0, %sw.bb139 ], [ %ext_cache.0, %sw.bb137 ], [ %ext_cache.0, %sw.bb131 ], [ %ext_cache.0, %sw.bb129 ], [ %ext_cache.0, %sw.bb127 ], [ %ext_cache.0, %sw.bb125 ], [ %ext_cache.0, %sw.bb119 ], [ %ext_cache.0, %sw.bb117 ], [ %ext_cache.0, %sw.bb111 ], [ %ext_cache.0, %sw.bb109 ], [ %ext_cache.0, %sw.bb108 ], [ %ext_cache.0, %sw.bb106 ], [ %ext_cache.0, %sw.bb100 ], [ %ext_cache.0, %sw.bb98 ], [ %ext_cache.0, %sw.bb96 ], [ %ext_cache.0, %sw.bb89 ], [ %ext_cache.0, %if.then93 ], [ %ext_cache.0, %sw.bb82 ], [ %ext_cache.0, %if.then86 ], [ %ext_cache.0, %sw.bb79 ], [ %ext_cache.0, %sw.bb78 ], [ %ext_cache.0, %sw.bb75 ], [ %ext_cache.0, %sw.bb65 ], [ %ext_cache.0, %sw.bb55 ], [ %ext_cache.0, %if.then49 ], [ %ext_cache.0, %sw.bb47 ], [ %ext_cache.0, %if.then53 ], [ %ext_cache.0, %sw.bb51 ], [ %ext_cache.0, %sw.bb262 ], [ %ext_cache.0, %for.cond ]
  %dhfile.0.be = phi i8* [ %dhfile.0, %if.end44 ], [ %dhfile.0, %sw.bb341 ], [ %dhfile.0, %sw.bb339 ], [ %dhfile.0, %sw.bb337 ], [ %dhfile.0, %sw.bb335 ], [ %dhfile.0, %sw.bb333 ], [ %dhfile.0, %sw.bb331 ], [ %dhfile.0, %sw.bb329 ], [ %dhfile.0, %sw.bb328 ], [ %dhfile.0, %sw.bb326 ], [ %dhfile.0, %sw.bb321 ], [ %dhfile.0, %sw.bb344 ], [ %dhfile.0, %sw.bb345 ], [ %dhfile.0, %sw.bb315 ], [ %dhfile.0, %sw.bb348 ], [ %dhfile.0, %sw.bb351 ], [ %dhfile.0, %sw.bb311 ], [ %dhfile.0, %sw.bb309 ], [ %dhfile.0, %sw.bb308 ], [ %dhfile.0, %sw.bb307 ], [ %dhfile.0, %sw.bb304 ], [ %dhfile.0, %sw.bb303 ], [ %dhfile.0, %sw.bb381 ], [ %dhfile.0, %sw.bb382 ], [ %dhfile.0, %sw.bb301 ], [ %dhfile.0, %sw.bb299 ], [ %dhfile.0, %sw.bb297 ], [ %dhfile.0, %sw.bb296 ], [ %dhfile.0, %sw.bb295 ], [ %dhfile.0, %sw.bb294 ], [ %dhfile.0, %sw.bb293 ], [ %dhfile.0, %sw.bb292 ], [ %dhfile.0, %sw.bb290 ], [ %dhfile.0, %sw.bb289 ], [ %dhfile.0, %sw.bb288 ], [ %dhfile.0, %sw.bb287 ], [ %dhfile.0, %sw.bb286 ], [ %dhfile.0, %sw.bb280 ], [ %dhfile.0, %sw.bb274 ], [ %dhfile.0, %sw.bb272 ], [ %dhfile.0, %sw.bb260 ], [ %dhfile.0, %sw.bb258 ], [ %dhfile.0, %sw.bb257 ], [ %dhfile.0, %sw.bb256 ], [ %dhfile.0, %sw.bb255 ], [ %dhfile.0, %sw.bb254 ], [ %dhfile.0, %sw.bb253 ], [ %dhfile.0, %sw.bb252 ], [ %dhfile.0, %sw.bb251 ], [ %dhfile.0, %sw.bb250 ], [ %dhfile.0, %sw.bb249 ], [ %dhfile.0, %sw.bb246 ], [ %dhfile.0, %sw.bb245 ], [ %dhfile.0, %sw.bb243 ], [ %dhfile.0, %sw.bb236 ], [ %dhfile.0, %sw.bb234 ], [ %dhfile.0, %sw.bb232 ], [ %dhfile.0, %sw.bb229 ], [ %dhfile.0, %sw.bb228 ], [ %dhfile.0, %sw.bb227 ], [ %dhfile.0, %sw.bb226 ], [ %dhfile.0, %sw.bb225 ], [ %dhfile.0, %sw.bb224 ], [ %dhfile.0, %sw.bb223 ], [ %dhfile.0, %sw.bb222 ], [ %dhfile.0, %sw.bb221 ], [ %dhfile.0, %sw.bb219 ], [ %dhfile.0, %sw.bb217 ], [ %dhfile.0, %sw.bb216 ], [ %dhfile.0, %sw.bb214 ], [ %dhfile.0, %sw.bb213 ], [ %dhfile.0, %sw.bb212 ], [ %dhfile.0, %sw.bb211 ], [ %dhfile.0, %sw.bb206 ], [ %dhfile.0, %sw.bb354 ], [ %dhfile.0, %sw.bb357 ], [ %dhfile.0, %if.end203 ], [ %dhfile.0, %sw.bb359 ], [ %dhfile.0, %sw.bb367 ], [ %dhfile.0, %lor.lhs.false189 ], [ %dhfile.0, %sw.bb375 ], [ %dhfile.0, %sw.bb380 ], [ %dhfile.0, %sw.bb168 ], [ %dhfile.0, %sw.bb167 ], [ %dhfile.0, %sw.bb166 ], [ %dhfile.0, %sw.bb164 ], [ %dhfile.0, %sw.bb162 ], [ %dhfile.0, %sw.bb161 ], [ %dhfile.0, %sw.bb159 ], [ %dhfile.0, %sw.bb157 ], [ %dhfile.0, %sw.bb155 ], [ %dhfile.0, %sw.bb154 ], [ %dhfile.0, %sw.bb152 ], [ %dhfile.0, %sw.bb151 ], [ %dhfile.0, %sw.bb149 ], [ %dhfile.0, %sw.bb147 ], [ %dhfile.0, %sw.bb145 ], [ %dhfile.0, %sw.bb139 ], [ %dhfile.0, %sw.bb137 ], [ %dhfile.0, %sw.bb131 ], [ %call130, %sw.bb129 ], [ %dhfile.0, %sw.bb127 ], [ %dhfile.0, %sw.bb125 ], [ %dhfile.0, %sw.bb119 ], [ %dhfile.0, %sw.bb117 ], [ %dhfile.0, %sw.bb111 ], [ %dhfile.0, %sw.bb109 ], [ %dhfile.0, %sw.bb108 ], [ %dhfile.0, %sw.bb106 ], [ %dhfile.0, %sw.bb100 ], [ %dhfile.0, %sw.bb98 ], [ %dhfile.0, %sw.bb96 ], [ %dhfile.0, %sw.bb89 ], [ %dhfile.0, %if.then93 ], [ %dhfile.0, %sw.bb82 ], [ %dhfile.0, %if.then86 ], [ %dhfile.0, %sw.bb79 ], [ %dhfile.0, %sw.bb78 ], [ %dhfile.0, %sw.bb75 ], [ %dhfile.0, %sw.bb65 ], [ %dhfile.0, %sw.bb55 ], [ %dhfile.0, %if.then49 ], [ %dhfile.0, %sw.bb47 ], [ %dhfile.0, %if.then53 ], [ %dhfile.0, %sw.bb51 ], [ %dhfile.0, %sw.bb262 ], [ %dhfile.0, %for.cond ]
  %no_dhe.0.be = phi i32 [ %no_dhe.0, %if.end44 ], [ %no_dhe.0, %sw.bb341 ], [ %no_dhe.0, %sw.bb339 ], [ %no_dhe.0, %sw.bb337 ], [ %no_dhe.0, %sw.bb335 ], [ %no_dhe.0, %sw.bb333 ], [ %no_dhe.0, %sw.bb331 ], [ %no_dhe.0, %sw.bb329 ], [ %no_dhe.0, %sw.bb328 ], [ %no_dhe.0, %sw.bb326 ], [ %no_dhe.0, %sw.bb321 ], [ %no_dhe.0, %sw.bb344 ], [ %no_dhe.0, %sw.bb345 ], [ %no_dhe.0, %sw.bb315 ], [ %no_dhe.0, %sw.bb348 ], [ %no_dhe.0, %sw.bb351 ], [ %no_dhe.0, %sw.bb311 ], [ %no_dhe.0, %sw.bb309 ], [ %no_dhe.0, %sw.bb308 ], [ %no_dhe.0, %sw.bb307 ], [ %no_dhe.0, %sw.bb304 ], [ %no_dhe.0, %sw.bb303 ], [ %no_dhe.0, %sw.bb381 ], [ %no_dhe.0, %sw.bb382 ], [ %no_dhe.0, %sw.bb301 ], [ %no_dhe.0, %sw.bb299 ], [ %no_dhe.0, %sw.bb297 ], [ %no_dhe.0, %sw.bb296 ], [ %no_dhe.0, %sw.bb295 ], [ %no_dhe.0, %sw.bb294 ], [ %no_dhe.0, %sw.bb293 ], [ %no_dhe.0, %sw.bb292 ], [ %no_dhe.0, %sw.bb290 ], [ %no_dhe.0, %sw.bb289 ], [ %no_dhe.0, %sw.bb288 ], [ %no_dhe.0, %sw.bb287 ], [ %no_dhe.0, %sw.bb286 ], [ %no_dhe.0, %sw.bb280 ], [ %no_dhe.0, %sw.bb274 ], [ %no_dhe.0, %sw.bb272 ], [ %no_dhe.0, %sw.bb260 ], [ %no_dhe.0, %sw.bb258 ], [ %no_dhe.0, %sw.bb257 ], [ 1, %sw.bb256 ], [ %no_dhe.0, %sw.bb255 ], [ %no_dhe.0, %sw.bb254 ], [ %no_dhe.0, %sw.bb253 ], [ %no_dhe.0, %sw.bb252 ], [ %no_dhe.0, %sw.bb251 ], [ %no_dhe.0, %sw.bb250 ], [ %no_dhe.0, %sw.bb249 ], [ %no_dhe.0, %sw.bb246 ], [ %no_dhe.0, %sw.bb245 ], [ %no_dhe.0, %sw.bb243 ], [ %no_dhe.0, %sw.bb236 ], [ %no_dhe.0, %sw.bb234 ], [ %no_dhe.0, %sw.bb232 ], [ %no_dhe.0, %sw.bb229 ], [ %no_dhe.0, %sw.bb228 ], [ %no_dhe.0, %sw.bb227 ], [ %no_dhe.0, %sw.bb226 ], [ %no_dhe.0, %sw.bb225 ], [ %no_dhe.0, %sw.bb224 ], [ %no_dhe.0, %sw.bb223 ], [ %no_dhe.0, %sw.bb222 ], [ %no_dhe.0, %sw.bb221 ], [ %no_dhe.0, %sw.bb219 ], [ %no_dhe.0, %sw.bb217 ], [ %no_dhe.0, %sw.bb216 ], [ %no_dhe.0, %sw.bb214 ], [ %no_dhe.0, %sw.bb213 ], [ %no_dhe.0, %sw.bb212 ], [ %no_dhe.0, %sw.bb211 ], [ %no_dhe.0, %sw.bb206 ], [ %no_dhe.0, %sw.bb354 ], [ %no_dhe.0, %sw.bb357 ], [ %no_dhe.0, %if.end203 ], [ %no_dhe.0, %sw.bb359 ], [ %no_dhe.0, %sw.bb367 ], [ %no_dhe.0, %lor.lhs.false189 ], [ %no_dhe.0, %sw.bb375 ], [ %no_dhe.0, %sw.bb380 ], [ %no_dhe.0, %sw.bb168 ], [ %no_dhe.0, %sw.bb167 ], [ %no_dhe.0, %sw.bb166 ], [ %no_dhe.0, %sw.bb164 ], [ %no_dhe.0, %sw.bb162 ], [ %no_dhe.0, %sw.bb161 ], [ %no_dhe.0, %sw.bb159 ], [ %no_dhe.0, %sw.bb157 ], [ %no_dhe.0, %sw.bb155 ], [ %no_dhe.0, %sw.bb154 ], [ %no_dhe.0, %sw.bb152 ], [ %no_dhe.0, %sw.bb151 ], [ %no_dhe.0, %sw.bb149 ], [ %no_dhe.0, %sw.bb147 ], [ %no_dhe.0, %sw.bb145 ], [ %no_dhe.0, %sw.bb139 ], [ %no_dhe.0, %sw.bb137 ], [ %no_dhe.0, %sw.bb131 ], [ %no_dhe.0, %sw.bb129 ], [ %no_dhe.0, %sw.bb127 ], [ %no_dhe.0, %sw.bb125 ], [ %no_dhe.0, %sw.bb119 ], [ %no_dhe.0, %sw.bb117 ], [ %no_dhe.0, %sw.bb111 ], [ %no_dhe.0, %sw.bb109 ], [ %no_dhe.0, %sw.bb108 ], [ %no_dhe.0, %sw.bb106 ], [ %no_dhe.0, %sw.bb100 ], [ %no_dhe.0, %sw.bb98 ], [ %no_dhe.0, %sw.bb96 ], [ %no_dhe.0, %sw.bb89 ], [ %no_dhe.0, %if.then93 ], [ %no_dhe.0, %sw.bb82 ], [ %no_dhe.0, %if.then86 ], [ %no_dhe.0, %sw.bb79 ], [ %no_dhe.0, %sw.bb78 ], [ %no_dhe.0, %sw.bb75 ], [ %no_dhe.0, %sw.bb65 ], [ %no_dhe.0, %sw.bb55 ], [ %no_dhe.0, %if.then49 ], [ %no_dhe.0, %sw.bb47 ], [ %no_dhe.0, %if.then53 ], [ %no_dhe.0, %sw.bb51 ], [ %no_dhe.0, %sw.bb262 ], [ %no_dhe.0, %for.cond ]
  %nocert.0.be = phi i32 [ %nocert.0, %if.end44 ], [ %nocert.0, %sw.bb341 ], [ %nocert.0, %sw.bb339 ], [ %nocert.0, %sw.bb337 ], [ %nocert.0, %sw.bb335 ], [ %nocert.0, %sw.bb333 ], [ %nocert.0, %sw.bb331 ], [ %nocert.0, %sw.bb329 ], [ %nocert.0, %sw.bb328 ], [ %nocert.0, %sw.bb326 ], [ %nocert.0, %sw.bb321 ], [ %nocert.0, %sw.bb344 ], [ %nocert.0, %sw.bb345 ], [ %nocert.0, %sw.bb315 ], [ %nocert.0, %sw.bb348 ], [ %nocert.0, %sw.bb351 ], [ %nocert.0, %sw.bb311 ], [ %nocert.0, %sw.bb309 ], [ %nocert.0, %sw.bb308 ], [ %nocert.0, %sw.bb307 ], [ %nocert.0, %sw.bb304 ], [ %nocert.0, %sw.bb303 ], [ %nocert.0, %sw.bb381 ], [ %nocert.0, %sw.bb382 ], [ %nocert.0, %sw.bb301 ], [ %nocert.0, %sw.bb299 ], [ %nocert.0, %sw.bb297 ], [ %nocert.0, %sw.bb296 ], [ %nocert.0, %sw.bb295 ], [ %nocert.0, %sw.bb294 ], [ %nocert.0, %sw.bb293 ], [ %nocert.0, %sw.bb292 ], [ %nocert.0, %sw.bb290 ], [ %nocert.0, %sw.bb289 ], [ %nocert.0, %sw.bb288 ], [ %nocert.0, %sw.bb287 ], [ %nocert.0, %sw.bb286 ], [ %nocert.0, %sw.bb280 ], [ %nocert.0, %sw.bb274 ], [ %nocert.0, %sw.bb272 ], [ %nocert.0, %sw.bb260 ], [ %nocert.0, %sw.bb258 ], [ %nocert.0, %sw.bb257 ], [ %nocert.0, %sw.bb256 ], [ %nocert.0, %sw.bb255 ], [ %nocert.0, %sw.bb254 ], [ %nocert.0, %sw.bb253 ], [ %nocert.0, %sw.bb252 ], [ %nocert.0, %sw.bb251 ], [ %nocert.0, %sw.bb250 ], [ %nocert.0, %sw.bb249 ], [ %nocert.0, %sw.bb246 ], [ %nocert.0, %sw.bb245 ], [ %nocert.0, %sw.bb243 ], [ %nocert.0, %sw.bb236 ], [ %nocert.0, %sw.bb234 ], [ %nocert.0, %sw.bb232 ], [ %nocert.0, %sw.bb229 ], [ %nocert.0, %sw.bb228 ], [ %nocert.0, %sw.bb227 ], [ %nocert.0, %sw.bb226 ], [ %nocert.0, %sw.bb225 ], [ %nocert.0, %sw.bb224 ], [ %nocert.0, %sw.bb223 ], [ %nocert.0, %sw.bb222 ], [ %nocert.0, %sw.bb221 ], [ %nocert.0, %sw.bb219 ], [ %nocert.0, %sw.bb217 ], [ %nocert.0, %sw.bb216 ], [ %nocert.0, %sw.bb214 ], [ %nocert.0, %sw.bb213 ], [ %nocert.0, %sw.bb212 ], [ %nocert.0, %sw.bb211 ], [ %nocert.0, %sw.bb206 ], [ %nocert.0, %sw.bb354 ], [ %nocert.0, %sw.bb357 ], [ %nocert.0, %if.end203 ], [ %nocert.0, %sw.bb359 ], [ %nocert.0, %sw.bb367 ], [ %nocert.0, %lor.lhs.false189 ], [ %nocert.0, %sw.bb375 ], [ %nocert.0, %sw.bb380 ], [ %nocert.0, %sw.bb168 ], [ %nocert.0, %sw.bb167 ], [ %nocert.0, %sw.bb166 ], [ %nocert.0, %sw.bb164 ], [ %nocert.0, %sw.bb162 ], [ %nocert.0, %sw.bb161 ], [ %nocert.0, %sw.bb159 ], [ %nocert.0, %sw.bb157 ], [ %nocert.0, %sw.bb155 ], [ %nocert.0, %sw.bb154 ], [ %nocert.0, %sw.bb152 ], [ 1, %sw.bb151 ], [ %nocert.0, %sw.bb149 ], [ %nocert.0, %sw.bb147 ], [ %nocert.0, %sw.bb145 ], [ %nocert.0, %sw.bb139 ], [ %nocert.0, %sw.bb137 ], [ %nocert.0, %sw.bb131 ], [ %nocert.0, %sw.bb129 ], [ %nocert.0, %sw.bb127 ], [ %nocert.0, %sw.bb125 ], [ %nocert.0, %sw.bb119 ], [ %nocert.0, %sw.bb117 ], [ %nocert.0, %sw.bb111 ], [ %nocert.0, %sw.bb109 ], [ %nocert.0, %sw.bb108 ], [ %nocert.0, %sw.bb106 ], [ %nocert.0, %sw.bb100 ], [ %nocert.0, %sw.bb98 ], [ %nocert.0, %sw.bb96 ], [ %nocert.0, %sw.bb89 ], [ %nocert.0, %if.then93 ], [ %nocert.0, %sw.bb82 ], [ %nocert.0, %if.then86 ], [ %nocert.0, %sw.bb79 ], [ %nocert.0, %sw.bb78 ], [ %nocert.0, %sw.bb75 ], [ %nocert.0, %sw.bb65 ], [ %nocert.0, %sw.bb55 ], [ %nocert.0, %if.then49 ], [ %nocert.0, %sw.bb47 ], [ %nocert.0, %if.then53 ], [ %nocert.0, %sw.bb51 ], [ %nocert.0, %sw.bb262 ], [ %nocert.0, %for.cond ]
  %noCApath.0.be = phi i32 [ %noCApath.0, %if.end44 ], [ %noCApath.0, %sw.bb341 ], [ %noCApath.0, %sw.bb339 ], [ %noCApath.0, %sw.bb337 ], [ %noCApath.0, %sw.bb335 ], [ %noCApath.0, %sw.bb333 ], [ %noCApath.0, %sw.bb331 ], [ %noCApath.0, %sw.bb329 ], [ %noCApath.0, %sw.bb328 ], [ %noCApath.0, %sw.bb326 ], [ %noCApath.0, %sw.bb321 ], [ %noCApath.0, %sw.bb344 ], [ %noCApath.0, %sw.bb345 ], [ %noCApath.0, %sw.bb315 ], [ %noCApath.0, %sw.bb348 ], [ %noCApath.0, %sw.bb351 ], [ %noCApath.0, %sw.bb311 ], [ %noCApath.0, %sw.bb309 ], [ %noCApath.0, %sw.bb308 ], [ %noCApath.0, %sw.bb307 ], [ %noCApath.0, %sw.bb304 ], [ %noCApath.0, %sw.bb303 ], [ %noCApath.0, %sw.bb381 ], [ %noCApath.0, %sw.bb382 ], [ %noCApath.0, %sw.bb301 ], [ %noCApath.0, %sw.bb299 ], [ %noCApath.0, %sw.bb297 ], [ %noCApath.0, %sw.bb296 ], [ %noCApath.0, %sw.bb295 ], [ %noCApath.0, %sw.bb294 ], [ %noCApath.0, %sw.bb293 ], [ %noCApath.0, %sw.bb292 ], [ %noCApath.0, %sw.bb290 ], [ %noCApath.0, %sw.bb289 ], [ %noCApath.0, %sw.bb288 ], [ %noCApath.0, %sw.bb287 ], [ %noCApath.0, %sw.bb286 ], [ %noCApath.0, %sw.bb280 ], [ %noCApath.0, %sw.bb274 ], [ %noCApath.0, %sw.bb272 ], [ %noCApath.0, %sw.bb260 ], [ %noCApath.0, %sw.bb258 ], [ %noCApath.0, %sw.bb257 ], [ %noCApath.0, %sw.bb256 ], [ %noCApath.0, %sw.bb255 ], [ %noCApath.0, %sw.bb254 ], [ %noCApath.0, %sw.bb253 ], [ %noCApath.0, %sw.bb252 ], [ %noCApath.0, %sw.bb251 ], [ %noCApath.0, %sw.bb250 ], [ %noCApath.0, %sw.bb249 ], [ %noCApath.0, %sw.bb246 ], [ %noCApath.0, %sw.bb245 ], [ %noCApath.0, %sw.bb243 ], [ %noCApath.0, %sw.bb236 ], [ %noCApath.0, %sw.bb234 ], [ %noCApath.0, %sw.bb232 ], [ %noCApath.0, %sw.bb229 ], [ %noCApath.0, %sw.bb228 ], [ %noCApath.0, %sw.bb227 ], [ %noCApath.0, %sw.bb226 ], [ %noCApath.0, %sw.bb225 ], [ %noCApath.0, %sw.bb224 ], [ %noCApath.0, %sw.bb223 ], [ %noCApath.0, %sw.bb222 ], [ %noCApath.0, %sw.bb221 ], [ %noCApath.0, %sw.bb219 ], [ %noCApath.0, %sw.bb217 ], [ %noCApath.0, %sw.bb216 ], [ %noCApath.0, %sw.bb214 ], [ %noCApath.0, %sw.bb213 ], [ %noCApath.0, %sw.bb212 ], [ %noCApath.0, %sw.bb211 ], [ %noCApath.0, %sw.bb206 ], [ %noCApath.0, %sw.bb354 ], [ %noCApath.0, %sw.bb357 ], [ %noCApath.0, %if.end203 ], [ %noCApath.0, %sw.bb359 ], [ %noCApath.0, %sw.bb367 ], [ %noCApath.0, %lor.lhs.false189 ], [ %noCApath.0, %sw.bb375 ], [ %noCApath.0, %sw.bb380 ], [ %noCApath.0, %sw.bb168 ], [ %noCApath.0, %sw.bb167 ], [ %noCApath.0, %sw.bb166 ], [ %noCApath.0, %sw.bb164 ], [ %noCApath.0, %sw.bb162 ], [ %noCApath.0, %sw.bb161 ], [ %noCApath.0, %sw.bb159 ], [ %noCApath.0, %sw.bb157 ], [ %noCApath.0, %sw.bb155 ], [ 1, %sw.bb154 ], [ %noCApath.0, %sw.bb152 ], [ %noCApath.0, %sw.bb151 ], [ %noCApath.0, %sw.bb149 ], [ %noCApath.0, %sw.bb147 ], [ %noCApath.0, %sw.bb145 ], [ %noCApath.0, %sw.bb139 ], [ %noCApath.0, %sw.bb137 ], [ %noCApath.0, %sw.bb131 ], [ %noCApath.0, %sw.bb129 ], [ %noCApath.0, %sw.bb127 ], [ %noCApath.0, %sw.bb125 ], [ %noCApath.0, %sw.bb119 ], [ %noCApath.0, %sw.bb117 ], [ %noCApath.0, %sw.bb111 ], [ %noCApath.0, %sw.bb109 ], [ %noCApath.0, %sw.bb108 ], [ %noCApath.0, %sw.bb106 ], [ %noCApath.0, %sw.bb100 ], [ %noCApath.0, %sw.bb98 ], [ %noCApath.0, %sw.bb96 ], [ %noCApath.0, %sw.bb89 ], [ %noCApath.0, %if.then93 ], [ %noCApath.0, %sw.bb82 ], [ %noCApath.0, %if.then86 ], [ %noCApath.0, %sw.bb79 ], [ %noCApath.0, %sw.bb78 ], [ %noCApath.0, %sw.bb75 ], [ %noCApath.0, %sw.bb65 ], [ %noCApath.0, %sw.bb55 ], [ %noCApath.0, %if.then49 ], [ %noCApath.0, %sw.bb47 ], [ %noCApath.0, %if.then53 ], [ %noCApath.0, %sw.bb51 ], [ %noCApath.0, %sw.bb262 ], [ %noCApath.0, %for.cond ]
  %noCAfile.0.be = phi i32 [ %noCAfile.0, %if.end44 ], [ %noCAfile.0, %sw.bb341 ], [ %noCAfile.0, %sw.bb339 ], [ %noCAfile.0, %sw.bb337 ], [ %noCAfile.0, %sw.bb335 ], [ %noCAfile.0, %sw.bb333 ], [ %noCAfile.0, %sw.bb331 ], [ %noCAfile.0, %sw.bb329 ], [ %noCAfile.0, %sw.bb328 ], [ %noCAfile.0, %sw.bb326 ], [ %noCAfile.0, %sw.bb321 ], [ %noCAfile.0, %sw.bb344 ], [ %noCAfile.0, %sw.bb345 ], [ %noCAfile.0, %sw.bb315 ], [ %noCAfile.0, %sw.bb348 ], [ %noCAfile.0, %sw.bb351 ], [ %noCAfile.0, %sw.bb311 ], [ %noCAfile.0, %sw.bb309 ], [ %noCAfile.0, %sw.bb308 ], [ %noCAfile.0, %sw.bb307 ], [ %noCAfile.0, %sw.bb304 ], [ %noCAfile.0, %sw.bb303 ], [ %noCAfile.0, %sw.bb381 ], [ %noCAfile.0, %sw.bb382 ], [ %noCAfile.0, %sw.bb301 ], [ %noCAfile.0, %sw.bb299 ], [ %noCAfile.0, %sw.bb297 ], [ %noCAfile.0, %sw.bb296 ], [ %noCAfile.0, %sw.bb295 ], [ %noCAfile.0, %sw.bb294 ], [ %noCAfile.0, %sw.bb293 ], [ %noCAfile.0, %sw.bb292 ], [ %noCAfile.0, %sw.bb290 ], [ %noCAfile.0, %sw.bb289 ], [ %noCAfile.0, %sw.bb288 ], [ %noCAfile.0, %sw.bb287 ], [ %noCAfile.0, %sw.bb286 ], [ %noCAfile.0, %sw.bb280 ], [ %noCAfile.0, %sw.bb274 ], [ %noCAfile.0, %sw.bb272 ], [ %noCAfile.0, %sw.bb260 ], [ %noCAfile.0, %sw.bb258 ], [ %noCAfile.0, %sw.bb257 ], [ %noCAfile.0, %sw.bb256 ], [ %noCAfile.0, %sw.bb255 ], [ %noCAfile.0, %sw.bb254 ], [ %noCAfile.0, %sw.bb253 ], [ %noCAfile.0, %sw.bb252 ], [ %noCAfile.0, %sw.bb251 ], [ %noCAfile.0, %sw.bb250 ], [ %noCAfile.0, %sw.bb249 ], [ %noCAfile.0, %sw.bb246 ], [ %noCAfile.0, %sw.bb245 ], [ %noCAfile.0, %sw.bb243 ], [ %noCAfile.0, %sw.bb236 ], [ %noCAfile.0, %sw.bb234 ], [ %noCAfile.0, %sw.bb232 ], [ %noCAfile.0, %sw.bb229 ], [ %noCAfile.0, %sw.bb228 ], [ %noCAfile.0, %sw.bb227 ], [ %noCAfile.0, %sw.bb226 ], [ %noCAfile.0, %sw.bb225 ], [ %noCAfile.0, %sw.bb224 ], [ %noCAfile.0, %sw.bb223 ], [ %noCAfile.0, %sw.bb222 ], [ %noCAfile.0, %sw.bb221 ], [ %noCAfile.0, %sw.bb219 ], [ %noCAfile.0, %sw.bb217 ], [ 1, %sw.bb216 ], [ %noCAfile.0, %sw.bb214 ], [ %noCAfile.0, %sw.bb213 ], [ %noCAfile.0, %sw.bb212 ], [ %noCAfile.0, %sw.bb211 ], [ %noCAfile.0, %sw.bb206 ], [ %noCAfile.0, %sw.bb354 ], [ %noCAfile.0, %sw.bb357 ], [ %noCAfile.0, %if.end203 ], [ %noCAfile.0, %sw.bb359 ], [ %noCAfile.0, %sw.bb367 ], [ %noCAfile.0, %lor.lhs.false189 ], [ %noCAfile.0, %sw.bb375 ], [ %noCAfile.0, %sw.bb380 ], [ %noCAfile.0, %sw.bb168 ], [ %noCAfile.0, %sw.bb167 ], [ %noCAfile.0, %sw.bb166 ], [ %noCAfile.0, %sw.bb164 ], [ %noCAfile.0, %sw.bb162 ], [ %noCAfile.0, %sw.bb161 ], [ %noCAfile.0, %sw.bb159 ], [ %noCAfile.0, %sw.bb157 ], [ %noCAfile.0, %sw.bb155 ], [ %noCAfile.0, %sw.bb154 ], [ %noCAfile.0, %sw.bb152 ], [ %noCAfile.0, %sw.bb151 ], [ %noCAfile.0, %sw.bb149 ], [ %noCAfile.0, %sw.bb147 ], [ %noCAfile.0, %sw.bb145 ], [ %noCAfile.0, %sw.bb139 ], [ %noCAfile.0, %sw.bb137 ], [ %noCAfile.0, %sw.bb131 ], [ %noCAfile.0, %sw.bb129 ], [ %noCAfile.0, %sw.bb127 ], [ %noCAfile.0, %sw.bb125 ], [ %noCAfile.0, %sw.bb119 ], [ %noCAfile.0, %sw.bb117 ], [ %noCAfile.0, %sw.bb111 ], [ %noCAfile.0, %sw.bb109 ], [ %noCAfile.0, %sw.bb108 ], [ %noCAfile.0, %sw.bb106 ], [ %noCAfile.0, %sw.bb100 ], [ %noCAfile.0, %sw.bb98 ], [ %noCAfile.0, %sw.bb96 ], [ %noCAfile.0, %sw.bb89 ], [ %noCAfile.0, %if.then93 ], [ %noCAfile.0, %sw.bb82 ], [ %noCAfile.0, %if.then86 ], [ %noCAfile.0, %sw.bb79 ], [ %noCAfile.0, %sw.bb78 ], [ %noCAfile.0, %sw.bb75 ], [ %noCAfile.0, %sw.bb65 ], [ %noCAfile.0, %sw.bb55 ], [ %noCAfile.0, %if.then49 ], [ %noCAfile.0, %sw.bb47 ], [ %noCAfile.0, %if.then53 ], [ %noCAfile.0, %sw.bb51 ], [ %noCAfile.0, %sw.bb262 ], [ %noCAfile.0, %for.cond ]
  %noCAstore.0.be = phi i32 [ %noCAstore.0, %if.end44 ], [ %noCAstore.0, %sw.bb341 ], [ %noCAstore.0, %sw.bb339 ], [ %noCAstore.0, %sw.bb337 ], [ %noCAstore.0, %sw.bb335 ], [ %noCAstore.0, %sw.bb333 ], [ %noCAstore.0, %sw.bb331 ], [ %noCAstore.0, %sw.bb329 ], [ %noCAstore.0, %sw.bb328 ], [ %noCAstore.0, %sw.bb326 ], [ %noCAstore.0, %sw.bb321 ], [ %noCAstore.0, %sw.bb344 ], [ %noCAstore.0, %sw.bb345 ], [ %noCAstore.0, %sw.bb315 ], [ %noCAstore.0, %sw.bb348 ], [ %noCAstore.0, %sw.bb351 ], [ %noCAstore.0, %sw.bb311 ], [ %noCAstore.0, %sw.bb309 ], [ %noCAstore.0, %sw.bb308 ], [ %noCAstore.0, %sw.bb307 ], [ %noCAstore.0, %sw.bb304 ], [ %noCAstore.0, %sw.bb303 ], [ %noCAstore.0, %sw.bb381 ], [ %noCAstore.0, %sw.bb382 ], [ %noCAstore.0, %sw.bb301 ], [ %noCAstore.0, %sw.bb299 ], [ %noCAstore.0, %sw.bb297 ], [ %noCAstore.0, %sw.bb296 ], [ %noCAstore.0, %sw.bb295 ], [ %noCAstore.0, %sw.bb294 ], [ %noCAstore.0, %sw.bb293 ], [ %noCAstore.0, %sw.bb292 ], [ %noCAstore.0, %sw.bb290 ], [ %noCAstore.0, %sw.bb289 ], [ %noCAstore.0, %sw.bb288 ], [ %noCAstore.0, %sw.bb287 ], [ %noCAstore.0, %sw.bb286 ], [ %noCAstore.0, %sw.bb280 ], [ %noCAstore.0, %sw.bb274 ], [ %noCAstore.0, %sw.bb272 ], [ %noCAstore.0, %sw.bb260 ], [ %noCAstore.0, %sw.bb258 ], [ %noCAstore.0, %sw.bb257 ], [ %noCAstore.0, %sw.bb256 ], [ %noCAstore.0, %sw.bb255 ], [ %noCAstore.0, %sw.bb254 ], [ %noCAstore.0, %sw.bb253 ], [ %noCAstore.0, %sw.bb252 ], [ %noCAstore.0, %sw.bb251 ], [ %noCAstore.0, %sw.bb250 ], [ %noCAstore.0, %sw.bb249 ], [ %noCAstore.0, %sw.bb246 ], [ %noCAstore.0, %sw.bb245 ], [ %noCAstore.0, %sw.bb243 ], [ %noCAstore.0, %sw.bb236 ], [ %noCAstore.0, %sw.bb234 ], [ %noCAstore.0, %sw.bb232 ], [ %noCAstore.0, %sw.bb229 ], [ %noCAstore.0, %sw.bb228 ], [ %noCAstore.0, %sw.bb227 ], [ %noCAstore.0, %sw.bb226 ], [ %noCAstore.0, %sw.bb225 ], [ %noCAstore.0, %sw.bb224 ], [ %noCAstore.0, %sw.bb223 ], [ %noCAstore.0, %sw.bb222 ], [ %noCAstore.0, %sw.bb221 ], [ %noCAstore.0, %sw.bb219 ], [ %noCAstore.0, %sw.bb217 ], [ %noCAstore.0, %sw.bb216 ], [ %noCAstore.0, %sw.bb214 ], [ %noCAstore.0, %sw.bb213 ], [ %noCAstore.0, %sw.bb212 ], [ %noCAstore.0, %sw.bb211 ], [ %noCAstore.0, %sw.bb206 ], [ %noCAstore.0, %sw.bb354 ], [ %noCAstore.0, %sw.bb357 ], [ %noCAstore.0, %if.end203 ], [ %noCAstore.0, %sw.bb359 ], [ %noCAstore.0, %sw.bb367 ], [ %noCAstore.0, %lor.lhs.false189 ], [ %noCAstore.0, %sw.bb375 ], [ %noCAstore.0, %sw.bb380 ], [ %noCAstore.0, %sw.bb168 ], [ %noCAstore.0, %sw.bb167 ], [ %noCAstore.0, %sw.bb166 ], [ %noCAstore.0, %sw.bb164 ], [ %noCAstore.0, %sw.bb162 ], [ 1, %sw.bb161 ], [ %noCAstore.0, %sw.bb159 ], [ %noCAstore.0, %sw.bb157 ], [ %noCAstore.0, %sw.bb155 ], [ %noCAstore.0, %sw.bb154 ], [ %noCAstore.0, %sw.bb152 ], [ %noCAstore.0, %sw.bb151 ], [ %noCAstore.0, %sw.bb149 ], [ %noCAstore.0, %sw.bb147 ], [ %noCAstore.0, %sw.bb145 ], [ %noCAstore.0, %sw.bb139 ], [ %noCAstore.0, %sw.bb137 ], [ %noCAstore.0, %sw.bb131 ], [ %noCAstore.0, %sw.bb129 ], [ %noCAstore.0, %sw.bb127 ], [ %noCAstore.0, %sw.bb125 ], [ %noCAstore.0, %sw.bb119 ], [ %noCAstore.0, %sw.bb117 ], [ %noCAstore.0, %sw.bb111 ], [ %noCAstore.0, %sw.bb109 ], [ %noCAstore.0, %sw.bb108 ], [ %noCAstore.0, %sw.bb106 ], [ %noCAstore.0, %sw.bb100 ], [ %noCAstore.0, %sw.bb98 ], [ %noCAstore.0, %sw.bb96 ], [ %noCAstore.0, %sw.bb89 ], [ %noCAstore.0, %if.then93 ], [ %noCAstore.0, %sw.bb82 ], [ %noCAstore.0, %if.then86 ], [ %noCAstore.0, %sw.bb79 ], [ %noCAstore.0, %sw.bb78 ], [ %noCAstore.0, %sw.bb75 ], [ %noCAstore.0, %sw.bb65 ], [ %noCAstore.0, %sw.bb55 ], [ %noCAstore.0, %if.then49 ], [ %noCAstore.0, %sw.bb47 ], [ %noCAstore.0, %if.then53 ], [ %noCAstore.0, %sw.bb51 ], [ %noCAstore.0, %sw.bb262 ], [ %noCAstore.0, %for.cond ]
  %rev.0.be = phi i32 [ %rev.0, %if.end44 ], [ %rev.0, %sw.bb341 ], [ %rev.0, %sw.bb339 ], [ %rev.0, %sw.bb337 ], [ %rev.0, %sw.bb335 ], [ %rev.0, %sw.bb333 ], [ %rev.0, %sw.bb331 ], [ %rev.0, %sw.bb329 ], [ %rev.0, %sw.bb328 ], [ %rev.0, %sw.bb326 ], [ %rev.0, %sw.bb321 ], [ %rev.0, %sw.bb344 ], [ %rev.0, %sw.bb345 ], [ %rev.0, %sw.bb315 ], [ %rev.0, %sw.bb348 ], [ %rev.0, %sw.bb351 ], [ %rev.0, %sw.bb311 ], [ %rev.0, %sw.bb309 ], [ %rev.0, %sw.bb308 ], [ %rev.0, %sw.bb307 ], [ %rev.0, %sw.bb304 ], [ %rev.0, %sw.bb303 ], [ %rev.0, %sw.bb381 ], [ %rev.0, %sw.bb382 ], [ %rev.0, %sw.bb301 ], [ %rev.0, %sw.bb299 ], [ %rev.0, %sw.bb297 ], [ %rev.0, %sw.bb296 ], [ %rev.0, %sw.bb295 ], [ %rev.0, %sw.bb294 ], [ %rev.0, %sw.bb293 ], [ %rev.0, %sw.bb292 ], [ %rev.0, %sw.bb290 ], [ %rev.0, %sw.bb289 ], [ %rev.0, %sw.bb288 ], [ %rev.0, %sw.bb287 ], [ 1, %sw.bb286 ], [ %rev.0, %sw.bb280 ], [ %rev.0, %sw.bb274 ], [ %rev.0, %sw.bb272 ], [ %rev.0, %sw.bb260 ], [ %rev.0, %sw.bb258 ], [ %rev.0, %sw.bb257 ], [ %rev.0, %sw.bb256 ], [ %rev.0, %sw.bb255 ], [ %rev.0, %sw.bb254 ], [ %rev.0, %sw.bb253 ], [ %rev.0, %sw.bb252 ], [ %rev.0, %sw.bb251 ], [ %rev.0, %sw.bb250 ], [ %rev.0, %sw.bb249 ], [ %rev.0, %sw.bb246 ], [ %rev.0, %sw.bb245 ], [ %rev.0, %sw.bb243 ], [ %rev.0, %sw.bb236 ], [ %rev.0, %sw.bb234 ], [ %rev.0, %sw.bb232 ], [ %rev.0, %sw.bb229 ], [ %rev.0, %sw.bb228 ], [ %rev.0, %sw.bb227 ], [ %rev.0, %sw.bb226 ], [ %rev.0, %sw.bb225 ], [ %rev.0, %sw.bb224 ], [ %rev.0, %sw.bb223 ], [ %rev.0, %sw.bb222 ], [ %rev.0, %sw.bb221 ], [ %rev.0, %sw.bb219 ], [ %rev.0, %sw.bb217 ], [ %rev.0, %sw.bb216 ], [ %rev.0, %sw.bb214 ], [ %rev.0, %sw.bb213 ], [ %rev.0, %sw.bb212 ], [ %rev.0, %sw.bb211 ], [ %rev.0, %sw.bb206 ], [ %rev.0, %sw.bb354 ], [ %rev.0, %sw.bb357 ], [ %rev.0, %if.end203 ], [ %rev.0, %sw.bb359 ], [ %rev.0, %sw.bb367 ], [ %rev.0, %lor.lhs.false189 ], [ %rev.0, %sw.bb375 ], [ %rev.0, %sw.bb380 ], [ %rev.0, %sw.bb168 ], [ %rev.0, %sw.bb167 ], [ %rev.0, %sw.bb166 ], [ %rev.0, %sw.bb164 ], [ %rev.0, %sw.bb162 ], [ %rev.0, %sw.bb161 ], [ %rev.0, %sw.bb159 ], [ %rev.0, %sw.bb157 ], [ %rev.0, %sw.bb155 ], [ %rev.0, %sw.bb154 ], [ %rev.0, %sw.bb152 ], [ %rev.0, %sw.bb151 ], [ %rev.0, %sw.bb149 ], [ %rev.0, %sw.bb147 ], [ %rev.0, %sw.bb145 ], [ %rev.0, %sw.bb139 ], [ %rev.0, %sw.bb137 ], [ %rev.0, %sw.bb131 ], [ %rev.0, %sw.bb129 ], [ %rev.0, %sw.bb127 ], [ %rev.0, %sw.bb125 ], [ %rev.0, %sw.bb119 ], [ %rev.0, %sw.bb117 ], [ %rev.0, %sw.bb111 ], [ %rev.0, %sw.bb109 ], [ %rev.0, %sw.bb108 ], [ %rev.0, %sw.bb106 ], [ %rev.0, %sw.bb100 ], [ %rev.0, %sw.bb98 ], [ %rev.0, %sw.bb96 ], [ %rev.0, %sw.bb89 ], [ %rev.0, %if.then93 ], [ %rev.0, %sw.bb82 ], [ %rev.0, %if.then86 ], [ %rev.0, %sw.bb79 ], [ %rev.0, %sw.bb78 ], [ %rev.0, %sw.bb75 ], [ %rev.0, %sw.bb65 ], [ %rev.0, %sw.bb55 ], [ %rev.0, %if.then49 ], [ %rev.0, %sw.bb47 ], [ %rev.0, %if.then53 ], [ %rev.0, %sw.bb51 ], [ %rev.0, %sw.bb262 ], [ %rev.0, %for.cond ]
  %naccept.0.be = phi i32 [ %naccept.0, %if.end44 ], [ %naccept.0, %sw.bb341 ], [ %naccept.0, %sw.bb339 ], [ %naccept.0, %sw.bb337 ], [ %naccept.0, %sw.bb335 ], [ %naccept.0, %sw.bb333 ], [ %naccept.0, %sw.bb331 ], [ %naccept.0, %sw.bb329 ], [ %naccept.0, %sw.bb328 ], [ %naccept.0, %sw.bb326 ], [ %naccept.0, %sw.bb321 ], [ %naccept.0, %sw.bb344 ], [ %naccept.0, %sw.bb345 ], [ %naccept.0, %sw.bb315 ], [ %naccept.0, %sw.bb348 ], [ %naccept.0, %sw.bb351 ], [ %naccept.0, %sw.bb311 ], [ %naccept.0, %sw.bb309 ], [ %naccept.0, %sw.bb308 ], [ %naccept.0, %sw.bb307 ], [ %naccept.0, %sw.bb304 ], [ %naccept.0, %sw.bb303 ], [ %naccept.0, %sw.bb381 ], [ %naccept.0, %sw.bb382 ], [ %naccept.0, %sw.bb301 ], [ %naccept.0, %sw.bb299 ], [ %naccept.0, %sw.bb297 ], [ %naccept.0, %sw.bb296 ], [ %naccept.0, %sw.bb295 ], [ %naccept.0, %sw.bb294 ], [ %naccept.0, %sw.bb293 ], [ %naccept.0, %sw.bb292 ], [ %naccept.0, %sw.bb290 ], [ %naccept.0, %sw.bb289 ], [ %naccept.0, %sw.bb288 ], [ %naccept.0, %sw.bb287 ], [ %naccept.0, %sw.bb286 ], [ %naccept.0, %sw.bb280 ], [ %naccept.0, %sw.bb274 ], [ %naccept.0, %sw.bb272 ], [ %naccept.0, %sw.bb260 ], [ %naccept.0, %sw.bb258 ], [ %naccept.0, %sw.bb257 ], [ %naccept.0, %sw.bb256 ], [ %naccept.0, %sw.bb255 ], [ %naccept.0, %sw.bb254 ], [ %naccept.0, %sw.bb253 ], [ %naccept.0, %sw.bb252 ], [ %naccept.0, %sw.bb251 ], [ %naccept.0, %sw.bb250 ], [ %naccept.0, %sw.bb249 ], [ %naccept.0, %sw.bb246 ], [ %naccept.0, %sw.bb245 ], [ %naccept.0, %sw.bb243 ], [ %naccept.0, %sw.bb236 ], [ %naccept.0, %sw.bb234 ], [ %naccept.0, %sw.bb232 ], [ %naccept.0, %sw.bb229 ], [ %naccept.0, %sw.bb228 ], [ %naccept.0, %sw.bb227 ], [ %naccept.0, %sw.bb226 ], [ %naccept.0, %sw.bb225 ], [ %naccept.0, %sw.bb224 ], [ %naccept.0, %sw.bb223 ], [ %naccept.0, %sw.bb222 ], [ %naccept.0, %sw.bb221 ], [ %naccept.0, %sw.bb219 ], [ %naccept.0, %sw.bb217 ], [ %naccept.0, %sw.bb216 ], [ %naccept.0, %sw.bb214 ], [ %naccept.0, %sw.bb213 ], [ %naccept.0, %sw.bb212 ], [ %naccept.0, %sw.bb211 ], [ %naccept.0, %sw.bb206 ], [ %naccept.0, %sw.bb354 ], [ %naccept.0, %sw.bb357 ], [ %naccept.0, %if.end203 ], [ %naccept.0, %sw.bb359 ], [ %naccept.0, %sw.bb367 ], [ %naccept.0, %lor.lhs.false189 ], [ %naccept.0, %sw.bb375 ], [ %naccept.0, %sw.bb380 ], [ %naccept.0, %sw.bb168 ], [ %naccept.0, %sw.bb167 ], [ %naccept.0, %sw.bb166 ], [ %naccept.0, %sw.bb164 ], [ %naccept.0, %sw.bb162 ], [ %naccept.0, %sw.bb161 ], [ %naccept.0, %sw.bb159 ], [ %naccept.0, %sw.bb157 ], [ %naccept.0, %sw.bb155 ], [ %naccept.0, %sw.bb154 ], [ %naccept.0, %sw.bb152 ], [ %naccept.0, %sw.bb151 ], [ %naccept.0, %sw.bb149 ], [ %naccept.0, %sw.bb147 ], [ %naccept.0, %sw.bb145 ], [ %naccept.0, %sw.bb139 ], [ %naccept.0, %sw.bb137 ], [ %naccept.0, %sw.bb131 ], [ %naccept.0, %sw.bb129 ], [ %naccept.0, %sw.bb127 ], [ %naccept.0, %sw.bb125 ], [ %naccept.0, %sw.bb119 ], [ %naccept.0, %sw.bb117 ], [ %naccept.0, %sw.bb111 ], [ %naccept.0, %sw.bb109 ], [ %naccept.0, %sw.bb108 ], [ %naccept.0, %sw.bb106 ], [ %naccept.0, %sw.bb100 ], [ %naccept.0, %sw.bb98 ], [ %naccept.0, %sw.bb96 ], [ %naccept.0, %sw.bb89 ], [ %naccept.0, %if.then93 ], [ %naccept.0, %sw.bb82 ], [ %naccept.0, %if.then86 ], [ %conv, %sw.bb79 ], [ %naccept.0, %sw.bb78 ], [ %naccept.0, %sw.bb75 ], [ %naccept.0, %sw.bb65 ], [ %naccept.0, %sw.bb55 ], [ %naccept.0, %if.then49 ], [ %naccept.0, %sw.bb47 ], [ %naccept.0, %if.then53 ], [ %naccept.0, %sw.bb51 ], [ %naccept.0, %sw.bb262 ], [ %naccept.0, %for.cond ]
  %sdebug.0.be = phi i32 [ %sdebug.0, %if.end44 ], [ %sdebug.0, %sw.bb341 ], [ %sdebug.0, %sw.bb339 ], [ %sdebug.0, %sw.bb337 ], [ %sdebug.0, %sw.bb335 ], [ %sdebug.0, %sw.bb333 ], [ %sdebug.0, %sw.bb331 ], [ %sdebug.0, %sw.bb329 ], [ %sdebug.0, %sw.bb328 ], [ %sdebug.0, %sw.bb326 ], [ %sdebug.0, %sw.bb321 ], [ %sdebug.0, %sw.bb344 ], [ %sdebug.0, %sw.bb345 ], [ %sdebug.0, %sw.bb315 ], [ %sdebug.0, %sw.bb348 ], [ %sdebug.0, %sw.bb351 ], [ %sdebug.0, %sw.bb311 ], [ %sdebug.0, %sw.bb309 ], [ %sdebug.0, %sw.bb308 ], [ %sdebug.0, %sw.bb307 ], [ %sdebug.0, %sw.bb304 ], [ %sdebug.0, %sw.bb303 ], [ %sdebug.0, %sw.bb381 ], [ %sdebug.0, %sw.bb382 ], [ %sdebug.0, %sw.bb301 ], [ %sdebug.0, %sw.bb299 ], [ %sdebug.0, %sw.bb297 ], [ %sdebug.0, %sw.bb296 ], [ %sdebug.0, %sw.bb295 ], [ %sdebug.0, %sw.bb294 ], [ %sdebug.0, %sw.bb293 ], [ %sdebug.0, %sw.bb292 ], [ %sdebug.0, %sw.bb290 ], [ %sdebug.0, %sw.bb289 ], [ %sdebug.0, %sw.bb288 ], [ %sdebug.0, %sw.bb287 ], [ %sdebug.0, %sw.bb286 ], [ %sdebug.0, %sw.bb280 ], [ %sdebug.0, %sw.bb274 ], [ %sdebug.0, %sw.bb272 ], [ %sdebug.0, %sw.bb260 ], [ %sdebug.0, %sw.bb258 ], [ %sdebug.0, %sw.bb257 ], [ %sdebug.0, %sw.bb256 ], [ %sdebug.0, %sw.bb255 ], [ %sdebug.0, %sw.bb254 ], [ %sdebug.0, %sw.bb253 ], [ %sdebug.0, %sw.bb252 ], [ 2, %sw.bb251 ], [ 1, %sw.bb250 ], [ %sdebug.0, %sw.bb249 ], [ %sdebug.0, %sw.bb246 ], [ %sdebug.0, %sw.bb245 ], [ %sdebug.0, %sw.bb243 ], [ %sdebug.0, %sw.bb236 ], [ %sdebug.0, %sw.bb234 ], [ %sdebug.0, %sw.bb232 ], [ %sdebug.0, %sw.bb229 ], [ %sdebug.0, %sw.bb228 ], [ %sdebug.0, %sw.bb227 ], [ %sdebug.0, %sw.bb226 ], [ %sdebug.0, %sw.bb225 ], [ %sdebug.0, %sw.bb224 ], [ %sdebug.0, %sw.bb223 ], [ %sdebug.0, %sw.bb222 ], [ %sdebug.0, %sw.bb221 ], [ %sdebug.0, %sw.bb219 ], [ %sdebug.0, %sw.bb217 ], [ %sdebug.0, %sw.bb216 ], [ %sdebug.0, %sw.bb214 ], [ %sdebug.0, %sw.bb213 ], [ %sdebug.0, %sw.bb212 ], [ %sdebug.0, %sw.bb211 ], [ %sdebug.0, %sw.bb206 ], [ %sdebug.0, %sw.bb354 ], [ %sdebug.0, %sw.bb357 ], [ %sdebug.0, %if.end203 ], [ %sdebug.0, %sw.bb359 ], [ %sdebug.0, %sw.bb367 ], [ %sdebug.0, %lor.lhs.false189 ], [ %sdebug.0, %sw.bb375 ], [ %sdebug.0, %sw.bb380 ], [ %sdebug.0, %sw.bb168 ], [ %sdebug.0, %sw.bb167 ], [ %sdebug.0, %sw.bb166 ], [ %sdebug.0, %sw.bb164 ], [ %sdebug.0, %sw.bb162 ], [ %sdebug.0, %sw.bb161 ], [ %sdebug.0, %sw.bb159 ], [ %sdebug.0, %sw.bb157 ], [ %sdebug.0, %sw.bb155 ], [ %sdebug.0, %sw.bb154 ], [ %sdebug.0, %sw.bb152 ], [ %sdebug.0, %sw.bb151 ], [ %sdebug.0, %sw.bb149 ], [ %sdebug.0, %sw.bb147 ], [ %sdebug.0, %sw.bb145 ], [ %sdebug.0, %sw.bb139 ], [ %sdebug.0, %sw.bb137 ], [ %sdebug.0, %sw.bb131 ], [ %sdebug.0, %sw.bb129 ], [ %sdebug.0, %sw.bb127 ], [ %sdebug.0, %sw.bb125 ], [ %sdebug.0, %sw.bb119 ], [ %sdebug.0, %sw.bb117 ], [ %sdebug.0, %sw.bb111 ], [ %sdebug.0, %sw.bb109 ], [ %sdebug.0, %sw.bb108 ], [ %sdebug.0, %sw.bb106 ], [ %sdebug.0, %sw.bb100 ], [ %sdebug.0, %sw.bb98 ], [ %sdebug.0, %sw.bb96 ], [ %sdebug.0, %sw.bb89 ], [ %sdebug.0, %if.then93 ], [ %sdebug.0, %sw.bb82 ], [ %sdebug.0, %if.then86 ], [ %sdebug.0, %sw.bb79 ], [ %sdebug.0, %sw.bb78 ], [ %sdebug.0, %sw.bb75 ], [ %sdebug.0, %sw.bb65 ], [ %sdebug.0, %sw.bb55 ], [ %sdebug.0, %if.then49 ], [ %sdebug.0, %sw.bb47 ], [ %sdebug.0, %if.then53 ], [ %sdebug.0, %sw.bb51 ], [ %sdebug.0, %sw.bb262 ], [ %sdebug.0, %for.cond ]
  %socket_family.0.be = phi i32 [ %socket_family.0, %if.end44 ], [ %socket_family.0, %sw.bb341 ], [ %socket_family.0, %sw.bb339 ], [ %socket_family.0, %sw.bb337 ], [ %socket_family.0, %sw.bb335 ], [ %socket_family.0, %sw.bb333 ], [ %socket_family.0, %sw.bb331 ], [ %socket_family.0, %sw.bb329 ], [ %socket_family.0, %sw.bb328 ], [ %socket_family.0, %sw.bb326 ], [ %socket_family.0, %sw.bb321 ], [ %socket_family.0, %sw.bb344 ], [ %socket_family.0, %sw.bb345 ], [ %socket_family.0, %sw.bb315 ], [ %socket_family.0, %sw.bb348 ], [ %socket_family.0, %sw.bb351 ], [ %socket_family.0, %sw.bb311 ], [ %socket_family.0, %sw.bb309 ], [ %socket_family.0, %sw.bb308 ], [ %socket_family.0, %sw.bb307 ], [ %socket_family.0, %sw.bb304 ], [ %socket_family.0, %sw.bb303 ], [ %socket_family.0, %sw.bb381 ], [ %socket_family.0, %sw.bb382 ], [ %socket_family.0, %sw.bb301 ], [ %socket_family.0, %sw.bb299 ], [ %socket_family.0, %sw.bb297 ], [ %socket_family.0, %sw.bb296 ], [ %socket_family.0, %sw.bb295 ], [ %socket_family.0, %sw.bb294 ], [ %socket_family.0, %sw.bb293 ], [ %socket_family.0, %sw.bb292 ], [ %socket_family.0, %sw.bb290 ], [ %socket_family.0, %sw.bb289 ], [ %socket_family.0, %sw.bb288 ], [ %socket_family.0, %sw.bb287 ], [ %socket_family.0, %sw.bb286 ], [ %socket_family.0, %sw.bb280 ], [ %socket_family.0, %sw.bb274 ], [ %socket_family.0, %sw.bb272 ], [ %socket_family.0, %sw.bb260 ], [ %socket_family.0, %sw.bb258 ], [ %socket_family.0, %sw.bb257 ], [ %socket_family.0, %sw.bb256 ], [ %socket_family.0, %sw.bb255 ], [ %socket_family.0, %sw.bb254 ], [ %socket_family.0, %sw.bb253 ], [ %socket_family.0, %sw.bb252 ], [ %socket_family.0, %sw.bb251 ], [ %socket_family.0, %sw.bb250 ], [ %socket_family.0, %sw.bb249 ], [ %socket_family.0, %sw.bb246 ], [ %socket_family.0, %sw.bb245 ], [ %socket_family.0, %sw.bb243 ], [ %socket_family.0, %sw.bb236 ], [ %socket_family.0, %sw.bb234 ], [ %socket_family.0, %sw.bb232 ], [ %socket_family.0, %sw.bb229 ], [ %socket_family.0, %sw.bb228 ], [ %socket_family.0, %sw.bb227 ], [ %socket_family.0, %sw.bb226 ], [ %socket_family.0, %sw.bb225 ], [ %socket_family.0, %sw.bb224 ], [ %socket_family.0, %sw.bb223 ], [ %socket_family.0, %sw.bb222 ], [ %socket_family.0, %sw.bb221 ], [ %socket_family.0, %sw.bb219 ], [ %socket_family.0, %sw.bb217 ], [ %socket_family.0, %sw.bb216 ], [ %socket_family.0, %sw.bb214 ], [ %socket_family.0, %sw.bb213 ], [ %socket_family.0, %sw.bb212 ], [ %socket_family.0, %sw.bb211 ], [ %socket_family.0, %sw.bb206 ], [ %socket_family.0, %sw.bb354 ], [ %socket_family.0, %sw.bb357 ], [ %socket_family.0, %if.end203 ], [ %socket_family.0, %sw.bb359 ], [ %socket_family.0, %sw.bb367 ], [ %socket_family.0, %lor.lhs.false189 ], [ %socket_family.0, %sw.bb375 ], [ %socket_family.0, %sw.bb380 ], [ %socket_family.0, %sw.bb168 ], [ %socket_family.0, %sw.bb167 ], [ %socket_family.0, %sw.bb166 ], [ %socket_family.0, %sw.bb164 ], [ %socket_family.0, %sw.bb162 ], [ %socket_family.0, %sw.bb161 ], [ %socket_family.0, %sw.bb159 ], [ %socket_family.0, %sw.bb157 ], [ %socket_family.0, %sw.bb155 ], [ %socket_family.0, %sw.bb154 ], [ %socket_family.0, %sw.bb152 ], [ %socket_family.0, %sw.bb151 ], [ %socket_family.0, %sw.bb149 ], [ %socket_family.0, %sw.bb147 ], [ %socket_family.0, %sw.bb145 ], [ %socket_family.0, %sw.bb139 ], [ %socket_family.0, %sw.bb137 ], [ %socket_family.0, %sw.bb131 ], [ %socket_family.0, %sw.bb129 ], [ %socket_family.0, %sw.bb127 ], [ %socket_family.0, %sw.bb125 ], [ %socket_family.0, %sw.bb119 ], [ %socket_family.0, %sw.bb117 ], [ %socket_family.0, %sw.bb111 ], [ %socket_family.0, %sw.bb109 ], [ %socket_family.0, %sw.bb108 ], [ %socket_family.0, %sw.bb106 ], [ %socket_family.0, %sw.bb100 ], [ %socket_family.0, %sw.bb98 ], [ %socket_family.0, %sw.bb96 ], [ %socket_family.0, %sw.bb89 ], [ %socket_family.0, %if.then93 ], [ %socket_family.0, %sw.bb82 ], [ %socket_family.0, %if.then86 ], [ %socket_family.0, %sw.bb79 ], [ %socket_family.0, %sw.bb78 ], [ 1, %sw.bb75 ], [ %spec.store.select1157, %sw.bb65 ], [ %spec.store.select, %sw.bb55 ], [ 2, %if.then49 ], [ 2, %sw.bb47 ], [ 10, %if.then53 ], [ 10, %sw.bb51 ], [ %socket_family.0, %sw.bb262 ], [ %socket_family.0, %for.cond ]
  %socket_type.0.be = phi i32 [ %socket_type.0, %if.end44 ], [ %socket_type.0, %sw.bb341 ], [ %socket_type.0, %sw.bb339 ], [ %socket_type.0, %sw.bb337 ], [ %socket_type.0, %sw.bb335 ], [ %socket_type.0, %sw.bb333 ], [ %socket_type.0, %sw.bb331 ], [ %socket_type.0, %sw.bb329 ], [ %socket_type.0, %sw.bb328 ], [ %socket_type.0, %sw.bb326 ], [ %socket_type.0, %sw.bb321 ], [ %socket_type.0, %sw.bb344 ], [ %socket_type.0, %sw.bb345 ], [ %socket_type.0, %sw.bb315 ], [ %socket_type.0, %sw.bb348 ], [ %socket_type.0, %sw.bb351 ], [ %socket_type.0, %sw.bb311 ], [ %socket_type.0, %sw.bb309 ], [ %socket_type.0, %sw.bb308 ], [ %socket_type.0, %sw.bb307 ], [ %socket_type.0, %sw.bb304 ], [ %socket_type.0, %sw.bb303 ], [ %socket_type.0, %sw.bb381 ], [ %socket_type.0, %sw.bb382 ], [ 2, %sw.bb301 ], [ 2, %sw.bb299 ], [ 2, %sw.bb297 ], [ %socket_type.0, %sw.bb296 ], [ %socket_type.0, %sw.bb295 ], [ %socket_type.0, %sw.bb294 ], [ %socket_type.0, %sw.bb293 ], [ %socket_type.0, %sw.bb292 ], [ %socket_type.0, %sw.bb290 ], [ %socket_type.0, %sw.bb289 ], [ %socket_type.0, %sw.bb288 ], [ %socket_type.0, %sw.bb287 ], [ %socket_type.0, %sw.bb286 ], [ %socket_type.0, %sw.bb280 ], [ %socket_type.0, %sw.bb274 ], [ %socket_type.0, %sw.bb272 ], [ %socket_type.0, %sw.bb260 ], [ %socket_type.0, %sw.bb258 ], [ %socket_type.0, %sw.bb257 ], [ %socket_type.0, %sw.bb256 ], [ %socket_type.0, %sw.bb255 ], [ %socket_type.0, %sw.bb254 ], [ %socket_type.0, %sw.bb253 ], [ %socket_type.0, %sw.bb252 ], [ %socket_type.0, %sw.bb251 ], [ %socket_type.0, %sw.bb250 ], [ %socket_type.0, %sw.bb249 ], [ %socket_type.0, %sw.bb246 ], [ %socket_type.0, %sw.bb245 ], [ %socket_type.0, %sw.bb243 ], [ %socket_type.0, %sw.bb236 ], [ %socket_type.0, %sw.bb234 ], [ %socket_type.0, %sw.bb232 ], [ %socket_type.0, %sw.bb229 ], [ %socket_type.0, %sw.bb228 ], [ %socket_type.0, %sw.bb227 ], [ %socket_type.0, %sw.bb226 ], [ %socket_type.0, %sw.bb225 ], [ %socket_type.0, %sw.bb224 ], [ %socket_type.0, %sw.bb223 ], [ %socket_type.0, %sw.bb222 ], [ %socket_type.0, %sw.bb221 ], [ %socket_type.0, %sw.bb219 ], [ %socket_type.0, %sw.bb217 ], [ %socket_type.0, %sw.bb216 ], [ %socket_type.0, %sw.bb214 ], [ %socket_type.0, %sw.bb213 ], [ %socket_type.0, %sw.bb212 ], [ %socket_type.0, %sw.bb211 ], [ %socket_type.0, %sw.bb206 ], [ %socket_type.0, %sw.bb354 ], [ %socket_type.0, %sw.bb357 ], [ %socket_type.0, %if.end203 ], [ %socket_type.0, %sw.bb359 ], [ %socket_type.0, %sw.bb367 ], [ %socket_type.0, %lor.lhs.false189 ], [ %socket_type.0, %sw.bb375 ], [ %socket_type.0, %sw.bb380 ], [ %socket_type.0, %sw.bb168 ], [ %socket_type.0, %sw.bb167 ], [ %socket_type.0, %sw.bb166 ], [ %socket_type.0, %sw.bb164 ], [ %socket_type.0, %sw.bb162 ], [ %socket_type.0, %sw.bb161 ], [ %socket_type.0, %sw.bb159 ], [ %socket_type.0, %sw.bb157 ], [ %socket_type.0, %sw.bb155 ], [ %socket_type.0, %sw.bb154 ], [ %socket_type.0, %sw.bb152 ], [ %socket_type.0, %sw.bb151 ], [ %socket_type.0, %sw.bb149 ], [ %socket_type.0, %sw.bb147 ], [ %socket_type.0, %sw.bb145 ], [ %socket_type.0, %sw.bb139 ], [ %socket_type.0, %sw.bb137 ], [ %socket_type.0, %sw.bb131 ], [ %socket_type.0, %sw.bb129 ], [ %socket_type.0, %sw.bb127 ], [ %socket_type.0, %sw.bb125 ], [ %socket_type.0, %sw.bb119 ], [ %socket_type.0, %sw.bb117 ], [ %socket_type.0, %sw.bb111 ], [ %socket_type.0, %sw.bb109 ], [ %socket_type.0, %sw.bb108 ], [ %socket_type.0, %sw.bb106 ], [ %socket_type.0, %sw.bb100 ], [ %socket_type.0, %sw.bb98 ], [ %socket_type.0, %sw.bb96 ], [ %socket_type.0, %sw.bb89 ], [ %socket_type.0, %if.then93 ], [ %socket_type.0, %sw.bb82 ], [ %socket_type.0, %if.then86 ], [ %socket_type.0, %sw.bb79 ], [ %socket_type.0, %sw.bb78 ], [ %socket_type.0, %sw.bb75 ], [ %socket_type.0, %sw.bb65 ], [ %socket_type.0, %sw.bb55 ], [ %socket_type.0, %if.then49 ], [ %socket_type.0, %sw.bb47 ], [ %socket_type.0, %if.then53 ], [ %socket_type.0, %sw.bb51 ], [ %socket_type.0, %sw.bb262 ], [ %socket_type.0, %for.cond ]
  %state.0.be = phi i32 [ %state.0, %if.end44 ], [ %state.0, %sw.bb341 ], [ %state.0, %sw.bb339 ], [ %state.0, %sw.bb337 ], [ %state.0, %sw.bb335 ], [ %state.0, %sw.bb333 ], [ %state.0, %sw.bb331 ], [ %state.0, %sw.bb329 ], [ %state.0, %sw.bb328 ], [ %state.0, %sw.bb326 ], [ %state.0, %sw.bb321 ], [ %state.0, %sw.bb344 ], [ %state.0, %sw.bb345 ], [ %state.0, %sw.bb315 ], [ %state.0, %sw.bb348 ], [ %state.0, %sw.bb351 ], [ %state.0, %sw.bb311 ], [ %state.0, %sw.bb309 ], [ %state.0, %sw.bb308 ], [ %state.0, %sw.bb307 ], [ %state.0, %sw.bb304 ], [ %state.0, %sw.bb303 ], [ %state.0, %sw.bb381 ], [ %state.0, %sw.bb382 ], [ %state.0, %sw.bb301 ], [ %state.0, %sw.bb299 ], [ %state.0, %sw.bb297 ], [ %state.0, %sw.bb296 ], [ %state.0, %sw.bb295 ], [ %state.0, %sw.bb294 ], [ %state.0, %sw.bb293 ], [ %state.0, %sw.bb292 ], [ %state.0, %sw.bb290 ], [ %state.0, %sw.bb289 ], [ %state.0, %sw.bb288 ], [ %state.0, %sw.bb287 ], [ %state.0, %sw.bb286 ], [ %state.0, %sw.bb280 ], [ %state.0, %sw.bb274 ], [ %state.0, %sw.bb272 ], [ %state.0, %sw.bb260 ], [ %state.0, %sw.bb258 ], [ %state.0, %sw.bb257 ], [ %state.0, %sw.bb256 ], [ %state.0, %sw.bb255 ], [ %state.0, %sw.bb254 ], [ %state.0, %sw.bb253 ], [ 1, %sw.bb252 ], [ %state.0, %sw.bb251 ], [ %state.0, %sw.bb250 ], [ %state.0, %sw.bb249 ], [ %state.0, %sw.bb246 ], [ %state.0, %sw.bb245 ], [ %state.0, %sw.bb243 ], [ %state.0, %sw.bb236 ], [ %state.0, %sw.bb234 ], [ %state.0, %sw.bb232 ], [ %state.0, %sw.bb229 ], [ %state.0, %sw.bb228 ], [ %state.0, %sw.bb227 ], [ %state.0, %sw.bb226 ], [ %state.0, %sw.bb225 ], [ %state.0, %sw.bb224 ], [ %state.0, %sw.bb223 ], [ %state.0, %sw.bb222 ], [ %state.0, %sw.bb221 ], [ %state.0, %sw.bb219 ], [ %state.0, %sw.bb217 ], [ %state.0, %sw.bb216 ], [ %state.0, %sw.bb214 ], [ %state.0, %sw.bb213 ], [ %state.0, %sw.bb212 ], [ %state.0, %sw.bb211 ], [ %state.0, %sw.bb206 ], [ %state.0, %sw.bb354 ], [ %state.0, %sw.bb357 ], [ %state.0, %if.end203 ], [ %state.0, %sw.bb359 ], [ %state.0, %sw.bb367 ], [ %state.0, %lor.lhs.false189 ], [ %state.0, %sw.bb375 ], [ %state.0, %sw.bb380 ], [ %state.0, %sw.bb168 ], [ %state.0, %sw.bb167 ], [ %state.0, %sw.bb166 ], [ %state.0, %sw.bb164 ], [ %state.0, %sw.bb162 ], [ %state.0, %sw.bb161 ], [ %state.0, %sw.bb159 ], [ %state.0, %sw.bb157 ], [ %state.0, %sw.bb155 ], [ %state.0, %sw.bb154 ], [ %state.0, %sw.bb152 ], [ %state.0, %sw.bb151 ], [ %state.0, %sw.bb149 ], [ %state.0, %sw.bb147 ], [ %state.0, %sw.bb145 ], [ %state.0, %sw.bb139 ], [ %state.0, %sw.bb137 ], [ %state.0, %sw.bb131 ], [ %state.0, %sw.bb129 ], [ %state.0, %sw.bb127 ], [ %state.0, %sw.bb125 ], [ %state.0, %sw.bb119 ], [ %state.0, %sw.bb117 ], [ %state.0, %sw.bb111 ], [ %state.0, %sw.bb109 ], [ %state.0, %sw.bb108 ], [ %state.0, %sw.bb106 ], [ %state.0, %sw.bb100 ], [ %state.0, %sw.bb98 ], [ %state.0, %sw.bb96 ], [ %state.0, %sw.bb89 ], [ %state.0, %if.then93 ], [ %state.0, %sw.bb82 ], [ %state.0, %if.then86 ], [ %state.0, %sw.bb79 ], [ %state.0, %sw.bb78 ], [ %state.0, %sw.bb75 ], [ %state.0, %sw.bb65 ], [ %state.0, %sw.bb55 ], [ %state.0, %if.then49 ], [ %state.0, %sw.bb47 ], [ %state.0, %if.then53 ], [ %state.0, %sw.bb51 ], [ %state.0, %sw.bb262 ], [ %state.0, %for.cond ]
  %crl_download.0.be = phi i32 [ %crl_download.0, %if.end44 ], [ %crl_download.0, %sw.bb341 ], [ %crl_download.0, %sw.bb339 ], [ %crl_download.0, %sw.bb337 ], [ %crl_download.0, %sw.bb335 ], [ %crl_download.0, %sw.bb333 ], [ %crl_download.0, %sw.bb331 ], [ %crl_download.0, %sw.bb329 ], [ %crl_download.0, %sw.bb328 ], [ %crl_download.0, %sw.bb326 ], [ %crl_download.0, %sw.bb321 ], [ %crl_download.0, %sw.bb344 ], [ %crl_download.0, %sw.bb345 ], [ %crl_download.0, %sw.bb315 ], [ %crl_download.0, %sw.bb348 ], [ %crl_download.0, %sw.bb351 ], [ %crl_download.0, %sw.bb311 ], [ %crl_download.0, %sw.bb309 ], [ %crl_download.0, %sw.bb308 ], [ %crl_download.0, %sw.bb307 ], [ %crl_download.0, %sw.bb304 ], [ %crl_download.0, %sw.bb303 ], [ %crl_download.0, %sw.bb381 ], [ %crl_download.0, %sw.bb382 ], [ %crl_download.0, %sw.bb301 ], [ %crl_download.0, %sw.bb299 ], [ %crl_download.0, %sw.bb297 ], [ %crl_download.0, %sw.bb296 ], [ %crl_download.0, %sw.bb295 ], [ %crl_download.0, %sw.bb294 ], [ %crl_download.0, %sw.bb293 ], [ %crl_download.0, %sw.bb292 ], [ %crl_download.0, %sw.bb290 ], [ %crl_download.0, %sw.bb289 ], [ %crl_download.0, %sw.bb288 ], [ %crl_download.0, %sw.bb287 ], [ %crl_download.0, %sw.bb286 ], [ %crl_download.0, %sw.bb280 ], [ %crl_download.0, %sw.bb274 ], [ %crl_download.0, %sw.bb272 ], [ %crl_download.0, %sw.bb260 ], [ %crl_download.0, %sw.bb258 ], [ %crl_download.0, %sw.bb257 ], [ %crl_download.0, %sw.bb256 ], [ %crl_download.0, %sw.bb255 ], [ %crl_download.0, %sw.bb254 ], [ %crl_download.0, %sw.bb253 ], [ %crl_download.0, %sw.bb252 ], [ %crl_download.0, %sw.bb251 ], [ %crl_download.0, %sw.bb250 ], [ %crl_download.0, %sw.bb249 ], [ %crl_download.0, %sw.bb246 ], [ %crl_download.0, %sw.bb245 ], [ %crl_download.0, %sw.bb243 ], [ %crl_download.0, %sw.bb236 ], [ %crl_download.0, %sw.bb234 ], [ %crl_download.0, %sw.bb232 ], [ %crl_download.0, %sw.bb229 ], [ %crl_download.0, %sw.bb228 ], [ %crl_download.0, %sw.bb227 ], [ %crl_download.0, %sw.bb226 ], [ %crl_download.0, %sw.bb225 ], [ %crl_download.0, %sw.bb224 ], [ %crl_download.0, %sw.bb223 ], [ %crl_download.0, %sw.bb222 ], [ %crl_download.0, %sw.bb221 ], [ %crl_download.0, %sw.bb219 ], [ %crl_download.0, %sw.bb217 ], [ %crl_download.0, %sw.bb216 ], [ %crl_download.0, %sw.bb214 ], [ %crl_download.0, %sw.bb213 ], [ %crl_download.0, %sw.bb212 ], [ %crl_download.0, %sw.bb211 ], [ %crl_download.0, %sw.bb206 ], [ %crl_download.0, %sw.bb354 ], [ %crl_download.0, %sw.bb357 ], [ %crl_download.0, %if.end203 ], [ %crl_download.0, %sw.bb359 ], [ %crl_download.0, %sw.bb367 ], [ %crl_download.0, %lor.lhs.false189 ], [ %crl_download.0, %sw.bb375 ], [ %crl_download.0, %sw.bb380 ], [ %crl_download.0, %sw.bb168 ], [ %crl_download.0, %sw.bb167 ], [ %crl_download.0, %sw.bb166 ], [ %crl_download.0, %sw.bb164 ], [ %crl_download.0, %sw.bb162 ], [ %crl_download.0, %sw.bb161 ], [ %crl_download.0, %sw.bb159 ], [ %crl_download.0, %sw.bb157 ], [ %crl_download.0, %sw.bb155 ], [ %crl_download.0, %sw.bb154 ], [ %crl_download.0, %sw.bb152 ], [ %crl_download.0, %sw.bb151 ], [ %crl_download.0, %sw.bb149 ], [ %crl_download.0, %sw.bb147 ], [ %crl_download.0, %sw.bb145 ], [ %crl_download.0, %sw.bb139 ], [ %crl_download.0, %sw.bb137 ], [ %crl_download.0, %sw.bb131 ], [ %crl_download.0, %sw.bb129 ], [ %crl_download.0, %sw.bb127 ], [ %crl_download.0, %sw.bb125 ], [ %crl_download.0, %sw.bb119 ], [ %crl_download.0, %sw.bb117 ], [ %crl_download.0, %sw.bb111 ], [ %crl_download.0, %sw.bb109 ], [ 1, %sw.bb108 ], [ %crl_download.0, %sw.bb106 ], [ %crl_download.0, %sw.bb100 ], [ %crl_download.0, %sw.bb98 ], [ %crl_download.0, %sw.bb96 ], [ %crl_download.0, %sw.bb89 ], [ %crl_download.0, %if.then93 ], [ %crl_download.0, %sw.bb82 ], [ %crl_download.0, %if.then86 ], [ %crl_download.0, %sw.bb79 ], [ %crl_download.0, %sw.bb78 ], [ %crl_download.0, %sw.bb75 ], [ %crl_download.0, %sw.bb65 ], [ %crl_download.0, %sw.bb55 ], [ %crl_download.0, %if.then49 ], [ %crl_download.0, %sw.bb47 ], [ %crl_download.0, %if.then53 ], [ %crl_download.0, %sw.bb51 ], [ %crl_download.0, %sw.bb262 ], [ %crl_download.0, %for.cond ]
  %context.0.be = phi i8* [ %context.0, %if.end44 ], [ %context.0, %sw.bb341 ], [ %context.0, %sw.bb339 ], [ %context.0, %sw.bb337 ], [ %context.0, %sw.bb335 ], [ %context.0, %sw.bb333 ], [ %context.0, %sw.bb331 ], [ %context.0, %sw.bb329 ], [ %context.0, %sw.bb328 ], [ %context.0, %sw.bb326 ], [ %context.0, %sw.bb321 ], [ %context.0, %sw.bb344 ], [ %context.0, %sw.bb345 ], [ %context.0, %sw.bb315 ], [ %context.0, %sw.bb348 ], [ %context.0, %sw.bb351 ], [ %context.0, %sw.bb311 ], [ %context.0, %sw.bb309 ], [ %context.0, %sw.bb308 ], [ %context.0, %sw.bb307 ], [ %context.0, %sw.bb304 ], [ %context.0, %sw.bb303 ], [ %context.0, %sw.bb381 ], [ %context.0, %sw.bb382 ], [ %context.0, %sw.bb301 ], [ %context.0, %sw.bb299 ], [ %context.0, %sw.bb297 ], [ %context.0, %sw.bb296 ], [ %context.0, %sw.bb295 ], [ %context.0, %sw.bb294 ], [ %context.0, %sw.bb293 ], [ %context.0, %sw.bb292 ], [ %context.0, %sw.bb290 ], [ %context.0, %sw.bb289 ], [ %context.0, %sw.bb288 ], [ %context.0, %sw.bb287 ], [ %context.0, %sw.bb286 ], [ %context.0, %sw.bb280 ], [ %context.0, %sw.bb274 ], [ %context.0, %sw.bb272 ], [ %context.0, %sw.bb260 ], [ %context.0, %sw.bb258 ], [ %context.0, %sw.bb257 ], [ %context.0, %sw.bb256 ], [ %context.0, %sw.bb255 ], [ %context.0, %sw.bb254 ], [ %context.0, %sw.bb253 ], [ %context.0, %sw.bb252 ], [ %context.0, %sw.bb251 ], [ %context.0, %sw.bb250 ], [ %context.0, %sw.bb249 ], [ %context.0, %sw.bb246 ], [ %context.0, %sw.bb245 ], [ %context.0, %sw.bb243 ], [ %context.0, %sw.bb236 ], [ %context.0, %sw.bb234 ], [ %context.0, %sw.bb232 ], [ %context.0, %sw.bb229 ], [ %context.0, %sw.bb228 ], [ %context.0, %sw.bb227 ], [ %context.0, %sw.bb226 ], [ %context.0, %sw.bb225 ], [ %context.0, %sw.bb224 ], [ %context.0, %sw.bb223 ], [ %context.0, %sw.bb222 ], [ %context.0, %sw.bb221 ], [ %context.0, %sw.bb219 ], [ %context.0, %sw.bb217 ], [ %context.0, %sw.bb216 ], [ %context.0, %sw.bb214 ], [ %context.0, %sw.bb213 ], [ %context.0, %sw.bb212 ], [ %context.0, %sw.bb211 ], [ %context.0, %sw.bb206 ], [ %context.0, %sw.bb354 ], [ %context.0, %sw.bb357 ], [ %context.0, %if.end203 ], [ %context.0, %sw.bb359 ], [ %context.0, %sw.bb367 ], [ %context.0, %lor.lhs.false189 ], [ %context.0, %sw.bb375 ], [ %context.0, %sw.bb380 ], [ %context.0, %sw.bb168 ], [ %context.0, %sw.bb167 ], [ %context.0, %sw.bb166 ], [ %context.0, %sw.bb164 ], [ %context.0, %sw.bb162 ], [ %context.0, %sw.bb161 ], [ %context.0, %sw.bb159 ], [ %context.0, %sw.bb157 ], [ %context.0, %sw.bb155 ], [ %context.0, %sw.bb154 ], [ %context.0, %sw.bb152 ], [ %context.0, %sw.bb151 ], [ %context.0, %sw.bb149 ], [ %context.0, %sw.bb147 ], [ %context.0, %sw.bb145 ], [ %context.0, %sw.bb139 ], [ %context.0, %sw.bb137 ], [ %context.0, %sw.bb131 ], [ %context.0, %sw.bb129 ], [ %context.0, %sw.bb127 ], [ %context.0, %sw.bb125 ], [ %context.0, %sw.bb119 ], [ %context.0, %sw.bb117 ], [ %context.0, %sw.bb111 ], [ %context.0, %sw.bb109 ], [ %context.0, %sw.bb108 ], [ %context.0, %sw.bb106 ], [ %context.0, %sw.bb100 ], [ %context.0, %sw.bb98 ], [ %call97, %sw.bb96 ], [ %context.0, %sw.bb89 ], [ %context.0, %if.then93 ], [ %context.0, %sw.bb82 ], [ %context.0, %if.then86 ], [ %context.0, %sw.bb79 ], [ %context.0, %sw.bb78 ], [ %context.0, %sw.bb75 ], [ %context.0, %sw.bb65 ], [ %context.0, %sw.bb55 ], [ %context.0, %if.then49 ], [ %context.0, %sw.bb47 ], [ %context.0, %if.then53 ], [ %context.0, %sw.bb51 ], [ %context.0, %sw.bb262 ], [ %context.0, %for.cond ]
  %ssl_config.0.be = phi i8* [ %ssl_config.0, %if.end44 ], [ %ssl_config.0, %sw.bb341 ], [ %ssl_config.0, %sw.bb339 ], [ %ssl_config.0, %sw.bb337 ], [ %ssl_config.0, %sw.bb335 ], [ %ssl_config.0, %sw.bb333 ], [ %ssl_config.0, %sw.bb331 ], [ %ssl_config.0, %sw.bb329 ], [ %ssl_config.0, %sw.bb328 ], [ %ssl_config.0, %sw.bb326 ], [ %ssl_config.0, %sw.bb321 ], [ %ssl_config.0, %sw.bb344 ], [ %ssl_config.0, %sw.bb345 ], [ %ssl_config.0, %sw.bb315 ], [ %ssl_config.0, %sw.bb348 ], [ %ssl_config.0, %sw.bb351 ], [ %ssl_config.0, %sw.bb311 ], [ %ssl_config.0, %sw.bb309 ], [ %ssl_config.0, %sw.bb308 ], [ %ssl_config.0, %sw.bb307 ], [ %ssl_config.0, %sw.bb304 ], [ %ssl_config.0, %sw.bb303 ], [ %ssl_config.0, %sw.bb381 ], [ %ssl_config.0, %sw.bb382 ], [ %ssl_config.0, %sw.bb301 ], [ %ssl_config.0, %sw.bb299 ], [ %ssl_config.0, %sw.bb297 ], [ %ssl_config.0, %sw.bb296 ], [ %ssl_config.0, %sw.bb295 ], [ %ssl_config.0, %sw.bb294 ], [ %ssl_config.0, %sw.bb293 ], [ %ssl_config.0, %sw.bb292 ], [ %call291, %sw.bb290 ], [ %ssl_config.0, %sw.bb289 ], [ %ssl_config.0, %sw.bb288 ], [ %ssl_config.0, %sw.bb287 ], [ %ssl_config.0, %sw.bb286 ], [ %ssl_config.0, %sw.bb280 ], [ %ssl_config.0, %sw.bb274 ], [ %ssl_config.0, %sw.bb272 ], [ %ssl_config.0, %sw.bb260 ], [ %ssl_config.0, %sw.bb258 ], [ %ssl_config.0, %sw.bb257 ], [ %ssl_config.0, %sw.bb256 ], [ %ssl_config.0, %sw.bb255 ], [ %ssl_config.0, %sw.bb254 ], [ %ssl_config.0, %sw.bb253 ], [ %ssl_config.0, %sw.bb252 ], [ %ssl_config.0, %sw.bb251 ], [ %ssl_config.0, %sw.bb250 ], [ %ssl_config.0, %sw.bb249 ], [ %ssl_config.0, %sw.bb246 ], [ %ssl_config.0, %sw.bb245 ], [ %ssl_config.0, %sw.bb243 ], [ %ssl_config.0, %sw.bb236 ], [ %ssl_config.0, %sw.bb234 ], [ %ssl_config.0, %sw.bb232 ], [ %ssl_config.0, %sw.bb229 ], [ %ssl_config.0, %sw.bb228 ], [ %ssl_config.0, %sw.bb227 ], [ %ssl_config.0, %sw.bb226 ], [ %ssl_config.0, %sw.bb225 ], [ %ssl_config.0, %sw.bb224 ], [ %ssl_config.0, %sw.bb223 ], [ %ssl_config.0, %sw.bb222 ], [ %ssl_config.0, %sw.bb221 ], [ %ssl_config.0, %sw.bb219 ], [ %ssl_config.0, %sw.bb217 ], [ %ssl_config.0, %sw.bb216 ], [ %ssl_config.0, %sw.bb214 ], [ %ssl_config.0, %sw.bb213 ], [ %ssl_config.0, %sw.bb212 ], [ %ssl_config.0, %sw.bb211 ], [ %ssl_config.0, %sw.bb206 ], [ %ssl_config.0, %sw.bb354 ], [ %ssl_config.0, %sw.bb357 ], [ %ssl_config.0, %if.end203 ], [ %ssl_config.0, %sw.bb359 ], [ %ssl_config.0, %sw.bb367 ], [ %ssl_config.0, %lor.lhs.false189 ], [ %ssl_config.0, %sw.bb375 ], [ %ssl_config.0, %sw.bb380 ], [ %ssl_config.0, %sw.bb168 ], [ %ssl_config.0, %sw.bb167 ], [ %ssl_config.0, %sw.bb166 ], [ %ssl_config.0, %sw.bb164 ], [ %ssl_config.0, %sw.bb162 ], [ %ssl_config.0, %sw.bb161 ], [ %ssl_config.0, %sw.bb159 ], [ %ssl_config.0, %sw.bb157 ], [ %ssl_config.0, %sw.bb155 ], [ %ssl_config.0, %sw.bb154 ], [ %ssl_config.0, %sw.bb152 ], [ %ssl_config.0, %sw.bb151 ], [ %ssl_config.0, %sw.bb149 ], [ %ssl_config.0, %sw.bb147 ], [ %ssl_config.0, %sw.bb145 ], [ %ssl_config.0, %sw.bb139 ], [ %ssl_config.0, %sw.bb137 ], [ %ssl_config.0, %sw.bb131 ], [ %ssl_config.0, %sw.bb129 ], [ %ssl_config.0, %sw.bb127 ], [ %ssl_config.0, %sw.bb125 ], [ %ssl_config.0, %sw.bb119 ], [ %ssl_config.0, %sw.bb117 ], [ %ssl_config.0, %sw.bb111 ], [ %ssl_config.0, %sw.bb109 ], [ %ssl_config.0, %sw.bb108 ], [ %ssl_config.0, %sw.bb106 ], [ %ssl_config.0, %sw.bb100 ], [ %ssl_config.0, %sw.bb98 ], [ %ssl_config.0, %sw.bb96 ], [ %ssl_config.0, %sw.bb89 ], [ %ssl_config.0, %if.then93 ], [ %ssl_config.0, %sw.bb82 ], [ %ssl_config.0, %if.then86 ], [ %ssl_config.0, %sw.bb79 ], [ %ssl_config.0, %sw.bb78 ], [ %ssl_config.0, %sw.bb75 ], [ %ssl_config.0, %sw.bb65 ], [ %ssl_config.0, %sw.bb55 ], [ %ssl_config.0, %if.then49 ], [ %ssl_config.0, %sw.bb47 ], [ %ssl_config.0, %if.then53 ], [ %ssl_config.0, %sw.bb51 ], [ %ssl_config.0, %sw.bb262 ], [ %ssl_config.0, %for.cond ]
  %read_buf_len.0.be = phi i32 [ %read_buf_len.0, %if.end44 ], [ %read_buf_len.0, %sw.bb341 ], [ %read_buf_len.0, %sw.bb339 ], [ %read_buf_len.0, %sw.bb337 ], [ %read_buf_len.0, %sw.bb335 ], [ %read_buf_len.0, %sw.bb333 ], [ %read_buf_len.0, %sw.bb331 ], [ %read_buf_len.0, %sw.bb329 ], [ %read_buf_len.0, %sw.bb328 ], [ %read_buf_len.0, %sw.bb326 ], [ %read_buf_len.0, %sw.bb321 ], [ %read_buf_len.0, %sw.bb344 ], [ %read_buf_len.0, %sw.bb345 ], [ %read_buf_len.0, %sw.bb315 ], [ %read_buf_len.0, %sw.bb348 ], [ %read_buf_len.0, %sw.bb351 ], [ %read_buf_len.0, %sw.bb311 ], [ %read_buf_len.0, %sw.bb309 ], [ %read_buf_len.0, %sw.bb308 ], [ %read_buf_len.0, %sw.bb307 ], [ %read_buf_len.0, %sw.bb304 ], [ %read_buf_len.0, %sw.bb303 ], [ %read_buf_len.0, %sw.bb381 ], [ %read_buf_len.0, %sw.bb382 ], [ %read_buf_len.0, %sw.bb301 ], [ %read_buf_len.0, %sw.bb299 ], [ %read_buf_len.0, %sw.bb297 ], [ %read_buf_len.0, %sw.bb296 ], [ %read_buf_len.0, %sw.bb295 ], [ %read_buf_len.0, %sw.bb294 ], [ %read_buf_len.0, %sw.bb293 ], [ %read_buf_len.0, %sw.bb292 ], [ %read_buf_len.0, %sw.bb290 ], [ %read_buf_len.0, %sw.bb289 ], [ %read_buf_len.0, %sw.bb288 ], [ %read_buf_len.0, %sw.bb287 ], [ %read_buf_len.0, %sw.bb286 ], [ %read_buf_len.0, %sw.bb280 ], [ %read_buf_len.0, %sw.bb274 ], [ %read_buf_len.0, %sw.bb272 ], [ %read_buf_len.0, %sw.bb260 ], [ %read_buf_len.0, %sw.bb258 ], [ %read_buf_len.0, %sw.bb257 ], [ %read_buf_len.0, %sw.bb256 ], [ %read_buf_len.0, %sw.bb255 ], [ %read_buf_len.0, %sw.bb254 ], [ %read_buf_len.0, %sw.bb253 ], [ %read_buf_len.0, %sw.bb252 ], [ %read_buf_len.0, %sw.bb251 ], [ %read_buf_len.0, %sw.bb250 ], [ %read_buf_len.0, %sw.bb249 ], [ %read_buf_len.0, %sw.bb246 ], [ %read_buf_len.0, %sw.bb245 ], [ %read_buf_len.0, %sw.bb243 ], [ %read_buf_len.0, %sw.bb236 ], [ %read_buf_len.0, %sw.bb234 ], [ %read_buf_len.0, %sw.bb232 ], [ %read_buf_len.0, %sw.bb229 ], [ %read_buf_len.0, %sw.bb228 ], [ %read_buf_len.0, %sw.bb227 ], [ %read_buf_len.0, %sw.bb226 ], [ %read_buf_len.0, %sw.bb225 ], [ %read_buf_len.0, %sw.bb224 ], [ %read_buf_len.0, %sw.bb223 ], [ %read_buf_len.0, %sw.bb222 ], [ %read_buf_len.0, %sw.bb221 ], [ %read_buf_len.0, %sw.bb219 ], [ %read_buf_len.0, %sw.bb217 ], [ %read_buf_len.0, %sw.bb216 ], [ %read_buf_len.0, %sw.bb214 ], [ %read_buf_len.0, %sw.bb213 ], [ %read_buf_len.0, %sw.bb212 ], [ %read_buf_len.0, %sw.bb211 ], [ %read_buf_len.0, %sw.bb206 ], [ %call356, %sw.bb354 ], [ %read_buf_len.0, %sw.bb357 ], [ %read_buf_len.0, %if.end203 ], [ %read_buf_len.0, %sw.bb359 ], [ %read_buf_len.0, %sw.bb367 ], [ %read_buf_len.0, %lor.lhs.false189 ], [ %read_buf_len.0, %sw.bb375 ], [ %read_buf_len.0, %sw.bb380 ], [ %read_buf_len.0, %sw.bb168 ], [ %read_buf_len.0, %sw.bb167 ], [ %read_buf_len.0, %sw.bb166 ], [ %read_buf_len.0, %sw.bb164 ], [ %read_buf_len.0, %sw.bb162 ], [ %read_buf_len.0, %sw.bb161 ], [ %read_buf_len.0, %sw.bb159 ], [ %read_buf_len.0, %sw.bb157 ], [ %read_buf_len.0, %sw.bb155 ], [ %read_buf_len.0, %sw.bb154 ], [ %read_buf_len.0, %sw.bb152 ], [ %read_buf_len.0, %sw.bb151 ], [ %read_buf_len.0, %sw.bb149 ], [ %read_buf_len.0, %sw.bb147 ], [ %read_buf_len.0, %sw.bb145 ], [ %read_buf_len.0, %sw.bb139 ], [ %read_buf_len.0, %sw.bb137 ], [ %read_buf_len.0, %sw.bb131 ], [ %read_buf_len.0, %sw.bb129 ], [ %read_buf_len.0, %sw.bb127 ], [ %read_buf_len.0, %sw.bb125 ], [ %read_buf_len.0, %sw.bb119 ], [ %read_buf_len.0, %sw.bb117 ], [ %read_buf_len.0, %sw.bb111 ], [ %read_buf_len.0, %sw.bb109 ], [ %read_buf_len.0, %sw.bb108 ], [ %read_buf_len.0, %sw.bb106 ], [ %read_buf_len.0, %sw.bb100 ], [ %read_buf_len.0, %sw.bb98 ], [ %read_buf_len.0, %sw.bb96 ], [ %read_buf_len.0, %sw.bb89 ], [ %read_buf_len.0, %if.then93 ], [ %read_buf_len.0, %sw.bb82 ], [ %read_buf_len.0, %if.then86 ], [ %read_buf_len.0, %sw.bb79 ], [ %read_buf_len.0, %sw.bb78 ], [ %read_buf_len.0, %sw.bb75 ], [ %read_buf_len.0, %sw.bb65 ], [ %read_buf_len.0, %sw.bb55 ], [ %read_buf_len.0, %if.then49 ], [ %read_buf_len.0, %sw.bb47 ], [ %read_buf_len.0, %if.then53 ], [ %read_buf_len.0, %sw.bb51 ], [ %read_buf_len.0, %sw.bb262 ], [ %read_buf_len.0, %for.cond ]
  %next_proto_neg_in.0.be = phi i8* [ %next_proto_neg_in.0, %if.end44 ], [ %next_proto_neg_in.0, %sw.bb341 ], [ %next_proto_neg_in.0, %sw.bb339 ], [ %next_proto_neg_in.0, %sw.bb337 ], [ %next_proto_neg_in.0, %sw.bb335 ], [ %call334, %sw.bb333 ], [ %next_proto_neg_in.0, %sw.bb331 ], [ %next_proto_neg_in.0, %sw.bb329 ], [ %next_proto_neg_in.0, %sw.bb328 ], [ %next_proto_neg_in.0, %sw.bb326 ], [ %next_proto_neg_in.0, %sw.bb321 ], [ %next_proto_neg_in.0, %sw.bb344 ], [ %next_proto_neg_in.0, %sw.bb345 ], [ %next_proto_neg_in.0, %sw.bb315 ], [ %next_proto_neg_in.0, %sw.bb348 ], [ %next_proto_neg_in.0, %sw.bb351 ], [ %next_proto_neg_in.0, %sw.bb311 ], [ %next_proto_neg_in.0, %sw.bb309 ], [ %next_proto_neg_in.0, %sw.bb308 ], [ %next_proto_neg_in.0, %sw.bb307 ], [ %next_proto_neg_in.0, %sw.bb304 ], [ %next_proto_neg_in.0, %sw.bb303 ], [ %next_proto_neg_in.0, %sw.bb381 ], [ %next_proto_neg_in.0, %sw.bb382 ], [ %next_proto_neg_in.0, %sw.bb301 ], [ %next_proto_neg_in.0, %sw.bb299 ], [ %next_proto_neg_in.0, %sw.bb297 ], [ %next_proto_neg_in.0, %sw.bb296 ], [ %next_proto_neg_in.0, %sw.bb295 ], [ %next_proto_neg_in.0, %sw.bb294 ], [ %next_proto_neg_in.0, %sw.bb293 ], [ %next_proto_neg_in.0, %sw.bb292 ], [ %next_proto_neg_in.0, %sw.bb290 ], [ %next_proto_neg_in.0, %sw.bb289 ], [ %next_proto_neg_in.0, %sw.bb288 ], [ %next_proto_neg_in.0, %sw.bb287 ], [ %next_proto_neg_in.0, %sw.bb286 ], [ %next_proto_neg_in.0, %sw.bb280 ], [ %next_proto_neg_in.0, %sw.bb274 ], [ %next_proto_neg_in.0, %sw.bb272 ], [ %next_proto_neg_in.0, %sw.bb260 ], [ %next_proto_neg_in.0, %sw.bb258 ], [ %next_proto_neg_in.0, %sw.bb257 ], [ %next_proto_neg_in.0, %sw.bb256 ], [ %next_proto_neg_in.0, %sw.bb255 ], [ %next_proto_neg_in.0, %sw.bb254 ], [ %next_proto_neg_in.0, %sw.bb253 ], [ %next_proto_neg_in.0, %sw.bb252 ], [ %next_proto_neg_in.0, %sw.bb251 ], [ %next_proto_neg_in.0, %sw.bb250 ], [ %next_proto_neg_in.0, %sw.bb249 ], [ %next_proto_neg_in.0, %sw.bb246 ], [ %next_proto_neg_in.0, %sw.bb245 ], [ %next_proto_neg_in.0, %sw.bb243 ], [ %next_proto_neg_in.0, %sw.bb236 ], [ %next_proto_neg_in.0, %sw.bb234 ], [ %next_proto_neg_in.0, %sw.bb232 ], [ %next_proto_neg_in.0, %sw.bb229 ], [ %next_proto_neg_in.0, %sw.bb228 ], [ %next_proto_neg_in.0, %sw.bb227 ], [ %next_proto_neg_in.0, %sw.bb226 ], [ %next_proto_neg_in.0, %sw.bb225 ], [ %next_proto_neg_in.0, %sw.bb224 ], [ %next_proto_neg_in.0, %sw.bb223 ], [ %next_proto_neg_in.0, %sw.bb222 ], [ %next_proto_neg_in.0, %sw.bb221 ], [ %next_proto_neg_in.0, %sw.bb219 ], [ %next_proto_neg_in.0, %sw.bb217 ], [ %next_proto_neg_in.0, %sw.bb216 ], [ %next_proto_neg_in.0, %sw.bb214 ], [ %next_proto_neg_in.0, %sw.bb213 ], [ %next_proto_neg_in.0, %sw.bb212 ], [ %next_proto_neg_in.0, %sw.bb211 ], [ %next_proto_neg_in.0, %sw.bb206 ], [ %next_proto_neg_in.0, %sw.bb354 ], [ %next_proto_neg_in.0, %sw.bb357 ], [ %next_proto_neg_in.0, %if.end203 ], [ %next_proto_neg_in.0, %sw.bb359 ], [ %next_proto_neg_in.0, %sw.bb367 ], [ %next_proto_neg_in.0, %lor.lhs.false189 ], [ %next_proto_neg_in.0, %sw.bb375 ], [ %next_proto_neg_in.0, %sw.bb380 ], [ %next_proto_neg_in.0, %sw.bb168 ], [ %next_proto_neg_in.0, %sw.bb167 ], [ %next_proto_neg_in.0, %sw.bb166 ], [ %next_proto_neg_in.0, %sw.bb164 ], [ %next_proto_neg_in.0, %sw.bb162 ], [ %next_proto_neg_in.0, %sw.bb161 ], [ %next_proto_neg_in.0, %sw.bb159 ], [ %next_proto_neg_in.0, %sw.bb157 ], [ %next_proto_neg_in.0, %sw.bb155 ], [ %next_proto_neg_in.0, %sw.bb154 ], [ %next_proto_neg_in.0, %sw.bb152 ], [ %next_proto_neg_in.0, %sw.bb151 ], [ %next_proto_neg_in.0, %sw.bb149 ], [ %next_proto_neg_in.0, %sw.bb147 ], [ %next_proto_neg_in.0, %sw.bb145 ], [ %next_proto_neg_in.0, %sw.bb139 ], [ %next_proto_neg_in.0, %sw.bb137 ], [ %next_proto_neg_in.0, %sw.bb131 ], [ %next_proto_neg_in.0, %sw.bb129 ], [ %next_proto_neg_in.0, %sw.bb127 ], [ %next_proto_neg_in.0, %sw.bb125 ], [ %next_proto_neg_in.0, %sw.bb119 ], [ %next_proto_neg_in.0, %sw.bb117 ], [ %next_proto_neg_in.0, %sw.bb111 ], [ %next_proto_neg_in.0, %sw.bb109 ], [ %next_proto_neg_in.0, %sw.bb108 ], [ %next_proto_neg_in.0, %sw.bb106 ], [ %next_proto_neg_in.0, %sw.bb100 ], [ %next_proto_neg_in.0, %sw.bb98 ], [ %next_proto_neg_in.0, %sw.bb96 ], [ %next_proto_neg_in.0, %sw.bb89 ], [ %next_proto_neg_in.0, %if.then93 ], [ %next_proto_neg_in.0, %sw.bb82 ], [ %next_proto_neg_in.0, %if.then86 ], [ %next_proto_neg_in.0, %sw.bb79 ], [ %next_proto_neg_in.0, %sw.bb78 ], [ %next_proto_neg_in.0, %sw.bb75 ], [ %next_proto_neg_in.0, %sw.bb65 ], [ %next_proto_neg_in.0, %sw.bb55 ], [ %next_proto_neg_in.0, %if.then49 ], [ %next_proto_neg_in.0, %sw.bb47 ], [ %next_proto_neg_in.0, %if.then53 ], [ %next_proto_neg_in.0, %sw.bb51 ], [ %next_proto_neg_in.0, %sw.bb262 ], [ %next_proto_neg_in.0, %for.cond ]
  %alpn_in.0.be = phi i8* [ %alpn_in.0, %if.end44 ], [ %alpn_in.0, %sw.bb341 ], [ %alpn_in.0, %sw.bb339 ], [ %alpn_in.0, %sw.bb337 ], [ %call336, %sw.bb335 ], [ %alpn_in.0, %sw.bb333 ], [ %alpn_in.0, %sw.bb331 ], [ %alpn_in.0, %sw.bb329 ], [ %alpn_in.0, %sw.bb328 ], [ %alpn_in.0, %sw.bb326 ], [ %alpn_in.0, %sw.bb321 ], [ %alpn_in.0, %sw.bb344 ], [ %alpn_in.0, %sw.bb345 ], [ %alpn_in.0, %sw.bb315 ], [ %alpn_in.0, %sw.bb348 ], [ %alpn_in.0, %sw.bb351 ], [ %alpn_in.0, %sw.bb311 ], [ %alpn_in.0, %sw.bb309 ], [ %alpn_in.0, %sw.bb308 ], [ %alpn_in.0, %sw.bb307 ], [ %alpn_in.0, %sw.bb304 ], [ %alpn_in.0, %sw.bb303 ], [ %alpn_in.0, %sw.bb381 ], [ %alpn_in.0, %sw.bb382 ], [ %alpn_in.0, %sw.bb301 ], [ %alpn_in.0, %sw.bb299 ], [ %alpn_in.0, %sw.bb297 ], [ %alpn_in.0, %sw.bb296 ], [ %alpn_in.0, %sw.bb295 ], [ %alpn_in.0, %sw.bb294 ], [ %alpn_in.0, %sw.bb293 ], [ %alpn_in.0, %sw.bb292 ], [ %alpn_in.0, %sw.bb290 ], [ %alpn_in.0, %sw.bb289 ], [ %alpn_in.0, %sw.bb288 ], [ %alpn_in.0, %sw.bb287 ], [ %alpn_in.0, %sw.bb286 ], [ %alpn_in.0, %sw.bb280 ], [ %alpn_in.0, %sw.bb274 ], [ %alpn_in.0, %sw.bb272 ], [ %alpn_in.0, %sw.bb260 ], [ %alpn_in.0, %sw.bb258 ], [ %alpn_in.0, %sw.bb257 ], [ %alpn_in.0, %sw.bb256 ], [ %alpn_in.0, %sw.bb255 ], [ %alpn_in.0, %sw.bb254 ], [ %alpn_in.0, %sw.bb253 ], [ %alpn_in.0, %sw.bb252 ], [ %alpn_in.0, %sw.bb251 ], [ %alpn_in.0, %sw.bb250 ], [ %alpn_in.0, %sw.bb249 ], [ %alpn_in.0, %sw.bb246 ], [ %alpn_in.0, %sw.bb245 ], [ %alpn_in.0, %sw.bb243 ], [ %alpn_in.0, %sw.bb236 ], [ %alpn_in.0, %sw.bb234 ], [ %alpn_in.0, %sw.bb232 ], [ %alpn_in.0, %sw.bb229 ], [ %alpn_in.0, %sw.bb228 ], [ %alpn_in.0, %sw.bb227 ], [ %alpn_in.0, %sw.bb226 ], [ %alpn_in.0, %sw.bb225 ], [ %alpn_in.0, %sw.bb224 ], [ %alpn_in.0, %sw.bb223 ], [ %alpn_in.0, %sw.bb222 ], [ %alpn_in.0, %sw.bb221 ], [ %alpn_in.0, %sw.bb219 ], [ %alpn_in.0, %sw.bb217 ], [ %alpn_in.0, %sw.bb216 ], [ %alpn_in.0, %sw.bb214 ], [ %alpn_in.0, %sw.bb213 ], [ %alpn_in.0, %sw.bb212 ], [ %alpn_in.0, %sw.bb211 ], [ %alpn_in.0, %sw.bb206 ], [ %alpn_in.0, %sw.bb354 ], [ %alpn_in.0, %sw.bb357 ], [ %alpn_in.0, %if.end203 ], [ %alpn_in.0, %sw.bb359 ], [ %alpn_in.0, %sw.bb367 ], [ %alpn_in.0, %lor.lhs.false189 ], [ %alpn_in.0, %sw.bb375 ], [ %alpn_in.0, %sw.bb380 ], [ %alpn_in.0, %sw.bb168 ], [ %alpn_in.0, %sw.bb167 ], [ %alpn_in.0, %sw.bb166 ], [ %alpn_in.0, %sw.bb164 ], [ %alpn_in.0, %sw.bb162 ], [ %alpn_in.0, %sw.bb161 ], [ %alpn_in.0, %sw.bb159 ], [ %alpn_in.0, %sw.bb157 ], [ %alpn_in.0, %sw.bb155 ], [ %alpn_in.0, %sw.bb154 ], [ %alpn_in.0, %sw.bb152 ], [ %alpn_in.0, %sw.bb151 ], [ %alpn_in.0, %sw.bb149 ], [ %alpn_in.0, %sw.bb147 ], [ %alpn_in.0, %sw.bb145 ], [ %alpn_in.0, %sw.bb139 ], [ %alpn_in.0, %sw.bb137 ], [ %alpn_in.0, %sw.bb131 ], [ %alpn_in.0, %sw.bb129 ], [ %alpn_in.0, %sw.bb127 ], [ %alpn_in.0, %sw.bb125 ], [ %alpn_in.0, %sw.bb119 ], [ %alpn_in.0, %sw.bb117 ], [ %alpn_in.0, %sw.bb111 ], [ %alpn_in.0, %sw.bb109 ], [ %alpn_in.0, %sw.bb108 ], [ %alpn_in.0, %sw.bb106 ], [ %alpn_in.0, %sw.bb100 ], [ %alpn_in.0, %sw.bb98 ], [ %alpn_in.0, %sw.bb96 ], [ %alpn_in.0, %sw.bb89 ], [ %alpn_in.0, %if.then93 ], [ %alpn_in.0, %sw.bb82 ], [ %alpn_in.0, %if.then86 ], [ %alpn_in.0, %sw.bb79 ], [ %alpn_in.0, %sw.bb78 ], [ %alpn_in.0, %sw.bb75 ], [ %alpn_in.0, %sw.bb65 ], [ %alpn_in.0, %sw.bb55 ], [ %alpn_in.0, %if.then49 ], [ %alpn_in.0, %sw.bb47 ], [ %alpn_in.0, %if.then53 ], [ %alpn_in.0, %sw.bb51 ], [ %alpn_in.0, %sw.bb262 ], [ %alpn_in.0, %for.cond ]
  %psk_identity_hint.0.be = phi i8* [ %psk_identity_hint.0, %if.end44 ], [ %psk_identity_hint.0, %sw.bb341 ], [ %psk_identity_hint.0, %sw.bb339 ], [ %psk_identity_hint.0, %sw.bb337 ], [ %psk_identity_hint.0, %sw.bb335 ], [ %psk_identity_hint.0, %sw.bb333 ], [ %psk_identity_hint.0, %sw.bb331 ], [ %psk_identity_hint.0, %sw.bb329 ], [ %psk_identity_hint.0, %sw.bb328 ], [ %psk_identity_hint.0, %sw.bb326 ], [ %psk_identity_hint.0, %sw.bb321 ], [ %psk_identity_hint.0, %sw.bb344 ], [ %psk_identity_hint.0, %sw.bb345 ], [ %psk_identity_hint.0, %sw.bb315 ], [ %psk_identity_hint.0, %sw.bb348 ], [ %psk_identity_hint.0, %sw.bb351 ], [ %psk_identity_hint.0, %sw.bb311 ], [ %psk_identity_hint.0, %sw.bb309 ], [ %psk_identity_hint.0, %sw.bb308 ], [ %psk_identity_hint.0, %sw.bb307 ], [ %psk_identity_hint.0, %sw.bb304 ], [ %psk_identity_hint.0, %sw.bb303 ], [ %psk_identity_hint.0, %sw.bb381 ], [ %psk_identity_hint.0, %sw.bb382 ], [ %psk_identity_hint.0, %sw.bb301 ], [ %psk_identity_hint.0, %sw.bb299 ], [ %psk_identity_hint.0, %sw.bb297 ], [ %psk_identity_hint.0, %sw.bb296 ], [ %psk_identity_hint.0, %sw.bb295 ], [ %psk_identity_hint.0, %sw.bb294 ], [ %psk_identity_hint.0, %sw.bb293 ], [ %psk_identity_hint.0, %sw.bb292 ], [ %psk_identity_hint.0, %sw.bb290 ], [ %psk_identity_hint.0, %sw.bb289 ], [ %psk_identity_hint.0, %sw.bb288 ], [ %psk_identity_hint.0, %sw.bb287 ], [ %psk_identity_hint.0, %sw.bb286 ], [ %psk_identity_hint.0, %sw.bb280 ], [ %psk_identity_hint.0, %sw.bb274 ], [ %psk_identity_hint.0, %sw.bb272 ], [ %call261, %sw.bb260 ], [ %psk_identity_hint.0, %sw.bb258 ], [ %psk_identity_hint.0, %sw.bb257 ], [ %psk_identity_hint.0, %sw.bb256 ], [ %psk_identity_hint.0, %sw.bb255 ], [ %psk_identity_hint.0, %sw.bb254 ], [ %psk_identity_hint.0, %sw.bb253 ], [ %psk_identity_hint.0, %sw.bb252 ], [ %psk_identity_hint.0, %sw.bb251 ], [ %psk_identity_hint.0, %sw.bb250 ], [ %psk_identity_hint.0, %sw.bb249 ], [ %psk_identity_hint.0, %sw.bb246 ], [ %psk_identity_hint.0, %sw.bb245 ], [ %psk_identity_hint.0, %sw.bb243 ], [ %psk_identity_hint.0, %sw.bb236 ], [ %psk_identity_hint.0, %sw.bb234 ], [ %psk_identity_hint.0, %sw.bb232 ], [ %psk_identity_hint.0, %sw.bb229 ], [ %psk_identity_hint.0, %sw.bb228 ], [ %psk_identity_hint.0, %sw.bb227 ], [ %psk_identity_hint.0, %sw.bb226 ], [ %psk_identity_hint.0, %sw.bb225 ], [ %psk_identity_hint.0, %sw.bb224 ], [ %psk_identity_hint.0, %sw.bb223 ], [ %psk_identity_hint.0, %sw.bb222 ], [ %psk_identity_hint.0, %sw.bb221 ], [ %psk_identity_hint.0, %sw.bb219 ], [ %psk_identity_hint.0, %sw.bb217 ], [ %psk_identity_hint.0, %sw.bb216 ], [ %psk_identity_hint.0, %sw.bb214 ], [ %psk_identity_hint.0, %sw.bb213 ], [ %psk_identity_hint.0, %sw.bb212 ], [ %psk_identity_hint.0, %sw.bb211 ], [ %psk_identity_hint.0, %sw.bb206 ], [ %psk_identity_hint.0, %sw.bb354 ], [ %psk_identity_hint.0, %sw.bb357 ], [ %psk_identity_hint.0, %if.end203 ], [ %psk_identity_hint.0, %sw.bb359 ], [ %psk_identity_hint.0, %sw.bb367 ], [ %psk_identity_hint.0, %lor.lhs.false189 ], [ %psk_identity_hint.0, %sw.bb375 ], [ %psk_identity_hint.0, %sw.bb380 ], [ %psk_identity_hint.0, %sw.bb168 ], [ %psk_identity_hint.0, %sw.bb167 ], [ %psk_identity_hint.0, %sw.bb166 ], [ %psk_identity_hint.0, %sw.bb164 ], [ %psk_identity_hint.0, %sw.bb162 ], [ %psk_identity_hint.0, %sw.bb161 ], [ %psk_identity_hint.0, %sw.bb159 ], [ %psk_identity_hint.0, %sw.bb157 ], [ %psk_identity_hint.0, %sw.bb155 ], [ %psk_identity_hint.0, %sw.bb154 ], [ %psk_identity_hint.0, %sw.bb152 ], [ %psk_identity_hint.0, %sw.bb151 ], [ %psk_identity_hint.0, %sw.bb149 ], [ %psk_identity_hint.0, %sw.bb147 ], [ %psk_identity_hint.0, %sw.bb145 ], [ %psk_identity_hint.0, %sw.bb139 ], [ %psk_identity_hint.0, %sw.bb137 ], [ %psk_identity_hint.0, %sw.bb131 ], [ %psk_identity_hint.0, %sw.bb129 ], [ %psk_identity_hint.0, %sw.bb127 ], [ %psk_identity_hint.0, %sw.bb125 ], [ %psk_identity_hint.0, %sw.bb119 ], [ %psk_identity_hint.0, %sw.bb117 ], [ %psk_identity_hint.0, %sw.bb111 ], [ %psk_identity_hint.0, %sw.bb109 ], [ %psk_identity_hint.0, %sw.bb108 ], [ %psk_identity_hint.0, %sw.bb106 ], [ %psk_identity_hint.0, %sw.bb100 ], [ %psk_identity_hint.0, %sw.bb98 ], [ %psk_identity_hint.0, %sw.bb96 ], [ %psk_identity_hint.0, %sw.bb89 ], [ %psk_identity_hint.0, %if.then93 ], [ %psk_identity_hint.0, %sw.bb82 ], [ %psk_identity_hint.0, %if.then86 ], [ %psk_identity_hint.0, %sw.bb79 ], [ %psk_identity_hint.0, %sw.bb78 ], [ %psk_identity_hint.0, %sw.bb75 ], [ %psk_identity_hint.0, %sw.bb65 ], [ %psk_identity_hint.0, %sw.bb55 ], [ %psk_identity_hint.0, %if.then49 ], [ %psk_identity_hint.0, %sw.bb47 ], [ %psk_identity_hint.0, %if.then53 ], [ %psk_identity_hint.0, %sw.bb51 ], [ %psk_identity_hint.0, %sw.bb262 ], [ %psk_identity_hint.0, %for.cond ]
  %srpuserseed.0.be = phi i8* [ %srpuserseed.0, %if.end44 ], [ %srpuserseed.0, %sw.bb341 ], [ %srpuserseed.0, %sw.bb339 ], [ %srpuserseed.0, %sw.bb337 ], [ %srpuserseed.0, %sw.bb335 ], [ %srpuserseed.0, %sw.bb333 ], [ %srpuserseed.0, %sw.bb331 ], [ %srpuserseed.0, %sw.bb329 ], [ %srpuserseed.0, %sw.bb328 ], [ %srpuserseed.0, %sw.bb326 ], [ %srpuserseed.0, %sw.bb321 ], [ %srpuserseed.0, %sw.bb344 ], [ %srpuserseed.0, %sw.bb345 ], [ %srpuserseed.0, %sw.bb315 ], [ %srpuserseed.0, %sw.bb348 ], [ %srpuserseed.0, %sw.bb351 ], [ %srpuserseed.0, %sw.bb311 ], [ %srpuserseed.0, %sw.bb309 ], [ %srpuserseed.0, %sw.bb308 ], [ %srpuserseed.0, %sw.bb307 ], [ %srpuserseed.0, %sw.bb304 ], [ %srpuserseed.0, %sw.bb303 ], [ %srpuserseed.0, %sw.bb381 ], [ %srpuserseed.0, %sw.bb382 ], [ %srpuserseed.0, %sw.bb301 ], [ %srpuserseed.0, %sw.bb299 ], [ %srpuserseed.0, %sw.bb297 ], [ %srpuserseed.0, %sw.bb296 ], [ %srpuserseed.0, %sw.bb295 ], [ %srpuserseed.0, %sw.bb294 ], [ %srpuserseed.0, %sw.bb293 ], [ %srpuserseed.0, %sw.bb292 ], [ %srpuserseed.0, %sw.bb290 ], [ %srpuserseed.0, %sw.bb289 ], [ %srpuserseed.0, %sw.bb288 ], [ %srpuserseed.0, %sw.bb287 ], [ %srpuserseed.0, %sw.bb286 ], [ %call281, %sw.bb280 ], [ %srpuserseed.0, %sw.bb274 ], [ %srpuserseed.0, %sw.bb272 ], [ %srpuserseed.0, %sw.bb260 ], [ %srpuserseed.0, %sw.bb258 ], [ %srpuserseed.0, %sw.bb257 ], [ %srpuserseed.0, %sw.bb256 ], [ %srpuserseed.0, %sw.bb255 ], [ %srpuserseed.0, %sw.bb254 ], [ %srpuserseed.0, %sw.bb253 ], [ %srpuserseed.0, %sw.bb252 ], [ %srpuserseed.0, %sw.bb251 ], [ %srpuserseed.0, %sw.bb250 ], [ %srpuserseed.0, %sw.bb249 ], [ %srpuserseed.0, %sw.bb246 ], [ %srpuserseed.0, %sw.bb245 ], [ %srpuserseed.0, %sw.bb243 ], [ %srpuserseed.0, %sw.bb236 ], [ %srpuserseed.0, %sw.bb234 ], [ %srpuserseed.0, %sw.bb232 ], [ %srpuserseed.0, %sw.bb229 ], [ %srpuserseed.0, %sw.bb228 ], [ %srpuserseed.0, %sw.bb227 ], [ %srpuserseed.0, %sw.bb226 ], [ %srpuserseed.0, %sw.bb225 ], [ %srpuserseed.0, %sw.bb224 ], [ %srpuserseed.0, %sw.bb223 ], [ %srpuserseed.0, %sw.bb222 ], [ %srpuserseed.0, %sw.bb221 ], [ %srpuserseed.0, %sw.bb219 ], [ %srpuserseed.0, %sw.bb217 ], [ %srpuserseed.0, %sw.bb216 ], [ %srpuserseed.0, %sw.bb214 ], [ %srpuserseed.0, %sw.bb213 ], [ %srpuserseed.0, %sw.bb212 ], [ %srpuserseed.0, %sw.bb211 ], [ %srpuserseed.0, %sw.bb206 ], [ %srpuserseed.0, %sw.bb354 ], [ %srpuserseed.0, %sw.bb357 ], [ %srpuserseed.0, %if.end203 ], [ %srpuserseed.0, %sw.bb359 ], [ %srpuserseed.0, %sw.bb367 ], [ %srpuserseed.0, %lor.lhs.false189 ], [ %srpuserseed.0, %sw.bb375 ], [ %srpuserseed.0, %sw.bb380 ], [ %srpuserseed.0, %sw.bb168 ], [ %srpuserseed.0, %sw.bb167 ], [ %srpuserseed.0, %sw.bb166 ], [ %srpuserseed.0, %sw.bb164 ], [ %srpuserseed.0, %sw.bb162 ], [ %srpuserseed.0, %sw.bb161 ], [ %srpuserseed.0, %sw.bb159 ], [ %srpuserseed.0, %sw.bb157 ], [ %srpuserseed.0, %sw.bb155 ], [ %srpuserseed.0, %sw.bb154 ], [ %srpuserseed.0, %sw.bb152 ], [ %srpuserseed.0, %sw.bb151 ], [ %srpuserseed.0, %sw.bb149 ], [ %srpuserseed.0, %sw.bb147 ], [ %srpuserseed.0, %sw.bb145 ], [ %srpuserseed.0, %sw.bb139 ], [ %srpuserseed.0, %sw.bb137 ], [ %srpuserseed.0, %sw.bb131 ], [ %srpuserseed.0, %sw.bb129 ], [ %srpuserseed.0, %sw.bb127 ], [ %srpuserseed.0, %sw.bb125 ], [ %srpuserseed.0, %sw.bb119 ], [ %srpuserseed.0, %sw.bb117 ], [ %srpuserseed.0, %sw.bb111 ], [ %srpuserseed.0, %sw.bb109 ], [ %srpuserseed.0, %sw.bb108 ], [ %srpuserseed.0, %sw.bb106 ], [ %srpuserseed.0, %sw.bb100 ], [ %srpuserseed.0, %sw.bb98 ], [ %srpuserseed.0, %sw.bb96 ], [ %srpuserseed.0, %sw.bb89 ], [ %srpuserseed.0, %if.then93 ], [ %srpuserseed.0, %sw.bb82 ], [ %srpuserseed.0, %if.then86 ], [ %srpuserseed.0, %sw.bb79 ], [ %srpuserseed.0, %sw.bb78 ], [ %srpuserseed.0, %sw.bb75 ], [ %srpuserseed.0, %sw.bb65 ], [ %srpuserseed.0, %sw.bb55 ], [ %srpuserseed.0, %if.then49 ], [ %srpuserseed.0, %sw.bb47 ], [ %srpuserseed.0, %if.then53 ], [ %srpuserseed.0, %sw.bb51 ], [ %srpuserseed.0, %sw.bb262 ], [ %srpuserseed.0, %for.cond ]
  %srp_verifier_file.0.be = phi i8* [ %srp_verifier_file.0, %if.end44 ], [ %srp_verifier_file.0, %sw.bb341 ], [ %srp_verifier_file.0, %sw.bb339 ], [ %srp_verifier_file.0, %sw.bb337 ], [ %srp_verifier_file.0, %sw.bb335 ], [ %srp_verifier_file.0, %sw.bb333 ], [ %srp_verifier_file.0, %sw.bb331 ], [ %srp_verifier_file.0, %sw.bb329 ], [ %srp_verifier_file.0, %sw.bb328 ], [ %srp_verifier_file.0, %sw.bb326 ], [ %srp_verifier_file.0, %sw.bb321 ], [ %srp_verifier_file.0, %sw.bb344 ], [ %srp_verifier_file.0, %sw.bb345 ], [ %srp_verifier_file.0, %sw.bb315 ], [ %srp_verifier_file.0, %sw.bb348 ], [ %srp_verifier_file.0, %sw.bb351 ], [ %srp_verifier_file.0, %sw.bb311 ], [ %srp_verifier_file.0, %sw.bb309 ], [ %srp_verifier_file.0, %sw.bb308 ], [ %srp_verifier_file.0, %sw.bb307 ], [ %srp_verifier_file.0, %sw.bb304 ], [ %srp_verifier_file.0, %sw.bb303 ], [ %srp_verifier_file.0, %sw.bb381 ], [ %srp_verifier_file.0, %sw.bb382 ], [ %srp_verifier_file.0, %sw.bb301 ], [ %srp_verifier_file.0, %sw.bb299 ], [ %srp_verifier_file.0, %sw.bb297 ], [ %srp_verifier_file.0, %sw.bb296 ], [ %srp_verifier_file.0, %sw.bb295 ], [ %srp_verifier_file.0, %sw.bb294 ], [ %srp_verifier_file.0, %sw.bb293 ], [ %srp_verifier_file.0, %sw.bb292 ], [ %srp_verifier_file.0, %sw.bb290 ], [ %srp_verifier_file.0, %sw.bb289 ], [ %srp_verifier_file.0, %sw.bb288 ], [ %srp_verifier_file.0, %sw.bb287 ], [ %srp_verifier_file.0, %sw.bb286 ], [ %srp_verifier_file.0, %sw.bb280 ], [ %call275, %sw.bb274 ], [ %srp_verifier_file.0, %sw.bb272 ], [ %srp_verifier_file.0, %sw.bb260 ], [ %srp_verifier_file.0, %sw.bb258 ], [ %srp_verifier_file.0, %sw.bb257 ], [ %srp_verifier_file.0, %sw.bb256 ], [ %srp_verifier_file.0, %sw.bb255 ], [ %srp_verifier_file.0, %sw.bb254 ], [ %srp_verifier_file.0, %sw.bb253 ], [ %srp_verifier_file.0, %sw.bb252 ], [ %srp_verifier_file.0, %sw.bb251 ], [ %srp_verifier_file.0, %sw.bb250 ], [ %srp_verifier_file.0, %sw.bb249 ], [ %srp_verifier_file.0, %sw.bb246 ], [ %srp_verifier_file.0, %sw.bb245 ], [ %srp_verifier_file.0, %sw.bb243 ], [ %srp_verifier_file.0, %sw.bb236 ], [ %srp_verifier_file.0, %sw.bb234 ], [ %srp_verifier_file.0, %sw.bb232 ], [ %srp_verifier_file.0, %sw.bb229 ], [ %srp_verifier_file.0, %sw.bb228 ], [ %srp_verifier_file.0, %sw.bb227 ], [ %srp_verifier_file.0, %sw.bb226 ], [ %srp_verifier_file.0, %sw.bb225 ], [ %srp_verifier_file.0, %sw.bb224 ], [ %srp_verifier_file.0, %sw.bb223 ], [ %srp_verifier_file.0, %sw.bb222 ], [ %srp_verifier_file.0, %sw.bb221 ], [ %srp_verifier_file.0, %sw.bb219 ], [ %srp_verifier_file.0, %sw.bb217 ], [ %srp_verifier_file.0, %sw.bb216 ], [ %srp_verifier_file.0, %sw.bb214 ], [ %srp_verifier_file.0, %sw.bb213 ], [ %srp_verifier_file.0, %sw.bb212 ], [ %srp_verifier_file.0, %sw.bb211 ], [ %srp_verifier_file.0, %sw.bb206 ], [ %srp_verifier_file.0, %sw.bb354 ], [ %srp_verifier_file.0, %sw.bb357 ], [ %srp_verifier_file.0, %if.end203 ], [ %srp_verifier_file.0, %sw.bb359 ], [ %srp_verifier_file.0, %sw.bb367 ], [ %srp_verifier_file.0, %lor.lhs.false189 ], [ %srp_verifier_file.0, %sw.bb375 ], [ %srp_verifier_file.0, %sw.bb380 ], [ %srp_verifier_file.0, %sw.bb168 ], [ %srp_verifier_file.0, %sw.bb167 ], [ %srp_verifier_file.0, %sw.bb166 ], [ %srp_verifier_file.0, %sw.bb164 ], [ %srp_verifier_file.0, %sw.bb162 ], [ %srp_verifier_file.0, %sw.bb161 ], [ %srp_verifier_file.0, %sw.bb159 ], [ %srp_verifier_file.0, %sw.bb157 ], [ %srp_verifier_file.0, %sw.bb155 ], [ %srp_verifier_file.0, %sw.bb154 ], [ %srp_verifier_file.0, %sw.bb152 ], [ %srp_verifier_file.0, %sw.bb151 ], [ %srp_verifier_file.0, %sw.bb149 ], [ %srp_verifier_file.0, %sw.bb147 ], [ %srp_verifier_file.0, %sw.bb145 ], [ %srp_verifier_file.0, %sw.bb139 ], [ %srp_verifier_file.0, %sw.bb137 ], [ %srp_verifier_file.0, %sw.bb131 ], [ %srp_verifier_file.0, %sw.bb129 ], [ %srp_verifier_file.0, %sw.bb127 ], [ %srp_verifier_file.0, %sw.bb125 ], [ %srp_verifier_file.0, %sw.bb119 ], [ %srp_verifier_file.0, %sw.bb117 ], [ %srp_verifier_file.0, %sw.bb111 ], [ %srp_verifier_file.0, %sw.bb109 ], [ %srp_verifier_file.0, %sw.bb108 ], [ %srp_verifier_file.0, %sw.bb106 ], [ %srp_verifier_file.0, %sw.bb100 ], [ %srp_verifier_file.0, %sw.bb98 ], [ %srp_verifier_file.0, %sw.bb96 ], [ %srp_verifier_file.0, %sw.bb89 ], [ %srp_verifier_file.0, %if.then93 ], [ %srp_verifier_file.0, %sw.bb82 ], [ %srp_verifier_file.0, %if.then86 ], [ %srp_verifier_file.0, %sw.bb79 ], [ %srp_verifier_file.0, %sw.bb78 ], [ %srp_verifier_file.0, %sw.bb75 ], [ %srp_verifier_file.0, %sw.bb65 ], [ %srp_verifier_file.0, %sw.bb55 ], [ %srp_verifier_file.0, %if.then49 ], [ %srp_verifier_file.0, %sw.bb47 ], [ %srp_verifier_file.0, %if.then53 ], [ %srp_verifier_file.0, %sw.bb51 ], [ %srp_verifier_file.0, %sw.bb262 ], [ %srp_verifier_file.0, %for.cond ]
  %srtp_profiles.0.be = phi i8* [ %srtp_profiles.0, %if.end44 ], [ %srtp_profiles.0, %sw.bb341 ], [ %srtp_profiles.0, %sw.bb339 ], [ %call338, %sw.bb337 ], [ %srtp_profiles.0, %sw.bb335 ], [ %srtp_profiles.0, %sw.bb333 ], [ %srtp_profiles.0, %sw.bb331 ], [ %srtp_profiles.0, %sw.bb329 ], [ %srtp_profiles.0, %sw.bb328 ], [ %srtp_profiles.0, %sw.bb326 ], [ %srtp_profiles.0, %sw.bb321 ], [ %srtp_profiles.0, %sw.bb344 ], [ %srtp_profiles.0, %sw.bb345 ], [ %srtp_profiles.0, %sw.bb315 ], [ %srtp_profiles.0, %sw.bb348 ], [ %srtp_profiles.0, %sw.bb351 ], [ %srtp_profiles.0, %sw.bb311 ], [ %srtp_profiles.0, %sw.bb309 ], [ %srtp_profiles.0, %sw.bb308 ], [ %srtp_profiles.0, %sw.bb307 ], [ %srtp_profiles.0, %sw.bb304 ], [ %srtp_profiles.0, %sw.bb303 ], [ %srtp_profiles.0, %sw.bb381 ], [ %srtp_profiles.0, %sw.bb382 ], [ %srtp_profiles.0, %sw.bb301 ], [ %srtp_profiles.0, %sw.bb299 ], [ %srtp_profiles.0, %sw.bb297 ], [ %srtp_profiles.0, %sw.bb296 ], [ %srtp_profiles.0, %sw.bb295 ], [ %srtp_profiles.0, %sw.bb294 ], [ %srtp_profiles.0, %sw.bb293 ], [ %srtp_profiles.0, %sw.bb292 ], [ %srtp_profiles.0, %sw.bb290 ], [ %srtp_profiles.0, %sw.bb289 ], [ %srtp_profiles.0, %sw.bb288 ], [ %srtp_profiles.0, %sw.bb287 ], [ %srtp_profiles.0, %sw.bb286 ], [ %srtp_profiles.0, %sw.bb280 ], [ %srtp_profiles.0, %sw.bb274 ], [ %srtp_profiles.0, %sw.bb272 ], [ %srtp_profiles.0, %sw.bb260 ], [ %srtp_profiles.0, %sw.bb258 ], [ %srtp_profiles.0, %sw.bb257 ], [ %srtp_profiles.0, %sw.bb256 ], [ %srtp_profiles.0, %sw.bb255 ], [ %srtp_profiles.0, %sw.bb254 ], [ %srtp_profiles.0, %sw.bb253 ], [ %srtp_profiles.0, %sw.bb252 ], [ %srtp_profiles.0, %sw.bb251 ], [ %srtp_profiles.0, %sw.bb250 ], [ %srtp_profiles.0, %sw.bb249 ], [ %srtp_profiles.0, %sw.bb246 ], [ %srtp_profiles.0, %sw.bb245 ], [ %srtp_profiles.0, %sw.bb243 ], [ %srtp_profiles.0, %sw.bb236 ], [ %srtp_profiles.0, %sw.bb234 ], [ %srtp_profiles.0, %sw.bb232 ], [ %srtp_profiles.0, %sw.bb229 ], [ %srtp_profiles.0, %sw.bb228 ], [ %srtp_profiles.0, %sw.bb227 ], [ %srtp_profiles.0, %sw.bb226 ], [ %srtp_profiles.0, %sw.bb225 ], [ %srtp_profiles.0, %sw.bb224 ], [ %srtp_profiles.0, %sw.bb223 ], [ %srtp_profiles.0, %sw.bb222 ], [ %srtp_profiles.0, %sw.bb221 ], [ %srtp_profiles.0, %sw.bb219 ], [ %srtp_profiles.0, %sw.bb217 ], [ %srtp_profiles.0, %sw.bb216 ], [ %srtp_profiles.0, %sw.bb214 ], [ %srtp_profiles.0, %sw.bb213 ], [ %srtp_profiles.0, %sw.bb212 ], [ %srtp_profiles.0, %sw.bb211 ], [ %srtp_profiles.0, %sw.bb206 ], [ %srtp_profiles.0, %sw.bb354 ], [ %srtp_profiles.0, %sw.bb357 ], [ %srtp_profiles.0, %if.end203 ], [ %srtp_profiles.0, %sw.bb359 ], [ %srtp_profiles.0, %sw.bb367 ], [ %srtp_profiles.0, %lor.lhs.false189 ], [ %srtp_profiles.0, %sw.bb375 ], [ %srtp_profiles.0, %sw.bb380 ], [ %srtp_profiles.0, %sw.bb168 ], [ %srtp_profiles.0, %sw.bb167 ], [ %srtp_profiles.0, %sw.bb166 ], [ %srtp_profiles.0, %sw.bb164 ], [ %srtp_profiles.0, %sw.bb162 ], [ %srtp_profiles.0, %sw.bb161 ], [ %srtp_profiles.0, %sw.bb159 ], [ %srtp_profiles.0, %sw.bb157 ], [ %srtp_profiles.0, %sw.bb155 ], [ %srtp_profiles.0, %sw.bb154 ], [ %srtp_profiles.0, %sw.bb152 ], [ %srtp_profiles.0, %sw.bb151 ], [ %srtp_profiles.0, %sw.bb149 ], [ %srtp_profiles.0, %sw.bb147 ], [ %srtp_profiles.0, %sw.bb145 ], [ %srtp_profiles.0, %sw.bb139 ], [ %srtp_profiles.0, %sw.bb137 ], [ %srtp_profiles.0, %sw.bb131 ], [ %srtp_profiles.0, %sw.bb129 ], [ %srtp_profiles.0, %sw.bb127 ], [ %srtp_profiles.0, %sw.bb125 ], [ %srtp_profiles.0, %sw.bb119 ], [ %srtp_profiles.0, %sw.bb117 ], [ %srtp_profiles.0, %sw.bb111 ], [ %srtp_profiles.0, %sw.bb109 ], [ %srtp_profiles.0, %sw.bb108 ], [ %srtp_profiles.0, %sw.bb106 ], [ %srtp_profiles.0, %sw.bb100 ], [ %srtp_profiles.0, %sw.bb98 ], [ %srtp_profiles.0, %sw.bb96 ], [ %srtp_profiles.0, %sw.bb89 ], [ %srtp_profiles.0, %if.then93 ], [ %srtp_profiles.0, %sw.bb82 ], [ %srtp_profiles.0, %if.then86 ], [ %srtp_profiles.0, %sw.bb79 ], [ %srtp_profiles.0, %sw.bb78 ], [ %srtp_profiles.0, %sw.bb75 ], [ %srtp_profiles.0, %sw.bb65 ], [ %srtp_profiles.0, %sw.bb55 ], [ %srtp_profiles.0, %if.then49 ], [ %srtp_profiles.0, %sw.bb47 ], [ %srtp_profiles.0, %if.then53 ], [ %srtp_profiles.0, %sw.bb51 ], [ %srtp_profiles.0, %sw.bb262 ], [ %srtp_profiles.0, %for.cond ]
  %min_version.0.be = phi i32 [ %min_version.0, %if.end44 ], [ %min_version.0, %sw.bb341 ], [ %min_version.0, %sw.bb339 ], [ %min_version.0, %sw.bb337 ], [ %min_version.0, %sw.bb335 ], [ %min_version.0, %sw.bb333 ], [ %min_version.0, %sw.bb331 ], [ %min_version.0, %sw.bb329 ], [ %min_version.0, %sw.bb328 ], [ %min_version.0, %sw.bb326 ], [ %min_version.0, %sw.bb321 ], [ %min_version.0, %sw.bb344 ], [ %min_version.0, %sw.bb345 ], [ %min_version.0, %sw.bb315 ], [ %min_version.0, %sw.bb348 ], [ %min_version.0, %sw.bb351 ], [ %min_version.0, %sw.bb311 ], [ %min_version.0, %sw.bb309 ], [ %min_version.0, %sw.bb308 ], [ %min_version.0, %sw.bb307 ], [ %min_version.0, %sw.bb304 ], [ %min_version.0, %sw.bb303 ], [ %min_version.0, %sw.bb381 ], [ %min_version.0, %sw.bb382 ], [ 65277, %sw.bb301 ], [ 65279, %sw.bb299 ], [ %min_version.0, %sw.bb297 ], [ 769, %sw.bb296 ], [ 770, %sw.bb295 ], [ 771, %sw.bb294 ], [ 772, %sw.bb293 ], [ 768, %sw.bb292 ], [ %min_version.0, %sw.bb290 ], [ %min_version.0, %sw.bb289 ], [ %min_version.0, %sw.bb288 ], [ %min_version.0, %sw.bb287 ], [ %min_version.0, %sw.bb286 ], [ %spec.store.select1159, %sw.bb280 ], [ %spec.store.select1158, %sw.bb274 ], [ %min_version.0, %sw.bb272 ], [ %min_version.0, %sw.bb260 ], [ %min_version.0, %sw.bb258 ], [ %min_version.0, %sw.bb257 ], [ %min_version.0, %sw.bb256 ], [ %min_version.0, %sw.bb255 ], [ %min_version.0, %sw.bb254 ], [ %min_version.0, %sw.bb253 ], [ %min_version.0, %sw.bb252 ], [ %min_version.0, %sw.bb251 ], [ %min_version.0, %sw.bb250 ], [ %min_version.0, %sw.bb249 ], [ %min_version.0, %sw.bb246 ], [ %min_version.0, %sw.bb245 ], [ %min_version.0, %sw.bb243 ], [ %min_version.0, %sw.bb236 ], [ %min_version.0, %sw.bb234 ], [ %min_version.0, %sw.bb232 ], [ %min_version.0, %sw.bb229 ], [ %min_version.0, %sw.bb228 ], [ %min_version.0, %sw.bb227 ], [ %min_version.0, %sw.bb226 ], [ %min_version.0, %sw.bb225 ], [ %min_version.0, %sw.bb224 ], [ %min_version.0, %sw.bb223 ], [ %min_version.0, %sw.bb222 ], [ %min_version.0, %sw.bb221 ], [ %min_version.0, %sw.bb219 ], [ %min_version.0, %sw.bb217 ], [ %min_version.0, %sw.bb216 ], [ %min_version.0, %sw.bb214 ], [ %min_version.0, %sw.bb213 ], [ %min_version.0, %sw.bb212 ], [ %min_version.0, %sw.bb211 ], [ %min_version.0, %sw.bb206 ], [ %min_version.0, %sw.bb354 ], [ %min_version.0, %sw.bb357 ], [ %min_version.0, %if.end203 ], [ %min_version.0, %sw.bb359 ], [ %min_version.0, %sw.bb367 ], [ %min_version.0, %lor.lhs.false189 ], [ %min_version.0, %sw.bb375 ], [ %min_version.0, %sw.bb380 ], [ %min_version.0, %sw.bb168 ], [ %min_version.0, %sw.bb167 ], [ %min_version.0, %sw.bb166 ], [ %min_version.0, %sw.bb164 ], [ %min_version.0, %sw.bb162 ], [ %min_version.0, %sw.bb161 ], [ %min_version.0, %sw.bb159 ], [ %min_version.0, %sw.bb157 ], [ %min_version.0, %sw.bb155 ], [ %min_version.0, %sw.bb154 ], [ %min_version.0, %sw.bb152 ], [ %min_version.0, %sw.bb151 ], [ %min_version.0, %sw.bb149 ], [ %min_version.0, %sw.bb147 ], [ %min_version.0, %sw.bb145 ], [ %min_version.0, %sw.bb139 ], [ %min_version.0, %sw.bb137 ], [ %min_version.0, %sw.bb131 ], [ %min_version.0, %sw.bb129 ], [ %min_version.0, %sw.bb127 ], [ %min_version.0, %sw.bb125 ], [ %min_version.0, %sw.bb119 ], [ %min_version.0, %sw.bb117 ], [ %min_version.0, %sw.bb111 ], [ %min_version.0, %sw.bb109 ], [ %min_version.0, %sw.bb108 ], [ %min_version.0, %sw.bb106 ], [ %min_version.0, %sw.bb100 ], [ %min_version.0, %sw.bb98 ], [ %min_version.0, %sw.bb96 ], [ %min_version.0, %sw.bb89 ], [ %min_version.0, %if.then93 ], [ %min_version.0, %sw.bb82 ], [ %min_version.0, %if.then86 ], [ %min_version.0, %sw.bb79 ], [ %min_version.0, %sw.bb78 ], [ %min_version.0, %sw.bb75 ], [ %min_version.0, %sw.bb65 ], [ %min_version.0, %sw.bb55 ], [ %min_version.0, %if.then49 ], [ %min_version.0, %sw.bb47 ], [ %min_version.0, %if.then53 ], [ %min_version.0, %sw.bb51 ], [ %min_version.0, %sw.bb262 ], [ %min_version.0, %for.cond ]
  %max_version.0.be = phi i32 [ %max_version.0, %if.end44 ], [ %max_version.0, %sw.bb341 ], [ %max_version.0, %sw.bb339 ], [ %max_version.0, %sw.bb337 ], [ %max_version.0, %sw.bb335 ], [ %max_version.0, %sw.bb333 ], [ %max_version.0, %sw.bb331 ], [ %max_version.0, %sw.bb329 ], [ %max_version.0, %sw.bb328 ], [ %max_version.0, %sw.bb326 ], [ %max_version.0, %sw.bb321 ], [ %max_version.0, %sw.bb344 ], [ %max_version.0, %sw.bb345 ], [ %max_version.0, %sw.bb315 ], [ %max_version.0, %sw.bb348 ], [ %max_version.0, %sw.bb351 ], [ %max_version.0, %sw.bb311 ], [ %max_version.0, %sw.bb309 ], [ %max_version.0, %sw.bb308 ], [ %max_version.0, %sw.bb307 ], [ %max_version.0, %sw.bb304 ], [ %max_version.0, %sw.bb303 ], [ %max_version.0, %sw.bb381 ], [ %max_version.0, %sw.bb382 ], [ 65277, %sw.bb301 ], [ 65279, %sw.bb299 ], [ %max_version.0, %sw.bb297 ], [ 769, %sw.bb296 ], [ 770, %sw.bb295 ], [ 771, %sw.bb294 ], [ 772, %sw.bb293 ], [ 768, %sw.bb292 ], [ %max_version.0, %sw.bb290 ], [ %max_version.0, %sw.bb289 ], [ %max_version.0, %sw.bb288 ], [ %max_version.0, %sw.bb287 ], [ %max_version.0, %sw.bb286 ], [ %max_version.0, %sw.bb280 ], [ %max_version.0, %sw.bb274 ], [ %max_version.0, %sw.bb272 ], [ %max_version.0, %sw.bb260 ], [ %max_version.0, %sw.bb258 ], [ %max_version.0, %sw.bb257 ], [ %max_version.0, %sw.bb256 ], [ %max_version.0, %sw.bb255 ], [ %max_version.0, %sw.bb254 ], [ %max_version.0, %sw.bb253 ], [ %max_version.0, %sw.bb252 ], [ %max_version.0, %sw.bb251 ], [ %max_version.0, %sw.bb250 ], [ %max_version.0, %sw.bb249 ], [ %max_version.0, %sw.bb246 ], [ %max_version.0, %sw.bb245 ], [ %max_version.0, %sw.bb243 ], [ %max_version.0, %sw.bb236 ], [ %max_version.0, %sw.bb234 ], [ %max_version.0, %sw.bb232 ], [ %max_version.0, %sw.bb229 ], [ %max_version.0, %sw.bb228 ], [ %max_version.0, %sw.bb227 ], [ %max_version.0, %sw.bb226 ], [ %max_version.0, %sw.bb225 ], [ %max_version.0, %sw.bb224 ], [ %max_version.0, %sw.bb223 ], [ %max_version.0, %sw.bb222 ], [ %max_version.0, %sw.bb221 ], [ %max_version.0, %sw.bb219 ], [ %max_version.0, %sw.bb217 ], [ %max_version.0, %sw.bb216 ], [ %max_version.0, %sw.bb214 ], [ %max_version.0, %sw.bb213 ], [ %max_version.0, %sw.bb212 ], [ %max_version.0, %sw.bb211 ], [ %max_version.0, %sw.bb206 ], [ %max_version.0, %sw.bb354 ], [ %max_version.0, %sw.bb357 ], [ %max_version.0, %if.end203 ], [ %max_version.0, %sw.bb359 ], [ %max_version.0, %sw.bb367 ], [ %max_version.0, %lor.lhs.false189 ], [ %max_version.0, %sw.bb375 ], [ %max_version.0, %sw.bb380 ], [ %max_version.0, %sw.bb168 ], [ %max_version.0, %sw.bb167 ], [ %max_version.0, %sw.bb166 ], [ %max_version.0, %sw.bb164 ], [ %max_version.0, %sw.bb162 ], [ %max_version.0, %sw.bb161 ], [ %max_version.0, %sw.bb159 ], [ %max_version.0, %sw.bb157 ], [ %max_version.0, %sw.bb155 ], [ %max_version.0, %sw.bb154 ], [ %max_version.0, %sw.bb152 ], [ %max_version.0, %sw.bb151 ], [ %max_version.0, %sw.bb149 ], [ %max_version.0, %sw.bb147 ], [ %max_version.0, %sw.bb145 ], [ %max_version.0, %sw.bb139 ], [ %max_version.0, %sw.bb137 ], [ %max_version.0, %sw.bb131 ], [ %max_version.0, %sw.bb129 ], [ %max_version.0, %sw.bb127 ], [ %max_version.0, %sw.bb125 ], [ %max_version.0, %sw.bb119 ], [ %max_version.0, %sw.bb117 ], [ %max_version.0, %sw.bb111 ], [ %max_version.0, %sw.bb109 ], [ %max_version.0, %sw.bb108 ], [ %max_version.0, %sw.bb106 ], [ %max_version.0, %sw.bb100 ], [ %max_version.0, %sw.bb98 ], [ %max_version.0, %sw.bb96 ], [ %max_version.0, %sw.bb89 ], [ %max_version.0, %if.then93 ], [ %max_version.0, %sw.bb82 ], [ %max_version.0, %if.then86 ], [ %max_version.0, %sw.bb79 ], [ %max_version.0, %sw.bb78 ], [ %max_version.0, %sw.bb75 ], [ %max_version.0, %sw.bb65 ], [ %max_version.0, %sw.bb55 ], [ %max_version.0, %if.then49 ], [ %max_version.0, %sw.bb47 ], [ %max_version.0, %if.then53 ], [ %max_version.0, %sw.bb51 ], [ %max_version.0, %sw.bb262 ], [ %max_version.0, %for.cond ]
  %s_server_verify.0.be = phi i32 [ %s_server_verify.0, %if.end44 ], [ %s_server_verify.0, %sw.bb341 ], [ %s_server_verify.0, %sw.bb339 ], [ %s_server_verify.0, %sw.bb337 ], [ %s_server_verify.0, %sw.bb335 ], [ %s_server_verify.0, %sw.bb333 ], [ %s_server_verify.0, %sw.bb331 ], [ %s_server_verify.0, %sw.bb329 ], [ %s_server_verify.0, %sw.bb328 ], [ %s_server_verify.0, %sw.bb326 ], [ %s_server_verify.0, %sw.bb321 ], [ %s_server_verify.0, %sw.bb344 ], [ %s_server_verify.0, %sw.bb345 ], [ %s_server_verify.0, %sw.bb315 ], [ %s_server_verify.0, %sw.bb348 ], [ %s_server_verify.0, %sw.bb351 ], [ %s_server_verify.0, %sw.bb311 ], [ %s_server_verify.0, %sw.bb309 ], [ %s_server_verify.0, %sw.bb308 ], [ %s_server_verify.0, %sw.bb307 ], [ %s_server_verify.0, %sw.bb304 ], [ %s_server_verify.0, %sw.bb303 ], [ %s_server_verify.0, %sw.bb381 ], [ %s_server_verify.0, %sw.bb382 ], [ %s_server_verify.0, %sw.bb301 ], [ %s_server_verify.0, %sw.bb299 ], [ %s_server_verify.0, %sw.bb297 ], [ %s_server_verify.0, %sw.bb296 ], [ %s_server_verify.0, %sw.bb295 ], [ %s_server_verify.0, %sw.bb294 ], [ %s_server_verify.0, %sw.bb293 ], [ %s_server_verify.0, %sw.bb292 ], [ %s_server_verify.0, %sw.bb290 ], [ %s_server_verify.0, %sw.bb289 ], [ %s_server_verify.0, %sw.bb288 ], [ %s_server_verify.0, %sw.bb287 ], [ %s_server_verify.0, %sw.bb286 ], [ %s_server_verify.0, %sw.bb280 ], [ %s_server_verify.0, %sw.bb274 ], [ %s_server_verify.0, %sw.bb272 ], [ %s_server_verify.0, %sw.bb260 ], [ %s_server_verify.0, %sw.bb258 ], [ %s_server_verify.0, %sw.bb257 ], [ %s_server_verify.0, %sw.bb256 ], [ %s_server_verify.0, %sw.bb255 ], [ %s_server_verify.0, %sw.bb254 ], [ %s_server_verify.0, %sw.bb253 ], [ %s_server_verify.0, %sw.bb252 ], [ %s_server_verify.0, %sw.bb251 ], [ %s_server_verify.0, %sw.bb250 ], [ %s_server_verify.0, %sw.bb249 ], [ %s_server_verify.0, %sw.bb246 ], [ %s_server_verify.0, %sw.bb245 ], [ %s_server_verify.0, %sw.bb243 ], [ %s_server_verify.0, %sw.bb236 ], [ %s_server_verify.0, %sw.bb234 ], [ %s_server_verify.0, %sw.bb232 ], [ %s_server_verify.0, %sw.bb229 ], [ %s_server_verify.0, %sw.bb228 ], [ %s_server_verify.0, %sw.bb227 ], [ %s_server_verify.0, %sw.bb226 ], [ %s_server_verify.0, %sw.bb225 ], [ %s_server_verify.0, %sw.bb224 ], [ %s_server_verify.0, %sw.bb223 ], [ %s_server_verify.0, %sw.bb222 ], [ %s_server_verify.0, %sw.bb221 ], [ %s_server_verify.0, %sw.bb219 ], [ %s_server_verify.0, %sw.bb217 ], [ %s_server_verify.0, %sw.bb216 ], [ %s_server_verify.0, %sw.bb214 ], [ %s_server_verify.0, %sw.bb213 ], [ %s_server_verify.0, %sw.bb212 ], [ %s_server_verify.0, %sw.bb211 ], [ %s_server_verify.0, %sw.bb206 ], [ %s_server_verify.0, %sw.bb354 ], [ %s_server_verify.0, %sw.bb357 ], [ %s_server_verify.0, %if.end203 ], [ %s_server_verify.0, %sw.bb359 ], [ %s_server_verify.0, %sw.bb367 ], [ %s_server_verify.0, %lor.lhs.false189 ], [ %s_server_verify.0, %sw.bb375 ], [ %s_server_verify.0, %sw.bb380 ], [ %s_server_verify.0, %sw.bb168 ], [ %s_server_verify.0, %sw.bb167 ], [ %s_server_verify.0, %sw.bb166 ], [ %s_server_verify.0, %sw.bb164 ], [ %s_server_verify.0, %sw.bb162 ], [ %s_server_verify.0, %sw.bb161 ], [ %s_server_verify.0, %sw.bb159 ], [ %s_server_verify.0, %sw.bb157 ], [ %s_server_verify.0, %sw.bb155 ], [ %s_server_verify.0, %sw.bb154 ], [ %s_server_verify.0, %sw.bb152 ], [ %s_server_verify.0, %sw.bb151 ], [ %s_server_verify.0, %sw.bb149 ], [ %s_server_verify.0, %sw.bb147 ], [ %s_server_verify.0, %sw.bb145 ], [ %s_server_verify.0, %sw.bb139 ], [ %s_server_verify.0, %sw.bb137 ], [ %s_server_verify.0, %sw.bb131 ], [ %s_server_verify.0, %sw.bb129 ], [ %s_server_verify.0, %sw.bb127 ], [ %s_server_verify.0, %sw.bb125 ], [ %s_server_verify.0, %sw.bb119 ], [ %s_server_verify.0, %sw.bb117 ], [ %s_server_verify.0, %sw.bb111 ], [ %s_server_verify.0, %sw.bb109 ], [ %s_server_verify.0, %sw.bb108 ], [ %s_server_verify.0, %sw.bb106 ], [ %s_server_verify.0, %sw.bb100 ], [ %s_server_verify.0, %sw.bb98 ], [ %s_server_verify.0, %sw.bb96 ], [ 7, %sw.bb89 ], [ 7, %if.then93 ], [ 5, %sw.bb82 ], [ 5, %if.then86 ], [ %s_server_verify.0, %sw.bb79 ], [ %s_server_verify.0, %sw.bb78 ], [ %s_server_verify.0, %sw.bb75 ], [ %s_server_verify.0, %sw.bb65 ], [ %s_server_verify.0, %sw.bb55 ], [ %s_server_verify.0, %if.then49 ], [ %s_server_verify.0, %sw.bb47 ], [ %s_server_verify.0, %if.then53 ], [ %s_server_verify.0, %sw.bb51 ], [ %s_server_verify.0, %sw.bb262 ], [ %s_server_verify.0, %for.cond ]
  %s_cert_file.0.be = phi i8* [ %s_cert_file.0, %if.end44 ], [ %s_cert_file.0, %sw.bb341 ], [ %s_cert_file.0, %sw.bb339 ], [ %s_cert_file.0, %sw.bb337 ], [ %s_cert_file.0, %sw.bb335 ], [ %s_cert_file.0, %sw.bb333 ], [ %s_cert_file.0, %sw.bb331 ], [ %s_cert_file.0, %sw.bb329 ], [ %s_cert_file.0, %sw.bb328 ], [ %s_cert_file.0, %sw.bb326 ], [ %s_cert_file.0, %sw.bb321 ], [ %s_cert_file.0, %sw.bb344 ], [ %s_cert_file.0, %sw.bb345 ], [ %s_cert_file.0, %sw.bb315 ], [ %s_cert_file.0, %sw.bb348 ], [ %s_cert_file.0, %sw.bb351 ], [ %s_cert_file.0, %sw.bb311 ], [ %s_cert_file.0, %sw.bb309 ], [ %s_cert_file.0, %sw.bb308 ], [ %s_cert_file.0, %sw.bb307 ], [ %s_cert_file.0, %sw.bb304 ], [ %s_cert_file.0, %sw.bb303 ], [ %s_cert_file.0, %sw.bb381 ], [ %s_cert_file.0, %sw.bb382 ], [ %s_cert_file.0, %sw.bb301 ], [ %s_cert_file.0, %sw.bb299 ], [ %s_cert_file.0, %sw.bb297 ], [ %s_cert_file.0, %sw.bb296 ], [ %s_cert_file.0, %sw.bb295 ], [ %s_cert_file.0, %sw.bb294 ], [ %s_cert_file.0, %sw.bb293 ], [ %s_cert_file.0, %sw.bb292 ], [ %s_cert_file.0, %sw.bb290 ], [ %s_cert_file.0, %sw.bb289 ], [ %s_cert_file.0, %sw.bb288 ], [ %s_cert_file.0, %sw.bb287 ], [ %s_cert_file.0, %sw.bb286 ], [ %s_cert_file.0, %sw.bb280 ], [ %s_cert_file.0, %sw.bb274 ], [ %s_cert_file.0, %sw.bb272 ], [ %s_cert_file.0, %sw.bb260 ], [ %s_cert_file.0, %sw.bb258 ], [ %s_cert_file.0, %sw.bb257 ], [ %s_cert_file.0, %sw.bb256 ], [ %s_cert_file.0, %sw.bb255 ], [ %s_cert_file.0, %sw.bb254 ], [ %s_cert_file.0, %sw.bb253 ], [ %s_cert_file.0, %sw.bb252 ], [ %s_cert_file.0, %sw.bb251 ], [ %s_cert_file.0, %sw.bb250 ], [ %s_cert_file.0, %sw.bb249 ], [ %s_cert_file.0, %sw.bb246 ], [ %s_cert_file.0, %sw.bb245 ], [ %s_cert_file.0, %sw.bb243 ], [ %s_cert_file.0, %sw.bb236 ], [ %s_cert_file.0, %sw.bb234 ], [ %s_cert_file.0, %sw.bb232 ], [ %s_cert_file.0, %sw.bb229 ], [ %s_cert_file.0, %sw.bb228 ], [ %s_cert_file.0, %sw.bb227 ], [ %s_cert_file.0, %sw.bb226 ], [ %s_cert_file.0, %sw.bb225 ], [ %s_cert_file.0, %sw.bb224 ], [ %s_cert_file.0, %sw.bb223 ], [ %s_cert_file.0, %sw.bb222 ], [ %s_cert_file.0, %sw.bb221 ], [ %s_cert_file.0, %sw.bb219 ], [ %s_cert_file.0, %sw.bb217 ], [ %s_cert_file.0, %sw.bb216 ], [ %s_cert_file.0, %sw.bb214 ], [ %s_cert_file.0, %sw.bb213 ], [ %s_cert_file.0, %sw.bb212 ], [ %s_cert_file.0, %sw.bb211 ], [ %s_cert_file.0, %sw.bb206 ], [ %s_cert_file.0, %sw.bb354 ], [ %s_cert_file.0, %sw.bb357 ], [ %s_cert_file.0, %if.end203 ], [ %s_cert_file.0, %sw.bb359 ], [ %s_cert_file.0, %sw.bb367 ], [ %s_cert_file.0, %lor.lhs.false189 ], [ %s_cert_file.0, %sw.bb375 ], [ %s_cert_file.0, %sw.bb380 ], [ %s_cert_file.0, %sw.bb168 ], [ %s_cert_file.0, %sw.bb167 ], [ %s_cert_file.0, %sw.bb166 ], [ %s_cert_file.0, %sw.bb164 ], [ %s_cert_file.0, %sw.bb162 ], [ %s_cert_file.0, %sw.bb161 ], [ %s_cert_file.0, %sw.bb159 ], [ %s_cert_file.0, %sw.bb157 ], [ %s_cert_file.0, %sw.bb155 ], [ %s_cert_file.0, %sw.bb154 ], [ %s_cert_file.0, %sw.bb152 ], [ %s_cert_file.0, %sw.bb151 ], [ %s_cert_file.0, %sw.bb149 ], [ %s_cert_file.0, %sw.bb147 ], [ %s_cert_file.0, %sw.bb145 ], [ %s_cert_file.0, %sw.bb139 ], [ %s_cert_file.0, %sw.bb137 ], [ %s_cert_file.0, %sw.bb131 ], [ %s_cert_file.0, %sw.bb129 ], [ %s_cert_file.0, %sw.bb127 ], [ %s_cert_file.0, %sw.bb125 ], [ %s_cert_file.0, %sw.bb119 ], [ %s_cert_file.0, %sw.bb117 ], [ %s_cert_file.0, %sw.bb111 ], [ %s_cert_file.0, %sw.bb109 ], [ %s_cert_file.0, %sw.bb108 ], [ %s_cert_file.0, %sw.bb106 ], [ %s_cert_file.0, %sw.bb100 ], [ %call99, %sw.bb98 ], [ %s_cert_file.0, %sw.bb96 ], [ %s_cert_file.0, %sw.bb89 ], [ %s_cert_file.0, %if.then93 ], [ %s_cert_file.0, %sw.bb82 ], [ %s_cert_file.0, %if.then86 ], [ %s_cert_file.0, %sw.bb79 ], [ %s_cert_file.0, %sw.bb78 ], [ %s_cert_file.0, %sw.bb75 ], [ %s_cert_file.0, %sw.bb65 ], [ %s_cert_file.0, %sw.bb55 ], [ %s_cert_file.0, %if.then49 ], [ %s_cert_file.0, %sw.bb47 ], [ %s_cert_file.0, %if.then53 ], [ %s_cert_file.0, %sw.bb51 ], [ %s_cert_file.0, %sw.bb262 ], [ %s_cert_file.0, %for.cond ]
  %s_key_file.0.be = phi i8* [ %s_key_file.0, %if.end44 ], [ %s_key_file.0, %sw.bb341 ], [ %s_key_file.0, %sw.bb339 ], [ %s_key_file.0, %sw.bb337 ], [ %s_key_file.0, %sw.bb335 ], [ %s_key_file.0, %sw.bb333 ], [ %s_key_file.0, %sw.bb331 ], [ %s_key_file.0, %sw.bb329 ], [ %s_key_file.0, %sw.bb328 ], [ %s_key_file.0, %sw.bb326 ], [ %s_key_file.0, %sw.bb321 ], [ %s_key_file.0, %sw.bb344 ], [ %s_key_file.0, %sw.bb345 ], [ %s_key_file.0, %sw.bb315 ], [ %s_key_file.0, %sw.bb348 ], [ %s_key_file.0, %sw.bb351 ], [ %s_key_file.0, %sw.bb311 ], [ %s_key_file.0, %sw.bb309 ], [ %s_key_file.0, %sw.bb308 ], [ %s_key_file.0, %sw.bb307 ], [ %s_key_file.0, %sw.bb304 ], [ %s_key_file.0, %sw.bb303 ], [ %s_key_file.0, %sw.bb381 ], [ %s_key_file.0, %sw.bb382 ], [ %s_key_file.0, %sw.bb301 ], [ %s_key_file.0, %sw.bb299 ], [ %s_key_file.0, %sw.bb297 ], [ %s_key_file.0, %sw.bb296 ], [ %s_key_file.0, %sw.bb295 ], [ %s_key_file.0, %sw.bb294 ], [ %s_key_file.0, %sw.bb293 ], [ %s_key_file.0, %sw.bb292 ], [ %s_key_file.0, %sw.bb290 ], [ %s_key_file.0, %sw.bb289 ], [ %s_key_file.0, %sw.bb288 ], [ %s_key_file.0, %sw.bb287 ], [ %s_key_file.0, %sw.bb286 ], [ %s_key_file.0, %sw.bb280 ], [ %s_key_file.0, %sw.bb274 ], [ %s_key_file.0, %sw.bb272 ], [ %s_key_file.0, %sw.bb260 ], [ %s_key_file.0, %sw.bb258 ], [ %s_key_file.0, %sw.bb257 ], [ %s_key_file.0, %sw.bb256 ], [ %s_key_file.0, %sw.bb255 ], [ %s_key_file.0, %sw.bb254 ], [ %s_key_file.0, %sw.bb253 ], [ %s_key_file.0, %sw.bb252 ], [ %s_key_file.0, %sw.bb251 ], [ %s_key_file.0, %sw.bb250 ], [ %s_key_file.0, %sw.bb249 ], [ %s_key_file.0, %sw.bb246 ], [ %s_key_file.0, %sw.bb245 ], [ %s_key_file.0, %sw.bb243 ], [ %s_key_file.0, %sw.bb236 ], [ %s_key_file.0, %sw.bb234 ], [ %s_key_file.0, %sw.bb232 ], [ %s_key_file.0, %sw.bb229 ], [ %s_key_file.0, %sw.bb228 ], [ %s_key_file.0, %sw.bb227 ], [ %s_key_file.0, %sw.bb226 ], [ %s_key_file.0, %sw.bb225 ], [ %s_key_file.0, %sw.bb224 ], [ %s_key_file.0, %sw.bb223 ], [ %s_key_file.0, %sw.bb222 ], [ %s_key_file.0, %sw.bb221 ], [ %s_key_file.0, %sw.bb219 ], [ %s_key_file.0, %sw.bb217 ], [ %s_key_file.0, %sw.bb216 ], [ %s_key_file.0, %sw.bb214 ], [ %s_key_file.0, %sw.bb213 ], [ %s_key_file.0, %sw.bb212 ], [ %s_key_file.0, %sw.bb211 ], [ %s_key_file.0, %sw.bb206 ], [ %s_key_file.0, %sw.bb354 ], [ %s_key_file.0, %sw.bb357 ], [ %s_key_file.0, %if.end203 ], [ %s_key_file.0, %sw.bb359 ], [ %s_key_file.0, %sw.bb367 ], [ %s_key_file.0, %lor.lhs.false189 ], [ %s_key_file.0, %sw.bb375 ], [ %s_key_file.0, %sw.bb380 ], [ %s_key_file.0, %sw.bb168 ], [ %s_key_file.0, %sw.bb167 ], [ %s_key_file.0, %sw.bb166 ], [ %s_key_file.0, %sw.bb164 ], [ %s_key_file.0, %sw.bb162 ], [ %s_key_file.0, %sw.bb161 ], [ %s_key_file.0, %sw.bb159 ], [ %s_key_file.0, %sw.bb157 ], [ %s_key_file.0, %sw.bb155 ], [ %s_key_file.0, %sw.bb154 ], [ %s_key_file.0, %sw.bb152 ], [ %s_key_file.0, %sw.bb151 ], [ %s_key_file.0, %sw.bb149 ], [ %s_key_file.0, %sw.bb147 ], [ %s_key_file.0, %sw.bb145 ], [ %s_key_file.0, %sw.bb139 ], [ %s_key_file.0, %sw.bb137 ], [ %s_key_file.0, %sw.bb131 ], [ %s_key_file.0, %sw.bb129 ], [ %s_key_file.0, %sw.bb127 ], [ %s_key_file.0, %sw.bb125 ], [ %s_key_file.0, %sw.bb119 ], [ %call118, %sw.bb117 ], [ %s_key_file.0, %sw.bb111 ], [ %s_key_file.0, %sw.bb109 ], [ %s_key_file.0, %sw.bb108 ], [ %s_key_file.0, %sw.bb106 ], [ %s_key_file.0, %sw.bb100 ], [ %s_key_file.0, %sw.bb98 ], [ %s_key_file.0, %sw.bb96 ], [ %s_key_file.0, %sw.bb89 ], [ %s_key_file.0, %if.then93 ], [ %s_key_file.0, %sw.bb82 ], [ %s_key_file.0, %if.then86 ], [ %s_key_file.0, %sw.bb79 ], [ %s_key_file.0, %sw.bb78 ], [ %s_key_file.0, %sw.bb75 ], [ %s_key_file.0, %sw.bb65 ], [ %s_key_file.0, %sw.bb55 ], [ %s_key_file.0, %if.then49 ], [ %s_key_file.0, %sw.bb47 ], [ %s_key_file.0, %if.then53 ], [ %s_key_file.0, %sw.bb51 ], [ %s_key_file.0, %sw.bb262 ], [ %s_key_file.0, %for.cond ]
  %s_chain_file.0.be = phi i8* [ %s_chain_file.0, %if.end44 ], [ %s_chain_file.0, %sw.bb341 ], [ %s_chain_file.0, %sw.bb339 ], [ %s_chain_file.0, %sw.bb337 ], [ %s_chain_file.0, %sw.bb335 ], [ %s_chain_file.0, %sw.bb333 ], [ %s_chain_file.0, %sw.bb331 ], [ %s_chain_file.0, %sw.bb329 ], [ %s_chain_file.0, %sw.bb328 ], [ %s_chain_file.0, %sw.bb326 ], [ %s_chain_file.0, %sw.bb321 ], [ %s_chain_file.0, %sw.bb344 ], [ %s_chain_file.0, %sw.bb345 ], [ %s_chain_file.0, %sw.bb315 ], [ %s_chain_file.0, %sw.bb348 ], [ %s_chain_file.0, %sw.bb351 ], [ %s_chain_file.0, %sw.bb311 ], [ %s_chain_file.0, %sw.bb309 ], [ %s_chain_file.0, %sw.bb308 ], [ %s_chain_file.0, %sw.bb307 ], [ %s_chain_file.0, %sw.bb304 ], [ %s_chain_file.0, %sw.bb303 ], [ %s_chain_file.0, %sw.bb381 ], [ %s_chain_file.0, %sw.bb382 ], [ %s_chain_file.0, %sw.bb301 ], [ %s_chain_file.0, %sw.bb299 ], [ %s_chain_file.0, %sw.bb297 ], [ %s_chain_file.0, %sw.bb296 ], [ %s_chain_file.0, %sw.bb295 ], [ %s_chain_file.0, %sw.bb294 ], [ %s_chain_file.0, %sw.bb293 ], [ %s_chain_file.0, %sw.bb292 ], [ %s_chain_file.0, %sw.bb290 ], [ %s_chain_file.0, %sw.bb289 ], [ %s_chain_file.0, %sw.bb288 ], [ %s_chain_file.0, %sw.bb287 ], [ %s_chain_file.0, %sw.bb286 ], [ %s_chain_file.0, %sw.bb280 ], [ %s_chain_file.0, %sw.bb274 ], [ %s_chain_file.0, %sw.bb272 ], [ %s_chain_file.0, %sw.bb260 ], [ %s_chain_file.0, %sw.bb258 ], [ %s_chain_file.0, %sw.bb257 ], [ %s_chain_file.0, %sw.bb256 ], [ %s_chain_file.0, %sw.bb255 ], [ %s_chain_file.0, %sw.bb254 ], [ %s_chain_file.0, %sw.bb253 ], [ %s_chain_file.0, %sw.bb252 ], [ %s_chain_file.0, %sw.bb251 ], [ %s_chain_file.0, %sw.bb250 ], [ %s_chain_file.0, %sw.bb249 ], [ %s_chain_file.0, %sw.bb246 ], [ %s_chain_file.0, %sw.bb245 ], [ %s_chain_file.0, %sw.bb243 ], [ %s_chain_file.0, %sw.bb236 ], [ %s_chain_file.0, %sw.bb234 ], [ %s_chain_file.0, %sw.bb232 ], [ %s_chain_file.0, %sw.bb229 ], [ %s_chain_file.0, %sw.bb228 ], [ %s_chain_file.0, %sw.bb227 ], [ %s_chain_file.0, %sw.bb226 ], [ %s_chain_file.0, %sw.bb225 ], [ %s_chain_file.0, %sw.bb224 ], [ %s_chain_file.0, %sw.bb223 ], [ %s_chain_file.0, %sw.bb222 ], [ %s_chain_file.0, %sw.bb221 ], [ %s_chain_file.0, %sw.bb219 ], [ %s_chain_file.0, %sw.bb217 ], [ %s_chain_file.0, %sw.bb216 ], [ %s_chain_file.0, %sw.bb214 ], [ %s_chain_file.0, %sw.bb213 ], [ %s_chain_file.0, %sw.bb212 ], [ %s_chain_file.0, %sw.bb211 ], [ %s_chain_file.0, %sw.bb206 ], [ %s_chain_file.0, %sw.bb354 ], [ %s_chain_file.0, %sw.bb357 ], [ %s_chain_file.0, %if.end203 ], [ %s_chain_file.0, %sw.bb359 ], [ %s_chain_file.0, %sw.bb367 ], [ %s_chain_file.0, %lor.lhs.false189 ], [ %s_chain_file.0, %sw.bb375 ], [ %s_chain_file.0, %sw.bb380 ], [ %s_chain_file.0, %sw.bb168 ], [ %s_chain_file.0, %sw.bb167 ], [ %s_chain_file.0, %sw.bb166 ], [ %s_chain_file.0, %sw.bb164 ], [ %s_chain_file.0, %sw.bb162 ], [ %s_chain_file.0, %sw.bb161 ], [ %s_chain_file.0, %sw.bb159 ], [ %s_chain_file.0, %sw.bb157 ], [ %s_chain_file.0, %sw.bb155 ], [ %s_chain_file.0, %sw.bb154 ], [ %s_chain_file.0, %sw.bb152 ], [ %s_chain_file.0, %sw.bb151 ], [ %s_chain_file.0, %sw.bb149 ], [ %s_chain_file.0, %sw.bb147 ], [ %s_chain_file.0, %sw.bb145 ], [ %s_chain_file.0, %sw.bb139 ], [ %s_chain_file.0, %sw.bb137 ], [ %s_chain_file.0, %sw.bb131 ], [ %s_chain_file.0, %sw.bb129 ], [ %call128, %sw.bb127 ], [ %s_chain_file.0, %sw.bb125 ], [ %s_chain_file.0, %sw.bb119 ], [ %s_chain_file.0, %sw.bb117 ], [ %s_chain_file.0, %sw.bb111 ], [ %s_chain_file.0, %sw.bb109 ], [ %s_chain_file.0, %sw.bb108 ], [ %s_chain_file.0, %sw.bb106 ], [ %s_chain_file.0, %sw.bb100 ], [ %s_chain_file.0, %sw.bb98 ], [ %s_chain_file.0, %sw.bb96 ], [ %s_chain_file.0, %sw.bb89 ], [ %s_chain_file.0, %if.then93 ], [ %s_chain_file.0, %sw.bb82 ], [ %s_chain_file.0, %if.then86 ], [ %s_chain_file.0, %sw.bb79 ], [ %s_chain_file.0, %sw.bb78 ], [ %s_chain_file.0, %sw.bb75 ], [ %s_chain_file.0, %sw.bb65 ], [ %s_chain_file.0, %sw.bb55 ], [ %s_chain_file.0, %if.then49 ], [ %s_chain_file.0, %sw.bb47 ], [ %s_chain_file.0, %if.then53 ], [ %s_chain_file.0, %sw.bb51 ], [ %s_chain_file.0, %sw.bb262 ], [ %s_chain_file.0, %for.cond ]
  %s_cert_file2.0.be = phi i8* [ %s_cert_file2.0, %if.end44 ], [ %s_cert_file2.0, %sw.bb341 ], [ %s_cert_file2.0, %sw.bb339 ], [ %s_cert_file2.0, %sw.bb337 ], [ %s_cert_file2.0, %sw.bb335 ], [ %s_cert_file2.0, %sw.bb333 ], [ %s_cert_file2.0, %sw.bb331 ], [ %call330, %sw.bb329 ], [ %s_cert_file2.0, %sw.bb328 ], [ %s_cert_file2.0, %sw.bb326 ], [ %s_cert_file2.0, %sw.bb321 ], [ %s_cert_file2.0, %sw.bb344 ], [ %s_cert_file2.0, %sw.bb345 ], [ %s_cert_file2.0, %sw.bb315 ], [ %s_cert_file2.0, %sw.bb348 ], [ %s_cert_file2.0, %sw.bb351 ], [ %s_cert_file2.0, %sw.bb311 ], [ %s_cert_file2.0, %sw.bb309 ], [ %s_cert_file2.0, %sw.bb308 ], [ %s_cert_file2.0, %sw.bb307 ], [ %s_cert_file2.0, %sw.bb304 ], [ %s_cert_file2.0, %sw.bb303 ], [ %s_cert_file2.0, %sw.bb381 ], [ %s_cert_file2.0, %sw.bb382 ], [ %s_cert_file2.0, %sw.bb301 ], [ %s_cert_file2.0, %sw.bb299 ], [ %s_cert_file2.0, %sw.bb297 ], [ %s_cert_file2.0, %sw.bb296 ], [ %s_cert_file2.0, %sw.bb295 ], [ %s_cert_file2.0, %sw.bb294 ], [ %s_cert_file2.0, %sw.bb293 ], [ %s_cert_file2.0, %sw.bb292 ], [ %s_cert_file2.0, %sw.bb290 ], [ %s_cert_file2.0, %sw.bb289 ], [ %s_cert_file2.0, %sw.bb288 ], [ %s_cert_file2.0, %sw.bb287 ], [ %s_cert_file2.0, %sw.bb286 ], [ %s_cert_file2.0, %sw.bb280 ], [ %s_cert_file2.0, %sw.bb274 ], [ %s_cert_file2.0, %sw.bb272 ], [ %s_cert_file2.0, %sw.bb260 ], [ %s_cert_file2.0, %sw.bb258 ], [ %s_cert_file2.0, %sw.bb257 ], [ %s_cert_file2.0, %sw.bb256 ], [ %s_cert_file2.0, %sw.bb255 ], [ %s_cert_file2.0, %sw.bb254 ], [ %s_cert_file2.0, %sw.bb253 ], [ %s_cert_file2.0, %sw.bb252 ], [ %s_cert_file2.0, %sw.bb251 ], [ %s_cert_file2.0, %sw.bb250 ], [ %s_cert_file2.0, %sw.bb249 ], [ %s_cert_file2.0, %sw.bb246 ], [ %s_cert_file2.0, %sw.bb245 ], [ %s_cert_file2.0, %sw.bb243 ], [ %s_cert_file2.0, %sw.bb236 ], [ %s_cert_file2.0, %sw.bb234 ], [ %s_cert_file2.0, %sw.bb232 ], [ %s_cert_file2.0, %sw.bb229 ], [ %s_cert_file2.0, %sw.bb228 ], [ %s_cert_file2.0, %sw.bb227 ], [ %s_cert_file2.0, %sw.bb226 ], [ %s_cert_file2.0, %sw.bb225 ], [ %s_cert_file2.0, %sw.bb224 ], [ %s_cert_file2.0, %sw.bb223 ], [ %s_cert_file2.0, %sw.bb222 ], [ %s_cert_file2.0, %sw.bb221 ], [ %s_cert_file2.0, %sw.bb219 ], [ %s_cert_file2.0, %sw.bb217 ], [ %s_cert_file2.0, %sw.bb216 ], [ %s_cert_file2.0, %sw.bb214 ], [ %s_cert_file2.0, %sw.bb213 ], [ %s_cert_file2.0, %sw.bb212 ], [ %s_cert_file2.0, %sw.bb211 ], [ %s_cert_file2.0, %sw.bb206 ], [ %s_cert_file2.0, %sw.bb354 ], [ %s_cert_file2.0, %sw.bb357 ], [ %s_cert_file2.0, %if.end203 ], [ %s_cert_file2.0, %sw.bb359 ], [ %s_cert_file2.0, %sw.bb367 ], [ %s_cert_file2.0, %lor.lhs.false189 ], [ %s_cert_file2.0, %sw.bb375 ], [ %s_cert_file2.0, %sw.bb380 ], [ %s_cert_file2.0, %sw.bb168 ], [ %s_cert_file2.0, %sw.bb167 ], [ %s_cert_file2.0, %sw.bb166 ], [ %s_cert_file2.0, %sw.bb164 ], [ %s_cert_file2.0, %sw.bb162 ], [ %s_cert_file2.0, %sw.bb161 ], [ %s_cert_file2.0, %sw.bb159 ], [ %s_cert_file2.0, %sw.bb157 ], [ %s_cert_file2.0, %sw.bb155 ], [ %s_cert_file2.0, %sw.bb154 ], [ %s_cert_file2.0, %sw.bb152 ], [ %s_cert_file2.0, %sw.bb151 ], [ %s_cert_file2.0, %sw.bb149 ], [ %s_cert_file2.0, %sw.bb147 ], [ %s_cert_file2.0, %sw.bb145 ], [ %s_cert_file2.0, %sw.bb139 ], [ %s_cert_file2.0, %sw.bb137 ], [ %s_cert_file2.0, %sw.bb131 ], [ %s_cert_file2.0, %sw.bb129 ], [ %s_cert_file2.0, %sw.bb127 ], [ %s_cert_file2.0, %sw.bb125 ], [ %s_cert_file2.0, %sw.bb119 ], [ %s_cert_file2.0, %sw.bb117 ], [ %s_cert_file2.0, %sw.bb111 ], [ %s_cert_file2.0, %sw.bb109 ], [ %s_cert_file2.0, %sw.bb108 ], [ %s_cert_file2.0, %sw.bb106 ], [ %s_cert_file2.0, %sw.bb100 ], [ %s_cert_file2.0, %sw.bb98 ], [ %s_cert_file2.0, %sw.bb96 ], [ %s_cert_file2.0, %sw.bb89 ], [ %s_cert_file2.0, %if.then93 ], [ %s_cert_file2.0, %sw.bb82 ], [ %s_cert_file2.0, %if.then86 ], [ %s_cert_file2.0, %sw.bb79 ], [ %s_cert_file2.0, %sw.bb78 ], [ %s_cert_file2.0, %sw.bb75 ], [ %s_cert_file2.0, %sw.bb65 ], [ %s_cert_file2.0, %sw.bb55 ], [ %s_cert_file2.0, %if.then49 ], [ %s_cert_file2.0, %sw.bb47 ], [ %s_cert_file2.0, %if.then53 ], [ %s_cert_file2.0, %sw.bb51 ], [ %s_cert_file2.0, %sw.bb262 ], [ %s_cert_file2.0, %for.cond ]
  %s_key_file2.0.be = phi i8* [ %s_key_file2.0, %if.end44 ], [ %s_key_file2.0, %sw.bb341 ], [ %s_key_file2.0, %sw.bb339 ], [ %s_key_file2.0, %sw.bb337 ], [ %s_key_file2.0, %sw.bb335 ], [ %s_key_file2.0, %sw.bb333 ], [ %call332, %sw.bb331 ], [ %s_key_file2.0, %sw.bb329 ], [ %s_key_file2.0, %sw.bb328 ], [ %s_key_file2.0, %sw.bb326 ], [ %s_key_file2.0, %sw.bb321 ], [ %s_key_file2.0, %sw.bb344 ], [ %s_key_file2.0, %sw.bb345 ], [ %s_key_file2.0, %sw.bb315 ], [ %s_key_file2.0, %sw.bb348 ], [ %s_key_file2.0, %sw.bb351 ], [ %s_key_file2.0, %sw.bb311 ], [ %s_key_file2.0, %sw.bb309 ], [ %s_key_file2.0, %sw.bb308 ], [ %s_key_file2.0, %sw.bb307 ], [ %s_key_file2.0, %sw.bb304 ], [ %s_key_file2.0, %sw.bb303 ], [ %s_key_file2.0, %sw.bb381 ], [ %s_key_file2.0, %sw.bb382 ], [ %s_key_file2.0, %sw.bb301 ], [ %s_key_file2.0, %sw.bb299 ], [ %s_key_file2.0, %sw.bb297 ], [ %s_key_file2.0, %sw.bb296 ], [ %s_key_file2.0, %sw.bb295 ], [ %s_key_file2.0, %sw.bb294 ], [ %s_key_file2.0, %sw.bb293 ], [ %s_key_file2.0, %sw.bb292 ], [ %s_key_file2.0, %sw.bb290 ], [ %s_key_file2.0, %sw.bb289 ], [ %s_key_file2.0, %sw.bb288 ], [ %s_key_file2.0, %sw.bb287 ], [ %s_key_file2.0, %sw.bb286 ], [ %s_key_file2.0, %sw.bb280 ], [ %s_key_file2.0, %sw.bb274 ], [ %s_key_file2.0, %sw.bb272 ], [ %s_key_file2.0, %sw.bb260 ], [ %s_key_file2.0, %sw.bb258 ], [ %s_key_file2.0, %sw.bb257 ], [ %s_key_file2.0, %sw.bb256 ], [ %s_key_file2.0, %sw.bb255 ], [ %s_key_file2.0, %sw.bb254 ], [ %s_key_file2.0, %sw.bb253 ], [ %s_key_file2.0, %sw.bb252 ], [ %s_key_file2.0, %sw.bb251 ], [ %s_key_file2.0, %sw.bb250 ], [ %s_key_file2.0, %sw.bb249 ], [ %s_key_file2.0, %sw.bb246 ], [ %s_key_file2.0, %sw.bb245 ], [ %s_key_file2.0, %sw.bb243 ], [ %s_key_file2.0, %sw.bb236 ], [ %s_key_file2.0, %sw.bb234 ], [ %s_key_file2.0, %sw.bb232 ], [ %s_key_file2.0, %sw.bb229 ], [ %s_key_file2.0, %sw.bb228 ], [ %s_key_file2.0, %sw.bb227 ], [ %s_key_file2.0, %sw.bb226 ], [ %s_key_file2.0, %sw.bb225 ], [ %s_key_file2.0, %sw.bb224 ], [ %s_key_file2.0, %sw.bb223 ], [ %s_key_file2.0, %sw.bb222 ], [ %s_key_file2.0, %sw.bb221 ], [ %s_key_file2.0, %sw.bb219 ], [ %s_key_file2.0, %sw.bb217 ], [ %s_key_file2.0, %sw.bb216 ], [ %s_key_file2.0, %sw.bb214 ], [ %s_key_file2.0, %sw.bb213 ], [ %s_key_file2.0, %sw.bb212 ], [ %s_key_file2.0, %sw.bb211 ], [ %s_key_file2.0, %sw.bb206 ], [ %s_key_file2.0, %sw.bb354 ], [ %s_key_file2.0, %sw.bb357 ], [ %s_key_file2.0, %if.end203 ], [ %s_key_file2.0, %sw.bb359 ], [ %s_key_file2.0, %sw.bb367 ], [ %s_key_file2.0, %lor.lhs.false189 ], [ %s_key_file2.0, %sw.bb375 ], [ %s_key_file2.0, %sw.bb380 ], [ %s_key_file2.0, %sw.bb168 ], [ %s_key_file2.0, %sw.bb167 ], [ %s_key_file2.0, %sw.bb166 ], [ %s_key_file2.0, %sw.bb164 ], [ %s_key_file2.0, %sw.bb162 ], [ %s_key_file2.0, %sw.bb161 ], [ %s_key_file2.0, %sw.bb159 ], [ %s_key_file2.0, %sw.bb157 ], [ %s_key_file2.0, %sw.bb155 ], [ %s_key_file2.0, %sw.bb154 ], [ %s_key_file2.0, %sw.bb152 ], [ %s_key_file2.0, %sw.bb151 ], [ %s_key_file2.0, %sw.bb149 ], [ %s_key_file2.0, %sw.bb147 ], [ %s_key_file2.0, %sw.bb145 ], [ %s_key_file2.0, %sw.bb139 ], [ %s_key_file2.0, %sw.bb137 ], [ %s_key_file2.0, %sw.bb131 ], [ %s_key_file2.0, %sw.bb129 ], [ %s_key_file2.0, %sw.bb127 ], [ %s_key_file2.0, %sw.bb125 ], [ %s_key_file2.0, %sw.bb119 ], [ %s_key_file2.0, %sw.bb117 ], [ %s_key_file2.0, %sw.bb111 ], [ %s_key_file2.0, %sw.bb109 ], [ %s_key_file2.0, %sw.bb108 ], [ %s_key_file2.0, %sw.bb106 ], [ %s_key_file2.0, %sw.bb100 ], [ %s_key_file2.0, %sw.bb98 ], [ %s_key_file2.0, %sw.bb96 ], [ %s_key_file2.0, %sw.bb89 ], [ %s_key_file2.0, %if.then93 ], [ %s_key_file2.0, %sw.bb82 ], [ %s_key_file2.0, %if.then86 ], [ %s_key_file2.0, %sw.bb79 ], [ %s_key_file2.0, %sw.bb78 ], [ %s_key_file2.0, %sw.bb75 ], [ %s_key_file2.0, %sw.bb65 ], [ %s_key_file2.0, %sw.bb55 ], [ %s_key_file2.0, %if.then49 ], [ %s_key_file2.0, %sw.bb47 ], [ %s_key_file2.0, %if.then53 ], [ %s_key_file2.0, %sw.bb51 ], [ %s_key_file2.0, %sw.bb262 ], [ %s_key_file2.0, %for.cond ]
  %s_dcert_file.0.be = phi i8* [ %s_dcert_file.0, %if.end44 ], [ %s_dcert_file.0, %sw.bb341 ], [ %s_dcert_file.0, %sw.bb339 ], [ %s_dcert_file.0, %sw.bb337 ], [ %s_dcert_file.0, %sw.bb335 ], [ %s_dcert_file.0, %sw.bb333 ], [ %s_dcert_file.0, %sw.bb331 ], [ %s_dcert_file.0, %sw.bb329 ], [ %s_dcert_file.0, %sw.bb328 ], [ %s_dcert_file.0, %sw.bb326 ], [ %s_dcert_file.0, %sw.bb321 ], [ %s_dcert_file.0, %sw.bb344 ], [ %s_dcert_file.0, %sw.bb345 ], [ %s_dcert_file.0, %sw.bb315 ], [ %s_dcert_file.0, %sw.bb348 ], [ %s_dcert_file.0, %sw.bb351 ], [ %s_dcert_file.0, %sw.bb311 ], [ %s_dcert_file.0, %sw.bb309 ], [ %s_dcert_file.0, %sw.bb308 ], [ %s_dcert_file.0, %sw.bb307 ], [ %s_dcert_file.0, %sw.bb304 ], [ %s_dcert_file.0, %sw.bb303 ], [ %s_dcert_file.0, %sw.bb381 ], [ %s_dcert_file.0, %sw.bb382 ], [ %s_dcert_file.0, %sw.bb301 ], [ %s_dcert_file.0, %sw.bb299 ], [ %s_dcert_file.0, %sw.bb297 ], [ %s_dcert_file.0, %sw.bb296 ], [ %s_dcert_file.0, %sw.bb295 ], [ %s_dcert_file.0, %sw.bb294 ], [ %s_dcert_file.0, %sw.bb293 ], [ %s_dcert_file.0, %sw.bb292 ], [ %s_dcert_file.0, %sw.bb290 ], [ %s_dcert_file.0, %sw.bb289 ], [ %s_dcert_file.0, %sw.bb288 ], [ %s_dcert_file.0, %sw.bb287 ], [ %s_dcert_file.0, %sw.bb286 ], [ %s_dcert_file.0, %sw.bb280 ], [ %s_dcert_file.0, %sw.bb274 ], [ %s_dcert_file.0, %sw.bb272 ], [ %s_dcert_file.0, %sw.bb260 ], [ %s_dcert_file.0, %sw.bb258 ], [ %s_dcert_file.0, %sw.bb257 ], [ %s_dcert_file.0, %sw.bb256 ], [ %s_dcert_file.0, %sw.bb255 ], [ %s_dcert_file.0, %sw.bb254 ], [ %s_dcert_file.0, %sw.bb253 ], [ %s_dcert_file.0, %sw.bb252 ], [ %s_dcert_file.0, %sw.bb251 ], [ %s_dcert_file.0, %sw.bb250 ], [ %s_dcert_file.0, %sw.bb249 ], [ %s_dcert_file.0, %sw.bb246 ], [ %s_dcert_file.0, %sw.bb245 ], [ %s_dcert_file.0, %sw.bb243 ], [ %s_dcert_file.0, %sw.bb236 ], [ %s_dcert_file.0, %sw.bb234 ], [ %s_dcert_file.0, %sw.bb232 ], [ %s_dcert_file.0, %sw.bb229 ], [ %s_dcert_file.0, %sw.bb228 ], [ %s_dcert_file.0, %sw.bb227 ], [ %s_dcert_file.0, %sw.bb226 ], [ %s_dcert_file.0, %sw.bb225 ], [ %s_dcert_file.0, %sw.bb224 ], [ %s_dcert_file.0, %sw.bb223 ], [ %s_dcert_file.0, %sw.bb222 ], [ %s_dcert_file.0, %sw.bb221 ], [ %s_dcert_file.0, %sw.bb219 ], [ %s_dcert_file.0, %sw.bb217 ], [ %s_dcert_file.0, %sw.bb216 ], [ %s_dcert_file.0, %sw.bb214 ], [ %s_dcert_file.0, %sw.bb213 ], [ %s_dcert_file.0, %sw.bb212 ], [ %s_dcert_file.0, %sw.bb211 ], [ %s_dcert_file.0, %sw.bb206 ], [ %s_dcert_file.0, %sw.bb354 ], [ %s_dcert_file.0, %sw.bb357 ], [ %s_dcert_file.0, %if.end203 ], [ %s_dcert_file.0, %sw.bb359 ], [ %s_dcert_file.0, %sw.bb367 ], [ %s_dcert_file.0, %lor.lhs.false189 ], [ %s_dcert_file.0, %sw.bb375 ], [ %s_dcert_file.0, %sw.bb380 ], [ %s_dcert_file.0, %sw.bb168 ], [ %s_dcert_file.0, %sw.bb167 ], [ %s_dcert_file.0, %sw.bb166 ], [ %s_dcert_file.0, %sw.bb164 ], [ %s_dcert_file.0, %sw.bb162 ], [ %s_dcert_file.0, %sw.bb161 ], [ %s_dcert_file.0, %sw.bb159 ], [ %s_dcert_file.0, %sw.bb157 ], [ %s_dcert_file.0, %sw.bb155 ], [ %s_dcert_file.0, %sw.bb154 ], [ %s_dcert_file.0, %sw.bb152 ], [ %s_dcert_file.0, %sw.bb151 ], [ %s_dcert_file.0, %sw.bb149 ], [ %s_dcert_file.0, %sw.bb147 ], [ %s_dcert_file.0, %sw.bb145 ], [ %s_dcert_file.0, %sw.bb139 ], [ %call138, %sw.bb137 ], [ %s_dcert_file.0, %sw.bb131 ], [ %s_dcert_file.0, %sw.bb129 ], [ %s_dcert_file.0, %sw.bb127 ], [ %s_dcert_file.0, %sw.bb125 ], [ %s_dcert_file.0, %sw.bb119 ], [ %s_dcert_file.0, %sw.bb117 ], [ %s_dcert_file.0, %sw.bb111 ], [ %s_dcert_file.0, %sw.bb109 ], [ %s_dcert_file.0, %sw.bb108 ], [ %s_dcert_file.0, %sw.bb106 ], [ %s_dcert_file.0, %sw.bb100 ], [ %s_dcert_file.0, %sw.bb98 ], [ %s_dcert_file.0, %sw.bb96 ], [ %s_dcert_file.0, %sw.bb89 ], [ %s_dcert_file.0, %if.then93 ], [ %s_dcert_file.0, %sw.bb82 ], [ %s_dcert_file.0, %if.then86 ], [ %s_dcert_file.0, %sw.bb79 ], [ %s_dcert_file.0, %sw.bb78 ], [ %s_dcert_file.0, %sw.bb75 ], [ %s_dcert_file.0, %sw.bb65 ], [ %s_dcert_file.0, %sw.bb55 ], [ %s_dcert_file.0, %if.then49 ], [ %s_dcert_file.0, %sw.bb47 ], [ %s_dcert_file.0, %if.then53 ], [ %s_dcert_file.0, %sw.bb51 ], [ %s_dcert_file.0, %sw.bb262 ], [ %s_dcert_file.0, %for.cond ]
  %s_dkey_file.0.be = phi i8* [ %s_dkey_file.0, %if.end44 ], [ %s_dkey_file.0, %sw.bb341 ], [ %s_dkey_file.0, %sw.bb339 ], [ %s_dkey_file.0, %sw.bb337 ], [ %s_dkey_file.0, %sw.bb335 ], [ %s_dkey_file.0, %sw.bb333 ], [ %s_dkey_file.0, %sw.bb331 ], [ %s_dkey_file.0, %sw.bb329 ], [ %s_dkey_file.0, %sw.bb328 ], [ %s_dkey_file.0, %sw.bb326 ], [ %s_dkey_file.0, %sw.bb321 ], [ %s_dkey_file.0, %sw.bb344 ], [ %s_dkey_file.0, %sw.bb345 ], [ %s_dkey_file.0, %sw.bb315 ], [ %s_dkey_file.0, %sw.bb348 ], [ %s_dkey_file.0, %sw.bb351 ], [ %s_dkey_file.0, %sw.bb311 ], [ %s_dkey_file.0, %sw.bb309 ], [ %s_dkey_file.0, %sw.bb308 ], [ %s_dkey_file.0, %sw.bb307 ], [ %s_dkey_file.0, %sw.bb304 ], [ %s_dkey_file.0, %sw.bb303 ], [ %s_dkey_file.0, %sw.bb381 ], [ %s_dkey_file.0, %sw.bb382 ], [ %s_dkey_file.0, %sw.bb301 ], [ %s_dkey_file.0, %sw.bb299 ], [ %s_dkey_file.0, %sw.bb297 ], [ %s_dkey_file.0, %sw.bb296 ], [ %s_dkey_file.0, %sw.bb295 ], [ %s_dkey_file.0, %sw.bb294 ], [ %s_dkey_file.0, %sw.bb293 ], [ %s_dkey_file.0, %sw.bb292 ], [ %s_dkey_file.0, %sw.bb290 ], [ %s_dkey_file.0, %sw.bb289 ], [ %s_dkey_file.0, %sw.bb288 ], [ %s_dkey_file.0, %sw.bb287 ], [ %s_dkey_file.0, %sw.bb286 ], [ %s_dkey_file.0, %sw.bb280 ], [ %s_dkey_file.0, %sw.bb274 ], [ %s_dkey_file.0, %sw.bb272 ], [ %s_dkey_file.0, %sw.bb260 ], [ %s_dkey_file.0, %sw.bb258 ], [ %s_dkey_file.0, %sw.bb257 ], [ %s_dkey_file.0, %sw.bb256 ], [ %s_dkey_file.0, %sw.bb255 ], [ %s_dkey_file.0, %sw.bb254 ], [ %s_dkey_file.0, %sw.bb253 ], [ %s_dkey_file.0, %sw.bb252 ], [ %s_dkey_file.0, %sw.bb251 ], [ %s_dkey_file.0, %sw.bb250 ], [ %s_dkey_file.0, %sw.bb249 ], [ %s_dkey_file.0, %sw.bb246 ], [ %s_dkey_file.0, %sw.bb245 ], [ %s_dkey_file.0, %sw.bb243 ], [ %s_dkey_file.0, %sw.bb236 ], [ %s_dkey_file.0, %sw.bb234 ], [ %s_dkey_file.0, %sw.bb232 ], [ %s_dkey_file.0, %sw.bb229 ], [ %s_dkey_file.0, %sw.bb228 ], [ %s_dkey_file.0, %sw.bb227 ], [ %s_dkey_file.0, %sw.bb226 ], [ %s_dkey_file.0, %sw.bb225 ], [ %s_dkey_file.0, %sw.bb224 ], [ %s_dkey_file.0, %sw.bb223 ], [ %s_dkey_file.0, %sw.bb222 ], [ %s_dkey_file.0, %sw.bb221 ], [ %s_dkey_file.0, %sw.bb219 ], [ %s_dkey_file.0, %sw.bb217 ], [ %s_dkey_file.0, %sw.bb216 ], [ %s_dkey_file.0, %sw.bb214 ], [ %s_dkey_file.0, %sw.bb213 ], [ %s_dkey_file.0, %sw.bb212 ], [ %s_dkey_file.0, %sw.bb211 ], [ %s_dkey_file.0, %sw.bb206 ], [ %s_dkey_file.0, %sw.bb354 ], [ %s_dkey_file.0, %sw.bb357 ], [ %s_dkey_file.0, %if.end203 ], [ %s_dkey_file.0, %sw.bb359 ], [ %s_dkey_file.0, %sw.bb367 ], [ %s_dkey_file.0, %lor.lhs.false189 ], [ %s_dkey_file.0, %sw.bb375 ], [ %s_dkey_file.0, %sw.bb380 ], [ %s_dkey_file.0, %sw.bb168 ], [ %s_dkey_file.0, %sw.bb167 ], [ %s_dkey_file.0, %sw.bb166 ], [ %s_dkey_file.0, %sw.bb164 ], [ %s_dkey_file.0, %sw.bb162 ], [ %s_dkey_file.0, %sw.bb161 ], [ %s_dkey_file.0, %sw.bb159 ], [ %s_dkey_file.0, %sw.bb157 ], [ %s_dkey_file.0, %sw.bb155 ], [ %s_dkey_file.0, %sw.bb154 ], [ %s_dkey_file.0, %sw.bb152 ], [ %s_dkey_file.0, %sw.bb151 ], [ %s_dkey_file.0, %sw.bb149 ], [ %call148, %sw.bb147 ], [ %s_dkey_file.0, %sw.bb145 ], [ %s_dkey_file.0, %sw.bb139 ], [ %s_dkey_file.0, %sw.bb137 ], [ %s_dkey_file.0, %sw.bb131 ], [ %s_dkey_file.0, %sw.bb129 ], [ %s_dkey_file.0, %sw.bb127 ], [ %s_dkey_file.0, %sw.bb125 ], [ %s_dkey_file.0, %sw.bb119 ], [ %s_dkey_file.0, %sw.bb117 ], [ %s_dkey_file.0, %sw.bb111 ], [ %s_dkey_file.0, %sw.bb109 ], [ %s_dkey_file.0, %sw.bb108 ], [ %s_dkey_file.0, %sw.bb106 ], [ %s_dkey_file.0, %sw.bb100 ], [ %s_dkey_file.0, %sw.bb98 ], [ %s_dkey_file.0, %sw.bb96 ], [ %s_dkey_file.0, %sw.bb89 ], [ %s_dkey_file.0, %if.then93 ], [ %s_dkey_file.0, %sw.bb82 ], [ %s_dkey_file.0, %if.then86 ], [ %s_dkey_file.0, %sw.bb79 ], [ %s_dkey_file.0, %sw.bb78 ], [ %s_dkey_file.0, %sw.bb75 ], [ %s_dkey_file.0, %sw.bb65 ], [ %s_dkey_file.0, %sw.bb55 ], [ %s_dkey_file.0, %if.then49 ], [ %s_dkey_file.0, %sw.bb47 ], [ %s_dkey_file.0, %if.then53 ], [ %s_dkey_file.0, %sw.bb51 ], [ %s_dkey_file.0, %sw.bb262 ], [ %s_dkey_file.0, %for.cond ]
  %s_dchain_file.0.be = phi i8* [ %s_dchain_file.0, %if.end44 ], [ %s_dchain_file.0, %sw.bb341 ], [ %s_dchain_file.0, %sw.bb339 ], [ %s_dchain_file.0, %sw.bb337 ], [ %s_dchain_file.0, %sw.bb335 ], [ %s_dchain_file.0, %sw.bb333 ], [ %s_dchain_file.0, %sw.bb331 ], [ %s_dchain_file.0, %sw.bb329 ], [ %s_dchain_file.0, %sw.bb328 ], [ %s_dchain_file.0, %sw.bb326 ], [ %s_dchain_file.0, %sw.bb321 ], [ %s_dchain_file.0, %sw.bb344 ], [ %s_dchain_file.0, %sw.bb345 ], [ %s_dchain_file.0, %sw.bb315 ], [ %s_dchain_file.0, %sw.bb348 ], [ %s_dchain_file.0, %sw.bb351 ], [ %s_dchain_file.0, %sw.bb311 ], [ %s_dchain_file.0, %sw.bb309 ], [ %s_dchain_file.0, %sw.bb308 ], [ %s_dchain_file.0, %sw.bb307 ], [ %s_dchain_file.0, %sw.bb304 ], [ %s_dchain_file.0, %sw.bb303 ], [ %s_dchain_file.0, %sw.bb381 ], [ %s_dchain_file.0, %sw.bb382 ], [ %s_dchain_file.0, %sw.bb301 ], [ %s_dchain_file.0, %sw.bb299 ], [ %s_dchain_file.0, %sw.bb297 ], [ %s_dchain_file.0, %sw.bb296 ], [ %s_dchain_file.0, %sw.bb295 ], [ %s_dchain_file.0, %sw.bb294 ], [ %s_dchain_file.0, %sw.bb293 ], [ %s_dchain_file.0, %sw.bb292 ], [ %s_dchain_file.0, %sw.bb290 ], [ %s_dchain_file.0, %sw.bb289 ], [ %s_dchain_file.0, %sw.bb288 ], [ %s_dchain_file.0, %sw.bb287 ], [ %s_dchain_file.0, %sw.bb286 ], [ %s_dchain_file.0, %sw.bb280 ], [ %s_dchain_file.0, %sw.bb274 ], [ %s_dchain_file.0, %sw.bb272 ], [ %s_dchain_file.0, %sw.bb260 ], [ %s_dchain_file.0, %sw.bb258 ], [ %s_dchain_file.0, %sw.bb257 ], [ %s_dchain_file.0, %sw.bb256 ], [ %s_dchain_file.0, %sw.bb255 ], [ %s_dchain_file.0, %sw.bb254 ], [ %s_dchain_file.0, %sw.bb253 ], [ %s_dchain_file.0, %sw.bb252 ], [ %s_dchain_file.0, %sw.bb251 ], [ %s_dchain_file.0, %sw.bb250 ], [ %s_dchain_file.0, %sw.bb249 ], [ %s_dchain_file.0, %sw.bb246 ], [ %s_dchain_file.0, %sw.bb245 ], [ %s_dchain_file.0, %sw.bb243 ], [ %s_dchain_file.0, %sw.bb236 ], [ %s_dchain_file.0, %sw.bb234 ], [ %s_dchain_file.0, %sw.bb232 ], [ %s_dchain_file.0, %sw.bb229 ], [ %s_dchain_file.0, %sw.bb228 ], [ %s_dchain_file.0, %sw.bb227 ], [ %s_dchain_file.0, %sw.bb226 ], [ %s_dchain_file.0, %sw.bb225 ], [ %s_dchain_file.0, %sw.bb224 ], [ %s_dchain_file.0, %sw.bb223 ], [ %s_dchain_file.0, %sw.bb222 ], [ %s_dchain_file.0, %sw.bb221 ], [ %s_dchain_file.0, %sw.bb219 ], [ %s_dchain_file.0, %sw.bb217 ], [ %s_dchain_file.0, %sw.bb216 ], [ %s_dchain_file.0, %sw.bb214 ], [ %s_dchain_file.0, %sw.bb213 ], [ %s_dchain_file.0, %sw.bb212 ], [ %s_dchain_file.0, %sw.bb211 ], [ %s_dchain_file.0, %sw.bb206 ], [ %s_dchain_file.0, %sw.bb354 ], [ %s_dchain_file.0, %sw.bb357 ], [ %s_dchain_file.0, %if.end203 ], [ %s_dchain_file.0, %sw.bb359 ], [ %s_dchain_file.0, %sw.bb367 ], [ %s_dchain_file.0, %lor.lhs.false189 ], [ %s_dchain_file.0, %sw.bb375 ], [ %s_dchain_file.0, %sw.bb380 ], [ %s_dchain_file.0, %sw.bb168 ], [ %s_dchain_file.0, %sw.bb167 ], [ %s_dchain_file.0, %sw.bb166 ], [ %s_dchain_file.0, %sw.bb164 ], [ %s_dchain_file.0, %sw.bb162 ], [ %s_dchain_file.0, %sw.bb161 ], [ %s_dchain_file.0, %sw.bb159 ], [ %s_dchain_file.0, %sw.bb157 ], [ %s_dchain_file.0, %sw.bb155 ], [ %s_dchain_file.0, %sw.bb154 ], [ %s_dchain_file.0, %sw.bb152 ], [ %s_dchain_file.0, %sw.bb151 ], [ %call150, %sw.bb149 ], [ %s_dchain_file.0, %sw.bb147 ], [ %s_dchain_file.0, %sw.bb145 ], [ %s_dchain_file.0, %sw.bb139 ], [ %s_dchain_file.0, %sw.bb137 ], [ %s_dchain_file.0, %sw.bb131 ], [ %s_dchain_file.0, %sw.bb129 ], [ %s_dchain_file.0, %sw.bb127 ], [ %s_dchain_file.0, %sw.bb125 ], [ %s_dchain_file.0, %sw.bb119 ], [ %s_dchain_file.0, %sw.bb117 ], [ %s_dchain_file.0, %sw.bb111 ], [ %s_dchain_file.0, %sw.bb109 ], [ %s_dchain_file.0, %sw.bb108 ], [ %s_dchain_file.0, %sw.bb106 ], [ %s_dchain_file.0, %sw.bb100 ], [ %s_dchain_file.0, %sw.bb98 ], [ %s_dchain_file.0, %sw.bb96 ], [ %s_dchain_file.0, %sw.bb89 ], [ %s_dchain_file.0, %if.then93 ], [ %s_dchain_file.0, %sw.bb82 ], [ %s_dchain_file.0, %if.then86 ], [ %s_dchain_file.0, %sw.bb79 ], [ %s_dchain_file.0, %sw.bb78 ], [ %s_dchain_file.0, %sw.bb75 ], [ %s_dchain_file.0, %sw.bb65 ], [ %s_dchain_file.0, %sw.bb55 ], [ %s_dchain_file.0, %if.then49 ], [ %s_dchain_file.0, %sw.bb47 ], [ %s_dchain_file.0, %if.then53 ], [ %s_dchain_file.0, %sw.bb51 ], [ %s_dchain_file.0, %sw.bb262 ], [ %s_dchain_file.0, %for.cond ]
  %s_tlsextstatus.0.be = phi i32 [ %s_tlsextstatus.0, %if.end44 ], [ %s_tlsextstatus.0, %sw.bb341 ], [ %s_tlsextstatus.0, %sw.bb339 ], [ %s_tlsextstatus.0, %sw.bb337 ], [ %s_tlsextstatus.0, %sw.bb335 ], [ %s_tlsextstatus.0, %sw.bb333 ], [ %s_tlsextstatus.0, %sw.bb331 ], [ %s_tlsextstatus.0, %sw.bb329 ], [ %s_tlsextstatus.0, %sw.bb328 ], [ %s_tlsextstatus.0, %sw.bb326 ], [ %s_tlsextstatus.0, %sw.bb321 ], [ %s_tlsextstatus.0, %sw.bb344 ], [ %s_tlsextstatus.0, %sw.bb345 ], [ %s_tlsextstatus.0, %sw.bb315 ], [ %s_tlsextstatus.0, %sw.bb348 ], [ %s_tlsextstatus.0, %sw.bb351 ], [ %s_tlsextstatus.0, %sw.bb311 ], [ %s_tlsextstatus.0, %sw.bb309 ], [ %s_tlsextstatus.0, %sw.bb308 ], [ %s_tlsextstatus.0, %sw.bb307 ], [ %s_tlsextstatus.0, %sw.bb304 ], [ %s_tlsextstatus.0, %sw.bb303 ], [ %s_tlsextstatus.0, %sw.bb381 ], [ %s_tlsextstatus.0, %sw.bb382 ], [ %s_tlsextstatus.0, %sw.bb301 ], [ %s_tlsextstatus.0, %sw.bb299 ], [ %s_tlsextstatus.0, %sw.bb297 ], [ %s_tlsextstatus.0, %sw.bb296 ], [ %s_tlsextstatus.0, %sw.bb295 ], [ %s_tlsextstatus.0, %sw.bb294 ], [ %s_tlsextstatus.0, %sw.bb293 ], [ %s_tlsextstatus.0, %sw.bb292 ], [ %s_tlsextstatus.0, %sw.bb290 ], [ %s_tlsextstatus.0, %sw.bb289 ], [ %s_tlsextstatus.0, %sw.bb288 ], [ %s_tlsextstatus.0, %sw.bb287 ], [ %s_tlsextstatus.0, %sw.bb286 ], [ %s_tlsextstatus.0, %sw.bb280 ], [ %s_tlsextstatus.0, %sw.bb274 ], [ %s_tlsextstatus.0, %sw.bb272 ], [ %s_tlsextstatus.0, %sw.bb260 ], [ %s_tlsextstatus.0, %sw.bb258 ], [ %s_tlsextstatus.0, %sw.bb257 ], [ %s_tlsextstatus.0, %sw.bb256 ], [ %s_tlsextstatus.0, %sw.bb255 ], [ %s_tlsextstatus.0, %sw.bb254 ], [ %s_tlsextstatus.0, %sw.bb253 ], [ %s_tlsextstatus.0, %sw.bb252 ], [ %s_tlsextstatus.0, %sw.bb251 ], [ %s_tlsextstatus.0, %sw.bb250 ], [ %s_tlsextstatus.0, %sw.bb249 ], [ %s_tlsextstatus.0, %sw.bb246 ], [ %s_tlsextstatus.0, %sw.bb245 ], [ 1, %sw.bb243 ], [ 1, %sw.bb236 ], [ %s_tlsextstatus.0, %sw.bb234 ], [ %s_tlsextstatus.0, %sw.bb232 ], [ 1, %sw.bb229 ], [ 1, %sw.bb228 ], [ 1, %sw.bb227 ], [ %s_tlsextstatus.0, %sw.bb226 ], [ %s_tlsextstatus.0, %sw.bb225 ], [ %s_tlsextstatus.0, %sw.bb224 ], [ %s_tlsextstatus.0, %sw.bb223 ], [ %s_tlsextstatus.0, %sw.bb222 ], [ %s_tlsextstatus.0, %sw.bb221 ], [ %s_tlsextstatus.0, %sw.bb219 ], [ %s_tlsextstatus.0, %sw.bb217 ], [ %s_tlsextstatus.0, %sw.bb216 ], [ %s_tlsextstatus.0, %sw.bb214 ], [ %s_tlsextstatus.0, %sw.bb213 ], [ %s_tlsextstatus.0, %sw.bb212 ], [ %s_tlsextstatus.0, %sw.bb211 ], [ %s_tlsextstatus.0, %sw.bb206 ], [ %s_tlsextstatus.0, %sw.bb354 ], [ %s_tlsextstatus.0, %sw.bb357 ], [ %s_tlsextstatus.0, %if.end203 ], [ %s_tlsextstatus.0, %sw.bb359 ], [ %s_tlsextstatus.0, %sw.bb367 ], [ %s_tlsextstatus.0, %lor.lhs.false189 ], [ %s_tlsextstatus.0, %sw.bb375 ], [ %s_tlsextstatus.0, %sw.bb380 ], [ %s_tlsextstatus.0, %sw.bb168 ], [ %s_tlsextstatus.0, %sw.bb167 ], [ %s_tlsextstatus.0, %sw.bb166 ], [ %s_tlsextstatus.0, %sw.bb164 ], [ %s_tlsextstatus.0, %sw.bb162 ], [ %s_tlsextstatus.0, %sw.bb161 ], [ %s_tlsextstatus.0, %sw.bb159 ], [ %s_tlsextstatus.0, %sw.bb157 ], [ %s_tlsextstatus.0, %sw.bb155 ], [ %s_tlsextstatus.0, %sw.bb154 ], [ %s_tlsextstatus.0, %sw.bb152 ], [ %s_tlsextstatus.0, %sw.bb151 ], [ %s_tlsextstatus.0, %sw.bb149 ], [ %s_tlsextstatus.0, %sw.bb147 ], [ %s_tlsextstatus.0, %sw.bb145 ], [ %s_tlsextstatus.0, %sw.bb139 ], [ %s_tlsextstatus.0, %sw.bb137 ], [ %s_tlsextstatus.0, %sw.bb131 ], [ %s_tlsextstatus.0, %sw.bb129 ], [ %s_tlsextstatus.0, %sw.bb127 ], [ %s_tlsextstatus.0, %sw.bb125 ], [ %s_tlsextstatus.0, %sw.bb119 ], [ %s_tlsextstatus.0, %sw.bb117 ], [ %s_tlsextstatus.0, %sw.bb111 ], [ %s_tlsextstatus.0, %sw.bb109 ], [ %s_tlsextstatus.0, %sw.bb108 ], [ %s_tlsextstatus.0, %sw.bb106 ], [ %s_tlsextstatus.0, %sw.bb100 ], [ %s_tlsextstatus.0, %sw.bb98 ], [ %s_tlsextstatus.0, %sw.bb96 ], [ %s_tlsextstatus.0, %sw.bb89 ], [ %s_tlsextstatus.0, %if.then93 ], [ %s_tlsextstatus.0, %sw.bb82 ], [ %s_tlsextstatus.0, %if.then86 ], [ %s_tlsextstatus.0, %sw.bb79 ], [ %s_tlsextstatus.0, %sw.bb78 ], [ %s_tlsextstatus.0, %sw.bb75 ], [ %s_tlsextstatus.0, %sw.bb65 ], [ %s_tlsextstatus.0, %sw.bb55 ], [ %s_tlsextstatus.0, %if.then49 ], [ %s_tlsextstatus.0, %sw.bb47 ], [ %s_tlsextstatus.0, %if.then53 ], [ %s_tlsextstatus.0, %sw.bb51 ], [ %s_tlsextstatus.0, %sw.bb262 ], [ %s_tlsextstatus.0, %for.cond ]
  %no_resume_ephemeral.0.be = phi i32 [ %no_resume_ephemeral.0, %if.end44 ], [ %no_resume_ephemeral.0, %sw.bb341 ], [ %no_resume_ephemeral.0, %sw.bb339 ], [ %no_resume_ephemeral.0, %sw.bb337 ], [ %no_resume_ephemeral.0, %sw.bb335 ], [ %no_resume_ephemeral.0, %sw.bb333 ], [ %no_resume_ephemeral.0, %sw.bb331 ], [ %no_resume_ephemeral.0, %sw.bb329 ], [ %no_resume_ephemeral.0, %sw.bb328 ], [ %no_resume_ephemeral.0, %sw.bb326 ], [ %no_resume_ephemeral.0, %sw.bb321 ], [ %no_resume_ephemeral.0, %sw.bb344 ], [ %no_resume_ephemeral.0, %sw.bb345 ], [ %no_resume_ephemeral.0, %sw.bb315 ], [ %no_resume_ephemeral.0, %sw.bb348 ], [ %no_resume_ephemeral.0, %sw.bb351 ], [ %no_resume_ephemeral.0, %sw.bb311 ], [ %no_resume_ephemeral.0, %sw.bb309 ], [ %no_resume_ephemeral.0, %sw.bb308 ], [ %no_resume_ephemeral.0, %sw.bb307 ], [ %no_resume_ephemeral.0, %sw.bb304 ], [ %no_resume_ephemeral.0, %sw.bb303 ], [ %no_resume_ephemeral.0, %sw.bb381 ], [ %no_resume_ephemeral.0, %sw.bb382 ], [ %no_resume_ephemeral.0, %sw.bb301 ], [ %no_resume_ephemeral.0, %sw.bb299 ], [ %no_resume_ephemeral.0, %sw.bb297 ], [ %no_resume_ephemeral.0, %sw.bb296 ], [ %no_resume_ephemeral.0, %sw.bb295 ], [ %no_resume_ephemeral.0, %sw.bb294 ], [ %no_resume_ephemeral.0, %sw.bb293 ], [ %no_resume_ephemeral.0, %sw.bb292 ], [ %no_resume_ephemeral.0, %sw.bb290 ], [ %no_resume_ephemeral.0, %sw.bb289 ], [ %no_resume_ephemeral.0, %sw.bb288 ], [ %no_resume_ephemeral.0, %sw.bb287 ], [ %no_resume_ephemeral.0, %sw.bb286 ], [ %no_resume_ephemeral.0, %sw.bb280 ], [ %no_resume_ephemeral.0, %sw.bb274 ], [ %no_resume_ephemeral.0, %sw.bb272 ], [ %no_resume_ephemeral.0, %sw.bb260 ], [ %no_resume_ephemeral.0, %sw.bb258 ], [ 1, %sw.bb257 ], [ %no_resume_ephemeral.0, %sw.bb256 ], [ %no_resume_ephemeral.0, %sw.bb255 ], [ %no_resume_ephemeral.0, %sw.bb254 ], [ %no_resume_ephemeral.0, %sw.bb253 ], [ %no_resume_ephemeral.0, %sw.bb252 ], [ %no_resume_ephemeral.0, %sw.bb251 ], [ %no_resume_ephemeral.0, %sw.bb250 ], [ %no_resume_ephemeral.0, %sw.bb249 ], [ %no_resume_ephemeral.0, %sw.bb246 ], [ %no_resume_ephemeral.0, %sw.bb245 ], [ %no_resume_ephemeral.0, %sw.bb243 ], [ %no_resume_ephemeral.0, %sw.bb236 ], [ %no_resume_ephemeral.0, %sw.bb234 ], [ %no_resume_ephemeral.0, %sw.bb232 ], [ %no_resume_ephemeral.0, %sw.bb229 ], [ %no_resume_ephemeral.0, %sw.bb228 ], [ %no_resume_ephemeral.0, %sw.bb227 ], [ %no_resume_ephemeral.0, %sw.bb226 ], [ %no_resume_ephemeral.0, %sw.bb225 ], [ %no_resume_ephemeral.0, %sw.bb224 ], [ %no_resume_ephemeral.0, %sw.bb223 ], [ %no_resume_ephemeral.0, %sw.bb222 ], [ %no_resume_ephemeral.0, %sw.bb221 ], [ %no_resume_ephemeral.0, %sw.bb219 ], [ %no_resume_ephemeral.0, %sw.bb217 ], [ %no_resume_ephemeral.0, %sw.bb216 ], [ %no_resume_ephemeral.0, %sw.bb214 ], [ %no_resume_ephemeral.0, %sw.bb213 ], [ %no_resume_ephemeral.0, %sw.bb212 ], [ %no_resume_ephemeral.0, %sw.bb211 ], [ %no_resume_ephemeral.0, %sw.bb206 ], [ %no_resume_ephemeral.0, %sw.bb354 ], [ %no_resume_ephemeral.0, %sw.bb357 ], [ %no_resume_ephemeral.0, %if.end203 ], [ %no_resume_ephemeral.0, %sw.bb359 ], [ %no_resume_ephemeral.0, %sw.bb367 ], [ %no_resume_ephemeral.0, %lor.lhs.false189 ], [ %no_resume_ephemeral.0, %sw.bb375 ], [ %no_resume_ephemeral.0, %sw.bb380 ], [ %no_resume_ephemeral.0, %sw.bb168 ], [ %no_resume_ephemeral.0, %sw.bb167 ], [ %no_resume_ephemeral.0, %sw.bb166 ], [ %no_resume_ephemeral.0, %sw.bb164 ], [ %no_resume_ephemeral.0, %sw.bb162 ], [ %no_resume_ephemeral.0, %sw.bb161 ], [ %no_resume_ephemeral.0, %sw.bb159 ], [ %no_resume_ephemeral.0, %sw.bb157 ], [ %no_resume_ephemeral.0, %sw.bb155 ], [ %no_resume_ephemeral.0, %sw.bb154 ], [ %no_resume_ephemeral.0, %sw.bb152 ], [ %no_resume_ephemeral.0, %sw.bb151 ], [ %no_resume_ephemeral.0, %sw.bb149 ], [ %no_resume_ephemeral.0, %sw.bb147 ], [ %no_resume_ephemeral.0, %sw.bb145 ], [ %no_resume_ephemeral.0, %sw.bb139 ], [ %no_resume_ephemeral.0, %sw.bb137 ], [ %no_resume_ephemeral.0, %sw.bb131 ], [ %no_resume_ephemeral.0, %sw.bb129 ], [ %no_resume_ephemeral.0, %sw.bb127 ], [ %no_resume_ephemeral.0, %sw.bb125 ], [ %no_resume_ephemeral.0, %sw.bb119 ], [ %no_resume_ephemeral.0, %sw.bb117 ], [ %no_resume_ephemeral.0, %sw.bb111 ], [ %no_resume_ephemeral.0, %sw.bb109 ], [ %no_resume_ephemeral.0, %sw.bb108 ], [ %no_resume_ephemeral.0, %sw.bb106 ], [ %no_resume_ephemeral.0, %sw.bb100 ], [ %no_resume_ephemeral.0, %sw.bb98 ], [ %no_resume_ephemeral.0, %sw.bb96 ], [ %no_resume_ephemeral.0, %sw.bb89 ], [ %no_resume_ephemeral.0, %if.then93 ], [ %no_resume_ephemeral.0, %sw.bb82 ], [ %no_resume_ephemeral.0, %if.then86 ], [ %no_resume_ephemeral.0, %sw.bb79 ], [ %no_resume_ephemeral.0, %sw.bb78 ], [ %no_resume_ephemeral.0, %sw.bb75 ], [ %no_resume_ephemeral.0, %sw.bb65 ], [ %no_resume_ephemeral.0, %sw.bb55 ], [ %no_resume_ephemeral.0, %if.then49 ], [ %no_resume_ephemeral.0, %sw.bb47 ], [ %no_resume_ephemeral.0, %if.then53 ], [ %no_resume_ephemeral.0, %sw.bb51 ], [ %no_resume_ephemeral.0, %sw.bb262 ], [ %no_resume_ephemeral.0, %for.cond ]
  %max_send_fragment.0.be = phi i32 [ %max_send_fragment.0, %if.end44 ], [ %max_send_fragment.0, %sw.bb341 ], [ %max_send_fragment.0, %sw.bb339 ], [ %max_send_fragment.0, %sw.bb337 ], [ %max_send_fragment.0, %sw.bb335 ], [ %max_send_fragment.0, %sw.bb333 ], [ %max_send_fragment.0, %sw.bb331 ], [ %max_send_fragment.0, %sw.bb329 ], [ %max_send_fragment.0, %sw.bb328 ], [ %max_send_fragment.0, %sw.bb326 ], [ %max_send_fragment.0, %sw.bb321 ], [ %max_send_fragment.0, %sw.bb344 ], [ %call347, %sw.bb345 ], [ %max_send_fragment.0, %sw.bb315 ], [ %max_send_fragment.0, %sw.bb348 ], [ %max_send_fragment.0, %sw.bb351 ], [ %max_send_fragment.0, %sw.bb311 ], [ %max_send_fragment.0, %sw.bb309 ], [ %max_send_fragment.0, %sw.bb308 ], [ %max_send_fragment.0, %sw.bb307 ], [ %max_send_fragment.0, %sw.bb304 ], [ %max_send_fragment.0, %sw.bb303 ], [ %max_send_fragment.0, %sw.bb381 ], [ %max_send_fragment.0, %sw.bb382 ], [ %max_send_fragment.0, %sw.bb301 ], [ %max_send_fragment.0, %sw.bb299 ], [ %max_send_fragment.0, %sw.bb297 ], [ %max_send_fragment.0, %sw.bb296 ], [ %max_send_fragment.0, %sw.bb295 ], [ %max_send_fragment.0, %sw.bb294 ], [ %max_send_fragment.0, %sw.bb293 ], [ %max_send_fragment.0, %sw.bb292 ], [ %max_send_fragment.0, %sw.bb290 ], [ %max_send_fragment.0, %sw.bb289 ], [ %max_send_fragment.0, %sw.bb288 ], [ %max_send_fragment.0, %sw.bb287 ], [ %max_send_fragment.0, %sw.bb286 ], [ %max_send_fragment.0, %sw.bb280 ], [ %max_send_fragment.0, %sw.bb274 ], [ %max_send_fragment.0, %sw.bb272 ], [ %max_send_fragment.0, %sw.bb260 ], [ %max_send_fragment.0, %sw.bb258 ], [ %max_send_fragment.0, %sw.bb257 ], [ %max_send_fragment.0, %sw.bb256 ], [ %max_send_fragment.0, %sw.bb255 ], [ %max_send_fragment.0, %sw.bb254 ], [ %max_send_fragment.0, %sw.bb253 ], [ %max_send_fragment.0, %sw.bb252 ], [ %max_send_fragment.0, %sw.bb251 ], [ %max_send_fragment.0, %sw.bb250 ], [ %max_send_fragment.0, %sw.bb249 ], [ %max_send_fragment.0, %sw.bb246 ], [ %max_send_fragment.0, %sw.bb245 ], [ %max_send_fragment.0, %sw.bb243 ], [ %max_send_fragment.0, %sw.bb236 ], [ %max_send_fragment.0, %sw.bb234 ], [ %max_send_fragment.0, %sw.bb232 ], [ %max_send_fragment.0, %sw.bb229 ], [ %max_send_fragment.0, %sw.bb228 ], [ %max_send_fragment.0, %sw.bb227 ], [ %max_send_fragment.0, %sw.bb226 ], [ %max_send_fragment.0, %sw.bb225 ], [ %max_send_fragment.0, %sw.bb224 ], [ %max_send_fragment.0, %sw.bb223 ], [ %max_send_fragment.0, %sw.bb222 ], [ %max_send_fragment.0, %sw.bb221 ], [ %max_send_fragment.0, %sw.bb219 ], [ %max_send_fragment.0, %sw.bb217 ], [ %max_send_fragment.0, %sw.bb216 ], [ %max_send_fragment.0, %sw.bb214 ], [ %max_send_fragment.0, %sw.bb213 ], [ %max_send_fragment.0, %sw.bb212 ], [ %max_send_fragment.0, %sw.bb211 ], [ %max_send_fragment.0, %sw.bb206 ], [ %max_send_fragment.0, %sw.bb354 ], [ %max_send_fragment.0, %sw.bb357 ], [ %max_send_fragment.0, %if.end203 ], [ %max_send_fragment.0, %sw.bb359 ], [ %max_send_fragment.0, %sw.bb367 ], [ %max_send_fragment.0, %lor.lhs.false189 ], [ %max_send_fragment.0, %sw.bb375 ], [ %max_send_fragment.0, %sw.bb380 ], [ %max_send_fragment.0, %sw.bb168 ], [ %max_send_fragment.0, %sw.bb167 ], [ %max_send_fragment.0, %sw.bb166 ], [ %max_send_fragment.0, %sw.bb164 ], [ %max_send_fragment.0, %sw.bb162 ], [ %max_send_fragment.0, %sw.bb161 ], [ %max_send_fragment.0, %sw.bb159 ], [ %max_send_fragment.0, %sw.bb157 ], [ %max_send_fragment.0, %sw.bb155 ], [ %max_send_fragment.0, %sw.bb154 ], [ %max_send_fragment.0, %sw.bb152 ], [ %max_send_fragment.0, %sw.bb151 ], [ %max_send_fragment.0, %sw.bb149 ], [ %max_send_fragment.0, %sw.bb147 ], [ %max_send_fragment.0, %sw.bb145 ], [ %max_send_fragment.0, %sw.bb139 ], [ %max_send_fragment.0, %sw.bb137 ], [ %max_send_fragment.0, %sw.bb131 ], [ %max_send_fragment.0, %sw.bb129 ], [ %max_send_fragment.0, %sw.bb127 ], [ %max_send_fragment.0, %sw.bb125 ], [ %max_send_fragment.0, %sw.bb119 ], [ %max_send_fragment.0, %sw.bb117 ], [ %max_send_fragment.0, %sw.bb111 ], [ %max_send_fragment.0, %sw.bb109 ], [ %max_send_fragment.0, %sw.bb108 ], [ %max_send_fragment.0, %sw.bb106 ], [ %max_send_fragment.0, %sw.bb100 ], [ %max_send_fragment.0, %sw.bb98 ], [ %max_send_fragment.0, %sw.bb96 ], [ %max_send_fragment.0, %sw.bb89 ], [ %max_send_fragment.0, %if.then93 ], [ %max_send_fragment.0, %sw.bb82 ], [ %max_send_fragment.0, %if.then86 ], [ %max_send_fragment.0, %sw.bb79 ], [ %max_send_fragment.0, %sw.bb78 ], [ %max_send_fragment.0, %sw.bb75 ], [ %max_send_fragment.0, %sw.bb65 ], [ %max_send_fragment.0, %sw.bb55 ], [ %max_send_fragment.0, %if.then49 ], [ %max_send_fragment.0, %sw.bb47 ], [ %max_send_fragment.0, %if.then53 ], [ %max_send_fragment.0, %sw.bb51 ], [ %max_send_fragment.0, %sw.bb262 ], [ %max_send_fragment.0, %for.cond ]
  %split_send_fragment.0.be = phi i32 [ %split_send_fragment.0, %if.end44 ], [ %split_send_fragment.0, %sw.bb341 ], [ %split_send_fragment.0, %sw.bb339 ], [ %split_send_fragment.0, %sw.bb337 ], [ %split_send_fragment.0, %sw.bb335 ], [ %split_send_fragment.0, %sw.bb333 ], [ %split_send_fragment.0, %sw.bb331 ], [ %split_send_fragment.0, %sw.bb329 ], [ %split_send_fragment.0, %sw.bb328 ], [ %split_send_fragment.0, %sw.bb326 ], [ %split_send_fragment.0, %sw.bb321 ], [ %split_send_fragment.0, %sw.bb344 ], [ %split_send_fragment.0, %sw.bb345 ], [ %split_send_fragment.0, %sw.bb315 ], [ %call350, %sw.bb348 ], [ %split_send_fragment.0, %sw.bb351 ], [ %split_send_fragment.0, %sw.bb311 ], [ %split_send_fragment.0, %sw.bb309 ], [ %split_send_fragment.0, %sw.bb308 ], [ %split_send_fragment.0, %sw.bb307 ], [ %split_send_fragment.0, %sw.bb304 ], [ %split_send_fragment.0, %sw.bb303 ], [ %split_send_fragment.0, %sw.bb381 ], [ %split_send_fragment.0, %sw.bb382 ], [ %split_send_fragment.0, %sw.bb301 ], [ %split_send_fragment.0, %sw.bb299 ], [ %split_send_fragment.0, %sw.bb297 ], [ %split_send_fragment.0, %sw.bb296 ], [ %split_send_fragment.0, %sw.bb295 ], [ %split_send_fragment.0, %sw.bb294 ], [ %split_send_fragment.0, %sw.bb293 ], [ %split_send_fragment.0, %sw.bb292 ], [ %split_send_fragment.0, %sw.bb290 ], [ %split_send_fragment.0, %sw.bb289 ], [ %split_send_fragment.0, %sw.bb288 ], [ %split_send_fragment.0, %sw.bb287 ], [ %split_send_fragment.0, %sw.bb286 ], [ %split_send_fragment.0, %sw.bb280 ], [ %split_send_fragment.0, %sw.bb274 ], [ %split_send_fragment.0, %sw.bb272 ], [ %split_send_fragment.0, %sw.bb260 ], [ %split_send_fragment.0, %sw.bb258 ], [ %split_send_fragment.0, %sw.bb257 ], [ %split_send_fragment.0, %sw.bb256 ], [ %split_send_fragment.0, %sw.bb255 ], [ %split_send_fragment.0, %sw.bb254 ], [ %split_send_fragment.0, %sw.bb253 ], [ %split_send_fragment.0, %sw.bb252 ], [ %split_send_fragment.0, %sw.bb251 ], [ %split_send_fragment.0, %sw.bb250 ], [ %split_send_fragment.0, %sw.bb249 ], [ %split_send_fragment.0, %sw.bb246 ], [ %split_send_fragment.0, %sw.bb245 ], [ %split_send_fragment.0, %sw.bb243 ], [ %split_send_fragment.0, %sw.bb236 ], [ %split_send_fragment.0, %sw.bb234 ], [ %split_send_fragment.0, %sw.bb232 ], [ %split_send_fragment.0, %sw.bb229 ], [ %split_send_fragment.0, %sw.bb228 ], [ %split_send_fragment.0, %sw.bb227 ], [ %split_send_fragment.0, %sw.bb226 ], [ %split_send_fragment.0, %sw.bb225 ], [ %split_send_fragment.0, %sw.bb224 ], [ %split_send_fragment.0, %sw.bb223 ], [ %split_send_fragment.0, %sw.bb222 ], [ %split_send_fragment.0, %sw.bb221 ], [ %split_send_fragment.0, %sw.bb219 ], [ %split_send_fragment.0, %sw.bb217 ], [ %split_send_fragment.0, %sw.bb216 ], [ %split_send_fragment.0, %sw.bb214 ], [ %split_send_fragment.0, %sw.bb213 ], [ %split_send_fragment.0, %sw.bb212 ], [ %split_send_fragment.0, %sw.bb211 ], [ %split_send_fragment.0, %sw.bb206 ], [ %split_send_fragment.0, %sw.bb354 ], [ %split_send_fragment.0, %sw.bb357 ], [ %split_send_fragment.0, %if.end203 ], [ %split_send_fragment.0, %sw.bb359 ], [ %split_send_fragment.0, %sw.bb367 ], [ %split_send_fragment.0, %lor.lhs.false189 ], [ %split_send_fragment.0, %sw.bb375 ], [ %split_send_fragment.0, %sw.bb380 ], [ %split_send_fragment.0, %sw.bb168 ], [ %split_send_fragment.0, %sw.bb167 ], [ %split_send_fragment.0, %sw.bb166 ], [ %split_send_fragment.0, %sw.bb164 ], [ %split_send_fragment.0, %sw.bb162 ], [ %split_send_fragment.0, %sw.bb161 ], [ %split_send_fragment.0, %sw.bb159 ], [ %split_send_fragment.0, %sw.bb157 ], [ %split_send_fragment.0, %sw.bb155 ], [ %split_send_fragment.0, %sw.bb154 ], [ %split_send_fragment.0, %sw.bb152 ], [ %split_send_fragment.0, %sw.bb151 ], [ %split_send_fragment.0, %sw.bb149 ], [ %split_send_fragment.0, %sw.bb147 ], [ %split_send_fragment.0, %sw.bb145 ], [ %split_send_fragment.0, %sw.bb139 ], [ %split_send_fragment.0, %sw.bb137 ], [ %split_send_fragment.0, %sw.bb131 ], [ %split_send_fragment.0, %sw.bb129 ], [ %split_send_fragment.0, %sw.bb127 ], [ %split_send_fragment.0, %sw.bb125 ], [ %split_send_fragment.0, %sw.bb119 ], [ %split_send_fragment.0, %sw.bb117 ], [ %split_send_fragment.0, %sw.bb111 ], [ %split_send_fragment.0, %sw.bb109 ], [ %split_send_fragment.0, %sw.bb108 ], [ %split_send_fragment.0, %sw.bb106 ], [ %split_send_fragment.0, %sw.bb100 ], [ %split_send_fragment.0, %sw.bb98 ], [ %split_send_fragment.0, %sw.bb96 ], [ %split_send_fragment.0, %sw.bb89 ], [ %split_send_fragment.0, %if.then93 ], [ %split_send_fragment.0, %sw.bb82 ], [ %split_send_fragment.0, %if.then86 ], [ %split_send_fragment.0, %sw.bb79 ], [ %split_send_fragment.0, %sw.bb78 ], [ %split_send_fragment.0, %sw.bb75 ], [ %split_send_fragment.0, %sw.bb65 ], [ %split_send_fragment.0, %sw.bb55 ], [ %split_send_fragment.0, %if.then49 ], [ %split_send_fragment.0, %sw.bb47 ], [ %split_send_fragment.0, %if.then53 ], [ %split_send_fragment.0, %sw.bb51 ], [ %split_send_fragment.0, %sw.bb262 ], [ %split_send_fragment.0, %for.cond ]
  %max_pipelines.0.be = phi i32 [ %max_pipelines.0, %if.end44 ], [ %max_pipelines.0, %sw.bb341 ], [ %max_pipelines.0, %sw.bb339 ], [ %max_pipelines.0, %sw.bb337 ], [ %max_pipelines.0, %sw.bb335 ], [ %max_pipelines.0, %sw.bb333 ], [ %max_pipelines.0, %sw.bb331 ], [ %max_pipelines.0, %sw.bb329 ], [ %max_pipelines.0, %sw.bb328 ], [ %max_pipelines.0, %sw.bb326 ], [ %max_pipelines.0, %sw.bb321 ], [ %max_pipelines.0, %sw.bb344 ], [ %max_pipelines.0, %sw.bb345 ], [ %max_pipelines.0, %sw.bb315 ], [ %max_pipelines.0, %sw.bb348 ], [ %call353, %sw.bb351 ], [ %max_pipelines.0, %sw.bb311 ], [ %max_pipelines.0, %sw.bb309 ], [ %max_pipelines.0, %sw.bb308 ], [ %max_pipelines.0, %sw.bb307 ], [ %max_pipelines.0, %sw.bb304 ], [ %max_pipelines.0, %sw.bb303 ], [ %max_pipelines.0, %sw.bb381 ], [ %max_pipelines.0, %sw.bb382 ], [ %max_pipelines.0, %sw.bb301 ], [ %max_pipelines.0, %sw.bb299 ], [ %max_pipelines.0, %sw.bb297 ], [ %max_pipelines.0, %sw.bb296 ], [ %max_pipelines.0, %sw.bb295 ], [ %max_pipelines.0, %sw.bb294 ], [ %max_pipelines.0, %sw.bb293 ], [ %max_pipelines.0, %sw.bb292 ], [ %max_pipelines.0, %sw.bb290 ], [ %max_pipelines.0, %sw.bb289 ], [ %max_pipelines.0, %sw.bb288 ], [ %max_pipelines.0, %sw.bb287 ], [ %max_pipelines.0, %sw.bb286 ], [ %max_pipelines.0, %sw.bb280 ], [ %max_pipelines.0, %sw.bb274 ], [ %max_pipelines.0, %sw.bb272 ], [ %max_pipelines.0, %sw.bb260 ], [ %max_pipelines.0, %sw.bb258 ], [ %max_pipelines.0, %sw.bb257 ], [ %max_pipelines.0, %sw.bb256 ], [ %max_pipelines.0, %sw.bb255 ], [ %max_pipelines.0, %sw.bb254 ], [ %max_pipelines.0, %sw.bb253 ], [ %max_pipelines.0, %sw.bb252 ], [ %max_pipelines.0, %sw.bb251 ], [ %max_pipelines.0, %sw.bb250 ], [ %max_pipelines.0, %sw.bb249 ], [ %max_pipelines.0, %sw.bb246 ], [ %max_pipelines.0, %sw.bb245 ], [ %max_pipelines.0, %sw.bb243 ], [ %max_pipelines.0, %sw.bb236 ], [ %max_pipelines.0, %sw.bb234 ], [ %max_pipelines.0, %sw.bb232 ], [ %max_pipelines.0, %sw.bb229 ], [ %max_pipelines.0, %sw.bb228 ], [ %max_pipelines.0, %sw.bb227 ], [ %max_pipelines.0, %sw.bb226 ], [ %max_pipelines.0, %sw.bb225 ], [ %max_pipelines.0, %sw.bb224 ], [ %max_pipelines.0, %sw.bb223 ], [ %max_pipelines.0, %sw.bb222 ], [ %max_pipelines.0, %sw.bb221 ], [ %max_pipelines.0, %sw.bb219 ], [ %max_pipelines.0, %sw.bb217 ], [ %max_pipelines.0, %sw.bb216 ], [ %max_pipelines.0, %sw.bb214 ], [ %max_pipelines.0, %sw.bb213 ], [ %max_pipelines.0, %sw.bb212 ], [ %max_pipelines.0, %sw.bb211 ], [ %max_pipelines.0, %sw.bb206 ], [ %max_pipelines.0, %sw.bb354 ], [ %max_pipelines.0, %sw.bb357 ], [ %max_pipelines.0, %if.end203 ], [ %max_pipelines.0, %sw.bb359 ], [ %max_pipelines.0, %sw.bb367 ], [ %max_pipelines.0, %lor.lhs.false189 ], [ %max_pipelines.0, %sw.bb375 ], [ %max_pipelines.0, %sw.bb380 ], [ %max_pipelines.0, %sw.bb168 ], [ %max_pipelines.0, %sw.bb167 ], [ %max_pipelines.0, %sw.bb166 ], [ %max_pipelines.0, %sw.bb164 ], [ %max_pipelines.0, %sw.bb162 ], [ %max_pipelines.0, %sw.bb161 ], [ %max_pipelines.0, %sw.bb159 ], [ %max_pipelines.0, %sw.bb157 ], [ %max_pipelines.0, %sw.bb155 ], [ %max_pipelines.0, %sw.bb154 ], [ %max_pipelines.0, %sw.bb152 ], [ %max_pipelines.0, %sw.bb151 ], [ %max_pipelines.0, %sw.bb149 ], [ %max_pipelines.0, %sw.bb147 ], [ %max_pipelines.0, %sw.bb145 ], [ %max_pipelines.0, %sw.bb139 ], [ %max_pipelines.0, %sw.bb137 ], [ %max_pipelines.0, %sw.bb131 ], [ %max_pipelines.0, %sw.bb129 ], [ %max_pipelines.0, %sw.bb127 ], [ %max_pipelines.0, %sw.bb125 ], [ %max_pipelines.0, %sw.bb119 ], [ %max_pipelines.0, %sw.bb117 ], [ %max_pipelines.0, %sw.bb111 ], [ %max_pipelines.0, %sw.bb109 ], [ %max_pipelines.0, %sw.bb108 ], [ %max_pipelines.0, %sw.bb106 ], [ %max_pipelines.0, %sw.bb100 ], [ %max_pipelines.0, %sw.bb98 ], [ %max_pipelines.0, %sw.bb96 ], [ %max_pipelines.0, %sw.bb89 ], [ %max_pipelines.0, %if.then93 ], [ %max_pipelines.0, %sw.bb82 ], [ %max_pipelines.0, %if.then86 ], [ %max_pipelines.0, %sw.bb79 ], [ %max_pipelines.0, %sw.bb78 ], [ %max_pipelines.0, %sw.bb75 ], [ %max_pipelines.0, %sw.bb65 ], [ %max_pipelines.0, %sw.bb55 ], [ %max_pipelines.0, %if.then49 ], [ %max_pipelines.0, %sw.bb47 ], [ %max_pipelines.0, %if.then53 ], [ %max_pipelines.0, %sw.bb51 ], [ %max_pipelines.0, %sw.bb262 ], [ %max_pipelines.0, %for.cond ]
  %s_serverinfo_file.0.be = phi i8* [ %s_serverinfo_file.0, %if.end44 ], [ %s_serverinfo_file.0, %sw.bb341 ], [ %s_serverinfo_file.0, %sw.bb339 ], [ %s_serverinfo_file.0, %sw.bb337 ], [ %s_serverinfo_file.0, %sw.bb335 ], [ %s_serverinfo_file.0, %sw.bb333 ], [ %s_serverinfo_file.0, %sw.bb331 ], [ %s_serverinfo_file.0, %sw.bb329 ], [ %s_serverinfo_file.0, %sw.bb328 ], [ %s_serverinfo_file.0, %sw.bb326 ], [ %s_serverinfo_file.0, %sw.bb321 ], [ %s_serverinfo_file.0, %sw.bb344 ], [ %s_serverinfo_file.0, %sw.bb345 ], [ %s_serverinfo_file.0, %sw.bb315 ], [ %s_serverinfo_file.0, %sw.bb348 ], [ %s_serverinfo_file.0, %sw.bb351 ], [ %s_serverinfo_file.0, %sw.bb311 ], [ %s_serverinfo_file.0, %sw.bb309 ], [ %s_serverinfo_file.0, %sw.bb308 ], [ %s_serverinfo_file.0, %sw.bb307 ], [ %s_serverinfo_file.0, %sw.bb304 ], [ %s_serverinfo_file.0, %sw.bb303 ], [ %s_serverinfo_file.0, %sw.bb381 ], [ %s_serverinfo_file.0, %sw.bb382 ], [ %s_serverinfo_file.0, %sw.bb301 ], [ %s_serverinfo_file.0, %sw.bb299 ], [ %s_serverinfo_file.0, %sw.bb297 ], [ %s_serverinfo_file.0, %sw.bb296 ], [ %s_serverinfo_file.0, %sw.bb295 ], [ %s_serverinfo_file.0, %sw.bb294 ], [ %s_serverinfo_file.0, %sw.bb293 ], [ %s_serverinfo_file.0, %sw.bb292 ], [ %s_serverinfo_file.0, %sw.bb290 ], [ %s_serverinfo_file.0, %sw.bb289 ], [ %s_serverinfo_file.0, %sw.bb288 ], [ %s_serverinfo_file.0, %sw.bb287 ], [ %s_serverinfo_file.0, %sw.bb286 ], [ %s_serverinfo_file.0, %sw.bb280 ], [ %s_serverinfo_file.0, %sw.bb274 ], [ %s_serverinfo_file.0, %sw.bb272 ], [ %s_serverinfo_file.0, %sw.bb260 ], [ %s_serverinfo_file.0, %sw.bb258 ], [ %s_serverinfo_file.0, %sw.bb257 ], [ %s_serverinfo_file.0, %sw.bb256 ], [ %s_serverinfo_file.0, %sw.bb255 ], [ %s_serverinfo_file.0, %sw.bb254 ], [ %s_serverinfo_file.0, %sw.bb253 ], [ %s_serverinfo_file.0, %sw.bb252 ], [ %s_serverinfo_file.0, %sw.bb251 ], [ %s_serverinfo_file.0, %sw.bb250 ], [ %s_serverinfo_file.0, %sw.bb249 ], [ %s_serverinfo_file.0, %sw.bb246 ], [ %s_serverinfo_file.0, %sw.bb245 ], [ %s_serverinfo_file.0, %sw.bb243 ], [ %s_serverinfo_file.0, %sw.bb236 ], [ %s_serverinfo_file.0, %sw.bb234 ], [ %s_serverinfo_file.0, %sw.bb232 ], [ %s_serverinfo_file.0, %sw.bb229 ], [ %s_serverinfo_file.0, %sw.bb228 ], [ %s_serverinfo_file.0, %sw.bb227 ], [ %s_serverinfo_file.0, %sw.bb226 ], [ %s_serverinfo_file.0, %sw.bb225 ], [ %s_serverinfo_file.0, %sw.bb224 ], [ %s_serverinfo_file.0, %sw.bb223 ], [ %s_serverinfo_file.0, %sw.bb222 ], [ %s_serverinfo_file.0, %sw.bb221 ], [ %s_serverinfo_file.0, %sw.bb219 ], [ %s_serverinfo_file.0, %sw.bb217 ], [ %s_serverinfo_file.0, %sw.bb216 ], [ %s_serverinfo_file.0, %sw.bb214 ], [ %s_serverinfo_file.0, %sw.bb213 ], [ %s_serverinfo_file.0, %sw.bb212 ], [ %s_serverinfo_file.0, %sw.bb211 ], [ %s_serverinfo_file.0, %sw.bb206 ], [ %s_serverinfo_file.0, %sw.bb354 ], [ %s_serverinfo_file.0, %sw.bb357 ], [ %s_serverinfo_file.0, %if.end203 ], [ %s_serverinfo_file.0, %sw.bb359 ], [ %s_serverinfo_file.0, %sw.bb367 ], [ %s_serverinfo_file.0, %lor.lhs.false189 ], [ %s_serverinfo_file.0, %sw.bb375 ], [ %s_serverinfo_file.0, %sw.bb380 ], [ %s_serverinfo_file.0, %sw.bb168 ], [ %s_serverinfo_file.0, %sw.bb167 ], [ %s_serverinfo_file.0, %sw.bb166 ], [ %s_serverinfo_file.0, %sw.bb164 ], [ %s_serverinfo_file.0, %sw.bb162 ], [ %s_serverinfo_file.0, %sw.bb161 ], [ %s_serverinfo_file.0, %sw.bb159 ], [ %s_serverinfo_file.0, %sw.bb157 ], [ %s_serverinfo_file.0, %sw.bb155 ], [ %s_serverinfo_file.0, %sw.bb154 ], [ %s_serverinfo_file.0, %sw.bb152 ], [ %s_serverinfo_file.0, %sw.bb151 ], [ %s_serverinfo_file.0, %sw.bb149 ], [ %s_serverinfo_file.0, %sw.bb147 ], [ %s_serverinfo_file.0, %sw.bb145 ], [ %s_serverinfo_file.0, %sw.bb139 ], [ %s_serverinfo_file.0, %sw.bb137 ], [ %s_serverinfo_file.0, %sw.bb131 ], [ %s_serverinfo_file.0, %sw.bb129 ], [ %s_serverinfo_file.0, %sw.bb127 ], [ %s_serverinfo_file.0, %sw.bb125 ], [ %s_serverinfo_file.0, %sw.bb119 ], [ %s_serverinfo_file.0, %sw.bb117 ], [ %s_serverinfo_file.0, %sw.bb111 ], [ %call110, %sw.bb109 ], [ %s_serverinfo_file.0, %sw.bb108 ], [ %s_serverinfo_file.0, %sw.bb106 ], [ %s_serverinfo_file.0, %sw.bb100 ], [ %s_serverinfo_file.0, %sw.bb98 ], [ %s_serverinfo_file.0, %sw.bb96 ], [ %s_serverinfo_file.0, %sw.bb89 ], [ %s_serverinfo_file.0, %if.then93 ], [ %s_serverinfo_file.0, %sw.bb82 ], [ %s_serverinfo_file.0, %if.then86 ], [ %s_serverinfo_file.0, %sw.bb79 ], [ %s_serverinfo_file.0, %sw.bb78 ], [ %s_serverinfo_file.0, %sw.bb75 ], [ %s_serverinfo_file.0, %sw.bb65 ], [ %s_serverinfo_file.0, %sw.bb55 ], [ %s_serverinfo_file.0, %if.then49 ], [ %s_serverinfo_file.0, %sw.bb47 ], [ %s_serverinfo_file.0, %if.then53 ], [ %s_serverinfo_file.0, %sw.bb51 ], [ %s_serverinfo_file.0, %sw.bb262 ], [ %s_serverinfo_file.0, %for.cond ]
  %keylog_file.0.be = phi i8* [ %keylog_file.0, %if.end44 ], [ %keylog_file.0, %sw.bb341 ], [ %keylog_file.0, %sw.bb339 ], [ %keylog_file.0, %sw.bb337 ], [ %keylog_file.0, %sw.bb335 ], [ %keylog_file.0, %sw.bb333 ], [ %keylog_file.0, %sw.bb331 ], [ %keylog_file.0, %sw.bb329 ], [ %keylog_file.0, %sw.bb328 ], [ %keylog_file.0, %sw.bb326 ], [ %keylog_file.0, %sw.bb321 ], [ %keylog_file.0, %sw.bb344 ], [ %keylog_file.0, %sw.bb345 ], [ %keylog_file.0, %sw.bb315 ], [ %keylog_file.0, %sw.bb348 ], [ %keylog_file.0, %sw.bb351 ], [ %keylog_file.0, %sw.bb311 ], [ %keylog_file.0, %sw.bb309 ], [ %keylog_file.0, %sw.bb308 ], [ %keylog_file.0, %sw.bb307 ], [ %keylog_file.0, %sw.bb304 ], [ %keylog_file.0, %sw.bb303 ], [ %keylog_file.0, %sw.bb381 ], [ %keylog_file.0, %sw.bb382 ], [ %keylog_file.0, %sw.bb301 ], [ %keylog_file.0, %sw.bb299 ], [ %keylog_file.0, %sw.bb297 ], [ %keylog_file.0, %sw.bb296 ], [ %keylog_file.0, %sw.bb295 ], [ %keylog_file.0, %sw.bb294 ], [ %keylog_file.0, %sw.bb293 ], [ %keylog_file.0, %sw.bb292 ], [ %keylog_file.0, %sw.bb290 ], [ %keylog_file.0, %sw.bb289 ], [ %keylog_file.0, %sw.bb288 ], [ %keylog_file.0, %sw.bb287 ], [ %keylog_file.0, %sw.bb286 ], [ %keylog_file.0, %sw.bb280 ], [ %keylog_file.0, %sw.bb274 ], [ %keylog_file.0, %sw.bb272 ], [ %keylog_file.0, %sw.bb260 ], [ %keylog_file.0, %sw.bb258 ], [ %keylog_file.0, %sw.bb257 ], [ %keylog_file.0, %sw.bb256 ], [ %keylog_file.0, %sw.bb255 ], [ %keylog_file.0, %sw.bb254 ], [ %keylog_file.0, %sw.bb253 ], [ %keylog_file.0, %sw.bb252 ], [ %keylog_file.0, %sw.bb251 ], [ %keylog_file.0, %sw.bb250 ], [ %keylog_file.0, %sw.bb249 ], [ %keylog_file.0, %sw.bb246 ], [ %keylog_file.0, %sw.bb245 ], [ %keylog_file.0, %sw.bb243 ], [ %keylog_file.0, %sw.bb236 ], [ %keylog_file.0, %sw.bb234 ], [ %keylog_file.0, %sw.bb232 ], [ %keylog_file.0, %sw.bb229 ], [ %keylog_file.0, %sw.bb228 ], [ %keylog_file.0, %sw.bb227 ], [ %keylog_file.0, %sw.bb226 ], [ %keylog_file.0, %sw.bb225 ], [ %keylog_file.0, %sw.bb224 ], [ %keylog_file.0, %sw.bb223 ], [ %keylog_file.0, %sw.bb222 ], [ %keylog_file.0, %sw.bb221 ], [ %keylog_file.0, %sw.bb219 ], [ %keylog_file.0, %sw.bb217 ], [ %keylog_file.0, %sw.bb216 ], [ %keylog_file.0, %sw.bb214 ], [ %keylog_file.0, %sw.bb213 ], [ %keylog_file.0, %sw.bb212 ], [ %keylog_file.0, %sw.bb211 ], [ %keylog_file.0, %sw.bb206 ], [ %keylog_file.0, %sw.bb354 ], [ %call358, %sw.bb357 ], [ %keylog_file.0, %if.end203 ], [ %keylog_file.0, %sw.bb359 ], [ %keylog_file.0, %sw.bb367 ], [ %keylog_file.0, %lor.lhs.false189 ], [ %keylog_file.0, %sw.bb375 ], [ %keylog_file.0, %sw.bb380 ], [ %keylog_file.0, %sw.bb168 ], [ %keylog_file.0, %sw.bb167 ], [ %keylog_file.0, %sw.bb166 ], [ %keylog_file.0, %sw.bb164 ], [ %keylog_file.0, %sw.bb162 ], [ %keylog_file.0, %sw.bb161 ], [ %keylog_file.0, %sw.bb159 ], [ %keylog_file.0, %sw.bb157 ], [ %keylog_file.0, %sw.bb155 ], [ %keylog_file.0, %sw.bb154 ], [ %keylog_file.0, %sw.bb152 ], [ %keylog_file.0, %sw.bb151 ], [ %keylog_file.0, %sw.bb149 ], [ %keylog_file.0, %sw.bb147 ], [ %keylog_file.0, %sw.bb145 ], [ %keylog_file.0, %sw.bb139 ], [ %keylog_file.0, %sw.bb137 ], [ %keylog_file.0, %sw.bb131 ], [ %keylog_file.0, %sw.bb129 ], [ %keylog_file.0, %sw.bb127 ], [ %keylog_file.0, %sw.bb125 ], [ %keylog_file.0, %sw.bb119 ], [ %keylog_file.0, %sw.bb117 ], [ %keylog_file.0, %sw.bb111 ], [ %keylog_file.0, %sw.bb109 ], [ %keylog_file.0, %sw.bb108 ], [ %keylog_file.0, %sw.bb106 ], [ %keylog_file.0, %sw.bb100 ], [ %keylog_file.0, %sw.bb98 ], [ %keylog_file.0, %sw.bb96 ], [ %keylog_file.0, %sw.bb89 ], [ %keylog_file.0, %if.then93 ], [ %keylog_file.0, %sw.bb82 ], [ %keylog_file.0, %if.then86 ], [ %keylog_file.0, %sw.bb79 ], [ %keylog_file.0, %sw.bb78 ], [ %keylog_file.0, %sw.bb75 ], [ %keylog_file.0, %sw.bb65 ], [ %keylog_file.0, %sw.bb55 ], [ %keylog_file.0, %if.then49 ], [ %keylog_file.0, %sw.bb47 ], [ %keylog_file.0, %if.then53 ], [ %keylog_file.0, %sw.bb51 ], [ %keylog_file.0, %sw.bb262 ], [ %keylog_file.0, %for.cond ]
  %max_early_data.0.be = phi i32 [ %max_early_data.0, %if.end44 ], [ %max_early_data.0, %sw.bb341 ], [ %max_early_data.0, %sw.bb339 ], [ %max_early_data.0, %sw.bb337 ], [ %max_early_data.0, %sw.bb335 ], [ %max_early_data.0, %sw.bb333 ], [ %max_early_data.0, %sw.bb331 ], [ %max_early_data.0, %sw.bb329 ], [ %max_early_data.0, %sw.bb328 ], [ %max_early_data.0, %sw.bb326 ], [ %max_early_data.0, %sw.bb321 ], [ %max_early_data.0, %sw.bb344 ], [ %max_early_data.0, %sw.bb345 ], [ %max_early_data.0, %sw.bb315 ], [ %max_early_data.0, %sw.bb348 ], [ %max_early_data.0, %sw.bb351 ], [ %max_early_data.0, %sw.bb311 ], [ %max_early_data.0, %sw.bb309 ], [ %max_early_data.0, %sw.bb308 ], [ %max_early_data.0, %sw.bb307 ], [ %max_early_data.0, %sw.bb304 ], [ %max_early_data.0, %sw.bb303 ], [ %max_early_data.0, %sw.bb381 ], [ %max_early_data.0, %sw.bb382 ], [ %max_early_data.0, %sw.bb301 ], [ %max_early_data.0, %sw.bb299 ], [ %max_early_data.0, %sw.bb297 ], [ %max_early_data.0, %sw.bb296 ], [ %max_early_data.0, %sw.bb295 ], [ %max_early_data.0, %sw.bb294 ], [ %max_early_data.0, %sw.bb293 ], [ %max_early_data.0, %sw.bb292 ], [ %max_early_data.0, %sw.bb290 ], [ %max_early_data.0, %sw.bb289 ], [ %max_early_data.0, %sw.bb288 ], [ %max_early_data.0, %sw.bb287 ], [ %max_early_data.0, %sw.bb286 ], [ %max_early_data.0, %sw.bb280 ], [ %max_early_data.0, %sw.bb274 ], [ %max_early_data.0, %sw.bb272 ], [ %max_early_data.0, %sw.bb260 ], [ %max_early_data.0, %sw.bb258 ], [ %max_early_data.0, %sw.bb257 ], [ %max_early_data.0, %sw.bb256 ], [ %max_early_data.0, %sw.bb255 ], [ %max_early_data.0, %sw.bb254 ], [ %max_early_data.0, %sw.bb253 ], [ %max_early_data.0, %sw.bb252 ], [ %max_early_data.0, %sw.bb251 ], [ %max_early_data.0, %sw.bb250 ], [ %max_early_data.0, %sw.bb249 ], [ %max_early_data.0, %sw.bb246 ], [ %max_early_data.0, %sw.bb245 ], [ %max_early_data.0, %sw.bb243 ], [ %max_early_data.0, %sw.bb236 ], [ %max_early_data.0, %sw.bb234 ], [ %max_early_data.0, %sw.bb232 ], [ %max_early_data.0, %sw.bb229 ], [ %max_early_data.0, %sw.bb228 ], [ %max_early_data.0, %sw.bb227 ], [ %max_early_data.0, %sw.bb226 ], [ %max_early_data.0, %sw.bb225 ], [ %max_early_data.0, %sw.bb224 ], [ %max_early_data.0, %sw.bb223 ], [ %max_early_data.0, %sw.bb222 ], [ %max_early_data.0, %sw.bb221 ], [ %max_early_data.0, %sw.bb219 ], [ %max_early_data.0, %sw.bb217 ], [ %max_early_data.0, %sw.bb216 ], [ %max_early_data.0, %sw.bb214 ], [ %max_early_data.0, %sw.bb213 ], [ %max_early_data.0, %sw.bb212 ], [ %max_early_data.0, %sw.bb211 ], [ %max_early_data.0, %sw.bb206 ], [ %max_early_data.0, %sw.bb354 ], [ %max_early_data.0, %sw.bb357 ], [ %max_early_data.0, %if.end203 ], [ %call361, %sw.bb359 ], [ %max_early_data.0, %sw.bb367 ], [ %max_early_data.0, %lor.lhs.false189 ], [ %spec.store.select1160, %sw.bb375 ], [ %max_early_data.0, %sw.bb380 ], [ %max_early_data.0, %sw.bb168 ], [ %max_early_data.0, %sw.bb167 ], [ %max_early_data.0, %sw.bb166 ], [ %max_early_data.0, %sw.bb164 ], [ %max_early_data.0, %sw.bb162 ], [ %max_early_data.0, %sw.bb161 ], [ %max_early_data.0, %sw.bb159 ], [ %max_early_data.0, %sw.bb157 ], [ %max_early_data.0, %sw.bb155 ], [ %max_early_data.0, %sw.bb154 ], [ %max_early_data.0, %sw.bb152 ], [ %max_early_data.0, %sw.bb151 ], [ %max_early_data.0, %sw.bb149 ], [ %max_early_data.0, %sw.bb147 ], [ %max_early_data.0, %sw.bb145 ], [ %max_early_data.0, %sw.bb139 ], [ %max_early_data.0, %sw.bb137 ], [ %max_early_data.0, %sw.bb131 ], [ %max_early_data.0, %sw.bb129 ], [ %max_early_data.0, %sw.bb127 ], [ %max_early_data.0, %sw.bb125 ], [ %max_early_data.0, %sw.bb119 ], [ %max_early_data.0, %sw.bb117 ], [ %max_early_data.0, %sw.bb111 ], [ %max_early_data.0, %sw.bb109 ], [ %max_early_data.0, %sw.bb108 ], [ %max_early_data.0, %sw.bb106 ], [ %max_early_data.0, %sw.bb100 ], [ %max_early_data.0, %sw.bb98 ], [ %max_early_data.0, %sw.bb96 ], [ %max_early_data.0, %sw.bb89 ], [ %max_early_data.0, %if.then93 ], [ %max_early_data.0, %sw.bb82 ], [ %max_early_data.0, %if.then86 ], [ %max_early_data.0, %sw.bb79 ], [ %max_early_data.0, %sw.bb78 ], [ %max_early_data.0, %sw.bb75 ], [ %max_early_data.0, %sw.bb65 ], [ %max_early_data.0, %sw.bb55 ], [ %max_early_data.0, %if.then49 ], [ %max_early_data.0, %sw.bb47 ], [ %max_early_data.0, %if.then53 ], [ %max_early_data.0, %sw.bb51 ], [ %max_early_data.0, %sw.bb262 ], [ %max_early_data.0, %for.cond ]
  %recv_max_early_data.0.be = phi i32 [ %recv_max_early_data.0, %if.end44 ], [ %recv_max_early_data.0, %sw.bb341 ], [ %recv_max_early_data.0, %sw.bb339 ], [ %recv_max_early_data.0, %sw.bb337 ], [ %recv_max_early_data.0, %sw.bb335 ], [ %recv_max_early_data.0, %sw.bb333 ], [ %recv_max_early_data.0, %sw.bb331 ], [ %recv_max_early_data.0, %sw.bb329 ], [ %recv_max_early_data.0, %sw.bb328 ], [ %recv_max_early_data.0, %sw.bb326 ], [ %recv_max_early_data.0, %sw.bb321 ], [ %recv_max_early_data.0, %sw.bb344 ], [ %recv_max_early_data.0, %sw.bb345 ], [ %recv_max_early_data.0, %sw.bb315 ], [ %recv_max_early_data.0, %sw.bb348 ], [ %recv_max_early_data.0, %sw.bb351 ], [ %recv_max_early_data.0, %sw.bb311 ], [ %recv_max_early_data.0, %sw.bb309 ], [ %recv_max_early_data.0, %sw.bb308 ], [ %recv_max_early_data.0, %sw.bb307 ], [ %recv_max_early_data.0, %sw.bb304 ], [ %recv_max_early_data.0, %sw.bb303 ], [ %recv_max_early_data.0, %sw.bb381 ], [ %recv_max_early_data.0, %sw.bb382 ], [ %recv_max_early_data.0, %sw.bb301 ], [ %recv_max_early_data.0, %sw.bb299 ], [ %recv_max_early_data.0, %sw.bb297 ], [ %recv_max_early_data.0, %sw.bb296 ], [ %recv_max_early_data.0, %sw.bb295 ], [ %recv_max_early_data.0, %sw.bb294 ], [ %recv_max_early_data.0, %sw.bb293 ], [ %recv_max_early_data.0, %sw.bb292 ], [ %recv_max_early_data.0, %sw.bb290 ], [ %recv_max_early_data.0, %sw.bb289 ], [ %recv_max_early_data.0, %sw.bb288 ], [ %recv_max_early_data.0, %sw.bb287 ], [ %recv_max_early_data.0, %sw.bb286 ], [ %recv_max_early_data.0, %sw.bb280 ], [ %recv_max_early_data.0, %sw.bb274 ], [ %recv_max_early_data.0, %sw.bb272 ], [ %recv_max_early_data.0, %sw.bb260 ], [ %recv_max_early_data.0, %sw.bb258 ], [ %recv_max_early_data.0, %sw.bb257 ], [ %recv_max_early_data.0, %sw.bb256 ], [ %recv_max_early_data.0, %sw.bb255 ], [ %recv_max_early_data.0, %sw.bb254 ], [ %recv_max_early_data.0, %sw.bb253 ], [ %recv_max_early_data.0, %sw.bb252 ], [ %recv_max_early_data.0, %sw.bb251 ], [ %recv_max_early_data.0, %sw.bb250 ], [ %recv_max_early_data.0, %sw.bb249 ], [ %recv_max_early_data.0, %sw.bb246 ], [ %recv_max_early_data.0, %sw.bb245 ], [ %recv_max_early_data.0, %sw.bb243 ], [ %recv_max_early_data.0, %sw.bb236 ], [ %recv_max_early_data.0, %sw.bb234 ], [ %recv_max_early_data.0, %sw.bb232 ], [ %recv_max_early_data.0, %sw.bb229 ], [ %recv_max_early_data.0, %sw.bb228 ], [ %recv_max_early_data.0, %sw.bb227 ], [ %recv_max_early_data.0, %sw.bb226 ], [ %recv_max_early_data.0, %sw.bb225 ], [ %recv_max_early_data.0, %sw.bb224 ], [ %recv_max_early_data.0, %sw.bb223 ], [ %recv_max_early_data.0, %sw.bb222 ], [ %recv_max_early_data.0, %sw.bb221 ], [ %recv_max_early_data.0, %sw.bb219 ], [ %recv_max_early_data.0, %sw.bb217 ], [ %recv_max_early_data.0, %sw.bb216 ], [ %recv_max_early_data.0, %sw.bb214 ], [ %recv_max_early_data.0, %sw.bb213 ], [ %recv_max_early_data.0, %sw.bb212 ], [ %recv_max_early_data.0, %sw.bb211 ], [ %recv_max_early_data.0, %sw.bb206 ], [ %recv_max_early_data.0, %sw.bb354 ], [ %recv_max_early_data.0, %sw.bb357 ], [ %recv_max_early_data.0, %if.end203 ], [ %recv_max_early_data.0, %sw.bb359 ], [ %call369, %sw.bb367 ], [ %recv_max_early_data.0, %lor.lhs.false189 ], [ %recv_max_early_data.0, %sw.bb375 ], [ %recv_max_early_data.0, %sw.bb380 ], [ %recv_max_early_data.0, %sw.bb168 ], [ %recv_max_early_data.0, %sw.bb167 ], [ %recv_max_early_data.0, %sw.bb166 ], [ %recv_max_early_data.0, %sw.bb164 ], [ %recv_max_early_data.0, %sw.bb162 ], [ %recv_max_early_data.0, %sw.bb161 ], [ %recv_max_early_data.0, %sw.bb159 ], [ %recv_max_early_data.0, %sw.bb157 ], [ %recv_max_early_data.0, %sw.bb155 ], [ %recv_max_early_data.0, %sw.bb154 ], [ %recv_max_early_data.0, %sw.bb152 ], [ %recv_max_early_data.0, %sw.bb151 ], [ %recv_max_early_data.0, %sw.bb149 ], [ %recv_max_early_data.0, %sw.bb147 ], [ %recv_max_early_data.0, %sw.bb145 ], [ %recv_max_early_data.0, %sw.bb139 ], [ %recv_max_early_data.0, %sw.bb137 ], [ %recv_max_early_data.0, %sw.bb131 ], [ %recv_max_early_data.0, %sw.bb129 ], [ %recv_max_early_data.0, %sw.bb127 ], [ %recv_max_early_data.0, %sw.bb125 ], [ %recv_max_early_data.0, %sw.bb119 ], [ %recv_max_early_data.0, %sw.bb117 ], [ %recv_max_early_data.0, %sw.bb111 ], [ %recv_max_early_data.0, %sw.bb109 ], [ %recv_max_early_data.0, %sw.bb108 ], [ %recv_max_early_data.0, %sw.bb106 ], [ %recv_max_early_data.0, %sw.bb100 ], [ %recv_max_early_data.0, %sw.bb98 ], [ %recv_max_early_data.0, %sw.bb96 ], [ %recv_max_early_data.0, %sw.bb89 ], [ %recv_max_early_data.0, %if.then93 ], [ %recv_max_early_data.0, %sw.bb82 ], [ %recv_max_early_data.0, %if.then86 ], [ %recv_max_early_data.0, %sw.bb79 ], [ %recv_max_early_data.0, %sw.bb78 ], [ %recv_max_early_data.0, %sw.bb75 ], [ %recv_max_early_data.0, %sw.bb65 ], [ %recv_max_early_data.0, %sw.bb55 ], [ %recv_max_early_data.0, %if.then49 ], [ %recv_max_early_data.0, %sw.bb47 ], [ %recv_max_early_data.0, %if.then53 ], [ %recv_max_early_data.0, %sw.bb51 ], [ %recv_max_early_data.0, %sw.bb262 ], [ %recv_max_early_data.0, %for.cond ]
  %psksessf.0.be = phi i8* [ %psksessf.0, %if.end44 ], [ %psksessf.0, %sw.bb341 ], [ %psksessf.0, %sw.bb339 ], [ %psksessf.0, %sw.bb337 ], [ %psksessf.0, %sw.bb335 ], [ %psksessf.0, %sw.bb333 ], [ %psksessf.0, %sw.bb331 ], [ %psksessf.0, %sw.bb329 ], [ %psksessf.0, %sw.bb328 ], [ %psksessf.0, %sw.bb326 ], [ %psksessf.0, %sw.bb321 ], [ %psksessf.0, %sw.bb344 ], [ %psksessf.0, %sw.bb345 ], [ %psksessf.0, %sw.bb315 ], [ %psksessf.0, %sw.bb348 ], [ %psksessf.0, %sw.bb351 ], [ %psksessf.0, %sw.bb311 ], [ %psksessf.0, %sw.bb309 ], [ %psksessf.0, %sw.bb308 ], [ %psksessf.0, %sw.bb307 ], [ %psksessf.0, %sw.bb304 ], [ %psksessf.0, %sw.bb303 ], [ %psksessf.0, %sw.bb381 ], [ %psksessf.0, %sw.bb382 ], [ %psksessf.0, %sw.bb301 ], [ %psksessf.0, %sw.bb299 ], [ %psksessf.0, %sw.bb297 ], [ %psksessf.0, %sw.bb296 ], [ %psksessf.0, %sw.bb295 ], [ %psksessf.0, %sw.bb294 ], [ %psksessf.0, %sw.bb293 ], [ %psksessf.0, %sw.bb292 ], [ %psksessf.0, %sw.bb290 ], [ %psksessf.0, %sw.bb289 ], [ %psksessf.0, %sw.bb288 ], [ %psksessf.0, %sw.bb287 ], [ %psksessf.0, %sw.bb286 ], [ %psksessf.0, %sw.bb280 ], [ %psksessf.0, %sw.bb274 ], [ %call273, %sw.bb272 ], [ %psksessf.0, %sw.bb260 ], [ %psksessf.0, %sw.bb258 ], [ %psksessf.0, %sw.bb257 ], [ %psksessf.0, %sw.bb256 ], [ %psksessf.0, %sw.bb255 ], [ %psksessf.0, %sw.bb254 ], [ %psksessf.0, %sw.bb253 ], [ %psksessf.0, %sw.bb252 ], [ %psksessf.0, %sw.bb251 ], [ %psksessf.0, %sw.bb250 ], [ %psksessf.0, %sw.bb249 ], [ %psksessf.0, %sw.bb246 ], [ %psksessf.0, %sw.bb245 ], [ %psksessf.0, %sw.bb243 ], [ %psksessf.0, %sw.bb236 ], [ %psksessf.0, %sw.bb234 ], [ %psksessf.0, %sw.bb232 ], [ %psksessf.0, %sw.bb229 ], [ %psksessf.0, %sw.bb228 ], [ %psksessf.0, %sw.bb227 ], [ %psksessf.0, %sw.bb226 ], [ %psksessf.0, %sw.bb225 ], [ %psksessf.0, %sw.bb224 ], [ %psksessf.0, %sw.bb223 ], [ %psksessf.0, %sw.bb222 ], [ %psksessf.0, %sw.bb221 ], [ %psksessf.0, %sw.bb219 ], [ %psksessf.0, %sw.bb217 ], [ %psksessf.0, %sw.bb216 ], [ %psksessf.0, %sw.bb214 ], [ %psksessf.0, %sw.bb213 ], [ %psksessf.0, %sw.bb212 ], [ %psksessf.0, %sw.bb211 ], [ %psksessf.0, %sw.bb206 ], [ %psksessf.0, %sw.bb354 ], [ %psksessf.0, %sw.bb357 ], [ %psksessf.0, %if.end203 ], [ %psksessf.0, %sw.bb359 ], [ %psksessf.0, %sw.bb367 ], [ %psksessf.0, %lor.lhs.false189 ], [ %psksessf.0, %sw.bb375 ], [ %psksessf.0, %sw.bb380 ], [ %psksessf.0, %sw.bb168 ], [ %psksessf.0, %sw.bb167 ], [ %psksessf.0, %sw.bb166 ], [ %psksessf.0, %sw.bb164 ], [ %psksessf.0, %sw.bb162 ], [ %psksessf.0, %sw.bb161 ], [ %psksessf.0, %sw.bb159 ], [ %psksessf.0, %sw.bb157 ], [ %psksessf.0, %sw.bb155 ], [ %psksessf.0, %sw.bb154 ], [ %psksessf.0, %sw.bb152 ], [ %psksessf.0, %sw.bb151 ], [ %psksessf.0, %sw.bb149 ], [ %psksessf.0, %sw.bb147 ], [ %psksessf.0, %sw.bb145 ], [ %psksessf.0, %sw.bb139 ], [ %psksessf.0, %sw.bb137 ], [ %psksessf.0, %sw.bb131 ], [ %psksessf.0, %sw.bb129 ], [ %psksessf.0, %sw.bb127 ], [ %psksessf.0, %sw.bb125 ], [ %psksessf.0, %sw.bb119 ], [ %psksessf.0, %sw.bb117 ], [ %psksessf.0, %sw.bb111 ], [ %psksessf.0, %sw.bb109 ], [ %psksessf.0, %sw.bb108 ], [ %psksessf.0, %sw.bb106 ], [ %psksessf.0, %sw.bb100 ], [ %psksessf.0, %sw.bb98 ], [ %psksessf.0, %sw.bb96 ], [ %psksessf.0, %sw.bb89 ], [ %psksessf.0, %if.then93 ], [ %psksessf.0, %sw.bb82 ], [ %psksessf.0, %if.then86 ], [ %psksessf.0, %sw.bb79 ], [ %psksessf.0, %sw.bb78 ], [ %psksessf.0, %sw.bb75 ], [ %psksessf.0, %sw.bb65 ], [ %psksessf.0, %sw.bb55 ], [ %psksessf.0, %if.then49 ], [ %psksessf.0, %sw.bb47 ], [ %psksessf.0, %if.then53 ], [ %psksessf.0, %sw.bb51 ], [ %psksessf.0, %sw.bb262 ], [ %psksessf.0, %for.cond ]
  %no_ca_names.0.be = phi i32 [ %no_ca_names.0, %if.end44 ], [ %no_ca_names.0, %sw.bb341 ], [ %no_ca_names.0, %sw.bb339 ], [ %no_ca_names.0, %sw.bb337 ], [ %no_ca_names.0, %sw.bb335 ], [ %no_ca_names.0, %sw.bb333 ], [ %no_ca_names.0, %sw.bb331 ], [ %no_ca_names.0, %sw.bb329 ], [ %no_ca_names.0, %sw.bb328 ], [ %no_ca_names.0, %sw.bb326 ], [ %no_ca_names.0, %sw.bb321 ], [ %no_ca_names.0, %sw.bb344 ], [ %no_ca_names.0, %sw.bb345 ], [ %no_ca_names.0, %sw.bb315 ], [ %no_ca_names.0, %sw.bb348 ], [ %no_ca_names.0, %sw.bb351 ], [ %no_ca_names.0, %sw.bb311 ], [ %no_ca_names.0, %sw.bb309 ], [ %no_ca_names.0, %sw.bb308 ], [ %no_ca_names.0, %sw.bb307 ], [ %no_ca_names.0, %sw.bb304 ], [ %no_ca_names.0, %sw.bb303 ], [ 1, %sw.bb381 ], [ %no_ca_names.0, %sw.bb382 ], [ %no_ca_names.0, %sw.bb301 ], [ %no_ca_names.0, %sw.bb299 ], [ %no_ca_names.0, %sw.bb297 ], [ %no_ca_names.0, %sw.bb296 ], [ %no_ca_names.0, %sw.bb295 ], [ %no_ca_names.0, %sw.bb294 ], [ %no_ca_names.0, %sw.bb293 ], [ %no_ca_names.0, %sw.bb292 ], [ %no_ca_names.0, %sw.bb290 ], [ %no_ca_names.0, %sw.bb289 ], [ %no_ca_names.0, %sw.bb288 ], [ %no_ca_names.0, %sw.bb287 ], [ %no_ca_names.0, %sw.bb286 ], [ %no_ca_names.0, %sw.bb280 ], [ %no_ca_names.0, %sw.bb274 ], [ %no_ca_names.0, %sw.bb272 ], [ %no_ca_names.0, %sw.bb260 ], [ %no_ca_names.0, %sw.bb258 ], [ %no_ca_names.0, %sw.bb257 ], [ %no_ca_names.0, %sw.bb256 ], [ %no_ca_names.0, %sw.bb255 ], [ %no_ca_names.0, %sw.bb254 ], [ %no_ca_names.0, %sw.bb253 ], [ %no_ca_names.0, %sw.bb252 ], [ %no_ca_names.0, %sw.bb251 ], [ %no_ca_names.0, %sw.bb250 ], [ %no_ca_names.0, %sw.bb249 ], [ %no_ca_names.0, %sw.bb246 ], [ %no_ca_names.0, %sw.bb245 ], [ %no_ca_names.0, %sw.bb243 ], [ %no_ca_names.0, %sw.bb236 ], [ %no_ca_names.0, %sw.bb234 ], [ %no_ca_names.0, %sw.bb232 ], [ %no_ca_names.0, %sw.bb229 ], [ %no_ca_names.0, %sw.bb228 ], [ %no_ca_names.0, %sw.bb227 ], [ %no_ca_names.0, %sw.bb226 ], [ %no_ca_names.0, %sw.bb225 ], [ %no_ca_names.0, %sw.bb224 ], [ %no_ca_names.0, %sw.bb223 ], [ %no_ca_names.0, %sw.bb222 ], [ %no_ca_names.0, %sw.bb221 ], [ %no_ca_names.0, %sw.bb219 ], [ %no_ca_names.0, %sw.bb217 ], [ %no_ca_names.0, %sw.bb216 ], [ %no_ca_names.0, %sw.bb214 ], [ %no_ca_names.0, %sw.bb213 ], [ %no_ca_names.0, %sw.bb212 ], [ %no_ca_names.0, %sw.bb211 ], [ %no_ca_names.0, %sw.bb206 ], [ %no_ca_names.0, %sw.bb354 ], [ %no_ca_names.0, %sw.bb357 ], [ %no_ca_names.0, %if.end203 ], [ %no_ca_names.0, %sw.bb359 ], [ %no_ca_names.0, %sw.bb367 ], [ %no_ca_names.0, %lor.lhs.false189 ], [ %no_ca_names.0, %sw.bb375 ], [ %no_ca_names.0, %sw.bb380 ], [ %no_ca_names.0, %sw.bb168 ], [ %no_ca_names.0, %sw.bb167 ], [ %no_ca_names.0, %sw.bb166 ], [ %no_ca_names.0, %sw.bb164 ], [ %no_ca_names.0, %sw.bb162 ], [ %no_ca_names.0, %sw.bb161 ], [ %no_ca_names.0, %sw.bb159 ], [ %no_ca_names.0, %sw.bb157 ], [ %no_ca_names.0, %sw.bb155 ], [ %no_ca_names.0, %sw.bb154 ], [ %no_ca_names.0, %sw.bb152 ], [ %no_ca_names.0, %sw.bb151 ], [ %no_ca_names.0, %sw.bb149 ], [ %no_ca_names.0, %sw.bb147 ], [ %no_ca_names.0, %sw.bb145 ], [ %no_ca_names.0, %sw.bb139 ], [ %no_ca_names.0, %sw.bb137 ], [ %no_ca_names.0, %sw.bb131 ], [ %no_ca_names.0, %sw.bb129 ], [ %no_ca_names.0, %sw.bb127 ], [ %no_ca_names.0, %sw.bb125 ], [ %no_ca_names.0, %sw.bb119 ], [ %no_ca_names.0, %sw.bb117 ], [ %no_ca_names.0, %sw.bb111 ], [ %no_ca_names.0, %sw.bb109 ], [ %no_ca_names.0, %sw.bb108 ], [ %no_ca_names.0, %sw.bb106 ], [ %no_ca_names.0, %sw.bb100 ], [ %no_ca_names.0, %sw.bb98 ], [ %no_ca_names.0, %sw.bb96 ], [ %no_ca_names.0, %sw.bb89 ], [ %no_ca_names.0, %if.then93 ], [ %no_ca_names.0, %sw.bb82 ], [ %no_ca_names.0, %if.then86 ], [ %no_ca_names.0, %sw.bb79 ], [ %no_ca_names.0, %sw.bb78 ], [ %no_ca_names.0, %sw.bb75 ], [ %no_ca_names.0, %sw.bb65 ], [ %no_ca_names.0, %sw.bb55 ], [ %no_ca_names.0, %if.then49 ], [ %no_ca_names.0, %sw.bb47 ], [ %no_ca_names.0, %if.then53 ], [ %no_ca_names.0, %sw.bb51 ], [ %no_ca_names.0, %sw.bb262 ], [ %no_ca_names.0, %for.cond ]
  %ignore_unexpected_eof.0.be = phi i32 [ %ignore_unexpected_eof.0, %if.end44 ], [ %ignore_unexpected_eof.0, %sw.bb341 ], [ %ignore_unexpected_eof.0, %sw.bb339 ], [ %ignore_unexpected_eof.0, %sw.bb337 ], [ %ignore_unexpected_eof.0, %sw.bb335 ], [ %ignore_unexpected_eof.0, %sw.bb333 ], [ %ignore_unexpected_eof.0, %sw.bb331 ], [ %ignore_unexpected_eof.0, %sw.bb329 ], [ %ignore_unexpected_eof.0, %sw.bb328 ], [ %ignore_unexpected_eof.0, %sw.bb326 ], [ %ignore_unexpected_eof.0, %sw.bb321 ], [ %ignore_unexpected_eof.0, %sw.bb344 ], [ %ignore_unexpected_eof.0, %sw.bb345 ], [ %ignore_unexpected_eof.0, %sw.bb315 ], [ %ignore_unexpected_eof.0, %sw.bb348 ], [ %ignore_unexpected_eof.0, %sw.bb351 ], [ %ignore_unexpected_eof.0, %sw.bb311 ], [ %ignore_unexpected_eof.0, %sw.bb309 ], [ %ignore_unexpected_eof.0, %sw.bb308 ], [ %ignore_unexpected_eof.0, %sw.bb307 ], [ %ignore_unexpected_eof.0, %sw.bb304 ], [ %ignore_unexpected_eof.0, %sw.bb303 ], [ %ignore_unexpected_eof.0, %sw.bb381 ], [ 1, %sw.bb382 ], [ %ignore_unexpected_eof.0, %sw.bb301 ], [ %ignore_unexpected_eof.0, %sw.bb299 ], [ %ignore_unexpected_eof.0, %sw.bb297 ], [ %ignore_unexpected_eof.0, %sw.bb296 ], [ %ignore_unexpected_eof.0, %sw.bb295 ], [ %ignore_unexpected_eof.0, %sw.bb294 ], [ %ignore_unexpected_eof.0, %sw.bb293 ], [ %ignore_unexpected_eof.0, %sw.bb292 ], [ %ignore_unexpected_eof.0, %sw.bb290 ], [ %ignore_unexpected_eof.0, %sw.bb289 ], [ %ignore_unexpected_eof.0, %sw.bb288 ], [ %ignore_unexpected_eof.0, %sw.bb287 ], [ %ignore_unexpected_eof.0, %sw.bb286 ], [ %ignore_unexpected_eof.0, %sw.bb280 ], [ %ignore_unexpected_eof.0, %sw.bb274 ], [ %ignore_unexpected_eof.0, %sw.bb272 ], [ %ignore_unexpected_eof.0, %sw.bb260 ], [ %ignore_unexpected_eof.0, %sw.bb258 ], [ %ignore_unexpected_eof.0, %sw.bb257 ], [ %ignore_unexpected_eof.0, %sw.bb256 ], [ %ignore_unexpected_eof.0, %sw.bb255 ], [ %ignore_unexpected_eof.0, %sw.bb254 ], [ %ignore_unexpected_eof.0, %sw.bb253 ], [ %ignore_unexpected_eof.0, %sw.bb252 ], [ %ignore_unexpected_eof.0, %sw.bb251 ], [ %ignore_unexpected_eof.0, %sw.bb250 ], [ %ignore_unexpected_eof.0, %sw.bb249 ], [ %ignore_unexpected_eof.0, %sw.bb246 ], [ %ignore_unexpected_eof.0, %sw.bb245 ], [ %ignore_unexpected_eof.0, %sw.bb243 ], [ %ignore_unexpected_eof.0, %sw.bb236 ], [ %ignore_unexpected_eof.0, %sw.bb234 ], [ %ignore_unexpected_eof.0, %sw.bb232 ], [ %ignore_unexpected_eof.0, %sw.bb229 ], [ %ignore_unexpected_eof.0, %sw.bb228 ], [ %ignore_unexpected_eof.0, %sw.bb227 ], [ %ignore_unexpected_eof.0, %sw.bb226 ], [ %ignore_unexpected_eof.0, %sw.bb225 ], [ %ignore_unexpected_eof.0, %sw.bb224 ], [ %ignore_unexpected_eof.0, %sw.bb223 ], [ %ignore_unexpected_eof.0, %sw.bb222 ], [ %ignore_unexpected_eof.0, %sw.bb221 ], [ %ignore_unexpected_eof.0, %sw.bb219 ], [ %ignore_unexpected_eof.0, %sw.bb217 ], [ %ignore_unexpected_eof.0, %sw.bb216 ], [ %ignore_unexpected_eof.0, %sw.bb214 ], [ %ignore_unexpected_eof.0, %sw.bb213 ], [ %ignore_unexpected_eof.0, %sw.bb212 ], [ %ignore_unexpected_eof.0, %sw.bb211 ], [ %ignore_unexpected_eof.0, %sw.bb206 ], [ %ignore_unexpected_eof.0, %sw.bb354 ], [ %ignore_unexpected_eof.0, %sw.bb357 ], [ %ignore_unexpected_eof.0, %if.end203 ], [ %ignore_unexpected_eof.0, %sw.bb359 ], [ %ignore_unexpected_eof.0, %sw.bb367 ], [ %ignore_unexpected_eof.0, %lor.lhs.false189 ], [ %ignore_unexpected_eof.0, %sw.bb375 ], [ %ignore_unexpected_eof.0, %sw.bb380 ], [ %ignore_unexpected_eof.0, %sw.bb168 ], [ %ignore_unexpected_eof.0, %sw.bb167 ], [ %ignore_unexpected_eof.0, %sw.bb166 ], [ %ignore_unexpected_eof.0, %sw.bb164 ], [ %ignore_unexpected_eof.0, %sw.bb162 ], [ %ignore_unexpected_eof.0, %sw.bb161 ], [ %ignore_unexpected_eof.0, %sw.bb159 ], [ %ignore_unexpected_eof.0, %sw.bb157 ], [ %ignore_unexpected_eof.0, %sw.bb155 ], [ %ignore_unexpected_eof.0, %sw.bb154 ], [ %ignore_unexpected_eof.0, %sw.bb152 ], [ %ignore_unexpected_eof.0, %sw.bb151 ], [ %ignore_unexpected_eof.0, %sw.bb149 ], [ %ignore_unexpected_eof.0, %sw.bb147 ], [ %ignore_unexpected_eof.0, %sw.bb145 ], [ %ignore_unexpected_eof.0, %sw.bb139 ], [ %ignore_unexpected_eof.0, %sw.bb137 ], [ %ignore_unexpected_eof.0, %sw.bb131 ], [ %ignore_unexpected_eof.0, %sw.bb129 ], [ %ignore_unexpected_eof.0, %sw.bb127 ], [ %ignore_unexpected_eof.0, %sw.bb125 ], [ %ignore_unexpected_eof.0, %sw.bb119 ], [ %ignore_unexpected_eof.0, %sw.bb117 ], [ %ignore_unexpected_eof.0, %sw.bb111 ], [ %ignore_unexpected_eof.0, %sw.bb109 ], [ %ignore_unexpected_eof.0, %sw.bb108 ], [ %ignore_unexpected_eof.0, %sw.bb106 ], [ %ignore_unexpected_eof.0, %sw.bb100 ], [ %ignore_unexpected_eof.0, %sw.bb98 ], [ %ignore_unexpected_eof.0, %sw.bb96 ], [ %ignore_unexpected_eof.0, %sw.bb89 ], [ %ignore_unexpected_eof.0, %if.then93 ], [ %ignore_unexpected_eof.0, %sw.bb82 ], [ %ignore_unexpected_eof.0, %if.then86 ], [ %ignore_unexpected_eof.0, %sw.bb79 ], [ %ignore_unexpected_eof.0, %sw.bb78 ], [ %ignore_unexpected_eof.0, %sw.bb75 ], [ %ignore_unexpected_eof.0, %sw.bb65 ], [ %ignore_unexpected_eof.0, %sw.bb55 ], [ %ignore_unexpected_eof.0, %if.then49 ], [ %ignore_unexpected_eof.0, %sw.bb47 ], [ %ignore_unexpected_eof.0, %if.then53 ], [ %ignore_unexpected_eof.0, %sw.bb51 ], [ %ignore_unexpected_eof.0, %sw.bb262 ], [ %ignore_unexpected_eof.0, %for.cond ]
  %engine.0.be = phi %struct.engine_st* [ %engine.0, %if.end44 ], [ %engine.0, %sw.bb341 ], [ %engine.0, %sw.bb339 ], [ %engine.0, %sw.bb337 ], [ %engine.0, %sw.bb335 ], [ %engine.0, %sw.bb333 ], [ %engine.0, %sw.bb331 ], [ %engine.0, %sw.bb329 ], [ %engine.0, %sw.bb328 ], [ %engine.0, %sw.bb326 ], [ %engine.0, %sw.bb321 ], [ %engine.0, %sw.bb344 ], [ %engine.0, %sw.bb345 ], [ %engine.0, %sw.bb315 ], [ %engine.0, %sw.bb348 ], [ %engine.0, %sw.bb351 ], [ %call313, %sw.bb311 ], [ %engine.0, %sw.bb309 ], [ %engine.0, %sw.bb308 ], [ %engine.0, %sw.bb307 ], [ %engine.0, %sw.bb304 ], [ %engine.0, %sw.bb303 ], [ %engine.0, %sw.bb381 ], [ %engine.0, %sw.bb382 ], [ %engine.0, %sw.bb301 ], [ %engine.0, %sw.bb299 ], [ %engine.0, %sw.bb297 ], [ %engine.0, %sw.bb296 ], [ %engine.0, %sw.bb295 ], [ %engine.0, %sw.bb294 ], [ %engine.0, %sw.bb293 ], [ %engine.0, %sw.bb292 ], [ %engine.0, %sw.bb290 ], [ %engine.0, %sw.bb289 ], [ %engine.0, %sw.bb288 ], [ %engine.0, %sw.bb287 ], [ %engine.0, %sw.bb286 ], [ %engine.0, %sw.bb280 ], [ %engine.0, %sw.bb274 ], [ %engine.0, %sw.bb272 ], [ %engine.0, %sw.bb260 ], [ %engine.0, %sw.bb258 ], [ %engine.0, %sw.bb257 ], [ %engine.0, %sw.bb256 ], [ %engine.0, %sw.bb255 ], [ %engine.0, %sw.bb254 ], [ %engine.0, %sw.bb253 ], [ %engine.0, %sw.bb252 ], [ %engine.0, %sw.bb251 ], [ %engine.0, %sw.bb250 ], [ %engine.0, %sw.bb249 ], [ %engine.0, %sw.bb246 ], [ %engine.0, %sw.bb245 ], [ %engine.0, %sw.bb243 ], [ %engine.0, %sw.bb236 ], [ %engine.0, %sw.bb234 ], [ %engine.0, %sw.bb232 ], [ %engine.0, %sw.bb229 ], [ %engine.0, %sw.bb228 ], [ %engine.0, %sw.bb227 ], [ %engine.0, %sw.bb226 ], [ %engine.0, %sw.bb225 ], [ %engine.0, %sw.bb224 ], [ %engine.0, %sw.bb223 ], [ %engine.0, %sw.bb222 ], [ %engine.0, %sw.bb221 ], [ %engine.0, %sw.bb219 ], [ %engine.0, %sw.bb217 ], [ %engine.0, %sw.bb216 ], [ %engine.0, %sw.bb214 ], [ %engine.0, %sw.bb213 ], [ %engine.0, %sw.bb212 ], [ %engine.0, %sw.bb211 ], [ %engine.0, %sw.bb206 ], [ %engine.0, %sw.bb354 ], [ %engine.0, %sw.bb357 ], [ %engine.0, %if.end203 ], [ %engine.0, %sw.bb359 ], [ %engine.0, %sw.bb367 ], [ %engine.0, %lor.lhs.false189 ], [ %engine.0, %sw.bb375 ], [ %engine.0, %sw.bb380 ], [ %engine.0, %sw.bb168 ], [ %engine.0, %sw.bb167 ], [ %engine.0, %sw.bb166 ], [ %engine.0, %sw.bb164 ], [ %engine.0, %sw.bb162 ], [ %engine.0, %sw.bb161 ], [ %engine.0, %sw.bb159 ], [ %engine.0, %sw.bb157 ], [ %engine.0, %sw.bb155 ], [ %engine.0, %sw.bb154 ], [ %engine.0, %sw.bb152 ], [ %engine.0, %sw.bb151 ], [ %engine.0, %sw.bb149 ], [ %engine.0, %sw.bb147 ], [ %engine.0, %sw.bb145 ], [ %engine.0, %sw.bb139 ], [ %engine.0, %sw.bb137 ], [ %engine.0, %sw.bb131 ], [ %engine.0, %sw.bb129 ], [ %engine.0, %sw.bb127 ], [ %engine.0, %sw.bb125 ], [ %engine.0, %sw.bb119 ], [ %engine.0, %sw.bb117 ], [ %engine.0, %sw.bb111 ], [ %engine.0, %sw.bb109 ], [ %engine.0, %sw.bb108 ], [ %engine.0, %sw.bb106 ], [ %engine.0, %sw.bb100 ], [ %engine.0, %sw.bb98 ], [ %engine.0, %sw.bb96 ], [ %engine.0, %sw.bb89 ], [ %engine.0, %if.then93 ], [ %engine.0, %sw.bb82 ], [ %engine.0, %if.then86 ], [ %engine.0, %sw.bb79 ], [ %engine.0, %sw.bb78 ], [ %engine.0, %sw.bb75 ], [ %engine.0, %sw.bb65 ], [ %engine.0, %sw.bb55 ], [ %engine.0, %if.then49 ], [ %engine.0, %sw.bb47 ], [ %engine.0, %if.then53 ], [ %engine.0, %sw.bb51 ], [ %engine.0, %sw.bb262 ], [ %engine.0, %for.cond ]
  br label %while.cond, !llvm.loop !20

for.body.lr.ph:                                   ; preds = %sw.bb262
  %call265 = tail call i16** @__ctype_b_loc() #16
  %42 = load i16*, i16** %call265, align 8, !tbaa !3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %43 = load i8, i8* %incdec.ptr, align 1, !tbaa !19
  %tobool264.not = icmp eq i8 %43, 0
  br i1 %tobool264.not, label %while.cond.backedge, label %for.body, !llvm.loop !20

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %44 = phi i8 [ %41, %for.body.lr.ph ], [ %43, %for.cond ]
  %p.02265 = phi i8* [ %call263, %for.body.lr.ph ], [ %incdec.ptr, %for.cond ]
  %45 = zext i8 %44 to i64
  %arrayidx = getelementptr inbounds i16, i16* %42, i64 %45
  %46 = load i16, i16* %arrayidx, align 2, !tbaa !22
  %47 = and i16 %46, 4096
  %tobool268.not = icmp eq i16 %47, 0
  %incdec.ptr = getelementptr inbounds i8, i8* %p.02265, i64 1
  br i1 %tobool268.not, label %if.end270, label %for.cond

if.end270:                                        ; preds = %for.body
  %48 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call271 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %48, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.409, i64 0, i64 0), i8* noundef nonnull %call263) #12
  br label %end

sw.bb272:                                         ; preds = %if.end44
  %call273 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb274:                                         ; preds = %if.end44
  %call275 = call i8* @opt_arg() #12
  %49 = icmp sgt i32 %min_version.0, 769
  %spec.store.select1158 = select i1 %49, i32 %min_version.0, i32 769
  br label %while.cond.backedge

sw.bb280:                                         ; preds = %if.end44
  %call281 = call i8* @opt_arg() #12
  %50 = icmp ugt i32 %min_version.0, 769
  %spec.store.select1159 = select i1 %50, i32 %min_version.0, i32 769
  br label %while.cond.backedge

sw.bb286:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb287:                                         ; preds = %if.end44
  store i32 1, i32* @www, align 4, !tbaa !7
  br label %while.cond.backedge

sw.bb288:                                         ; preds = %if.end44
  store i32 2, i32* @www, align 4, !tbaa !7
  br label %while.cond.backedge

sw.bb289:                                         ; preds = %if.end44
  store i32 3, i32* @www, align 4, !tbaa !7
  br label %while.cond.backedge

sw.bb290:                                         ; preds = %if.end44
  %call291 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb292:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb293:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb294:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb295:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb296:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb297:                                         ; preds = %if.end44
  %call298 = call %struct.ssl_method_st* @DTLS_server_method() #12
  br label %while.cond.backedge

sw.bb299:                                         ; preds = %if.end44
  %call300 = call %struct.ssl_method_st* @DTLS_server_method() #12
  br label %while.cond.backedge

sw.bb301:                                         ; preds = %if.end44
  %call302 = call %struct.ssl_method_st* @DTLS_server_method() #12
  br label %while.cond.backedge

sw.bb303:                                         ; preds = %if.end44
  store i1 true, i1* @enable_timeouts, align 4
  br label %while.cond.backedge

sw.bb304:                                         ; preds = %if.end44
  %call305 = call i8* @opt_arg() #12
  %call306 = call i64 @atol(i8* noundef %call305) #14
  store i64 %call306, i64* @socket_mtu, align 8, !tbaa !24
  br label %while.cond.backedge

sw.bb307:                                         ; preds = %if.end44
  store i1 true, i1* @dtlslisten, align 4
  br label %while.cond.backedge

sw.bb308:                                         ; preds = %if.end44
  store i1 true, i1* @stateless, align 4
  br label %while.cond.backedge

sw.bb309:                                         ; preds = %if.end44
  %call310 = call i8* @opt_arg() #12
  store i8* %call310, i8** @session_id_prefix, align 8, !tbaa !3
  br label %while.cond.backedge

sw.bb311:                                         ; preds = %if.end44
  %call312 = call i8* @opt_arg() #12
  %.b1428 = load i1, i1* @s_debug, align 4
  %51 = zext i1 %.b1428 to i32
  %call313 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call312, i32 noundef -1, i32 noundef %51) #12
  br label %while.cond.backedge

sw.bb315:                                         ; preds = %if.end44, %if.end44
  %call316 = call i32 @opt_rand(i32 noundef %call7) #12
  %tobool317.not = icmp eq i32 %call316, 0
  br i1 %tobool317.not, label %end, label %while.cond.backedge

sw.bb321:                                         ; preds = %if.end44, %if.end44, %if.end44
  %call322 = call i32 @opt_provider(i32 noundef %call7) #12
  %tobool323.not = icmp eq i32 %call322, 0
  br i1 %tobool323.not, label %end, label %while.cond.backedge

sw.bb326:                                         ; preds = %if.end44
  %call327 = call i8* @opt_arg() #12
  store i8* %call327, i8** %servername, align 8, !tbaa !26
  br label %while.cond.backedge

sw.bb328:                                         ; preds = %if.end44
  store i32 2, i32* %extension_error, align 8, !tbaa !28
  br label %while.cond.backedge

sw.bb329:                                         ; preds = %if.end44
  %call330 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb331:                                         ; preds = %if.end44
  %call332 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb333:                                         ; preds = %if.end44
  %call334 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb335:                                         ; preds = %if.end44
  %call336 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb337:                                         ; preds = %if.end44
  %call338 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb339:                                         ; preds = %if.end44
  %call340 = call i8* @opt_arg() #12
  store i8* %call340, i8** @keymatexportlabel, align 8, !tbaa !3
  br label %while.cond.backedge

sw.bb341:                                         ; preds = %if.end44
  %call342 = call i8* @opt_arg() #12
  %call343 = call i32 @atoi(i8* noundef %call342) #14
  store i32 %call343, i32* @keymatexportlen, align 4, !tbaa !7
  br label %while.cond.backedge

sw.bb344:                                         ; preds = %if.end44
  store i1 true, i1* @async, align 4
  br label %while.cond.backedge

sw.bb345:                                         ; preds = %if.end44
  %call346 = call i8* @opt_arg() #12
  %call347 = call i32 @atoi(i8* noundef %call346) #14
  br label %while.cond.backedge

sw.bb348:                                         ; preds = %if.end44
  %call349 = call i8* @opt_arg() #12
  %call350 = call i32 @atoi(i8* noundef %call349) #14
  br label %while.cond.backedge

sw.bb351:                                         ; preds = %if.end44
  %call352 = call i8* @opt_arg() #12
  %call353 = call i32 @atoi(i8* noundef %call352) #14
  br label %while.cond.backedge

sw.bb354:                                         ; preds = %if.end44
  %call355 = call i8* @opt_arg() #12
  %call356 = call i32 @atoi(i8* noundef %call355) #14
  br label %while.cond.backedge

sw.bb357:                                         ; preds = %if.end44
  %call358 = call i8* @opt_arg() #12
  br label %while.cond.backedge

sw.bb359:                                         ; preds = %if.end44
  %call360 = call i8* @opt_arg() #12
  %call361 = call i32 @atoi(i8* noundef %call360) #14
  %cmp362 = icmp slt i32 %call361, 0
  br i1 %cmp362, label %if.then364, label %while.cond.backedge

if.then364:                                       ; preds = %sw.bb359
  %52 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call365 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %52, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.410, i64 0, i64 0)) #12
  br label %end

sw.bb367:                                         ; preds = %if.end44
  %call368 = call i8* @opt_arg() #12
  %call369 = call i32 @atoi(i8* noundef %call368) #14
  %cmp370 = icmp slt i32 %call369, 0
  br i1 %cmp370, label %if.then372, label %while.cond.backedge

if.then372:                                       ; preds = %sw.bb367
  %53 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call373 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %53, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.411, i64 0, i64 0)) #12
  br label %end

sw.bb375:                                         ; preds = %if.end44
  store i1 true, i1* @early_data, align 4
  %cmp376 = icmp eq i32 %max_early_data.0, -1
  %spec.store.select1160 = select i1 %cmp376, i32 16384, i32 %max_early_data.0
  br label %while.cond.backedge

sw.bb380:                                         ; preds = %if.end44
  store i1 true, i1* @http_server_binmode, align 1
  br label %while.cond.backedge

sw.bb381:                                         ; preds = %if.end44
  br label %while.cond.backedge

sw.bb382:                                         ; preds = %if.end44
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call383 = call i32 @opt_num_rest() #12
  %cmp384.not = icmp eq i32 %call383, 0
  br i1 %cmp384.not, label %if.end387, label %opthelp

if.end387:                                        ; preds = %while.end
  %call388 = call i32 @app_RAND_load() #12
  %tobool389.not = icmp eq i32 %call388, 0
  br i1 %tobool389.not, label %end, label %if.end391

if.end391:                                        ; preds = %if.end387
  %cmp392 = icmp eq i32 %min_version.0, 772
  %cmp395 = icmp ne i8* %next_proto_neg_in.0, null
  %or.cond1161 = select i1 %cmp392, i1 %cmp395, i1 false
  br i1 %or.cond1161, label %if.then397, label %if.end399

if.then397:                                       ; preds = %if.end391
  %54 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call398 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %54, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.412, i64 0, i64 0)) #12
  br label %opthelp

if.end399:                                        ; preds = %if.end391
  %55 = load i32, i32* @www, align 4, !tbaa !7
  %tobool400 = icmp ne i32 %55, 0
  %cmp402 = icmp eq i32 %socket_type.0, 2
  %or.cond1162 = select i1 %tobool400, i1 %cmp402, i1 false
  br i1 %or.cond1162, label %if.then404, label %if.end406

if.then404:                                       ; preds = %if.end399
  %56 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call405 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %56, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.413, i64 0, i64 0)) #12
  br label %end

if.end406:                                        ; preds = %if.end399
  %.b1434 = load i1, i1* @dtlslisten, align 4
  %cmp409 = icmp ne i32 %socket_type.0, 2
  %or.cond1163 = select i1 %.b1434, i1 %cmp409, i1 false
  br i1 %or.cond1163, label %if.then411, label %if.end413

if.then411:                                       ; preds = %if.end406
  %57 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call412 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %57, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.414, i64 0, i64 0)) #12
  br label %end

if.end413:                                        ; preds = %if.end406
  %.b1435 = load i1, i1* @stateless, align 4
  %cmp416 = icmp ne i32 %socket_type.0, 1
  %or.cond1164 = select i1 %.b1435, i1 %cmp416, i1 false
  br i1 %or.cond1164, label %if.then418, label %if.end420

if.then418:                                       ; preds = %if.end413
  %58 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call419 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %58, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.415, i64 0, i64 0)) #12
  br label %end

if.end420:                                        ; preds = %if.end413
  %cmp421 = icmp eq i32 %socket_family.0, 1
  %or.cond1165 = select i1 %cmp421, i1 %cmp416, i1 false
  br i1 %or.cond1165, label %if.then426, label %if.end428

if.then426:                                       ; preds = %if.end420
  %59 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call427 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %59, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.416, i64 0, i64 0)) #12
  br label %end

if.end428:                                        ; preds = %if.end420
  %.b1436 = load i1, i1* @early_data, align 4
  br i1 %.b1436, label %land.lhs.true430, label %if.end437

land.lhs.true430:                                 ; preds = %if.end428
  %cmp431 = icmp sgt i32 %55, 0
  %tobool434 = icmp ne i32 %rev.0, 0
  %or.cond1166 = select i1 %cmp431, i1 true, i1 %tobool434
  br i1 %or.cond1166, label %if.then435, label %if.end437

if.then435:                                       ; preds = %land.lhs.true430
  %60 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call436 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %60, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.417, i64 0, i64 0)) #12
  br label %end

if.end437:                                        ; preds = %land.lhs.true430, %if.end428
  %call438 = call i32 @app_passwd(i8* noundef %passarg.0, i8* noundef %dpassarg.0, i8** noundef nonnull %pass, i8** noundef nonnull %dpass) #12
  %tobool439.not = icmp eq i32 %call438, 0
  br i1 %tobool439.not, label %if.then440, label %if.end442

if.then440:                                       ; preds = %if.end437
  %61 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call441 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %61, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.418, i64 0, i64 0)) #12
  br label %end

if.end442:                                        ; preds = %if.end437
  %cmp443 = icmp eq i8* %s_key_file.0, null
  %spec.select1437 = select i1 %cmp443, i8* %s_cert_file.0, i8* %s_key_file.0
  %cmp447 = icmp eq i8* %s_key_file2.0, null
  %s_key_file2.2 = select i1 %cmp447, i8* %s_cert_file2.0, i8* %s_key_file2.0
  %call451 = call i32 @load_excert(%struct.ssl_excert_st** noundef nonnull %exc) #12
  %tobool452.not = icmp eq i32 %call451, 0
  br i1 %tobool452.not, label %end, label %if.end454

if.end454:                                        ; preds = %if.end442
  %cmp455 = icmp eq i32 %nocert.0, 0
  br i1 %cmp455, label %if.then457, label %if.end491

if.then457:                                       ; preds = %if.end454
  %62 = load i32, i32* %s_key_format, align 4, !tbaa !7
  %63 = load i8*, i8** %pass, align 8, !tbaa !3
  %call458 = call %struct.evp_pkey_st* @load_key(i8* noundef %spec.select1437, i32 noundef %62, i32 noundef 0, i8* noundef %63, %struct.engine_st* noundef %engine.0, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.419, i64 0, i64 0)) #12
  %cmp459 = icmp eq %struct.evp_pkey_st* %call458, null
  br i1 %cmp459, label %end, label %if.end462

if.end462:                                        ; preds = %if.then457
  %64 = load i32, i32* %s_cert_format, align 4, !tbaa !7
  %65 = load i8*, i8** %pass, align 8, !tbaa !3
  %call463 = call %struct.x509_st* @load_cert_pass(i8* noundef %s_cert_file.0, i32 noundef %64, i32 noundef 1, i8* noundef %65, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.420, i64 0, i64 0)) #12
  %cmp464 = icmp eq %struct.x509_st* %call463, null
  br i1 %cmp464, label %end, label %if.end467

if.end467:                                        ; preds = %if.end462
  %cmp468.not = icmp eq i8* %s_chain_file.0, null
  br i1 %cmp468.not, label %if.end475, label %if.then470

if.then470:                                       ; preds = %if.end467
  %call471 = call i32 @load_certs(i8* noundef nonnull %s_chain_file.0, i32 noundef 0, %struct.stack_st_X509** noundef nonnull %s_chain, i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.421, i64 0, i64 0)) #12
  %tobool472.not = icmp eq i32 %call471, 0
  br i1 %tobool472.not, label %end, label %if.end475

if.end475:                                        ; preds = %if.then470, %if.end467
  %cmp477.not = icmp eq i8* %16, null
  br i1 %cmp477.not, label %if.end491, label %if.then479

if.then479:                                       ; preds = %if.end475
  %66 = load i32, i32* %s_key_format, align 4, !tbaa !7
  %67 = load i8*, i8** %pass, align 8, !tbaa !3
  %call480 = call %struct.evp_pkey_st* @load_key(i8* noundef %s_key_file2.2, i32 noundef %66, i32 noundef 0, i8* noundef %67, %struct.engine_st* noundef %engine.0, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.422, i64 0, i64 0)) #12
  %cmp481 = icmp eq %struct.evp_pkey_st* %call480, null
  br i1 %cmp481, label %end, label %if.end484

if.end484:                                        ; preds = %if.then479
  %68 = load i32, i32* %s_cert_format, align 4, !tbaa !7
  %69 = load i8*, i8** %pass, align 8, !tbaa !3
  %call485 = call %struct.x509_st* @load_cert_pass(i8* noundef %s_cert_file2.0, i32 noundef %68, i32 noundef 1, i8* noundef %69, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.423, i64 0, i64 0)) #12
  %cmp486 = icmp eq %struct.x509_st* %call485, null
  br i1 %cmp486, label %end, label %if.end491

if.end491:                                        ; preds = %if.end475, %if.end484, %if.end454
  %s_cert.0 = phi %struct.x509_st* [ %call463, %if.end484 ], [ %call463, %if.end475 ], [ null, %if.end454 ]
  %s_key.0 = phi %struct.evp_pkey_st* [ %call458, %if.end484 ], [ %call458, %if.end475 ], [ null, %if.end454 ]
  %s_key2.0 = phi %struct.evp_pkey_st* [ %call480, %if.end484 ], [ null, %if.end475 ], [ null, %if.end454 ]
  %s_cert2.0 = phi %struct.x509_st* [ %call485, %if.end484 ], [ null, %if.end475 ], [ null, %if.end454 ]
  br i1 %cmp395, label %if.then493, label %if.end500

if.then493:                                       ; preds = %if.end491
  %len = getelementptr inbounds %struct.tlsextnextprotoctx_st, %struct.tlsextnextprotoctx_st* %next_proto, i64 0, i32 1
  %call494 = call i8* @next_protos_parse(i64* noundef nonnull %len, i8* noundef nonnull %next_proto_neg_in.0) #12
  %data = getelementptr inbounds %struct.tlsextnextprotoctx_st, %struct.tlsextnextprotoctx_st* %next_proto, i64 0, i32 0
  store i8* %call494, i8** %data, align 8, !tbaa !29
  %cmp496 = icmp eq i8* %call494, null
  br i1 %cmp496, label %end, label %if.end500

if.end500:                                        ; preds = %if.then493, %if.end491
  %data501 = getelementptr inbounds %struct.tlsextalpnctx_st, %struct.tlsextalpnctx_st* %alpn_ctx, i64 0, i32 0
  store i8* null, i8** %data501, align 8, !tbaa !31
  %tobool502.not = icmp eq i8* %alpn_in.0, null
  br i1 %tobool502.not, label %if.end512, label %if.then503

if.then503:                                       ; preds = %if.end500
  %len504 = getelementptr inbounds %struct.tlsextalpnctx_st, %struct.tlsextalpnctx_st* %alpn_ctx, i64 0, i32 1
  %call505 = call i8* @next_protos_parse(i64* noundef nonnull %len504, i8* noundef nonnull %alpn_in.0) #12
  store i8* %call505, i8** %data501, align 8, !tbaa !31
  %cmp508 = icmp eq i8* %call505, null
  br i1 %cmp508, label %end, label %if.end512

if.end512:                                        ; preds = %if.then503, %if.end500
  %cmp513.not = icmp eq i8* %crl_file.0, null
  br i1 %cmp513.not, label %if.end532, label %if.then515

if.then515:                                       ; preds = %if.end512
  %70 = load i32, i32* %crl_format, align 4, !tbaa !7
  %call516 = call %struct.X509_crl_st* @load_crl(i8* noundef nonnull %crl_file.0, i32 noundef %70, i32 noundef 0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)) #12
  %cmp517 = icmp eq %struct.X509_crl_st* %call516, null
  br i1 %cmp517, label %end, label %if.end520

if.end520:                                        ; preds = %if.then515
  %call521 = call %struct.stack_st* @OPENSSL_sk_new_null() #12
  %71 = bitcast %struct.stack_st* %call521 to %struct.stack_st_X509_CRL*
  %cmp522 = icmp eq %struct.stack_st* %call521, null
  br i1 %cmp522, label %if.then529, label %lor.lhs.false524

lor.lhs.false524:                                 ; preds = %if.end520
  %call525 = call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef nonnull %71) #15
  %72 = bitcast %struct.X509_crl_st* %call516 to i8*
  %call527 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call525, i8* noundef nonnull %72) #12
  %tobool528.not = icmp eq i32 %call527, 0
  br i1 %tobool528.not, label %if.then529, label %if.end532

if.then529:                                       ; preds = %lor.lhs.false524, %if.end520
  %73 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call530 = call i32 @BIO_puts(%struct.bio_st* noundef %73, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.424, i64 0, i64 0)) #12
  %74 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %74) #12
  call void @X509_CRL_free(%struct.X509_crl_st* noundef nonnull %call516) #12
  br label %end

if.end532:                                        ; preds = %lor.lhs.false524, %if.end512
  %crls.1 = phi %struct.stack_st_X509_CRL* [ null, %if.end512 ], [ %71, %lor.lhs.false524 ]
  %cmp533.not = icmp eq i8* %s_dcert_file.0, null
  br i1 %cmp533.not, label %if.end558, label %if.then535

if.then535:                                       ; preds = %if.end532
  %cmp536 = icmp eq i8* %s_dkey_file.0, null
  %spec.select1439 = select i1 %cmp536, i8* %s_dcert_file.0, i8* %s_dkey_file.0
  %75 = load i32, i32* %s_dkey_format, align 4, !tbaa !7
  %76 = load i8*, i8** %dpass, align 8, !tbaa !3
  %call540 = call %struct.evp_pkey_st* @load_key(i8* noundef %spec.select1439, i32 noundef %75, i32 noundef 0, i8* noundef %76, %struct.engine_st* noundef %engine.0, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.425, i64 0, i64 0)) #12
  %cmp541 = icmp eq %struct.evp_pkey_st* %call540, null
  br i1 %cmp541, label %end, label %if.end544

if.end544:                                        ; preds = %if.then535
  %77 = load i32, i32* %s_dcert_format, align 4, !tbaa !7
  %78 = load i8*, i8** %dpass, align 8, !tbaa !3
  %call545 = call %struct.x509_st* @load_cert_pass(i8* noundef nonnull %s_dcert_file.0, i32 noundef %77, i32 noundef 1, i8* noundef %78, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.423, i64 0, i64 0)) #12
  %cmp546 = icmp eq %struct.x509_st* %call545, null
  br i1 %cmp546, label %if.then548, label %if.end549

if.then548:                                       ; preds = %if.end544
  %79 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %79) #12
  br label %end

if.end549:                                        ; preds = %if.end544
  %cmp550.not = icmp eq i8* %s_dchain_file.0, null
  br i1 %cmp550.not, label %if.end558, label %if.then552

if.then552:                                       ; preds = %if.end549
  %call553 = call i32 @load_certs(i8* noundef nonnull %s_dchain_file.0, i32 noundef 0, %struct.stack_st_X509** noundef nonnull %s_dchain, i8* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.426, i64 0, i64 0)) #12
  %tobool554.not = icmp eq i32 %call553, 0
  br i1 %tobool554.not, label %end, label %if.end558

if.end558:                                        ; preds = %if.end549, %if.then552, %if.end532
  %s_dcert.0 = phi %struct.x509_st* [ %call545, %if.then552 ], [ %call545, %if.end549 ], [ null, %if.end532 ]
  %s_dkey.0 = phi %struct.evp_pkey_st* [ %call540, %if.then552 ], [ %call540, %if.end549 ], [ null, %if.end532 ]
  %80 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %cmp559 = icmp eq %struct.bio_st* %80, null
  br i1 %cmp559, label %if.then561, label %if.end581

if.then561:                                       ; preds = %if.end558
  %.b1429 = load i1, i1* @s_quiet, align 4
  %tobool562 = xor i1 %.b1429, true
  %.b = load i1, i1* @s_debug, align 4
  %or.cond1167 = select i1 %tobool562, i1 true, i1 %.b
  br i1 %or.cond1167, label %if.end581.sink.split, label %if.then565

if.then565:                                       ; preds = %if.then561
  %call566 = call %struct.bio_method_st* @BIO_s_null() #12
  %call567 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call566) #12
  store %struct.bio_st* %call567, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %81 = load i32, i32* @s_msg, align 4, !tbaa !7
  %tobool568 = icmp ne i32 %81, 0
  %82 = load %struct.bio_st*, %struct.bio_st** @bio_s_msg, align 8
  %cmp570 = icmp eq %struct.bio_st* %82, null
  %or.cond1168 = select i1 %tobool568, i1 %cmp570, i1 false
  br i1 %or.cond1168, label %if.end581.sink.split, label %if.end581

if.end581.sink.split:                             ; preds = %if.then561, %if.then565
  %bio_s_msg.sink = phi %struct.bio_st** [ @bio_s_msg, %if.then565 ], [ @bio_s_out, %if.then561 ]
  %call573 = call %struct.bio_st* @dup_bio_out(i32 noundef 32769) #12
  store %struct.bio_st* %call573, %struct.bio_st** %bio_s_msg.sink, align 8, !tbaa !3
  br label %if.end581

if.end581:                                        ; preds = %if.end581.sink.split, %if.then565, %if.end558
  %spec.select1440 = select i1 %cmp455, i8* %s_cert_file.0, i8* null
  %spec.select1441 = select i1 %cmp455, i8* %s_cert_file2.0, i8* null
  %call585 = call %struct.ossl_lib_ctx_st* @app_get0_libctx() #12
  %call586 = call i8* @app_get0_propq() #12
  %call587 = call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %call585, i8* noundef %call586, %struct.ssl_method_st* noundef %meth.0) #12
  store %struct.ssl_ctx_st* %call587, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %cmp588 = icmp eq %struct.ssl_ctx_st* %call587, null
  br i1 %cmp588, label %if.then590, label %if.end591

if.then590:                                       ; preds = %if.end581
  %83 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %83) #12
  br label %end

if.end591:                                        ; preds = %if.end581
  %call592 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %call587, i32 noundef 78, i64 noundef 4, i8* noundef null) #12
  %tobool593.not = icmp eq i32 %sdebug.0, 0
  br i1 %tobool593.not, label %if.end595, label %if.then594

if.then594:                                       ; preds = %if.end591
  %84 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  call void @ssl_ctx_security_debug(%struct.ssl_ctx_st* noundef %84, i32 noundef %sdebug.0) #12
  br label %if.end595

if.end595:                                        ; preds = %if.then594, %if.end591
  %85 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call596 = call i32 @config_ctx(%struct.ssl_conf_ctx_st* noundef %call2, %struct.stack_st_OPENSSL_STRING* noundef %ssl_args.0, %struct.ssl_ctx_st* noundef %85) #12
  %tobool597.not = icmp eq i32 %call596, 0
  br i1 %tobool597.not, label %end, label %if.end599

if.end599:                                        ; preds = %if.end595
  %tobool600.not = icmp eq i8* %ssl_config.0, null
  br i1 %tobool600.not, label %if.end608, label %if.then601

if.then601:                                       ; preds = %if.end599
  %86 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call602 = call i32 @SSL_CTX_config(%struct.ssl_ctx_st* noundef %86, i8* noundef nonnull %ssl_config.0) #12
  %cmp603 = icmp eq i32 %call602, 0
  br i1 %cmp603, label %if.then605, label %if.end608

if.then605:                                       ; preds = %if.then601
  %87 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call606 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %87, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.427, i64 0, i64 0), i8* noundef nonnull %ssl_config.0) #12
  %88 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %88) #12
  br label %end

if.end608:                                        ; preds = %if.then601, %if.end599
  %cmp609.not = icmp eq i32 %min_version.0, 0
  br i1 %cmp609.not, label %if.end617, label %land.lhs.true611

land.lhs.true611:                                 ; preds = %if.end608
  %89 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %conv612 = sext i32 %min_version.0 to i64
  %call613 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %89, i32 noundef 123, i64 noundef %conv612, i8* noundef null) #12
  %cmp614 = icmp eq i64 %call613, 0
  br i1 %cmp614, label %end, label %if.end617

if.end617:                                        ; preds = %land.lhs.true611, %if.end608
  %cmp618.not = icmp eq i32 %max_version.0, 0
  br i1 %cmp618.not, label %if.end626, label %land.lhs.true620

land.lhs.true620:                                 ; preds = %if.end617
  %90 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %conv621 = zext i32 %max_version.0 to i64
  %call622 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %90, i32 noundef 124, i64 noundef %conv621, i8* noundef null) #12
  %cmp623 = icmp eq i64 %call622, 0
  br i1 %cmp623, label %end, label %if.end626

if.end626:                                        ; preds = %land.lhs.true620, %if.end617
  %91 = load i8*, i8** @session_id_prefix, align 8, !tbaa !3
  %tobool627.not = icmp eq i8* %91, null
  br i1 %tobool627.not, label %if.end641, label %if.then628

if.then628:                                       ; preds = %if.end626
  %call629 = call i64 @strlen(i8* noundef nonnull %91) #14
  %cmp630 = icmp ugt i64 %call629, 31
  br i1 %cmp630, label %if.then632, label %if.end634

if.then632:                                       ; preds = %if.then628
  %92 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call633 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %92, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.428, i64 0, i64 0)) #12
  br label %if.end634

if.end634:                                        ; preds = %if.then632, %if.then628
  %93 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call635 = call i32 @SSL_CTX_set_generate_session_id(%struct.ssl_ctx_st* noundef %93, i32 (%struct.ssl_st*, i8*, i32*)* noundef nonnull @generate_session_id) #12
  %tobool636.not = icmp eq i32 %call635, 0
  %94 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %tobool636.not, label %if.then637, label %if.end639

if.then637:                                       ; preds = %if.end634
  %call638 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %94, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.429, i64 0, i64 0)) #12
  %95 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %95) #12
  br label %end

if.end639:                                        ; preds = %if.end634
  %96 = load i8*, i8** @session_id_prefix, align 8, !tbaa !3
  %call640 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %94, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.430, i64 0, i64 0), i8* noundef %96) #12
  br label %if.end641

if.end641:                                        ; preds = %if.end639, %if.end626
  %97 = load %struct.ssl_excert_st*, %struct.ssl_excert_st** %exc, align 8, !tbaa !3
  %cmp642.not = icmp eq %struct.ssl_excert_st* %97, null
  br i1 %cmp642.not, label %if.end645, label %if.then644

if.then644:                                       ; preds = %if.end641
  %98 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  call void @ssl_ctx_set_excert(%struct.ssl_ctx_st* noundef %98, %struct.ssl_excert_st* noundef nonnull %97) #12
  br label %if.end645

if.end645:                                        ; preds = %if.then644, %if.end641
  %tobool646.not = icmp eq i32 %state.0, 0
  br i1 %tobool646.not, label %if.end648, label %if.then647

if.then647:                                       ; preds = %if.end645
  %99 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  call void @SSL_CTX_set_info_callback(%struct.ssl_ctx_st* noundef %99, void (%struct.ssl_st*, i32, i32)* noundef nonnull @apps_ssl_info_callback) #12
  br label %if.end648

if.end648:                                        ; preds = %if.then647, %if.end645
  %tobool649.not = icmp eq i32 %no_cache.0, 0
  br i1 %tobool649.not, label %if.else652, label %if.then650

if.then650:                                       ; preds = %if.end648
  %100 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call651 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %100, i32 noundef 44, i64 noundef 0, i8* noundef null) #12
  br label %if.end658

if.else652:                                       ; preds = %if.end648
  %tobool653.not = icmp eq i32 %ext_cache.0, 0
  %101 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  br i1 %tobool653.not, label %if.else655, label %if.then654

if.then654:                                       ; preds = %if.else652
  call fastcc void @init_session_cache_ctx(%struct.ssl_ctx_st* noundef %101) #15
  br label %if.end658

if.else655:                                       ; preds = %if.else652
  %call656 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %101, i32 noundef 42, i64 noundef 128, i8* noundef null) #12
  br label %if.end658

if.end658:                                        ; preds = %if.then654, %if.else655, %if.then650
  %.b1433 = load i1, i1* @async, align 4
  br i1 %.b1433, label %if.then660, label %if.end662

if.then660:                                       ; preds = %if.end658
  %102 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call661 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %102, i32 noundef 33, i64 noundef 256, i8* noundef null) #12
  br label %if.end662

if.end662:                                        ; preds = %if.then660, %if.end658
  %tobool663.not = icmp eq i32 %no_ca_names.0, 0
  br i1 %tobool663.not, label %if.end666, label %if.then664

if.then664:                                       ; preds = %if.end662
  %103 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call665 = call i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef %103, i64 noundef 512) #12
  br label %if.end666

if.end666:                                        ; preds = %if.then664, %if.end662
  %tobool667.not = icmp eq i32 %ignore_unexpected_eof.0, 0
  br i1 %tobool667.not, label %if.end670, label %if.then668

if.then668:                                       ; preds = %if.end666
  %104 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call669 = call i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef %104, i64 noundef 128) #12
  br label %if.end670

if.end670:                                        ; preds = %if.then668, %if.end666
  %cmp671.not = icmp eq i32 %max_send_fragment.0, 0
  br i1 %cmp671.not, label %if.end679, label %land.lhs.true673

land.lhs.true673:                                 ; preds = %if.end670
  %105 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %conv674 = zext i32 %max_send_fragment.0 to i64
  %call675 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %105, i32 noundef 52, i64 noundef %conv674, i8* noundef null) #12
  %tobool676.not = icmp eq i64 %call675, 0
  br i1 %tobool676.not, label %if.then677, label %if.end679

if.then677:                                       ; preds = %land.lhs.true673
  %106 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call678 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %106, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.431, i64 0, i64 0), i8* noundef %call6, i32 noundef %max_send_fragment.0) #12
  br label %end

if.end679:                                        ; preds = %land.lhs.true673, %if.end670
  %cmp680.not = icmp eq i32 %split_send_fragment.0, 0
  br i1 %cmp680.not, label %if.end688, label %land.lhs.true682

land.lhs.true682:                                 ; preds = %if.end679
  %107 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %conv683 = zext i32 %split_send_fragment.0 to i64
  %call684 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %107, i32 noundef 125, i64 noundef %conv683, i8* noundef null) #12
  %tobool685.not = icmp eq i64 %call684, 0
  br i1 %tobool685.not, label %if.then686, label %if.end688

if.then686:                                       ; preds = %land.lhs.true682
  %108 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call687 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %108, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.432, i64 0, i64 0), i8* noundef %call6, i32 noundef %split_send_fragment.0) #12
  br label %end

if.end688:                                        ; preds = %land.lhs.true682, %if.end679
  %cmp689.not = icmp eq i32 %max_pipelines.0, 0
  br i1 %cmp689.not, label %if.end697, label %land.lhs.true691

land.lhs.true691:                                 ; preds = %if.end688
  %109 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %conv692 = zext i32 %max_pipelines.0 to i64
  %call693 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %109, i32 noundef 126, i64 noundef %conv692, i8* noundef null) #12
  %tobool694.not = icmp eq i64 %call693, 0
  br i1 %tobool694.not, label %if.then695, label %if.end697

if.then695:                                       ; preds = %land.lhs.true691
  %110 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call696 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %110, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.433, i64 0, i64 0), i8* noundef %call6, i32 noundef %max_pipelines.0) #12
  br label %end

if.end697:                                        ; preds = %land.lhs.true691, %if.end688
  %cmp698 = icmp sgt i32 %read_buf_len.0, 0
  br i1 %cmp698, label %if.then700, label %if.end702

if.then700:                                       ; preds = %if.end697
  %111 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %conv7011472 = zext i32 %read_buf_len.0 to i64
  call void @SSL_CTX_set_default_read_buffer_len(%struct.ssl_ctx_st* noundef %111, i64 noundef %conv7011472) #12
  br label %if.end702

if.end702:                                        ; preds = %if.then700, %if.end697
  %cmp703.not = icmp eq i8* %srtp_profiles.0, null
  br i1 %cmp703.not, label %if.end712, label %if.then705

if.then705:                                       ; preds = %if.end702
  %112 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call706 = call i32 @SSL_CTX_set_tlsext_use_srtp(%struct.ssl_ctx_st* noundef %112, i8* noundef nonnull %srtp_profiles.0) #12
  %cmp707.not = icmp eq i32 %call706, 0
  br i1 %cmp707.not, label %if.end712, label %if.then709

if.then709:                                       ; preds = %if.then705
  %113 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call710 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %113, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.434, i64 0, i64 0)) #12
  %114 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %114) #12
  br label %end

if.end712:                                        ; preds = %if.then705, %if.end702
  %115 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call713 = call i32 @ctx_set_verify_locations(%struct.ssl_ctx_st* noundef %115, i8* noundef %CAfile.0, i32 noundef %noCAfile.0, i8* noundef %CApath.0, i32 noundef %noCApath.0, i8* noundef %CAstore.0, i32 noundef %noCAstore.0) #12
  %tobool714.not = icmp eq i32 %call713, 0
  br i1 %tobool714.not, label %if.then715, label %if.end716

if.then715:                                       ; preds = %if.end712
  %116 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %116) #12
  br label %end

if.end716:                                        ; preds = %if.end712
  %tobool717.not = icmp eq i32 %vpmtouched.0, 0
  br i1 %tobool717.not, label %if.end723, label %land.lhs.true718

land.lhs.true718:                                 ; preds = %if.end716
  %117 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call719 = call i32 @SSL_CTX_set1_param(%struct.ssl_ctx_st* noundef %117, %struct.X509_VERIFY_PARAM_st* noundef %call3) #12
  %tobool720.not = icmp eq i32 %call719, 0
  br i1 %tobool720.not, label %if.then721, label %if.end723

if.then721:                                       ; preds = %land.lhs.true718
  %118 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call722 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %118, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.435, i64 0, i64 0)) #12
  %119 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %119) #12
  br label %end

if.end723:                                        ; preds = %land.lhs.true718, %if.end716
  %120 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call724 = call i32 @ssl_ctx_add_crls(%struct.ssl_ctx_st* noundef %120, %struct.stack_st_X509_CRL* noundef %crls.1, i32 noundef 0) #12
  %121 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call725 = call i32 @ssl_load_stores(%struct.ssl_ctx_st* noundef %121, i8* noundef %vfyCApath.0, i8* noundef %vfyCAfile.0, i8* noundef %vfyCAstore.0, i8* noundef %chCApath.0, i8* noundef %chCAfile.0, i8* noundef %chCAstore.0, %struct.stack_st_X509_CRL* noundef %crls.1, i32 noundef %crl_download.0) #12
  %tobool726.not = icmp eq i32 %call725, 0
  br i1 %tobool726.not, label %if.then727, label %if.end729

if.then727:                                       ; preds = %if.end723
  %122 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call728 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %122, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.436, i64 0, i64 0)) #12
  %123 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %123) #12
  br label %end

if.end729:                                        ; preds = %if.end723
  %tobool730.not = icmp eq %struct.x509_st* %s_cert2.0, null
  br i1 %tobool730.not, label %if.end739, label %if.then731

if.then731:                                       ; preds = %if.end729
  %call732 = call %struct.ossl_lib_ctx_st* @app_get0_libctx() #12
  %call733 = call i8* @app_get0_propq() #12
  %call734 = call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %call732, i8* noundef %call733, %struct.ssl_method_st* noundef %meth.0) #12
  store %struct.ssl_ctx_st* %call734, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %cmp735 = icmp eq %struct.ssl_ctx_st* %call734, null
  br i1 %cmp735, label %if.then737, label %if.then742

if.then737:                                       ; preds = %if.then731
  %124 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %124) #12
  br label %end

if.end739:                                        ; preds = %if.end729
  %.pr = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %cmp740.not = icmp eq %struct.ssl_ctx_st* %.pr, null
  br i1 %cmp740.not, label %if.end799, label %if.then742

if.then742:                                       ; preds = %if.then731, %if.end739
  %125 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call743 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %125, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.437, i64 0, i64 0)) #12
  br i1 %tobool593.not, label %if.end746, label %if.then745

if.then745:                                       ; preds = %if.then742
  %126 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  call void @ssl_ctx_security_debug(%struct.ssl_ctx_st* noundef %126, i32 noundef %sdebug.0) #12
  br label %if.end746

if.end746:                                        ; preds = %if.then745, %if.then742
  %127 = load i8*, i8** @session_id_prefix, align 8, !tbaa !3
  %tobool747.not = icmp eq i8* %127, null
  br i1 %tobool747.not, label %if.end761, label %if.then748

if.then748:                                       ; preds = %if.end746
  %call749 = call i64 @strlen(i8* noundef nonnull %127) #14
  %cmp750 = icmp ugt i64 %call749, 31
  br i1 %cmp750, label %if.then752, label %if.end754

if.then752:                                       ; preds = %if.then748
  %128 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call753 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %128, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.428, i64 0, i64 0)) #12
  br label %if.end754

if.end754:                                        ; preds = %if.then752, %if.then748
  %129 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %call755 = call i32 @SSL_CTX_set_generate_session_id(%struct.ssl_ctx_st* noundef %129, i32 (%struct.ssl_st*, i8*, i32*)* noundef nonnull @generate_session_id) #12
  %tobool756.not = icmp eq i32 %call755, 0
  %130 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %tobool756.not, label %if.then757, label %if.end759

if.then757:                                       ; preds = %if.end754
  %call758 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %130, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.429, i64 0, i64 0)) #12
  %131 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %131) #12
  br label %end

if.end759:                                        ; preds = %if.end754
  %132 = load i8*, i8** @session_id_prefix, align 8, !tbaa !3
  %call760 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %130, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.430, i64 0, i64 0), i8* noundef %132) #12
  br label %if.end761

if.end761:                                        ; preds = %if.end759, %if.end746
  %133 = load %struct.ssl_excert_st*, %struct.ssl_excert_st** %exc, align 8, !tbaa !3
  %cmp762.not = icmp eq %struct.ssl_excert_st* %133, null
  br i1 %cmp762.not, label %if.end765, label %if.then764

if.then764:                                       ; preds = %if.end761
  %134 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  call void @ssl_ctx_set_excert(%struct.ssl_ctx_st* noundef %134, %struct.ssl_excert_st* noundef nonnull %133) #12
  br label %if.end765

if.end765:                                        ; preds = %if.then764, %if.end761
  br i1 %tobool646.not, label %if.end768, label %if.then767

if.then767:                                       ; preds = %if.end765
  %135 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  call void @SSL_CTX_set_info_callback(%struct.ssl_ctx_st* noundef %135, void (%struct.ssl_st*, i32, i32)* noundef nonnull @apps_ssl_info_callback) #12
  br label %if.end768

if.end768:                                        ; preds = %if.then767, %if.end765
  br i1 %tobool649.not, label %if.else772, label %if.then770

if.then770:                                       ; preds = %if.end768
  %136 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %call771 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %136, i32 noundef 44, i64 noundef 0, i8* noundef null) #12
  br label %if.end778

if.else772:                                       ; preds = %if.end768
  %tobool773.not = icmp eq i32 %ext_cache.0, 0
  %137 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  br i1 %tobool773.not, label %if.else775, label %if.then774

if.then774:                                       ; preds = %if.else772
  call fastcc void @init_session_cache_ctx(%struct.ssl_ctx_st* noundef %137) #15
  br label %if.end778

if.else775:                                       ; preds = %if.else772
  %call776 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %137, i32 noundef 42, i64 noundef 128, i8* noundef null) #12
  br label %if.end778

if.end778:                                        ; preds = %if.then774, %if.else775, %if.then770
  %.b1432 = load i1, i1* @async, align 4
  br i1 %.b1432, label %if.then780, label %if.end782

if.then780:                                       ; preds = %if.end778
  %138 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %call781 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %138, i32 noundef 33, i64 noundef 256, i8* noundef null) #12
  br label %if.end782

if.end782:                                        ; preds = %if.then780, %if.end778
  %139 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %call783 = call i32 @ctx_set_verify_locations(%struct.ssl_ctx_st* noundef %139, i8* noundef %CAfile.0, i32 noundef %noCAfile.0, i8* noundef %CApath.0, i32 noundef %noCApath.0, i8* noundef %CAstore.0, i32 noundef %noCAstore.0) #12
  %tobool784.not = icmp eq i32 %call783, 0
  br i1 %tobool784.not, label %if.then785, label %if.end786

if.then785:                                       ; preds = %if.end782
  %140 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %140) #12
  br label %end

if.end786:                                        ; preds = %if.end782
  br i1 %tobool717.not, label %if.end793, label %land.lhs.true788

land.lhs.true788:                                 ; preds = %if.end786
  %141 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %call789 = call i32 @SSL_CTX_set1_param(%struct.ssl_ctx_st* noundef %141, %struct.X509_VERIFY_PARAM_st* noundef %call3) #12
  %tobool790.not = icmp eq i32 %call789, 0
  br i1 %tobool790.not, label %if.then791, label %if.end793

if.then791:                                       ; preds = %land.lhs.true788
  %142 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call792 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %142, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.435, i64 0, i64 0)) #12
  %143 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %143) #12
  br label %end

if.end793:                                        ; preds = %land.lhs.true788, %if.end786
  %144 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %call794 = call i32 @ssl_ctx_add_crls(%struct.ssl_ctx_st* noundef %144, %struct.stack_st_X509_CRL* noundef %crls.1, i32 noundef 0) #12
  %145 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %call795 = call i32 @config_ctx(%struct.ssl_conf_ctx_st* noundef %call2, %struct.stack_st_OPENSSL_STRING* noundef %ssl_args.0, %struct.ssl_ctx_st* noundef %145) #12
  %tobool796.not = icmp eq i32 %call795, 0
  br i1 %tobool796.not, label %end, label %if.end799

if.end799:                                        ; preds = %if.end793, %if.end739
  %data800 = getelementptr inbounds %struct.tlsextnextprotoctx_st, %struct.tlsextnextprotoctx_st* %next_proto, i64 0, i32 0
  %146 = load i8*, i8** %data800, align 8, !tbaa !29
  %tobool801.not = icmp eq i8* %146, null
  br i1 %tobool801.not, label %if.end803, label %if.then802

if.then802:                                       ; preds = %if.end799
  %147 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  call void @SSL_CTX_set_next_protos_advertised_cb(%struct.ssl_ctx_st* noundef %147, i32 (%struct.ssl_st*, i8**, i32*, i8*)* noundef nonnull @next_proto_cb, i8* noundef nonnull %13) #12
  br label %if.end803

if.end803:                                        ; preds = %if.then802, %if.end799
  %148 = load i8*, i8** %data501, align 8, !tbaa !31
  %tobool805.not = icmp eq i8* %148, null
  br i1 %tobool805.not, label %if.end807, label %if.then806

if.then806:                                       ; preds = %if.end803
  %149 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  call void @SSL_CTX_set_alpn_select_cb(%struct.ssl_ctx_st* noundef %149, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* noundef nonnull @alpn_cb, i8* noundef nonnull %14) #12
  br label %if.end807

if.end807:                                        ; preds = %if.then806, %if.end803
  %tobool808.not = icmp eq i32 %no_dhe.0, 0
  br i1 %tobool808.not, label %if.then809, label %if.end875

if.then809:                                       ; preds = %if.end807
  %cmp810.not = icmp eq i8* %dhfile.0, null
  br i1 %cmp810.not, label %if.else814, label %if.then812

if.then812:                                       ; preds = %if.then809
  %call813 = call %struct.evp_pkey_st* @load_keyparams(i8* noundef nonnull %dhfile.0, i32 noundef 0, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.438, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.439, i64 0, i64 0)) #12
  br label %if.end820

if.else814:                                       ; preds = %if.then809
  %cmp815.not = icmp eq i8* %spec.select1440, null
  br i1 %cmp815.not, label %if.then832, label %if.then817

if.then817:                                       ; preds = %if.else814
  %call818 = call %struct.evp_pkey_st* @load_keyparams_suppress(i8* noundef nonnull %spec.select1440, i32 noundef 0, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.438, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.439, i64 0, i64 0), i32 noundef 1) #12
  br label %if.end820

if.end820:                                        ; preds = %if.then817, %if.then812
  %dhpkey.0 = phi %struct.evp_pkey_st* [ %call813, %if.then812 ], [ %call818, %if.then817 ]
  %cmp821.not = icmp eq %struct.evp_pkey_st* %dhpkey.0, null
  br i1 %cmp821.not, label %if.then832, label %if.else834

if.then832:                                       ; preds = %if.else814, %if.end820
  %150 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call826 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %150, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.441, i64 0, i64 0)) #12
  %151 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call8281462 = call i64 @BIO_ctrl(%struct.bio_st* noundef %151, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  %152 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call833 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %152, i32 noundef 118, i64 noundef 1, i8* noundef null) #12
  br label %if.end844

if.else834:                                       ; preds = %if.end820
  %153 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call824 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %153, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.440, i64 0, i64 0)) #12
  %154 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call828 = call i64 @BIO_ctrl(%struct.bio_st* noundef %154, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  %call835 = call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef nonnull %dhpkey.0) #12
  %tobool836.not = icmp eq i32 %call835, 0
  br i1 %tobool836.not, label %if.then837, label %if.end838

if.then837:                                       ; preds = %if.else834
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %dhpkey.0) #12
  br label %end

if.end838:                                        ; preds = %if.else834
  %155 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call839 = call i32 @SSL_CTX_set0_tmp_dh_pkey(%struct.ssl_ctx_st* noundef %155, %struct.evp_pkey_st* noundef nonnull %dhpkey.0) #12
  %tobool840.not = icmp eq i32 %call839, 0
  br i1 %tobool840.not, label %if.then841, label %if.end844

if.then841:                                       ; preds = %if.end838
  %156 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call842 = call i32 @BIO_puts(%struct.bio_st* noundef %156, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.442, i64 0, i64 0)) #12
  %157 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %157) #12
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %dhpkey.0) #12
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %dhpkey.0) #12
  br label %end

if.end844:                                        ; preds = %if.end838, %if.then832
  %dhpkey.014561463 = phi %struct.evp_pkey_st* [ %dhpkey.0, %if.end838 ], [ null, %if.then832 ]
  %158 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %cmp845.not = icmp eq %struct.ssl_ctx_st* %158, null
  br i1 %cmp845.not, label %cleanup872, label %if.then847

if.then847:                                       ; preds = %if.end844
  br i1 %cmp810.not, label %if.end859, label %if.then850

if.then850:                                       ; preds = %if.then847
  %call851 = call %struct.evp_pkey_st* @load_keyparams_suppress(i8* noundef %spec.select1441, i32 noundef 0, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.438, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.439, i64 0, i64 0), i32 noundef 1) #12
  %cmp852.not = icmp eq %struct.evp_pkey_st* %call851, null
  br i1 %cmp852.not, label %if.end859, label %if.end859.thread

if.end859.thread:                                 ; preds = %if.then850
  %159 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call855 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %159, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.440, i64 0, i64 0)) #12
  %160 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call856 = call i64 @BIO_ctrl(%struct.bio_st* noundef %160, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %dhpkey.014561463) #12
  br label %if.else864

if.end859:                                        ; preds = %if.then850, %if.then847
  %cmp860 = icmp eq %struct.evp_pkey_st* %dhpkey.014561463, null
  br i1 %cmp860, label %if.then862, label %if.else864

if.then862:                                       ; preds = %if.end859
  %161 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %call863 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %161, i32 noundef 118, i64 noundef 1, i8* noundef null) #12
  br label %cleanup872

if.else864:                                       ; preds = %if.end859.thread, %if.end859
  %dhpkey.21467 = phi %struct.evp_pkey_st* [ %call851, %if.end859.thread ], [ %dhpkey.014561463, %if.end859 ]
  %162 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %call865 = call i32 @SSL_CTX_set0_tmp_dh_pkey(%struct.ssl_ctx_st* noundef %162, %struct.evp_pkey_st* noundef nonnull %dhpkey.21467) #12
  %tobool866.not = icmp eq i32 %call865, 0
  br i1 %tobool866.not, label %if.then867, label %cleanup872

if.then867:                                       ; preds = %if.else864
  %163 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call868 = call i32 @BIO_puts(%struct.bio_st* noundef %163, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.442, i64 0, i64 0)) #12
  %164 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %164) #12
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %dhpkey.21467) #12
  br label %end

cleanup872:                                       ; preds = %if.end844, %if.else864, %if.then862
  %dhpkey.3 = phi %struct.evp_pkey_st* [ %dhpkey.014561463, %if.end844 ], [ null, %if.else864 ], [ null, %if.then862 ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %dhpkey.3) #12
  br label %if.end875

if.end875:                                        ; preds = %cleanup872, %if.end807
  %165 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %166 = load %struct.stack_st_X509*, %struct.stack_st_X509** %s_chain, align 8, !tbaa !3
  %call876 = call i32 @set_cert_key_stuff(%struct.ssl_ctx_st* noundef %165, %struct.x509_st* noundef %s_cert.0, %struct.evp_pkey_st* noundef %s_key.0, %struct.stack_st_X509* noundef %166, i32 noundef %build_chain.0) #12
  %tobool877.not = icmp eq i32 %call876, 0
  br i1 %tobool877.not, label %end, label %if.end879

if.end879:                                        ; preds = %if.end875
  %cmp880.not = icmp eq i8* %s_serverinfo_file.0, null
  br i1 %cmp880.not, label %if.end886, label %land.lhs.true882

land.lhs.true882:                                 ; preds = %if.end879
  %167 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call883 = call i32 @SSL_CTX_use_serverinfo_file(%struct.ssl_ctx_st* noundef %167, i8* noundef nonnull %s_serverinfo_file.0) #12
  %tobool884.not = icmp eq i32 %call883, 0
  br i1 %tobool884.not, label %if.then885, label %if.end886

if.then885:                                       ; preds = %land.lhs.true882
  %168 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %168) #12
  br label %end

if.end886:                                        ; preds = %land.lhs.true882, %if.end879
  %169 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %cmp887.not = icmp eq %struct.ssl_ctx_st* %169, null
  br i1 %cmp887.not, label %if.end893, label %land.lhs.true889

land.lhs.true889:                                 ; preds = %if.end886
  %call890 = call i32 @set_cert_key_stuff(%struct.ssl_ctx_st* noundef nonnull %169, %struct.x509_st* noundef %s_cert2.0, %struct.evp_pkey_st* noundef %s_key2.0, %struct.stack_st_X509* noundef null, i32 noundef %build_chain.0) #12
  %tobool891.not = icmp eq i32 %call890, 0
  br i1 %tobool891.not, label %end, label %if.end893

if.end893:                                        ; preds = %land.lhs.true889, %if.end886
  %cmp894.not = icmp eq %struct.x509_st* %s_dcert.0, null
  br i1 %cmp894.not, label %if.end901, label %if.then896

if.then896:                                       ; preds = %if.end893
  %170 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %171 = load %struct.stack_st_X509*, %struct.stack_st_X509** %s_dchain, align 8, !tbaa !3
  %call897 = call i32 @set_cert_key_stuff(%struct.ssl_ctx_st* noundef %170, %struct.x509_st* noundef nonnull %s_dcert.0, %struct.evp_pkey_st* noundef %s_dkey.0, %struct.stack_st_X509* noundef %171, i32 noundef %build_chain.0) #12
  %tobool898.not = icmp eq i32 %call897, 0
  br i1 %tobool898.not, label %end, label %if.end901

if.end901:                                        ; preds = %if.then896, %if.end893
  %tobool902.not = icmp eq i32 %no_resume_ephemeral.0, 0
  br i1 %tobool902.not, label %if.end908, label %if.then903

if.then903:                                       ; preds = %if.end901
  %172 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  call void @SSL_CTX_set_not_resumable_session_callback(%struct.ssl_ctx_st* noundef %172, i32 (%struct.ssl_st*, i32)* noundef nonnull @not_resumable_sess_cb) #12
  %173 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %cmp904.not = icmp eq %struct.ssl_ctx_st* %173, null
  br i1 %cmp904.not, label %if.end908, label %if.then906

if.then906:                                       ; preds = %if.then903
  call void @SSL_CTX_set_not_resumable_session_callback(%struct.ssl_ctx_st* noundef nonnull %173, i32 (%struct.ssl_st*, i32)* noundef nonnull @not_resumable_sess_cb) #12
  br label %if.end908

if.end908:                                        ; preds = %if.then903, %if.then906, %if.end901
  %174 = load i8*, i8** @psk_key, align 8, !tbaa !3
  %cmp909.not = icmp eq i8* %174, null
  br i1 %cmp909.not, label %if.end916, label %if.then911

if.then911:                                       ; preds = %if.end908
  %.b1427 = load i1, i1* @s_debug, align 4
  br i1 %.b1427, label %if.then913, label %if.end915

if.then913:                                       ; preds = %if.then911
  %175 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call914 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %175, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.443, i64 0, i64 0)) #12
  br label %if.end915

if.end915:                                        ; preds = %if.then913, %if.then911
  %176 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  call void @SSL_CTX_set_psk_server_callback(%struct.ssl_ctx_st* noundef %176, i32 (%struct.ssl_st*, i8*, i8*, i32)* noundef nonnull @psk_server_cb) #12
  br label %if.end916

if.end916:                                        ; preds = %if.end915, %if.end908
  %cmp917.not = icmp eq i8* %psk_identity_hint.0, null
  br i1 %cmp917.not, label %if.end931, label %if.then919

if.then919:                                       ; preds = %if.end916
  br i1 %cmp392, label %if.then922, label %if.else924

if.then922:                                       ; preds = %if.then919
  %177 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call923 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %177, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.444, i64 0, i64 0)) #12
  br label %if.end931

if.else924:                                       ; preds = %if.then919
  %178 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call925 = call i32 @SSL_CTX_use_psk_identity_hint(%struct.ssl_ctx_st* noundef %178, i8* noundef nonnull %psk_identity_hint.0) #12
  %tobool926.not = icmp eq i32 %call925, 0
  br i1 %tobool926.not, label %if.then927, label %if.end931

if.then927:                                       ; preds = %if.else924
  %179 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call928 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %179, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.445, i64 0, i64 0)) #12
  %180 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %180) #12
  br label %end

if.end931:                                        ; preds = %if.then922, %if.else924, %if.end916
  %cmp932.not = icmp eq i8* %psksessf.0, null
  br i1 %cmp932.not, label %if.end951, label %if.then934

if.then934:                                       ; preds = %if.end931
  %call935 = call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %psksessf.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.446, i64 0, i64 0)) #12
  %cmp936 = icmp eq %struct.bio_st* %call935, null
  br i1 %cmp936, label %if.then938, label %if.end940

if.then938:                                       ; preds = %if.then934
  %181 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call939 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %181, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.447, i64 0, i64 0), i8* noundef nonnull %psksessf.0) #12
  %182 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %182) #12
  br label %end

if.end940:                                        ; preds = %if.then934
  %call941 = call %struct.ssl_session_st* @PEM_read_bio_SSL_SESSION(%struct.bio_st* noundef nonnull %call935, %struct.ssl_session_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #12
  store %struct.ssl_session_st* %call941, %struct.ssl_session_st** @psksess, align 8, !tbaa !3
  %call942 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call935) #12
  %183 = load %struct.ssl_session_st*, %struct.ssl_session_st** @psksess, align 8, !tbaa !3
  %cmp943 = icmp eq %struct.ssl_session_st* %183, null
  br i1 %cmp943, label %if.then945, label %if.then957

if.then945:                                       ; preds = %if.end940
  %184 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call946 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %184, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.448, i64 0, i64 0), i8* noundef nonnull %psksessf.0) #12
  %185 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %185) #12
  br label %end

if.end951:                                        ; preds = %if.end931
  %.pre = load %struct.ssl_session_st*, %struct.ssl_session_st** @psksess, align 8
  %186 = load i8*, i8** @psk_key, align 8, !tbaa !3
  %cmp952 = icmp ne i8* %186, null
  %cmp955 = icmp ne %struct.ssl_session_st* %.pre, null
  %or.cond1169 = select i1 %cmp952, i1 true, i1 %cmp955
  br i1 %or.cond1169, label %if.then957, label %if.end958

if.then957:                                       ; preds = %if.end940, %if.end951
  %187 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  call void @SSL_CTX_set_psk_find_session_callback(%struct.ssl_ctx_st* noundef %187, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)* noundef nonnull @psk_find_session_cb) #12
  br label %if.end958

if.end958:                                        ; preds = %if.end951, %if.then957
  %188 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  call void @SSL_CTX_set_verify(%struct.ssl_ctx_st* noundef %188, i32 noundef %s_server_verify.0, i32 (i32, %struct.x509_store_ctx_st*)* noundef nonnull @verify_callback) #12
  %189 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call959 = call i32 @SSL_CTX_set_session_id_context(%struct.ssl_ctx_st* noundef %189, i8* noundef nonnull %15, i32 noundef 4) #12
  %tobool960.not = icmp eq i32 %call959, 0
  br i1 %tobool960.not, label %if.then961, label %if.end963

if.then961:                                       ; preds = %if.end958
  %190 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call962 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %190, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.449, i64 0, i64 0)) #12
  %191 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %191) #12
  br label %end

if.end963:                                        ; preds = %if.end958
  %192 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  call void @SSL_CTX_set_cookie_generate_cb(%struct.ssl_ctx_st* noundef %192, i32 (%struct.ssl_st*, i8*, i32*)* noundef nonnull @generate_cookie_callback) #12
  %193 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  call void @SSL_CTX_set_cookie_verify_cb(%struct.ssl_ctx_st* noundef %193, i32 (%struct.ssl_st*, i8*, i32)* noundef nonnull @verify_cookie_callback) #12
  %194 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  call void @SSL_CTX_set_stateless_cookie_generate_cb(%struct.ssl_ctx_st* noundef %194, i32 (%struct.ssl_st*, i8*, i64*)* noundef nonnull @generate_stateless_cookie_callback) #12
  %195 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  call void @SSL_CTX_set_stateless_cookie_verify_cb(%struct.ssl_ctx_st* noundef %195, i32 (%struct.ssl_st*, i8*, i64)* noundef nonnull @verify_stateless_cookie_callback) #12
  %196 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %cmp964.not = icmp eq %struct.ssl_ctx_st* %196, null
  br i1 %cmp964.not, label %if.end976, label %if.then966

if.then966:                                       ; preds = %if.end963
  call void @SSL_CTX_set_verify(%struct.ssl_ctx_st* noundef nonnull %196, i32 noundef %s_server_verify.0, i32 (i32, %struct.x509_store_ctx_st*)* noundef nonnull @verify_callback) #12
  %197 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %call967 = call i32 @SSL_CTX_set_session_id_context(%struct.ssl_ctx_st* noundef %197, i8* noundef nonnull %15, i32 noundef 4) #12
  %tobool968.not = icmp eq i32 %call967, 0
  br i1 %tobool968.not, label %if.then969, label %if.end971

if.then969:                                       ; preds = %if.then966
  %198 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call970 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %198, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.449, i64 0, i64 0)) #12
  %199 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %199) #12
  br label %end

if.end971:                                        ; preds = %if.then966
  %200 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %biodebug = getelementptr inbounds %struct.tlsextctx_st, %struct.tlsextctx_st* %tlsextcbp, i64 0, i32 1
  store %struct.bio_st* %200, %struct.bio_st** %biodebug, align 8, !tbaa !33
  %201 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %call972 = call i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef %201, i32 noundef 53, void ()* noundef bitcast (i32 (%struct.ssl_st*, i32*, i8*)* @ssl_servername_cb to void ()*)) #12
  %202 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %call973 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %202, i32 noundef 54, i64 noundef 0, i8* noundef nonnull %12) #12
  %203 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call974 = call i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef %203, i32 noundef 53, void ()* noundef bitcast (i32 (%struct.ssl_st*, i32*, i8*)* @ssl_servername_cb to void ()*)) #12
  %204 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call975 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %204, i32 noundef 54, i64 noundef 0, i8* noundef nonnull %12) #12
  br label %if.end976

if.end976:                                        ; preds = %if.end971, %if.end963
  %cmp977.not = icmp eq i8* %srp_verifier_file.0, null
  br i1 %cmp977.not, label %if.else984, label %if.then979

if.then979:                                       ; preds = %if.end976
  %205 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call980 = call i32 @set_up_srp_verifier_file(%struct.ssl_ctx_st* noundef %205, %struct.srpsrvparm_st* noundef nonnull @srp_callback_parm, i8* noundef %srpuserseed.0, i8* noundef nonnull %srp_verifier_file.0) #12
  %tobool981.not = icmp eq i32 %call980, 0
  br i1 %tobool981.not, label %end, label %if.end994

if.else984:                                       ; preds = %if.end976
  %cmp985.not = icmp eq i8* %CAfile.0, null
  br i1 %cmp985.not, label %if.end994, label %if.then987

if.then987:                                       ; preds = %if.else984
  %206 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call988 = call %struct.stack_st_X509_NAME* @SSL_load_client_CA_file(i8* noundef nonnull %CAfile.0) #12
  call void @SSL_CTX_set_client_CA_list(%struct.ssl_ctx_st* noundef %206, %struct.stack_st_X509_NAME* noundef %call988) #12
  %207 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %tobool989.not = icmp eq %struct.ssl_ctx_st* %207, null
  br i1 %tobool989.not, label %if.end994, label %if.then990

if.then990:                                       ; preds = %if.then987
  %call991 = call %struct.stack_st_X509_NAME* @SSL_load_client_CA_file(i8* noundef nonnull %CAfile.0) #12
  call void @SSL_CTX_set_client_CA_list(%struct.ssl_ctx_st* noundef nonnull %207, %struct.stack_st_X509_NAME* noundef %call991) #12
  br label %if.end994

if.end994:                                        ; preds = %if.else984, %if.then990, %if.then987, %if.then979
  %tobool995.not = icmp eq i32 %s_tlsextstatus.0, 0
  br i1 %tobool995.not, label %if.end1004, label %if.then996

if.then996:                                       ; preds = %if.end994
  %208 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call997 = call i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef %208, i32 noundef 63, void ()* noundef bitcast (i32 (%struct.ssl_st*, i8*)* @cert_status_cb to void ()*)) #12
  %209 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call998 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %209, i32 noundef 64, i64 noundef 0, i8* noundef bitcast (%struct.tlsextstatusctx_st* @tlscstatp to i8*)) #12
  %210 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %tobool999.not = icmp eq %struct.ssl_ctx_st* %210, null
  br i1 %tobool999.not, label %if.end1004, label %if.then1000

if.then1000:                                      ; preds = %if.then996
  %call1001 = call i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef nonnull %210, i32 noundef 63, void ()* noundef bitcast (i32 (%struct.ssl_st*, i8*)* @cert_status_cb to void ()*)) #12
  %211 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %call1002 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %211, i32 noundef 64, i64 noundef 0, i8* noundef bitcast (%struct.tlsextstatusctx_st* @tlscstatp to i8*)) #12
  br label %if.end1004

if.end1004:                                       ; preds = %if.then996, %if.then1000, %if.end994
  %212 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call1005 = call i32 @set_keylog_file(%struct.ssl_ctx_st* noundef %212, i8* noundef %keylog_file.0) #12
  %tobool1006.not = icmp eq i32 %call1005, 0
  br i1 %tobool1006.not, label %if.end1008, label %end

if.end1008:                                       ; preds = %if.end1004
  %cmp1009 = icmp sgt i32 %max_early_data.0, -1
  br i1 %cmp1009, label %if.then1011, label %if.end1013

if.then1011:                                      ; preds = %if.end1008
  %213 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call1012 = call i32 @SSL_CTX_set_max_early_data(%struct.ssl_ctx_st* noundef %213, i32 noundef %max_early_data.0) #12
  br label %if.end1013

if.end1013:                                       ; preds = %if.then1011, %if.end1008
  %cmp1014 = icmp sgt i32 %recv_max_early_data.0, -1
  br i1 %cmp1014, label %if.then1016, label %if.end1018

if.then1016:                                      ; preds = %if.end1013
  %214 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call1017 = call i32 @SSL_CTX_set_recv_max_early_data(%struct.ssl_ctx_st* noundef %214, i32 noundef %recv_max_early_data.0) #12
  br label %if.end1018

if.end1018:                                       ; preds = %if.then1016, %if.end1013
  %tobool1019.not = icmp eq i32 %rev.0, 0
  %215 = load i32, i32* @www, align 4
  %tobool1022.not = icmp eq i32 %215, 0
  %sv_body.www_body = select i1 %tobool1022.not, i32 (i32, i32, i32, i8*)* @sv_body, i32 (i32, i32, i32, i8*)* @www_body
  %server_cb.0 = select i1 %tobool1019.not, i32 (i32, i32, i32, i8*)* %sv_body.www_body, i32 (i32, i32, i32, i8*)* @rev_body
  %tobool1030 = icmp ne i32 %unlink_unix_path.0, 0
  %or.cond1170 = select i1 %cmp421, i1 %tobool1030, i1 false
  br i1 %or.cond1170, label %if.then1031, label %if.end1033

if.then1031:                                      ; preds = %if.end1018
  %216 = load i8*, i8** %host, align 8, !tbaa !3
  %call1032 = call i32 @unlink(i8* noundef %216) #12
  br label %if.end1033

if.end1033:                                       ; preds = %if.then1031, %if.end1018
  %217 = load i8*, i8** %host, align 8, !tbaa !3
  %218 = load i8*, i8** %port, align 8, !tbaa !3
  %219 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call1034 = call i32 @do_server(i32* noundef nonnull @accept_socket, i8* noundef %217, i8* noundef %218, i32 noundef %socket_family.0, i32 noundef %socket_type.0, i32 noundef 0, i32 (i32, i32, i32, i8*)* noundef nonnull %server_cb.0, i8* noundef %context.0, i32 noundef %naccept.0, %struct.bio_st* noundef %219) #12
  %220 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %221 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  call fastcc void @print_stats(%struct.bio_st* noundef %220, %struct.ssl_ctx_st* noundef %221) #15
  br label %end

end:                                              ; preds = %sw.bb321, %sw.bb315, %sw.bb206, %sw.bb199, %sw.bb100, %if.then945, %if.then938, %if.then837, %if.then841, %if.then867, %if.then515, %if.then529, %if.end1004, %if.then979, %if.then896, %land.lhs.true889, %if.end875, %if.end793, %land.lhs.true620, %land.lhs.true611, %if.end595, %if.then552, %if.then535, %if.then503, %if.then493, %if.end484, %if.then479, %if.then470, %if.end462, %if.then457, %if.end442, %if.end387, %entry, %if.end1033, %if.then969, %if.then961, %if.then927, %if.then885, %if.then791, %if.then785, %if.then757, %if.then737, %if.then727, %if.then721, %if.then715, %if.then709, %if.then695, %if.then686, %if.then677, %if.then637, %if.then605, %if.then590, %if.then548, %if.then440, %if.then435, %if.then426, %if.then418, %if.then411, %if.then404, %if.then372, %if.then364, %if.end270, %if.then240, %if.then195, %if.then72, %if.then62, %sw.bb46, %opthelp, %if.then42, %if.then25
  %ssl_args.3 = phi %struct.stack_st_OPENSSL_STRING* [ null, %entry ], [ %ssl_args.0, %if.then25 ], [ %ssl_args.0, %if.then42 ], [ %ssl_args.0, %if.end270 ], [ %ssl_args.0, %if.then240 ], [ %ssl_args.0, %if.then364 ], [ %ssl_args.0, %if.then372 ], [ %ssl_args.11449, %if.then195 ], [ %ssl_args.0, %opthelp ], [ %ssl_args.0, %if.then72 ], [ %ssl_args.0, %if.then62 ], [ %ssl_args.0, %sw.bb46 ], [ %ssl_args.0, %if.then404 ], [ %ssl_args.0, %if.then411 ], [ %ssl_args.0, %if.then418 ], [ %ssl_args.0, %if.then426 ], [ %ssl_args.0, %if.then435 ], [ %ssl_args.0, %if.then457 ], [ %ssl_args.0, %if.end462 ], [ %ssl_args.0, %if.then479 ], [ %ssl_args.0, %if.end484 ], [ %ssl_args.0, %if.then493 ], [ %ssl_args.0, %if.then503 ], [ %ssl_args.0, %if.then535 ], [ %ssl_args.0, %if.then548 ], [ %ssl_args.0, %if.then590 ], [ %ssl_args.0, %if.then605 ], [ %ssl_args.0, %land.lhs.true611 ], [ %ssl_args.0, %land.lhs.true620 ], [ %ssl_args.0, %if.then709 ], [ %ssl_args.0, %if.then737 ], [ %ssl_args.0, %if.end1004 ], [ %ssl_args.0, %if.end1033 ], [ %ssl_args.0, %if.then979 ], [ %ssl_args.0, %if.then969 ], [ %ssl_args.0, %if.then961 ], [ %ssl_args.0, %if.then927 ], [ %ssl_args.0, %if.then896 ], [ %ssl_args.0, %land.lhs.true889 ], [ %ssl_args.0, %if.then885 ], [ %ssl_args.0, %if.end875 ], [ %ssl_args.0, %if.end793 ], [ %ssl_args.0, %if.then791 ], [ %ssl_args.0, %if.then785 ], [ %ssl_args.0, %if.then757 ], [ %ssl_args.0, %if.then727 ], [ %ssl_args.0, %if.then721 ], [ %ssl_args.0, %if.then715 ], [ %ssl_args.0, %if.then695 ], [ %ssl_args.0, %if.then686 ], [ %ssl_args.0, %if.then677 ], [ %ssl_args.0, %if.then637 ], [ %ssl_args.0, %if.end595 ], [ %ssl_args.0, %if.then552 ], [ %ssl_args.0, %if.then470 ], [ %ssl_args.0, %if.end442 ], [ %ssl_args.0, %if.then440 ], [ %ssl_args.0, %if.end387 ], [ %ssl_args.0, %if.then529 ], [ %ssl_args.0, %if.then515 ], [ %ssl_args.0, %if.then867 ], [ %ssl_args.0, %if.then841 ], [ %ssl_args.0, %if.then837 ], [ %ssl_args.0, %if.then938 ], [ %ssl_args.0, %if.then945 ], [ %ssl_args.0, %sw.bb100 ], [ %ssl_args.0, %sw.bb199 ], [ %ssl_args.0, %sw.bb206 ], [ %ssl_args.0, %sw.bb315 ], [ %ssl_args.0, %sw.bb321 ]
  %crls.2 = phi %struct.stack_st_X509_CRL* [ null, %entry ], [ null, %if.then25 ], [ null, %if.then42 ], [ null, %if.end270 ], [ null, %if.then240 ], [ null, %if.then364 ], [ null, %if.then372 ], [ null, %if.then195 ], [ null, %opthelp ], [ null, %if.then72 ], [ null, %if.then62 ], [ null, %sw.bb46 ], [ null, %if.then404 ], [ null, %if.then411 ], [ null, %if.then418 ], [ null, %if.then426 ], [ null, %if.then435 ], [ null, %if.then457 ], [ null, %if.end462 ], [ null, %if.then479 ], [ null, %if.end484 ], [ null, %if.then493 ], [ null, %if.then503 ], [ %crls.1, %if.then535 ], [ %crls.1, %if.then548 ], [ %crls.1, %if.then590 ], [ %crls.1, %if.then605 ], [ %crls.1, %land.lhs.true611 ], [ %crls.1, %land.lhs.true620 ], [ %crls.1, %if.then709 ], [ %crls.1, %if.then737 ], [ %crls.1, %if.end1004 ], [ %crls.1, %if.end1033 ], [ %crls.1, %if.then979 ], [ %crls.1, %if.then969 ], [ %crls.1, %if.then961 ], [ %crls.1, %if.then927 ], [ %crls.1, %if.then896 ], [ %crls.1, %land.lhs.true889 ], [ %crls.1, %if.then885 ], [ %crls.1, %if.end875 ], [ %crls.1, %if.end793 ], [ %crls.1, %if.then791 ], [ %crls.1, %if.then785 ], [ %crls.1, %if.then757 ], [ %crls.1, %if.then727 ], [ %crls.1, %if.then721 ], [ %crls.1, %if.then715 ], [ %crls.1, %if.then695 ], [ %crls.1, %if.then686 ], [ %crls.1, %if.then677 ], [ %crls.1, %if.then637 ], [ %crls.1, %if.end595 ], [ %crls.1, %if.then552 ], [ null, %if.then470 ], [ null, %if.end442 ], [ null, %if.then440 ], [ null, %if.end387 ], [ %71, %if.then529 ], [ null, %if.then515 ], [ %crls.1, %if.then867 ], [ %crls.1, %if.then841 ], [ %crls.1, %if.then837 ], [ %crls.1, %if.then938 ], [ %crls.1, %if.then945 ], [ null, %sw.bb100 ], [ null, %sw.bb199 ], [ null, %sw.bb206 ], [ null, %sw.bb315 ], [ null, %sw.bb321 ]
  %s_cert.1 = phi %struct.x509_st* [ null, %entry ], [ null, %if.then25 ], [ null, %if.then42 ], [ null, %if.end270 ], [ null, %if.then240 ], [ null, %if.then364 ], [ null, %if.then372 ], [ null, %if.then195 ], [ null, %opthelp ], [ null, %if.then72 ], [ null, %if.then62 ], [ null, %sw.bb46 ], [ null, %if.then404 ], [ null, %if.then411 ], [ null, %if.then418 ], [ null, %if.then426 ], [ null, %if.then435 ], [ null, %if.then457 ], [ null, %if.end462 ], [ %call463, %if.then479 ], [ %call463, %if.end484 ], [ %s_cert.0, %if.then493 ], [ %s_cert.0, %if.then503 ], [ %s_cert.0, %if.then535 ], [ %s_cert.0, %if.then548 ], [ %s_cert.0, %if.then590 ], [ %s_cert.0, %if.then605 ], [ %s_cert.0, %land.lhs.true611 ], [ %s_cert.0, %land.lhs.true620 ], [ %s_cert.0, %if.then709 ], [ %s_cert.0, %if.then737 ], [ %s_cert.0, %if.end1004 ], [ %s_cert.0, %if.end1033 ], [ %s_cert.0, %if.then979 ], [ %s_cert.0, %if.then969 ], [ %s_cert.0, %if.then961 ], [ %s_cert.0, %if.then927 ], [ %s_cert.0, %if.then896 ], [ %s_cert.0, %land.lhs.true889 ], [ %s_cert.0, %if.then885 ], [ %s_cert.0, %if.end875 ], [ %s_cert.0, %if.end793 ], [ %s_cert.0, %if.then791 ], [ %s_cert.0, %if.then785 ], [ %s_cert.0, %if.then757 ], [ %s_cert.0, %if.then727 ], [ %s_cert.0, %if.then721 ], [ %s_cert.0, %if.then715 ], [ %s_cert.0, %if.then695 ], [ %s_cert.0, %if.then686 ], [ %s_cert.0, %if.then677 ], [ %s_cert.0, %if.then637 ], [ %s_cert.0, %if.end595 ], [ %s_cert.0, %if.then552 ], [ %call463, %if.then470 ], [ null, %if.end442 ], [ null, %if.then440 ], [ null, %if.end387 ], [ %s_cert.0, %if.then529 ], [ %s_cert.0, %if.then515 ], [ %s_cert.0, %if.then867 ], [ %s_cert.0, %if.then841 ], [ %s_cert.0, %if.then837 ], [ %s_cert.0, %if.then938 ], [ %s_cert.0, %if.then945 ], [ null, %sw.bb100 ], [ null, %sw.bb199 ], [ null, %sw.bb206 ], [ null, %sw.bb315 ], [ null, %sw.bb321 ]
  %s_dcert.1 = phi %struct.x509_st* [ null, %entry ], [ null, %if.then25 ], [ null, %if.then42 ], [ null, %if.end270 ], [ null, %if.then240 ], [ null, %if.then364 ], [ null, %if.then372 ], [ null, %if.then195 ], [ null, %opthelp ], [ null, %if.then72 ], [ null, %if.then62 ], [ null, %sw.bb46 ], [ null, %if.then404 ], [ null, %if.then411 ], [ null, %if.then418 ], [ null, %if.then426 ], [ null, %if.then435 ], [ null, %if.then457 ], [ null, %if.end462 ], [ null, %if.then479 ], [ null, %if.end484 ], [ null, %if.then493 ], [ null, %if.then503 ], [ null, %if.then535 ], [ null, %if.then548 ], [ %s_dcert.0, %if.then590 ], [ %s_dcert.0, %if.then605 ], [ %s_dcert.0, %land.lhs.true611 ], [ %s_dcert.0, %land.lhs.true620 ], [ %s_dcert.0, %if.then709 ], [ %s_dcert.0, %if.then737 ], [ %s_dcert.0, %if.end1004 ], [ %s_dcert.0, %if.end1033 ], [ %s_dcert.0, %if.then979 ], [ %s_dcert.0, %if.then969 ], [ %s_dcert.0, %if.then961 ], [ %s_dcert.0, %if.then927 ], [ %s_dcert.0, %if.then896 ], [ %s_dcert.0, %land.lhs.true889 ], [ %s_dcert.0, %if.then885 ], [ %s_dcert.0, %if.end875 ], [ %s_dcert.0, %if.end793 ], [ %s_dcert.0, %if.then791 ], [ %s_dcert.0, %if.then785 ], [ %s_dcert.0, %if.then757 ], [ %s_dcert.0, %if.then727 ], [ %s_dcert.0, %if.then721 ], [ %s_dcert.0, %if.then715 ], [ %s_dcert.0, %if.then695 ], [ %s_dcert.0, %if.then686 ], [ %s_dcert.0, %if.then677 ], [ %s_dcert.0, %if.then637 ], [ %s_dcert.0, %if.end595 ], [ %call545, %if.then552 ], [ null, %if.then470 ], [ null, %if.end442 ], [ null, %if.then440 ], [ null, %if.end387 ], [ null, %if.then529 ], [ null, %if.then515 ], [ %s_dcert.0, %if.then867 ], [ %s_dcert.0, %if.then841 ], [ %s_dcert.0, %if.then837 ], [ %s_dcert.0, %if.then938 ], [ %s_dcert.0, %if.then945 ], [ null, %sw.bb100 ], [ null, %sw.bb199 ], [ null, %sw.bb206 ], [ null, %sw.bb315 ], [ null, %sw.bb321 ]
  %ret.0 = phi i32 [ 1, %entry ], [ 1, %if.then25 ], [ 1, %if.then42 ], [ 1, %if.end270 ], [ 1, %if.then240 ], [ 1, %if.then364 ], [ 1, %if.then372 ], [ 1, %if.then195 ], [ 1, %opthelp ], [ 1, %if.then72 ], [ 1, %if.then62 ], [ 0, %sw.bb46 ], [ 1, %if.then404 ], [ 1, %if.then411 ], [ 1, %if.then418 ], [ 1, %if.then426 ], [ 1, %if.then435 ], [ 1, %if.then457 ], [ 1, %if.end462 ], [ 1, %if.then479 ], [ 1, %if.end484 ], [ 1, %if.then493 ], [ 1, %if.then503 ], [ 1, %if.then535 ], [ 1, %if.then548 ], [ 1, %if.then590 ], [ 1, %if.then605 ], [ 1, %land.lhs.true611 ], [ 1, %land.lhs.true620 ], [ 1, %if.then709 ], [ 1, %if.then737 ], [ 1, %if.end1004 ], [ 0, %if.end1033 ], [ 1, %if.then979 ], [ 1, %if.then969 ], [ 1, %if.then961 ], [ 1, %if.then927 ], [ 1, %if.then896 ], [ 1, %land.lhs.true889 ], [ 1, %if.then885 ], [ 1, %if.end875 ], [ 1, %if.end793 ], [ 1, %if.then791 ], [ 1, %if.then785 ], [ 1, %if.then757 ], [ 1, %if.then727 ], [ 1, %if.then721 ], [ 1, %if.then715 ], [ 1, %if.then695 ], [ 1, %if.then686 ], [ 1, %if.then677 ], [ 1, %if.then637 ], [ 1, %if.end595 ], [ 1, %if.then552 ], [ 1, %if.then470 ], [ 1, %if.end442 ], [ 1, %if.then440 ], [ 1, %if.end387 ], [ 1, %if.then529 ], [ 1, %if.then515 ], [ 1, %if.then867 ], [ 1, %if.then841 ], [ 1, %if.then837 ], [ 1, %if.then938 ], [ 1, %if.then945 ], [ 1, %sw.bb100 ], [ 1, %sw.bb199 ], [ 1, %sw.bb206 ], [ 1, %sw.bb315 ], [ 1, %sw.bb321 ]
  %s_dkey.1 = phi %struct.evp_pkey_st* [ null, %entry ], [ null, %if.then25 ], [ null, %if.then42 ], [ null, %if.end270 ], [ null, %if.then240 ], [ null, %if.then364 ], [ null, %if.then372 ], [ null, %if.then195 ], [ null, %opthelp ], [ null, %if.then72 ], [ null, %if.then62 ], [ null, %sw.bb46 ], [ null, %if.then404 ], [ null, %if.then411 ], [ null, %if.then418 ], [ null, %if.then426 ], [ null, %if.then435 ], [ null, %if.then457 ], [ null, %if.end462 ], [ null, %if.then479 ], [ null, %if.end484 ], [ null, %if.then493 ], [ null, %if.then503 ], [ null, %if.then535 ], [ %call540, %if.then548 ], [ %s_dkey.0, %if.then590 ], [ %s_dkey.0, %if.then605 ], [ %s_dkey.0, %land.lhs.true611 ], [ %s_dkey.0, %land.lhs.true620 ], [ %s_dkey.0, %if.then709 ], [ %s_dkey.0, %if.then737 ], [ %s_dkey.0, %if.end1004 ], [ %s_dkey.0, %if.end1033 ], [ %s_dkey.0, %if.then979 ], [ %s_dkey.0, %if.then969 ], [ %s_dkey.0, %if.then961 ], [ %s_dkey.0, %if.then927 ], [ %s_dkey.0, %if.then896 ], [ %s_dkey.0, %land.lhs.true889 ], [ %s_dkey.0, %if.then885 ], [ %s_dkey.0, %if.end875 ], [ %s_dkey.0, %if.end793 ], [ %s_dkey.0, %if.then791 ], [ %s_dkey.0, %if.then785 ], [ %s_dkey.0, %if.then757 ], [ %s_dkey.0, %if.then727 ], [ %s_dkey.0, %if.then721 ], [ %s_dkey.0, %if.then715 ], [ %s_dkey.0, %if.then695 ], [ %s_dkey.0, %if.then686 ], [ %s_dkey.0, %if.then677 ], [ %s_dkey.0, %if.then637 ], [ %s_dkey.0, %if.end595 ], [ %call540, %if.then552 ], [ null, %if.then470 ], [ null, %if.end442 ], [ null, %if.then440 ], [ null, %if.end387 ], [ null, %if.then529 ], [ null, %if.then515 ], [ %s_dkey.0, %if.then867 ], [ %s_dkey.0, %if.then841 ], [ %s_dkey.0, %if.then837 ], [ %s_dkey.0, %if.then938 ], [ %s_dkey.0, %if.then945 ], [ null, %sw.bb100 ], [ null, %sw.bb199 ], [ null, %sw.bb206 ], [ null, %sw.bb315 ], [ null, %sw.bb321 ]
  %s_key.1 = phi %struct.evp_pkey_st* [ null, %entry ], [ null, %if.then25 ], [ null, %if.then42 ], [ null, %if.end270 ], [ null, %if.then240 ], [ null, %if.then364 ], [ null, %if.then372 ], [ null, %if.then195 ], [ null, %opthelp ], [ null, %if.then72 ], [ null, %if.then62 ], [ null, %sw.bb46 ], [ null, %if.then404 ], [ null, %if.then411 ], [ null, %if.then418 ], [ null, %if.then426 ], [ null, %if.then435 ], [ null, %if.then457 ], [ %call458, %if.end462 ], [ %call458, %if.then479 ], [ %call458, %if.end484 ], [ %s_key.0, %if.then493 ], [ %s_key.0, %if.then503 ], [ %s_key.0, %if.then535 ], [ %s_key.0, %if.then548 ], [ %s_key.0, %if.then590 ], [ %s_key.0, %if.then605 ], [ %s_key.0, %land.lhs.true611 ], [ %s_key.0, %land.lhs.true620 ], [ %s_key.0, %if.then709 ], [ %s_key.0, %if.then737 ], [ %s_key.0, %if.end1004 ], [ %s_key.0, %if.end1033 ], [ %s_key.0, %if.then979 ], [ %s_key.0, %if.then969 ], [ %s_key.0, %if.then961 ], [ %s_key.0, %if.then927 ], [ %s_key.0, %if.then896 ], [ %s_key.0, %land.lhs.true889 ], [ %s_key.0, %if.then885 ], [ %s_key.0, %if.end875 ], [ %s_key.0, %if.end793 ], [ %s_key.0, %if.then791 ], [ %s_key.0, %if.then785 ], [ %s_key.0, %if.then757 ], [ %s_key.0, %if.then727 ], [ %s_key.0, %if.then721 ], [ %s_key.0, %if.then715 ], [ %s_key.0, %if.then695 ], [ %s_key.0, %if.then686 ], [ %s_key.0, %if.then677 ], [ %s_key.0, %if.then637 ], [ %s_key.0, %if.end595 ], [ %s_key.0, %if.then552 ], [ %call458, %if.then470 ], [ null, %if.end442 ], [ null, %if.then440 ], [ null, %if.end387 ], [ %s_key.0, %if.then529 ], [ %s_key.0, %if.then515 ], [ %s_key.0, %if.then867 ], [ %s_key.0, %if.then841 ], [ %s_key.0, %if.then837 ], [ %s_key.0, %if.then938 ], [ %s_key.0, %if.then945 ], [ null, %sw.bb100 ], [ null, %sw.bb199 ], [ null, %sw.bb206 ], [ null, %sw.bb315 ], [ null, %sw.bb321 ]
  %s_key2.1 = phi %struct.evp_pkey_st* [ null, %entry ], [ null, %if.then25 ], [ null, %if.then42 ], [ null, %if.end270 ], [ null, %if.then240 ], [ null, %if.then364 ], [ null, %if.then372 ], [ null, %if.then195 ], [ null, %opthelp ], [ null, %if.then72 ], [ null, %if.then62 ], [ null, %sw.bb46 ], [ null, %if.then404 ], [ null, %if.then411 ], [ null, %if.then418 ], [ null, %if.then426 ], [ null, %if.then435 ], [ null, %if.then457 ], [ null, %if.end462 ], [ null, %if.then479 ], [ %call480, %if.end484 ], [ %s_key2.0, %if.then493 ], [ %s_key2.0, %if.then503 ], [ %s_key2.0, %if.then535 ], [ %s_key2.0, %if.then548 ], [ %s_key2.0, %if.then590 ], [ %s_key2.0, %if.then605 ], [ %s_key2.0, %land.lhs.true611 ], [ %s_key2.0, %land.lhs.true620 ], [ %s_key2.0, %if.then709 ], [ %s_key2.0, %if.then737 ], [ %s_key2.0, %if.end1004 ], [ %s_key2.0, %if.end1033 ], [ %s_key2.0, %if.then979 ], [ %s_key2.0, %if.then969 ], [ %s_key2.0, %if.then961 ], [ %s_key2.0, %if.then927 ], [ %s_key2.0, %if.then896 ], [ %s_key2.0, %land.lhs.true889 ], [ %s_key2.0, %if.then885 ], [ %s_key2.0, %if.end875 ], [ %s_key2.0, %if.end793 ], [ %s_key2.0, %if.then791 ], [ %s_key2.0, %if.then785 ], [ %s_key2.0, %if.then757 ], [ %s_key2.0, %if.then727 ], [ %s_key2.0, %if.then721 ], [ %s_key2.0, %if.then715 ], [ %s_key2.0, %if.then695 ], [ %s_key2.0, %if.then686 ], [ %s_key2.0, %if.then677 ], [ %s_key2.0, %if.then637 ], [ %s_key2.0, %if.end595 ], [ %s_key2.0, %if.then552 ], [ null, %if.then470 ], [ null, %if.end442 ], [ null, %if.then440 ], [ null, %if.end387 ], [ %s_key2.0, %if.then529 ], [ %s_key2.0, %if.then515 ], [ %s_key2.0, %if.then867 ], [ %s_key2.0, %if.then841 ], [ %s_key2.0, %if.then837 ], [ %s_key2.0, %if.then938 ], [ %s_key2.0, %if.then945 ], [ null, %sw.bb100 ], [ null, %sw.bb199 ], [ null, %sw.bb206 ], [ null, %sw.bb315 ], [ null, %sw.bb321 ]
  %s_cert2.1 = phi %struct.x509_st* [ null, %entry ], [ null, %if.then25 ], [ null, %if.then42 ], [ null, %if.end270 ], [ null, %if.then240 ], [ null, %if.then364 ], [ null, %if.then372 ], [ null, %if.then195 ], [ null, %opthelp ], [ null, %if.then72 ], [ null, %if.then62 ], [ null, %sw.bb46 ], [ null, %if.then404 ], [ null, %if.then411 ], [ null, %if.then418 ], [ null, %if.then426 ], [ null, %if.then435 ], [ null, %if.then457 ], [ null, %if.end462 ], [ null, %if.then479 ], [ null, %if.end484 ], [ %s_cert2.0, %if.then493 ], [ %s_cert2.0, %if.then503 ], [ %s_cert2.0, %if.then535 ], [ %s_cert2.0, %if.then548 ], [ %s_cert2.0, %if.then590 ], [ %s_cert2.0, %if.then605 ], [ %s_cert2.0, %land.lhs.true611 ], [ %s_cert2.0, %land.lhs.true620 ], [ %s_cert2.0, %if.then709 ], [ %s_cert2.0, %if.then737 ], [ %s_cert2.0, %if.end1004 ], [ %s_cert2.0, %if.end1033 ], [ %s_cert2.0, %if.then979 ], [ %s_cert2.0, %if.then969 ], [ %s_cert2.0, %if.then961 ], [ %s_cert2.0, %if.then927 ], [ %s_cert2.0, %if.then896 ], [ %s_cert2.0, %land.lhs.true889 ], [ %s_cert2.0, %if.then885 ], [ %s_cert2.0, %if.end875 ], [ %s_cert2.0, %if.end793 ], [ %s_cert2.0, %if.then791 ], [ %s_cert2.0, %if.then785 ], [ %s_cert2.0, %if.then757 ], [ %s_cert2.0, %if.then727 ], [ %s_cert2.0, %if.then721 ], [ %s_cert2.0, %if.then715 ], [ %s_cert2.0, %if.then695 ], [ %s_cert2.0, %if.then686 ], [ %s_cert2.0, %if.then677 ], [ %s_cert2.0, %if.then637 ], [ %s_cert2.0, %if.end595 ], [ %s_cert2.0, %if.then552 ], [ null, %if.then470 ], [ null, %if.end442 ], [ null, %if.then440 ], [ null, %if.end387 ], [ %s_cert2.0, %if.then529 ], [ %s_cert2.0, %if.then515 ], [ %s_cert2.0, %if.then867 ], [ %s_cert2.0, %if.then841 ], [ %s_cert2.0, %if.then837 ], [ %s_cert2.0, %if.then938 ], [ %s_cert2.0, %if.then945 ], [ null, %sw.bb100 ], [ null, %sw.bb199 ], [ null, %sw.bb206 ], [ null, %sw.bb315 ], [ null, %sw.bb321 ]
  %engine.2 = phi %struct.engine_st* [ null, %entry ], [ %engine.0, %if.then25 ], [ %engine.0, %if.then42 ], [ %engine.0, %if.end270 ], [ %engine.0, %if.then240 ], [ %engine.0, %if.then364 ], [ %engine.0, %if.then372 ], [ %engine.0, %if.then195 ], [ %engine.0, %opthelp ], [ %engine.0, %if.then72 ], [ %engine.0, %if.then62 ], [ %engine.0, %sw.bb46 ], [ %engine.0, %if.then404 ], [ %engine.0, %if.then411 ], [ %engine.0, %if.then418 ], [ %engine.0, %if.then426 ], [ %engine.0, %if.then435 ], [ %engine.0, %if.then457 ], [ %engine.0, %if.end462 ], [ %engine.0, %if.then479 ], [ %engine.0, %if.end484 ], [ %engine.0, %if.then493 ], [ %engine.0, %if.then503 ], [ %engine.0, %if.then535 ], [ %engine.0, %if.then548 ], [ %engine.0, %if.then590 ], [ %engine.0, %if.then605 ], [ %engine.0, %land.lhs.true611 ], [ %engine.0, %land.lhs.true620 ], [ %engine.0, %if.then709 ], [ %engine.0, %if.then737 ], [ %engine.0, %if.end1004 ], [ %engine.0, %if.end1033 ], [ %engine.0, %if.then979 ], [ %engine.0, %if.then969 ], [ %engine.0, %if.then961 ], [ %engine.0, %if.then927 ], [ %engine.0, %if.then896 ], [ %engine.0, %land.lhs.true889 ], [ %engine.0, %if.then885 ], [ %engine.0, %if.end875 ], [ %engine.0, %if.end793 ], [ %engine.0, %if.then791 ], [ %engine.0, %if.then785 ], [ %engine.0, %if.then757 ], [ %engine.0, %if.then727 ], [ %engine.0, %if.then721 ], [ %engine.0, %if.then715 ], [ %engine.0, %if.then695 ], [ %engine.0, %if.then686 ], [ %engine.0, %if.then677 ], [ %engine.0, %if.then637 ], [ %engine.0, %if.end595 ], [ %engine.0, %if.then552 ], [ %engine.0, %if.then470 ], [ %engine.0, %if.end442 ], [ %engine.0, %if.then440 ], [ %engine.0, %if.end387 ], [ %engine.0, %if.then529 ], [ %engine.0, %if.then515 ], [ %engine.0, %if.then867 ], [ %engine.0, %if.then841 ], [ %engine.0, %if.then837 ], [ %engine.0, %if.then938 ], [ %engine.0, %if.then945 ], [ %engine.0, %sw.bb100 ], [ %engine.0, %sw.bb199 ], [ %engine.0, %sw.bb206 ], [ %engine.0, %sw.bb315 ], [ %engine.0, %sw.bb321 ]
  %222 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %222) #12
  %223 = load %struct.ssl_session_st*, %struct.ssl_session_st** @psksess, align 8, !tbaa !3
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %223) #12
  %call1035 = call i32 @set_keylog_file(%struct.ssl_ctx_st* noundef null, i8* noundef null) #12
  call void @X509_free(%struct.x509_st* noundef %s_cert.1) #12
  %call1036 = call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %crls.2) #15
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call1036, void (i8*)* noundef bitcast (void (%struct.X509_crl_st*)* @X509_CRL_free to void (i8*)*)) #12
  call void @X509_free(%struct.x509_st* noundef %s_dcert.1) #12
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %s_key.1) #12
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %s_dkey.1) #12
  %224 = load %struct.stack_st_X509*, %struct.stack_st_X509** %s_chain, align 8, !tbaa !3
  %call1038 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %224) #15
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call1038, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #12
  %225 = load %struct.stack_st_X509*, %struct.stack_st_X509** %s_dchain, align 8, !tbaa !3
  %call1040 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %225) #15
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call1040, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #12
  %226 = load i8*, i8** %pass, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %226, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 2228) #12
  %227 = load i8*, i8** %dpass, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %227, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 2229) #12
  %228 = load i8*, i8** %host, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %228, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 2230) #12
  %229 = load i8*, i8** %port, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %229, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 2231) #12
  call void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef %call3) #12
  call fastcc void @free_sessions() #15
  %230 = load i8*, i8** getelementptr inbounds (%struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* @tlscstatp, i64 0, i32 2), align 8, !tbaa !34
  call void @CRYPTO_free(i8* noundef %230, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 2234) #12
  %231 = load i8*, i8** getelementptr inbounds (%struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* @tlscstatp, i64 0, i32 4), align 8, !tbaa !35
  call void @CRYPTO_free(i8* noundef %231, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 2235) #12
  %232 = load i8*, i8** getelementptr inbounds (%struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* @tlscstatp, i64 0, i32 3), align 8, !tbaa !36
  call void @CRYPTO_free(i8* noundef %232, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 2236) #12
  %233 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %233) #12
  call void @X509_free(%struct.x509_st* noundef %s_cert2.1) #12
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %s_key2.1) #12
  %data1042 = getelementptr inbounds %struct.tlsextnextprotoctx_st, %struct.tlsextnextprotoctx_st* %next_proto, i64 0, i32 0
  %234 = load i8*, i8** %data1042, align 8, !tbaa !29
  call void @CRYPTO_free(i8* noundef %234, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 2241) #12
  %data1043 = getelementptr inbounds %struct.tlsextalpnctx_st, %struct.tlsextalpnctx_st* %alpn_ctx, i64 0, i32 0
  %235 = load i8*, i8** %data1043, align 8, !tbaa !31
  call void @CRYPTO_free(i8* noundef %235, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 2243) #12
  %236 = load %struct.ssl_excert_st*, %struct.ssl_excert_st** %exc, align 8, !tbaa !3
  call void @ssl_excert_free(%struct.ssl_excert_st* noundef %236) #12
  %call1044 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %ssl_args.3) #15
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call1044) #12
  call void @SSL_CONF_CTX_free(%struct.ssl_conf_ctx_st* noundef %call2) #12
  call void @release_engine(%struct.engine_st* noundef %engine.2) #12
  %237 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call1045 = call i32 @BIO_free(%struct.bio_st* noundef %237) #12
  store %struct.bio_st* null, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %238 = load %struct.bio_st*, %struct.bio_st** @bio_s_msg, align 8, !tbaa !3
  %call1046 = call i32 @BIO_free(%struct.bio_st* noundef %238) #12
  store %struct.bio_st* null, %struct.bio_st** @bio_s_msg, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #13
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.ssl_method_st* @TLS_server_method() local_unnamed_addr #2

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local %struct.ssl_conf_ctx_st* @SSL_CONF_CTX_new() local_unnamed_addr #2

declare dso_local %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() local_unnamed_addr #2

declare dso_local i32 @SSL_CONF_CTX_set_flags(%struct.ssl_conf_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_parse_hostserv(i8* noundef, i8** noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i64 @atol(i8* noundef nonnull) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i32 @atoi(i8* noundef nonnull) local_unnamed_addr #5

declare dso_local i32 @set_nameopt(i8* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_format(i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @opt_flag() local_unnamed_addr #2

declare dso_local i32 @opt_verify(i32 noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local i32 @args_excert(i32 noundef, %struct.ssl_excert_st** noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_HTTP_parse_url(i8* noundef, i32* noundef, i8** noundef, i8** noundef, i8** noundef, i32* noundef, i8** noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #7

declare dso_local %struct.ssl_method_st* @DTLS_server_method() local_unnamed_addr #2

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i32 @app_RAND_load() local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local i32 @load_excert(%struct.ssl_excert_st** noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_key(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @load_cert_pass(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @load_certs(i8* noundef, i32 noundef, %struct.stack_st_X509** noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @next_protos_parse(i64* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_crl_st* @load_crl(i8* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_X509_CRL* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_CRL_free(%struct.X509_crl_st* noundef) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_method_st* @BIO_s_null() local_unnamed_addr #2

declare dso_local %struct.bio_st* @dup_bio_out(i32 noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ssl_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #2

declare dso_local i8* @app_get0_propq() local_unnamed_addr #2

declare dso_local i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ssl_ctx_security_debug(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @config_ctx(%struct.ssl_conf_ctx_st* noundef, %struct.stack_st_OPENSSL_STRING* noundef, %struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_config(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #8

declare dso_local i32 @SSL_CTX_set_generate_session_id(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i32*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @generate_session_id(%struct.ssl_st* noundef %ssl, i8* noundef %id, i32* nocapture noundef readonly %id_len) #0 {
entry:
  %0 = load i8*, i8** @session_id_prefix, align 8, !tbaa !3
  %call = tail call i64 @strlen(i8* noundef %0) #14
  %conv = trunc i64 %call to i32
  br label %do.body

do.body:                                          ; preds = %land.rhs, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %inc, %land.rhs ]
  %1 = load i32, i32* %id_len, align 4, !tbaa !7
  %call1 = tail call i32 @RAND_bytes(i8* noundef %id, i32 noundef %1) #12
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %do.body
  %2 = load i8*, i8** @session_id_prefix, align 8, !tbaa !3
  %3 = load i32, i32* %id_len, align 4, !tbaa !7
  %cmp3 = icmp ugt i32 %3, %conv
  %conv. = select i1 %cmp3, i32 %conv, i32 %3
  %conv5 = zext i32 %conv. to i64
  %call6 = tail call i8* @memcpy(i8* noundef %id, i8* noundef %2, i64 noundef %conv5) #12
  %4 = load i32, i32* %id_len, align 4, !tbaa !7
  %call7 = tail call i32 @SSL_has_matching_session_id(%struct.ssl_st* noundef %ssl, i8* noundef %id, i32 noundef %4) #12
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %inc = add nuw nsw i32 %count.0, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end, label %do.body, !llvm.loop !37

do.end:                                           ; preds = %if.end, %land.rhs
  %count.1 = phi i32 [ 10, %land.rhs ], [ %count.0, %if.end ]
  %cmp10 = icmp ult i32 %count.1, 10
  %. = zext i1 %cmp10 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.body, %do.end
  %retval.0 = phi i32 [ %., %do.end ], [ 0, %do.body ]
  ret i32 %retval.0
}

declare dso_local void @ssl_ctx_set_excert(%struct.ssl_ctx_st* noundef, %struct.ssl_excert_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_set_info_callback(%struct.ssl_ctx_st* noundef, void (%struct.ssl_st*, i32, i32)* noundef) local_unnamed_addr #2

declare dso_local void @apps_ssl_info_callback(%struct.ssl_st* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @init_session_cache_ctx(%struct.ssl_ctx_st* noundef %sctx) unnamed_addr #0 {
entry:
  %call = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %sctx, i32 noundef 44, i64 noundef 770, i8* noundef null) #12
  tail call void @SSL_CTX_sess_set_new_cb(%struct.ssl_ctx_st* noundef %sctx, i32 (%struct.ssl_st*, %struct.ssl_session_st*)* noundef nonnull @add_session) #12
  tail call void @SSL_CTX_sess_set_get_cb(%struct.ssl_ctx_st* noundef %sctx, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)* noundef nonnull @get_session) #12
  tail call void @SSL_CTX_sess_set_remove_cb(%struct.ssl_ctx_st* noundef %sctx, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)* noundef nonnull @del_session) #12
  ret void
}

declare dso_local i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_set_default_read_buffer_len(%struct.ssl_ctx_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_set_tlsext_use_srtp(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @ctx_set_verify_locations(%struct.ssl_ctx_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_set1_param(%struct.ssl_ctx_st* noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ssl_ctx_add_crls(%struct.ssl_ctx_st* noundef, %struct.stack_st_X509_CRL* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @ssl_load_stores(%struct.ssl_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, %struct.stack_st_X509_CRL* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_set_next_protos_advertised_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8**, i32*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @next_proto_cb(%struct.ssl_st* nocapture noundef readnone %s, i8** nocapture noundef writeonly %data, i32* nocapture noundef writeonly %len, i8* nocapture noundef readonly %arg) #9 {
entry:
  %data1 = bitcast i8* %arg to i8**
  %0 = load i8*, i8** %data1, align 8, !tbaa !29
  store i8* %0, i8** %data, align 8, !tbaa !3
  %len2 = getelementptr inbounds i8, i8* %arg, i64 8
  %1 = bitcast i8* %len2 to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !38
  %conv = trunc i64 %2 to i32
  store i32 %conv, i32* %len, align 4, !tbaa !7
  ret i32 0
}

declare dso_local void @SSL_CTX_set_alpn_select_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @alpn_cb(%struct.ssl_st* nocapture noundef readnone %s, i8** noundef %out, i8* noundef %outlen, i8* noundef %in, i32 noundef %inlen, i8* nocapture noundef readonly %arg) #0 {
entry:
  %.b41 = load i1, i1* @s_quiet, align 4
  br i1 %.b41, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.451, i64 0, i64 0)) #12
  %cmp42.not = icmp eq i32 %inlen, 0
  br i1 %cmp42.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.then, %if.end
  %i.043 = phi i32 [ %add11, %if.end ], [ 0, %if.then ]
  %tobool1.not = icmp eq i32 %i.043, 0
  br i1 %tobool1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %for.body
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call3 = tail call i32 @BIO_write(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.452, i64 0, i64 0), i32 noundef 2) #12
  br label %if.end

if.end:                                           ; preds = %if.then2, %for.body
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %add = add nuw i32 %i.043, 1
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 %idxprom
  %idxprom4 = zext i32 %i.043 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %in, i64 %idxprom4
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !19
  %conv = zext i8 %3 to i32
  %call6 = tail call i32 @BIO_write(%struct.bio_st* noundef %2, i8* noundef %arrayidx, i32 noundef %conv) #12
  %4 = load i8, i8* %arrayidx5, align 1, !tbaa !19
  %conv9 = zext i8 %4 to i32
  %add11 = add i32 %add, %conv9
  %cmp = icmp ult i32 %add11, %inlen
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !39

for.end:                                          ; preds = %if.end, %if.then
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call12 = tail call i32 @BIO_write(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.453, i64 0, i64 0), i32 noundef 1) #12
  br label %if.end13

if.end13:                                         ; preds = %for.end, %entry
  %data = bitcast i8* %arg to i8**
  %6 = load i8*, i8** %data, align 8, !tbaa !31
  %len = getelementptr inbounds i8, i8* %arg, i64 8
  %7 = bitcast i8* %len to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !40
  %conv14 = trunc i64 %8 to i32
  %call15 = tail call i32 @SSL_select_next_proto(i8** noundef %out, i8* noundef %outlen, i8* noundef %6, i32 noundef %conv14, i8* noundef %in, i32 noundef %inlen) #12
  %cmp16.not = icmp eq i32 %call15, 1
  br i1 %cmp16.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.end13
  %.b = load i1, i1* @s_quiet, align 4
  br i1 %.b, label %cleanup, label %if.then21

if.then21:                                        ; preds = %if.end19
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call22 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.454, i64 0, i64 0)) #12
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %11 = load i8*, i8** %out, align 8, !tbaa !3
  %12 = load i8, i8* %outlen, align 1, !tbaa !19
  %conv23 = zext i8 %12 to i32
  %call24 = tail call i32 @BIO_write(%struct.bio_st* noundef %10, i8* noundef %11, i32 noundef %conv23) #12
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call25 = tail call i32 @BIO_write(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.453, i64 0, i64 0), i32 noundef 1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then21, %if.end13
  %retval.0 = phi i32 [ 2, %if.end13 ], [ 0, %if.then21 ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

declare dso_local %struct.evp_pkey_st* @load_keyparams(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_keyparams_suppress(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_set0_tmp_dh_pkey(%struct.ssl_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @set_cert_key_stuff(%struct.ssl_ctx_st* noundef, %struct.x509_st* noundef, %struct.evp_pkey_st* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_use_serverinfo_file(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_set_not_resumable_session_callback(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @not_resumable_sess_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef returned %is_forward_secure) #6 {
entry:
  ret i32 %is_forward_secure
}

declare dso_local void @SSL_CTX_set_psk_server_callback(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @psk_server_cb(%struct.ssl_st* noundef %ssl, i8* noundef %identity, i8* noundef %psk, i32 noundef %max_psk_len) #0 {
entry:
  %key_len = alloca i64, align 8
  %0 = bitcast i64* %key_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64 0, i64* %key_len, align 8, !tbaa !24
  %.b62 = load i1, i1* @s_debug, align 4
  br i1 %.b62, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.455, i64 0, i64 0)) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i32 @SSL_version(%struct.ssl_st* noundef %ssl) #12
  %cmp = icmp sgt i32 %call1, 771
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i8* %identity, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.456, i64 0, i64 0)) #12
  %.b = load i1, i1* @s_debug, align 4
  br i1 %.b, label %if.then42, label %if.end44

if.end7:                                          ; preds = %if.end3
  %.b61 = load i1, i1* @s_debug, align 4
  br i1 %.b61, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end7
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call10 = tail call i64 @strlen(i8* noundef nonnull %identity) #14
  %conv = trunc i64 %call10 to i32
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.457, i64 0, i64 0), i32 noundef %conv, i8* noundef nonnull %identity) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7
  %4 = load i8*, i8** @psk_identity, align 8, !tbaa !3
  %call13 = tail call i32 @strcmp(i8* noundef nonnull %identity, i8* noundef %4) #14
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end12
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.458, i64 0, i64 0), i8* noundef nonnull %identity, i8* noundef %4) #12
  br label %if.end22

if.else:                                          ; preds = %if.end12
  %.b60 = load i1, i1* @s_debug, align 4
  br i1 %.b60, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.else
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call20 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.459, i64 0, i64 0)) #12
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19, %if.then16
  %7 = load i8*, i8** @psk_key, align 8, !tbaa !3
  %call23 = call i8* @OPENSSL_hexstr2buf(i8* noundef %7, i64* noundef nonnull %key_len) #12
  %cmp24 = icmp eq i8* %call23, null
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end22
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %9 = load i8*, i8** @psk_key, align 8, !tbaa !3
  %call27 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.460, i64 0, i64 0), i8* noundef %9) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %10 = load i64, i64* %key_len, align 8, !tbaa !24
  %conv29 = sext i32 %max_psk_len to i64
  %cmp30 = icmp sgt i64 %10, %conv29
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end28
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call33 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.461, i64 0, i64 0), i32 noundef %max_psk_len, i64 noundef %10) #12
  call void @CRYPTO_free(i8* noundef nonnull %call23, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 172) #12
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %call35 = call i8* @memcpy(i8* noundef %psk, i8* noundef nonnull %call23, i64 noundef %10) #12
  call void @CRYPTO_free(i8* noundef nonnull %call23, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 177) #12
  %.b59 = load i1, i1* @s_debug, align 4
  br i1 %.b59, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %13 = load i64, i64* %key_len, align 8, !tbaa !24
  %call38 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.462, i64 0, i64 0), i64 noundef %13) #12
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34
  %14 = load i64, i64* %key_len, align 8, !tbaa !24
  %conv40 = trunc i64 %14 to i32
  br label %cleanup

if.then42:                                        ; preds = %if.then5
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call43 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.463, i64 0, i64 0)) #12
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.then5
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call45 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %16, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call47 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %17, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end44, %if.end39, %if.then32, %if.then26
  %retval.0 = phi i32 [ 0, %if.end44 ], [ 0, %if.then26 ], [ 0, %if.then32 ], [ %conv40, %if.end39 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare dso_local i32 @SSL_CTX_use_psk_identity_hint(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_session_st* @PEM_read_bio_SSL_SESSION(%struct.bio_st* noundef, %struct.ssl_session_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_set_psk_find_session_callback(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @psk_find_session_cb(%struct.ssl_st* noundef %ssl, i8* noundef readonly %identity, i64 noundef %identity_len, %struct.ssl_session_st** nocapture noundef writeonly %sess) #0 {
entry:
  %key_len = alloca i64, align 8
  %0 = bitcast i64* %key_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %1 = load i8*, i8** @psk_identity, align 8, !tbaa !3
  %call = tail call i64 @strlen(i8* noundef %1) #14
  %cmp.not = icmp eq i64 %call, %identity_len
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @memcmp(i8* noundef %1, i8* noundef %identity, i64 noundef %identity_len) #14
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.ssl_session_st* null, %struct.ssl_session_st** %sess, align 8, !tbaa !3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.ssl_session_st*, %struct.ssl_session_st** @psksess, align 8, !tbaa !3
  %cmp3.not = icmp eq %struct.ssl_session_st* %2, null
  br i1 %cmp3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @SSL_SESSION_up_ref(%struct.ssl_session_st* noundef nonnull %2) #12
  %3 = load %struct.ssl_session_st*, %struct.ssl_session_st** @psksess, align 8, !tbaa !3
  store %struct.ssl_session_st* %3, %struct.ssl_session_st** %sess, align 8, !tbaa !3
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = load i8*, i8** @psk_key, align 8, !tbaa !3
  %call7 = call i8* @OPENSSL_hexstr2buf(i8* noundef %4, i64* noundef nonnull %key_len) #12
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %6 = load i8*, i8** @psk_key, align 8, !tbaa !3
  %call10 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.460, i64 0, i64 0), i8* noundef %6) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = call %struct.ssl_cipher_st* @SSL_CIPHER_find(%struct.ssl_st* noundef %ssl, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @tls13_aes128gcmsha256_id, i64 0, i64 0)) #12
  %cmp13 = icmp eq %struct.ssl_cipher_st* %call12, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call15 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.464, i64 0, i64 0)) #12
  call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 222) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call17 = call %struct.ssl_session_st* @SSL_SESSION_new() #12
  %cmp18 = icmp eq %struct.ssl_session_st* %call17, null
  br i1 %cmp18, label %if.then28, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end16
  %8 = load i64, i64* %key_len, align 8, !tbaa !24
  %call20 = call i32 @SSL_SESSION_set1_master_key(%struct.ssl_session_st* noundef nonnull %call17, i8* noundef nonnull %call7, i64 noundef %8) #12
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.then28, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %call22 = call i32 @SSL_SESSION_set_cipher(%struct.ssl_session_st* noundef nonnull %call17, %struct.ssl_cipher_st* noundef nonnull %call12) #12
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then28, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %call25 = call i32 @SSL_version(%struct.ssl_st* noundef %ssl) #12
  %call26 = call i32 @SSL_SESSION_set_protocol_version(%struct.ssl_session_st* noundef nonnull %call17, i32 noundef %call25) #12
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %lor.lhs.false24, %lor.lhs.false21, %lor.lhs.false19, %if.end16
  call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 231) #12
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false24
  call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 234) #12
  store %struct.ssl_session_st* %call17, %struct.ssl_session_st** %sess, align 8, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then28, %if.then14, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then4 ], [ 0, %if.then9 ], [ 0, %if.then14 ], [ 0, %if.then28 ], [ 1, %if.end29 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare dso_local void @SSL_CTX_set_verify(%struct.ssl_ctx_st* noundef, i32 noundef, i32 (i32, %struct.x509_store_ctx_st*)* noundef) local_unnamed_addr #2

declare dso_local i32 @verify_callback(i32 noundef, %struct.x509_store_ctx_st* noundef) #2

declare dso_local i32 @SSL_CTX_set_session_id_context(%struct.ssl_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_set_cookie_generate_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i32*)* noundef) local_unnamed_addr #2

declare dso_local i32 @generate_cookie_callback(%struct.ssl_st* noundef, i8* noundef, i32* noundef) #2

declare dso_local void @SSL_CTX_set_cookie_verify_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i32)* noundef) local_unnamed_addr #2

declare dso_local i32 @verify_cookie_callback(%struct.ssl_st* noundef, i8* noundef, i32 noundef) #2

declare dso_local void @SSL_CTX_set_stateless_cookie_generate_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i64*)* noundef) local_unnamed_addr #2

declare dso_local i32 @generate_stateless_cookie_callback(%struct.ssl_st* noundef, i8* noundef, i64* noundef) #2

declare dso_local void @SSL_CTX_set_stateless_cookie_verify_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i64)* noundef) local_unnamed_addr #2

declare dso_local i32 @verify_stateless_cookie_callback(%struct.ssl_st* noundef, i8* noundef, i64 noundef) #2

declare dso_local i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_servername_cb(%struct.ssl_st* noundef %s, i32* nocapture noundef readnone %ad, i8* nocapture noundef readonly %arg) #0 {
entry:
  %call = tail call i8* @SSL_get_servername(%struct.ssl_st* noundef %s, i32 noundef 0) #12
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end.thread, label %land.lhs.true

if.end.thread:                                    ; preds = %entry
  %servername1857 = bitcast i8* %arg to i8**
  %0 = load i8*, i8** %servername1857, align 8, !tbaa !26
  %cmp1958 = icmp eq i8* %0, null
  %.mux60 = select i1 %cmp1958, i32 3, i32 0
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %biodebug = getelementptr inbounds i8, i8* %arg, i64 8
  %1 = bitcast i8* %biodebug to %struct.bio_st**
  %2 = load %struct.bio_st*, %struct.bio_st** %1, align 8, !tbaa !33
  %cmp1.not = icmp eq %struct.bio_st* %2, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %2, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.465, i64 0, i64 0)) #12
  %3 = load i8, i8* %call, align 1, !tbaa !19
  %cmp4.not63 = icmp eq i8 %3, 0
  br i1 %cmp4.not63, label %while.end, label %while.body

while.body:                                       ; preds = %if.then, %land.end.thread
  %4 = phi i8 [ %10, %land.end.thread ], [ %3, %if.then ]
  %incdec.ptr64.pn = phi i8* [ %incdec.ptr64, %land.end.thread ], [ %call, %if.then ]
  %incdec.ptr64 = getelementptr inbounds i8, i8* %incdec.ptr64.pn, i64 1
  %conv65 = zext i8 %4 to i32
  %5 = load %struct.bio_st*, %struct.bio_st** %1, align 8, !tbaa !33
  %and = and i32 %conv65, 128
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %land.end, label %land.end.thread

land.end:                                         ; preds = %while.body
  %call10 = tail call i16** @__ctype_b_loc() #16
  %6 = load i16*, i16** %call10, align 8, !tbaa !3
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2, !tbaa !22
  %8 = and i16 %7, 16384
  %tobool.not = icmp eq i16 %8, 0
  %spec.select = select i1 %tobool.not, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.467, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.466, i64 0, i64 0)
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end, %while.body
  %9 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.467, i64 0, i64 0), %while.body ], [ %spec.select, %land.end ]
  %call15 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef nonnull %9, i32 noundef %conv65) #12
  %10 = load i8, i8* %incdec.ptr64, align 1, !tbaa !19
  %cmp4.not = icmp eq i8 %10, 0
  br i1 %cmp4.not, label %while.end, label %while.body, !llvm.loop !41

while.end:                                        ; preds = %land.end.thread, %if.then
  %11 = load %struct.bio_st*, %struct.bio_st** %1, align 8, !tbaa !33
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.468, i64 0, i64 0)) #12
  br label %if.end

if.end:                                           ; preds = %while.end, %land.lhs.true
  %servername18 = bitcast i8* %arg to i8**
  %12 = load i8*, i8** %servername18, align 8, !tbaa !26
  %cmp19 = icmp eq i8* %12, null
  br i1 %cmp19, label %cleanup, label %if.then25

if.then25:                                        ; preds = %if.end
  %call27 = tail call i32 @strcasecmp(i8* noundef nonnull %call, i8* noundef nonnull %12) #14
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.then25
  %extension_error = getelementptr inbounds i8, i8* %arg, i64 16
  %13 = bitcast i8* %extension_error to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !28
  br label %cleanup

if.end30:                                         ; preds = %if.then25
  %15 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %cmp31.not = icmp eq %struct.ssl_ctx_st* %15, null
  br i1 %cmp31.not, label %cleanup, label %if.then33

if.then33:                                        ; preds = %if.end30
  %16 = load %struct.bio_st*, %struct.bio_st** %1, align 8, !tbaa !33
  %call35 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.469, i64 0, i64 0)) #12
  %17 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx2, align 8, !tbaa !3
  %call36 = tail call %struct.ssl_ctx_st* @SSL_set_SSL_CTX(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %17) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.thread, %if.end, %if.then33, %if.end30, %if.then29
  %retval.0 = phi i32 [ %14, %if.then29 ], [ 3, %if.end ], [ 0, %if.end30 ], [ 0, %if.then33 ], [ %.mux60, %if.end.thread ]
  ret i32 %retval.0
}

declare dso_local i32 @set_up_srp_verifier_file(%struct.ssl_ctx_st* noundef, %struct.srpsrvparm_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_set_client_CA_list(%struct.ssl_ctx_st* noundef, %struct.stack_st_X509_NAME* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_X509_NAME* @SSL_load_client_CA_file(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @cert_status_cb(%struct.ssl_st* noundef %s, i8* nocapture noundef readonly %arg) #0 {
entry:
  %resp = alloca %struct.ocsp_response_st*, align 8
  %rspder = alloca i8*, align 8
  %0 = bitcast i8* %arg to %struct.tlsextstatusctx_st*
  %1 = bitcast %struct.ocsp_response_st** %resp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store %struct.ocsp_response_st* null, %struct.ocsp_response_st** %resp, align 8, !tbaa !3
  %2 = bitcast i8** %rspder to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #13
  store i8* null, i8** %rspder, align 8, !tbaa !3
  %verbose = getelementptr inbounds i8, i8* %arg, i64 60
  %3 = bitcast i8* %verbose to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.470, i64 0, i64 0)) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %respin = getelementptr inbounds i8, i8* %arg, i64 8
  %6 = bitcast i8* %respin to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !18
  %cmp.not = icmp eq i8* %7, null
  br i1 %cmp.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %call3 = tail call %struct.bio_st* @bio_open_default(i8* noundef nonnull %7, i8 noundef signext 114, i32 noundef 4) #12
  %cmp4 = icmp eq %struct.bio_st* %call3, null
  br i1 %cmp4, label %if.then32.sink.split, label %if.end7

if.end7:                                          ; preds = %if.then1
  %call8 = tail call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.ocsp_response_st* ()* @OCSP_RESPONSE_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.ocsp_response_st* (%struct.ocsp_response_st**, i8**, i64)* @d2i_OCSP_RESPONSE to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef nonnull %call3, i8** noundef null) #12
  %8 = bitcast %struct.ocsp_response_st** %resp to i8**
  store i8* %call8, i8** %8, align 8, !tbaa !3
  %call9 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call3) #12
  %cmp10 = icmp eq i8* %call8, null
  %9 = bitcast i8* %call8 to %struct.ocsp_response_st*
  br i1 %cmp10, label %if.then32.sink.split, label %if.end18.thread

if.else:                                          ; preds = %if.end
  %call14 = call fastcc i32 @get_ocsp_resp_from_responder(%struct.ssl_st* noundef %s, %struct.tlsextstatusctx_st* noundef nonnull %0, %struct.ocsp_response_st** noundef nonnull %resp) #15
  %cmp15.not = icmp eq i32 %call14, 0
  %.pre = load %struct.ocsp_response_st*, %struct.ocsp_response_st** %resp, align 8, !tbaa !3
  br i1 %cmp15.not, label %if.end18, label %if.then32

if.end18:                                         ; preds = %if.else
  %call19 = call i32 @i2d_OCSP_RESPONSE(%struct.ocsp_response_st* noundef %.pre, i8** noundef nonnull %rspder) #12
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %if.end33, label %if.end22

if.end18.thread:                                  ; preds = %if.end7
  %call1970 = call i32 @i2d_OCSP_RESPONSE(%struct.ocsp_response_st* noundef nonnull %9, i8** noundef nonnull %rspder) #12
  %cmp2071 = icmp slt i32 %call1970, 1
  br i1 %cmp2071, label %if.then32, label %if.end22

if.end22:                                         ; preds = %if.end18.thread, %if.end18
  %call1975 = phi i32 [ %call1970, %if.end18.thread ], [ %call19, %if.end18 ]
  %.pre656773 = phi %struct.ocsp_response_st* [ %9, %if.end18.thread ], [ %.pre, %if.end18 ]
  %conv64 = zext i32 %call1975 to i64
  %10 = load i8*, i8** %rspder, align 8, !tbaa !3
  %call23 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 71, i64 noundef %conv64, i8* noundef %10) #12
  %11 = load i32, i32* %3, align 4, !tbaa !13
  %tobool25.not = icmp eq i32 %11, 0
  br i1 %tobool25.not, label %if.end33, label %if.then26

if.then26:                                        ; preds = %if.end22
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call27 = call i32 @BIO_puts(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.473, i64 0, i64 0)) #12
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call28 = call i32 @OCSP_RESPONSE_print(%struct.bio_st* noundef %13, %struct.ocsp_response_st* noundef %.pre656773, i64 noundef 2) #12
  br label %if.end33

if.then32.sink.split:                             ; preds = %if.end7, %if.then1
  %.sink78 = phi i8* [ getelementptr inbounds ([45 x i8], [45 x i8]* @.str.471, i64 0, i64 0), %if.then1 ], [ getelementptr inbounds ([42 x i8], [42 x i8]* @.str.472, i64 0, i64 0), %if.end7 ]
  %.pre65.ph = phi %struct.ocsp_response_st* [ null, %if.then1 ], [ %9, %if.end7 ]
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call12 = tail call i32 @BIO_puts(%struct.bio_st* noundef %14, i8* noundef %.sink78) #12
  br label %if.then32

if.then32:                                        ; preds = %if.then32.sink.split, %if.else, %if.end18.thread
  %.pre65 = phi %struct.ocsp_response_st* [ %9, %if.end18.thread ], [ %.pre, %if.else ], [ %.pre65.ph, %if.then32.sink.split ]
  %ret.163 = phi i32 [ 2, %if.end18.thread ], [ %call14, %if.else ], [ 2, %if.then32.sink.split ]
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %15) #12
  br label %if.end33

if.end33:                                         ; preds = %if.end18, %if.end22, %if.then26, %if.then32
  %16 = phi %struct.ocsp_response_st* [ %.pre65, %if.then32 ], [ %.pre656773, %if.then26 ], [ %.pre656773, %if.end22 ], [ %.pre, %if.end18 ]
  %ret.158 = phi i32 [ %ret.163, %if.then32 ], [ 0, %if.then26 ], [ 0, %if.end22 ], [ 0, %if.end18 ]
  call void @OCSP_RESPONSE_free(%struct.ocsp_response_st* noundef %16) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  ret i32 %ret.158
}

declare dso_local i32 @set_keylog_file(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_set_max_early_data(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_set_recv_max_early_data(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @rev_body(i32 noundef %s, i32 noundef %stype, i32 noundef %prot, i8* noundef %context) #0 {
entry:
  %call = tail call i8* @app_malloc(i64 noundef 16384, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.579, i64 0, i64 0)) #12
  %call1 = tail call %struct.bio_method_st* @BIO_f_buffer() #12
  %call2 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call1) #12
  %call3 = tail call %struct.bio_method_st* @BIO_f_ssl() #12
  %call4 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call3) #12
  %cmp = icmp eq %struct.bio_st* %call2, null
  %cmp5 = icmp eq %struct.bio_st* %call4, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp5
  br i1 %or.cond, label %cleanup126, label %if.end

if.end:                                           ; preds = %entry
  %call6 = tail call i64 @BIO_int_ctrl(%struct.bio_st* noundef nonnull %call2, i32 noundef 117, i64 noundef 16384, i32 noundef 1) #12
  %tobool.not = icmp eq i64 %call6, 0
  br i1 %tobool.not, label %cleanup126, label %if.end8

if.end8:                                          ; preds = %if.end
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call9 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %0) #12
  %cmp10 = icmp eq %struct.ssl_st* %call9, null
  br i1 %cmp10, label %cleanup126, label %if.end12

if.end12:                                         ; preds = %if.end8
  %.b195 = load i1, i1* @s_tlsextdebug, align 4
  br i1 %.b195, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i64 @SSL_callback_ctrl(%struct.ssl_st* noundef nonnull %call9, i32 noundef 56, void ()* noundef bitcast (void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)* @tlsext_cb to void ()*)) #12
  %1 = load i8*, i8** bitcast (%struct.bio_st** @bio_s_out to i8**), align 8, !tbaa !3
  %call16 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %call9, i32 noundef 57, i64 noundef 0, i8* noundef %1) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12
  %cmp18.not = icmp eq i8* %context, null
  br i1 %cmp18.not, label %if.end23, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end17
  %call19 = tail call i64 @strlen(i8* noundef nonnull %context) #14
  %conv = trunc i64 %call19 to i32
  %call20 = tail call i32 @SSL_set_session_id_context(%struct.ssl_st* noundef nonnull %call9, i8* noundef nonnull %context, i32 noundef %conv) #12
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.lhs.true
  tail call void @SSL_free(%struct.ssl_st* noundef nonnull %call9) #12
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #12
  br label %cleanup126

if.end23:                                         ; preds = %land.lhs.true, %if.end17
  %call24 = tail call %struct.bio_st* @BIO_new_socket(i32 noundef %s, i32 noundef 0) #12
  tail call void @SSL_set_bio(%struct.ssl_st* noundef nonnull %call9, %struct.bio_st* noundef %call24, %struct.bio_st* noundef %call24) #12
  tail call void @SSL_set_accept_state(%struct.ssl_st* noundef nonnull %call9) #12
  %3 = bitcast %struct.ssl_st* %call9 to i8*
  %call25 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call4, i32 noundef 109, i64 noundef 1, i8* noundef nonnull %3) #12
  %call26 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call2, %struct.bio_st* noundef nonnull %call4) #12
  %.b = load i1, i1* @s_debug, align 4
  br i1 %.b, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end23
  %call29 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef nonnull %call9) #12
  tail call void @BIO_set_callback_ex(%struct.bio_st* noundef %call29, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef nonnull @bio_dump_callback) #12
  %call30 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef nonnull %call9) #12
  %4 = load i8*, i8** bitcast (%struct.bio_st** @bio_s_out to i8**), align 8, !tbaa !3
  tail call void @BIO_set_callback_arg(%struct.bio_st* noundef %call30, i8* noundef %4) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end23
  %5 = load i32, i32* @s_msg, align 4, !tbaa !7
  switch i32 %5, label %if.else [
    i32 0, label %if.end40
    i32 2, label %if.end37
  ]

if.else:                                          ; preds = %if.end31
  br label %if.end37

if.end37:                                         ; preds = %if.end31, %if.else
  %msg_cb.sink = phi void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* [ @msg_cb, %if.else ], [ @SSL_trace, %if.end31 ]
  tail call void @SSL_set_msg_callback(%struct.ssl_st* noundef nonnull %call9, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* noundef nonnull %msg_cb.sink) #12
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_s_msg, align 8, !tbaa !3
  %tobool38.not = icmp eq %struct.bio_st* %6, null
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8
  %cond = select i1 %tobool38.not, %struct.bio_st* %7, %struct.bio_st* %6
  %8 = bitcast %struct.bio_st* %cond to i8*
  %call39 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %call9, i32 noundef 16, i64 noundef 0, i8* noundef %8) #12
  br label %if.end40

if.end40:                                         ; preds = %if.end31, %if.end37
  %call41204 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call2, i32 noundef 101, i64 noundef 0, i8* noundef null) #12
  %conv42205 = trunc i64 %call41204 to i32
  %cmp43206 = icmp sgt i32 %conv42205, 0
  br i1 %cmp43206, label %for.end, label %if.end46

if.end46:                                         ; preds = %if.end40, %for.cond.backedge
  %call47 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call2, i32 noundef 8) #12
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end46
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call50 = tail call i32 @BIO_puts(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.580, i64 0, i64 0)) #12
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %10) #12
  br label %end

if.end51:                                         ; preds = %if.end46
  %call52 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call2, i32 noundef 4) #12
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %for.cond.backedge, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %if.end51
  %call55 = tail call i32 @BIO_get_retry_reason(%struct.bio_st* noundef %call2) #12
  %cmp56 = icmp eq i32 %call55, 1
  br i1 %cmp56, label %if.then58, label %for.cond.backedge

if.then58:                                        ; preds = %land.lhs.true54
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call59 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.581, i64 0, i64 0)) #12
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  tail call void @lookup_srp_user(%struct.srpsrvparm_st* noundef nonnull @srp_callback_parm, %struct.bio_st* noundef %12) #12
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end51, %land.lhs.true54, %if.then58
  %call41 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call2, i32 noundef 101, i64 noundef 0, i8* noundef null) #12
  %conv42 = trunc i64 %call41 to i32
  %cmp43 = icmp sgt i32 %conv42, 0
  br i1 %cmp43, label %for.end, label %if.end46

for.end:                                          ; preds = %for.cond.backedge, %if.end40
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call61 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.582, i64 0, i64 0)) #12
  tail call void @print_ssl_summary(%struct.ssl_st* noundef nonnull %call9) #12
  br label %for.cond62

for.cond62:                                       ; preds = %for.cond62.backedge, %for.end
  %call63 = tail call i32 @BIO_gets(%struct.bio_st* noundef %call2, i8* noundef %call, i32 noundef 16383) #12
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then66, label %if.else84

if.then66:                                        ; preds = %for.cond62
  %call67 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call2, i32 noundef 8) #12
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then69, label %if.else73

if.then69:                                        ; preds = %if.then66
  %.b193 = load i1, i1* @s_quiet, align 4
  br i1 %.b193, label %cleanup126, label %if.then71

if.then71:                                        ; preds = %if.then69
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %14) #12
  br label %cleanup126

if.else73:                                        ; preds = %if.then66
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call74 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.541, i64 0, i64 0)) #12
  %call75 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call2, i32 noundef 4) #12
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end83, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %if.else73
  %call78 = tail call i32 @BIO_get_retry_reason(%struct.bio_st* noundef %call2) #12
  %cmp79 = icmp eq i32 %call78, 1
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %land.lhs.true77
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call82 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.511, i64 0, i64 0)) #12
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  tail call void @lookup_srp_user(%struct.srpsrvparm_st* noundef nonnull @srp_callback_parm, %struct.bio_st* noundef %17) #12
  br label %for.cond62.backedge

for.cond62.backedge:                              ; preds = %for.cond111, %if.then81, %if.end83
  br label %for.cond62

if.end83:                                         ; preds = %land.lhs.true77, %if.else73
  tail call fastcc void @ossl_sleep() #15
  br label %for.cond62.backedge

if.else84:                                        ; preds = %for.cond62
  %cmp85 = icmp eq i32 %call63, 0
  br i1 %cmp85, label %if.then87, label %if.else89

if.then87:                                        ; preds = %if.else84
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call88 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.515, i64 0, i64 0)) #12
  br label %end

if.else89:                                        ; preds = %if.else84
  %idx.ext201 = zext i32 %call63 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %idx.ext201
  br label %land.rhs

land.rhs:                                         ; preds = %if.else89, %while.body
  %add.ptr.pn = phi i8* [ %add.ptr, %if.else89 ], [ %p.0210, %while.body ]
  %i.0209 = phi i32 [ %call63, %if.else89 ], [ %dec, %while.body ]
  %p.0210 = getelementptr inbounds i8, i8* %add.ptr.pn, i64 -1
  %19 = load i8, i8* %p.0210, align 1, !tbaa !19
  switch i8 %19, label %while.end [
    i8 10, label %while.body
    i8 13, label %while.body
  ]

while.body:                                       ; preds = %land.rhs, %land.rhs
  %dec = add nsw i32 %i.0209, -1
  %tobool91.not = icmp eq i32 %dec, 0
  br i1 %tobool91.not, label %if.end108, label %land.rhs, !llvm.loop !42

while.end:                                        ; preds = %land.rhs
  %.b194 = load i1, i1* @s_ign_eof, align 4
  %tobool98 = xor i1 %.b194, true
  %cmp100 = icmp eq i32 %i.0209, 5
  %or.cond133 = select i1 %tobool98, i1 %cmp100, i1 false
  br i1 %or.cond133, label %land.lhs.true102, label %if.end108

land.lhs.true102:                                 ; preds = %while.end
  %call103 = tail call i32 @strncmp(i8* noundef %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.583, i64 0, i64 0), i64 noundef 5) #14
  %cmp104 = icmp eq i32 %call103, 0
  br i1 %cmp104, label %if.then106, label %if.end108

if.then106:                                       ; preds = %land.lhs.true102
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call107 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.515, i64 0, i64 0)) #12
  br label %end

if.end108:                                        ; preds = %while.body, %land.lhs.true102, %while.end
  %i.0203 = phi i32 [ 5, %land.lhs.true102 ], [ %i.0209, %while.end ], [ 0, %while.body ]
  %conv109 = sext i32 %i.0203 to i64
  tail call void @BUF_reverse(i8* noundef %call, i8* noundef null, i64 noundef %conv109) #12
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %conv109
  store i8 10, i8* %arrayidx, align 1, !tbaa !19
  %add = add nsw i32 %i.0203, 1
  %call110 = tail call i32 @BIO_write(%struct.bio_st* noundef %call2, i8* noundef %call, i32 noundef %add) #12
  br label %for.cond111

for.cond111:                                      ; preds = %if.end117, %if.end108
  %call112 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call2, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  %conv113 = trunc i64 %call112 to i32
  %cmp114 = icmp sgt i32 %conv113, 0
  br i1 %cmp114, label %for.cond62.backedge, label %if.end117

if.end117:                                        ; preds = %for.cond111
  %call118 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call2, i32 noundef 8) #12
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %end, label %for.cond111

end:                                              ; preds = %if.end117, %if.then106, %if.then87, %if.then49
  tail call void @do_ssl_shutdown(%struct.ssl_st* noundef nonnull %call9) #12
  br label %cleanup126

cleanup126:                                       ; preds = %if.then22, %end, %entry, %if.end, %if.end8, %if.then71, %if.then69
  %ssl_bio.0 = phi %struct.bio_st* [ %call4, %entry ], [ %call4, %if.end8 ], [ null, %if.then69 ], [ null, %if.then71 ], [ null, %end ], [ %call4, %if.then22 ], [ %call4, %if.end ]
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 3533) #12
  %call125 = tail call i32 @BIO_free(%struct.bio_st* noundef %ssl_bio.0) #12
  tail call void @BIO_free_all(%struct.bio_st* noundef %call2) #12
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @www_body(i32 noundef %s, i32 noundef %stype, i32 noundef %prot, i8* noundef %context) #0 {
entry:
  %readfds = alloca %struct.fd_set, align 8
  %0 = bitcast %struct.fd_set* %readfds to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #13
  %add = add nsw i32 %s, 1
  %call = tail call i8* @app_malloc(i64 noundef 16384, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.540, i64 0, i64 0)) #12
  %call1 = tail call %struct.bio_method_st* @BIO_f_buffer() #12
  %call2 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call1) #12
  %call3 = tail call %struct.bio_method_st* @BIO_f_ssl() #12
  %call4 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call3) #12
  %cmp = icmp eq %struct.bio_st* %call2, null
  %cmp5 = icmp eq %struct.bio_st* %call4, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp5
  br i1 %or.cond, label %err, label %if.end

if.end:                                           ; preds = %entry
  %.b694 = load i1, i1* @s_nbio, align 4
  br i1 %.b694, label %if.then6, label %if.end15

if.then6:                                         ; preds = %if.end
  %call7 = tail call i32 @BIO_socket_nbio(i32 noundef %s, i32 noundef 1) #12
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then6
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %1) #12
  br label %if.end15

if.else:                                          ; preds = %if.then6
  %.b698 = load i1, i1* @s_quiet, align 4
  br i1 %.b698, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.else
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call12 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.492, i64 0, i64 0)) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.then11, %if.else, %if.end
  %call16 = tail call i64 @BIO_int_ctrl(%struct.bio_st* noundef nonnull %call2, i32 noundef 117, i64 noundef 16384, i32 noundef 1) #12
  %tobool17.not = icmp eq i64 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end19

if.end19:                                         ; preds = %if.end15
  %3 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call20 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %3) #12
  %cmp21 = icmp eq %struct.ssl_st* %call20, null
  br i1 %cmp21, label %err, label %if.end23

if.end23:                                         ; preds = %if.end19
  %.b699 = load i1, i1* @s_tlsextdebug, align 4
  br i1 %.b699, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end23
  %call26 = tail call i64 @SSL_callback_ctrl(%struct.ssl_st* noundef nonnull %call20, i32 noundef 56, void ()* noundef bitcast (void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)* @tlsext_cb to void ()*)) #12
  %4 = load i8*, i8** bitcast (%struct.bio_st** @bio_s_out to i8**), align 8, !tbaa !3
  %call27 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %call20, i32 noundef 57, i64 noundef 0, i8* noundef %4) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23
  %cmp29.not = icmp eq i8* %context, null
  br i1 %cmp29.not, label %if.end34, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end28
  %call30 = tail call i64 @strlen(i8* noundef nonnull %context) #14
  %conv = trunc i64 %call30 to i32
  %call31 = tail call i32 @SSL_set_session_id_context(%struct.ssl_st* noundef nonnull %call20, i8* noundef nonnull %context, i32 noundef %conv) #12
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %land.lhs.true
  tail call void @SSL_free(%struct.ssl_st* noundef nonnull %call20) #12
  br label %err

if.end34:                                         ; preds = %land.lhs.true, %if.end28
  %call35 = tail call %struct.bio_st* @BIO_new_socket(i32 noundef %s, i32 noundef 0) #12
  %.b = load i1, i1* @s_nbio_test, align 4
  br i1 %.b, label %if.then37, label %if.end41

if.then37:                                        ; preds = %if.end34
  %call38 = tail call %struct.bio_method_st* @BIO_f_nbio_test() #12
  %call39 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call38) #12
  %call40 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef %call39, %struct.bio_st* noundef %call35) #12
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end34
  %sbio.0 = phi %struct.bio_st* [ %call40, %if.then37 ], [ %call35, %if.end34 ]
  tail call void @SSL_set_bio(%struct.ssl_st* noundef nonnull %call20, %struct.bio_st* noundef %sbio.0, %struct.bio_st* noundef %sbio.0) #12
  tail call void @SSL_set_accept_state(%struct.ssl_st* noundef nonnull %call20) #12
  %5 = bitcast %struct.ssl_st* %call20 to i8*
  %call42 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call4, i32 noundef 109, i64 noundef 1, i8* noundef %5) #12
  %call43 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call2, %struct.bio_st* noundef nonnull %call4) #12
  %.b695 = load i1, i1* @s_debug, align 4
  br i1 %.b695, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end41
  %call46 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef nonnull %call20) #12
  tail call void @BIO_set_callback_ex(%struct.bio_st* noundef %call46, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef nonnull @bio_dump_callback) #12
  %call47 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef nonnull %call20) #12
  %6 = load i8*, i8** bitcast (%struct.bio_st** @bio_s_out to i8**), align 8, !tbaa !3
  tail call void @BIO_set_callback_arg(%struct.bio_st* noundef %call47, i8* noundef %6) #12
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end41
  %7 = load i32, i32* @s_msg, align 4, !tbaa !7
  switch i32 %7, label %if.else54 [
    i32 0, label %for.cond.preheader
    i32 2, label %if.end55
  ]

if.else54:                                        ; preds = %if.end48
  br label %if.end55

if.end55:                                         ; preds = %if.end48, %if.else54
  %msg_cb.sink = phi void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* [ @msg_cb, %if.else54 ], [ @SSL_trace, %if.end48 ]
  tail call void @SSL_set_msg_callback(%struct.ssl_st* noundef nonnull %call20, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* noundef nonnull %msg_cb.sink) #12
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_s_msg, align 8, !tbaa !3
  %tobool56.not = icmp eq %struct.bio_st* %8, null
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8
  %cond = select i1 %tobool56.not, %struct.bio_st* %9, %struct.bio_st* %8
  %10 = bitcast %struct.bio_st* %cond to i8*
  %call57 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %call20, i32 noundef 16, i64 noundef 0, i8* noundef %10) #12
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end48, %if.end55
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.preheader
  %call59 = tail call i32 @BIO_gets(%struct.bio_st* noundef %call2, i8* noundef %call, i32 noundef 16383) #12
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.else83

if.then62:                                        ; preds = %for.cond
  %call63 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call2, i32 noundef 8) #12
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true65, label %if.else72

land.lhs.true65:                                  ; preds = %if.then62
  %call66 = tail call i32 @SSL_waiting_for_async(%struct.ssl_st* noundef %call20) #12
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then68, label %if.else72

if.then68:                                        ; preds = %land.lhs.true65
  %.b697 = load i1, i1* @s_quiet, align 4
  br i1 %.b697, label %err, label %if.then70

if.then70:                                        ; preds = %if.then68
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %11) #12
  br label %err

if.else72:                                        ; preds = %land.lhs.true65, %if.then62
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call73 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.541, i64 0, i64 0)) #12
  %call74 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call2, i32 noundef 4) #12
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end82, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %if.else72
  %call77 = tail call i32 @BIO_get_retry_reason(%struct.bio_st* noundef %call2) #12
  %cmp78 = icmp eq i32 %call77, 1
  br i1 %cmp78, label %if.then80, label %if.end82

if.then80:                                        ; preds = %land.lhs.true76
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call81 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.511, i64 0, i64 0)) #12
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  tail call void @lookup_srp_user(%struct.srpsrvparm_st* noundef nonnull @srp_callback_parm, %struct.bio_st* noundef %14) #12
  br label %for.cond.backedge

if.end82:                                         ; preds = %land.lhs.true76, %if.else72
  tail call fastcc void @ossl_sleep() #15
  br label %for.cond.backedge

if.else83:                                        ; preds = %for.cond
  %cmp84 = icmp eq i32 %call59, 0
  br i1 %cmp84, label %end, label %if.end88

if.end88:                                         ; preds = %if.else83
  %15 = load i32, i32* @www, align 4, !tbaa !7
  switch i32 %15, label %if.else251 [
    i32 1, label %land.lhs.true91
    i32 2, label %land.lhs.true98
  ]

land.lhs.true91:                                  ; preds = %if.end88
  %call92 = tail call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.542, i64 0, i64 0), i8* noundef %call, i64 noundef 4) #14
  %cmp93 = icmp eq i32 %call92, 0
  br i1 %cmp93, label %land.lhs.true105, label %for.cond.backedge

land.lhs.true98:                                  ; preds = %if.end88
  %call99 = tail call i32 @strncmp(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.543, i64 0, i64 0), i8* noundef %call, i64 noundef 11) #14
  %cmp100 = icmp eq i32 %call99, 0
  br i1 %cmp100, label %if.end144, label %land.lhs.true257

land.lhs.true105:                                 ; preds = %land.lhs.true91
  %call106 = tail call i32 @strncmp(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.545, i64 0, i64 0), i8* noundef %call, i64 noundef 10) #14
  %cmp107 = icmp eq i32 %call106, 0
  br i1 %cmp107, label %if.then109, label %if.end144

if.then109:                                       ; preds = %land.lhs.true105
  %call110 = tail call i32 @strncmp(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.546, i64 0, i64 0), i8* noundef %call, i64 noundef 14) #14
  %cmp111 = icmp eq i32 %call110, 0
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.then109
  tail call void @SSL_set_verify(%struct.ssl_st* noundef %call20, i32 noundef 5, i32 (i32, %struct.x509_store_ctx_st*)* noundef null) #12
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.then109
  %call115 = tail call i32 @SSL_renegotiate(%struct.ssl_st* noundef %call20) #12
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call116 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.547, i64 0, i64 0), i32 noundef %call115) #12
  %call117 = tail call i32 @SSL_do_handshake(%struct.ssl_st* noundef %call20) #12
  %cmp118 = icmp slt i32 %call117, 1
  br i1 %cmp118, label %if.then120, label %do.body

if.then120:                                       ; preds = %if.end114
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call121 = tail call i32 @SSL_get_error(%struct.ssl_st* noundef %call20, i32 noundef %call117) #12
  %call122 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.548, i64 0, i64 0), i32 noundef %call121) #12
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %18) #12
  br label %err

do.body:                                          ; preds = %if.end114
  %arrayidx = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i64 0, i32 0, i64 0
  %19 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %arrayidx) #13, !srcloc !43
  %rem = srem i32 %s, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl nuw i64 1, %sh_prom
  %div = sdiv i32 %s, 64
  %idxprom = sext i32 %div to i64
  %arrayidx126 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i64 0, i32 0, i64 %idxprom
  %20 = load i64, i64* %arrayidx126, align 8, !tbaa !24
  %or = or i64 %20, %shl
  store i64 %or, i64* %arrayidx126, align 8, !tbaa !24
  %call127 = call i32 @select(i32 noundef %add, %struct.fd_set* noundef nonnull %readfds, %struct.fd_set* noundef null, %struct.fd_set* noundef null, %struct.timeval* noundef null) #12
  %cmp128 = icmp slt i32 %call127, 1
  br i1 %cmp128, label %if.then140, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %do.body
  %21 = load i64, i64* %arrayidx126, align 8, !tbaa !24
  %and = and i64 %21, %shl
  %cmp138.not = icmp eq i64 %and, 0
  br i1 %cmp138.not, label %if.then140, label %if.end142

if.then140:                                       ; preds = %lor.lhs.false130, %do.body
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call141 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.549, i64 0, i64 0)) #12
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %23) #12
  br label %err

if.end142:                                        ; preds = %lor.lhs.false130
  %call143 = call i32 @BIO_gets(%struct.bio_st* noundef %call2, i8* noundef %call, i32 noundef 16383) #12
  br label %if.end144

if.end144:                                        ; preds = %land.lhs.true98, %if.end142, %land.lhs.true105
  %call145 = call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.550, i64 0, i64 0)) #12
  %call146 = call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.551, i64 0, i64 0)) #12
  %call147 = call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.552, i64 0, i64 0)) #12
  %call148 = call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.453, i64 0, i64 0)) #12
  %24 = load i32, i32* @local_argc, align 4, !tbaa !7
  %cmp150729 = icmp sgt i32 %24, 0
  br i1 %cmp150729, label %for.body, label %for.end166

for.body:                                         ; preds = %if.end144, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end ], [ 0, %if.end144 ]
  %25 = load i8**, i8*** @local_argv, align 8, !tbaa !3
  %arrayidx153 = getelementptr inbounds i8*, i8** %25, i64 %indvars.iv
  %26 = load i8*, i8** %arrayidx153, align 8, !tbaa !3
  %27 = load i8, i8* %26, align 1, !tbaa !19
  %tobool155.not727 = icmp eq i8 %27, 0
  br i1 %tobool155.not727, label %for.end, label %for.body156

for.body156:                                      ; preds = %for.body, %for.inc
  %28 = phi i8 [ %29, %for.inc ], [ %27, %for.body ]
  %myp.0728 = phi i8* [ %incdec.ptr, %for.inc ], [ %26, %for.body ]
  %conv157 = sext i8 %28 to i32
  switch i32 %conv157, label %sw.default [
    i32 60, label %sw.bb
    i32 62, label %sw.bb159
    i32 38, label %sw.bb161
  ]

sw.bb:                                            ; preds = %for.body156
  %call158 = call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.553, i64 0, i64 0)) #12
  br label %for.inc

sw.bb159:                                         ; preds = %for.body156
  %call160 = call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.554, i64 0, i64 0)) #12
  br label %for.inc

sw.bb161:                                         ; preds = %for.body156
  %call162 = call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.555, i64 0, i64 0)) #12
  br label %for.inc

sw.default:                                       ; preds = %for.body156
  %call163 = call i32 @BIO_write(%struct.bio_st* noundef %call2, i8* noundef nonnull %myp.0728, i32 noundef 1) #12
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %sw.bb159, %sw.bb161, %sw.default
  %incdec.ptr = getelementptr inbounds i8, i8* %myp.0728, i64 1
  %29 = load i8, i8* %incdec.ptr, align 1, !tbaa !19
  %tobool155.not = icmp eq i8 %29, 0
  br i1 %tobool155.not, label %for.end, label %for.body156, !llvm.loop !44

for.end:                                          ; preds = %for.inc, %for.body
  %call164 = call i32 @BIO_write(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.556, i64 0, i64 0), i32 noundef 1) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %30 = load i32, i32* @local_argc, align 4, !tbaa !7
  %31 = sext i32 %30 to i64
  %cmp150 = icmp slt i64 %indvars.iv.next, %31
  br i1 %cmp150, label %for.body, label %for.end166, !llvm.loop !45

for.end166:                                       ; preds = %for.end, %if.end144
  %call167 = call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.453, i64 0, i64 0)) #12
  %call168 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %call20, i32 noundef 76, i64 noundef 0, i8* noundef null) #12
  %tobool169.not = icmp eq i64 %call168, 0
  %cond170 = select i1 %tobool169.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.525, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.524, i64 0, i64 0)
  %call171 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.523, i64 0, i64 0), i8* noundef %cond170) #12
  %call172 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.557, i64 0, i64 0)) #12
  %call173 = call %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef %call20) #12
  %call174 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %call173) #15
  %call175 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call174) #12
  %cmp177731 = icmp sgt i32 %call175, 0
  br i1 %cmp177731, label %for.body179, label %for.end198

for.body179:                                      ; preds = %for.end166, %for.inc196
  %i.1732 = phi i32 [ %add185, %for.inc196 ], [ 0, %for.end166 ]
  %call181 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call174, i32 noundef %i.1732) #12
  %32 = bitcast i8* %call181 to %struct.ssl_cipher_st*
  %call182 = call i8* @SSL_CIPHER_get_version(%struct.ssl_cipher_st* noundef %32) #12
  %call183 = call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %32) #12
  %call184 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.558, i64 0, i64 0), i8* noundef %call182, i8* noundef %call183) #12
  %add185 = add nuw nsw i32 %i.1732, 1
  %rem186 = and i32 %add185, 1
  %cmp187 = icmp ne i32 %rem186, 0
  %cmp191.not = icmp eq i32 %add185, %call175
  %or.cond701 = select i1 %cmp187, i1 true, i1 %cmp191.not
  br i1 %or.cond701, label %for.inc196, label %if.then193

if.then193:                                       ; preds = %for.body179
  %call194 = call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.453, i64 0, i64 0)) #12
  br label %for.inc196

for.inc196:                                       ; preds = %for.body179, %if.then193
  %exitcond.not = icmp eq i32 %add185, %call175
  br i1 %exitcond.not, label %for.end198, label %for.body179, !llvm.loop !46

for.end198:                                       ; preds = %for.inc196, %for.end166
  %call199 = call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.453, i64 0, i64 0)) #12
  %call200 = call i8* @SSL_get_shared_ciphers(%struct.ssl_st* noundef %call20, i8* noundef %call, i32 noundef 16384) #12
  %cmp201.not = icmp eq i8* %call200, null
  br i1 %cmp201.not, label %if.end222, label %if.then203

if.then203:                                       ; preds = %for.end198
  %call204 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.559, i64 0, i64 0)) #12
  br label %while.cond

while.cond:                                       ; preds = %if.end219, %if.then203
  %p.0 = phi i8* [ %call200, %if.then203 ], [ %incdec.ptr220, %if.end219 ]
  %j.0 = phi i32 [ 0, %if.then203 ], [ %j.1, %if.end219 ]
  %i.2 = phi i32 [ 0, %if.then203 ], [ %i.3, %if.end219 ]
  %33 = load i8, i8* %p.0, align 1, !tbaa !19
  switch i8 %33, label %if.else216 [
    i8 0, label %while.end
    i8 58, label %if.then209
  ]

if.then209:                                       ; preds = %while.cond
  %sub = sub nsw i32 26, %j.0
  %call210 = call i32 @BIO_write(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.544, i64 0, i64 0), i32 noundef %sub) #12
  %inc211 = add nsw i32 %i.2, 1
  %rem212 = srem i32 %inc211, 3
  %tobool213.not = icmp eq i32 %rem212, 0
  %cond214 = select i1 %tobool213.not, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.453, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.556, i64 0, i64 0)
  %call215 = call i32 @BIO_write(%struct.bio_st* noundef %call2, i8* noundef %cond214, i32 noundef 1) #12
  br label %if.end219

if.else216:                                       ; preds = %while.cond
  %call217 = call i32 @BIO_write(%struct.bio_st* noundef %call2, i8* noundef nonnull %p.0, i32 noundef 1) #12
  %inc218 = add nsw i32 %j.0, 1
  br label %if.end219

if.end219:                                        ; preds = %if.else216, %if.then209
  %j.1 = phi i32 [ 0, %if.then209 ], [ %inc218, %if.else216 ]
  %i.3 = phi i32 [ %inc211, %if.then209 ], [ %i.2, %if.else216 ]
  %incdec.ptr220 = getelementptr inbounds i8, i8* %p.0, i64 1
  br label %while.cond, !llvm.loop !47

while.end:                                        ; preds = %while.cond
  %call221 = call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.453, i64 0, i64 0)) #12
  br label %if.end222

if.end222:                                        ; preds = %while.end, %for.end198
  %call223 = call i32 @ssl_print_sigalgs(%struct.bio_st* noundef %call2, %struct.ssl_st* noundef %call20) #12
  %call224 = call i32 @ssl_print_groups(%struct.bio_st* noundef %call2, %struct.ssl_st* noundef %call20, i32 noundef 0) #12
  call void @print_ca_names(%struct.bio_st* noundef %call2, %struct.ssl_st* noundef %call20) #12
  %call225 = call i32 @SSL_session_reused(%struct.ssl_st* noundef %call20) #12
  %tobool226.not = icmp eq i32 %call225, 0
  %cond227 = select i1 %tobool226.not, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.561, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.560, i64 0, i64 0)
  %call228 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call2, i8* noundef %cond227) #12
  %call229 = call %struct.ssl_cipher_st* @SSL_get_current_cipher(%struct.ssl_st* noundef %call20) #12
  %call230 = call i8* @SSL_CIPHER_get_version(%struct.ssl_cipher_st* noundef %call229) #12
  %call231 = call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %call229) #12
  %call232 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.562, i64 0, i64 0), i8* noundef %call230, i8* noundef %call231) #12
  %call233 = call %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* noundef %call20) #12
  %call234 = call i32 @SSL_SESSION_print(%struct.bio_st* noundef %call2, %struct.ssl_session_st* noundef %call233) #12
  %call235 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.563, i64 0, i64 0)) #12
  %call236 = call %struct.ssl_ctx_st* @SSL_get_SSL_CTX(%struct.ssl_st* noundef %call20) #12
  call fastcc void @print_stats(%struct.bio_st* noundef %call2, %struct.ssl_ctx_st* noundef %call236) #15
  %call237 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.563, i64 0, i64 0)) #12
  %call238 = call %struct.x509_st* @SSL_get0_peer_certificate(%struct.ssl_st* noundef %call20) #12
  %cmp239.not = icmp eq %struct.x509_st* %call238, null
  br i1 %cmp239.not, label %if.else245, label %if.then241

if.then241:                                       ; preds = %if.end222
  %call242 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.516, i64 0, i64 0)) #12
  %call243 = call i32 @X509_print(%struct.bio_st* noundef %call2, %struct.x509_st* noundef nonnull %call238) #12
  %call244 = call i32 @PEM_write_bio_X509(%struct.bio_st* noundef %call2, %struct.x509_st* noundef nonnull %call238) #12
  br label %cleanup

if.else245:                                       ; preds = %if.end222
  %call246 = call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.564, i64 0, i64 0)) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then241, %if.else245
  %call248 = call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.565, i64 0, i64 0)) #12
  br label %for.cond451.preheader

if.else251:                                       ; preds = %if.end88
  %34 = and i32 %15, -2
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %land.lhs.true257, label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.else251, %land.lhs.true257, %land.lhs.true91, %if.then80, %if.end82
  br label %for.cond

land.lhs.true257:                                 ; preds = %land.lhs.true98, %if.else251
  %call258 = tail call i32 @strncmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.566, i64 0, i64 0), i8* noundef %call, i64 noundef 5) #14
  %cmp259 = icmp eq i32 %call258, 0
  br i1 %cmp259, label %if.then261, label %for.cond.backedge

if.then261:                                       ; preds = %land.lhs.true257
  %arrayidx263 = getelementptr inbounds i8, i8* %call, i64 5
  br label %for.cond264

for.cond264:                                      ; preds = %for.inc319, %if.then261
  %dot.0 = phi i32 [ 1, %if.then261 ], [ %dot.2, %for.inc319 ]
  %e.0 = phi i8* [ %arrayidx263, %if.then261 ], [ %incdec.ptr320, %for.inc319 ]
  %36 = load i8, i8* %e.0, align 1, !tbaa !19
  switch i8 %36, label %if.end280 [
    i8 58, label %if.end334.thread
    i8 0, label %if.then331
    i8 32, label %if.end334
  ]

if.end334.thread:                                 ; preds = %for.cond264
  store i8 0, i8* %e.0, align 1, !tbaa !19
  br label %if.then336

if.end280:                                        ; preds = %for.cond264
  switch i32 %dot.0, label %sw.epilog303 [
    i32 1, label %sw.bb281
    i32 2, label %sw.bb287
    i32 3, label %sw.bb293
  ]

sw.bb281:                                         ; preds = %if.end280
  %cmp284 = icmp eq i8 %36, 46
  br i1 %cmp284, label %for.inc319, label %if.then306

sw.bb287:                                         ; preds = %if.end280
  %cmp290 = icmp eq i8 %36, 46
  br i1 %cmp290, label %for.inc319, label %if.then306

sw.bb293:                                         ; preds = %if.end280
  %cmp296 = icmp eq i8 %36, 47
  %cmp300 = icmp eq i8 %36, 92
  %spec.select = or i1 %cmp296, %cmp300
  %cond302 = sext i1 %spec.select to i32
  br label %sw.epilog303

sw.epilog303:                                     ; preds = %if.end280, %sw.bb293
  %dot.1 = phi i32 [ %dot.0, %if.end280 ], [ %cond302, %sw.bb293 ]
  %cmp304 = icmp eq i32 %dot.1, 0
  br i1 %cmp304, label %if.then306, label %for.inc319

if.then306:                                       ; preds = %sw.bb281, %sw.bb287, %sw.epilog303
  %cmp309 = icmp eq i8 %36, 47
  %cmp314 = icmp eq i8 %36, 92
  %spec.select703 = or i1 %cmp309, %cmp314
  %cond317 = zext i1 %spec.select703 to i32
  br label %for.inc319

for.inc319:                                       ; preds = %sw.bb281, %sw.bb287, %sw.epilog303, %if.then306
  %dot.2 = phi i32 [ %cond317, %if.then306 ], [ %dot.1, %sw.epilog303 ], [ 3, %sw.bb287 ], [ 2, %sw.bb281 ]
  %incdec.ptr320 = getelementptr inbounds i8, i8* %e.0, i64 1
  br label %for.cond264, !llvm.loop !48

if.then331:                                       ; preds = %for.cond264
  %call332 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.567, i64 0, i64 0)) #12
  %call333 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.568, i64 0, i64 0), i8* noundef nonnull %arrayidx263) #12
  br label %for.cond451.preheader

if.end334:                                        ; preds = %for.cond264
  store i8 0, i8* %e.0, align 1, !tbaa !19
  switch i32 %dot.0, label %if.end339 [
    i32 -1, label %if.then336
    i32 3, label %if.then336
  ]

if.then336:                                       ; preds = %if.end334.thread, %if.end334, %if.end334
  %call337 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.567, i64 0, i64 0)) #12
  %call338 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.569, i64 0, i64 0), i8* noundef nonnull %arrayidx263) #12
  br label %for.cond451.preheader

if.end339:                                        ; preds = %if.end334
  %37 = load i8, i8* %arrayidx263, align 1, !tbaa !19
  switch i8 %37, label %if.end350 [
    i8 47, label %if.then347
    i8 92, label %if.then347
  ]

if.then347:                                       ; preds = %if.end339, %if.end339
  %call348 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.567, i64 0, i64 0)) #12
  %call349 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.570, i64 0, i64 0), i8* noundef nonnull %arrayidx263) #12
  br label %for.cond451.preheader

if.end350:                                        ; preds = %if.end339
  %call351 = tail call i32 @app_isdir(i8* noundef nonnull %arrayidx263) #12
  %cmp352 = icmp sgt i32 %call351, 0
  br i1 %cmp352, label %if.then354, label %if.end357

if.then354:                                       ; preds = %if.end350
  %call355 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.567, i64 0, i64 0)) #12
  %call356 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.571, i64 0, i64 0), i8* noundef nonnull %arrayidx263) #12
  br label %for.cond451.preheader

if.end357:                                        ; preds = %if.end350
  %.b700 = load i1, i1* @http_server_binmode, align 1
  %cond361 = select i1 %.b700, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.572, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.446, i64 0, i64 0)
  %call362 = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %arrayidx263, i8* noundef %cond361) #12
  %cmp363 = icmp eq %struct.bio_st* %call362, null
  br i1 %cmp363, label %if.then365, label %if.end368

if.then365:                                       ; preds = %if.end357
  %call366 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.567, i64 0, i64 0)) #12
  %call367 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.573, i64 0, i64 0), i8* noundef nonnull %arrayidx263, i8* noundef %cond361) #12
  tail call void @ERR_print_errors(%struct.bio_st* noundef %call2) #12
  br label %for.cond451.preheader

if.end368:                                        ; preds = %if.end357
  %.b696 = load i1, i1* @s_quiet, align 4
  br i1 %.b696, label %if.end372, label %if.then370

if.then370:                                       ; preds = %if.end368
  %38 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call371 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %38, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.574, i64 0, i64 0), i8* noundef nonnull %arrayidx263) #12
  br label %if.end372

if.end372:                                        ; preds = %if.then370, %if.end368
  %39 = load i32, i32* @www, align 4, !tbaa !7
  %cmp373 = icmp eq i32 %39, 2
  br i1 %cmp373, label %if.then375, label %if.end412

if.then375:                                       ; preds = %if.end372
  %call376 = tail call i64 @strlen(i8* noundef nonnull %arrayidx263) #14
  %conv377 = trunc i64 %call376 to i32
  %cmp378 = icmp sgt i32 %conv377, 5
  br i1 %cmp378, label %land.lhs.true380, label %lor.lhs.false387

land.lhs.true380:                                 ; preds = %if.then375
  %sub381 = add i64 %call376, 4294967291
  %40 = and i64 %sub381, 4294967295
  %arrayidx383 = getelementptr inbounds i8, i8* %arrayidx263, i64 %40
  %call384 = tail call i32 @strcmp(i8* noundef nonnull %arrayidx383, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.575, i64 0, i64 0)) #14
  %cmp385 = icmp eq i32 %call384, 0
  br i1 %cmp385, label %if.end412.sink.split, label %land.lhs.true390

lor.lhs.false387:                                 ; preds = %if.then375
  %cmp388 = icmp eq i32 %conv377, 5
  br i1 %cmp388, label %land.lhs.true390, label %if.else409

land.lhs.true390:                                 ; preds = %land.lhs.true380, %lor.lhs.false387
  %sub391 = add i64 %call376, 4294967292
  %41 = and i64 %sub391, 4294967295
  %arrayidx393 = getelementptr inbounds i8, i8* %arrayidx263, i64 %41
  %call394 = tail call i32 @strcmp(i8* noundef nonnull %arrayidx393, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.576, i64 0, i64 0)) #14
  %cmp395 = icmp eq i32 %call394, 0
  br i1 %cmp395, label %if.end412.sink.split, label %land.lhs.true400

land.lhs.true400:                                 ; preds = %land.lhs.true390
  %call404 = tail call i32 @strcmp(i8* noundef nonnull %arrayidx393, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.577, i64 0, i64 0)) #14
  %cmp405 = icmp eq i32 %call404, 0
  br i1 %cmp405, label %if.end412.sink.split, label %if.else409

if.else409:                                       ; preds = %lor.lhs.false387, %land.lhs.true400
  br label %if.end412.sink.split

if.end412.sink.split:                             ; preds = %land.lhs.true380, %land.lhs.true390, %land.lhs.true400, %if.else409
  %.sink = phi i8* [ getelementptr inbounds ([46 x i8], [46 x i8]* @.str.567, i64 0, i64 0), %if.else409 ], [ getelementptr inbounds ([45 x i8], [45 x i8]* @.str.550, i64 0, i64 0), %land.lhs.true400 ], [ getelementptr inbounds ([45 x i8], [45 x i8]* @.str.550, i64 0, i64 0), %land.lhs.true390 ], [ getelementptr inbounds ([45 x i8], [45 x i8]* @.str.550, i64 0, i64 0), %land.lhs.true380 ]
  %call408 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call2, i8* noundef %.sink) #12
  br label %if.end412

if.end412:                                        ; preds = %if.end412.sink.split, %if.end372
  %call414735 = tail call i32 @BIO_read(%struct.bio_st* noundef nonnull %call362, i8* noundef nonnull %call, i32 noundef 16384) #12
  %cmp415736 = icmp slt i32 %call414735, 1
  br i1 %cmp415736, label %write_error, label %for.body422.preheader

for.cond413.loopexit:                             ; preds = %if.end441
  %call414 = tail call i32 @BIO_read(%struct.bio_st* noundef nonnull %call362, i8* noundef %call, i32 noundef 16384) #12
  %cmp415 = icmp slt i32 %call414, 1
  br i1 %cmp415, label %write_error, label %for.body422.preheader

for.body422.preheader:                            ; preds = %if.end412, %for.cond413.loopexit
  %call414737 = phi i32 [ %call414, %for.cond413.loopexit ], [ %call414735, %if.end412 ]
  br label %for.body422

for.body422:                                      ; preds = %for.body422.preheader, %if.end441
  %j.2734 = phi i32 [ %j.3, %if.end441 ], [ 0, %for.body422.preheader ]
  %idxprom423 = sext i32 %j.2734 to i64
  %arrayidx424 = getelementptr inbounds i8, i8* %call, i64 %idxprom423
  %sub425 = sub nsw i32 %call414737, %j.2734
  %call426 = tail call i32 @BIO_write(%struct.bio_st* noundef %call2, i8* noundef %arrayidx424, i32 noundef %sub425) #12
  %cmp427 = icmp slt i32 %call426, 1
  br i1 %cmp427, label %if.then429, label %if.else439

if.then429:                                       ; preds = %for.body422
  %call430 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call2, i32 noundef 8) #12
  %tobool431.not = icmp eq i32 %call430, 0
  br i1 %tobool431.not, label %land.lhs.true432, label %if.else436

land.lhs.true432:                                 ; preds = %if.then429
  %call433 = tail call i32 @SSL_waiting_for_async(%struct.ssl_st* noundef %call20) #12
  %tobool434.not = icmp eq i32 %call433, 0
  br i1 %tobool434.not, label %write_error, label %if.else436

if.else436:                                       ; preds = %land.lhs.true432, %if.then429
  %42 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call437 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %42, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.578, i64 0, i64 0)) #12
  br label %if.end441

if.else439:                                       ; preds = %for.body422
  %add440 = add nsw i32 %call426, %j.2734
  br label %if.end441

if.end441:                                        ; preds = %if.else439, %if.else436
  %j.3 = phi i32 [ %j.2734, %if.else436 ], [ %add440, %if.else439 ]
  %cmp420 = icmp sgt i32 %call414737, %j.3
  br i1 %cmp420, label %for.body422, label %for.cond413.loopexit, !llvm.loop !49

write_error:                                      ; preds = %for.cond413.loopexit, %land.lhs.true432, %if.end412
  %call444 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call362) #12
  br label %for.cond451.preheader

for.cond451.preheader:                            ; preds = %cleanup, %if.then331, %if.then336, %if.then347, %if.then354, %if.then365, %write_error
  br label %for.cond451

for.cond451:                                      ; preds = %for.cond451.preheader, %if.then456
  %call452 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call2, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  %conv453 = trunc i64 %call452 to i32
  %cmp454 = icmp slt i32 %conv453, 1
  br i1 %cmp454, label %if.then456, label %end

if.then456:                                       ; preds = %for.cond451
  %call457 = call i32 @BIO_test_flags(%struct.bio_st* noundef %call2, i32 noundef 8) #12
  %tobool458.not = icmp eq i32 %call457, 0
  br i1 %tobool458.not, label %end, label %for.cond451

end:                                              ; preds = %if.else83, %if.then456, %for.cond451
  call void @do_ssl_shutdown(%struct.ssl_st* noundef %call20) #12
  br label %err

err:                                              ; preds = %if.then140, %if.then120, %if.then68, %if.then70, %if.end19, %if.end15, %entry, %end, %if.then33
  %ssl_bio.0 = phi %struct.bio_st* [ %call4, %entry ], [ %call4, %if.end19 ], [ null, %if.then68 ], [ null, %if.then70 ], [ null, %end ], [ %call4, %if.then33 ], [ %call4, %if.end15 ], [ null, %if.then120 ], [ null, %if.then140 ]
  call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 3390) #12
  %call464 = call i32 @BIO_free(%struct.bio_st* noundef %ssl_bio.0) #12
  call void @BIO_free_all(%struct.bio_st* noundef %call2) #12
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #13
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sv_body(i32 noundef %s, i32 noundef %stype, i32 noundef %prot, i8* noundef %context) #0 {
entry:
  %readfds = alloca %struct.fd_set, align 8
  %timeout = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %timeout to %struct.timeval*
  %readbytes = alloca i64, align 8
  %0 = bitcast %struct.fd_set* %readfds to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #13
  %1 = bitcast <2 x i64>* %timeout to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #13
  %cmp = icmp eq i32 %stype, 2
  %call = tail call i8* @app_malloc(i64 noundef 16384, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.491, i64 0, i64 0)) #12
  %.b696 = load i1, i1* @s_nbio, align 4
  br i1 %.b696, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @BIO_socket_nbio(i32 noundef %s, i32 noundef 1) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #12
  br label %if.end8

if.else:                                          ; preds = %if.then
  %.b699 = load i1, i1* @s_quiet, align 4
  br i1 %.b699, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.else
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.492, i64 0, i64 0)) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.then5, %if.else, %entry
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call9 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %4) #12
  %cmp10 = icmp eq %struct.ssl_st* %call9, null
  br i1 %cmp10, label %cleanup513, label %if.end13

if.end13:                                         ; preds = %if.end8
  %.b704 = load i1, i1* @s_tlsextdebug, align 4
  br i1 %.b704, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end13
  %call16 = tail call i64 @SSL_callback_ctrl(%struct.ssl_st* noundef nonnull %call9, i32 noundef 56, void ()* noundef bitcast (void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)* @tlsext_cb to void ()*)) #12
  %5 = load i8*, i8** bitcast (%struct.bio_st** @bio_s_out to i8**), align 8, !tbaa !3
  %call17 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %call9, i32 noundef 57, i64 noundef 0, i8* noundef %5) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13
  %cmp19.not = icmp eq i8* %context, null
  br i1 %cmp19.not, label %if.end27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end18
  %call21 = tail call i64 @strlen(i8* noundef nonnull %context) #14
  %conv22 = trunc i64 %call21 to i32
  %call23 = tail call i32 @SSL_set_session_id_context(%struct.ssl_st* noundef nonnull %call9, i8* noundef nonnull %context, i32 noundef %conv22) #12
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end27

if.then25:                                        ; preds = %land.lhs.true
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call26 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.493, i64 0, i64 0)) #12
  br label %if.then509

if.end27:                                         ; preds = %land.lhs.true, %if.end18
  %call28 = tail call i32 @SSL_clear(%struct.ssl_st* noundef nonnull %call9) #12
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end27
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call31 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.494, i64 0, i64 0)) #12
  br label %if.then509

if.end32:                                         ; preds = %if.end27
  br i1 %cmp, label %if.then34, label %if.else64

if.then34:                                        ; preds = %if.end32
  %call35 = tail call %struct.bio_st* @BIO_new_dgram(i32 noundef %s, i32 noundef 0) #12
  %.b706 = load i1, i1* @enable_timeouts, align 4
  br i1 %.b706, label %if.then37, label %if.end42

if.then37:                                        ; preds = %if.then34
  store <2 x i64> <i64 0, i64 250000>, <2 x i64>* %timeout, align 16, !tbaa !24
  %call38 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call35, i32 noundef 33, i64 noundef 0, i8* noundef nonnull %1) #12
  store <2 x i64> <i64 0, i64 250000>, <2 x i64>* %timeout, align 16, !tbaa !24
  %call41 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call35, i32 noundef 35, i64 noundef 0, i8* noundef nonnull %1) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.then34
  %8 = load i64, i64* @socket_mtu, align 8, !tbaa !24
  %tobool43.not = icmp eq i64 %8, 0
  br i1 %tobool43.not, label %if.else60, label %if.then44

if.then44:                                        ; preds = %if.end42
  %call45 = call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %call9, i32 noundef 121, i64 noundef 0, i8* noundef null) #12
  %cmp46 = icmp slt i64 %8, %call45
  br i1 %cmp46, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.then44
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call49 = call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %call9, i32 noundef 121, i64 noundef 0, i8* noundef null) #12
  %call50 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.495, i64 0, i64 0), i64 noundef %call49) #12
  %call51 = call i32 @BIO_free(%struct.bio_st* noundef %call35) #12
  br label %if.then509

if.end52:                                         ; preds = %if.then44
  %call53 = call i64 @SSL_set_options(%struct.ssl_st* noundef nonnull %call9, i64 noundef 4096) #12
  %10 = load i64, i64* @socket_mtu, align 8, !tbaa !24
  %call54 = call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %call9, i32 noundef 120, i64 noundef %10, i8* noundef null) #12
  %tobool55.not = icmp eq i64 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %if.end62

if.then56:                                        ; preds = %if.end52
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call57 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.496, i64 0, i64 0)) #12
  %call58 = call i32 @BIO_free(%struct.bio_st* noundef %call35) #12
  br label %if.then509

if.else60:                                        ; preds = %if.end42
  %call61 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call35, i32 noundef 39, i64 noundef 0, i8* noundef null) #12
  br label %if.end62

if.end62:                                         ; preds = %if.end52, %if.else60
  %call63 = call i64 @SSL_set_options(%struct.ssl_st* noundef nonnull %call9, i64 noundef 8192) #12
  br label %if.end66

if.else64:                                        ; preds = %if.end32
  %call65 = tail call %struct.bio_st* @BIO_new_socket(i32 noundef %s, i32 noundef 0) #12
  br label %if.end66

if.end66:                                         ; preds = %if.else64, %if.end62
  %sbio.0 = phi %struct.bio_st* [ %call35, %if.end62 ], [ %call65, %if.else64 ]
  %cmp67 = icmp eq %struct.bio_st* %sbio.0, null
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end66
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call70 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.497, i64 0, i64 0)) #12
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %13) #12
  br label %if.then509

if.end71:                                         ; preds = %if.end66
  %.b = load i1, i1* @s_nbio_test, align 4
  br i1 %.b, label %if.then73, label %if.end77

if.then73:                                        ; preds = %if.end71
  %call74 = call %struct.bio_method_st* @BIO_f_nbio_test() #12
  %call75 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call74) #12
  %call76 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef %call75, %struct.bio_st* noundef nonnull %sbio.0) #12
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.end71
  %sbio.1 = phi %struct.bio_st* [ %call76, %if.then73 ], [ %sbio.0, %if.end71 ]
  call void @SSL_set_bio(%struct.ssl_st* noundef nonnull %call9, %struct.bio_st* noundef %sbio.1, %struct.bio_st* noundef %sbio.1) #12
  call void @SSL_set_accept_state(%struct.ssl_st* noundef nonnull %call9) #12
  %.b697 = load i1, i1* @s_debug, align 4
  br i1 %.b697, label %if.then79, label %if.end82

if.then79:                                        ; preds = %if.end77
  %call80 = call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef nonnull %call9) #12
  call void @BIO_set_callback_ex(%struct.bio_st* noundef %call80, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef nonnull @bio_dump_callback) #12
  %call81 = call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef nonnull %call9) #12
  %14 = load i8*, i8** bitcast (%struct.bio_st** @bio_s_out to i8**), align 8, !tbaa !3
  call void @BIO_set_callback_arg(%struct.bio_st* noundef %call81, i8* noundef %14) #12
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end77
  %15 = load i32, i32* @s_msg, align 4, !tbaa !7
  switch i32 %15, label %if.else88 [
    i32 0, label %if.end92
    i32 2, label %if.end89
  ]

if.else88:                                        ; preds = %if.end82
  br label %if.end89

if.end89:                                         ; preds = %if.end82, %if.else88
  %msg_cb.sink = phi void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* [ @msg_cb, %if.else88 ], [ @SSL_trace, %if.end82 ]
  call void @SSL_set_msg_callback(%struct.ssl_st* noundef nonnull %call9, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* noundef nonnull %msg_cb.sink) #12
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_s_msg, align 8, !tbaa !3
  %tobool90.not = icmp eq %struct.bio_st* %16, null
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8
  %cond = select i1 %tobool90.not, %struct.bio_st* %17, %struct.bio_st* %16
  %18 = bitcast %struct.bio_st* %cond to i8*
  %call91 = call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %call9, i32 noundef 16, i64 noundef 0, i8* noundef %18) #12
  br label %if.end92

if.end92:                                         ; preds = %if.end82, %if.end89
  %.b703 = load i1, i1* @s_tlsextdebug, align 4
  br i1 %.b703, label %if.then94, label %if.end97

if.then94:                                        ; preds = %if.end92
  %call95 = call i64 @SSL_callback_ctrl(%struct.ssl_st* noundef nonnull %call9, i32 noundef 56, void ()* noundef bitcast (void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)* @tlsext_cb to void ()*)) #12
  %19 = load i8*, i8** bitcast (%struct.bio_st** @bio_s_out to i8**), align 8, !tbaa !3
  %call96 = call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %call9, i32 noundef 57, i64 noundef 0, i8* noundef %19) #12
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %if.end92
  %.b707 = load i1, i1* @early_data, align 4
  br i1 %.b707, label %if.then99, label %if.end140

if.then99:                                        ; preds = %if.end97
  %20 = bitcast i64* %readbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #13
  br label %for.cond.preheader.outer

for.cond.preheader.outer:                         ; preds = %if.end120.thread, %if.then99
  %tobool112.not = phi i1 [ true, %if.end120.thread ], [ false, %if.then99 ]
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.outer, %if.end120
  %call102735 = call i32 @SSL_read_early_data(%struct.ssl_st* noundef %call9, i8* noundef %call, i64 noundef 16384, i64* noundef nonnull %readbytes) #12
  %cmp103.not736 = icmp eq i32 %call102735, 0
  br i1 %cmp103.not736, label %if.end106, label %for.end

if.end106:                                        ; preds = %for.cond.preheader, %sw.bb
  %call107 = call i32 @SSL_get_error(%struct.ssl_st* noundef %call9, i32 noundef 0) #12
  switch i32 %call107, label %cleanup [
    i32 3, label %sw.bb
    i32 9, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end106, %if.end106, %if.end106
  %call102 = call i32 @SSL_read_early_data(%struct.ssl_st* noundef %call9, i8* noundef %call, i64 noundef 16384, i64* noundef nonnull %readbytes) #12
  %cmp103.not = icmp eq i32 %call102, 0
  br i1 %cmp103.not, label %if.end106, label %for.end

for.end:                                          ; preds = %sw.bb, %for.cond.preheader
  %call102.lcssa = phi i32 [ %call102735, %for.cond.preheader ], [ %call102, %sw.bb ]
  %21 = load i64, i64* %readbytes, align 8, !tbaa !24
  %cmp109.not = icmp eq i64 %21, 0
  br i1 %cmp109.not, label %if.end120, label %if.then111

if.then111:                                       ; preds = %for.end
  br i1 %tobool112.not, label %if.end120.thread, label %if.then113

if.then113:                                       ; preds = %if.then111
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call114 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.499, i64 0, i64 0)) #12
  %.pre = load i64, i64* %readbytes, align 8, !tbaa !24
  br label %if.end120.thread

if.end120:                                        ; preds = %for.end
  %cmp100.not = icmp eq i32 %call102.lcssa, 2
  br i1 %cmp100.not, label %while.end, label %for.cond.preheader, !llvm.loop !50

if.end120.thread:                                 ; preds = %if.then111, %if.then113
  %23 = phi i64 [ %.pre, %if.then113 ], [ %21, %if.then111 ]
  %conv116 = trunc i64 %23 to i32
  %call117 = call i32 @raw_write_stdout(i8* noundef %call, i32 noundef %conv116) #12
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call118 = call i64 @BIO_ctrl(%struct.bio_st* noundef %24, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  %cmp100.not762 = icmp eq i32 %call102.lcssa, 2
  br i1 %cmp100.not762, label %if.else131, label %for.cond.preheader.outer, !llvm.loop !50

while.end:                                        ; preds = %if.end120
  br i1 %tobool112.not, label %if.else131, label %if.then122

if.then122:                                       ; preds = %while.end
  %call123 = call i32 @SSL_get_early_data_status(%struct.ssl_st* noundef %call9) #12
  %cmp124 = icmp eq i32 %call123, 0
  %25 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  br i1 %cmp124, label %if.then126, label %if.else128

if.then126:                                       ; preds = %if.then122
  %call127 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %25, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.500, i64 0, i64 0)) #12
  br label %if.end133

if.else128:                                       ; preds = %if.then122
  %call129 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %25, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.501, i64 0, i64 0)) #12
  br label %if.end133

if.else131:                                       ; preds = %if.end120.thread, %while.end
  %26 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call132 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %26, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.502, i64 0, i64 0)) #12
  br label %if.end133

if.end133:                                        ; preds = %if.then126, %if.else128, %if.else131
  %call134 = call i32 @SSL_is_init_finished(%struct.ssl_st* noundef %call9) #12
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %cleanup.thread, label %if.then136

if.then136:                                       ; preds = %if.end133
  call fastcc void @print_connection_info(%struct.ssl_st* noundef %call9) #15
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then136, %if.end133
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #13
  br label %if.end140

cleanup:                                          ; preds = %if.end106
  %27 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call108 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %27, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.498, i64 0, i64 0)) #12
  %28 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %28) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #13
  br label %if.then509

if.end140:                                        ; preds = %cleanup.thread, %if.end97
  %call141 = call i32 @fileno_stdin() #12
  %cmp142 = icmp sgt i32 %call141, %s
  br i1 %cmp142, label %if.then144, label %if.end148

if.then144:                                       ; preds = %if.end140
  %call145 = call i32 @fileno_stdin() #12
  br label %if.end148

if.end148:                                        ; preds = %if.end140, %if.then144
  %width.0.in = phi i32 [ %call145, %if.then144 ], [ %s, %if.end140 ]
  %width.0 = add nsw i32 %width.0.in, 1
  %arrayidx = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i64 0, i32 0, i64 0
  %rem162 = srem i32 %s, 64
  %sh_prom163 = zext i32 %rem162 to i64
  %shl164 = shl nuw i64 1, %sh_prom163
  %div166 = sdiv i32 %s, 64
  %idxprom167 = sext i32 %div166 to i64
  %arrayidx168 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i64 0, i32 0, i64 %idxprom167
  %arrayidx343 = getelementptr inbounds i8, i8* %call, i64 1
  br label %for.cond149

for.cond149:                                      ; preds = %for.cond149.backedge, %if.end148
  %call150 = call i32 @SSL_has_pending(%struct.ssl_st* noundef %call9) #12
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %lor.rhs, label %if.then446

lor.rhs:                                          ; preds = %for.cond149
  %.b702 = load i1, i1* @async, align 4
  br i1 %.b702, label %lor.end, label %do.body

lor.end:                                          ; preds = %lor.rhs
  %call153 = call i32 @SSL_waiting_for_async(%struct.ssl_st* noundef %call9) #12
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %do.body, label %if.then446

do.body:                                          ; preds = %lor.rhs, %lor.end
  %29 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %arrayidx) #13, !srcloc !51
  %call158 = call i32 @fileno_stdin() #12
  %rem = srem i32 %call158, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl nuw i64 1, %sh_prom
  %call160 = call i32 @fileno_stdin() #12
  %div = sdiv i32 %call160, 64
  %idxprom = sext i32 %div to i64
  %arrayidx161 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i64 0, i32 0, i64 %idxprom
  %30 = load i64, i64* %arrayidx161, align 8, !tbaa !24
  %or = or i64 %shl, %30
  store i64 %or, i64* %arrayidx161, align 8, !tbaa !24
  %31 = load i64, i64* %arrayidx168, align 8, !tbaa !24
  %or169 = or i64 %31, %shl164
  store i64 %or169, i64* %arrayidx168, align 8, !tbaa !24
  %call170 = call i32 @SSL_is_dtls(%struct.ssl_st* noundef %call9) #12
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.else176, label %land.lhs.true172

land.lhs.true172:                                 ; preds = %do.body
  %call173 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %call9, i32 noundef 73, i64 noundef 0, i8* noundef nonnull %1) #12
  %tobool174.not = icmp eq i64 %call173, 0
  br i1 %tobool174.not, label %if.else176, label %if.end177

if.else176:                                       ; preds = %land.lhs.true172, %do.body
  br label %if.end177

if.end177:                                        ; preds = %land.lhs.true172, %if.else176
  %timeoutp.0 = phi %struct.timeval* [ null, %if.else176 ], [ %tmpcast, %land.lhs.true172 ]
  %call178 = call i32 @select(i32 noundef %width.0, %struct.fd_set* noundef nonnull %readfds, %struct.fd_set* noundef null, %struct.fd_set* noundef null, %struct.timeval* noundef %timeoutp.0) #12
  %call179 = call i32 @SSL_is_dtls(%struct.ssl_st* noundef %call9) #12
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end187, label %land.lhs.true181

land.lhs.true181:                                 ; preds = %if.end177
  %call182 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %call9, i32 noundef 74, i64 noundef 0, i8* noundef null) #12
  %cmp183 = icmp sgt i64 %call182, 0
  br i1 %cmp183, label %if.then185, label %if.end187

if.then185:                                       ; preds = %land.lhs.true181
  %32 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call186 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %32, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.503, i64 0, i64 0)) #12
  br label %if.end187

if.end187:                                        ; preds = %if.then185, %land.lhs.true181, %if.end177
  %cmp188 = icmp slt i32 %call178, 1
  br i1 %cmp188, label %for.cond149.backedge, label %if.end191

if.end191:                                        ; preds = %if.end187
  %call193 = call i32 @fileno_stdin() #12
  %div194 = sdiv i32 %call193, 64
  %idxprom195 = sext i32 %div194 to i64
  %arrayidx196 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i64 0, i32 0, i64 %idxprom195
  %33 = load i64, i64* %arrayidx196, align 8, !tbaa !24
  %call197 = call i32 @fileno_stdin() #12
  %rem198 = srem i32 %call197, 64
  %sh_prom199 = zext i32 %rem198 to i64
  %shl200 = shl nuw i64 1, %sh_prom199
  %and = and i64 %shl200, %33
  %cmp201.not = icmp eq i64 %and, 0
  %34 = load i64, i64* %arrayidx168, align 8, !tbaa !24
  %and212 = and i64 %34, %shl164
  %cmp213.not.not = icmp eq i64 %and212, 0
  br i1 %cmp201.not, label %if.end217.thread, label %if.then219

if.end217.thread:                                 ; preds = %if.end191
  br i1 %cmp213.not.not, label %for.cond149.backedge, label %if.then446

if.then219:                                       ; preds = %if.end191
  %.b705 = load i1, i1* @s_crlf, align 4
  br i1 %.b705, label %if.then221, label %if.else258

if.then221:                                       ; preds = %if.then219
  %call222 = call i32 @raw_read_stdin(i8* noundef %call, i32 noundef 8192) #12
  %cmp224738 = icmp sgt i32 %call222, 0
  br i1 %cmp224738, label %for.body.preheader, label %if.end260

for.body.preheader:                               ; preds = %if.then221
  %wide.trip.count = zext i32 %call222 to i64
  %min.iters.check = icmp ult i32 %call222, 8
  br i1 %min.iters.check, label %for.body.preheader781, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288
  %35 = add nsw i64 %n.vec, -8
  %36 = lshr exact i64 %35, 3
  %37 = add nuw nsw i64 %36, 1
  %xtraiter = and i64 %37, 1
  %38 = icmp eq i64 %35, 0
  br i1 %38, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %37, 4611686018427387902
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph.new ], [ %57, %vector.body ]
  %vec.phi779 = phi <4 x i32> [ zeroinitializer, %vector.ph.new ], [ %58, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %39 = getelementptr inbounds i8, i8* %call, i64 %index
  %40 = bitcast i8* %39 to <4 x i8>*
  %wide.load = load <4 x i8>, <4 x i8>* %40, align 1, !tbaa !19
  %41 = getelementptr inbounds i8, i8* %39, i64 4
  %42 = bitcast i8* %41 to <4 x i8>*
  %wide.load780 = load <4 x i8>, <4 x i8>* %42, align 1, !tbaa !19
  %43 = icmp eq <4 x i8> %wide.load, <i8 10, i8 10, i8 10, i8 10>
  %44 = icmp eq <4 x i8> %wide.load780, <i8 10, i8 10, i8 10, i8 10>
  %45 = zext <4 x i1> %43 to <4 x i32>
  %46 = zext <4 x i1> %44 to <4 x i32>
  %47 = add <4 x i32> %vec.phi, %45
  %48 = add <4 x i32> %vec.phi779, %46
  %index.next = or i64 %index, 8
  %49 = getelementptr inbounds i8, i8* %call, i64 %index.next
  %50 = bitcast i8* %49 to <4 x i8>*
  %wide.load.1 = load <4 x i8>, <4 x i8>* %50, align 1, !tbaa !19
  %51 = getelementptr inbounds i8, i8* %49, i64 4
  %52 = bitcast i8* %51 to <4 x i8>*
  %wide.load780.1 = load <4 x i8>, <4 x i8>* %52, align 1, !tbaa !19
  %53 = icmp eq <4 x i8> %wide.load.1, <i8 10, i8 10, i8 10, i8 10>
  %54 = icmp eq <4 x i8> %wide.load780.1, <i8 10, i8 10, i8 10, i8 10>
  %55 = zext <4 x i1> %53 to <4 x i32>
  %56 = zext <4 x i1> %54 to <4 x i32>
  %57 = add <4 x i32> %47, %55
  %58 = add <4 x i32> %48, %56
  %index.next.1 = add nuw i64 %index, 16
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !52

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %.lcssa782.ph = phi <4 x i32> [ undef, %vector.ph ], [ %57, %vector.body ]
  %.lcssa.ph = phi <4 x i32> [ undef, %vector.ph ], [ %58, %vector.body ]
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.phi.unr = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %57, %vector.body ]
  %vec.phi779.unr = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %58, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %59 = getelementptr inbounds i8, i8* %call, i64 %index.unr
  %60 = bitcast i8* %59 to <4 x i8>*
  %wide.load.epil = load <4 x i8>, <4 x i8>* %60, align 1, !tbaa !19
  %61 = getelementptr inbounds i8, i8* %59, i64 4
  %62 = bitcast i8* %61 to <4 x i8>*
  %wide.load780.epil = load <4 x i8>, <4 x i8>* %62, align 1, !tbaa !19
  %63 = icmp eq <4 x i8> %wide.load.epil, <i8 10, i8 10, i8 10, i8 10>
  %64 = icmp eq <4 x i8> %wide.load780.epil, <i8 10, i8 10, i8 10, i8 10>
  %65 = zext <4 x i1> %63 to <4 x i32>
  %66 = zext <4 x i1> %64 to <4 x i32>
  %67 = add <4 x i32> %vec.phi.unr, %65
  %68 = add <4 x i32> %vec.phi779.unr, %66
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %.lcssa782 = phi <4 x i32> [ %.lcssa782.ph, %middle.block.unr-lcssa ], [ %67, %vector.body.epil ]
  %.lcssa = phi <4 x i32> [ %.lcssa.ph, %middle.block.unr-lcssa ], [ %68, %vector.body.epil ]
  %bin.rdx = add <4 x i32> %.lcssa, %.lcssa782
  %69 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond235.preheader, label %for.body.preheader781

for.body.preheader781:                            ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %lf_num.0740.ph = phi i32 [ 0, %for.body.preheader ], [ %69, %middle.block ]
  br label %for.body

for.cond235.preheader:                            ; preds = %for.body, %middle.block
  %spec.select709.lcssa = phi i32 [ %69, %middle.block ], [ %spec.select709, %for.body ]
  br i1 %cmp224738, label %for.body238.preheader, label %if.end260

for.body238.preheader:                            ; preds = %for.cond235.preheader
  %70 = zext i32 %call222 to i64
  br label %for.body238

for.body:                                         ; preds = %for.body.preheader781, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader781 ]
  %lf_num.0740 = phi i32 [ %spec.select709, %for.body ], [ %lf_num.0740.ph, %for.body.preheader781 ]
  %arrayidx227 = getelementptr inbounds i8, i8* %call, i64 %indvars.iv
  %71 = load i8, i8* %arrayidx227, align 1, !tbaa !19
  %cmp229 = icmp eq i8 %71, 10
  %inc = zext i1 %cmp229 to i32
  %spec.select709 = add nuw nsw i32 %lf_num.0740, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond235.preheader, label %for.body, !llvm.loop !54

for.body238:                                      ; preds = %for.body238.preheader, %for.inc255
  %indvars.iv756 = phi i64 [ %70, %for.body238.preheader ], [ %indvars.iv.next757, %for.inc255 ]
  %lf_num.2745 = phi i32 [ %spec.select709.lcssa, %for.body238.preheader ], [ %lf_num.3, %for.inc255 ]
  %i.0744 = phi i32 [ %call222, %for.body238.preheader ], [ %i.1, %for.inc255 ]
  %indvars.iv.next757 = add nsw i64 %indvars.iv756, -1
  %indvars = trunc i64 %indvars.iv.next757 to i32
  %idxprom239732 = and i64 %indvars.iv.next757, 4294967295
  %arrayidx240 = getelementptr inbounds i8, i8* %call, i64 %idxprom239732
  %72 = load i8, i8* %arrayidx240, align 1, !tbaa !19
  %add241 = add nsw i32 %lf_num.2745, %indvars
  %idxprom242 = sext i32 %add241 to i64
  %arrayidx243 = getelementptr inbounds i8, i8* %call, i64 %idxprom242
  store i8 %72, i8* %arrayidx243, align 1, !tbaa !19
  %73 = load i8, i8* %arrayidx240, align 1, !tbaa !19
  %cmp247 = icmp eq i8 %73, 10
  br i1 %cmp247, label %if.then249, label %for.inc255

if.then249:                                       ; preds = %for.body238
  %dec = add nsw i32 %lf_num.2745, -1
  %inc250 = add nsw i32 %i.0744, 1
  %add251 = add nsw i32 %dec, %indvars
  %idxprom252 = sext i32 %add251 to i64
  %arrayidx253 = getelementptr inbounds i8, i8* %call, i64 %idxprom252
  store i8 13, i8* %arrayidx253, align 1, !tbaa !19
  br label %for.inc255

for.inc255:                                       ; preds = %for.body238, %if.then249
  %i.1 = phi i32 [ %inc250, %if.then249 ], [ %i.0744, %for.body238 ]
  %lf_num.3 = phi i32 [ %dec, %if.then249 ], [ %lf_num.2745, %for.body238 ]
  %cmp236 = icmp ugt i64 %indvars.iv756, 1
  br i1 %cmp236, label %for.body238, label %if.end260, !llvm.loop !56

if.else258:                                       ; preds = %if.then219
  %call259 = call i32 @raw_read_stdin(i8* noundef %call, i32 noundef 16384) #12
  br label %if.end260

if.end260:                                        ; preds = %for.inc255, %if.then221, %for.cond235.preheader, %if.else258
  %i.2 = phi i32 [ %call259, %if.else258 ], [ %call222, %for.cond235.preheader ], [ %call222, %if.then221 ], [ %i.1, %for.inc255 ]
  %.b698 = load i1, i1* @s_quiet, align 4
  %.b700 = load i1, i1* @s_brief, align 4
  %or.cond = select i1 %.b698, i1 true, i1 %.b700
  br i1 %or.cond, label %for.cond403.preheader, label %if.then264

if.then264:                                       ; preds = %if.end260
  %cmp265 = icmp slt i32 %i.2, 1
  br i1 %cmp265, label %if.then271, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then264
  %74 = load i8, i8* %call, align 1, !tbaa !19
  switch i8 %74, label %if.end394 [
    i8 81, label %if.then271
    i8 113, label %if.then284
    i8 114, label %land.lhs.true299
    i8 82, label %land.lhs.true318
    i8 75, label %land.lhs.true342
    i8 107, label %land.lhs.true342
    i8 99, label %lor.lhs.false.land.lhs.true366_crit_edge
    i8 80, label %if.then391
  ]

lor.lhs.false.land.lhs.true366_crit_edge:         ; preds = %lor.lhs.false
  %.pre759 = load i8, i8* %arrayidx343, align 1, !tbaa !19
  br label %land.lhs.true366

if.then271:                                       ; preds = %lor.lhs.false, %if.then264
  %75 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call272 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %75, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.504, i64 0, i64 0)) #12
  %76 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call273 = call i64 @BIO_ctrl(%struct.bio_st* noundef %76, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  %call275 = call i32 @BIO_closesocket(i32 noundef %s) #12
  call fastcc void @close_accept_socket() #15
  br label %if.then509

if.then284:                                       ; preds = %lor.lhs.false
  %77 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call285 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %77, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.504, i64 0, i64 0)) #12
  %78 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call286 = call i64 @BIO_ctrl(%struct.bio_st* noundef %78, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  %call288 = call i32 @SSL_version(%struct.ssl_st* noundef %call9) #12
  %cmp289.not = icmp eq i32 %call288, 65279
  br i1 %cmp289.not, label %if.then509, label %if.then291

if.then291:                                       ; preds = %if.then284
  %call292 = call i32 @BIO_closesocket(i32 noundef %s) #12
  br label %if.then509

land.lhs.true299:                                 ; preds = %lor.lhs.false
  %79 = load i8, i8* %arrayidx343, align 1, !tbaa !19
  switch i8 %79, label %for.cond403.preheader [
    i8 10, label %if.then309
    i8 13, label %if.then309
  ]

if.then309:                                       ; preds = %land.lhs.true299, %land.lhs.true299
  %call310 = call i32 @SSL_renegotiate(%struct.ssl_st* noundef %call9) #12
  %call311 = call i32 @SSL_do_handshake(%struct.ssl_st* noundef %call9) #12
  %call312 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.505, i64 0, i64 0), i32 noundef %call311) #12
  br label %for.cond149.backedge

land.lhs.true318:                                 ; preds = %lor.lhs.false
  %80 = load i8, i8* %arrayidx343, align 1, !tbaa !19
  switch i8 %80, label %for.cond403.preheader [
    i8 10, label %if.then328
    i8 13, label %if.then328
  ]

if.then328:                                       ; preds = %land.lhs.true318, %land.lhs.true318
  call void @SSL_set_verify(%struct.ssl_st* noundef %call9, i32 noundef 5, i32 (i32, %struct.x509_store_ctx_st*)* noundef null) #12
  %call329 = call i32 @SSL_renegotiate(%struct.ssl_st* noundef %call9) #12
  %call330 = call i32 @SSL_do_handshake(%struct.ssl_st* noundef %call9) #12
  %call331 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.505, i64 0, i64 0), i32 noundef %call330) #12
  br label %for.cond149.backedge

land.lhs.true342:                                 ; preds = %lor.lhs.false, %lor.lhs.false
  %81 = load i8, i8* %arrayidx343, align 1, !tbaa !19
  switch i8 %81, label %if.end361 [
    i8 10, label %if.then352
    i8 13, label %if.then352
  ]

if.then352:                                       ; preds = %land.lhs.true342, %land.lhs.true342
  %cmp355 = icmp eq i8 %74, 75
  %cond357 = zext i1 %cmp355 to i32
  %call358 = call i32 @SSL_key_update(%struct.ssl_st* noundef %call9, i32 noundef %cond357) #12
  %call359 = call i32 @SSL_do_handshake(%struct.ssl_st* noundef %call9) #12
  %call360 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.505, i64 0, i64 0), i32 noundef %call359) #12
  br label %for.cond149.backedge

if.end361:                                        ; preds = %land.lhs.true342
  switch i8 %74, label %if.end394 [
    i8 99, label %land.lhs.true366
    i8 80, label %if.then391
  ]

land.lhs.true366:                                 ; preds = %lor.lhs.false.land.lhs.true366_crit_edge, %if.end361
  %82 = phi i8 [ %.pre759, %lor.lhs.false.land.lhs.true366_crit_edge ], [ %81, %if.end361 ]
  switch i8 %82, label %for.cond403.preheader [
    i8 10, label %if.then376
    i8 13, label %if.then376
  ]

if.then376:                                       ; preds = %land.lhs.true366, %land.lhs.true366
  call void @SSL_set_verify(%struct.ssl_st* noundef %call9, i32 noundef 1, i32 (i32, %struct.x509_store_ctx_st*)* noundef null) #12
  %call377 = call i32 @SSL_verify_client_post_handshake(%struct.ssl_st* noundef %call9) #12
  %cmp378 = icmp eq i32 %call377, 0
  br i1 %cmp378, label %if.then380, label %if.else382

if.then380:                                       ; preds = %if.then376
  %call381 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.506, i64 0, i64 0)) #12
  %83 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %83) #12
  br label %for.cond149.backedge

if.else382:                                       ; preds = %if.then376
  %call383 = call i32 @SSL_do_handshake(%struct.ssl_st* noundef %call9) #12
  %call384 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.505, i64 0, i64 0), i32 noundef %call383) #12
  br label %for.cond149.backedge

if.then391:                                       ; preds = %lor.lhs.false, %if.end361
  %call392 = call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef %call9) #12
  %call393 = call i32 @BIO_write(%struct.bio_st* noundef %call392, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @sv_body.str, i64 0, i64 0), i32 noundef 27) #12
  %.pr.pre = load i8, i8* %call, align 1, !tbaa !19
  br label %if.end394

if.end394:                                        ; preds = %lor.lhs.false, %if.end361, %if.then391
  %.pr = phi i8 [ %74, %lor.lhs.false ], [ %74, %if.end361 ], [ %.pr.pre, %if.then391 ]
  %cmp397 = icmp eq i8 %.pr, 83
  br i1 %cmp397, label %if.then399, label %for.cond403.preheader

if.then399:                                       ; preds = %if.end394
  %84 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call400 = call %struct.ssl_ctx_st* @SSL_get_SSL_CTX(%struct.ssl_st* noundef %call9) #12
  call fastcc void @print_stats(%struct.bio_st* noundef %84, %struct.ssl_ctx_st* noundef %call400) #15
  br label %for.cond403.preheader

for.cond403.preheader:                            ; preds = %land.lhs.true366, %land.lhs.true318, %land.lhs.true299, %if.end394, %if.then399, %if.end260
  br label %for.cond403

for.cond403:                                      ; preds = %for.cond403.preheader, %sw.epilog
  %i.3 = phi i32 [ %i.4, %sw.epilog ], [ %i.2, %for.cond403.preheader ]
  %l.0 = phi i64 [ %l.1, %sw.epilog ], [ 0, %for.cond403.preheader ]
  %arrayidx404 = getelementptr inbounds i8, i8* %call, i64 %l.0
  %call405 = call i32 @SSL_write(%struct.ssl_st* noundef %call9, i8* noundef %arrayidx404, i32 noundef %i.3) #12
  %call407748 = call i32 @SSL_get_error(%struct.ssl_st* noundef %call9, i32 noundef %call405) #12
  %cmp408749 = icmp eq i32 %call407748, 4
  br i1 %cmp408749, label %while.body410, label %while.end414

while.body410:                                    ; preds = %for.cond403, %while.body410
  %85 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call411 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %85, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.507, i64 0, i64 0)) #12
  %86 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  call void @lookup_srp_user(%struct.srpsrvparm_st* noundef nonnull @srp_callback_parm, %struct.bio_st* noundef %86) #12
  %call413 = call i32 @SSL_write(%struct.ssl_st* noundef %call9, i8* noundef %arrayidx404, i32 noundef %i.3) #12
  %call407 = call i32 @SSL_get_error(%struct.ssl_st* noundef %call9, i32 noundef %call413) #12
  %cmp408 = icmp eq i32 %call407, 4
  br i1 %cmp408, label %while.body410, label %while.end414, !llvm.loop !57

while.end414:                                     ; preds = %while.body410, %for.cond403
  %k.0.lcssa = phi i32 [ %call405, %for.cond403 ], [ %call413, %while.body410 ]
  %call415 = call i32 @SSL_get_error(%struct.ssl_st* noundef %call9, i32 noundef %k.0.lcssa) #12
  switch i32 %call415, label %sw.epilog [
    i32 6, label %sw.bb428
    i32 9, label %sw.bb416
    i32 3, label %sw.bb420
    i32 2, label %sw.bb420
    i32 4, label %sw.bb420
    i32 10, label %sw.bb424
    i32 5, label %sw.bb424
    i32 1, label %sw.bb424
  ]

sw.bb416:                                         ; preds = %while.end414
  %87 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call417 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %87, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.508, i64 0, i64 0)) #12
  %88 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call418 = call i64 @BIO_ctrl(%struct.bio_st* noundef %88, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  call void @wait_for_async(%struct.ssl_st* noundef %call9) #12
  br label %sw.epilog

sw.bb420:                                         ; preds = %while.end414, %while.end414, %while.end414
  %89 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call421 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %89, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.509, i64 0, i64 0)) #12
  %90 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call422 = call i64 @BIO_ctrl(%struct.bio_st* noundef %90, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  br label %sw.epilog

sw.bb424:                                         ; preds = %while.end414, %while.end414, %while.end414
  %91 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call425 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %91, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.510, i64 0, i64 0)) #12
  %92 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call426 = call i64 @BIO_ctrl(%struct.bio_st* noundef %92, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  %93 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %93) #12
  br label %if.then509

sw.bb428:                                         ; preds = %while.end414
  %94 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call429 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %94, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.504, i64 0, i64 0)) #12
  %95 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call430 = call i64 @BIO_ctrl(%struct.bio_st* noundef %95, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  br label %if.then509

sw.epilog:                                        ; preds = %while.end414, %sw.bb420, %sw.bb416
  %cmp432 = icmp sgt i32 %k.0.lcssa, 0
  %sub437 = select i1 %cmp432, i32 %k.0.lcssa, i32 0
  %i.4 = sub nsw i32 %i.3, %sub437
  %add436 = zext i32 %sub437 to i64
  %l.1 = add i64 %l.0, %add436
  %cmp439 = icmp slt i32 %i.4, 1
  br i1 %cmp439, label %if.end444, label %for.cond403

if.end444:                                        ; preds = %sw.epilog
  br i1 %cmp213.not.not, label %for.cond149.backedge, label %if.then446

for.cond149.backedge:                             ; preds = %sw.bb476, %while.end474, %if.end444, %sw.bb484, %sw.bb488, %if.then454, %if.end217.thread, %if.then380, %if.else382, %if.end187, %if.then352, %if.then328, %if.then309
  br label %for.cond149

if.then446:                                       ; preds = %for.cond149, %lor.end, %if.end217.thread, %if.end444
  %.b701 = load i1, i1* @async, align 4
  br i1 %.b701, label %lor.lhs.false448, label %land.lhs.true451

lor.lhs.false448:                                 ; preds = %if.then446
  %call449 = call i32 @SSL_waiting_for_async(%struct.ssl_st* noundef %call9) #12
  %tobool450.not = icmp eq i32 %call449, 0
  br i1 %tobool450.not, label %land.lhs.true451, label %again.preheader

again.preheader:                                  ; preds = %land.lhs.true451, %lor.lhs.false448
  br label %again

land.lhs.true451:                                 ; preds = %lor.lhs.false448, %if.then446
  %call452 = call i32 @SSL_is_init_finished(%struct.ssl_st* noundef %call9) #12
  %tobool453.not = icmp eq i32 %call452, 0
  br i1 %tobool453.not, label %if.then454, label %again.preheader

if.then454:                                       ; preds = %land.lhs.true451
  %call455 = call fastcc i32 @init_ssl_connection(%struct.ssl_st* noundef %call9) #15
  %cmp460 = icmp eq i32 %call455, 0
  br i1 %cmp460, label %if.then509, label %for.cond149.backedge

again:                                            ; preds = %again.preheader, %sw.bb476
  %call466 = call i32 @SSL_read(%struct.ssl_st* noundef %call9, i8* noundef %call, i32 noundef 16384) #12
  %call468751 = call i32 @SSL_get_error(%struct.ssl_st* noundef %call9, i32 noundef %call466) #12
  %cmp469752 = icmp eq i32 %call468751, 4
  br i1 %cmp469752, label %while.body471, label %while.end474

while.body471:                                    ; preds = %again, %while.body471
  %96 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call472 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %96, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.511, i64 0, i64 0)) #12
  %97 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  call void @lookup_srp_user(%struct.srpsrvparm_st* noundef nonnull @srp_callback_parm, %struct.bio_st* noundef %97) #12
  %call473 = call i32 @SSL_read(%struct.ssl_st* noundef %call9, i8* noundef %call, i32 noundef 16384) #12
  %call468 = call i32 @SSL_get_error(%struct.ssl_st* noundef %call9, i32 noundef %call473) #12
  %cmp469 = icmp eq i32 %call468, 4
  br i1 %cmp469, label %while.body471, label %while.end474, !llvm.loop !58

while.end474:                                     ; preds = %while.body471, %again
  %i.5.lcssa = phi i32 [ %call466, %again ], [ %call473, %while.body471 ]
  %call475 = call i32 @SSL_get_error(%struct.ssl_st* noundef %call9, i32 noundef %i.5.lcssa) #12
  switch i32 %call475, label %for.cond149.backedge [
    i32 0, label %sw.bb476
    i32 9, label %sw.bb484
    i32 3, label %sw.bb488
    i32 2, label %sw.bb488
    i32 10, label %sw.bb492
    i32 5, label %sw.bb492
    i32 1, label %sw.bb492
    i32 6, label %sw.bb496
  ]

sw.bb476:                                         ; preds = %while.end474
  %call477 = call i32 @raw_write_stdout(i8* noundef %call, i32 noundef %i.5.lcssa) #12
  %98 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call478 = call i64 @BIO_ctrl(%struct.bio_st* noundef %98, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  %call480 = call i32 @SSL_has_pending(%struct.ssl_st* noundef %call9) #12
  %tobool481.not = icmp eq i32 %call480, 0
  br i1 %tobool481.not, label %for.cond149.backedge, label %again

sw.bb484:                                         ; preds = %while.end474
  %99 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call485 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %99, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.512, i64 0, i64 0)) #12
  %100 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call486 = call i64 @BIO_ctrl(%struct.bio_st* noundef %100, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  call void @wait_for_async(%struct.ssl_st* noundef %call9) #12
  br label %for.cond149.backedge

sw.bb488:                                         ; preds = %while.end474, %while.end474
  %101 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call489 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %101, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.513, i64 0, i64 0)) #12
  %102 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call490 = call i64 @BIO_ctrl(%struct.bio_st* noundef %102, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  br label %for.cond149.backedge

sw.bb492:                                         ; preds = %while.end474, %while.end474, %while.end474
  %103 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call493 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %103, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.510, i64 0, i64 0)) #12
  %104 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call494 = call i64 @BIO_ctrl(%struct.bio_st* noundef %104, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  %105 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %105) #12
  br label %if.then509

sw.bb496:                                         ; preds = %while.end474
  %106 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call497 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %106, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.504, i64 0, i64 0)) #12
  %107 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call498 = call i64 @BIO_ctrl(%struct.bio_st* noundef %107, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  br label %if.then509

if.then509:                                       ; preds = %if.then454, %cleanup, %sw.bb496, %sw.bb492, %sw.bb424, %sw.bb428, %if.then271, %if.then291, %if.then284, %if.then25, %if.then30, %if.then48, %if.then56, %if.then69
  %ret.2723 = phi i32 [ -1, %if.then25 ], [ -1, %if.then30 ], [ -1, %if.then56 ], [ 1, %if.then69 ], [ -1, %if.then48 ], [ 1, %cleanup ], [ 1, %if.then284 ], [ 1, %if.then291 ], [ -11, %if.then271 ], [ 1, %sw.bb428 ], [ 1, %sw.bb424 ], [ 1, %sw.bb492 ], [ 1, %sw.bb496 ], [ 1, %if.then454 ]
  %108 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call510 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %108, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.514, i64 0, i64 0)) #12
  call void @do_ssl_shutdown(%struct.ssl_st* noundef nonnull %call9) #12
  call void @SSL_free(%struct.ssl_st* noundef nonnull %call9) #12
  br label %cleanup513

cleanup513:                                       ; preds = %if.end8, %if.then509
  %ret.2724 = phi i32 [ %ret.2723, %if.then509 ], [ -1, %if.end8 ]
  %109 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call512 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %109, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.515, i64 0, i64 0)) #12
  call void @CRYPTO_clear_free(i8* noundef %call, i64 noundef 16384, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 2752) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #13
  ret i32 %ret.2724
}

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8* noundef) local_unnamed_addr #10

declare dso_local i32 @do_server(i32* noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 (i32, i32, i32, i8*)* noundef, i8* noundef, i32 noundef, %struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_stats(%struct.bio_st* noundef %bio, %struct.ssl_ctx_st* noundef %ssl_ctx) unnamed_addr #0 {
entry:
  %call = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ssl_ctx, i32 noundef 20, i64 noundef 0, i8* noundef null) #12
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.479, i64 0, i64 0), i64 noundef %call) #12
  %call2 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ssl_ctx, i32 noundef 21, i64 noundef 0, i8* noundef null) #12
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.480, i64 0, i64 0), i64 noundef %call2) #12
  %call4 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ssl_ctx, i32 noundef 23, i64 noundef 0, i8* noundef null) #12
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.481, i64 0, i64 0), i64 noundef %call4) #12
  %call6 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ssl_ctx, i32 noundef 22, i64 noundef 0, i8* noundef null) #12
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.482, i64 0, i64 0), i64 noundef %call6) #12
  %call8 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ssl_ctx, i32 noundef 24, i64 noundef 0, i8* noundef null) #12
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.483, i64 0, i64 0), i64 noundef %call8) #12
  %call10 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ssl_ctx, i32 noundef 26, i64 noundef 0, i8* noundef null) #12
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.484, i64 0, i64 0), i64 noundef %call10) #12
  %call12 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ssl_ctx, i32 noundef 25, i64 noundef 0, i8* noundef null) #12
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.485, i64 0, i64 0), i64 noundef %call12) #12
  %call14 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ssl_ctx, i32 noundef 27, i64 noundef 0, i8* noundef null) #12
  %call15 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.486, i64 0, i64 0), i64 noundef %call14) #12
  %call16 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ssl_ctx, i32 noundef 29, i64 noundef 0, i8* noundef null) #12
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.487, i64 0, i64 0), i64 noundef %call16) #12
  %call18 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ssl_ctx, i32 noundef 30, i64 noundef 0, i8* noundef null) #12
  %call19 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.488, i64 0, i64 0), i64 noundef %call18) #12
  %call20 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ssl_ctx, i32 noundef 28, i64 noundef 0, i8* noundef null) #12
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.489, i64 0, i64 0), i64 noundef %call20) #12
  %call22 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ssl_ctx, i32 noundef 31, i64 noundef 0, i8* noundef null) #12
  %call23 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ssl_ctx, i32 noundef 43, i64 noundef 0, i8* noundef null) #12
  %call24 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.490, i64 0, i64 0), i64 noundef %call22, i64 noundef %call23) #12
  ret void
}

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_SESSION_free(%struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_free(%struct.x509_st* noundef) #2

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @free_sessions() unnamed_addr #0 {
entry:
  %0 = load %struct.simple_ssl_session_st*, %struct.simple_ssl_session_st** @first, align 8, !tbaa !3
  %tobool.not7 = icmp eq %struct.simple_ssl_session_st* %0, null
  br i1 %tobool.not7, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %sess.08 = phi %struct.simple_ssl_session_st* [ %3, %for.body ], [ %0, %entry ]
  %id = getelementptr inbounds %struct.simple_ssl_session_st, %struct.simple_ssl_session_st* %sess.08, i64 0, i32 0
  %1 = load i8*, i8** %id, align 8, !tbaa !59
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 3674) #12
  %der = getelementptr inbounds %struct.simple_ssl_session_st, %struct.simple_ssl_session_st* %sess.08, i64 0, i32 2
  %2 = load i8*, i8** %der, align 8, !tbaa !61
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 3675) #12
  %next = getelementptr inbounds %struct.simple_ssl_session_st, %struct.simple_ssl_session_st* %sess.08, i64 0, i32 4
  %3 = load %struct.simple_ssl_session_st*, %struct.simple_ssl_session_st** %next, align 8, !tbaa !62
  %4 = bitcast %struct.simple_ssl_session_st* %sess.08 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 3678) #12
  %tobool.not = icmp eq %struct.simple_ssl_session_st* %3, null
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !63

for.end:                                          ; preds = %for.body, %entry
  store %struct.simple_ssl_session_st* null, %struct.simple_ssl_session_st** @first, align 8, !tbaa !3
  ret void
}

declare dso_local void @ssl_excert_free(%struct.ssl_excert_st* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_CONF_CTX_free(%struct.ssl_conf_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_select_next_proto(i8** noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_version(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #8

declare dso_local i8* @OPENSSL_hexstr2buf(i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

declare dso_local i32 @SSL_SESSION_up_ref(%struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_cipher_st* @SSL_CIPHER_find(%struct.ssl_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_session_st* @SSL_SESSION_new() local_unnamed_addr #2

declare dso_local i32 @SSL_SESSION_set1_master_key(%struct.ssl_session_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_SESSION_set_cipher(%struct.ssl_session_st* noundef, %struct.ssl_cipher_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_SESSION_set_protocol_version(%struct.ssl_session_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @SSL_get_servername(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #8

declare dso_local %struct.ssl_ctx_st* @SSL_set_SSL_CTX(%struct.ssl_st* noundef, %struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @ASN1_d2i_bio(i8* ()* noundef, i8* (i8**, i8**, i64)* noundef, %struct.bio_st* noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.ocsp_response_st* @OCSP_RESPONSE_new() #2

declare dso_local %struct.ocsp_response_st* @d2i_OCSP_RESPONSE(%struct.ocsp_response_st** noundef, i8** noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_ocsp_resp_from_responder(%struct.ssl_st* noundef %s, %struct.tlsextstatusctx_st* nocapture noundef readonly %srctx, %struct.ocsp_response_st** nocapture noundef writeonly %resp) unnamed_addr #0 {
entry:
  %host = alloca i8*, align 8
  %port = alloca i8*, align 8
  %path = alloca i8*, align 8
  %use_ssl = alloca i32, align 4
  %exts = alloca %struct.stack_st_X509_EXTENSION*, align 8
  %0 = bitcast i8** %host to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i8* null, i8** %host, align 8, !tbaa !3
  %1 = bitcast i8** %port to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store i8* null, i8** %port, align 8, !tbaa !3
  %2 = bitcast i8** %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #13
  store i8* null, i8** %path, align 8, !tbaa !3
  %3 = bitcast i32* %use_ssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13
  %4 = bitcast %struct.stack_st_X509_EXTENSION** %exts to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  %call = tail call %struct.x509_st* @SSL_get_certificate(%struct.ssl_st* noundef %s) #12
  %call1 = tail call %struct.stack_st_OPENSSL_STRING* @X509_get1_ocsp(%struct.x509_st* noundef %call) #12
  %cmp.not = icmp eq %struct.stack_st_OPENSSL_STRING* %call1, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %call1) #15
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef 0) #12
  %call4 = call i32 @OSSL_HTTP_parse_url(i8* noundef %call3, i32* noundef nonnull %use_ssl, i8** noundef null, i8** noundef nonnull %host, i8** noundef nonnull %port, i32* noundef null, i8** noundef nonnull %path, i8** noundef null, i8** noundef null) #12
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %done.thread136, label %if.end

done.thread136:                                   ; preds = %if.then
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6 = call i32 @BIO_puts(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.474, i64 0, i64 0)) #12
  br label %if.then70

if.end:                                           ; preds = %if.then
  %verbose = getelementptr inbounds %struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* %srctx, i64 0, i32 8
  %6 = load i32, i32* %verbose, align 4, !tbaa !13
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %if.end22, label %if.then8

if.then8:                                         ; preds = %if.end
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call10 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef 0) #12
  %call11 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.475, i64 0, i64 0), i8* noundef %call10) #12
  br label %if.end22

if.else:                                          ; preds = %entry
  %host13 = getelementptr inbounds %struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* %srctx, i64 0, i32 2
  %8 = load i8*, i8** %host13, align 8, !tbaa !34
  %cmp14 = icmp eq i8* %8, null
  br i1 %cmp14, label %done.thread, label %if.end17

done.thread:                                      ; preds = %if.else
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call16 = tail call i32 @BIO_puts(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.476, i64 0, i64 0)) #12
  br label %if.end71

if.end17:                                         ; preds = %if.else
  store i8* %8, i8** %host, align 8, !tbaa !3
  %path19 = getelementptr inbounds %struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* %srctx, i64 0, i32 3
  %10 = load i8*, i8** %path19, align 8, !tbaa !36
  store i8* %10, i8** %path, align 8, !tbaa !3
  %port20 = getelementptr inbounds %struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* %srctx, i64 0, i32 4
  %11 = load i8*, i8** %port20, align 8, !tbaa !35
  store i8* %11, i8** %port, align 8, !tbaa !3
  %use_ssl21 = getelementptr inbounds %struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* %srctx, i64 0, i32 7
  %12 = load i32, i32* %use_ssl21, align 8, !tbaa !64
  store i32 %12, i32* %use_ssl, align 4, !tbaa !7
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then8, %if.end17
  %proxy23 = getelementptr inbounds %struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* %srctx, i64 0, i32 5
  %13 = load i8*, i8** %proxy23, align 8, !tbaa !16
  %no_proxy24 = getelementptr inbounds %struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* %srctx, i64 0, i32 6
  %14 = load i8*, i8** %no_proxy24, align 8, !tbaa !17
  %call25 = call %struct.x509_store_ctx_st* @X509_STORE_CTX_new() #12
  %cmp26 = icmp eq %struct.x509_store_ctx_st* %call25, null
  br i1 %cmp26, label %done, label %if.end28

if.end28:                                         ; preds = %if.end22
  %call29 = call %struct.ssl_ctx_st* @SSL_get_SSL_CTX(%struct.ssl_st* noundef %s) #12
  %call30 = call %struct.x509_store_st* @SSL_CTX_get_cert_store(%struct.ssl_ctx_st* noundef %call29) #12
  %call31 = call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef nonnull %call25, %struct.x509_store_st* noundef %call30, %struct.x509_st* noundef null, %struct.stack_st_X509* noundef null) #12
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %done, label %if.end34

if.end34:                                         ; preds = %if.end28
  %call35 = call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %call) #12
  %call36 = call %struct.x509_object_st* @X509_STORE_CTX_get_obj_by_subject(%struct.x509_store_ctx_st* noundef nonnull %call25, i32 noundef 1, %struct.X509_name_st* noundef %call35) #12
  %cmp37 = icmp eq %struct.x509_object_st* %call36, null
  br i1 %cmp37, label %done.sink.split, label %if.end40

if.end40:                                         ; preds = %if.end34
  %call41 = call %struct.x509_st* @X509_OBJECT_get0_X509(%struct.x509_object_st* noundef nonnull %call36) #12
  %call42 = call %struct.ocsp_cert_id_st* @OCSP_cert_to_id(%struct.evp_md_st* noundef null, %struct.x509_st* noundef %call, %struct.x509_st* noundef %call41) #12
  call void @X509_OBJECT_free(%struct.x509_object_st* noundef nonnull %call36) #12
  %cmp43 = icmp eq %struct.ocsp_cert_id_st* %call42, null
  br i1 %cmp43, label %done, label %if.end45

if.end45:                                         ; preds = %if.end40
  %call46 = call %struct.ocsp_request_st* @OCSP_REQUEST_new() #12
  %cmp47 = icmp eq %struct.ocsp_request_st* %call46, null
  br i1 %cmp47, label %done, label %if.end49

if.end49:                                         ; preds = %if.end45
  %call50 = call %struct.ocsp_one_request_st* @OCSP_request_add0_id(%struct.ocsp_request_st* noundef nonnull %call46, %struct.ocsp_cert_id_st* noundef nonnull %call42) #12
  %tobool51.not = icmp eq %struct.ocsp_one_request_st* %call50, null
  br i1 %tobool51.not, label %done, label %if.end53

if.end53:                                         ; preds = %if.end49
  %call54 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 66, i64 noundef 0, i8* noundef nonnull %4) #12
  %15 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %exts, align 8, !tbaa !3
  %call55145 = call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %15) #15
  %call56146 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call55145) #12
  %cmp57147 = icmp sgt i32 %call56146, 0
  br i1 %cmp57147, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %16 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %exts, align 8, !tbaa !3
  %call55 = call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %16) #15
  %call56 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call55) #12
  %cmp57 = icmp slt i32 %inc, %call56
  br i1 %cmp57, label %for.body, label %for.end, !llvm.loop !65

for.body:                                         ; preds = %if.end53, %for.cond
  %i.0148 = phi i32 [ %inc, %for.cond ], [ 0, %if.end53 ]
  %17 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %exts, align 8, !tbaa !3
  %call58 = call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %17) #15
  %call59 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call58, i32 noundef %i.0148) #12
  %18 = bitcast i8* %call59 to %struct.X509_extension_st*
  %call60 = call i32 @OCSP_REQUEST_add_ext(%struct.ocsp_request_st* noundef nonnull %call46, %struct.X509_extension_st* noundef %18, i32 noundef -1) #12
  %tobool61.not = icmp eq i32 %call60, 0
  %inc = add nuw nsw i32 %i.0148, 1
  br i1 %tobool61.not, label %done, label %for.cond

for.end:                                          ; preds = %for.cond, %if.end53
  %19 = load i8*, i8** %host, align 8, !tbaa !3
  %20 = load i8*, i8** %port, align 8, !tbaa !3
  %21 = load i8*, i8** %path, align 8, !tbaa !3
  %22 = load i32, i32* %use_ssl, align 4, !tbaa !7
  %timeout = getelementptr inbounds %struct.tlsextstatusctx_st, %struct.tlsextstatusctx_st* %srctx, i64 0, i32 0
  %23 = load i32, i32* %timeout, align 8, !tbaa !15
  %call64 = call %struct.ocsp_response_st* @process_responder(%struct.ocsp_request_st* noundef nonnull %call46, i8* noundef %19, i8* noundef %20, i8* noundef %21, i8* noundef %13, i8* noundef %14, i32 noundef %22, %struct.stack_st_CONF_VALUE* noundef null, i32 noundef %23) #12
  store %struct.ocsp_response_st* %call64, %struct.ocsp_response_st** %resp, align 8, !tbaa !3
  %cmp65 = icmp eq %struct.ocsp_response_st* %call64, null
  br i1 %cmp65, label %done.sink.split, label %done

done.sink.split:                                  ; preds = %for.end, %if.end34
  %.sink149 = phi i8* [ getelementptr inbounds ([49 x i8], [49 x i8]* @.str.477, i64 0, i64 0), %if.end34 ], [ getelementptr inbounds ([39 x i8], [39 x i8]* @.str.478, i64 0, i64 0), %for.end ]
  %req.1.ph = phi %struct.ocsp_request_st* [ null, %if.end34 ], [ %call46, %for.end ]
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call67 = call i32 @BIO_puts(%struct.bio_st* noundef %24, i8* noundef %.sink149) #12
  br label %done

done:                                             ; preds = %for.body, %done.sink.split, %if.end22, %if.end28, %if.end40, %if.end45, %if.end49, %for.end
  %req.1 = phi %struct.ocsp_request_st* [ %call46, %for.end ], [ null, %if.end22 ], [ null, %if.end40 ], [ null, %if.end45 ], [ %call46, %if.end49 ], [ null, %if.end28 ], [ %req.1.ph, %done.sink.split ], [ %call46, %for.body ]
  %id.1 = phi %struct.ocsp_cert_id_st* [ null, %for.end ], [ null, %if.end22 ], [ null, %if.end40 ], [ %call42, %if.end45 ], [ %call42, %if.end49 ], [ null, %if.end28 ], [ null, %done.sink.split ], [ null, %for.body ]
  %ret.0 = phi i32 [ 0, %for.end ], [ 2, %if.end22 ], [ 2, %if.end40 ], [ 2, %if.end45 ], [ 2, %if.end49 ], [ 2, %if.end28 ], [ 3, %done.sink.split ], [ 2, %for.body ]
  br i1 %cmp.not, label %if.end71, label %if.then70

if.then70:                                        ; preds = %done.thread136, %done
  %ret.0144 = phi i32 [ 2, %done.thread136 ], [ %ret.0, %done ]
  %id.1143 = phi %struct.ocsp_cert_id_st* [ null, %done.thread136 ], [ %id.1, %done ]
  %req.1142 = phi %struct.ocsp_request_st* [ null, %done.thread136 ], [ %req.1, %done ]
  %inctx.1141 = phi %struct.x509_store_ctx_st* [ null, %done.thread136 ], [ %call25, %done ]
  %25 = load i8*, i8** %host, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %25, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 558) #12
  %26 = load i8*, i8** %path, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %26, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 559) #12
  %27 = load i8*, i8** %port, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %27, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 560) #12
  call void @X509_email_free(%struct.stack_st_OPENSSL_STRING* noundef nonnull %call1) #12
  br label %if.end71

if.end71:                                         ; preds = %done.thread, %if.then70, %done
  %ret.0135 = phi i32 [ 3, %done.thread ], [ %ret.0144, %if.then70 ], [ %ret.0, %done ]
  %id.1134 = phi %struct.ocsp_cert_id_st* [ null, %done.thread ], [ %id.1143, %if.then70 ], [ %id.1, %done ]
  %req.1133 = phi %struct.ocsp_request_st* [ null, %done.thread ], [ %req.1142, %if.then70 ], [ %req.1, %done ]
  %inctx.1132 = phi %struct.x509_store_ctx_st* [ null, %done.thread ], [ %inctx.1141, %if.then70 ], [ %call25, %done ]
  call void @OCSP_CERTID_free(%struct.ocsp_cert_id_st* noundef %id.1134) #12
  call void @OCSP_REQUEST_free(%struct.ocsp_request_st* noundef %req.1133) #12
  call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef %inctx.1132) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %ret.0135
}

declare dso_local i32 @i2d_OCSP_RESPONSE(%struct.ocsp_response_st* noundef, i8** noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_ctrl(%struct.ssl_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OCSP_RESPONSE_print(%struct.bio_st* noundef, %struct.ocsp_response_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @OCSP_RESPONSE_free(%struct.ocsp_response_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @SSL_get_certificate(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_OPENSSL_STRING* @X509_get1_ocsp(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local %struct.x509_store_ctx_st* @X509_STORE_CTX_new() local_unnamed_addr #2

declare dso_local i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef, %struct.x509_store_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_store_st* @SSL_CTX_get_cert_store(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_ctx_st* @SSL_get_SSL_CTX(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_object_st* @X509_STORE_CTX_get_obj_by_subject(%struct.x509_store_ctx_st* noundef, i32 noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ocsp_cert_id_st* @OCSP_cert_to_id(%struct.evp_md_st* noundef, %struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @X509_OBJECT_get0_X509(%struct.x509_object_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_OBJECT_free(%struct.x509_object_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ocsp_request_st* @OCSP_REQUEST_new() local_unnamed_addr #2

declare dso_local %struct.ocsp_one_request_st* @OCSP_request_add0_id(%struct.ocsp_request_st* noundef, %struct.ocsp_cert_id_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @OCSP_REQUEST_add_ext(%struct.ocsp_request_st* noundef, %struct.X509_extension_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.ocsp_response_st* @process_responder(%struct.ocsp_request_st* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.stack_st_CONF_VALUE* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @X509_email_free(%struct.stack_st_OPENSSL_STRING* noundef) local_unnamed_addr #2

declare dso_local void @OCSP_CERTID_free(%struct.ocsp_cert_id_st* noundef) local_unnamed_addr #2

declare dso_local void @OCSP_REQUEST_free(%struct.ocsp_request_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_socket_nbio(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_callback_ctrl(%struct.ssl_st* noundef, i32 noundef, void ()* noundef) local_unnamed_addr #2

declare dso_local void @tlsext_cb(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef) #2

declare dso_local i32 @SSL_set_session_id_context(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_clear(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new_dgram(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_set_options(%struct.ssl_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new_socket(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.bio_method_st* @BIO_f_nbio_test() local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_set_bio(%struct.ssl_st* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_set_accept_state(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_set_callback_ex(%struct.bio_st* noundef, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i64 @bio_dump_callback(%struct.bio_st* noundef, i32 noundef, i8* noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef, i64* noundef) #2

declare dso_local void @BIO_set_callback_arg(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @SSL_set_msg_callback(%struct.ssl_st* noundef, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* noundef) local_unnamed_addr #2

declare dso_local void @SSL_trace(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef, %struct.ssl_st* noundef, i8* noundef) #2

declare dso_local void @msg_cb(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef, %struct.ssl_st* noundef, i8* noundef) #2

declare dso_local i32 @SSL_read_early_data(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_get_error(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @raw_write_stdout(i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_get_early_data_status(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_is_init_finished(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_connection_info(%struct.ssl_st* noundef %con) unnamed_addr #0 {
entry:
  %buf = alloca [8192 x i8], align 16
  %next_proto_neg = alloca i8*, align 8
  %next_proto_neg_len = alloca i32, align 4
  %0 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %0) #13
  %1 = bitcast i8** %next_proto_neg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %2 = bitcast i32* %next_proto_neg_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #13
  %.b = load i1, i1* @s_brief, align 4
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @print_ssl_summary(%struct.ssl_st* noundef %con) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call = tail call %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* noundef %con) #12
  %call1 = tail call i32 @PEM_write_bio_SSL_SESSION(%struct.bio_st* noundef %3, %struct.ssl_session_st* noundef %call) #12
  %call2 = tail call %struct.x509_st* @SSL_get0_peer_certificate(%struct.ssl_st* noundef %con) #12
  %cmp.not = icmp eq %struct.x509_st* %call2, null
  br i1 %cmp.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.516, i64 0, i64 0)) #12
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call5 = tail call i32 @PEM_write_bio_X509(%struct.bio_st* noundef %5, %struct.x509_st* noundef nonnull %call2) #12
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  tail call void @dump_cert_text(%struct.bio_st* noundef %6, %struct.x509_st* noundef nonnull %call2) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %call7 = call i8* @SSL_get_shared_ciphers(%struct.ssl_st* noundef %con, i8* noundef nonnull %0, i32 noundef 8192) #12
  %cmp8.not = icmp eq i8* %call7, null
  br i1 %cmp8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end6
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call11 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.517, i64 0, i64 0), i8* noundef nonnull %0) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6
  %call13 = call %struct.ssl_cipher_st* @SSL_get_current_cipher(%struct.ssl_st* noundef %con) #12
  %call14 = call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %call13) #12
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call15 = call i32 @ssl_print_sigalgs(%struct.bio_st* noundef %8, %struct.ssl_st* noundef %con) #12
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call16 = call i32 @ssl_print_point_formats(%struct.bio_st* noundef %9, %struct.ssl_st* noundef %con) #12
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call17 = call i32 @ssl_print_groups(%struct.bio_st* noundef %10, %struct.ssl_st* noundef %con, i32 noundef 0) #12
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  call void @print_ca_names(%struct.bio_st* noundef %11, %struct.ssl_st* noundef %con) #12
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %cmp18.not = icmp eq i8* %call14, null
  %cond = select i1 %cmp18.not, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.519, i64 0, i64 0), i8* %call14
  %call19 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.518, i64 0, i64 0), i8* noundef %cond) #12
  call void @SSL_get0_next_proto_negotiated(%struct.ssl_st* noundef %con, i8** noundef nonnull %next_proto_neg, i32* noundef nonnull %next_proto_neg_len) #12
  %13 = load i8*, i8** %next_proto_neg, align 8, !tbaa !3
  %tobool20.not = icmp eq i8* %13, null
  br i1 %tobool20.not, label %if.end25, label %if.then21

if.then21:                                        ; preds = %if.end12
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call22 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.520, i64 0, i64 0)) #12
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %16 = load i8*, i8** %next_proto_neg, align 8, !tbaa !3
  %17 = load i32, i32* %next_proto_neg_len, align 4, !tbaa !7
  %call23 = call i32 @BIO_write(%struct.bio_st* noundef %15, i8* noundef %16, i32 noundef %17) #12
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call24 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.453, i64 0, i64 0)) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end12
  %call26 = call %struct.srtp_protection_profile_st* @SSL_get_selected_srtp_profile(%struct.ssl_st* noundef %con) #12
  %tobool27.not = icmp eq %struct.srtp_protection_profile_st* %call26, null
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end25
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %name = getelementptr inbounds %struct.srtp_protection_profile_st, %struct.srtp_protection_profile_st* %call26, i64 0, i32 0
  %20 = load i8*, i8** %name, align 8, !tbaa !66
  %call29 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.521, i64 0, i64 0), i8* noundef %20) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25
  %call31 = call i32 @SSL_session_reused(%struct.ssl_st* noundef %con) #12
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.end30
  %21 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call34 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %21, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.522, i64 0, i64 0)) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call36 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %con, i32 noundef 76, i64 noundef 0, i8* noundef null) #12
  %tobool37.not = icmp eq i64 %call36, 0
  %cond38 = select i1 %tobool37.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.525, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.524, i64 0, i64 0)
  %call39 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.523, i64 0, i64 0), i8* noundef %cond38) #12
  %call40 = call i64 @SSL_get_options(%struct.ssl_st* noundef %con) #12
  %and = and i64 %call40, 1073741824
  %tobool41.not = icmp eq i64 %and, 0
  br i1 %tobool41.not, label %if.end44, label %if.then42

if.then42:                                        ; preds = %if.end35
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call43 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %23, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.526, i64 0, i64 0)) #12
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end35
  %24 = load i8*, i8** @keymatexportlabel, align 8, !tbaa !3
  %cmp45.not = icmp eq i8* %24, null
  br i1 %cmp45.not, label %if.end64, label %if.then46

if.then46:                                        ; preds = %if.end44
  %25 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call47 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %25, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.527, i64 0, i64 0)) #12
  %26 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %27 = load i8*, i8** @keymatexportlabel, align 8, !tbaa !3
  %call48 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %26, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.528, i64 0, i64 0), i8* noundef %27) #12
  %28 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %29 = load i32, i32* @keymatexportlen, align 4, !tbaa !7
  %call49 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %28, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.529, i64 0, i64 0), i32 noundef %29) #12
  %30 = load i32, i32* @keymatexportlen, align 4, !tbaa !7
  %conv = sext i32 %30 to i64
  %call50 = call i8* @app_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.530, i64 0, i64 0)) #12
  %31 = load i32, i32* @keymatexportlen, align 4, !tbaa !7
  %conv51 = sext i32 %31 to i64
  %32 = load i8*, i8** @keymatexportlabel, align 8, !tbaa !3
  %call52 = call i64 @strlen(i8* noundef %32) #14
  %call53 = call i32 @SSL_export_keying_material(%struct.ssl_st* noundef %con, i8* noundef %call50, i64 noundef %conv51, i8* noundef %32, i64 noundef %call52, i8* noundef null, i64 noundef 0, i32 noundef 0) #12
  %tobool54.not = icmp eq i32 %call53, 0
  %33 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  br i1 %tobool54.not, label %if.then55, label %if.else

if.then55:                                        ; preds = %if.then46
  %call56 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %33, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.531, i64 0, i64 0)) #12
  br label %if.end63

if.else:                                          ; preds = %if.then46
  %call57 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %33, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.532, i64 0, i64 0)) #12
  %34 = load i32, i32* @keymatexportlen, align 4, !tbaa !7
  %cmp5894 = icmp sgt i32 %34, 0
  br i1 %cmp5894, label %for.body, label %for.end

for.body:                                         ; preds = %if.else, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.else ]
  %35 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8, i8* %call50, i64 %indvars.iv
  %36 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv60 = zext i8 %36 to i32
  %call61 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %35, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.533, i64 0, i64 0), i32 noundef %conv60) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %37 = load i32, i32* @keymatexportlen, align 4, !tbaa !7
  %38 = sext i32 %37 to i64
  %cmp58 = icmp slt i64 %indvars.iv.next, %38
  br i1 %cmp58, label %for.body, label %for.end, !llvm.loop !68

for.end:                                          ; preds = %for.body, %if.else
  %39 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call62 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %39, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.453, i64 0, i64 0)) #12
  br label %if.end63

if.end63:                                         ; preds = %for.end, %if.then55
  call void @CRYPTO_free(i8* noundef %call50, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 2955) #12
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end44
  %40 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call65 = call i64 @BIO_ctrl(%struct.bio_st* noundef %40, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %0) #13
  ret void
}

declare dso_local i32 @fileno_stdin() local_unnamed_addr #2

declare dso_local i32 @SSL_has_pending(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_waiting_for_async(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_is_dtls(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @select(i32 noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.timeval* noundef) local_unnamed_addr #2

declare dso_local i32 @raw_read_stdin(i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_closesocket(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @close_accept_socket() unnamed_addr #0 {
entry:
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.534, i64 0, i64 0)) #12
  %1 = load i32, i32* @accept_socket, align 4, !tbaa !7
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @BIO_closesocket(i32 noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local i32 @SSL_renegotiate(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_do_handshake(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @SSL_set_verify(%struct.ssl_st* noundef, i32 noundef, i32 (i32, %struct.x509_store_ctx_st*)* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_key_update(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_verify_client_post_handshake(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_write(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @lookup_srp_user(%struct.srpsrvparm_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @wait_for_async(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @init_ssl_connection(%struct.ssl_st* noundef %con) unnamed_addr #0 {
entry:
  %fd = alloca i32, align 4
  %.b131 = load i1, i1* @dtlslisten, align 4
  %.b133 = load i1, i1* @stateless, align 4
  %or.cond = select i1 %.b131, i1 true, i1 %.b133
  br i1 %or.cond, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  br i1 %.b131, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %call = tail call %union.bio_addr_st* @BIO_ADDR_new() #12
  %cmp = icmp eq %union.bio_addr_st* %call, null
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then3
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.535, i64 0, i64 0)) #12
  br label %cleanup87

if.end:                                           ; preds = %if.then3
  %call6 = tail call i32 @DTLSv1_listen(%struct.ssl_st* noundef %con, %union.bio_addr_st* noundef nonnull %call) #12
  br label %if.end8

if.else:                                          ; preds = %if.then
  %call7 = tail call i32 @SSL_stateless(%struct.ssl_st* noundef %con) #12
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  %i.0 = phi i32 [ %call6, %if.end ], [ %call7, %if.else ]
  %client.0 = phi %union.bio_addr_st* [ %call, %if.end ], [ null, %if.else ]
  %cmp9 = icmp sgt i32 %i.0, 0
  br i1 %cmp9, label %if.then10, label %if.end60.thread148

if.then10:                                        ; preds = %if.end8
  %1 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  store i32 -1, i32* %fd, align 4, !tbaa !7
  %.b130 = load i1, i1* @dtlslisten, align 4
  br i1 %.b130, label %if.then12, label %if.end60

if.then12:                                        ; preds = %if.then10
  %call13 = tail call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef %con) #12
  %tobool14.not = icmp eq %struct.bio_st* %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.then15

if.then15:                                        ; preds = %if.then12
  %call16 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call13, i32 noundef 105, i64 noundef 0, i8* noundef nonnull %1) #12
  %2 = load i32, i32* %fd, align 4, !tbaa !7
  %call20 = call i32 @BIO_connect(i32 noundef %2, %union.bio_addr_st* noundef %client.0, i32 noundef 0) #12
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.then15
  %3 = bitcast %union.bio_addr_st* %client.0 to i8*
  %call25 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call13, i32 noundef 32, i64 noundef 0, i8* noundef %3) #12
  call void @BIO_ADDR_free(%union.bio_addr_st* noundef %client.0) #12
  br label %if.end60

cleanup:                                          ; preds = %if.then15, %if.then12
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call23 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.536, i64 0, i64 0)) #12
  call void @BIO_ADDR_free(%union.bio_addr_st* noundef %client.0) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  br label %cleanup87

if.end60.thread148:                               ; preds = %if.end8
  tail call void @BIO_ADDR_free(%union.bio_addr_st* noundef %client.0) #12
  br label %if.then63

do.body:                                          ; preds = %entry, %land.rhs56
  %call36 = tail call i32 @SSL_accept(%struct.ssl_st* noundef %con) #12
  %cmp37 = icmp slt i32 %call36, 1
  br i1 %cmp37, label %land.rhs, label %if.end86

land.rhs:                                         ; preds = %do.body, %while.body
  %call48.sink = phi i32 [ %call48, %while.body ], [ %call36, %do.body ]
  %call52 = tail call fastcc i32 @is_retryable(%struct.ssl_st* noundef %con, i32 noundef %call48.sink) #15
  %call44 = tail call i32 @SSL_get_error(%struct.ssl_st* noundef %con, i32 noundef %call48.sink) #12
  %cmp45 = icmp eq i32 %call44, 4
  br i1 %cmp45, label %while.body, label %do.cond

while.body:                                       ; preds = %land.rhs
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %6 = load i8*, i8** getelementptr inbounds (%struct.srpsrvparm_st, %struct.srpsrvparm_st* @srp_callback_parm, i64 0, i32 0), align 8, !tbaa !69
  %call47 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.537, i64 0, i64 0), i8* noundef %6) #12
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  tail call void @lookup_srp_user(%struct.srpsrvparm_st* noundef nonnull @srp_callback_parm, %struct.bio_st* noundef %7) #12
  %call48 = tail call i32 @SSL_accept(%struct.ssl_st* noundef %con) #12
  %cmp49 = icmp slt i32 %call48, 1
  br i1 %cmp49, label %land.rhs, label %if.end86

do.cond:                                          ; preds = %land.rhs
  %cmp54 = icmp slt i32 %call48.sink, 0
  br i1 %cmp54, label %land.rhs56, label %if.then63

land.rhs56:                                       ; preds = %do.cond
  %call57 = tail call i32 @SSL_waiting_for_async(%struct.ssl_st* noundef %con) #12
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then63.thread, label %do.body, !llvm.loop !71

if.then63.thread:                                 ; preds = %land.rhs56
  %.b153 = load i1, i1* @dtlslisten, align 4
  %.b132154 = load i1, i1* @stateless, align 4
  %or.cond91155 = select i1 %.b153, i1 true, i1 %.b132154
  br label %lor.lhs.false69

if.end60:                                         ; preds = %if.then10, %if.end24
  %dtlslisten.sink = phi i1* [ @dtlslisten, %if.end24 ], [ @stateless, %if.then10 ]
  store i1 false, i1* %dtlslisten.sink, align 4
  %call28 = call i32 @SSL_accept(%struct.ssl_st* noundef %con) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  %cmp61 = icmp slt i32 %call28, 1
  br i1 %cmp61, label %if.then63, label %if.end86

if.then63:                                        ; preds = %do.cond, %if.end60.thread148, %if.end60
  %retry.4143 = phi i32 [ 0, %if.end60 ], [ 0, %if.end60.thread148 ], [ %call52, %do.cond ]
  %i.5142 = phi i32 [ %call28, %if.end60 ], [ %i.0, %if.end60.thread148 ], [ 0, %do.cond ]
  %.b = load i1, i1* @dtlslisten, align 4
  %.b132 = load i1, i1* @stateless, align 4
  %or.cond91 = select i1 %.b, i1 true, i1 %.b132
  %cmp67 = icmp eq i32 %i.5142, 0
  %or.cond92 = select i1 %or.cond91, i1 %cmp67, i1 false
  br i1 %or.cond92, label %if.then75, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %if.then63.thread, %if.then63
  %or.cond91159 = phi i1 [ %or.cond91155, %if.then63.thread ], [ %or.cond91, %if.then63 ]
  %retry.4143158 = phi i32 [ %call52, %if.then63.thread ], [ %retry.4143, %if.then63 ]
  %or.cond93.not = xor i1 %or.cond91159, true
  %tobool74 = icmp ne i32 %retry.4143158, 0
  %or.cond94 = select i1 %or.cond93.not, i1 %tobool74, i1 false
  br i1 %or.cond94, label %if.then75, label %if.end77

if.then75:                                        ; preds = %lor.lhs.false69, %if.then63
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_s_out, align 8, !tbaa !3
  %call76 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.538, i64 0, i64 0)) #12
  br label %cleanup87

if.end77:                                         ; preds = %lor.lhs.false69
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call78 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.510, i64 0, i64 0)) #12
  %call79 = call i64 @SSL_get_verify_result(%struct.ssl_st* noundef %con) #12
  %cmp80.not = icmp eq i64 %call79, 0
  br i1 %cmp80.not, label %if.end85, label %if.then82

if.then82:                                        ; preds = %if.end77
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call83 = call i8* @X509_verify_cert_error_string(i64 noundef %call79) #12
  %call84 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.539, i64 0, i64 0), i8* noundef %call83) #12
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end77
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %11) #12
  br label %cleanup87

if.end86:                                         ; preds = %do.body, %while.body, %if.end60
  call fastcc void @print_connection_info(%struct.ssl_st* noundef %con) #15
  br label %cleanup87

cleanup87:                                        ; preds = %if.then4, %cleanup, %if.end86, %if.end85, %if.then75
  %retval.3 = phi i32 [ 1, %if.then75 ], [ 0, %if.end85 ], [ 1, %if.end86 ], [ 0, %cleanup ], [ 0, %if.then4 ]
  ret i32 %retval.3
}

declare dso_local i32 @SSL_read(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @do_ssl_shutdown(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @print_ssl_summary(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_SSL_SESSION(%struct.bio_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @SSL_get0_peer_certificate(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_X509(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local void @dump_cert_text(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i8* @SSL_get_shared_ciphers(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_cipher_st* @SSL_get_current_cipher(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ssl_print_sigalgs(%struct.bio_st* noundef, %struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ssl_print_point_formats(%struct.bio_st* noundef, %struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ssl_print_groups(%struct.bio_st* noundef, %struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @print_ca_names(%struct.bio_st* noundef, %struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_get0_next_proto_negotiated(%struct.ssl_st* noundef, i8** noundef, i32* noundef) local_unnamed_addr #2

declare dso_local %struct.srtp_protection_profile_st* @SSL_get_selected_srtp_profile(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_session_reused(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_get_options(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_export_keying_material(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %union.bio_addr_st* @BIO_ADDR_new() local_unnamed_addr #2

declare dso_local i32 @DTLSv1_listen(%struct.ssl_st* noundef, %union.bio_addr_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_stateless(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_connect(i32 noundef, %union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @BIO_ADDR_free(%union.bio_addr_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_accept(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_retryable(%struct.ssl_st* noundef %con, i32 noundef %i) unnamed_addr #0 {
entry:
  %call = tail call i32 @SSL_get_error(%struct.ssl_st* noundef %con, i32 noundef %i) #12
  %0 = and i32 %call, -5
  %.not = icmp ne i32 %0, 1
  %cmp2 = icmp ne i32 %call, 6
  %narrow = and i1 %cmp2, %.not
  %1 = zext i1 %narrow to i32
  ret i32 %1
}

declare dso_local i64 @SSL_get_verify_result(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i8* @X509_verify_cert_error_string(i64 noundef) local_unnamed_addr #2

declare dso_local %struct.bio_method_st* @BIO_f_buffer() local_unnamed_addr #2

declare dso_local %struct.bio_method_st* @BIO_f_ssl() local_unnamed_addr #2

declare dso_local i64 @BIO_int_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_test_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_get_retry_reason(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_sleep() unnamed_addr #0 {
entry:
  %call = tail call i32 @usleep(i32 noundef 1000000) #12
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

declare dso_local %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @SSL_CIPHER_get_version(%struct.ssl_cipher_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_SESSION_print(%struct.bio_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_print(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @app_isdir(i8* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @usleep(i32 noundef) local_unnamed_addr #2

declare dso_local void @BUF_reverse(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_has_matching_session_id(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_sess_set_new_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, %struct.ssl_session_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @add_session(%struct.ssl_st* nocapture noundef readnone %ssl, %struct.ssl_session_st* noundef %session) #0 {
entry:
  %p = alloca i8*, align 8
  %call = tail call i8* @app_malloc(i64 noundef 40, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.584, i64 0, i64 0)) #12
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %idlen = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %idlen to i32*
  %call1 = tail call i8* @SSL_SESSION_get_id(%struct.ssl_session_st* noundef %session, i32* noundef nonnull %1) #12
  %call2 = tail call i32 @i2d_SSL_SESSION(%struct.ssl_session_st* noundef %session, i8** noundef null) #12
  %derlen = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %derlen to i32*
  store i32 %call2, i32* %2, align 8, !tbaa !72
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.585, i64 0, i64 0)) #12
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 3593) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i8* @SSL_SESSION_get_id(%struct.ssl_session_st* noundef %session, i32* noundef null) #12
  %4 = load i32, i32* %1, align 8, !tbaa !73
  %conv = zext i32 %4 to i64
  %call7 = tail call i8* @CRYPTO_memdup(i8* noundef %call5, i64 noundef %conv, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 3597) #12
  %id = bitcast i8* %call to i8**
  store i8* %call7, i8** %id, align 8, !tbaa !59
  %5 = load i32, i32* %2, align 8, !tbaa !72
  %conv9 = sext i32 %5 to i64
  %call10 = tail call i8* @app_malloc(i64 noundef %conv9, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.586, i64 0, i64 0)) #12
  %der = getelementptr inbounds i8, i8* %call, i64 16
  %6 = bitcast i8* %der to i8**
  store i8* %call10, i8** %6, align 8, !tbaa !61
  %7 = load i8*, i8** %id, align 8, !tbaa !59
  %tobool.not = icmp eq i8* %7, null
  br i1 %tobool.not, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.587, i64 0, i64 0)) #12
  %9 = load i8*, i8** %id, align 8, !tbaa !59
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 3601) #12
  %10 = load i8*, i8** %6, align 8, !tbaa !61
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 3602) #12
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 3603) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  store i8* %call10, i8** %p, align 8, !tbaa !3
  %call18 = call i32 @i2d_SSL_SESSION(%struct.ssl_session_st* noundef %session, i8** noundef nonnull %p) #12
  %11 = load i32, i32* %2, align 8, !tbaa !72
  %cmp20.not = icmp eq i32 %call18, %11
  br i1 %cmp20.not, label %if.end26, label %if.then22

if.then22:                                        ; preds = %if.end16
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call23 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.588, i64 0, i64 0)) #12
  %13 = load i8*, i8** %id, align 8, !tbaa !59
  call void @CRYPTO_free(i8* noundef %13, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 3611) #12
  %14 = load i8*, i8** %6, align 8, !tbaa !61
  call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 3612) #12
  call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 3613) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %15 = load %struct.simple_ssl_session_st*, %struct.simple_ssl_session_st** @first, align 8, !tbaa !3
  %next = getelementptr inbounds i8, i8* %call, i64 32
  %16 = bitcast i8* %next to %struct.simple_ssl_session_st**
  store %struct.simple_ssl_session_st* %15, %struct.simple_ssl_session_st** %16, align 8, !tbaa !62
  store i8* %call, i8** bitcast (%struct.simple_ssl_session_st** @first to i8**), align 8, !tbaa !3
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call27 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.589, i64 0, i64 0)) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then22, %if.then12, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 0
}

declare dso_local void @SSL_CTX_sess_set_get_cb(%struct.ssl_ctx_st* noundef, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.ssl_session_st* @get_session(%struct.ssl_st* nocapture noundef readnone %ssl, i8* noundef readonly %id, i32 noundef %idlen, i32* nocapture noundef writeonly %do_copy) #0 {
entry:
  %p = alloca i8*, align 8
  store i32 0, i32* %do_copy, align 4, !tbaa !7
  %sess.016 = load %struct.simple_ssl_session_st*, %struct.simple_ssl_session_st** @first, align 8, !tbaa !3
  %tobool.not17 = icmp eq %struct.simple_ssl_session_st* %sess.016, null
  br i1 %tobool.not17, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %conv = sext i32 %idlen to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %sess.018 = phi %struct.simple_ssl_session_st* [ %sess.016, %for.body.lr.ph ], [ %sess.0, %for.inc ]
  %idlen1 = getelementptr inbounds %struct.simple_ssl_session_st, %struct.simple_ssl_session_st* %sess.018, i64 0, i32 1
  %0 = load i32, i32* %idlen1, align 8, !tbaa !73
  %cmp = icmp eq i32 %0, %idlen
  br i1 %cmp, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %id2 = getelementptr inbounds %struct.simple_ssl_session_st, %struct.simple_ssl_session_st* %sess.018, i64 0, i32 0
  %1 = load i8*, i8** %id2, align 8, !tbaa !59
  %call = tail call i32 @memcmp(i8* noundef %1, i8* noundef %id, i64 noundef %conv) #14
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #13
  %der = getelementptr inbounds %struct.simple_ssl_session_st, %struct.simple_ssl_session_st* %sess.018, i64 0, i32 2
  %3 = load i8*, i8** %der, align 8, !tbaa !61
  store i8* %3, i8** %p, align 8, !tbaa !3
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.590, i64 0, i64 0)) #12
  %derlen = getelementptr inbounds %struct.simple_ssl_session_st, %struct.simple_ssl_session_st* %sess.018, i64 0, i32 3
  %5 = load i32, i32* %derlen, align 8, !tbaa !72
  %conv5 = sext i32 %5 to i64
  %call6 = call %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv5) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #13
  br label %cleanup

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %next = getelementptr inbounds %struct.simple_ssl_session_st, %struct.simple_ssl_session_st* %sess.018, i64 0, i32 4
  %sess.0 = load %struct.simple_ssl_session_st*, %struct.simple_ssl_session_st** %next, align 8, !tbaa !3
  %tobool.not = icmp eq %struct.simple_ssl_session_st* %sess.0, null
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !74

for.end:                                          ; preds = %for.inc, %entry
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.591, i64 0, i64 0)) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi %struct.ssl_session_st* [ %call6, %if.then ], [ null, %for.end ]
  ret %struct.ssl_session_st* %retval.0
}

declare dso_local void @SSL_CTX_sess_set_remove_cb(%struct.ssl_ctx_st* noundef, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @del_session(%struct.ssl_ctx_st* nocapture noundef readnone %sctx, %struct.ssl_session_st* noundef %session) #0 {
entry:
  %idlen = alloca i32, align 4
  %0 = bitcast i32* %idlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %call = call i8* @SSL_SESSION_get_id(%struct.ssl_session_st* noundef %session, i32* noundef nonnull %idlen) #12
  %sess.031 = load %struct.simple_ssl_session_st*, %struct.simple_ssl_session_st** @first, align 8, !tbaa !3
  %tobool.not32 = icmp eq %struct.simple_ssl_session_st* %sess.031, null
  br i1 %tobool.not32, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %1 = load i32, i32* %idlen, align 4, !tbaa !7
  %conv = zext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end10
  %sess.034 = phi %struct.simple_ssl_session_st* [ %sess.031, %for.body.lr.ph ], [ %sess.0, %if.end10 ]
  %prev.033 = phi %struct.simple_ssl_session_st* [ null, %for.body.lr.ph ], [ %sess.034, %if.end10 ]
  %idlen1 = getelementptr inbounds %struct.simple_ssl_session_st, %struct.simple_ssl_session_st* %sess.034, i64 0, i32 1
  %2 = load i32, i32* %idlen1, align 8, !tbaa !73
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %for.body
  %id2 = getelementptr inbounds %struct.simple_ssl_session_st, %struct.simple_ssl_session_st* %sess.034, i64 0, i32 0
  %3 = load i8*, i8** %id2, align 8, !tbaa !59
  %call3 = call i32 @memcmp(i8* noundef %3, i8* noundef %call, i64 noundef %conv) #14
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %tobool5.not = icmp eq %struct.simple_ssl_session_st* %prev.033, null
  %next8 = getelementptr inbounds %struct.simple_ssl_session_st, %struct.simple_ssl_session_st* %sess.034, i64 0, i32 4
  %4 = load %struct.simple_ssl_session_st*, %struct.simple_ssl_session_st** %next8, align 8, !tbaa !62
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  %next7 = getelementptr inbounds %struct.simple_ssl_session_st, %struct.simple_ssl_session_st* %prev.033, i64 0, i32 4
  store %struct.simple_ssl_session_st* %4, %struct.simple_ssl_session_st** %next7, align 8, !tbaa !62
  br label %if.end

if.else:                                          ; preds = %if.then
  %id2.le = getelementptr inbounds %struct.simple_ssl_session_st, %struct.simple_ssl_session_st* %sess.034, i64 0, i32 0
  store %struct.simple_ssl_session_st* %4, %struct.simple_ssl_session_st** @first, align 8, !tbaa !3
  %.pre = load i8*, i8** %id2.le, align 8, !tbaa !59
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %5 = phi i8* [ %.pre, %if.else ], [ %3, %if.then6 ]
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 3651) #12
  %der = getelementptr inbounds %struct.simple_ssl_session_st, %struct.simple_ssl_session_st* %sess.034, i64 0, i32 2
  %6 = load i8*, i8** %der, align 8, !tbaa !61
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 3652) #12
  %7 = bitcast %struct.simple_ssl_session_st* %sess.034 to i8*
  call void @CRYPTO_free(i8* noundef nonnull %7, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i64 0, i64 0), i32 noundef 3653) #12
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true, %for.body
  %next11 = getelementptr inbounds %struct.simple_ssl_session_st, %struct.simple_ssl_session_st* %sess.034, i64 0, i32 4
  %sess.0 = load %struct.simple_ssl_session_st*, %struct.simple_ssl_session_st** %next11, align 8, !tbaa !3
  %tobool.not = icmp eq %struct.simple_ssl_session_st* %sess.0, null
  br i1 %tobool.not, label %cleanup, label %for.body, !llvm.loop !75

cleanup:                                          ; preds = %if.end10, %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret void
}

declare dso_local i8* @SSL_SESSION_get_id(%struct.ssl_session_st* noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_SSL_SESSION(%struct.ssl_session_st* noundef, i8** noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind readnone willreturn }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !8, i64 0}
!10 = !{!"verify_options_st", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!11 = !{!10, !8, i64 12}
!12 = !{!10, !8, i64 4}
!13 = !{!14, !8, i64 60}
!14 = !{!"tlsextstatusctx_st", !8, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !8, i64 56, !8, i64 60}
!15 = !{!14, !8, i64 0}
!16 = !{!14, !4, i64 40}
!17 = !{!14, !4, i64 48}
!18 = !{!14, !4, i64 8}
!19 = !{!5, !5, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !5, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !5, i64 0}
!26 = !{!27, !4, i64 0}
!27 = !{!"tlsextctx_st", !4, i64 0, !4, i64 8, !8, i64 16}
!28 = !{!27, !8, i64 16}
!29 = !{!30, !4, i64 0}
!30 = !{!"tlsextnextprotoctx_st", !4, i64 0, !25, i64 8}
!31 = !{!32, !4, i64 0}
!32 = !{!"tlsextalpnctx_st", !4, i64 0, !25, i64 8}
!33 = !{!27, !4, i64 8}
!34 = !{!14, !4, i64 16}
!35 = !{!14, !4, i64 32}
!36 = !{!14, !4, i64 24}
!37 = distinct !{!37, !21}
!38 = !{!30, !25, i64 8}
!39 = distinct !{!39, !21}
!40 = !{!32, !25, i64 8}
!41 = distinct !{!41, !21}
!42 = distinct !{!42, !21}
!43 = !{i64 2150895841}
!44 = distinct !{!44, !21}
!45 = distinct !{!45, !21}
!46 = distinct !{!46, !21}
!47 = distinct !{!47, !21}
!48 = distinct !{!48, !21}
!49 = distinct !{!49, !21}
!50 = distinct !{!50, !21}
!51 = !{i64 2150891934}
!52 = distinct !{!52, !21, !53}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = distinct !{!54, !21, !55, !53}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = distinct !{!56, !21}
!57 = distinct !{!57, !21}
!58 = distinct !{!58, !21}
!59 = !{!60, !4, i64 0}
!60 = !{!"simple_ssl_session_st", !4, i64 0, !8, i64 8, !4, i64 16, !8, i64 24, !4, i64 32}
!61 = !{!60, !4, i64 16}
!62 = !{!60, !4, i64 32}
!63 = distinct !{!63, !21}
!64 = !{!14, !8, i64 56}
!65 = distinct !{!65, !21}
!66 = !{!67, !4, i64 0}
!67 = !{!"srtp_protection_profile_st", !4, i64 0, !25, i64 8}
!68 = distinct !{!68, !21}
!69 = !{!70, !4, i64 0}
!70 = !{!"srpsrvparm_st", !4, i64 0, !4, i64 8, !4, i64 16}
!71 = distinct !{!71, !21}
!72 = !{!60, !8, i64 24}
!73 = !{!60, !8, i64 8}
!74 = distinct !{!74, !21}
!75 = distinct !{!75, !21}

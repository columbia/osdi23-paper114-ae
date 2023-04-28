; ModuleID = 'error.c'
source_filename = "error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"CIPHER - The selected feature is not available\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"CIPHER - Bad input parameters\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"CIPHER - Failed to allocate memory\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"CIPHER - Input data contains invalid padding and is rejected\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"CIPHER - Decryption of block requires a full block\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"CIPHER - Authentication failed (for AEAD modes)\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"CIPHER - The context is invalid. For example, because it was freed\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"DHM - Bad input parameters\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"DHM - Reading of the DHM parameters failed\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"DHM - Making of the DHM parameters failed\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"DHM - Reading of the public values failed\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"DHM - Making of the public value failed\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"DHM - Calculation of the DHM secret failed\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"DHM - The ASN.1 data is not formatted correctly\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"DHM - Allocation of memory failed\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"DHM - Read or write of file failed\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"DHM - Setting the modulus and generator failed\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"ECP - Bad input parameters to function\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"ECP - The buffer is too small to write to\00", align 1
@.str.19 = private unnamed_addr constant [96 x i8] c"ECP - The requested feature is not available, for example, the requested curve is not supported\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"ECP - The signature is not valid\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"ECP - Memory allocation failed\00", align 1
@.str.22 = private unnamed_addr constant [64 x i8] c"ECP - Generation of random value, such as ephemeral key, failed\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"ECP - Invalid private or public key\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"ECP - The buffer contains a valid signature followed by more data\00", align 1
@.str.25 = private unnamed_addr constant [77 x i8] c"ECP - Operation in progress, call again with the same parameters to continue\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"MD - The selected feature is not available\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"MD - Bad input parameters to function\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"MD - Failed to allocate memory\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"MD - Opening or reading of file failed\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"PEM - No PEM header or footer found\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"PEM - PEM string is not as expected\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"PEM - Failed to allocate memory\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"PEM - RSA IV is not in hex-format\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"PEM - Unsupported key encryption algorithm\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"PEM - Private key password can't be empty\00", align 1
@.str.36 = private unnamed_addr constant [71 x i8] c"PEM - Given private key password does not allow for correct decryption\00", align 1
@.str.37 = private unnamed_addr constant [63 x i8] c"PEM - Unavailable feature, e.g. hashing/encryption combination\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"PEM - Bad input parameters to function\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"PK - Memory allocation failed\00", align 1
@.str.40 = private unnamed_addr constant [60 x i8] c"PK - Type mismatch, eg attempt to encrypt with an ECDSA key\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"PK - Bad input parameters to function\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"PK - Read/write of file failed\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"PK - Unsupported key version\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"PK - Invalid key tag or value\00", align 1
@.str.45 = private unnamed_addr constant [66 x i8] c"PK - Key algorithm is unsupported (only RSA and EC are supported)\00", align 1
@.str.46 = private unnamed_addr constant [41 x i8] c"PK - Private key password can't be empty\00", align 1
@.str.47 = private unnamed_addr constant [70 x i8] c"PK - Given private key password does not allow for correct decryption\00", align 1
@.str.48 = private unnamed_addr constant [72 x i8] c"PK - The pubkey tag or value is invalid (only RSA and EC are supported)\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"PK - The algorithm tag or value is invalid\00", align 1
@.str.50 = private unnamed_addr constant [68 x i8] c"PK - Elliptic curve is unsupported (only NIST curves are supported)\00", align 1
@.str.51 = private unnamed_addr constant [56 x i8] c"PK - Unavailable feature, e.g. RSA disabled for RSA key\00", align 1
@.str.52 = private unnamed_addr constant [65 x i8] c"PK - The buffer contains a valid signature followed by more data\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"PK - The output buffer is too small\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c"PKCS12 - Bad input parameters to function\00", align 1
@.str.55 = private unnamed_addr constant [67 x i8] c"PKCS12 - Feature not available, e.g. unsupported encryption scheme\00", align 1
@.str.56 = private unnamed_addr constant [40 x i8] c"PKCS12 - PBE ASN.1 data not as expected\00", align 1
@.str.57 = private unnamed_addr constant [74 x i8] c"PKCS12 - Given private key password does not allow for correct decryption\00", align 1
@.str.58 = private unnamed_addr constant [41 x i8] c"PKCS5 - Bad input parameters to function\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"PKCS5 - Unexpected ASN.1 data\00", align 1
@.str.60 = private unnamed_addr constant [57 x i8] c"PKCS5 - Requested encryption or digest alg not available\00", align 1
@.str.61 = private unnamed_addr constant [73 x i8] c"PKCS5 - Given private key password does not allow for correct decryption\00", align 1
@.str.62 = private unnamed_addr constant [39 x i8] c"RSA - Bad input parameters to function\00", align 1
@.str.63 = private unnamed_addr constant [58 x i8] c"RSA - Input data contains invalid padding and is rejected\00", align 1
@.str.64 = private unnamed_addr constant [50 x i8] c"RSA - Something failed during generation of a key\00", align 1
@.str.65 = private unnamed_addr constant [59 x i8] c"RSA - Key failed to pass the validity check of the library\00", align 1
@.str.66 = private unnamed_addr constant [38 x i8] c"RSA - The public key operation failed\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"RSA - The private key operation failed\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"RSA - The PKCS#1 verification failed\00", align 1
@.str.69 = private unnamed_addr constant [59 x i8] c"RSA - The output buffer for decryption is not large enough\00", align 1
@.str.70 = private unnamed_addr constant [56 x i8] c"RSA - The random generator failed to generate non-zeros\00", align 1
@.str.71 = private unnamed_addr constant [64 x i8] c"SSL - A cryptographic operation is in progress. Try again later\00", align 1
@.str.72 = private unnamed_addr constant [45 x i8] c"SSL - The requested feature is not available\00", align 1
@.str.73 = private unnamed_addr constant [39 x i8] c"SSL - Bad input parameters to function\00", align 1
@.str.74 = private unnamed_addr constant [45 x i8] c"SSL - Verification of the message MAC failed\00", align 1
@.str.75 = private unnamed_addr constant [41 x i8] c"SSL - An invalid SSL record was received\00", align 1
@.str.76 = private unnamed_addr constant [38 x i8] c"SSL - The connection indicated an EOF\00", align 1
@.str.77 = private unnamed_addr constant [61 x i8] c"SSL - A message could not be parsed due to a syntactic error\00", align 1
@.str.78 = private unnamed_addr constant [44 x i8] c"SSL - No RNG was provided to the SSL module\00", align 1
@.str.79 = private unnamed_addr constant [96 x i8] c"SSL - No client certification received from the client, but required by the authentication mode\00", align 1
@.str.80 = private unnamed_addr constant [83 x i8] c"SSL - Client received an extended server hello containing an unsupported extension\00", align 1
@.str.81 = private unnamed_addr constant [61 x i8] c"SSL - No ALPN protocols supported that the client advertises\00", align 1
@.str.82 = private unnamed_addr constant [67 x i8] c"SSL - The own private key or pre-shared key is not set, but needed\00", align 1
@.str.83 = private unnamed_addr constant [50 x i8] c"SSL - No CA Chain is set, but required to operate\00", align 1
@.str.84 = private unnamed_addr constant [55 x i8] c"SSL - An unexpected message was received from our peer\00", align 1
@.str.85 = private unnamed_addr constant [55 x i8] c"SSL - A fatal alert message was received from our peer\00", align 1
@.str.86 = private unnamed_addr constant [62 x i8] c"SSL - No server could be identified matching the client's SNI\00", align 1
@.str.87 = private unnamed_addr constant [69 x i8] c"SSL - The peer notified us that the connection is going to be closed\00", align 1
@.str.88 = private unnamed_addr constant [61 x i8] c"SSL - Processing of the Certificate handshake message failed\00", align 1
@.str.89 = private unnamed_addr constant [31 x i8] c"SSL - Memory allocation failed\00", align 1
@.str.90 = private unnamed_addr constant [57 x i8] c"SSL - Hardware acceleration function returned with error\00", align 1
@.str.91 = private unnamed_addr constant [63 x i8] c"SSL - Hardware acceleration function skipped / left alone data\00", align 1
@.str.92 = private unnamed_addr constant [55 x i8] c"SSL - Handshake protocol not within min/max boundaries\00", align 1
@.str.93 = private unnamed_addr constant [39 x i8] c"SSL - The handshake negotiation failed\00", align 1
@.str.94 = private unnamed_addr constant [33 x i8] c"SSL - Session ticket has expired\00", align 1
@.str.95 = private unnamed_addr constant [85 x i8] c"SSL - Public key type mismatch (eg, asked for RSA key exchange and presented EC key)\00", align 1
@.str.96 = private unnamed_addr constant [51 x i8] c"SSL - Unknown identity received (eg, PSK identity)\00", align 1
@.str.97 = private unnamed_addr constant [68 x i8] c"SSL - Internal error (eg, unexpected failure in lower-level module)\00", align 1
@.str.98 = private unnamed_addr constant [61 x i8] c"SSL - A counter would wrap (eg, too many messages exchanged)\00", align 1
@.str.99 = private unnamed_addr constant [57 x i8] c"SSL - Unexpected message at ServerHello in renegotiation\00", align 1
@.str.100 = private unnamed_addr constant [52 x i8] c"SSL - DTLS client must retry for hello verification\00", align 1
@.str.101 = private unnamed_addr constant [58 x i8] c"SSL - A buffer is too small to receive or write a message\00", align 1
@.str.102 = private unnamed_addr constant [76 x i8] c"SSL - No data of requested type currently available on underlying transport\00", align 1
@.str.103 = private unnamed_addr constant [39 x i8] c"SSL - Connection requires a write call\00", align 1
@.str.104 = private unnamed_addr constant [30 x i8] c"SSL - The operation timed out\00", align 1
@.str.105 = private unnamed_addr constant [58 x i8] c"SSL - The client initiated a reconnect from the same port\00", align 1
@.str.106 = private unnamed_addr constant [52 x i8] c"SSL - Record header looks valid but is not expected\00", align 1
@.str.107 = private unnamed_addr constant [61 x i8] c"SSL - The alert message received indicates a non-fatal error\00", align 1
@.str.108 = private unnamed_addr constant [75 x i8] c"SSL - A field in a message was incorrect or inconsistent with other fields\00", align 1
@.str.109 = private unnamed_addr constant [85 x i8] c"SSL - Internal-only message signaling that further message-processing should be done\00", align 1
@.str.110 = private unnamed_addr constant [54 x i8] c"SSL - The asynchronous operation is not completed yet\00", align 1
@.str.111 = private unnamed_addr constant [67 x i8] c"SSL - Internal-only message signaling that a message arrived early\00", align 1
@.str.112 = private unnamed_addr constant [66 x i8] c"SSL - An encrypted DTLS-frame with an unexpected CID was received\00", align 1
@.str.113 = private unnamed_addr constant [72 x i8] c"SSL - An operation failed due to an unexpected version or configuration\00", align 1
@.str.114 = private unnamed_addr constant [34 x i8] c"SSL - Invalid value in SSL config\00", align 1
@.str.115 = private unnamed_addr constant [68 x i8] c"X509 - Unavailable feature, e.g. RSA hashing/encryption combination\00", align 1
@.str.116 = private unnamed_addr constant [32 x i8] c"X509 - Requested OID is unknown\00", align 1
@.str.117 = private unnamed_addr constant [71 x i8] c"X509 - The CRT/CRL/CSR format is invalid, e.g. different type expected\00", align 1
@.str.118 = private unnamed_addr constant [50 x i8] c"X509 - The CRT/CRL/CSR version element is invalid\00", align 1
@.str.119 = private unnamed_addr constant [42 x i8] c"X509 - The serial tag or value is invalid\00", align 1
@.str.120 = private unnamed_addr constant [45 x i8] c"X509 - The algorithm tag or value is invalid\00", align 1
@.str.121 = private unnamed_addr constant [40 x i8] c"X509 - The name tag or value is invalid\00", align 1
@.str.122 = private unnamed_addr constant [40 x i8] c"X509 - The date tag or value is invalid\00", align 1
@.str.123 = private unnamed_addr constant [42 x i8] c"X509 - The signature tag or value invalid\00", align 1
@.str.124 = private unnamed_addr constant [45 x i8] c"X509 - The extension tag or value is invalid\00", align 1
@.str.125 = private unnamed_addr constant [53 x i8] c"X509 - CRT/CRL/CSR has an unsupported version number\00", align 1
@.str.126 = private unnamed_addr constant [48 x i8] c"X509 - Signature algorithm (oid) is unsupported\00", align 1
@.str.127 = private unnamed_addr constant [78 x i8] c"X509 - Signature algorithms do not match. (see \\c ::mbedtls_x509_crt sig_oid)\00", align 1
@.str.128 = private unnamed_addr constant [79 x i8] c"X509 - Certificate verification failed, e.g. CRL, CA or signature check failed\00", align 1
@.str.129 = private unnamed_addr constant [43 x i8] c"X509 - Format not recognized as DER or PEM\00", align 1
@.str.130 = private unnamed_addr constant [21 x i8] c"X509 - Input invalid\00", align 1
@.str.131 = private unnamed_addr constant [35 x i8] c"X509 - Allocation of memory failed\00", align 1
@.str.132 = private unnamed_addr constant [33 x i8] c"X509 - Read/write of file failed\00", align 1
@.str.133 = private unnamed_addr constant [39 x i8] c"X509 - Destination buffer is too small\00", align 1
@.str.134 = private unnamed_addr constant [84 x i8] c"X509 - A fatal error occurred, eg the chain is too long or the vrfy callback failed\00", align 1
@.str.135 = private unnamed_addr constant [25 x i8] c"AES - Invalid key length\00", align 1
@.str.136 = private unnamed_addr constant [32 x i8] c"AES - Invalid data input length\00", align 1
@.str.137 = private unnamed_addr constant [25 x i8] c"AES - Invalid input data\00", align 1
@.str.138 = private unnamed_addr constant [22 x i8] c"ARIA - Bad input data\00", align 1
@.str.139 = private unnamed_addr constant [33 x i8] c"ARIA - Invalid data input length\00", align 1
@.str.140 = private unnamed_addr constant [55 x i8] c"ASN1 - Out of data when parsing an ASN1 data structure\00", align 1
@.str.141 = private unnamed_addr constant [43 x i8] c"ASN1 - ASN1 tag was of an unexpected value\00", align 1
@.str.142 = private unnamed_addr constant [67 x i8] c"ASN1 - Error when trying to determine the length or invalid length\00", align 1
@.str.143 = private unnamed_addr constant [50 x i8] c"ASN1 - Actual length differs from expected length\00", align 1
@.str.144 = private unnamed_addr constant [23 x i8] c"ASN1 - Data is invalid\00", align 1
@.str.145 = private unnamed_addr constant [32 x i8] c"ASN1 - Memory allocation failed\00", align 1
@.str.146 = private unnamed_addr constant [58 x i8] c"ASN1 - Buffer too small when writing ASN.1 data structure\00", align 1
@.str.147 = private unnamed_addr constant [33 x i8] c"BASE64 - Output buffer too small\00", align 1
@.str.148 = private unnamed_addr constant [36 x i8] c"BASE64 - Invalid character in input\00", align 1
@.str.149 = private unnamed_addr constant [67 x i8] c"BIGNUM - An error occurred while reading from or writing to a file\00", align 1
@.str.150 = private unnamed_addr constant [42 x i8] c"BIGNUM - Bad input parameters to function\00", align 1
@.str.151 = private unnamed_addr constant [59 x i8] c"BIGNUM - There is an invalid character in the digit string\00", align 1
@.str.152 = private unnamed_addr constant [45 x i8] c"BIGNUM - The buffer is too small to write to\00", align 1
@.str.153 = private unnamed_addr constant [70 x i8] c"BIGNUM - The input arguments are negative or result in illegal output\00", align 1
@.str.154 = private unnamed_addr constant [71 x i8] c"BIGNUM - The input argument for division is zero, which is not allowed\00", align 1
@.str.155 = private unnamed_addr constant [48 x i8] c"BIGNUM - The input arguments are not acceptable\00", align 1
@.str.156 = private unnamed_addr constant [34 x i8] c"BIGNUM - Memory allocation failed\00", align 1
@.str.157 = private unnamed_addr constant [26 x i8] c"CAMELLIA - Bad input data\00", align 1
@.str.158 = private unnamed_addr constant [37 x i8] c"CAMELLIA - Invalid data input length\00", align 1
@.str.159 = private unnamed_addr constant [43 x i8] c"CCM - Bad input parameters to the function\00", align 1
@.str.160 = private unnamed_addr constant [38 x i8] c"CCM - Authenticated decryption failed\00", align 1
@.str.161 = private unnamed_addr constant [38 x i8] c"CHACHA20 - Invalid input parameter(s)\00", align 1
@.str.162 = private unnamed_addr constant [75 x i8] c"CHACHAPOLY - The requested operation is not permitted in the current state\00", align 1
@.str.163 = private unnamed_addr constant [69 x i8] c"CHACHAPOLY - Authenticated decryption failed: data was not authentic\00", align 1
@.str.164 = private unnamed_addr constant [37 x i8] c"CTR_DRBG - The entropy source failed\00", align 1
@.str.165 = private unnamed_addr constant [57 x i8] c"CTR_DRBG - The requested random buffer length is too big\00", align 1
@.str.166 = private unnamed_addr constant [62 x i8] c"CTR_DRBG - The input (entropy + additional data) is too large\00", align 1
@.str.167 = private unnamed_addr constant [39 x i8] c"CTR_DRBG - Read or write error in file\00", align 1
@.str.168 = private unnamed_addr constant [43 x i8] c"DES - The data input has an invalid length\00", align 1
@.str.169 = private unnamed_addr constant [42 x i8] c"ENTROPY - Critical entropy source failure\00", align 1
@.str.170 = private unnamed_addr constant [39 x i8] c"ENTROPY - No more sources can be added\00", align 1
@.str.171 = private unnamed_addr constant [45 x i8] c"ENTROPY - No sources have been added to poll\00", align 1
@.str.172 = private unnamed_addr constant [52 x i8] c"ENTROPY - No strong sources have been added to poll\00", align 1
@.str.173 = private unnamed_addr constant [35 x i8] c"ENTROPY - Read/write error in file\00", align 1
@.str.174 = private unnamed_addr constant [22 x i8] c"ERROR - Generic error\00", align 1
@.str.175 = private unnamed_addr constant [37 x i8] c"ERROR - This is a bug in the library\00", align 1
@.str.176 = private unnamed_addr constant [39 x i8] c"PLATFORM - Hardware accelerator failed\00", align 1
@.str.177 = private unnamed_addr constant [66 x i8] c"PLATFORM - The requested feature is not supported by the platform\00", align 1
@.str.178 = private unnamed_addr constant [38 x i8] c"GCM - Authenticated decryption failed\00", align 1
@.str.179 = private unnamed_addr constant [39 x i8] c"GCM - Bad input parameters to function\00", align 1
@.str.180 = private unnamed_addr constant [36 x i8] c"GCM - An output buffer is too small\00", align 1
@.str.181 = private unnamed_addr constant [40 x i8] c"HKDF - Bad input parameters to function\00", align 1
@.str.182 = private unnamed_addr constant [53 x i8] c"HMAC_DRBG - Too many random requested in single call\00", align 1
@.str.183 = private unnamed_addr constant [51 x i8] c"HMAC_DRBG - Input too large (Entropy + additional)\00", align 1
@.str.184 = private unnamed_addr constant [37 x i8] c"HMAC_DRBG - Read/write error in file\00", align 1
@.str.185 = private unnamed_addr constant [38 x i8] c"HMAC_DRBG - The entropy source failed\00", align 1
@.str.186 = private unnamed_addr constant [30 x i8] c"NET - Failed to open a socket\00", align 1
@.str.187 = private unnamed_addr constant [55 x i8] c"NET - The connection to the given server / port failed\00", align 1
@.str.188 = private unnamed_addr constant [35 x i8] c"NET - Binding of the socket failed\00", align 1
@.str.189 = private unnamed_addr constant [37 x i8] c"NET - Could not listen on the socket\00", align 1
@.str.190 = private unnamed_addr constant [47 x i8] c"NET - Could not accept the incoming connection\00", align 1
@.str.191 = private unnamed_addr constant [49 x i8] c"NET - Reading information from the socket failed\00", align 1
@.str.192 = private unnamed_addr constant [52 x i8] c"NET - Sending information through the socket failed\00", align 1
@.str.193 = private unnamed_addr constant [35 x i8] c"NET - Connection was reset by peer\00", align 1
@.str.194 = private unnamed_addr constant [57 x i8] c"NET - Failed to get an IP address for the given hostname\00", align 1
@.str.195 = private unnamed_addr constant [43 x i8] c"NET - Buffer is too small to hold the data\00", align 1
@.str.196 = private unnamed_addr constant [57 x i8] c"NET - The context is invalid, eg because it was free()ed\00", align 1
@.str.197 = private unnamed_addr constant [37 x i8] c"NET - Polling the net context failed\00", align 1
@.str.198 = private unnamed_addr constant [20 x i8] c"NET - Input invalid\00", align 1
@.str.199 = private unnamed_addr constant [23 x i8] c"OID - OID is not found\00", align 1
@.str.200 = private unnamed_addr constant [33 x i8] c"OID - output buffer is too small\00", align 1
@.str.201 = private unnamed_addr constant [38 x i8] c"POLY1305 - Invalid input parameter(s)\00", align 1
@.str.202 = private unnamed_addr constant [38 x i8] c"SHA1 - SHA-1 input data was malformed\00", align 1
@.str.203 = private unnamed_addr constant [42 x i8] c"SHA256 - SHA-256 input data was malformed\00", align 1
@.str.204 = private unnamed_addr constant [42 x i8] c"SHA512 - SHA-512 input data was malformed\00", align 1
@.str.205 = private unnamed_addr constant [26 x i8] c"UNKNOWN ERROR CODE (%04X)\00", align 1
@.str.206 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.207 = private unnamed_addr constant [4 x i8] c" : \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbedtls_high_level_strerr(i32 noundef %error_code) #0 {
entry:
  %retval = alloca i8*, align 8
  %error_code.addr = alloca i32, align 4
  %high_level_error_code = alloca i32, align 4
  store i32 %error_code, i32* %error_code.addr, align 4
  %0 = load i32, i32* %error_code.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %error_code.addr, align 4
  %sub = sub nsw i32 0, %1
  store i32 %sub, i32* %error_code.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %error_code.addr, align 4
  %and = and i32 %2, 65408
  store i32 %and, i32* %high_level_error_code, align 4
  %3 = load i32, i32* %high_level_error_code, align 4
  switch i32 %3, label %sw.default [
    i32 24704, label %sw.bb
    i32 24832, label %sw.bb1
    i32 24960, label %sw.bb2
    i32 25088, label %sw.bb3
    i32 25216, label %sw.bb4
    i32 25344, label %sw.bb5
    i32 25472, label %sw.bb6
    i32 12416, label %sw.bb7
    i32 12544, label %sw.bb8
    i32 12672, label %sw.bb9
    i32 12800, label %sw.bb10
    i32 12928, label %sw.bb11
    i32 13056, label %sw.bb12
    i32 13184, label %sw.bb13
    i32 13312, label %sw.bb14
    i32 13440, label %sw.bb15
    i32 13696, label %sw.bb16
    i32 20352, label %sw.bb17
    i32 20224, label %sw.bb18
    i32 20096, label %sw.bb19
    i32 19968, label %sw.bb20
    i32 19840, label %sw.bb21
    i32 19712, label %sw.bb22
    i32 19584, label %sw.bb23
    i32 19456, label %sw.bb24
    i32 19200, label %sw.bb25
    i32 20608, label %sw.bb26
    i32 20736, label %sw.bb27
    i32 20864, label %sw.bb28
    i32 20992, label %sw.bb29
    i32 4224, label %sw.bb30
    i32 4352, label %sw.bb31
    i32 4480, label %sw.bb32
    i32 4608, label %sw.bb33
    i32 4736, label %sw.bb34
    i32 4864, label %sw.bb35
    i32 4992, label %sw.bb36
    i32 5120, label %sw.bb37
    i32 5248, label %sw.bb38
    i32 16256, label %sw.bb39
    i32 16128, label %sw.bb40
    i32 16000, label %sw.bb41
    i32 15872, label %sw.bb42
    i32 15744, label %sw.bb43
    i32 15616, label %sw.bb44
    i32 15488, label %sw.bb45
    i32 15360, label %sw.bb46
    i32 15232, label %sw.bb47
    i32 15104, label %sw.bb48
    i32 14976, label %sw.bb49
    i32 14848, label %sw.bb50
    i32 14720, label %sw.bb51
    i32 14592, label %sw.bb52
    i32 14464, label %sw.bb53
    i32 8064, label %sw.bb54
    i32 7936, label %sw.bb55
    i32 7808, label %sw.bb56
    i32 7680, label %sw.bb57
    i32 12160, label %sw.bb58
    i32 12032, label %sw.bb59
    i32 11904, label %sw.bb60
    i32 11776, label %sw.bb61
    i32 16512, label %sw.bb62
    i32 16640, label %sw.bb63
    i32 16768, label %sw.bb64
    i32 16896, label %sw.bb65
    i32 17024, label %sw.bb66
    i32 17152, label %sw.bb67
    i32 17280, label %sw.bb68
    i32 17408, label %sw.bb69
    i32 17536, label %sw.bb70
    i32 28672, label %sw.bb71
    i32 28800, label %sw.bb72
    i32 28928, label %sw.bb73
    i32 29056, label %sw.bb74
    i32 29184, label %sw.bb75
    i32 29312, label %sw.bb76
    i32 29440, label %sw.bb77
    i32 29696, label %sw.bb78
    i32 29824, label %sw.bb79
    i32 29952, label %sw.bb80
    i32 30080, label %sw.bb81
    i32 30208, label %sw.bb82
    i32 30336, label %sw.bb83
    i32 30464, label %sw.bb84
    i32 30592, label %sw.bb85
    i32 30720, label %sw.bb86
    i32 30848, label %sw.bb87
    i32 31232, label %sw.bb88
    i32 32512, label %sw.bb89
    i32 32640, label %sw.bb90
    i32 28544, label %sw.bb91
    i32 28288, label %sw.bb92
    i32 28160, label %sw.bb93
    i32 28032, label %sw.bb94
    i32 27904, label %sw.bb95
    i32 27776, label %sw.bb96
    i32 27648, label %sw.bb97
    i32 27520, label %sw.bb98
    i32 27392, label %sw.bb99
    i32 27264, label %sw.bb100
    i32 27136, label %sw.bb101
    i32 26880, label %sw.bb102
    i32 26752, label %sw.bb103
    i32 26624, label %sw.bb104
    i32 26496, label %sw.bb105
    i32 26368, label %sw.bb106
    i32 26240, label %sw.bb107
    i32 26112, label %sw.bb108
    i32 25984, label %sw.bb109
    i32 25856, label %sw.bb110
    i32 25728, label %sw.bb111
    i32 24576, label %sw.bb112
    i32 24320, label %sw.bb113
    i32 24192, label %sw.bb114
    i32 8320, label %sw.bb115
    i32 8448, label %sw.bb116
    i32 8576, label %sw.bb117
    i32 8704, label %sw.bb118
    i32 8832, label %sw.bb119
    i32 8960, label %sw.bb120
    i32 9088, label %sw.bb121
    i32 9216, label %sw.bb122
    i32 9344, label %sw.bb123
    i32 9472, label %sw.bb124
    i32 9600, label %sw.bb125
    i32 9728, label %sw.bb126
    i32 9856, label %sw.bb127
    i32 9984, label %sw.bb128
    i32 10112, label %sw.bb129
    i32 10240, label %sw.bb130
    i32 10368, label %sw.bb131
    i32 10496, label %sw.bb132
    i32 10624, label %sw.bb133
    i32 12288, label %sw.bb134
  ]

sw.bb:                                            ; preds = %if.end
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb8:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb9:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb10:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb11:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb12:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb13:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb14:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb15:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb16:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb17:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb18:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb19:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb20:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb21:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb22:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.22, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb23:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb24:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.24, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb25:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.25, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb26:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb27:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb28:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb29:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb30:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb31:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb32:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb33:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb34:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.34, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb35:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb36:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.36, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb37:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.37, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb38:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb39:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb40:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.40, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb41:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.41, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb42:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb43:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.43, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb44:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb45:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.45, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb46:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.46, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb47:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.47, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb48:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.48, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb49:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.49, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb50:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.50, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb51:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.51, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb52:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.52, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb53:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb54:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.54, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb55:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.55, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb56:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb57:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.57, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb58:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.58, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb59:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb60:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.60, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb61:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.61, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb62:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.62, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb63:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.63, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb64:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.64, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb65:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.65, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb66:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.66, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb67:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.67, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb68:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.68, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb69:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.69, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb70:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.70, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb71:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.71, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb72:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.72, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb73:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.73, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb74:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.74, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb75:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.75, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb76:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.76, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb77:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.77, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb78:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.78, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb79:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.79, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb80:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.80, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb81:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.81, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb82:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.82, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb83:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.83, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb84:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.84, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb85:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.85, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb86:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.86, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb87:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.87, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb88:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.88, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb89:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.89, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb90:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.90, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb91:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.91, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb92:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.92, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb93:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.93, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb94:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.94, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb95:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.95, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb96:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.96, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb97:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.97, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb98:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.98, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb99:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.99, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb100:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.100, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb101:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.101, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb102:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.102, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb103:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.103, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb104:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.104, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb105:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.105, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb106:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.106, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb107:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.107, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb108:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.108, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb109:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.109, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb110:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.110, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb111:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.111, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb112:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.112, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb113:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.113, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb114:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.114, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb115:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.115, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb116:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.116, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb117:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.117, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb118:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.118, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb119:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.119, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb120:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.120, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb121:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.121, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb122:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.122, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb123:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.123, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb124:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.124, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb125:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.125, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb126:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.126, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb127:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.127, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb128:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.128, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb129:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.129, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb130:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.130, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb131:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.131, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb132:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.132, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb133:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.133, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb134:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.134, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb134, %sw.bb133, %sw.bb132, %sw.bb131, %sw.bb130, %sw.bb129, %sw.bb128, %sw.bb127, %sw.bb126, %sw.bb125, %sw.bb124, %sw.bb123, %sw.bb122, %sw.bb121, %sw.bb120, %sw.bb119, %sw.bb118, %sw.bb117, %sw.bb116, %sw.bb115, %sw.bb114, %sw.bb113, %sw.bb112, %sw.bb111, %sw.bb110, %sw.bb109, %sw.bb108, %sw.bb107, %sw.bb106, %sw.bb105, %sw.bb104, %sw.bb103, %sw.bb102, %sw.bb101, %sw.bb100, %sw.bb99, %sw.bb98, %sw.bb97, %sw.bb96, %sw.bb95, %sw.bb94, %sw.bb93, %sw.bb92, %sw.bb91, %sw.bb90, %sw.bb89, %sw.bb88, %sw.bb87, %sw.bb86, %sw.bb85, %sw.bb84, %sw.bb83, %sw.bb82, %sw.bb81, %sw.bb80, %sw.bb79, %sw.bb78, %sw.bb77, %sw.bb76, %sw.bb75, %sw.bb74, %sw.bb73, %sw.bb72, %sw.bb71, %sw.bb70, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i8*, i8** %retval, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbedtls_low_level_strerr(i32 noundef %error_code) #0 {
entry:
  %retval = alloca i8*, align 8
  %error_code.addr = alloca i32, align 4
  %low_level_error_code = alloca i32, align 4
  store i32 %error_code, i32* %error_code.addr, align 4
  %0 = load i32, i32* %error_code.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %error_code.addr, align 4
  %sub = sub nsw i32 0, %1
  store i32 %sub, i32* %error_code.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %error_code.addr, align 4
  %and = and i32 %2, -65409
  store i32 %and, i32* %low_level_error_code, align 4
  %3 = load i32, i32* %low_level_error_code, align 4
  switch i32 %3, label %sw.default [
    i32 32, label %sw.bb
    i32 34, label %sw.bb1
    i32 33, label %sw.bb2
    i32 92, label %sw.bb3
    i32 94, label %sw.bb4
    i32 96, label %sw.bb5
    i32 98, label %sw.bb6
    i32 100, label %sw.bb7
    i32 102, label %sw.bb8
    i32 104, label %sw.bb9
    i32 106, label %sw.bb10
    i32 108, label %sw.bb11
    i32 42, label %sw.bb12
    i32 44, label %sw.bb13
    i32 2, label %sw.bb14
    i32 4, label %sw.bb15
    i32 6, label %sw.bb16
    i32 8, label %sw.bb17
    i32 10, label %sw.bb18
    i32 12, label %sw.bb19
    i32 14, label %sw.bb20
    i32 16, label %sw.bb21
    i32 36, label %sw.bb22
    i32 38, label %sw.bb23
    i32 13, label %sw.bb24
    i32 15, label %sw.bb25
    i32 81, label %sw.bb26
    i32 84, label %sw.bb27
    i32 86, label %sw.bb28
    i32 52, label %sw.bb29
    i32 54, label %sw.bb30
    i32 56, label %sw.bb31
    i32 58, label %sw.bb32
    i32 50, label %sw.bb33
    i32 60, label %sw.bb34
    i32 62, label %sw.bb35
    i32 64, label %sw.bb36
    i32 61, label %sw.bb37
    i32 63, label %sw.bb38
    i32 1, label %sw.bb39
    i32 110, label %sw.bb40
    i32 112, label %sw.bb41
    i32 114, label %sw.bb42
    i32 18, label %sw.bb43
    i32 20, label %sw.bb44
    i32 22, label %sw.bb45
    i32 24448, label %sw.bb46
    i32 3, label %sw.bb47
    i32 5, label %sw.bb48
    i32 7, label %sw.bb49
    i32 9, label %sw.bb50
    i32 66, label %sw.bb51
    i32 68, label %sw.bb52
    i32 70, label %sw.bb53
    i32 72, label %sw.bb54
    i32 74, label %sw.bb55
    i32 76, label %sw.bb56
    i32 78, label %sw.bb57
    i32 80, label %sw.bb58
    i32 82, label %sw.bb59
    i32 67, label %sw.bb60
    i32 69, label %sw.bb61
    i32 71, label %sw.bb62
    i32 73, label %sw.bb63
    i32 46, label %sw.bb64
    i32 11, label %sw.bb65
    i32 87, label %sw.bb66
    i32 115, label %sw.bb67
    i32 116, label %sw.bb68
    i32 117, label %sw.bb69
  ]

sw.bb:                                            ; preds = %if.end
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.135, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.136, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.137, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.138, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.139, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.140, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.141, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.142, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb8:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.143, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb9:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.144, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb10:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb11:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.146, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb12:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.147, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb13:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.148, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb14:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.149, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb15:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.150, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb16:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.151, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb17:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.152, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb18:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.153, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb19:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.154, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb20:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.155, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb21:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.156, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb22:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.157, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb23:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.158, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb24:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.159, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb25:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.160, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb26:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.161, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb27:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.162, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb28:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.163, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb29:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.164, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb30:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.165, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb31:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.166, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb32:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.167, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb33:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.168, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb34:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.169, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb35:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.170, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb36:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.171, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb37:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.172, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb38:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.173, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb39:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.174, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb40:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.175, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb41:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.176, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb42:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.177, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb43:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.178, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb44:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.179, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb45:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.180, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb46:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.181, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb47:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.182, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb48:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.183, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb49:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.184, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb50:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.185, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb51:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.186, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb52:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.187, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb53:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.188, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb54:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.189, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb55:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.190, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb56:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.191, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb57:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.192, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb58:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.193, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb59:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.194, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb60:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.195, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb61:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.196, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb62:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.197, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb63:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.198, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb64:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.199, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb65:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.200, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb66:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.201, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb67:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.202, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb68:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.203, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb69:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.204, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i8*, i8** %retval, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_strerror(i32 noundef %ret, i8* noundef %buf, i64 noundef %buflen) #0 {
entry:
  %ret.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %use_ret = alloca i32, align 4
  %high_level_error_description = alloca i8*, align 8
  %low_level_error_description = alloca i8*, align 8
  store i32 %ret, i32* %ret.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i8* null, i8** %high_level_error_description, align 8
  store i8* null, i8** %low_level_error_description, align 8
  %0 = load i64, i64* %buflen.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end39

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %buflen.addr, align 8
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef %2) #3
  %3 = load i32, i32* %ret.addr, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %ret.addr, align 4
  %sub = sub nsw i32 0, %4
  store i32 %sub, i32* %ret.addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load i32, i32* %ret.addr, align 4
  %and = and i32 %5, 65408
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then4, label %if.end15

if.then4:                                         ; preds = %if.end3
  %6 = load i32, i32* %ret.addr, align 4
  %and5 = and i32 %6, 65408
  store i32 %and5, i32* %use_ret, align 4
  %7 = load i32, i32* %ret.addr, align 4
  %call6 = call i8* @mbedtls_high_level_strerr(i32 noundef %7) #4
  store i8* %call6, i8** %high_level_error_description, align 8
  %8 = load i8*, i8** %high_level_error_description, align 8
  %cmp7 = icmp eq i8* %8, null
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then4
  %9 = load i8*, i8** %buf.addr, align 8
  %10 = load i64, i64* %buflen.addr, align 8
  %11 = load i32, i32* %use_ret, align 4
  %call9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.205, i64 0, i64 0), i32 noundef %11) #3
  br label %if.end11

if.else:                                          ; preds = %if.then4
  %12 = load i8*, i8** %buf.addr, align 8
  %13 = load i64, i64* %buflen.addr, align 8
  %14 = load i8*, i8** %high_level_error_description, align 8
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %12, i64 noundef %13, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.206, i64 0, i64 0), i8* noundef %14) #3
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %15 = load i32, i32* %use_ret, align 4
  %cmp12 = icmp eq i32 %15, 30592
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  br label %if.end39

if.end14:                                         ; preds = %if.end11
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end3
  %16 = load i32, i32* %ret.addr, align 4
  %and16 = and i32 %16, -65409
  store i32 %and16, i32* %use_ret, align 4
  %17 = load i32, i32* %use_ret, align 4
  %cmp17 = icmp eq i32 %17, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  br label %if.end39

if.end19:                                         ; preds = %if.end15
  %18 = load i8*, i8** %buf.addr, align 8
  %call20 = call i64 @strlen(i8* noundef %18) #5
  store i64 %call20, i64* %len, align 8
  %19 = load i64, i64* %len, align 8
  %cmp21 = icmp ugt i64 %19, 0
  br i1 %cmp21, label %if.then22, label %if.end32

if.then22:                                        ; preds = %if.end19
  %20 = load i64, i64* %buflen.addr, align 8
  %21 = load i64, i64* %len, align 8
  %sub23 = sub i64 %20, %21
  %cmp24 = icmp ult i64 %sub23, 5
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then22
  br label %if.end39

if.end26:                                         ; preds = %if.then22
  %22 = load i8*, i8** %buf.addr, align 8
  %23 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %23
  %24 = load i64, i64* %buflen.addr, align 8
  %25 = load i64, i64* %len, align 8
  %sub27 = sub i64 %24, %25
  %call28 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr, i64 noundef %sub27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.207, i64 0, i64 0)) #3
  %26 = load i64, i64* %len, align 8
  %add = add i64 %26, 3
  %27 = load i8*, i8** %buf.addr, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %27, i64 %add
  store i8* %add.ptr29, i8** %buf.addr, align 8
  %28 = load i64, i64* %len, align 8
  %add30 = add i64 %28, 3
  %29 = load i64, i64* %buflen.addr, align 8
  %sub31 = sub i64 %29, %add30
  store i64 %sub31, i64* %buflen.addr, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.end26, %if.end19
  %30 = load i32, i32* %ret.addr, align 4
  %call33 = call i8* @mbedtls_low_level_strerr(i32 noundef %30) #4
  store i8* %call33, i8** %low_level_error_description, align 8
  %31 = load i8*, i8** %low_level_error_description, align 8
  %cmp34 = icmp eq i8* %31, null
  br i1 %cmp34, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.end32
  %32 = load i8*, i8** %buf.addr, align 8
  %33 = load i64, i64* %buflen.addr, align 8
  %34 = load i32, i32* %use_ret, align 4
  %call36 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %32, i64 noundef %33, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.205, i64 0, i64 0), i32 noundef %34) #3
  br label %if.end39

if.else37:                                        ; preds = %if.end32
  %35 = load i8*, i8** %buf.addr, align 8
  %36 = load i64, i64* %buflen.addr, align 8
  %37 = load i8*, i8** %low_level_error_description, align 8
  %call38 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %35, i64 noundef %36, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.206, i64 0, i64 0), i8* noundef %37) #3
  br label %if.end39

if.end39:                                         ; preds = %if.then, %if.then13, %if.then18, %if.then25, %if.else37, %if.then35
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}

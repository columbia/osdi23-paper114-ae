; ModuleID = 'apps/rehash.c'
source_filename = "apps/rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.evp_md_st = type opaque
%struct.bucket_st = type { %struct.bucket_st*, %struct.hentry_st*, %struct.hentry_st*, i32, i16, i16 }
%struct.hentry_st = type { %struct.hentry_st*, i8*, i16, i8, [64 x i8] }
%struct.OPENSSL_dir_context_st = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stack_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.stack_st_X509_INFO = type opaque
%struct.x509_st = type opaque
%struct.X509_name_st = type opaque
%struct.X509_crl_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.X509_info_st = type { %struct.x509_st*, %struct.X509_crl_st*, %struct.private_key_st*, %struct.evp_cipher_info_st, i32, i8* }
%struct.private_key_st = type { i32, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*, i32, i8*, i32, %struct.evp_cipher_info_st }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_pkey_st = type opaque
%struct.evp_cipher_info_st = type { %struct.evp_cipher_st*, [16 x i8] }
%struct.evp_cipher_st = type opaque

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [36 x i8] c"Usage: %s [options] [directory...]\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"compat\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Create both new- and old-style hash links\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Use old-style hash to generate links\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Do not remove existing links\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Verbose output\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"One or more directories to process (optional)\00", align 1
@rehash_options = dso_local constant [16 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 4, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i32 5, i32 45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.24 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@remove_links = internal unnamed_addr global i1 false, align 4
@verbose = internal unnamed_addr global i1 false, align 4
@evpmd = internal unnamed_addr global %struct.evp_md_st* null, align 8
@evpmdsize = internal unnamed_addr global i32 0, align 4
@.str.25 = private unnamed_addr constant [14 x i8] c"apps/rehash.c\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Skipping %s, can't write\0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"filename buffer\00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.30 = private unnamed_addr constant [10 x i8] c"Doing %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"Skipping %s, out of memory\0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@hash_table = internal unnamed_addr global [257 x %struct.bucket_st*] zeroinitializer, align 16
@.str.34 = private unnamed_addr constant [10 x i8] c"%08x.%s%d\00", align 1
@suffixes = internal unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0)], align 16
@.str.35 = private unnamed_addr constant [15 x i8] c"link %s -> %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"%s%s%n%08x.%s%d\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"%s: Can't unlink %s, %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"%s: Can't symlink %s, %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"unlink %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"hash bucket\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"%s: warning: skipping duplicate %s in %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"certificate\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"CRL\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"%s: error: hash table overflow for %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"collision bucket\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"%s: error: skipping %s, cannot open file\0A\00", align 1
@.str.48 = private unnamed_addr constant [77 x i8] c"%s: warning: skipping %s,it does not contain exactly one certificate or CRL\0A\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"%s: error calculating SHA1 hash value\0A\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"pem\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"crt\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"cer\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"crl\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rehash_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %lsc = alloca i16, align 2
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([16 x %struct.options_st], [16 x %struct.options_st]* @rehash_options, i64 0, i64 0)) #11
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %entry
  %h.0.ph = phi i32 [ 1, %entry ], [ %h.0.ph.be, %while.cond.outer.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  %call1 = tail call i32 @opt_next() #11
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb9
    i32 -1, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %while.cond.outer.backedge
    i32 3, label %sw.bb5
    i32 4, label %sw.bb6
    i32 5, label %sw.bb7
    i32 1603, label %sw.bb9
    i32 1602, label %sw.bb9
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb9, %sw.bb7, %sw.bb6
  br label %while.cond, !llvm.loop !3

sw.bb:                                            ; preds = %while.cond
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i8* noundef %call) #11
  br label %end

sw.bb3:                                           ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([16 x %struct.options_st], [16 x %struct.options_st]* @rehash_options, i64 0, i64 0)) #11
  br label %end

sw.bb5:                                           ; preds = %while.cond
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %while.cond, %sw.bb5
  %h.0.ph.be = phi i32 [ 0, %sw.bb5 ], [ 2, %while.cond ]
  br label %while.cond.outer, !llvm.loop !3

sw.bb6:                                           ; preds = %while.cond
  store i1 true, i1* @remove_links, align 4
  br label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  store i1 true, i1* @verbose, align 4
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond, %while.cond, %while.cond
  %call10 = tail call i32 @opt_provider(i32 noundef %call1) #11
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %end, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call11 = tail call i32 @opt_num_rest() #11
  %call12 = tail call i8** @opt_rest() #11
  %call13 = tail call %struct.evp_md_st* @EVP_sha1() #11
  store %struct.evp_md_st* %call13, %struct.evp_md_st** @evpmd, align 8, !tbaa !5
  %call14 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call13) #11
  store i32 %call14, i32* @evpmdsize, align 4, !tbaa !9
  %1 = load i8*, i8** %call12, align 8, !tbaa !5
  %cmp15.not = icmp eq i8* %1, null
  br i1 %cmp15.not, label %if.else, label %while.body19

while.body19:                                     ; preds = %while.end, %while.body19
  %errs.063 = phi i32 [ %add, %while.body19 ], [ 0, %while.end ]
  %argv.addr.062 = phi i8** [ %incdec.ptr, %while.body19 ], [ %call12, %while.end ]
  %2 = phi i8* [ %.pr, %while.body19 ], [ %1, %while.end ]
  %incdec.ptr = getelementptr inbounds i8*, i8** %argv.addr.062, i64 1
  %call20 = tail call fastcc i32 @do_dir(i8* noundef nonnull %2, i32 noundef %h.0.ph) #12
  %add = add nsw i32 %call20, %errs.063
  %.pr = load i8*, i8** %incdec.ptr, align 8, !tbaa !5
  %cmp18.not = icmp eq i8* %.pr, null
  br i1 %cmp18.not, label %end, label %while.body19, !llvm.loop !11

if.else:                                          ; preds = %while.end
  %call22 = tail call i8* @X509_get_default_cert_dir_env() #11
  %call23 = tail call i8* @getenv(i8* noundef %call22) #11
  %cmp24.not = icmp eq i8* %call23, null
  br i1 %cmp24.not, label %if.else33, label %if.then25

if.then25:                                        ; preds = %if.else
  %3 = bitcast i16* %lsc to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %3) #13
  store i16 58, i16* %lsc, align 2
  %call26 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %call23, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 noundef 544) #11
  %call27 = call i8* @strtok(i8* noundef %call26, i8* noundef nonnull %3) #11
  %cmp28.not64 = icmp eq i8* %call27, null
  br i1 %cmp28.not64, label %for.end, label %for.body

for.body:                                         ; preds = %if.then25, %for.body
  %errs.166 = phi i32 [ %add30, %for.body ], [ 0, %if.then25 ]
  %e.065 = phi i8* [ %call32, %for.body ], [ %call27, %if.then25 ]
  %call29 = call fastcc i32 @do_dir(i8* noundef nonnull %e.065, i32 noundef %h.0.ph) #12
  %add30 = add nsw i32 %call29, %errs.166
  %call32 = call i8* @strtok(i8* noundef null, i8* noundef nonnull %3) #11
  %cmp28.not = icmp eq i8* %call32, null
  br i1 %cmp28.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %for.body, %if.then25
  %errs.1.lcssa = phi i32 [ 0, %if.then25 ], [ %add30, %for.body ]
  call void @CRYPTO_free(i8* noundef %call26, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 noundef 547) #11
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %3) #13
  br label %end

if.else33:                                        ; preds = %if.else
  %call34 = tail call i8* @X509_get_default_cert_dir() #11
  %call35 = tail call fastcc i32 @do_dir(i8* noundef %call34, i32 noundef %h.0.ph) #12
  br label %end

end:                                              ; preds = %sw.bb9, %while.body19, %if.else33, %for.end, %sw.bb3, %sw.bb
  %errs.2 = phi i32 [ 0, %sw.bb3 ], [ 0, %sw.bb ], [ %errs.1.lcssa, %for.end ], [ %call35, %if.else33 ], [ %add, %while.body19 ], [ 0, %sw.bb9 ]
  ret i32 %errs.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #2

declare dso_local i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_dir(i8* noundef %dirname, i32 noundef %h) unnamed_addr #0 {
entry:
  %d = alloca %struct.OPENSSL_dir_context_st*, align 8
  %st = alloca %struct.stat, align 8
  %idmask = alloca [32 x i8], align 16
  %n = alloca i32, align 4
  %0 = bitcast %struct.OPENSSL_dir_context_st** %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.OPENSSL_dir_context_st* null, %struct.OPENSSL_dir_context_st** %d, align 8, !tbaa !5
  %1 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %1) #13
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %idmask, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #13
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13
  %call = tail call i32 @app_access(i8* noundef %dirname, i32 noundef 2) #11
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i8* noundef %dirname) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* noundef %dirname) #14
  %conv = trunc i64 %call2 to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %land.end.thread, label %land.end

land.end:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @ends_with_dirsep(i8* noundef %dirname) #12
  %tobool4.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool4.not, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0)
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end, %if.end
  %5 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), %if.end ], [ %spec.select, %land.end ]
  %add = add nsw i32 %conv, 257
  %conv5 = sext i32 %add to i64
  %call6 = tail call i8* @app_malloc(i64 noundef %conv5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0)) #11
  %.b315 = load i1, i1* @verbose, align 4
  br i1 %.b315, label %if.then8, label %if.end10

if.then8:                                         ; preds = %land.end.thread
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* noundef %dirname) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.end.thread
  %call11 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #11
  %7 = bitcast %struct.stack_st* %call11 to %struct.stack_st_OPENSSL_STRING*
  %cmp12 = icmp eq %struct.stack_st* %call11, null
  br i1 %cmp12, label %if.then14, label %while.cond

if.then14:                                        ; preds = %if.end10
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call15 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0), i8* noundef %dirname) #11
  br label %err

while.cond:                                       ; preds = %if.end10, %lor.lhs.false
  %call17 = call i8* @OPENSSL_DIR_read(%struct.OPENSSL_dir_context_st** noundef nonnull %d, i8* noundef %dirname) #11
  %cmp18.not = icmp eq i8* %call17, null
  br i1 %cmp18.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call20 = call i8* @CRYPTO_strdup(i8* noundef nonnull %call17, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 noundef 372) #11
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %call23 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %7) #12
  %call25 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call23, i8* noundef nonnull %call20) #11
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %while.cond, !llvm.loop !13

if.then28:                                        ; preds = %lor.lhs.false, %while.body
  call void @CRYPTO_free(i8* noundef %call20, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 noundef 374) #11
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call29 = call i32 @BIO_puts(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0)) #11
  br label %err

while.end:                                        ; preds = %while.cond
  %call31 = call i32 @OPENSSL_DIR_end(%struct.OPENSSL_dir_context_st** noundef nonnull %d) #11
  %call32 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %7) #12
  call void @OPENSSL_sk_sort(%struct.stack_st* noundef %call32) #11
  %call33 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %7) #12
  %call34 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call33) #11
  store i32 0, i32* %n, align 4, !tbaa !9
  %cmp35316 = icmp sgt i32 %call34, 0
  br i1 %cmp35316, label %for.body.lr.ph, label %for.body62.preheader

for.body.lr.ph:                                   ; preds = %while.end
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %errs.0318 = phi i32 [ 0, %for.body.lr.ph ], [ %errs.1, %for.inc ]
  %storemerge317 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call38 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call33, i32 noundef %storemerge317) #11
  %call40 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %call6, i64 noundef %conv5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* noundef %dirname, i8* noundef %5, i8* noundef %call38) #11
  %cmp41.not = icmp slt i32 %call40, %add
  br i1 %cmp41.not, label %if.end44, label %for.inc

if.end44:                                         ; preds = %for.body
  %call45 = call i32 @lstat(i8* noundef %call6, %struct.stat* noundef %st) #11
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %for.inc, label %if.end49

if.end49:                                         ; preds = %if.end44
  %10 = load i32, i32* %st_mode, align 8, !tbaa !14
  %and = and i32 %10, 61440
  %cmp50 = icmp eq i32 %and, 40960
  br i1 %cmp50, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %if.end49
  %call52 = call fastcc i32 @handle_symlink(i8* noundef %call38, i8* noundef nonnull %call6) #12
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %for.inc, label %if.end56

if.end56:                                         ; preds = %land.lhs.true, %if.end49
  %call57 = call fastcc i32 @do_file(i8* noundef %call38, i8* noundef nonnull %call6, i32 noundef %h) #12
  %add58 = add nsw i32 %call57, %errs.0318
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end44, %for.body, %if.end56
  %errs.1 = phi i32 [ %errs.0318, %for.body ], [ %errs.0318, %if.end44 ], [ %errs.0318, %land.lhs.true ], [ %add58, %if.end56 ]
  %11 = load i32, i32* %n, align 4, !tbaa !9
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %n, align 4, !tbaa !9
  %cmp35 = icmp slt i32 %inc, %call34
  br i1 %cmp35, label %for.body, label %for.body62.preheader, !llvm.loop !18

for.body62.preheader:                             ; preds = %for.inc, %while.end
  %errs.2333.ph = phi i32 [ 0, %while.end ], [ %errs.1, %for.inc ]
  br label %for.body62

for.body62:                                       ; preds = %for.body62.preheader, %for.end195
  %i.0334 = phi i64 [ %inc198, %for.end195 ], [ 0, %for.body62.preheader ]
  %errs.2333 = phi i32 [ %errs.3.lcssa, %for.end195 ], [ %errs.2333.ph, %for.body62.preheader ]
  %arrayidx = getelementptr inbounds [257 x %struct.bucket_st*], [257 x %struct.bucket_st*]* @hash_table, i64 0, i64 %i.0334
  %12 = load %struct.bucket_st*, %struct.bucket_st** %arrayidx, align 8, !tbaa !5
  %tobool64.not328 = icmp eq %struct.bucket_st* %12, null
  br i1 %tobool64.not328, label %for.end195, label %for.body65

for.body65:                                       ; preds = %for.body62, %for.end193
  %bp.0330 = phi %struct.bucket_st* [ %13, %for.end193 ], [ %12, %for.body62 ]
  %errs.3329 = phi i32 [ %errs.4.lcssa, %for.end193 ], [ %errs.2333, %for.body62 ]
  %next = getelementptr inbounds %struct.bucket_st, %struct.bucket_st* %bp.0330, i64 0, i32 0
  %13 = load %struct.bucket_st*, %struct.bucket_st** %next, align 8, !tbaa !19
  %num_needed = getelementptr inbounds %struct.bucket_st, %struct.bucket_st* %bp.0330, i64 0, i32 5
  %14 = load i16, i16* %num_needed, align 2, !tbaa !22
  %conv66 = zext i16 %14 to i64
  %add67 = add nuw nsw i64 %conv66, 7
  %div = lshr i64 %add67, 3
  %call69 = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef %div) #11
  %first_entry = getelementptr inbounds %struct.bucket_st, %struct.bucket_st* %bp.0330, i64 0, i32 1
  %ep.0319 = load %struct.hentry_st*, %struct.hentry_st** %first_entry, align 8, !tbaa !5
  %tobool71.not320 = icmp eq %struct.hentry_st* %ep.0319, null
  br i1 %tobool71.not320, label %for.end193, label %for.body72

for.body72:                                       ; preds = %for.body65, %for.inc83
  %ep.0321 = phi %struct.hentry_st* [ %ep.0, %for.inc83 ], [ %ep.0319, %for.body65 ]
  %old_id = getelementptr inbounds %struct.hentry_st, %struct.hentry_st* %ep.0321, i64 0, i32 2
  %15 = load i16, i16* %old_id, align 8, !tbaa !23
  %16 = load i16, i16* %num_needed, align 2, !tbaa !22
  %cmp76 = icmp ult i16 %15, %16
  br i1 %cmp76, label %if.then78, label %for.inc83

if.then78:                                        ; preds = %for.body72
  %conv73 = zext i16 %15 to i32
  call fastcc void @bit_set(i8* noundef nonnull %2, i32 noundef %conv73) #12
  br label %for.inc83

for.inc83:                                        ; preds = %for.body72, %if.then78
  %next84 = getelementptr inbounds %struct.hentry_st, %struct.hentry_st* %ep.0321, i64 0, i32 0
  %ep.0 = load %struct.hentry_st*, %struct.hentry_st** %next84, align 8, !tbaa !5
  %tobool71.not = icmp eq %struct.hentry_st* %ep.0, null
  br i1 %tobool71.not, label %for.end85, label %for.body72, !llvm.loop !25

for.end85:                                        ; preds = %for.inc83
  %.pre = load %struct.hentry_st*, %struct.hentry_st** %first_entry, align 8, !tbaa !26
  %tobool88.not322 = icmp eq %struct.hentry_st* %.pre, null
  br i1 %tobool88.not322, label %for.end193, label %for.body89.lr.ph

for.body89.lr.ph:                                 ; preds = %for.end85
  %hash118 = getelementptr inbounds %struct.bucket_st, %struct.bucket_st* %bp.0330, i64 0, i32 3
  %type119 = getelementptr inbounds %struct.bucket_st, %struct.bucket_st* %bp.0330, i64 0, i32 4
  br label %for.body89

for.body89:                                       ; preds = %for.body89.lr.ph, %if.end190
  %errs.4326 = phi i32 [ %errs.3329, %for.body89.lr.ph ], [ %errs.7, %if.end190 ]
  %nextid.0325 = phi i32 [ 0, %for.body89.lr.ph ], [ %nextid.2, %if.end190 ]
  %ep.1323 = phi %struct.hentry_st* [ %.pre, %for.body89.lr.ph ], [ %17, %if.end190 ]
  %next90 = getelementptr inbounds %struct.hentry_st, %struct.hentry_st* %ep.1323, i64 0, i32 0
  %17 = load %struct.hentry_st*, %struct.hentry_st** %next90, align 8, !tbaa !27
  %old_id91 = getelementptr inbounds %struct.hentry_st, %struct.hentry_st* %ep.1323, i64 0, i32 2
  %18 = load i16, i16* %old_id91, align 8, !tbaa !23
  %conv92 = zext i16 %18 to i32
  %19 = load i16, i16* %num_needed, align 2, !tbaa !22
  %cmp95 = icmp ult i16 %18, %19
  br i1 %cmp95, label %if.then97, label %if.else

if.then97:                                        ; preds = %for.body89
  %20 = load i32, i32* %hash118, align 8, !tbaa !28
  %21 = load i16, i16* %type119, align 4, !tbaa !29
  %idxprom = zext i16 %21 to i64
  %arrayidx99 = getelementptr inbounds [2 x i8*], [2 x i8*]* @suffixes, i64 0, i64 %idxprom
  %22 = load i8*, i8** %arrayidx99, align 8, !tbaa !5
  %call102 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %call6, i64 noundef %conv5, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i32 noundef %20, i8* noundef %22, i32 noundef %conv92) #11
  %.b314 = load i1, i1* @verbose, align 4
  br i1 %.b314, label %if.then104, label %if.end190

if.then104:                                       ; preds = %if.then97
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %filename105 = getelementptr inbounds %struct.hentry_st, %struct.hentry_st* %ep.1323, i64 0, i32 1
  %24 = load i8*, i8** %filename105, align 8, !tbaa !30
  %call106 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %23, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* noundef %24, i8* noundef %call6) #11
  br label %if.end190

if.else:                                          ; preds = %for.body89
  %need_symlink = getelementptr inbounds %struct.hentry_st, %struct.hentry_st* %ep.1323, i64 0, i32 3
  %25 = load i8, i8* %need_symlink, align 2, !tbaa !31
  %tobool108.not = icmp eq i8 %25, 0
  br i1 %tobool108.not, label %if.else157, label %while.cond110

while.cond110:                                    ; preds = %if.else, %while.cond110
  %nextid.1 = phi i32 [ %inc115, %while.cond110 ], [ %nextid.0325, %if.else ]
  %call112 = call fastcc i32 @bit_isset(i8* noundef nonnull %2, i32 noundef %nextid.1) #12
  %tobool113.not = icmp eq i32 %call112, 0
  %inc115 = add nsw i32 %nextid.1, 1
  br i1 %tobool113.not, label %while.end116, label %while.cond110, !llvm.loop !32

while.end116:                                     ; preds = %while.cond110
  %26 = load i32, i32* %hash118, align 8, !tbaa !28
  %27 = load i16, i16* %type119, align 4, !tbaa !29
  %idxprom120 = zext i16 %27 to i64
  %arrayidx121 = getelementptr inbounds [2 x i8*], [2 x i8*]* @suffixes, i64 0, i64 %idxprom120
  %28 = load i8*, i8** %arrayidx121, align 8, !tbaa !5
  %call122 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %call6, i64 noundef %conv5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i8* noundef %dirname, i8* noundef %5, i32* noundef nonnull %n, i32 noundef %26, i8* noundef %28, i32 noundef %nextid.1) #11
  %.b313 = load i1, i1* @verbose, align 4
  br i1 %.b313, label %if.then124, label %if.end129

if.then124:                                       ; preds = %while.end116
  %29 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %filename125 = getelementptr inbounds %struct.hentry_st, %struct.hentry_st* %ep.1323, i64 0, i32 1
  %30 = load i8*, i8** %filename125, align 8, !tbaa !30
  %31 = load i32, i32* %n, align 4, !tbaa !9
  %idxprom126 = sext i32 %31 to i64
  %arrayidx127 = getelementptr inbounds i8, i8* %call6, i64 %idxprom126
  %call128 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %29, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* noundef %30, i8* noundef %arrayidx127) #11
  br label %if.end129

if.end129:                                        ; preds = %if.then124, %while.end116
  %call130 = call i32 @unlink(i8* noundef %call6) #11
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %land.lhs.true133, label %if.end143

land.lhs.true133:                                 ; preds = %if.end129
  %call134 = tail call i32* @__errno_location() #15
  %32 = load i32, i32* %call134, align 4, !tbaa !9
  %cmp135.not = icmp eq i32 %32, 2
  br i1 %cmp135.not, label %if.end143, label %if.then137

if.then137:                                       ; preds = %land.lhs.true133
  %33 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call138 = call i8* @opt_getprog() #11
  %34 = load i32, i32* %call134, align 4, !tbaa !9
  %call140 = call i8* @strerror(i32 noundef %34) #11
  %call141 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %33, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i64 0, i64 0), i8* noundef %call138, i8* noundef %call6, i8* noundef %call140) #11
  %inc142 = add nsw i32 %errs.4326, 1
  br label %if.end143

if.end143:                                        ; preds = %if.then137, %land.lhs.true133, %if.end129
  %errs.5 = phi i32 [ %inc142, %if.then137 ], [ %errs.4326, %land.lhs.true133 ], [ %errs.4326, %if.end129 ]
  %filename144 = getelementptr inbounds %struct.hentry_st, %struct.hentry_st* %ep.1323, i64 0, i32 1
  %35 = load i8*, i8** %filename144, align 8, !tbaa !30
  %call145 = call i32 @symlink(i8* noundef %35, i8* noundef %call6) #11
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %if.then148, label %if.end155

if.then148:                                       ; preds = %if.end143
  %36 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call149 = call i8* @opt_getprog() #11
  %37 = load i8*, i8** %filename144, align 8, !tbaa !30
  %call151 = tail call i32* @__errno_location() #15
  %38 = load i32, i32* %call151, align 4, !tbaa !9
  %call152 = call i8* @strerror(i32 noundef %38) #11
  %call153 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %36, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i64 0, i64 0), i8* noundef %call149, i8* noundef %37, i8* noundef %call152) #11
  %inc154 = add nsw i32 %errs.5, 1
  br label %if.end155

if.end155:                                        ; preds = %if.then148, %if.end143
  %errs.6 = phi i32 [ %inc154, %if.then148 ], [ %errs.5, %if.end143 ]
  call fastcc void @bit_set(i8* noundef nonnull %2, i32 noundef %nextid.1) #12
  br label %if.end190

if.else157:                                       ; preds = %if.else
  %.b = load i1, i1* @remove_links, align 4
  br i1 %.b, label %if.end190, label %if.then159

if.then159:                                       ; preds = %if.else157
  %39 = load i32, i32* %hash118, align 8, !tbaa !28
  %40 = load i16, i16* %type119, align 4, !tbaa !29
  %idxprom163 = zext i16 %40 to i64
  %arrayidx164 = getelementptr inbounds [2 x i8*], [2 x i8*]* @suffixes, i64 0, i64 %idxprom163
  %41 = load i8*, i8** %arrayidx164, align 8, !tbaa !5
  %call167 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %call6, i64 noundef %conv5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i8* noundef %dirname, i8* noundef %5, i32* noundef nonnull %n, i32 noundef %39, i8* noundef %41, i32 noundef %conv92) #11
  %.b312 = load i1, i1* @verbose, align 4
  br i1 %.b312, label %if.then169, label %if.end173

if.then169:                                       ; preds = %if.then159
  %42 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %43 = load i32, i32* %n, align 4, !tbaa !9
  %idxprom170 = sext i32 %43 to i64
  %arrayidx171 = getelementptr inbounds i8, i8* %call6, i64 %idxprom170
  %call172 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %42, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0), i8* noundef %arrayidx171) #11
  br label %if.end173

if.end173:                                        ; preds = %if.then169, %if.then159
  %call174 = call i32 @unlink(i8* noundef %call6) #11
  %cmp175 = icmp slt i32 %call174, 0
  br i1 %cmp175, label %land.lhs.true177, label %if.end190

land.lhs.true177:                                 ; preds = %if.end173
  %call178 = tail call i32* @__errno_location() #15
  %44 = load i32, i32* %call178, align 4, !tbaa !9
  %cmp179.not = icmp eq i32 %44, 2
  br i1 %cmp179.not, label %if.end190, label %if.then181

if.then181:                                       ; preds = %land.lhs.true177
  %45 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call182 = call i8* @opt_getprog() #11
  %46 = load i32, i32* %call178, align 4, !tbaa !9
  %call184 = call i8* @strerror(i32 noundef %46) #11
  %call185 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %45, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i64 0, i64 0), i8* noundef %call182, i8* noundef %call6, i8* noundef %call184) #11
  %inc186 = add nsw i32 %errs.4326, 1
  br label %if.end190

if.end190:                                        ; preds = %if.end155, %if.end173, %land.lhs.true177, %if.then181, %if.else157, %if.then97, %if.then104
  %nextid.2 = phi i32 [ %nextid.0325, %if.then104 ], [ %nextid.0325, %if.then97 ], [ %nextid.1, %if.end155 ], [ %nextid.0325, %if.then181 ], [ %nextid.0325, %land.lhs.true177 ], [ %nextid.0325, %if.end173 ], [ %nextid.0325, %if.else157 ]
  %errs.7 = phi i32 [ %errs.4326, %if.then104 ], [ %errs.4326, %if.then97 ], [ %errs.6, %if.end155 ], [ %inc186, %if.then181 ], [ %errs.4326, %land.lhs.true177 ], [ %errs.4326, %if.end173 ], [ %errs.4326, %if.else157 ]
  %filename191 = getelementptr inbounds %struct.hentry_st, %struct.hentry_st* %ep.1323, i64 0, i32 1
  %47 = load i8*, i8** %filename191, align 8, !tbaa !30
  call void @CRYPTO_free(i8* noundef %47, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 noundef 454) #11
  %48 = bitcast %struct.hentry_st* %ep.1323 to i8*
  call void @CRYPTO_free(i8* noundef nonnull %48, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 noundef 455) #11
  %tobool88.not = icmp eq %struct.hentry_st* %17, null
  br i1 %tobool88.not, label %for.end193, label %for.body89, !llvm.loop !33

for.end193:                                       ; preds = %if.end190, %for.body65, %for.end85
  %errs.4.lcssa = phi i32 [ %errs.3329, %for.end85 ], [ %errs.3329, %for.body65 ], [ %errs.7, %if.end190 ]
  %49 = bitcast %struct.bucket_st* %bp.0330 to i8*
  call void @CRYPTO_free(i8* noundef nonnull %49, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 noundef 457) #11
  %tobool64.not = icmp eq %struct.bucket_st* %13, null
  br i1 %tobool64.not, label %for.end195, label %for.body65, !llvm.loop !34

for.end195:                                       ; preds = %for.end193, %for.body62
  %errs.3.lcssa = phi i32 [ %errs.2333, %for.body62 ], [ %errs.4.lcssa, %for.end193 ]
  store %struct.bucket_st* null, %struct.bucket_st** %arrayidx, align 8, !tbaa !5
  %inc198 = add nuw nsw i64 %i.0334, 1
  %exitcond.not = icmp eq i64 %inc198, 257
  br i1 %exitcond.not, label %err, label %for.body62, !llvm.loop !35

err:                                              ; preds = %for.end195, %if.then28, %if.then14
  %errs.8 = phi i32 [ 1, %if.then14 ], [ 1, %if.then28 ], [ %errs.3.lcssa, %for.end195 ]
  %call200 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %7) #12
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call200, void (i8*)* noundef nonnull @str_free) #11
  call void @CRYPTO_free(i8* noundef %call6, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 noundef 464) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %errs.8, %err ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) local_unnamed_addr #3

declare dso_local i8* @X509_get_default_cert_dir_env() local_unnamed_addr #2

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @X509_get_default_cert_dir() local_unnamed_addr #2

declare dso_local i32 @app_access(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i32 @ends_with_dirsep(i8* noundef %path) unnamed_addr #5 {
entry:
  %0 = load i8, i8* %path, align 1, !tbaa !36
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %path) #14
  %sub = add i64 %call, -1
  %add.ptr = getelementptr inbounds i8, i8* %path, i64 %sub
  %.pre = load i8, i8* %add.ptr, align 1, !tbaa !36
  %phi.cmp = icmp eq i8 %.pre, 47
  %phi.cast = zext i1 %phi.cmp to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry ]
  ret i32 %1
}

declare dso_local i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local i8* @OPENSSL_DIR_read(%struct.OPENSSL_dir_context_st** noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_DIR_end(%struct.OPENSSL_dir_context_st** noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_sort(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @lstat(i8* noundef nonnull, %struct.stat* noundef nonnull) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @handle_symlink(i8* noundef %filename, i8* noundef %fullpath) unnamed_addr #0 {
entry:
  %linktarget = alloca [4096 x i8], align 16
  %endptr = alloca i8*, align 8
  %0 = getelementptr inbounds [4096 x i8], [4096 x i8]* %linktarget, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %0) #13
  %1 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %call = tail call i16** @__ctype_b_loc() #15
  %2 = load i8, i8* %filename, align 1, !tbaa !36
  %3 = load i16*, i16** %call, align 8, !tbaa !5
  %4 = zext i8 %2 to i64
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 %4
  %5 = load i16, i16* %arrayidx2, align 2, !tbaa !37
  %6 = and i16 %5, 4096
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %cleanup55, label %if.end

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %2) #11
  %arrayidx.1 = getelementptr inbounds i8, i8* %filename, i64 1
  %7 = load i8, i8* %arrayidx.1, align 1, !tbaa !36
  %8 = load i16*, i16** %call, align 8, !tbaa !5
  %9 = zext i8 %7 to i64
  %arrayidx2.1 = getelementptr inbounds i16, i16* %8, i64 %9
  %10 = load i16, i16* %arrayidx2.1, align 2, !tbaa !37
  %11 = and i16 %10, 4096
  %tobool.not.1 = icmp eq i16 %11, 0
  br i1 %tobool.not.1, label %cleanup55, label %if.end.1

if.end.1:                                         ; preds = %if.end
  %call4.1 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %7) #11
  %arrayidx.2 = getelementptr inbounds i8, i8* %filename, i64 2
  %12 = load i8, i8* %arrayidx.2, align 1, !tbaa !36
  %13 = load i16*, i16** %call, align 8, !tbaa !5
  %14 = zext i8 %12 to i64
  %arrayidx2.2 = getelementptr inbounds i16, i16* %13, i64 %14
  %15 = load i16, i16* %arrayidx2.2, align 2, !tbaa !37
  %16 = and i16 %15, 4096
  %tobool.not.2 = icmp eq i16 %16, 0
  br i1 %tobool.not.2, label %cleanup55, label %if.end.2

if.end.2:                                         ; preds = %if.end.1
  %call4.2 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %12) #11
  %arrayidx.3 = getelementptr inbounds i8, i8* %filename, i64 3
  %17 = load i8, i8* %arrayidx.3, align 1, !tbaa !36
  %18 = load i16*, i16** %call, align 8, !tbaa !5
  %19 = zext i8 %17 to i64
  %arrayidx2.3 = getelementptr inbounds i16, i16* %18, i64 %19
  %20 = load i16, i16* %arrayidx2.3, align 2, !tbaa !37
  %21 = and i16 %20, 4096
  %tobool.not.3 = icmp eq i16 %21, 0
  br i1 %tobool.not.3, label %cleanup55, label %if.end.3

if.end.3:                                         ; preds = %if.end.2
  %call4.3 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %17) #11
  %arrayidx.4 = getelementptr inbounds i8, i8* %filename, i64 4
  %22 = load i8, i8* %arrayidx.4, align 1, !tbaa !36
  %23 = load i16*, i16** %call, align 8, !tbaa !5
  %24 = zext i8 %22 to i64
  %arrayidx2.4 = getelementptr inbounds i16, i16* %23, i64 %24
  %25 = load i16, i16* %arrayidx2.4, align 2, !tbaa !37
  %26 = and i16 %25, 4096
  %tobool.not.4 = icmp eq i16 %26, 0
  br i1 %tobool.not.4, label %cleanup55, label %if.end.4

if.end.4:                                         ; preds = %if.end.3
  %call4.4 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %22) #11
  %arrayidx.5 = getelementptr inbounds i8, i8* %filename, i64 5
  %27 = load i8, i8* %arrayidx.5, align 1, !tbaa !36
  %28 = load i16*, i16** %call, align 8, !tbaa !5
  %29 = zext i8 %27 to i64
  %arrayidx2.5 = getelementptr inbounds i16, i16* %28, i64 %29
  %30 = load i16, i16* %arrayidx2.5, align 2, !tbaa !37
  %31 = and i16 %30, 4096
  %tobool.not.5 = icmp eq i16 %31, 0
  br i1 %tobool.not.5, label %cleanup55, label %if.end.5

if.end.5:                                         ; preds = %if.end.4
  %call4.5 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %27) #11
  %arrayidx.6 = getelementptr inbounds i8, i8* %filename, i64 6
  %32 = load i8, i8* %arrayidx.6, align 1, !tbaa !36
  %33 = load i16*, i16** %call, align 8, !tbaa !5
  %34 = zext i8 %32 to i64
  %arrayidx2.6 = getelementptr inbounds i16, i16* %33, i64 %34
  %35 = load i16, i16* %arrayidx2.6, align 2, !tbaa !37
  %36 = and i16 %35, 4096
  %tobool.not.6 = icmp eq i16 %36, 0
  br i1 %tobool.not.6, label %cleanup55, label %if.end.6

if.end.6:                                         ; preds = %if.end.5
  %call4.6 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %32) #11
  %arrayidx.7 = getelementptr inbounds i8, i8* %filename, i64 7
  %37 = load i8, i8* %arrayidx.7, align 1, !tbaa !36
  %38 = load i16*, i16** %call, align 8, !tbaa !5
  %39 = zext i8 %37 to i64
  %arrayidx2.7 = getelementptr inbounds i16, i16* %38, i64 %39
  %40 = load i16, i16* %arrayidx2.7, align 2, !tbaa !37
  %41 = and i16 %40, 4096
  %tobool.not.7 = icmp eq i16 %41, 0
  br i1 %tobool.not.7, label %cleanup55, label %if.end.7

if.end.7:                                         ; preds = %if.end.6
  %shl.1 = shl i32 %call4, 4
  %add.1 = add i32 %call4.1, %shl.1
  %shl.2 = shl i32 %add.1, 4
  %add.2 = add i32 %call4.2, %shl.2
  %shl.3 = shl i32 %add.2, 4
  %add.3 = add i32 %call4.3, %shl.3
  %shl.4 = shl i32 %add.3, 4
  %add.4 = add i32 %call4.4, %shl.4
  %shl.5 = shl i32 %add.4, 4
  %add.5 = add i32 %call4.5, %shl.5
  %shl.6 = shl i32 %add.5, 4
  %add.6 = add i32 %call4.6, %shl.6
  %shl.7 = shl i32 %add.6, 4
  %call4.7 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %37) #11
  %add.7 = add i32 %call4.7, %shl.7
  %arrayidx7 = getelementptr inbounds i8, i8* %filename, i64 8
  %42 = load i8, i8* %arrayidx7, align 1, !tbaa !36
  %cmp9.not = icmp eq i8 %42, 46
  br i1 %cmp9.not, label %for.cond13.preheader, label %cleanup55

for.cond13.preheader:                             ; preds = %if.end.7
  %arrayidx20 = getelementptr inbounds i8, i8* %filename, i64 9
  %call21 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #14
  %call22 = tail call i32 @strncasecmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef nonnull %arrayidx20, i64 noundef %call21) #14
  %cmp23 = icmp eq i32 %call22, 0
  %type.0.lcssa = zext i1 %cmp23 to i32
  %43 = zext i1 %cmp23 to i64
  %arrayidx30 = getelementptr inbounds [2 x i8*], [2 x i8*]* @suffixes, i64 0, i64 %43
  %44 = load i8*, i8** %arrayidx30, align 8, !tbaa !5
  %call31 = tail call i64 @strlen(i8* noundef %44) #14
  %conv34 = shl i64 %call31, 32
  %sext = add i64 %conv34, 38654705664
  %idxprom35 = ashr exact i64 %sext, 32
  %arrayidx36 = getelementptr inbounds i8, i8* %filename, i64 %idxprom35
  %call37 = call i64 @strtoul(i8* noundef nonnull %arrayidx36, i8** noundef nonnull %endptr, i32 noundef 10) #11
  %45 = load i8*, i8** %endptr, align 8, !tbaa !5
  %46 = load i8, i8* %45, align 1, !tbaa !36
  %cmp40.not = icmp eq i8 %46, 0
  br i1 %cmp40.not, label %if.end43, label %cleanup55

if.end43:                                         ; preds = %for.cond13.preheader
  %call44 = call i64 @readlink(i8* noundef %fullpath, i8* noundef nonnull %0, i64 noundef 4096) #11
  %47 = icmp ugt i64 %call44, 4095
  br i1 %47, label %cleanup55, label %if.end50

if.end50:                                         ; preds = %if.end43
  %arrayidx51 = getelementptr inbounds [4096 x i8], [4096 x i8]* %linktarget, i64 0, i64 %call44
  store i8 0, i8* %arrayidx51, align 1, !tbaa !36
  %conv53 = trunc i64 %call37 to i16
  %call54 = call fastcc i32 @add_entry(i32 noundef %type.0.lcssa, i32 noundef %add.7, i8* noundef nonnull %0, i8* noundef null, i32 noundef 0, i16 noundef zeroext %conv53) #12
  br label %cleanup55

cleanup55:                                        ; preds = %entry, %if.end, %if.end.1, %if.end.2, %if.end.3, %if.end.4, %if.end.5, %if.end.6, %if.end43, %for.cond13.preheader, %if.end.7, %if.end50
  %retval.0 = phi i32 [ %call54, %if.end50 ], [ -1, %if.end.7 ], [ -1, %for.cond13.preheader ], [ -1, %if.end43 ], [ -1, %if.end.6 ], [ -1, %if.end.5 ], [ -1, %if.end.4 ], [ -1, %if.end.3 ], [ -1, %if.end.2 ], [ -1, %if.end.1 ], [ -1, %if.end ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_file(i8* noundef %filename, i8* noundef %fullpath, i32 noundef %h) unnamed_addr #0 {
entry:
  %digest = alloca [64 x i8], align 16
  %ok = alloca i32, align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #13
  %call = tail call i8* @strrchr(i8* noundef %filename, i32 noundef 46) #14
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1
  %call2 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* noundef nonnull %add.ptr) #14
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.end8, label %for.cond

for.cond:                                         ; preds = %for.cond.preheader
  %call2.1 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), i8* noundef nonnull %add.ptr) #14
  %cmp3.1 = icmp eq i32 %call2.1, 0
  br i1 %cmp3.1, label %if.end8, label %for.cond.1

for.cond.1:                                       ; preds = %for.cond
  %call2.2 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i8* noundef nonnull %add.ptr) #14
  %cmp3.2 = icmp eq i32 %call2.2, 0
  br i1 %cmp3.2, label %if.end8, label %for.cond.2

for.cond.2:                                       ; preds = %for.cond.1
  %call2.3 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* noundef nonnull %add.ptr) #14
  %cmp3.3 = icmp eq i32 %call2.3, 0
  br i1 %cmp3.3, label %if.end8, label %end

if.end8:                                          ; preds = %for.cond.2, %for.cond.1, %for.cond, %for.cond.preheader
  %call9 = tail call %struct.bio_st* @BIO_new_file(i8* noundef %fullpath, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #11
  %cmp10 = icmp eq %struct.bio_st* %call9, null
  br i1 %cmp10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end8
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call12 = tail call i8* @opt_getprog() #11
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.47, i64 0, i64 0), i8* noundef %call12, i8* noundef %filename) #11
  br label %end

if.end15:                                         ; preds = %if.end8
  %call16 = tail call %struct.stack_st_X509_INFO* @PEM_X509_INFO_read_bio(%struct.bio_st* noundef nonnull %call9, %struct.stack_st_X509_INFO* noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #11
  %call17 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call9) #11
  %cmp18 = icmp eq %struct.stack_st_X509_INFO* %call16, null
  br i1 %cmp18, label %end, label %if.end20

if.end20:                                         ; preds = %if.end15
  %call21 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef nonnull %call16) #12
  %call22 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call21) #11
  %cmp23.not = icmp eq i32 %call22, 1
  br i1 %cmp23.not, label %if.end27, label %if.then24

if.then24:                                        ; preds = %if.end20
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call25 = tail call i8* @opt_getprog() #11
  %call26 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.48, i64 0, i64 0), i8* noundef %call25, i8* noundef %filename) #11
  br label %end

if.end27:                                         ; preds = %if.end20
  %call29 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call21, i32 noundef 0) #11
  %x509 = bitcast i8* %call29 to %struct.x509_st**
  %3 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !38
  %cmp30.not = icmp eq %struct.x509_st* %3, null
  br i1 %cmp30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end27
  %call33 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %3) #11
  %4 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !38
  %5 = load %struct.evp_md_st*, %struct.evp_md_st** @evpmd, align 8, !tbaa !5
  %call35 = call i32 @X509_digest(%struct.x509_st* noundef %4, %struct.evp_md_st* noundef %5, i8* noundef nonnull %0, i32* noundef null) #11
  %tobool.not = icmp eq i32 %call35, 0
  br i1 %tobool.not, label %if.then36, label %if.end55

if.then36:                                        ; preds = %if.then31
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call37 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0)) #11
  br label %end

if.else:                                          ; preds = %if.end27
  %crl = getelementptr inbounds i8, i8* %call29, i64 8
  %7 = bitcast i8* %crl to %struct.X509_crl_st**
  %8 = load %struct.X509_crl_st*, %struct.X509_crl_st** %7, align 8, !tbaa !41
  %cmp40.not = icmp eq %struct.X509_crl_st* %8, null
  br i1 %cmp40.not, label %end, label %if.then41

if.then41:                                        ; preds = %if.else
  %call43 = tail call %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef nonnull %8) #11
  %9 = load %struct.X509_crl_st*, %struct.X509_crl_st** %7, align 8, !tbaa !41
  %10 = load %struct.evp_md_st*, %struct.evp_md_st** @evpmd, align 8, !tbaa !5
  %call46 = call i32 @X509_CRL_digest(%struct.X509_crl_st* noundef %9, %struct.evp_md_st* noundef %10, i8* noundef nonnull %0, i32* noundef null) #11
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %if.end55

if.then48:                                        ; preds = %if.then41
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call49 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0)) #11
  br label %end

if.end55:                                         ; preds = %if.then41, %if.then31
  %name.0 = phi %struct.X509_name_st* [ %call33, %if.then31 ], [ %call43, %if.then41 ]
  %type.0 = phi i32 [ 0, %if.then31 ], [ 1, %if.then41 ]
  %cmp56.not = icmp eq %struct.X509_name_st* %name.0, null
  br i1 %cmp56.not, label %end, label %if.then57

if.then57:                                        ; preds = %if.end55
  %12 = add i32 %h, -1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %if.then60, label %if.end73

if.then60:                                        ; preds = %if.then57
  %14 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #13
  %call61 = call %struct.ossl_lib_ctx_st* @app_get0_libctx() #11
  %call62 = call i8* @app_get0_propq() #11
  %call63 = call i64 @X509_NAME_hash_ex(%struct.X509_name_st* noundef nonnull %name.0, %struct.ossl_lib_ctx_st* noundef %call61, i8* noundef %call62, i32* noundef nonnull %ok) #11
  %15 = load i32, i32* %ok, align 4, !tbaa !9
  %tobool64.not = icmp eq i32 %15, 0
  br i1 %tobool64.not, label %if.else68, label %if.then65

if.then65:                                        ; preds = %if.then60
  %conv = trunc i64 %call63 to i32
  %call67 = call fastcc i32 @add_entry(i32 noundef %type.0, i32 noundef %conv, i8* noundef %filename, i8* noundef nonnull %0, i32 noundef 1, i16 noundef zeroext -1) #12
  br label %if.end72

if.else68:                                        ; preds = %if.then60
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call69 = call i8* @opt_getprog() #11
  %call70 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i64 0, i64 0), i8* noundef %call69) #11
  br label %if.end72

if.end72:                                         ; preds = %if.else68, %if.then65
  %errs.0 = phi i32 [ %call67, %if.then65 ], [ 1, %if.else68 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #13
  br label %if.end73

if.end73:                                         ; preds = %if.then57, %if.end72
  %errs.1 = phi i32 [ %errs.0, %if.end72 ], [ 0, %if.then57 ]
  %17 = and i32 %h, -3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.then79, label %end

if.then79:                                        ; preds = %if.end73
  %call80 = call i64 @X509_NAME_hash_old(%struct.X509_name_st* noundef nonnull %name.0) #11
  %conv81 = trunc i64 %call80 to i32
  %call83 = call fastcc i32 @add_entry(i32 noundef %type.0, i32 noundef %conv81, i8* noundef %filename, i8* noundef nonnull %0, i32 noundef 1, i16 noundef zeroext -1) #12
  %add84 = add nsw i32 %call83, %errs.1
  br label %end

end:                                              ; preds = %for.cond.2, %if.else, %if.end55, %if.end73, %if.then79, %if.end15, %entry, %if.then48, %if.then36, %if.then24, %if.then11
  %errs.2 = phi i32 [ 0, %entry ], [ 1, %if.then11 ], [ 0, %if.end15 ], [ 0, %if.then24 ], [ %add84, %if.then79 ], [ %errs.1, %if.end73 ], [ 0, %if.end55 ], [ 1, %if.then36 ], [ 1, %if.then48 ], [ 1, %if.else ], [ 0, %for.cond.2 ]
  %inf.0 = phi %struct.stack_st_X509_INFO* [ null, %entry ], [ null, %if.then11 ], [ null, %if.end15 ], [ %call16, %if.then24 ], [ %call16, %if.then79 ], [ %call16, %if.end73 ], [ %call16, %if.end55 ], [ %call16, %if.then36 ], [ %call16, %if.then48 ], [ %call16, %if.else ], [ null, %for.cond.2 ]
  %call87 = call fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef %inf.0) #12
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call87, void (i8*)* noundef bitcast (void (%struct.X509_info_st*)* @X509_INFO_free to void (i8*)*)) #11
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #13
  ret i32 %errs.2
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @bit_set(i8* nocapture noundef %set, i32 noundef %bit) unnamed_addr #7 {
entry:
  %and = and i32 %bit, 7
  %shl = shl nuw nsw i32 1, %and
  %shr = lshr i32 %bit, 3
  %idxprom = zext i32 %shr to i64
  %arrayidx = getelementptr inbounds i8, i8* %set, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !36
  %1 = trunc i32 %shl to i8
  %conv1 = or i8 %0, %1
  store i8 %conv1, i8* %arrayidx, align 1, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @bit_isset(i8* nocapture noundef readonly %set, i32 noundef %bit) unnamed_addr #8 {
entry:
  %shr = lshr i32 %bit, 3
  %idxprom = zext i32 %shr to i64
  %arrayidx = getelementptr inbounds i8, i8* %set, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !36
  %conv = zext i8 %0 to i32
  %and = and i32 %bit, 7
  %shl = shl nuw nsw i32 1, %and
  %and1 = and i32 %shl, %conv
  ret i32 %and1
}

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #9

declare dso_local i8* @opt_getprog() local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i32 @symlink(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @str_free(i8* noundef %s) #0 {
entry:
  tail call void @CRYPTO_free(i8* noundef %s, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 noundef 320) #11
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #9

declare dso_local i32 @OPENSSL_hexchar2int(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncasecmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i64 @readlink(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_entry(i32 noundef %type, i32 noundef %hash, i8* noundef %filename, i8* noundef %digest, i32 noundef %need_symlink, i16 noundef zeroext %old_id) unnamed_addr #0 {
entry:
  %add = add i32 %hash, %type
  %0 = urem i32 %add, 257
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [257 x %struct.bucket_st*], [257 x %struct.bucket_st*]* @hash_table, i64 0, i64 %idxprom
  %bp.0161 = load %struct.bucket_st*, %struct.bucket_st** %arrayidx, align 8, !tbaa !5
  %cond150162 = icmp eq %struct.bucket_st* %bp.0161, null
  br i1 %cond150162, label %if.then10, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %bp.0163 = phi %struct.bucket_st* [ %bp.0, %for.inc ], [ %bp.0161, %entry ]
  %type2 = getelementptr inbounds %struct.bucket_st, %struct.bucket_st* %bp.0163, i64 0, i32 4
  %1 = load i16, i16* %type2, align 4, !tbaa !29
  %conv3 = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv3, %type
  br i1 %cmp, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %hash5 = getelementptr inbounds %struct.bucket_st, %struct.bucket_st* %bp.0163, i64 0, i32 3
  %2 = load i32, i32* %hash5, align 8, !tbaa !28
  %cmp6 = icmp eq i32 %2, %hash
  br i1 %cmp6, label %if.end19, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %next = getelementptr inbounds %struct.bucket_st, %struct.bucket_st* %bp.0163, i64 0, i32 0
  %bp.0 = load %struct.bucket_st*, %struct.bucket_st** %next, align 8, !tbaa !5
  %cond150 = icmp eq %struct.bucket_st* %bp.0, null
  br i1 %cond150, label %if.then10, label %for.body, !llvm.loop !42

if.then10:                                        ; preds = %for.inc, %entry
  %call = tail call i8* @app_malloc(i64 noundef 32, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)) #11
  %3 = bitcast i8* %call to %struct.bucket_st*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %call, i8 0, i64 32, i1 false)
  %4 = load %struct.bucket_st*, %struct.bucket_st** %arrayidx, align 8, !tbaa !5
  %next13 = bitcast i8* %call to %struct.bucket_st**
  store %struct.bucket_st* %4, %struct.bucket_st** %next13, align 8, !tbaa !19
  %conv14 = trunc i32 %type to i16
  %type15 = getelementptr inbounds i8, i8* %call, i64 28
  %5 = bitcast i8* %type15 to i16*
  store i16 %conv14, i16* %5, align 4, !tbaa !29
  %hash16 = getelementptr inbounds i8, i8* %call, i64 24
  %6 = bitcast i8* %hash16 to i32*
  store i32 %hash, i32* %6, align 8, !tbaa !28
  %7 = bitcast %struct.bucket_st** %arrayidx to i8**
  store i8* %call, i8** %7, align 8, !tbaa !5
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %if.then10
  %bp.1 = phi %struct.bucket_st* [ %3, %if.then10 ], [ %bp.0163, %land.lhs.true ]
  %first_entry = getelementptr inbounds %struct.bucket_st, %struct.bucket_st* %bp.1, i64 0, i32 1
  %ep.0165 = load %struct.hentry_st*, %struct.hentry_st** %first_entry, align 8, !tbaa !5
  %tobool21.not166 = icmp eq %struct.hentry_st* %ep.0165, null
  br i1 %tobool21.not166, label %if.then51, label %for.body22.lr.ph

for.body22.lr.ph:                                 ; preds = %if.end19
  %tobool23.not = icmp eq i8* %digest, null
  %8 = load i32, i32* @evpmdsize, align 4
  %conv26 = sext i32 %8 to i64
  br label %for.body22

for.body22:                                       ; preds = %for.body22.lr.ph, %for.inc46
  %ep.0168 = phi %struct.hentry_st* [ %ep.0165, %for.body22.lr.ph ], [ %ep.0, %for.inc46 ]
  %found.0167 = phi %struct.hentry_st* [ null, %for.body22.lr.ph ], [ %found.1, %for.inc46 ]
  br i1 %tobool23.not, label %if.end35, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %for.body22
  %arraydecay = getelementptr inbounds %struct.hentry_st, %struct.hentry_st* %ep.0168, i64 0, i32 4, i64 0
  %call27 = tail call i32 @memcmp(i8* noundef nonnull %digest, i8* noundef nonnull %arraydecay, i64 noundef %conv26) #14
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end35.thread

if.then30:                                        ; preds = %land.lhs.true24
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call31 = tail call i8* @opt_getprog() #11
  %cmp32 = icmp eq i32 %type, 0
  %cond = select i1 %cmp32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0)
  %call34 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.41, i64 0, i64 0), i8* noundef %call31, i8* noundef %cond, i8* noundef %filename) #11
  br label %cleanup

if.end35:                                         ; preds = %for.body22
  %filename36 = getelementptr inbounds %struct.hentry_st, %struct.hentry_st* %ep.0168, i64 0, i32 1
  %10 = load i8*, i8** %filename36, align 8, !tbaa !30
  %call37 = tail call i32 @strcmp(i8* noundef %filename, i8* noundef %10) #14
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.end75, label %for.inc46

if.end35.thread:                                  ; preds = %land.lhs.true24
  %filename36151 = getelementptr inbounds %struct.hentry_st, %struct.hentry_st* %ep.0168, i64 0, i32 1
  %11 = load i8*, i8** %filename36151, align 8, !tbaa !30
  %call37152 = tail call i32 @strcmp(i8* noundef %filename, i8* noundef %11) #14
  %cmp38153 = icmp eq i32 %call37152, 0
  %spec.select = select i1 %cmp38153, %struct.hentry_st* %ep.0168, %struct.hentry_st* %found.0167
  br label %for.inc46

for.inc46:                                        ; preds = %if.end35.thread, %if.end35
  %found.1 = phi %struct.hentry_st* [ %found.0167, %if.end35 ], [ %spec.select, %if.end35.thread ]
  %next47 = getelementptr inbounds %struct.hentry_st, %struct.hentry_st* %ep.0168, i64 0, i32 0
  %ep.0 = load %struct.hentry_st*, %struct.hentry_st** %next47, align 8, !tbaa !5
  %tobool21.not = icmp eq %struct.hentry_st* %ep.0, null
  br i1 %tobool21.not, label %for.end48, label %for.body22, !llvm.loop !43

for.end48:                                        ; preds = %for.inc46
  %cmp49 = icmp eq %struct.hentry_st* %found.1, null
  br i1 %cmp49, label %if.then51, label %if.end75

if.then51:                                        ; preds = %if.end19, %for.end48
  %num_needed = getelementptr inbounds %struct.bucket_st, %struct.bucket_st* %bp.1, i64 0, i32 5
  %12 = load i16, i16* %num_needed, align 2, !tbaa !22
  %cmp53 = icmp ugt i16 %12, 255
  br i1 %cmp53, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.then51
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call56 = tail call i8* @opt_getprog() #11
  %call57 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0), i8* noundef %call56, i8* noundef %filename) #11
  br label %cleanup

if.end58:                                         ; preds = %if.then51
  %call59 = tail call i8* @app_malloc(i64 noundef 88, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0)) #11
  %14 = bitcast i8* %call59 to %struct.hentry_st*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %call59, i8 0, i64 88, i1 false)
  %old_id60 = getelementptr inbounds i8, i8* %call59, i64 16
  %15 = bitcast i8* %old_id60 to i16*
  store i16 -1, i16* %15, align 8, !tbaa !23
  %call61 = tail call i8* @CRYPTO_strdup(i8* noundef %filename, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 noundef 170) #11
  %filename62 = getelementptr inbounds i8, i8* %call59, i64 8
  %16 = bitcast i8* %filename62 to i8**
  store i8* %call61, i8** %16, align 8, !tbaa !30
  %last_entry = getelementptr inbounds %struct.bucket_st, %struct.bucket_st* %bp.1, i64 0, i32 2
  %17 = load %struct.hentry_st*, %struct.hentry_st** %last_entry, align 8, !tbaa !44
  %tobool63.not = icmp eq %struct.hentry_st* %17, null
  br i1 %tobool63.not, label %if.end67, label %if.then64

if.then64:                                        ; preds = %if.end58
  %18 = bitcast %struct.hentry_st* %17 to i8**
  store i8* %call59, i8** %18, align 8, !tbaa !27
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end58
  %19 = load %struct.hentry_st*, %struct.hentry_st** %first_entry, align 8, !tbaa !26
  %cmp69 = icmp eq %struct.hentry_st* %19, null
  br i1 %cmp69, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end67
  %20 = bitcast %struct.hentry_st** %first_entry to i8**
  store i8* %call59, i8** %20, align 8, !tbaa !26
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end67
  %21 = bitcast %struct.hentry_st** %last_entry to i8**
  store i8* %call59, i8** %21, align 8, !tbaa !44
  br label %if.end75

if.end75:                                         ; preds = %if.end35, %if.end73, %for.end48
  %ep.1 = phi %struct.hentry_st* [ %14, %if.end73 ], [ %found.1, %for.end48 ], [ %ep.0168, %if.end35 ]
  %old_id77 = getelementptr inbounds %struct.hentry_st, %struct.hentry_st* %ep.1, i64 0, i32 2
  %22 = load i16, i16* %old_id77, align 8, !tbaa !23
  %cmp79 = icmp ugt i16 %22, %old_id
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.end75
  store i16 %old_id, i16* %old_id77, align 8, !tbaa !23
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end75
  %tobool84.not = icmp eq i32 %need_symlink, 0
  br i1 %tobool84.not, label %cleanup, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %if.end83
  %need_symlink86 = getelementptr inbounds %struct.hentry_st, %struct.hentry_st* %ep.1, i64 0, i32 3
  %23 = load i8, i8* %need_symlink86, align 2, !tbaa !31
  %tobool87.not = icmp eq i8 %23, 0
  br i1 %tobool87.not, label %if.then88, label %cleanup

if.then88:                                        ; preds = %land.lhs.true85
  store i8 1, i8* %need_symlink86, align 2, !tbaa !31
  %num_needed90 = getelementptr inbounds %struct.bucket_st, %struct.bucket_st* %bp.1, i64 0, i32 5
  %24 = load i16, i16* %num_needed90, align 2, !tbaa !22
  %inc = add i16 %24, 1
  store i16 %inc, i16* %num_needed90, align 2, !tbaa !22
  %arraydecay92 = getelementptr inbounds %struct.hentry_st, %struct.hentry_st* %ep.1, i64 0, i32 4, i64 0
  %25 = load i32, i32* @evpmdsize, align 4, !tbaa !9
  %conv93 = sext i32 %25 to i64
  %call94 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay92, i8* noundef %digest, i64 noundef %conv93) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %land.lhs.true85, %if.then88, %if.then55, %if.then30
  %retval.0 = phi i32 [ 0, %if.then30 ], [ 1, %if.then55 ], [ 0, %if.then88 ], [ 0, %land.lhs.true85 ], [ 0, %if.end83 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_X509_INFO* @PEM_X509_INFO_read_bio(%struct.bio_st* noundef, %struct.stack_st_X509_INFO* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_X509_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_digest(%struct.x509_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_CRL_digest(%struct.X509_crl_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i64 @X509_NAME_hash_ex(%struct.X509_name_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #2

declare dso_local i8* @app_get0_propq() local_unnamed_addr #2

declare dso_local i64 @X509_NAME_hash_old(%struct.X509_name_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_X509_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @X509_INFO_free(%struct.X509_info_st* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #15 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = !{!15, !10, i64 24}
!15 = !{!"stat", !16, i64 0, !16, i64 8, !16, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !17, i64 72, !17, i64 88, !17, i64 104, !7, i64 120}
!16 = !{!"long", !7, i64 0}
!17 = !{!"timespec", !16, i64 0, !16, i64 8}
!18 = distinct !{!18, !4}
!19 = !{!20, !6, i64 0}
!20 = !{!"bucket_st", !6, i64 0, !6, i64 8, !6, i64 16, !10, i64 24, !21, i64 28, !21, i64 30}
!21 = !{!"short", !7, i64 0}
!22 = !{!20, !21, i64 30}
!23 = !{!24, !21, i64 16}
!24 = !{!"hentry_st", !6, i64 0, !6, i64 8, !21, i64 16, !7, i64 18, !7, i64 19}
!25 = distinct !{!25, !4}
!26 = !{!20, !6, i64 8}
!27 = !{!24, !6, i64 0}
!28 = !{!20, !10, i64 24}
!29 = !{!20, !21, i64 28}
!30 = !{!24, !6, i64 8}
!31 = !{!24, !7, i64 18}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !4}
!35 = distinct !{!35, !4}
!36 = !{!7, !7, i64 0}
!37 = !{!21, !21, i64 0}
!38 = !{!39, !6, i64 0}
!39 = !{!"X509_info_st", !6, i64 0, !6, i64 8, !6, i64 16, !40, i64 24, !10, i64 48, !6, i64 56}
!40 = !{!"evp_cipher_info_st", !6, i64 0, !7, i64 8}
!41 = !{!39, !6, i64 8}
!42 = distinct !{!42, !4}
!43 = distinct !{!43, !4}
!44 = !{!20, !6, i64 16}

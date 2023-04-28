; ModuleID = 'crypto/bf/bf_enc.c'
source_filename = "crypto/bf/bf_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i32], [1024 x i32] }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @BF_encrypt(i32* nocapture noundef %data, %struct.bf_key_st* noundef readonly %key) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 0
  %0 = load i32, i32* %data, align 4, !tbaa !4
  %arrayidx2 = getelementptr inbounds i32, i32* %data, i64 1
  %1 = load i32, i32* %arrayidx2, align 4, !tbaa !4
  %2 = load i32, i32* %arraydecay, align 4, !tbaa !4
  %xor = xor i32 %2, %0
  %arrayidx4 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 1
  %3 = load i32, i32* %arrayidx4, align 4, !tbaa !4
  %xor5 = xor i32 %3, %1
  %shr = lshr i32 %xor, 24
  %idxprom = zext i32 %shr to i64
  %arrayidx6 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom
  %4 = load i32, i32* %arrayidx6, align 4, !tbaa !4
  %shr7 = lshr i32 %xor, 16
  %and8 = and i32 %shr7, 255
  %add = or i32 %and8, 256
  %idxprom9 = zext i32 %add to i64
  %arrayidx10 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom9
  %5 = load i32, i32* %arrayidx10, align 4, !tbaa !4
  %add11 = add i32 %5, %4
  %shr12 = lshr i32 %xor, 8
  %and13 = and i32 %shr12, 255
  %add14 = or i32 %and13, 512
  %idxprom15 = zext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom15
  %6 = load i32, i32* %arrayidx16, align 4, !tbaa !4
  %xor17 = xor i32 %add11, %6
  %and18 = and i32 %xor, 255
  %add19 = or i32 %and18, 768
  %idxprom20 = zext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom20
  %7 = load i32, i32* %arrayidx21, align 4, !tbaa !4
  %add22 = add i32 %xor17, %7
  %xor24 = xor i32 %xor5, %add22
  %arrayidx25 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 2
  %8 = load i32, i32* %arrayidx25, align 4, !tbaa !4
  %xor26 = xor i32 %8, %xor
  %shr27 = lshr i32 %xor24, 24
  %idxprom29 = zext i32 %shr27 to i64
  %arrayidx30 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom29
  %9 = load i32, i32* %arrayidx30, align 4, !tbaa !4
  %shr31 = lshr i32 %xor24, 16
  %and32 = and i32 %shr31, 255
  %add33 = or i32 %and32, 256
  %idxprom34 = zext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom34
  %10 = load i32, i32* %arrayidx35, align 4, !tbaa !4
  %add36 = add i32 %10, %9
  %shr37 = lshr i32 %xor24, 8
  %and38 = and i32 %shr37, 255
  %add39 = or i32 %and38, 512
  %idxprom40 = zext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom40
  %11 = load i32, i32* %arrayidx41, align 4, !tbaa !4
  %xor42 = xor i32 %add36, %11
  %and43 = and i32 %xor24, 255
  %add44 = or i32 %and43, 768
  %idxprom45 = zext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom45
  %12 = load i32, i32* %arrayidx46, align 4, !tbaa !4
  %add47 = add i32 %xor42, %12
  %xor49 = xor i32 %xor26, %add47
  %arrayidx50 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 3
  %13 = load i32, i32* %arrayidx50, align 4, !tbaa !4
  %xor51 = xor i32 %13, %xor24
  %shr52 = lshr i32 %xor49, 24
  %idxprom54 = zext i32 %shr52 to i64
  %arrayidx55 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom54
  %14 = load i32, i32* %arrayidx55, align 4, !tbaa !4
  %shr56 = lshr i32 %xor49, 16
  %and57 = and i32 %shr56, 255
  %add58 = or i32 %and57, 256
  %idxprom59 = zext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom59
  %15 = load i32, i32* %arrayidx60, align 4, !tbaa !4
  %add61 = add i32 %15, %14
  %shr62 = lshr i32 %xor49, 8
  %and63 = and i32 %shr62, 255
  %add64 = or i32 %and63, 512
  %idxprom65 = zext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom65
  %16 = load i32, i32* %arrayidx66, align 4, !tbaa !4
  %xor67 = xor i32 %add61, %16
  %and68 = and i32 %xor49, 255
  %add69 = or i32 %and68, 768
  %idxprom70 = zext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom70
  %17 = load i32, i32* %arrayidx71, align 4, !tbaa !4
  %add72 = add i32 %xor67, %17
  %xor74 = xor i32 %xor51, %add72
  %arrayidx75 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 4
  %18 = load i32, i32* %arrayidx75, align 4, !tbaa !4
  %xor76 = xor i32 %18, %xor49
  %shr77 = lshr i32 %xor74, 24
  %idxprom79 = zext i32 %shr77 to i64
  %arrayidx80 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom79
  %19 = load i32, i32* %arrayidx80, align 4, !tbaa !4
  %shr81 = lshr i32 %xor74, 16
  %and82 = and i32 %shr81, 255
  %add83 = or i32 %and82, 256
  %idxprom84 = zext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom84
  %20 = load i32, i32* %arrayidx85, align 4, !tbaa !4
  %add86 = add i32 %20, %19
  %shr87 = lshr i32 %xor74, 8
  %and88 = and i32 %shr87, 255
  %add89 = or i32 %and88, 512
  %idxprom90 = zext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom90
  %21 = load i32, i32* %arrayidx91, align 4, !tbaa !4
  %xor92 = xor i32 %add86, %21
  %and93 = and i32 %xor74, 255
  %add94 = or i32 %and93, 768
  %idxprom95 = zext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom95
  %22 = load i32, i32* %arrayidx96, align 4, !tbaa !4
  %add97 = add i32 %xor92, %22
  %xor99 = xor i32 %xor76, %add97
  %arrayidx100 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 5
  %23 = load i32, i32* %arrayidx100, align 4, !tbaa !4
  %xor101 = xor i32 %23, %xor74
  %shr102 = lshr i32 %xor99, 24
  %idxprom104 = zext i32 %shr102 to i64
  %arrayidx105 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom104
  %24 = load i32, i32* %arrayidx105, align 4, !tbaa !4
  %shr106 = lshr i32 %xor99, 16
  %and107 = and i32 %shr106, 255
  %add108 = or i32 %and107, 256
  %idxprom109 = zext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom109
  %25 = load i32, i32* %arrayidx110, align 4, !tbaa !4
  %add111 = add i32 %25, %24
  %shr112 = lshr i32 %xor99, 8
  %and113 = and i32 %shr112, 255
  %add114 = or i32 %and113, 512
  %idxprom115 = zext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom115
  %26 = load i32, i32* %arrayidx116, align 4, !tbaa !4
  %xor117 = xor i32 %add111, %26
  %and118 = and i32 %xor99, 255
  %add119 = or i32 %and118, 768
  %idxprom120 = zext i32 %add119 to i64
  %arrayidx121 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom120
  %27 = load i32, i32* %arrayidx121, align 4, !tbaa !4
  %add122 = add i32 %xor117, %27
  %xor124 = xor i32 %xor101, %add122
  %arrayidx125 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 6
  %28 = load i32, i32* %arrayidx125, align 4, !tbaa !4
  %xor126 = xor i32 %28, %xor99
  %shr127 = lshr i32 %xor124, 24
  %idxprom129 = zext i32 %shr127 to i64
  %arrayidx130 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom129
  %29 = load i32, i32* %arrayidx130, align 4, !tbaa !4
  %shr131 = lshr i32 %xor124, 16
  %and132 = and i32 %shr131, 255
  %add133 = or i32 %and132, 256
  %idxprom134 = zext i32 %add133 to i64
  %arrayidx135 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom134
  %30 = load i32, i32* %arrayidx135, align 4, !tbaa !4
  %add136 = add i32 %30, %29
  %shr137 = lshr i32 %xor124, 8
  %and138 = and i32 %shr137, 255
  %add139 = or i32 %and138, 512
  %idxprom140 = zext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom140
  %31 = load i32, i32* %arrayidx141, align 4, !tbaa !4
  %xor142 = xor i32 %add136, %31
  %and143 = and i32 %xor124, 255
  %add144 = or i32 %and143, 768
  %idxprom145 = zext i32 %add144 to i64
  %arrayidx146 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom145
  %32 = load i32, i32* %arrayidx146, align 4, !tbaa !4
  %add147 = add i32 %xor142, %32
  %xor149 = xor i32 %xor126, %add147
  %arrayidx150 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 7
  %33 = load i32, i32* %arrayidx150, align 4, !tbaa !4
  %xor151 = xor i32 %33, %xor124
  %shr152 = lshr i32 %xor149, 24
  %idxprom154 = zext i32 %shr152 to i64
  %arrayidx155 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom154
  %34 = load i32, i32* %arrayidx155, align 4, !tbaa !4
  %shr156 = lshr i32 %xor149, 16
  %and157 = and i32 %shr156, 255
  %add158 = or i32 %and157, 256
  %idxprom159 = zext i32 %add158 to i64
  %arrayidx160 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom159
  %35 = load i32, i32* %arrayidx160, align 4, !tbaa !4
  %add161 = add i32 %35, %34
  %shr162 = lshr i32 %xor149, 8
  %and163 = and i32 %shr162, 255
  %add164 = or i32 %and163, 512
  %idxprom165 = zext i32 %add164 to i64
  %arrayidx166 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom165
  %36 = load i32, i32* %arrayidx166, align 4, !tbaa !4
  %xor167 = xor i32 %add161, %36
  %and168 = and i32 %xor149, 255
  %add169 = or i32 %and168, 768
  %idxprom170 = zext i32 %add169 to i64
  %arrayidx171 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom170
  %37 = load i32, i32* %arrayidx171, align 4, !tbaa !4
  %add172 = add i32 %xor167, %37
  %xor174 = xor i32 %xor151, %add172
  %arrayidx175 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 8
  %38 = load i32, i32* %arrayidx175, align 4, !tbaa !4
  %xor176 = xor i32 %38, %xor149
  %shr177 = lshr i32 %xor174, 24
  %idxprom179 = zext i32 %shr177 to i64
  %arrayidx180 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom179
  %39 = load i32, i32* %arrayidx180, align 4, !tbaa !4
  %shr181 = lshr i32 %xor174, 16
  %and182 = and i32 %shr181, 255
  %add183 = or i32 %and182, 256
  %idxprom184 = zext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom184
  %40 = load i32, i32* %arrayidx185, align 4, !tbaa !4
  %add186 = add i32 %40, %39
  %shr187 = lshr i32 %xor174, 8
  %and188 = and i32 %shr187, 255
  %add189 = or i32 %and188, 512
  %idxprom190 = zext i32 %add189 to i64
  %arrayidx191 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom190
  %41 = load i32, i32* %arrayidx191, align 4, !tbaa !4
  %xor192 = xor i32 %add186, %41
  %and193 = and i32 %xor174, 255
  %add194 = or i32 %and193, 768
  %idxprom195 = zext i32 %add194 to i64
  %arrayidx196 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom195
  %42 = load i32, i32* %arrayidx196, align 4, !tbaa !4
  %add197 = add i32 %xor192, %42
  %xor199 = xor i32 %xor176, %add197
  %arrayidx200 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 9
  %43 = load i32, i32* %arrayidx200, align 4, !tbaa !4
  %xor201 = xor i32 %43, %xor174
  %shr202 = lshr i32 %xor199, 24
  %idxprom204 = zext i32 %shr202 to i64
  %arrayidx205 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom204
  %44 = load i32, i32* %arrayidx205, align 4, !tbaa !4
  %shr206 = lshr i32 %xor199, 16
  %and207 = and i32 %shr206, 255
  %add208 = or i32 %and207, 256
  %idxprom209 = zext i32 %add208 to i64
  %arrayidx210 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom209
  %45 = load i32, i32* %arrayidx210, align 4, !tbaa !4
  %add211 = add i32 %45, %44
  %shr212 = lshr i32 %xor199, 8
  %and213 = and i32 %shr212, 255
  %add214 = or i32 %and213, 512
  %idxprom215 = zext i32 %add214 to i64
  %arrayidx216 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom215
  %46 = load i32, i32* %arrayidx216, align 4, !tbaa !4
  %xor217 = xor i32 %add211, %46
  %and218 = and i32 %xor199, 255
  %add219 = or i32 %and218, 768
  %idxprom220 = zext i32 %add219 to i64
  %arrayidx221 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom220
  %47 = load i32, i32* %arrayidx221, align 4, !tbaa !4
  %add222 = add i32 %xor217, %47
  %xor224 = xor i32 %xor201, %add222
  %arrayidx225 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 10
  %48 = load i32, i32* %arrayidx225, align 4, !tbaa !4
  %xor226 = xor i32 %48, %xor199
  %shr227 = lshr i32 %xor224, 24
  %idxprom229 = zext i32 %shr227 to i64
  %arrayidx230 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom229
  %49 = load i32, i32* %arrayidx230, align 4, !tbaa !4
  %shr231 = lshr i32 %xor224, 16
  %and232 = and i32 %shr231, 255
  %add233 = or i32 %and232, 256
  %idxprom234 = zext i32 %add233 to i64
  %arrayidx235 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom234
  %50 = load i32, i32* %arrayidx235, align 4, !tbaa !4
  %add236 = add i32 %50, %49
  %shr237 = lshr i32 %xor224, 8
  %and238 = and i32 %shr237, 255
  %add239 = or i32 %and238, 512
  %idxprom240 = zext i32 %add239 to i64
  %arrayidx241 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom240
  %51 = load i32, i32* %arrayidx241, align 4, !tbaa !4
  %xor242 = xor i32 %add236, %51
  %and243 = and i32 %xor224, 255
  %add244 = or i32 %and243, 768
  %idxprom245 = zext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom245
  %52 = load i32, i32* %arrayidx246, align 4, !tbaa !4
  %add247 = add i32 %xor242, %52
  %xor249 = xor i32 %xor226, %add247
  %arrayidx250 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 11
  %53 = load i32, i32* %arrayidx250, align 4, !tbaa !4
  %xor251 = xor i32 %53, %xor224
  %shr252 = lshr i32 %xor249, 24
  %idxprom254 = zext i32 %shr252 to i64
  %arrayidx255 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom254
  %54 = load i32, i32* %arrayidx255, align 4, !tbaa !4
  %shr256 = lshr i32 %xor249, 16
  %and257 = and i32 %shr256, 255
  %add258 = or i32 %and257, 256
  %idxprom259 = zext i32 %add258 to i64
  %arrayidx260 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom259
  %55 = load i32, i32* %arrayidx260, align 4, !tbaa !4
  %add261 = add i32 %55, %54
  %shr262 = lshr i32 %xor249, 8
  %and263 = and i32 %shr262, 255
  %add264 = or i32 %and263, 512
  %idxprom265 = zext i32 %add264 to i64
  %arrayidx266 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom265
  %56 = load i32, i32* %arrayidx266, align 4, !tbaa !4
  %xor267 = xor i32 %add261, %56
  %and268 = and i32 %xor249, 255
  %add269 = or i32 %and268, 768
  %idxprom270 = zext i32 %add269 to i64
  %arrayidx271 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom270
  %57 = load i32, i32* %arrayidx271, align 4, !tbaa !4
  %add272 = add i32 %xor267, %57
  %xor274 = xor i32 %xor251, %add272
  %arrayidx275 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 12
  %58 = load i32, i32* %arrayidx275, align 4, !tbaa !4
  %xor276 = xor i32 %58, %xor249
  %shr277 = lshr i32 %xor274, 24
  %idxprom279 = zext i32 %shr277 to i64
  %arrayidx280 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom279
  %59 = load i32, i32* %arrayidx280, align 4, !tbaa !4
  %shr281 = lshr i32 %xor274, 16
  %and282 = and i32 %shr281, 255
  %add283 = or i32 %and282, 256
  %idxprom284 = zext i32 %add283 to i64
  %arrayidx285 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom284
  %60 = load i32, i32* %arrayidx285, align 4, !tbaa !4
  %add286 = add i32 %60, %59
  %shr287 = lshr i32 %xor274, 8
  %and288 = and i32 %shr287, 255
  %add289 = or i32 %and288, 512
  %idxprom290 = zext i32 %add289 to i64
  %arrayidx291 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom290
  %61 = load i32, i32* %arrayidx291, align 4, !tbaa !4
  %xor292 = xor i32 %add286, %61
  %and293 = and i32 %xor274, 255
  %add294 = or i32 %and293, 768
  %idxprom295 = zext i32 %add294 to i64
  %arrayidx296 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom295
  %62 = load i32, i32* %arrayidx296, align 4, !tbaa !4
  %add297 = add i32 %xor292, %62
  %xor299 = xor i32 %xor276, %add297
  %arrayidx300 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 13
  %63 = load i32, i32* %arrayidx300, align 4, !tbaa !4
  %xor301 = xor i32 %63, %xor274
  %shr302 = lshr i32 %xor299, 24
  %idxprom304 = zext i32 %shr302 to i64
  %arrayidx305 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom304
  %64 = load i32, i32* %arrayidx305, align 4, !tbaa !4
  %shr306 = lshr i32 %xor299, 16
  %and307 = and i32 %shr306, 255
  %add308 = or i32 %and307, 256
  %idxprom309 = zext i32 %add308 to i64
  %arrayidx310 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom309
  %65 = load i32, i32* %arrayidx310, align 4, !tbaa !4
  %add311 = add i32 %65, %64
  %shr312 = lshr i32 %xor299, 8
  %and313 = and i32 %shr312, 255
  %add314 = or i32 %and313, 512
  %idxprom315 = zext i32 %add314 to i64
  %arrayidx316 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom315
  %66 = load i32, i32* %arrayidx316, align 4, !tbaa !4
  %xor317 = xor i32 %add311, %66
  %and318 = and i32 %xor299, 255
  %add319 = or i32 %and318, 768
  %idxprom320 = zext i32 %add319 to i64
  %arrayidx321 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom320
  %67 = load i32, i32* %arrayidx321, align 4, !tbaa !4
  %add322 = add i32 %xor317, %67
  %xor324 = xor i32 %xor301, %add322
  %arrayidx325 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 14
  %68 = load i32, i32* %arrayidx325, align 4, !tbaa !4
  %xor326 = xor i32 %68, %xor299
  %shr327 = lshr i32 %xor324, 24
  %idxprom329 = zext i32 %shr327 to i64
  %arrayidx330 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom329
  %69 = load i32, i32* %arrayidx330, align 4, !tbaa !4
  %shr331 = lshr i32 %xor324, 16
  %and332 = and i32 %shr331, 255
  %add333 = or i32 %and332, 256
  %idxprom334 = zext i32 %add333 to i64
  %arrayidx335 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom334
  %70 = load i32, i32* %arrayidx335, align 4, !tbaa !4
  %add336 = add i32 %70, %69
  %shr337 = lshr i32 %xor324, 8
  %and338 = and i32 %shr337, 255
  %add339 = or i32 %and338, 512
  %idxprom340 = zext i32 %add339 to i64
  %arrayidx341 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom340
  %71 = load i32, i32* %arrayidx341, align 4, !tbaa !4
  %xor342 = xor i32 %add336, %71
  %and343 = and i32 %xor324, 255
  %add344 = or i32 %and343, 768
  %idxprom345 = zext i32 %add344 to i64
  %arrayidx346 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom345
  %72 = load i32, i32* %arrayidx346, align 4, !tbaa !4
  %add347 = add i32 %xor342, %72
  %xor349 = xor i32 %xor326, %add347
  %arrayidx350 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 15
  %73 = load i32, i32* %arrayidx350, align 4, !tbaa !4
  %xor351 = xor i32 %73, %xor324
  %shr352 = lshr i32 %xor349, 24
  %idxprom354 = zext i32 %shr352 to i64
  %arrayidx355 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom354
  %74 = load i32, i32* %arrayidx355, align 4, !tbaa !4
  %shr356 = lshr i32 %xor349, 16
  %and357 = and i32 %shr356, 255
  %add358 = or i32 %and357, 256
  %idxprom359 = zext i32 %add358 to i64
  %arrayidx360 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom359
  %75 = load i32, i32* %arrayidx360, align 4, !tbaa !4
  %add361 = add i32 %75, %74
  %shr362 = lshr i32 %xor349, 8
  %and363 = and i32 %shr362, 255
  %add364 = or i32 %and363, 512
  %idxprom365 = zext i32 %add364 to i64
  %arrayidx366 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom365
  %76 = load i32, i32* %arrayidx366, align 4, !tbaa !4
  %xor367 = xor i32 %add361, %76
  %and368 = and i32 %xor349, 255
  %add369 = or i32 %and368, 768
  %idxprom370 = zext i32 %add369 to i64
  %arrayidx371 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom370
  %77 = load i32, i32* %arrayidx371, align 4, !tbaa !4
  %add372 = add i32 %xor367, %77
  %xor374 = xor i32 %xor351, %add372
  %arrayidx375 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 16
  %78 = load i32, i32* %arrayidx375, align 4, !tbaa !4
  %xor376 = xor i32 %78, %xor349
  %shr377 = lshr i32 %xor374, 24
  %idxprom379 = zext i32 %shr377 to i64
  %arrayidx380 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom379
  %79 = load i32, i32* %arrayidx380, align 4, !tbaa !4
  %shr381 = lshr i32 %xor374, 16
  %and382 = and i32 %shr381, 255
  %add383 = or i32 %and382, 256
  %idxprom384 = zext i32 %add383 to i64
  %arrayidx385 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom384
  %80 = load i32, i32* %arrayidx385, align 4, !tbaa !4
  %add386 = add i32 %80, %79
  %shr387 = lshr i32 %xor374, 8
  %and388 = and i32 %shr387, 255
  %add389 = or i32 %and388, 512
  %idxprom390 = zext i32 %add389 to i64
  %arrayidx391 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom390
  %81 = load i32, i32* %arrayidx391, align 4, !tbaa !4
  %xor392 = xor i32 %add386, %81
  %and393 = and i32 %xor374, 255
  %add394 = or i32 %and393, 768
  %idxprom395 = zext i32 %add394 to i64
  %arrayidx396 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom395
  %82 = load i32, i32* %arrayidx396, align 4, !tbaa !4
  %add397 = add i32 %xor392, %82
  %xor399 = xor i32 %xor376, %add397
  %arrayidx400 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 17
  %83 = load i32, i32* %arrayidx400, align 4, !tbaa !4
  %xor401 = xor i32 %83, %xor374
  store i32 %xor399, i32* %arrayidx2, align 4, !tbaa !4
  store i32 %xor401, i32* %data, align 4, !tbaa !4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @BF_decrypt(i32* nocapture noundef %data, %struct.bf_key_st* noundef readonly %key) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 0
  %0 = load i32, i32* %data, align 4, !tbaa !4
  %arrayidx2 = getelementptr inbounds i32, i32* %data, i64 1
  %1 = load i32, i32* %arrayidx2, align 4, !tbaa !4
  %arrayidx3 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 17
  %2 = load i32, i32* %arrayidx3, align 4, !tbaa !4
  %xor = xor i32 %2, %0
  %arrayidx4 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 16
  %3 = load i32, i32* %arrayidx4, align 4, !tbaa !4
  %xor5 = xor i32 %3, %1
  %shr = lshr i32 %xor, 24
  %idxprom = zext i32 %shr to i64
  %arrayidx6 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom
  %4 = load i32, i32* %arrayidx6, align 4, !tbaa !4
  %shr7 = lshr i32 %xor, 16
  %and8 = and i32 %shr7, 255
  %add = or i32 %and8, 256
  %idxprom9 = zext i32 %add to i64
  %arrayidx10 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom9
  %5 = load i32, i32* %arrayidx10, align 4, !tbaa !4
  %add11 = add i32 %5, %4
  %shr12 = lshr i32 %xor, 8
  %and13 = and i32 %shr12, 255
  %add14 = or i32 %and13, 512
  %idxprom15 = zext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom15
  %6 = load i32, i32* %arrayidx16, align 4, !tbaa !4
  %xor17 = xor i32 %add11, %6
  %and18 = and i32 %xor, 255
  %add19 = or i32 %and18, 768
  %idxprom20 = zext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom20
  %7 = load i32, i32* %arrayidx21, align 4, !tbaa !4
  %add22 = add i32 %xor17, %7
  %xor24 = xor i32 %xor5, %add22
  %arrayidx25 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 15
  %8 = load i32, i32* %arrayidx25, align 4, !tbaa !4
  %xor26 = xor i32 %8, %xor
  %shr27 = lshr i32 %xor24, 24
  %idxprom29 = zext i32 %shr27 to i64
  %arrayidx30 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom29
  %9 = load i32, i32* %arrayidx30, align 4, !tbaa !4
  %shr31 = lshr i32 %xor24, 16
  %and32 = and i32 %shr31, 255
  %add33 = or i32 %and32, 256
  %idxprom34 = zext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom34
  %10 = load i32, i32* %arrayidx35, align 4, !tbaa !4
  %add36 = add i32 %10, %9
  %shr37 = lshr i32 %xor24, 8
  %and38 = and i32 %shr37, 255
  %add39 = or i32 %and38, 512
  %idxprom40 = zext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom40
  %11 = load i32, i32* %arrayidx41, align 4, !tbaa !4
  %xor42 = xor i32 %add36, %11
  %and43 = and i32 %xor24, 255
  %add44 = or i32 %and43, 768
  %idxprom45 = zext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom45
  %12 = load i32, i32* %arrayidx46, align 4, !tbaa !4
  %add47 = add i32 %xor42, %12
  %xor49 = xor i32 %xor26, %add47
  %arrayidx50 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 14
  %13 = load i32, i32* %arrayidx50, align 4, !tbaa !4
  %xor51 = xor i32 %13, %xor24
  %shr52 = lshr i32 %xor49, 24
  %idxprom54 = zext i32 %shr52 to i64
  %arrayidx55 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom54
  %14 = load i32, i32* %arrayidx55, align 4, !tbaa !4
  %shr56 = lshr i32 %xor49, 16
  %and57 = and i32 %shr56, 255
  %add58 = or i32 %and57, 256
  %idxprom59 = zext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom59
  %15 = load i32, i32* %arrayidx60, align 4, !tbaa !4
  %add61 = add i32 %15, %14
  %shr62 = lshr i32 %xor49, 8
  %and63 = and i32 %shr62, 255
  %add64 = or i32 %and63, 512
  %idxprom65 = zext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom65
  %16 = load i32, i32* %arrayidx66, align 4, !tbaa !4
  %xor67 = xor i32 %add61, %16
  %and68 = and i32 %xor49, 255
  %add69 = or i32 %and68, 768
  %idxprom70 = zext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom70
  %17 = load i32, i32* %arrayidx71, align 4, !tbaa !4
  %add72 = add i32 %xor67, %17
  %xor74 = xor i32 %xor51, %add72
  %arrayidx75 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 13
  %18 = load i32, i32* %arrayidx75, align 4, !tbaa !4
  %xor76 = xor i32 %18, %xor49
  %shr77 = lshr i32 %xor74, 24
  %idxprom79 = zext i32 %shr77 to i64
  %arrayidx80 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom79
  %19 = load i32, i32* %arrayidx80, align 4, !tbaa !4
  %shr81 = lshr i32 %xor74, 16
  %and82 = and i32 %shr81, 255
  %add83 = or i32 %and82, 256
  %idxprom84 = zext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom84
  %20 = load i32, i32* %arrayidx85, align 4, !tbaa !4
  %add86 = add i32 %20, %19
  %shr87 = lshr i32 %xor74, 8
  %and88 = and i32 %shr87, 255
  %add89 = or i32 %and88, 512
  %idxprom90 = zext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom90
  %21 = load i32, i32* %arrayidx91, align 4, !tbaa !4
  %xor92 = xor i32 %add86, %21
  %and93 = and i32 %xor74, 255
  %add94 = or i32 %and93, 768
  %idxprom95 = zext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom95
  %22 = load i32, i32* %arrayidx96, align 4, !tbaa !4
  %add97 = add i32 %xor92, %22
  %xor99 = xor i32 %xor76, %add97
  %arrayidx100 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 12
  %23 = load i32, i32* %arrayidx100, align 4, !tbaa !4
  %xor101 = xor i32 %23, %xor74
  %shr102 = lshr i32 %xor99, 24
  %idxprom104 = zext i32 %shr102 to i64
  %arrayidx105 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom104
  %24 = load i32, i32* %arrayidx105, align 4, !tbaa !4
  %shr106 = lshr i32 %xor99, 16
  %and107 = and i32 %shr106, 255
  %add108 = or i32 %and107, 256
  %idxprom109 = zext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom109
  %25 = load i32, i32* %arrayidx110, align 4, !tbaa !4
  %add111 = add i32 %25, %24
  %shr112 = lshr i32 %xor99, 8
  %and113 = and i32 %shr112, 255
  %add114 = or i32 %and113, 512
  %idxprom115 = zext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom115
  %26 = load i32, i32* %arrayidx116, align 4, !tbaa !4
  %xor117 = xor i32 %add111, %26
  %and118 = and i32 %xor99, 255
  %add119 = or i32 %and118, 768
  %idxprom120 = zext i32 %add119 to i64
  %arrayidx121 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom120
  %27 = load i32, i32* %arrayidx121, align 4, !tbaa !4
  %add122 = add i32 %xor117, %27
  %xor124 = xor i32 %xor101, %add122
  %arrayidx125 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 11
  %28 = load i32, i32* %arrayidx125, align 4, !tbaa !4
  %xor126 = xor i32 %28, %xor99
  %shr127 = lshr i32 %xor124, 24
  %idxprom129 = zext i32 %shr127 to i64
  %arrayidx130 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom129
  %29 = load i32, i32* %arrayidx130, align 4, !tbaa !4
  %shr131 = lshr i32 %xor124, 16
  %and132 = and i32 %shr131, 255
  %add133 = or i32 %and132, 256
  %idxprom134 = zext i32 %add133 to i64
  %arrayidx135 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom134
  %30 = load i32, i32* %arrayidx135, align 4, !tbaa !4
  %add136 = add i32 %30, %29
  %shr137 = lshr i32 %xor124, 8
  %and138 = and i32 %shr137, 255
  %add139 = or i32 %and138, 512
  %idxprom140 = zext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom140
  %31 = load i32, i32* %arrayidx141, align 4, !tbaa !4
  %xor142 = xor i32 %add136, %31
  %and143 = and i32 %xor124, 255
  %add144 = or i32 %and143, 768
  %idxprom145 = zext i32 %add144 to i64
  %arrayidx146 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom145
  %32 = load i32, i32* %arrayidx146, align 4, !tbaa !4
  %add147 = add i32 %xor142, %32
  %xor149 = xor i32 %xor126, %add147
  %arrayidx150 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 10
  %33 = load i32, i32* %arrayidx150, align 4, !tbaa !4
  %xor151 = xor i32 %33, %xor124
  %shr152 = lshr i32 %xor149, 24
  %idxprom154 = zext i32 %shr152 to i64
  %arrayidx155 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom154
  %34 = load i32, i32* %arrayidx155, align 4, !tbaa !4
  %shr156 = lshr i32 %xor149, 16
  %and157 = and i32 %shr156, 255
  %add158 = or i32 %and157, 256
  %idxprom159 = zext i32 %add158 to i64
  %arrayidx160 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom159
  %35 = load i32, i32* %arrayidx160, align 4, !tbaa !4
  %add161 = add i32 %35, %34
  %shr162 = lshr i32 %xor149, 8
  %and163 = and i32 %shr162, 255
  %add164 = or i32 %and163, 512
  %idxprom165 = zext i32 %add164 to i64
  %arrayidx166 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom165
  %36 = load i32, i32* %arrayidx166, align 4, !tbaa !4
  %xor167 = xor i32 %add161, %36
  %and168 = and i32 %xor149, 255
  %add169 = or i32 %and168, 768
  %idxprom170 = zext i32 %add169 to i64
  %arrayidx171 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom170
  %37 = load i32, i32* %arrayidx171, align 4, !tbaa !4
  %add172 = add i32 %xor167, %37
  %xor174 = xor i32 %xor151, %add172
  %arrayidx175 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 9
  %38 = load i32, i32* %arrayidx175, align 4, !tbaa !4
  %xor176 = xor i32 %38, %xor149
  %shr177 = lshr i32 %xor174, 24
  %idxprom179 = zext i32 %shr177 to i64
  %arrayidx180 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom179
  %39 = load i32, i32* %arrayidx180, align 4, !tbaa !4
  %shr181 = lshr i32 %xor174, 16
  %and182 = and i32 %shr181, 255
  %add183 = or i32 %and182, 256
  %idxprom184 = zext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom184
  %40 = load i32, i32* %arrayidx185, align 4, !tbaa !4
  %add186 = add i32 %40, %39
  %shr187 = lshr i32 %xor174, 8
  %and188 = and i32 %shr187, 255
  %add189 = or i32 %and188, 512
  %idxprom190 = zext i32 %add189 to i64
  %arrayidx191 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom190
  %41 = load i32, i32* %arrayidx191, align 4, !tbaa !4
  %xor192 = xor i32 %add186, %41
  %and193 = and i32 %xor174, 255
  %add194 = or i32 %and193, 768
  %idxprom195 = zext i32 %add194 to i64
  %arrayidx196 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom195
  %42 = load i32, i32* %arrayidx196, align 4, !tbaa !4
  %add197 = add i32 %xor192, %42
  %xor199 = xor i32 %xor176, %add197
  %arrayidx200 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 8
  %43 = load i32, i32* %arrayidx200, align 4, !tbaa !4
  %xor201 = xor i32 %43, %xor174
  %shr202 = lshr i32 %xor199, 24
  %idxprom204 = zext i32 %shr202 to i64
  %arrayidx205 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom204
  %44 = load i32, i32* %arrayidx205, align 4, !tbaa !4
  %shr206 = lshr i32 %xor199, 16
  %and207 = and i32 %shr206, 255
  %add208 = or i32 %and207, 256
  %idxprom209 = zext i32 %add208 to i64
  %arrayidx210 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom209
  %45 = load i32, i32* %arrayidx210, align 4, !tbaa !4
  %add211 = add i32 %45, %44
  %shr212 = lshr i32 %xor199, 8
  %and213 = and i32 %shr212, 255
  %add214 = or i32 %and213, 512
  %idxprom215 = zext i32 %add214 to i64
  %arrayidx216 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom215
  %46 = load i32, i32* %arrayidx216, align 4, !tbaa !4
  %xor217 = xor i32 %add211, %46
  %and218 = and i32 %xor199, 255
  %add219 = or i32 %and218, 768
  %idxprom220 = zext i32 %add219 to i64
  %arrayidx221 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom220
  %47 = load i32, i32* %arrayidx221, align 4, !tbaa !4
  %add222 = add i32 %xor217, %47
  %xor224 = xor i32 %xor201, %add222
  %arrayidx225 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 7
  %48 = load i32, i32* %arrayidx225, align 4, !tbaa !4
  %xor226 = xor i32 %48, %xor199
  %shr227 = lshr i32 %xor224, 24
  %idxprom229 = zext i32 %shr227 to i64
  %arrayidx230 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom229
  %49 = load i32, i32* %arrayidx230, align 4, !tbaa !4
  %shr231 = lshr i32 %xor224, 16
  %and232 = and i32 %shr231, 255
  %add233 = or i32 %and232, 256
  %idxprom234 = zext i32 %add233 to i64
  %arrayidx235 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom234
  %50 = load i32, i32* %arrayidx235, align 4, !tbaa !4
  %add236 = add i32 %50, %49
  %shr237 = lshr i32 %xor224, 8
  %and238 = and i32 %shr237, 255
  %add239 = or i32 %and238, 512
  %idxprom240 = zext i32 %add239 to i64
  %arrayidx241 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom240
  %51 = load i32, i32* %arrayidx241, align 4, !tbaa !4
  %xor242 = xor i32 %add236, %51
  %and243 = and i32 %xor224, 255
  %add244 = or i32 %and243, 768
  %idxprom245 = zext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom245
  %52 = load i32, i32* %arrayidx246, align 4, !tbaa !4
  %add247 = add i32 %xor242, %52
  %xor249 = xor i32 %xor226, %add247
  %arrayidx250 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 6
  %53 = load i32, i32* %arrayidx250, align 4, !tbaa !4
  %xor251 = xor i32 %53, %xor224
  %shr252 = lshr i32 %xor249, 24
  %idxprom254 = zext i32 %shr252 to i64
  %arrayidx255 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom254
  %54 = load i32, i32* %arrayidx255, align 4, !tbaa !4
  %shr256 = lshr i32 %xor249, 16
  %and257 = and i32 %shr256, 255
  %add258 = or i32 %and257, 256
  %idxprom259 = zext i32 %add258 to i64
  %arrayidx260 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom259
  %55 = load i32, i32* %arrayidx260, align 4, !tbaa !4
  %add261 = add i32 %55, %54
  %shr262 = lshr i32 %xor249, 8
  %and263 = and i32 %shr262, 255
  %add264 = or i32 %and263, 512
  %idxprom265 = zext i32 %add264 to i64
  %arrayidx266 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom265
  %56 = load i32, i32* %arrayidx266, align 4, !tbaa !4
  %xor267 = xor i32 %add261, %56
  %and268 = and i32 %xor249, 255
  %add269 = or i32 %and268, 768
  %idxprom270 = zext i32 %add269 to i64
  %arrayidx271 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom270
  %57 = load i32, i32* %arrayidx271, align 4, !tbaa !4
  %add272 = add i32 %xor267, %57
  %xor274 = xor i32 %xor251, %add272
  %arrayidx275 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 5
  %58 = load i32, i32* %arrayidx275, align 4, !tbaa !4
  %xor276 = xor i32 %58, %xor249
  %shr277 = lshr i32 %xor274, 24
  %idxprom279 = zext i32 %shr277 to i64
  %arrayidx280 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom279
  %59 = load i32, i32* %arrayidx280, align 4, !tbaa !4
  %shr281 = lshr i32 %xor274, 16
  %and282 = and i32 %shr281, 255
  %add283 = or i32 %and282, 256
  %idxprom284 = zext i32 %add283 to i64
  %arrayidx285 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom284
  %60 = load i32, i32* %arrayidx285, align 4, !tbaa !4
  %add286 = add i32 %60, %59
  %shr287 = lshr i32 %xor274, 8
  %and288 = and i32 %shr287, 255
  %add289 = or i32 %and288, 512
  %idxprom290 = zext i32 %add289 to i64
  %arrayidx291 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom290
  %61 = load i32, i32* %arrayidx291, align 4, !tbaa !4
  %xor292 = xor i32 %add286, %61
  %and293 = and i32 %xor274, 255
  %add294 = or i32 %and293, 768
  %idxprom295 = zext i32 %add294 to i64
  %arrayidx296 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom295
  %62 = load i32, i32* %arrayidx296, align 4, !tbaa !4
  %add297 = add i32 %xor292, %62
  %xor299 = xor i32 %xor276, %add297
  %arrayidx300 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 4
  %63 = load i32, i32* %arrayidx300, align 4, !tbaa !4
  %xor301 = xor i32 %63, %xor274
  %shr302 = lshr i32 %xor299, 24
  %idxprom304 = zext i32 %shr302 to i64
  %arrayidx305 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom304
  %64 = load i32, i32* %arrayidx305, align 4, !tbaa !4
  %shr306 = lshr i32 %xor299, 16
  %and307 = and i32 %shr306, 255
  %add308 = or i32 %and307, 256
  %idxprom309 = zext i32 %add308 to i64
  %arrayidx310 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom309
  %65 = load i32, i32* %arrayidx310, align 4, !tbaa !4
  %add311 = add i32 %65, %64
  %shr312 = lshr i32 %xor299, 8
  %and313 = and i32 %shr312, 255
  %add314 = or i32 %and313, 512
  %idxprom315 = zext i32 %add314 to i64
  %arrayidx316 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom315
  %66 = load i32, i32* %arrayidx316, align 4, !tbaa !4
  %xor317 = xor i32 %add311, %66
  %and318 = and i32 %xor299, 255
  %add319 = or i32 %and318, 768
  %idxprom320 = zext i32 %add319 to i64
  %arrayidx321 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom320
  %67 = load i32, i32* %arrayidx321, align 4, !tbaa !4
  %add322 = add i32 %xor317, %67
  %xor324 = xor i32 %xor301, %add322
  %arrayidx325 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 3
  %68 = load i32, i32* %arrayidx325, align 4, !tbaa !4
  %xor326 = xor i32 %68, %xor299
  %shr327 = lshr i32 %xor324, 24
  %idxprom329 = zext i32 %shr327 to i64
  %arrayidx330 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom329
  %69 = load i32, i32* %arrayidx330, align 4, !tbaa !4
  %shr331 = lshr i32 %xor324, 16
  %and332 = and i32 %shr331, 255
  %add333 = or i32 %and332, 256
  %idxprom334 = zext i32 %add333 to i64
  %arrayidx335 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom334
  %70 = load i32, i32* %arrayidx335, align 4, !tbaa !4
  %add336 = add i32 %70, %69
  %shr337 = lshr i32 %xor324, 8
  %and338 = and i32 %shr337, 255
  %add339 = or i32 %and338, 512
  %idxprom340 = zext i32 %add339 to i64
  %arrayidx341 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom340
  %71 = load i32, i32* %arrayidx341, align 4, !tbaa !4
  %xor342 = xor i32 %add336, %71
  %and343 = and i32 %xor324, 255
  %add344 = or i32 %and343, 768
  %idxprom345 = zext i32 %add344 to i64
  %arrayidx346 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom345
  %72 = load i32, i32* %arrayidx346, align 4, !tbaa !4
  %add347 = add i32 %xor342, %72
  %xor349 = xor i32 %xor326, %add347
  %arrayidx350 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 2
  %73 = load i32, i32* %arrayidx350, align 4, !tbaa !4
  %xor351 = xor i32 %73, %xor324
  %shr352 = lshr i32 %xor349, 24
  %idxprom354 = zext i32 %shr352 to i64
  %arrayidx355 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom354
  %74 = load i32, i32* %arrayidx355, align 4, !tbaa !4
  %shr356 = lshr i32 %xor349, 16
  %and357 = and i32 %shr356, 255
  %add358 = or i32 %and357, 256
  %idxprom359 = zext i32 %add358 to i64
  %arrayidx360 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom359
  %75 = load i32, i32* %arrayidx360, align 4, !tbaa !4
  %add361 = add i32 %75, %74
  %shr362 = lshr i32 %xor349, 8
  %and363 = and i32 %shr362, 255
  %add364 = or i32 %and363, 512
  %idxprom365 = zext i32 %add364 to i64
  %arrayidx366 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom365
  %76 = load i32, i32* %arrayidx366, align 4, !tbaa !4
  %xor367 = xor i32 %add361, %76
  %and368 = and i32 %xor349, 255
  %add369 = or i32 %and368, 768
  %idxprom370 = zext i32 %add369 to i64
  %arrayidx371 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom370
  %77 = load i32, i32* %arrayidx371, align 4, !tbaa !4
  %add372 = add i32 %xor367, %77
  %xor374 = xor i32 %xor351, %add372
  %arrayidx375 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 1
  %78 = load i32, i32* %arrayidx375, align 4, !tbaa !4
  %xor376 = xor i32 %78, %xor349
  %shr377 = lshr i32 %xor374, 24
  %idxprom379 = zext i32 %shr377 to i64
  %arrayidx380 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom379
  %79 = load i32, i32* %arrayidx380, align 4, !tbaa !4
  %shr381 = lshr i32 %xor374, 16
  %and382 = and i32 %shr381, 255
  %add383 = or i32 %and382, 256
  %idxprom384 = zext i32 %add383 to i64
  %arrayidx385 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom384
  %80 = load i32, i32* %arrayidx385, align 4, !tbaa !4
  %add386 = add i32 %80, %79
  %shr387 = lshr i32 %xor374, 8
  %and388 = and i32 %shr387, 255
  %add389 = or i32 %and388, 512
  %idxprom390 = zext i32 %add389 to i64
  %arrayidx391 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom390
  %81 = load i32, i32* %arrayidx391, align 4, !tbaa !4
  %xor392 = xor i32 %add386, %81
  %and393 = and i32 %xor374, 255
  %add394 = or i32 %and393, 768
  %idxprom395 = zext i32 %add394 to i64
  %arrayidx396 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %idxprom395
  %82 = load i32, i32* %arrayidx396, align 4, !tbaa !4
  %add397 = add i32 %xor392, %82
  %xor399 = xor i32 %xor376, %add397
  %83 = load i32, i32* %arraydecay, align 4, !tbaa !4
  %xor401 = xor i32 %83, %xor374
  store i32 %xor399, i32* %arrayidx2, align 4, !tbaa !4
  store i32 %xor401, i32* %data, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define void @BF_cbc_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %length, %struct.bf_key_st* noundef %schedule, i8* noundef %ivec, i32 noundef %encrypt) local_unnamed_addr #2 {
entry:
  %tin = alloca [2 x i32], align 4
  %0 = bitcast [2 x i32]* %tin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %tobool.not = icmp eq i32 %encrypt, 0
  %incdec.ptr236 = getelementptr inbounds i8, i8* %ivec, i64 1
  %1 = load i8, i8* %ivec, align 1, !tbaa !8
  %conv237 = zext i8 %1 to i32
  %shl238 = shl nuw i32 %conv237, 24
  %incdec.ptr240 = getelementptr inbounds i8, i8* %ivec, i64 2
  %2 = load i8, i8* %incdec.ptr236, align 1, !tbaa !8
  %conv241 = zext i8 %2 to i32
  %shl242 = shl nuw nsw i32 %conv241, 16
  %or244 = or i32 %shl242, %shl238
  %incdec.ptr246 = getelementptr inbounds i8, i8* %ivec, i64 3
  %3 = load i8, i8* %incdec.ptr240, align 1, !tbaa !8
  %conv247 = zext i8 %3 to i32
  %shl248 = shl nuw nsw i32 %conv247, 8
  %or250 = or i32 %or244, %shl248
  %incdec.ptr252 = getelementptr inbounds i8, i8* %ivec, i64 4
  %4 = load i8, i8* %incdec.ptr246, align 1, !tbaa !8
  %conv253 = zext i8 %4 to i32
  %or255 = or i32 %or250, %conv253
  %incdec.ptr257 = getelementptr inbounds i8, i8* %ivec, i64 5
  %5 = load i8, i8* %incdec.ptr252, align 1, !tbaa !8
  %conv258 = zext i8 %5 to i32
  %shl259 = shl nuw i32 %conv258, 24
  %incdec.ptr261 = getelementptr inbounds i8, i8* %ivec, i64 6
  %6 = load i8, i8* %incdec.ptr257, align 1, !tbaa !8
  %conv262 = zext i8 %6 to i32
  %shl263 = shl nuw nsw i32 %conv262, 16
  %or265 = or i32 %shl263, %shl259
  %incdec.ptr267 = getelementptr inbounds i8, i8* %ivec, i64 7
  %7 = load i8, i8* %incdec.ptr261, align 1, !tbaa !8
  %conv268 = zext i8 %7 to i32
  %shl269 = shl nuw nsw i32 %conv268, 8
  %or271 = or i32 %or265, %shl269
  %8 = load i8, i8* %incdec.ptr267, align 1, !tbaa !8
  %conv274 = zext i8 %8 to i32
  %or276 = or i32 %or271, %conv274
  %cmp281725 = icmp sgt i64 %length, 7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp281725, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  %arrayidx83 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %l.0.in720 = phi i64 [ %length, %for.body.lr.ph ], [ %l.0, %for.body ]
  %tout1.0719 = phi i32 [ %or276, %for.body.lr.ph ], [ %18, %for.body ]
  %tout0.0718 = phi i32 [ %or255, %for.body.lr.ph ], [ %17, %for.body ]
  %in.addr.0717 = phi i8* [ %in, %for.body.lr.ph ], [ %incdec.ptr77, %for.body ]
  %out.addr.0716 = phi i8* [ %out, %for.body.lr.ph ], [ %incdec.ptr113, %for.body ]
  %l.0 = add nsw i64 %l.0.in720, -8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %in.addr.0717, i64 1
  %9 = load i8, i8* %in.addr.0717, align 1, !tbaa !8
  %conv41 = zext i8 %9 to i32
  %shl42 = shl nuw i32 %conv41, 24
  %incdec.ptr44 = getelementptr inbounds i8, i8* %in.addr.0717, i64 2
  %10 = load i8, i8* %incdec.ptr40, align 1, !tbaa !8
  %conv45 = zext i8 %10 to i32
  %shl46 = shl nuw nsw i32 %conv45, 16
  %or48 = or i32 %shl46, %shl42
  %incdec.ptr50 = getelementptr inbounds i8, i8* %in.addr.0717, i64 3
  %11 = load i8, i8* %incdec.ptr44, align 1, !tbaa !8
  %conv51 = zext i8 %11 to i32
  %shl52 = shl nuw nsw i32 %conv51, 8
  %or54 = or i32 %or48, %shl52
  %incdec.ptr56 = getelementptr inbounds i8, i8* %in.addr.0717, i64 4
  %12 = load i8, i8* %incdec.ptr50, align 1, !tbaa !8
  %conv57 = zext i8 %12 to i32
  %or59 = or i32 %or54, %conv57
  %incdec.ptr61 = getelementptr inbounds i8, i8* %in.addr.0717, i64 5
  %13 = load i8, i8* %incdec.ptr56, align 1, !tbaa !8
  %conv62 = zext i8 %13 to i32
  %shl63 = shl nuw i32 %conv62, 24
  %incdec.ptr65 = getelementptr inbounds i8, i8* %in.addr.0717, i64 6
  %14 = load i8, i8* %incdec.ptr61, align 1, !tbaa !8
  %conv66 = zext i8 %14 to i32
  %shl67 = shl nuw nsw i32 %conv66, 16
  %or69 = or i32 %shl67, %shl63
  %incdec.ptr71 = getelementptr inbounds i8, i8* %in.addr.0717, i64 7
  %15 = load i8, i8* %incdec.ptr65, align 1, !tbaa !8
  %conv72 = zext i8 %15 to i32
  %shl73 = shl nuw nsw i32 %conv72, 8
  %or75 = or i32 %or69, %shl73
  %incdec.ptr77 = getelementptr inbounds i8, i8* %in.addr.0717, i64 8
  %16 = load i8, i8* %incdec.ptr71, align 1, !tbaa !8
  %conv78 = zext i8 %16 to i32
  %or80 = or i32 %or75, %conv78
  %xor = xor i32 %or59, %tout0.0718
  %xor82 = xor i32 %or80, %tout1.0719
  store i32 %xor, i32* %arrayidx, align 4, !tbaa !4
  store i32 %xor82, i32* %arrayidx83, align 4, !tbaa !4
  call void @BF_encrypt(i32* noundef nonnull %arrayidx, %struct.bf_key_st* noundef %schedule) #4
  %17 = load i32, i32* %arrayidx, align 4, !tbaa !4
  %18 = load i32, i32* %arrayidx83, align 4, !tbaa !4
  %shr = lshr i32 %17, 24
  %conv86 = trunc i32 %shr to i8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %out.addr.0716, i64 1
  store i8 %conv86, i8* %out.addr.0716, align 1, !tbaa !8
  %shr88 = lshr i32 %17, 16
  %conv90 = trunc i32 %shr88 to i8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %out.addr.0716, i64 2
  store i8 %conv90, i8* %incdec.ptr87, align 1, !tbaa !8
  %shr92 = lshr i32 %17, 8
  %conv94 = trunc i32 %shr92 to i8
  %incdec.ptr95 = getelementptr inbounds i8, i8* %out.addr.0716, i64 3
  store i8 %conv94, i8* %incdec.ptr91, align 1, !tbaa !8
  %conv97 = trunc i32 %17 to i8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %out.addr.0716, i64 4
  store i8 %conv97, i8* %incdec.ptr95, align 1, !tbaa !8
  %shr99 = lshr i32 %18, 24
  %conv101 = trunc i32 %shr99 to i8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %out.addr.0716, i64 5
  store i8 %conv101, i8* %incdec.ptr98, align 1, !tbaa !8
  %shr103 = lshr i32 %18, 16
  %conv105 = trunc i32 %shr103 to i8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %out.addr.0716, i64 6
  store i8 %conv105, i8* %incdec.ptr102, align 1, !tbaa !8
  %shr107 = lshr i32 %18, 8
  %conv109 = trunc i32 %shr107 to i8
  %incdec.ptr110 = getelementptr inbounds i8, i8* %out.addr.0716, i64 7
  store i8 %conv109, i8* %incdec.ptr106, align 1, !tbaa !8
  %conv112 = trunc i32 %18 to i8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %out.addr.0716, i64 8
  store i8 %conv112, i8* %incdec.ptr110, align 1, !tbaa !8
  %cmp = icmp ugt i64 %l.0.in720, 15
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body, %if.then
  %out.addr.0.lcssa = phi i8* [ %out, %if.then ], [ %incdec.ptr113, %for.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %if.then ], [ %incdec.ptr77, %for.body ]
  %tout0.0.lcssa = phi i32 [ %or255, %if.then ], [ %17, %for.body ]
  %tout1.0.lcssa = phi i32 [ %or276, %if.then ], [ %18, %for.body ]
  %l.0.in.lcssa = phi i64 [ %length, %if.then ], [ %l.0, %for.body ]
  %cmp115.not = icmp eq i64 %l.0.in.lcssa, 0
  br i1 %cmp115.not, label %for.end.if.end_crit_edge, label %if.then117

for.end.if.end_crit_edge:                         ; preds = %for.end
  %.pre = lshr i32 %tout0.0.lcssa, 24
  %.pre737 = trunc i32 %.pre to i8
  %.pre738 = lshr i32 %tout0.0.lcssa, 16
  %.pre739 = trunc i32 %.pre738 to i8
  %.pre740 = lshr i32 %tout0.0.lcssa, 8
  %.pre741 = trunc i32 %.pre740 to i8
  %.pre742 = trunc i32 %tout0.0.lcssa to i8
  %.pre743 = lshr i32 %tout1.0.lcssa, 24
  %.pre744 = trunc i32 %.pre743 to i8
  %.pre745 = lshr i32 %tout1.0.lcssa, 16
  %.pre746 = trunc i32 %.pre745 to i8
  %.pre747 = lshr i32 %tout1.0.lcssa, 8
  %.pre748 = trunc i32 %.pre747 to i8
  %.pre749 = trunc i32 %tout1.0.lcssa to i8
  br label %if.end

if.then117:                                       ; preds = %for.end
  %add.ptr118 = getelementptr inbounds i8, i8* %in.addr.0.lcssa, i64 %l.0.in.lcssa
  switch i64 %l.0.in.lcssa, label %sw.epilog [
    i64 1, label %sw.bb162
    i64 7, label %sw.bb123
    i64 6, label %sw.bb130
    i64 5, label %sw.bb137
    i64 4, label %sw.bb144
    i64 3, label %sw.bb148
    i64 2, label %sw.bb155
  ]

sw.bb123:                                         ; preds = %if.then117
  %incdec.ptr124 = getelementptr inbounds i8, i8* %add.ptr118, i64 -1
  %19 = load i8, i8* %incdec.ptr124, align 1, !tbaa !8
  %conv125 = zext i8 %19 to i32
  %shl126 = shl nuw nsw i32 %conv125, 8
  br label %sw.bb130

sw.bb130:                                         ; preds = %if.then117, %sw.bb123
  %in.addr.2 = phi i8* [ %add.ptr118, %if.then117 ], [ %incdec.ptr124, %sw.bb123 ]
  %tin1.1 = phi i32 [ 0, %if.then117 ], [ %shl126, %sw.bb123 ]
  %incdec.ptr131 = getelementptr inbounds i8, i8* %in.addr.2, i64 -1
  %20 = load i8, i8* %incdec.ptr131, align 1, !tbaa !8
  %conv132 = zext i8 %20 to i32
  %shl133 = shl nuw nsw i32 %conv132, 16
  %or135 = or i32 %shl133, %tin1.1
  br label %sw.bb137

sw.bb137:                                         ; preds = %if.then117, %sw.bb130
  %in.addr.3 = phi i8* [ %add.ptr118, %if.then117 ], [ %incdec.ptr131, %sw.bb130 ]
  %tin1.2 = phi i32 [ 0, %if.then117 ], [ %or135, %sw.bb130 ]
  %incdec.ptr138 = getelementptr inbounds i8, i8* %in.addr.3, i64 -1
  %21 = load i8, i8* %incdec.ptr138, align 1, !tbaa !8
  %conv139 = zext i8 %21 to i32
  %shl140 = shl nuw i32 %conv139, 24
  %or142 = or i32 %shl140, %tin1.2
  br label %sw.bb144

sw.bb144:                                         ; preds = %if.then117, %sw.bb137
  %in.addr.4 = phi i8* [ %add.ptr118, %if.then117 ], [ %incdec.ptr138, %sw.bb137 ]
  %tin1.3 = phi i32 [ 0, %if.then117 ], [ %or142, %sw.bb137 ]
  %incdec.ptr145 = getelementptr inbounds i8, i8* %in.addr.4, i64 -1
  %22 = load i8, i8* %incdec.ptr145, align 1, !tbaa !8
  %conv146 = zext i8 %22 to i32
  br label %sw.bb148

sw.bb148:                                         ; preds = %if.then117, %sw.bb144
  %in.addr.5 = phi i8* [ %add.ptr118, %if.then117 ], [ %incdec.ptr145, %sw.bb144 ]
  %tin0.0 = phi i32 [ 0, %if.then117 ], [ %conv146, %sw.bb144 ]
  %tin1.4 = phi i32 [ 0, %if.then117 ], [ %tin1.3, %sw.bb144 ]
  %incdec.ptr149 = getelementptr inbounds i8, i8* %in.addr.5, i64 -1
  %23 = load i8, i8* %incdec.ptr149, align 1, !tbaa !8
  %conv150 = zext i8 %23 to i32
  %shl151 = shl nuw nsw i32 %conv150, 8
  %or153 = or i32 %shl151, %tin0.0
  br label %sw.bb155

sw.bb155:                                         ; preds = %if.then117, %sw.bb148
  %in.addr.6 = phi i8* [ %add.ptr118, %if.then117 ], [ %incdec.ptr149, %sw.bb148 ]
  %tin0.1 = phi i32 [ 0, %if.then117 ], [ %or153, %sw.bb148 ]
  %tin1.5 = phi i32 [ 0, %if.then117 ], [ %tin1.4, %sw.bb148 ]
  %incdec.ptr156 = getelementptr inbounds i8, i8* %in.addr.6, i64 -1
  %24 = load i8, i8* %incdec.ptr156, align 1, !tbaa !8
  %conv157 = zext i8 %24 to i32
  %shl158 = shl nuw nsw i32 %conv157, 16
  %phi.cast = or i32 %shl158, %tin0.1
  br label %sw.bb162

sw.bb162:                                         ; preds = %if.then117, %sw.bb155
  %in.addr.7 = phi i8* [ %add.ptr118, %if.then117 ], [ %incdec.ptr156, %sw.bb155 ]
  %tin0.2 = phi i32 [ 0, %if.then117 ], [ %phi.cast, %sw.bb155 ]
  %tin1.6 = phi i32 [ 0, %if.then117 ], [ %tin1.5, %sw.bb155 ]
  %incdec.ptr163 = getelementptr inbounds i8, i8* %in.addr.7, i64 -1
  %25 = load i8, i8* %incdec.ptr163, align 1, !tbaa !8
  %conv164 = zext i8 %25 to i32
  %shl165 = shl nuw i32 %conv164, 24
  %or167 = or i32 %shl165, %tin0.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb162, %if.then117
  %tin0.3 = phi i32 [ 0, %if.then117 ], [ %or167, %sw.bb162 ]
  %tin1.7 = phi i32 [ 0, %if.then117 ], [ %tin1.6, %sw.bb162 ]
  %xor169 = xor i32 %tin0.3, %tout0.0.lcssa
  %xor170 = xor i32 %tin1.7, %tout1.0.lcssa
  %arrayidx171 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  store i32 %xor169, i32* %arrayidx171, align 4, !tbaa !4
  %arrayidx172 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  store i32 %xor170, i32* %arrayidx172, align 4, !tbaa !4
  call void @BF_encrypt(i32* noundef nonnull %arrayidx171, %struct.bf_key_st* noundef %schedule) #4
  %26 = load i32, i32* %arrayidx171, align 4, !tbaa !4
  %27 = load i32, i32* %arrayidx172, align 4, !tbaa !4
  %shr176 = lshr i32 %26, 24
  %conv178 = trunc i32 %shr176 to i8
  %incdec.ptr179 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 1
  store i8 %conv178, i8* %out.addr.0.lcssa, align 1, !tbaa !8
  %shr180 = lshr i32 %26, 16
  %conv182 = trunc i32 %shr180 to i8
  %incdec.ptr183 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 2
  store i8 %conv182, i8* %incdec.ptr179, align 1, !tbaa !8
  %shr184 = lshr i32 %26, 8
  %conv186 = trunc i32 %shr184 to i8
  %incdec.ptr187 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 3
  store i8 %conv186, i8* %incdec.ptr183, align 1, !tbaa !8
  %conv189 = trunc i32 %26 to i8
  %incdec.ptr190 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 4
  store i8 %conv189, i8* %incdec.ptr187, align 1, !tbaa !8
  %shr191 = lshr i32 %27, 24
  %conv193 = trunc i32 %shr191 to i8
  %incdec.ptr194 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 5
  store i8 %conv193, i8* %incdec.ptr190, align 1, !tbaa !8
  %shr195 = lshr i32 %27, 16
  %conv197 = trunc i32 %shr195 to i8
  %incdec.ptr198 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 6
  store i8 %conv197, i8* %incdec.ptr194, align 1, !tbaa !8
  %shr199 = lshr i32 %27, 8
  %conv201 = trunc i32 %shr199 to i8
  %incdec.ptr202 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 7
  store i8 %conv201, i8* %incdec.ptr198, align 1, !tbaa !8
  %conv204 = trunc i32 %27 to i8
  store i8 %conv204, i8* %incdec.ptr202, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %for.end.if.end_crit_edge, %sw.epilog
  %conv234.pre-phi = phi i8 [ %.pre749, %for.end.if.end_crit_edge ], [ %conv204, %sw.epilog ]
  %conv231.pre-phi = phi i8 [ %.pre748, %for.end.if.end_crit_edge ], [ %conv201, %sw.epilog ]
  %conv227.pre-phi = phi i8 [ %.pre746, %for.end.if.end_crit_edge ], [ %conv197, %sw.epilog ]
  %conv223.pre-phi = phi i8 [ %.pre744, %for.end.if.end_crit_edge ], [ %conv193, %sw.epilog ]
  %conv219.pre-phi = phi i8 [ %.pre742, %for.end.if.end_crit_edge ], [ %conv189, %sw.epilog ]
  %conv216.pre-phi = phi i8 [ %.pre741, %for.end.if.end_crit_edge ], [ %conv186, %sw.epilog ]
  %conv212.pre-phi = phi i8 [ %.pre739, %for.end.if.end_crit_edge ], [ %conv182, %sw.epilog ]
  %conv208.pre-phi = phi i8 [ %.pre737, %for.end.if.end_crit_edge ], [ %conv178, %sw.epilog ]
  store i8 %conv208.pre-phi, i8* %ivec, align 1, !tbaa !8
  store i8 %conv212.pre-phi, i8* %incdec.ptr236, align 1, !tbaa !8
  store i8 %conv216.pre-phi, i8* %incdec.ptr240, align 1, !tbaa !8
  store i8 %conv219.pre-phi, i8* %incdec.ptr246, align 1, !tbaa !8
  store i8 %conv223.pre-phi, i8* %incdec.ptr252, align 1, !tbaa !8
  store i8 %conv227.pre-phi, i8* %incdec.ptr257, align 1, !tbaa !8
  store i8 %conv231.pre-phi, i8* %incdec.ptr261, align 1, !tbaa !8
  br label %if.end491

if.else:                                          ; preds = %entry
  br i1 %cmp281725, label %for.body283.lr.ph, label %for.end365

for.body283.lr.ph:                                ; preds = %if.else
  %arrayidx326 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  %arrayidx327 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  br label %for.body283

for.body283:                                      ; preds = %for.body283.lr.ph, %for.body283
  %l.1.in730 = phi i64 [ %length, %for.body283.lr.ph ], [ %l.1, %for.body283 ]
  %xor1.0729 = phi i32 [ %or276, %for.body283.lr.ph ], [ %or324, %for.body283 ]
  %xor0.0728 = phi i32 [ %or255, %for.body283.lr.ph ], [ %or303, %for.body283 ]
  %in.addr.8727 = phi i8* [ %in, %for.body283.lr.ph ], [ %incdec.ptr321, %for.body283 ]
  %out.addr.1726 = phi i8* [ %out, %for.body283.lr.ph ], [ %incdec.ptr362, %for.body283 ]
  %l.1 = add nsw i64 %l.1.in730, -8
  %incdec.ptr284 = getelementptr inbounds i8, i8* %in.addr.8727, i64 1
  %28 = load i8, i8* %in.addr.8727, align 1, !tbaa !8
  %conv285 = zext i8 %28 to i32
  %shl286 = shl nuw i32 %conv285, 24
  %incdec.ptr288 = getelementptr inbounds i8, i8* %in.addr.8727, i64 2
  %29 = load i8, i8* %incdec.ptr284, align 1, !tbaa !8
  %conv289 = zext i8 %29 to i32
  %shl290 = shl nuw nsw i32 %conv289, 16
  %or292 = or i32 %shl290, %shl286
  %incdec.ptr294 = getelementptr inbounds i8, i8* %in.addr.8727, i64 3
  %30 = load i8, i8* %incdec.ptr288, align 1, !tbaa !8
  %conv295 = zext i8 %30 to i32
  %shl296 = shl nuw nsw i32 %conv295, 8
  %or298 = or i32 %or292, %shl296
  %incdec.ptr300 = getelementptr inbounds i8, i8* %in.addr.8727, i64 4
  %31 = load i8, i8* %incdec.ptr294, align 1, !tbaa !8
  %conv301 = zext i8 %31 to i32
  %or303 = or i32 %or298, %conv301
  %incdec.ptr305 = getelementptr inbounds i8, i8* %in.addr.8727, i64 5
  %32 = load i8, i8* %incdec.ptr300, align 1, !tbaa !8
  %conv306 = zext i8 %32 to i32
  %shl307 = shl nuw i32 %conv306, 24
  %incdec.ptr309 = getelementptr inbounds i8, i8* %in.addr.8727, i64 6
  %33 = load i8, i8* %incdec.ptr305, align 1, !tbaa !8
  %conv310 = zext i8 %33 to i32
  %shl311 = shl nuw nsw i32 %conv310, 16
  %or313 = or i32 %shl311, %shl307
  %incdec.ptr315 = getelementptr inbounds i8, i8* %in.addr.8727, i64 7
  %34 = load i8, i8* %incdec.ptr309, align 1, !tbaa !8
  %conv316 = zext i8 %34 to i32
  %shl317 = shl nuw nsw i32 %conv316, 8
  %or319 = or i32 %or313, %shl317
  %incdec.ptr321 = getelementptr inbounds i8, i8* %in.addr.8727, i64 8
  %35 = load i8, i8* %incdec.ptr315, align 1, !tbaa !8
  %conv322 = zext i8 %35 to i32
  %or324 = or i32 %or319, %conv322
  store i32 %or303, i32* %arrayidx326, align 4, !tbaa !4
  store i32 %or324, i32* %arrayidx327, align 4, !tbaa !4
  call void @BF_decrypt(i32* noundef nonnull %arrayidx326, %struct.bf_key_st* noundef %schedule) #4
  %36 = load i32, i32* %arrayidx326, align 4, !tbaa !4
  %xor330 = xor i32 %36, %xor0.0728
  %37 = load i32, i32* %arrayidx327, align 4, !tbaa !4
  %xor332 = xor i32 %37, %xor1.0729
  %shr333 = lshr i32 %xor330, 24
  %conv335 = trunc i32 %shr333 to i8
  %incdec.ptr336 = getelementptr inbounds i8, i8* %out.addr.1726, i64 1
  store i8 %conv335, i8* %out.addr.1726, align 1, !tbaa !8
  %shr337 = lshr i32 %xor330, 16
  %conv339 = trunc i32 %shr337 to i8
  %incdec.ptr340 = getelementptr inbounds i8, i8* %out.addr.1726, i64 2
  store i8 %conv339, i8* %incdec.ptr336, align 1, !tbaa !8
  %shr341 = lshr i32 %xor330, 8
  %conv343 = trunc i32 %shr341 to i8
  %incdec.ptr344 = getelementptr inbounds i8, i8* %out.addr.1726, i64 3
  store i8 %conv343, i8* %incdec.ptr340, align 1, !tbaa !8
  %conv346 = trunc i32 %xor330 to i8
  %incdec.ptr347 = getelementptr inbounds i8, i8* %out.addr.1726, i64 4
  store i8 %conv346, i8* %incdec.ptr344, align 1, !tbaa !8
  %shr348 = lshr i32 %xor332, 24
  %conv350 = trunc i32 %shr348 to i8
  %incdec.ptr351 = getelementptr inbounds i8, i8* %out.addr.1726, i64 5
  store i8 %conv350, i8* %incdec.ptr347, align 1, !tbaa !8
  %shr352 = lshr i32 %xor332, 16
  %conv354 = trunc i32 %shr352 to i8
  %incdec.ptr355 = getelementptr inbounds i8, i8* %out.addr.1726, i64 6
  store i8 %conv354, i8* %incdec.ptr351, align 1, !tbaa !8
  %shr356 = lshr i32 %xor332, 8
  %conv358 = trunc i32 %shr356 to i8
  %incdec.ptr359 = getelementptr inbounds i8, i8* %out.addr.1726, i64 7
  store i8 %conv358, i8* %incdec.ptr355, align 1, !tbaa !8
  %conv361 = trunc i32 %xor332 to i8
  %incdec.ptr362 = getelementptr inbounds i8, i8* %out.addr.1726, i64 8
  store i8 %conv361, i8* %incdec.ptr359, align 1, !tbaa !8
  %cmp281 = icmp ugt i64 %l.1.in730, 15
  br i1 %cmp281, label %for.body283, label %for.end365, !llvm.loop !11

for.end365:                                       ; preds = %for.body283, %if.else
  %out.addr.1.lcssa = phi i8* [ %out, %if.else ], [ %incdec.ptr362, %for.body283 ]
  %in.addr.8.lcssa = phi i8* [ %in, %if.else ], [ %incdec.ptr321, %for.body283 ]
  %xor0.0.lcssa = phi i32 [ %or255, %if.else ], [ %or303, %for.body283 ]
  %xor1.0.lcssa = phi i32 [ %or276, %if.else ], [ %or324, %for.body283 ]
  %l.1.in.lcssa = phi i64 [ %length, %if.else ], [ %l.1, %for.body283 ]
  %cmp366.not = icmp eq i64 %l.1.in.lcssa, 0
  br i1 %cmp366.not, label %if.end460, label %if.then368

if.then368:                                       ; preds = %for.end365
  %incdec.ptr369 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 1
  %38 = load i8, i8* %in.addr.8.lcssa, align 1, !tbaa !8
  %conv370 = zext i8 %38 to i32
  %shl371 = shl nuw i32 %conv370, 24
  %incdec.ptr373 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 2
  %39 = load i8, i8* %incdec.ptr369, align 1, !tbaa !8
  %conv374 = zext i8 %39 to i32
  %shl375 = shl nuw nsw i32 %conv374, 16
  %or377 = or i32 %shl375, %shl371
  %incdec.ptr379 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 3
  %40 = load i8, i8* %incdec.ptr373, align 1, !tbaa !8
  %conv380 = zext i8 %40 to i32
  %shl381 = shl nuw nsw i32 %conv380, 8
  %or383 = or i32 %or377, %shl381
  %incdec.ptr385 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 4
  %41 = load i8, i8* %incdec.ptr379, align 1, !tbaa !8
  %conv386 = zext i8 %41 to i32
  %or388 = or i32 %or383, %conv386
  %incdec.ptr390 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 5
  %42 = load i8, i8* %incdec.ptr385, align 1, !tbaa !8
  %conv391 = zext i8 %42 to i32
  %shl392 = shl nuw i32 %conv391, 24
  %incdec.ptr394 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 6
  %43 = load i8, i8* %incdec.ptr390, align 1, !tbaa !8
  %conv395 = zext i8 %43 to i32
  %shl396 = shl nuw nsw i32 %conv395, 16
  %or398 = or i32 %shl396, %shl392
  %incdec.ptr400 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 7
  %44 = load i8, i8* %incdec.ptr394, align 1, !tbaa !8
  %conv401 = zext i8 %44 to i32
  %shl402 = shl nuw nsw i32 %conv401, 8
  %or404 = or i32 %or398, %shl402
  %45 = load i8, i8* %incdec.ptr400, align 1, !tbaa !8
  %conv407 = zext i8 %45 to i32
  %or409 = or i32 %or404, %conv407
  %arrayidx411 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  store i32 %or388, i32* %arrayidx411, align 4, !tbaa !4
  %arrayidx412 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  store i32 %or409, i32* %arrayidx412, align 4, !tbaa !4
  call void @BF_decrypt(i32* noundef nonnull %arrayidx411, %struct.bf_key_st* noundef %schedule) #4
  %46 = load i32, i32* %arrayidx411, align 4, !tbaa !4
  %xor415 = xor i32 %46, %xor0.0.lcssa
  %47 = load i32, i32* %arrayidx412, align 4, !tbaa !4
  %xor417 = xor i32 %47, %xor1.0.lcssa
  %add.ptr419 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %l.1.in.lcssa
  switch i64 %l.1.in.lcssa, label %if.end460 [
    i64 1, label %sw.bb454
    i64 7, label %sw.bb425
    i64 6, label %sw.bb430
    i64 5, label %sw.bb435
    i64 4, label %sw.bb440
    i64 3, label %sw.bb444
    i64 2, label %sw.bb449
  ]

sw.bb425:                                         ; preds = %if.then368
  %shr426 = lshr i32 %xor417, 8
  %conv428 = trunc i32 %shr426 to i8
  %incdec.ptr429 = getelementptr inbounds i8, i8* %add.ptr419, i64 -1
  store i8 %conv428, i8* %incdec.ptr429, align 1, !tbaa !8
  br label %sw.bb430

sw.bb430:                                         ; preds = %if.then368, %sw.bb425
  %out.addr.3 = phi i8* [ %add.ptr419, %if.then368 ], [ %incdec.ptr429, %sw.bb425 ]
  %shr431 = lshr i32 %xor417, 16
  %conv433 = trunc i32 %shr431 to i8
  %incdec.ptr434 = getelementptr inbounds i8, i8* %out.addr.3, i64 -1
  store i8 %conv433, i8* %incdec.ptr434, align 1, !tbaa !8
  br label %sw.bb435

sw.bb435:                                         ; preds = %if.then368, %sw.bb430
  %out.addr.4 = phi i8* [ %add.ptr419, %if.then368 ], [ %incdec.ptr434, %sw.bb430 ]
  %shr436 = lshr i32 %xor417, 24
  %conv438 = trunc i32 %shr436 to i8
  %incdec.ptr439 = getelementptr inbounds i8, i8* %out.addr.4, i64 -1
  store i8 %conv438, i8* %incdec.ptr439, align 1, !tbaa !8
  br label %sw.bb440

sw.bb440:                                         ; preds = %if.then368, %sw.bb435
  %out.addr.5 = phi i8* [ %add.ptr419, %if.then368 ], [ %incdec.ptr439, %sw.bb435 ]
  %conv442 = trunc i32 %xor415 to i8
  %incdec.ptr443 = getelementptr inbounds i8, i8* %out.addr.5, i64 -1
  store i8 %conv442, i8* %incdec.ptr443, align 1, !tbaa !8
  br label %sw.bb444

sw.bb444:                                         ; preds = %if.then368, %sw.bb440
  %out.addr.6 = phi i8* [ %add.ptr419, %if.then368 ], [ %incdec.ptr443, %sw.bb440 ]
  %shr445 = lshr i32 %xor415, 8
  %conv447 = trunc i32 %shr445 to i8
  %incdec.ptr448 = getelementptr inbounds i8, i8* %out.addr.6, i64 -1
  store i8 %conv447, i8* %incdec.ptr448, align 1, !tbaa !8
  br label %sw.bb449

sw.bb449:                                         ; preds = %if.then368, %sw.bb444
  %out.addr.7 = phi i8* [ %add.ptr419, %if.then368 ], [ %incdec.ptr448, %sw.bb444 ]
  %shr450 = lshr i32 %xor415, 16
  %conv452 = trunc i32 %shr450 to i8
  %incdec.ptr453 = getelementptr inbounds i8, i8* %out.addr.7, i64 -1
  store i8 %conv452, i8* %incdec.ptr453, align 1, !tbaa !8
  br label %sw.bb454

sw.bb454:                                         ; preds = %if.then368, %sw.bb449
  %out.addr.8 = phi i8* [ %add.ptr419, %if.then368 ], [ %incdec.ptr453, %sw.bb449 ]
  %shr455 = lshr i32 %xor415, 24
  %conv457 = trunc i32 %shr455 to i8
  %incdec.ptr458 = getelementptr inbounds i8, i8* %out.addr.8, i64 -1
  store i8 %conv457, i8* %incdec.ptr458, align 1, !tbaa !8
  br label %if.end460

if.end460:                                        ; preds = %if.then368, %sw.bb454, %for.end365
  %xor0.1 = phi i32 [ %xor0.0.lcssa, %for.end365 ], [ %or388, %sw.bb454 ], [ %or388, %if.then368 ]
  %xor1.1 = phi i32 [ %xor1.0.lcssa, %for.end365 ], [ %or409, %sw.bb454 ], [ %or409, %if.then368 ]
  %shr461 = lshr i32 %xor0.1, 24
  %conv463 = trunc i32 %shr461 to i8
  store i8 %conv463, i8* %ivec, align 1, !tbaa !8
  %shr465 = lshr i32 %xor0.1, 16
  %conv467 = trunc i32 %shr465 to i8
  store i8 %conv467, i8* %incdec.ptr236, align 1, !tbaa !8
  %shr469 = lshr i32 %xor0.1, 8
  %conv471 = trunc i32 %shr469 to i8
  store i8 %conv471, i8* %incdec.ptr240, align 1, !tbaa !8
  %conv474 = trunc i32 %xor0.1 to i8
  store i8 %conv474, i8* %incdec.ptr246, align 1, !tbaa !8
  %shr476 = lshr i32 %xor1.1, 24
  %conv478 = trunc i32 %shr476 to i8
  store i8 %conv478, i8* %incdec.ptr252, align 1, !tbaa !8
  %shr480 = lshr i32 %xor1.1, 16
  %conv482 = trunc i32 %shr480 to i8
  store i8 %conv482, i8* %incdec.ptr257, align 1, !tbaa !8
  %shr484 = lshr i32 %xor1.1, 8
  %conv486 = trunc i32 %shr484 to i8
  store i8 %conv486, i8* %incdec.ptr261, align 1, !tbaa !8
  %conv489 = trunc i32 %xor1.1 to i8
  br label %if.end491

if.end491:                                        ; preds = %if.end460, %if.end
  %conv489.sink = phi i8 [ %conv489, %if.end460 ], [ %conv234.pre-phi, %if.end ]
  store i8 %conv489.sink, i8* %incdec.ptr267, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}

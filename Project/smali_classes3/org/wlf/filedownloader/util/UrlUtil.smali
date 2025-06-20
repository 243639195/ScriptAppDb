.class public Lorg/wlf/filedownloader/util/UrlUtil;
.super Ljava/lang/Object;
.source "UrlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SPLIT:Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

.field private static final SPACE_SPLIT:Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

.field private static final SPECIAL_CHARACTER_ENCODER_MAP:[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 20
    new-instance v0, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    const-string v1, "#"

    const-string v2, "%23"

    invoke-direct {v0, v1, v2}, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wlf/filedownloader/util/UrlUtil;->FRAGMENT_SPLIT:Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    .line 22
    new-instance v0, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    const-string v1, "+"

    const-string v2, "%20"

    invoke-direct {v0, v1, v2}, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wlf/filedownloader/util/UrlUtil;->SPACE_SPLIT:Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    const/4 v1, 0x0

    sget-object v2, Lorg/wlf/filedownloader/util/UrlUtil;->SPACE_SPLIT:Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/wlf/filedownloader/util/UrlUtil;->FRAGMENT_SPLIT:Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    const-string v3, "/"

    const-string v4, "%2F"

    invoke-direct {v2, v3, v4}, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    const-string v3, "?"

    const-string v4, "%3F"

    invoke-direct {v2, v3, v4}, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    const-string v3, "%"

    const-string v4, "%25"

    invoke-direct {v2, v3, v4}, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    const-string v3, "&"

    const-string v4, "%26"

    invoke-direct {v2, v3, v4}, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    const-string v3, "="

    const-string v4, "%3D"

    invoke-direct {v2, v3, v4}, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/wlf/filedownloader/util/UrlUtil;->SPECIAL_CHARACTER_ENCODER_MAP:[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 424
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 429
    :goto_0
    return-object v0

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 429
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getASCIIEncodedUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 546
    invoke-static {p0, p1, v0, v0}, Lorg/wlf/filedownloader/util/UrlUtil;->getEncodedUrl(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getEncodedFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;)Ljava/lang/String;
    .locals 23
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .param p4, "specials"    # [Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    .prologue
    .line 143
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 144
    const/16 v21, 0x0

    .line 384
    :goto_0
    return-object v21

    .line 147
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .local v3, "bufferEncodedFile":Ljava/lang/StringBuffer;
    :try_start_0
    const-string v21, "/"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 156
    .local v18, "splitPath":[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lorg/wlf/filedownloader/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 157
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_d

    .line 158
    aget-object v16, v18, v11

    .line 159
    .local v16, "pathSegment":Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 160
    const-string v21, "/"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    :cond_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 157
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 166
    :cond_3
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/util/UrlUtil;->isEncoded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 168
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "encodedPathSegment":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 173
    invoke-static/range {p4 .. p4}, Lorg/wlf/filedownloader/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 174
    move-object/from16 v2, p4

    .local v2, "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    array-length v15, v2

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_3
    if-ge v12, v15, :cond_6

    aget-object v5, v2, v12

    .line 175
    .local v5, "encodeInfo":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    if-eqz v5, :cond_4

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_4

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 174
    :cond_4
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 179
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_4

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 182
    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 187
    .end local v2    # "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    .end local v5    # "encodeInfo":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    :cond_6
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 381
    .end local v7    # "encodedPathSegment":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v16    # "pathSegment":Ljava/lang/String;
    .end local v18    # "splitPath":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 382
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 384
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_7
    :goto_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    .line 191
    .restart local v11    # "i":I
    .restart local v16    # "pathSegment":Ljava/lang/String;
    .restart local v18    # "splitPath":[Ljava/lang/String;
    :cond_8
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 198
    .end local v11    # "i":I
    .end local v16    # "pathSegment":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/util/UrlUtil;->isEncoded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_12

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 201
    .local v6, "encodedPath":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_d

    .line 203
    invoke-static/range {p4 .. p4}, Lorg/wlf/filedownloader/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 204
    move-object/from16 v2, p4

    .restart local v2    # "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    array-length v15, v2

    .restart local v15    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_6
    if-ge v12, v15, :cond_c

    aget-object v5, v2, v12

    .line 205
    .restart local v5    # "encodeInfo":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    if-eqz v5, :cond_a

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_a

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 204
    :cond_a
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 209
    :cond_b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_a

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 211
    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 215
    .end local v2    # "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    .end local v5    # "encodeInfo":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    :cond_c
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    .end local v6    # "encodedPath":Ljava/lang/String;
    :cond_d
    :goto_8
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_23

    .line 228
    const-string v21, "\\?"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_e

    const-string v21, "&"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 229
    :cond_e
    const-string v21, "?"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    :cond_f
    const-string v21, "&"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 235
    .local v19, "splitQuery":[Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lorg/wlf/filedownloader/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1f

    .line 236
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_9
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_23

    .line 237
    aget-object v17, v19, v11

    .line 238
    .local v17, "querySegment":Ljava/lang/String;
    if-eqz v11, :cond_10

    .line 239
    const-string v21, "&"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    :cond_10
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 236
    :cond_11
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 220
    .end local v11    # "i":I
    .end local v17    # "querySegment":Ljava/lang/String;
    .end local v19    # "splitQuery":[Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 245
    .restart local v11    # "i":I
    .restart local v17    # "querySegment":Ljava/lang/String;
    .restart local v19    # "splitQuery":[Ljava/lang/String;
    :cond_13
    const-string v21, "="

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 247
    .local v14, "keyValue":[Ljava/lang/String;
    invoke-static {v14}, Lorg/wlf/filedownloader/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1a

    array-length v0, v14

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1a

    .line 248
    const/16 v21, 0x0

    aget-object v13, v14, v21

    .line 249
    .local v13, "key":Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v20, v14, v21

    .line 250
    .local v20, "value":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_11

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_11

    .line 254
    move-object/from16 v0, p3

    invoke-static {v13, v0}, Lorg/wlf/filedownloader/util/UrlUtil;->isEncoded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_16

    .line 256
    move-object/from16 v0, p3

    invoke-static {v13, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 258
    invoke-static/range {p4 .. p4}, Lorg/wlf/filedownloader/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_16

    .line 259
    move-object/from16 v2, p4

    .restart local v2    # "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    array-length v15, v2

    .restart local v15    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_b
    if-ge v12, v15, :cond_16

    aget-object v5, v2, v12

    .line 260
    .restart local v5    # "encodeInfo":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    if-eqz v5, :cond_14

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_14

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 259
    :cond_14
    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 264
    :cond_15
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_14

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 266
    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    goto :goto_c

    .line 276
    .end local v2    # "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    .end local v5    # "encodeInfo":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    :cond_16
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/util/UrlUtil;->isEncoded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_19

    .line 278
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 280
    invoke-static/range {p4 .. p4}, Lorg/wlf/filedownloader/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_19

    .line 281
    move-object/from16 v2, p4

    .restart local v2    # "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    array-length v15, v2

    .restart local v15    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_d
    if-ge v12, v15, :cond_19

    aget-object v5, v2, v12

    .line 282
    .restart local v5    # "encodeInfo":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    if-eqz v5, :cond_17

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_17

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 281
    :cond_17
    :goto_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 286
    :cond_18
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_17

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 288
    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    goto :goto_e

    .line 297
    .end local v2    # "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    .end local v5    # "encodeInfo":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    :cond_19
    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    const-string v21, "="

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    .line 304
    .end local v13    # "key":Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/util/UrlUtil;->isEncoded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1e

    .line 306
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 307
    .local v9, "encodedQuerySegment":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_11

    .line 309
    invoke-static/range {p4 .. p4}, Lorg/wlf/filedownloader/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1d

    .line 310
    move-object/from16 v2, p4

    .restart local v2    # "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    array-length v15, v2

    .restart local v15    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_f
    if-ge v12, v15, :cond_1d

    aget-object v5, v2, v12

    .line 311
    .restart local v5    # "encodeInfo":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    if-eqz v5, :cond_1b

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1b

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 310
    :cond_1b
    :goto_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 315
    :cond_1c
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1b

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 318
    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    goto :goto_10

    .line 323
    .end local v2    # "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    .end local v5    # "encodeInfo":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    :cond_1d
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    .line 328
    .end local v9    # "encodedQuerySegment":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    .line 336
    .end local v11    # "i":I
    .end local v14    # "keyValue":[Ljava/lang/String;
    .end local v17    # "querySegment":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/util/UrlUtil;->isEncoded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_24

    .line 338
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 339
    .local v8, "encodedQuery":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_23

    .line 341
    invoke-static/range {p4 .. p4}, Lorg/wlf/filedownloader/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_22

    .line 342
    move-object/from16 v2, p4

    .restart local v2    # "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    array-length v15, v2

    .restart local v15    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_11
    if-ge v12, v15, :cond_22

    aget-object v5, v2, v12

    .line 343
    .restart local v5    # "encodeInfo":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    if-eqz v5, :cond_20

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_20

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_21

    .line 342
    :cond_20
    :goto_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 347
    :cond_21
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_20

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_20

    .line 349
    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v5, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_12

    .line 353
    .end local v2    # "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    .end local v5    # "encodeInfo":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    :cond_22
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    .end local v8    # "encodedQuery":Ljava/lang/String;
    .end local v19    # "splitQuery":[Ljava/lang/String;
    :cond_23
    :goto_13
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 367
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/util/UrlUtil;->isEncoded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_25

    .line 369
    invoke-static/range {p2 .. p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 370
    .local v10, "encodedRef":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 371
    const-string v21, "#"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 358
    .end local v10    # "encodedRef":Ljava/lang/String;
    .restart local v19    # "splitQuery":[Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 377
    .end local v19    # "splitQuery":[Ljava/lang/String;
    :cond_25
    const-string v21, "#"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method private static getEncodedHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;)Ljava/lang/String;
    .locals 13
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "userInfo"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "specials"    # [Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    .prologue
    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 47
    const/4 v11, 0x0

    .line 138
    :goto_0
    return-object v11

    .line 50
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 56
    .local v1, "bufferEncodedHost":Ljava/lang/StringBuffer;
    :try_start_0
    const-string v11, "."

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 59
    .local v10, "splitHost":[Ljava/lang/String;
    invoke-static {v10}, Lorg/wlf/filedownloader/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 60
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v11, v10

    if-ge v7, v11, :cond_d

    .line 61
    aget-object v6, v10, v7

    .line 62
    .local v6, "hostSegment":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 63
    const-string v11, "."

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 60
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 69
    :cond_3
    invoke-static {v6, p2}, Lorg/wlf/filedownloader/util/UrlUtil;->isEncoded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 71
    invoke-static {v6, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "encodedHostSegment":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 76
    invoke-static/range {p3 .. p3}, Lorg/wlf/filedownloader/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 77
    move-object/from16 v0, p3

    .local v0, "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v9, :cond_6

    aget-object v3, v0, v8

    .line 78
    .local v3, "encodeInfo":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    if-eqz v3, :cond_4

    iget-object v11, v3, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, v3, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 77
    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 82
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, v3, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 85
    iget-object v11, v3, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    iget-object v12, v3, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 90
    .end local v0    # "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    .end local v3    # "encodeInfo":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_6
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 135
    .end local v5    # "encodedHostSegment":Ljava/lang/String;
    .end local v6    # "hostSegment":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v10    # "splitHost":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 138
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_7
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 95
    .restart local v6    # "hostSegment":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v10    # "splitHost":[Ljava/lang/String;
    :cond_8
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 103
    .end local v6    # "hostSegment":Ljava/lang/String;
    .end local v7    # "i":I
    :cond_9
    invoke-static {p0, p2}, Lorg/wlf/filedownloader/util/UrlUtil;->isEncoded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 105
    invoke-static {p0, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "encodedHost":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 108
    invoke-static/range {p3 .. p3}, Lorg/wlf/filedownloader/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 109
    move-object/from16 v0, p3

    .restart local v0    # "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    array-length v9, v0

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_6
    if-ge v8, v9, :cond_c

    aget-object v3, v0, v8

    .line 110
    .restart local v3    # "encodeInfo":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    if-eqz v3, :cond_a

    iget-object v11, v3, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v3, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 109
    :cond_a
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 114
    :cond_b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v3, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 116
    iget-object v11, v3, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    iget-object v12, v3, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 120
    .end local v0    # "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    .end local v3    # "encodeInfo":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    .end local v4    # "encodedHost":Ljava/lang/String;
    :cond_d
    :goto_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 132
    const-string v11, "@"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 125
    :cond_e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8
.end method

.method public static getEncodedUrl(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "useFragment"    # Z
    .param p3, "blankAsPlus"    # Z

    .prologue
    .line 434
    const-string v13, "wlf"

    const-string v14, "getEncodedUrl\uff0c--------------------"

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v13, "wlf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getEncodedUrl\uff0c\u51c6\u5907\u7f16\u7801URL\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 439
    const/4 v2, 0x0

    .line 509
    :goto_0
    return-object v2

    .line 443
    :cond_0
    if-eqz p0, :cond_1

    .line 444
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 447
    :cond_1
    const/4 v2, 0x0

    .line 453
    .local v2, "encodedUrl":Ljava/lang/String;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 455
    .local v11, "unEncodeUrl":Ljava/net/URL;
    const-string v13, "wlf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getEncodedUrl\uff0c\u5f00\u59cb\u7f16\u7801URL\uff0cunEncodeUrl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v13, "wlf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getEncodedUrl\uff0c\u5f00\u59cb\u7f16\u7801URL\uff0cgetProtocol\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v13, "wlf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getEncodedUrl\uff0c\u5f00\u59cb\u7f16\u7801URL\uff0cgetHost\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v13, "wlf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getEncodedUrl\uff0c\u5f00\u59cb\u7f16\u7801URL\uff0cgetUserInfo\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v13, "wlf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getEncodedUrl\uff0c\u5f00\u59cb\u7f16\u7801URL\uff0cgetPort\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/net/URL;->getPort()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v13, "wlf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getEncodedUrl\uff0c\u5f00\u59cb\u7f16\u7801URL\uff0cgetFile\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v13, "wlf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getEncodedUrl\uff0c\u5f00\u59cb\u7f16\u7801URL\uff0cgetPath\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v13, "wlf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getEncodedUrl\uff0c\u5f00\u59cb\u7f16\u7801URL\uff0cgetQuery\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v13, "wlf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getEncodedUrl\uff0c\u5f00\u59cb\u7f16\u7801URL\uff0cgetRef\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    .line 475
    .local v7, "protocol":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, "host":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v12

    .line 478
    .local v12, "userInfo":Ljava/lang/String;
    sget-object v13, Lorg/wlf/filedownloader/util/UrlUtil;->SPECIAL_CHARACTER_ENCODER_MAP:[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    move-object/from16 v0, p1

    invoke-static {v4, v12, v0, v13}, Lorg/wlf/filedownloader/util/UrlUtil;->getEncodedHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;)Ljava/lang/String;

    move-result-object v4

    .line 480
    invoke-virtual {v11}, Ljava/net/URL;->getPort()I

    move-result v6

    .line 482
    .local v6, "port":I
    invoke-virtual {v11}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, "file":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 484
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v8

    .line 485
    .local v8, "query":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v9

    .line 487
    .local v9, "ref":Ljava/lang/String;
    sget-object v13, Lorg/wlf/filedownloader/util/UrlUtil;->SPECIAL_CHARACTER_ENCODER_MAP:[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    move-object/from16 v0, p1

    invoke-static {v5, v8, v9, v0, v13}, Lorg/wlf/filedownloader/util/UrlUtil;->getEncodedFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;)Ljava/lang/String;

    move-result-object v3

    .line 489
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v7, v4, v6, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 491
    .local v10, "tempEncodedUrl":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 498
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v7    # "protocol":Ljava/lang/String;
    .end local v8    # "query":Ljava/lang/String;
    .end local v9    # "ref":Ljava/lang/String;
    .end local v10    # "tempEncodedUrl":Ljava/net/URL;
    .end local v11    # "unEncodeUrl":Ljava/net/URL;
    .end local v12    # "userInfo":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_2

    sget-object v13, Lorg/wlf/filedownloader/util/UrlUtil;->SPACE_SPLIT:Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    iget-object v13, v13, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    if-nez p3, :cond_2

    .line 499
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\\"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lorg/wlf/filedownloader/util/UrlUtil;->SPACE_SPLIT:Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    iget-object v14, v14, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lorg/wlf/filedownloader/util/UrlUtil;->SPACE_SPLIT:Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    iget-object v14, v14, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 503
    :cond_2
    if-eqz v2, :cond_3

    sget-object v13, Lorg/wlf/filedownloader/util/UrlUtil;->FRAGMENT_SPLIT:Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    iget-object v13, v13, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-nez p2, :cond_3

    .line 504
    sget-object v13, Lorg/wlf/filedownloader/util/UrlUtil;->FRAGMENT_SPLIT:Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    iget-object v13, v13, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    sget-object v14, Lorg/wlf/filedownloader/util/UrlUtil;->FRAGMENT_SPLIT:Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    iget-object v14, v14, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 507
    :cond_3
    const-string v13, "wlf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getEncodedUrl\uff0c\u7f16\u7801\u540eURL\uff0cencodedUrl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 493
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getFileNameByUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 557
    const/4 v2, 0x0

    .line 559
    .local v2, "fileName":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 560
    const/4 p0, 0x0

    .line 593
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 564
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_2

    .line 565
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 569
    :cond_2
    :try_start_0
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 570
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 571
    if-eqz v2, :cond_3

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 572
    const/4 v3, 0x0

    const/16 v4, 0x3f

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 579
    :cond_3
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 580
    invoke-static {v2, p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isEncoded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 582
    invoke-static {v2, p1}, Lorg/wlf/filedownloader/util/UrlUtil;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "decodedContent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 584
    move-object v2, v0

    .line 589
    .end local v0    # "decodedContent":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object p0, v2

    .line 590
    goto :goto_0

    .line 575
    :catch_0
    move-exception v1

    .line 576
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isEncoded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 389
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v6

    .line 397
    :cond_1
    const-string v7, "wlf"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isEncoded\uff0ccheck content\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-object v0, Lorg/wlf/filedownloader/util/UrlUtil;->SPECIAL_CHARACTER_ENCODER_MAP:[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;

    .local v0, "arr$":[Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v4, v0, v3

    .line 400
    .local v4, "info":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    if-nez v4, :cond_3

    .line 399
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 403
    :cond_3
    iget-object v7, v4, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 408
    .end local v4    # "info":Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
    :cond_4
    const/4 v1, 0x0

    .line 410
    .local v1, "decodedContent":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 415
    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 419
    :cond_5
    const/4 v6, 0x1

    goto :goto_0

    .line 411
    :catch_0
    move-exception v2

    .line 412
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method public static isUrl(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 519
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v1

    .line 523
    :cond_1
    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Lorg/wlf/filedownloader/util/UrlUtil;->getASCIIEncodedUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "encodedUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 528
    const/4 v1, 0x1

    goto :goto_0
.end method

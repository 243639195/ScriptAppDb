.class final Lcom/google/a/i/a/d;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final a:[C

.field private static final b:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/a/i/a/d;->a:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/google/a/i/a/d;->a:[C

    array-length v0, v0

    if-lt p0, v0, :cond_0

    .line 255
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    .line 257
    :cond_0
    sget-object v0, Lcom/google/a/i/a/d;->a:[C

    aget-char p0, v0, p0

    return p0
.end method

.method private static a(Lcom/google/a/c/c;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    const/16 v0, 0x8

    .line 342
    invoke-virtual {p0, v0}, Lcom/google/a/c/c;->a(I)I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_0

    and-int/lit8 p0, v1, 0x7f

    return p0

    :cond_0
    and-int/lit16 v2, v1, 0xc0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1

    .line 349
    invoke-virtual {p0, v0}, Lcom/google/a/c/c;->a(I)I

    move-result p0

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p0, v0

    return p0

    :cond_1
    and-int/lit16 v0, v1, 0xe0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_2

    const/16 v0, 0x10

    .line 354
    invoke-virtual {p0, v0}, Lcom/google/a/c/c;->a(I)I

    move-result p0

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p0, v0

    return p0

    .line 357
    :cond_2
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0
.end method

.method static a([BLcom/google/a/i/a/j;Lcom/google/a/i/a/f;Ljava/util/Map;)Lcom/google/a/c/e;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/a/i/a/j;",
            "Lcom/google/a/i/a/f;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/c/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 56
    new-instance v7, Lcom/google/a/c/c;

    move-object/from16 v8, p0

    invoke-direct {v7, v8}, Lcom/google/a/c/c;-><init>([B)V

    .line 57
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 58
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v12, 0x0

    move-object v14, v12

    const/4 v13, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    .line 68
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Lcom/google/a/c/c;->a()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 70
    sget-object v1, Lcom/google/a/i/a/h;->a:Lcom/google/a/i/a/h;

    :goto_1
    move-object v6, v1

    goto :goto_2

    .line 72
    :cond_0
    invoke-virtual {v7, v2}, Lcom/google/a/c/c;->a(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/a/i/a/h;->a(I)Lcom/google/a/i/a/h;

    move-result-object v1

    goto :goto_1

    .line 74
    :goto_2
    sget-object v1, Lcom/google/a/i/a/d$1;->a:[I

    invoke-virtual {v6}, Lcom/google/a/i/a/h;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/16 v3, 0x10

    const/16 v4, 0x8

    packed-switch v1, :pswitch_data_0

    .line 111
    invoke-virtual {v6, v0}, Lcom/google/a/i/a/h;->a(Lcom/google/a/i/a/j;)I

    move-result v1

    goto :goto_5

    .line 102
    :pswitch_0
    invoke-virtual {v7, v2}, Lcom/google/a/c/c;->a(I)I

    move-result v1

    .line 103
    invoke-virtual {v6, v0}, Lcom/google/a/i/a/h;->a(Lcom/google/a/i/a/j;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    if-ne v1, v11, :cond_5

    .line 105
    invoke-static {v7, v9, v2}, Lcom/google/a/i/a/d;->a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;I)V

    goto :goto_4

    .line 1342
    :pswitch_1
    invoke-virtual {v7, v4}, Lcom/google/a/c/c;->a(I)I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_1

    and-int/lit8 v1, v1, 0x7f

    goto :goto_3

    :cond_1
    and-int/lit16 v2, v1, 0xc0

    const/16 v5, 0x80

    if-ne v2, v5, :cond_2

    .line 1349
    invoke-virtual {v7, v4}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    and-int/lit8 v1, v1, 0x3f

    shl-int/2addr v1, v4

    or-int/2addr v1, v2

    goto :goto_3

    :cond_2
    and-int/lit16 v2, v1, 0xe0

    const/16 v4, 0xc0

    if-ne v2, v4, :cond_3

    .line 1354
    invoke-virtual {v7, v3}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    and-int/lit8 v1, v1, 0x1f

    shl-int/2addr v1, v3

    or-int/2addr v1, v2

    .line 94
    :goto_3
    invoke-static {v1}, Lcom/google/a/c/d;->a(I)Lcom/google/a/c/d;

    move-result-object v14

    if-nez v14, :cond_5

    .line 96
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object v0

    throw v0

    .line 1357
    :cond_3
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object v0

    throw v0

    .line 83
    :pswitch_2
    invoke-virtual {v7}, Lcom/google/a/c/c;->a()I

    move-result v1

    if-ge v1, v3, :cond_4

    .line 84
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object v0

    throw v0

    .line 88
    :cond_4
    invoke-virtual {v7, v4}, Lcom/google/a/c/c;->a(I)I

    move-result v1

    .line 89
    invoke-virtual {v7, v4}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    move v15, v1

    move/from16 v16, v2

    :cond_5
    :goto_4
    :pswitch_3
    move-object v11, v6

    goto :goto_6

    :pswitch_4
    move-object v11, v6

    const/4 v13, 0x1

    goto :goto_6

    .line 111
    :goto_5
    invoke-virtual {v7, v1}, Lcom/google/a/c/c;->a(I)I

    move-result v3

    .line 112
    sget-object v1, Lcom/google/a/i/a/d$1;->a:[I

    invoke-virtual {v6}, Lcom/google/a/i/a/h;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 126
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object v0

    goto :goto_9

    .line 123
    :pswitch_5
    invoke-static {v7, v9, v3}, Lcom/google/a/i/a/d;->b(Lcom/google/a/c/c;Ljava/lang/StringBuilder;I)V

    goto :goto_4

    :pswitch_6
    move-object v1, v7

    move-object v2, v9

    move-object v4, v14

    move-object v5, v10

    move-object v11, v6

    move-object/from16 v6, p3

    .line 120
    invoke-static/range {v1 .. v6}, Lcom/google/a/i/a/d;->a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;ILcom/google/a/c/d;Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_6

    :pswitch_7
    move-object v11, v6

    .line 117
    invoke-static {v7, v9, v3, v13}, Lcom/google/a/i/a/d;->a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;IZ)V

    goto :goto_6

    :pswitch_8
    move-object v11, v6

    .line 114
    invoke-static {v7, v9, v3}, Lcom/google/a/i/a/d;->c(Lcom/google/a/c/c;Ljava/lang/StringBuilder;I)V

    .line 130
    :goto_6
    sget-object v1, Lcom/google/a/i/a/h;->a:Lcom/google/a/i/a/h;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v11, v1, :cond_8

    .line 136
    new-instance v7, Lcom/google/a/c/e;

    .line 137
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v3, v12

    goto :goto_7

    :cond_6
    move-object v3, v10

    :goto_7
    if-nez p2, :cond_7

    move-object v4, v12

    goto :goto_8

    .line 139
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/google/a/i/a/f;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_8
    move-object v0, v7

    move-object v1, v8

    move v5, v15

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/google/a/c/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    return-object v7

    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 126
    :goto_9
    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    :catch_0
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    .line 151
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 152
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_0
    mul-int/lit8 v0, p2, 0x2

    .line 157
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-lez p2, :cond_2

    const/16 v2, 0xd

    .line 161
    invoke-virtual {p0, v2}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    .line 162
    div-int/lit8 v3, v2, 0x60

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit8 v2, v2, 0x60

    or-int/2addr v2, v3

    const/16 v3, 0x3bf

    if-ge v2, v3, :cond_1

    const v3, 0xa1a1

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    const v3, 0xa6a1

    add-int/2addr v2, v3

    :goto_1
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    .line 170
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 171
    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 177
    :cond_2
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p2, "GB2312"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 179
    :catch_0
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;ILcom/google/a/c/d;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/c;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/google/a/c/d;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    shl-int/lit8 v0, p2, 0x3

    .line 226
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 227
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    .line 230
    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    const/16 v2, 0x8

    .line 232
    invoke-virtual {p0, v2}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    .line 241
    invoke-static {v0, p5}, Lcom/google/a/c/l;->a([BLjava/util/Map;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {p3}, Lcom/google/a/c/d;->name()Ljava/lang/String;

    move-result-object p0

    .line 246
    :goto_1
    :try_start_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 248
    :catch_0
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 268
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    .line 270
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/a/c/c;->a(I)I

    move-result v1

    .line 271
    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/a/i/a/d;->a(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    rem-int/lit8 v1, v1, 0x2d

    invoke-static {v1}, Lcom/google/a/i/a/d;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_3

    .line 277
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result p2

    const/4 v2, 0x6

    if-ge p2, v2, :cond_2

    .line 278
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    .line 280
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/a/c/c;->a(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/a/i/a/d;->a(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p3, :cond_6

    .line 285
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge v0, p0, :cond_6

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 p2, 0x25

    if-ne p0, p2, :cond_5

    .line 287
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_4

    add-int/lit8 p0, v0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p3

    if-ne p3, p2, :cond_4

    .line 289
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 p0, 0x1d

    .line 292
    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private static b(Lcom/google/a/c/c;Ljava/lang/StringBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    .line 187
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 188
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_0
    mul-int/lit8 v0, p2, 0x2

    .line 193
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-lez p2, :cond_2

    const/16 v2, 0xd

    .line 197
    invoke-virtual {p0, v2}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    .line 198
    div-int/lit16 v3, v2, 0xc0

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit16 v2, v2, 0xc0

    or-int/2addr v2, v3

    const/16 v3, 0x1f00

    if-ge v2, v3, :cond_1

    const v3, 0x8140

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    const v3, 0xc140

    add-int/2addr v2, v3

    :goto_1
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    .line 206
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 207
    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 213
    :cond_2
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p2, "SJIS"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 215
    :catch_0
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0
.end method

.method private static c(Lcom/google/a/c/c;Ljava/lang/StringBuilder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x3

    const/16 v1, 0xa

    if-lt p2, v0, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 306
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    .line 308
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/a/c/c;->a(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_1

    .line 310
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    .line 312
    :cond_1
    div-int/lit8 v2, v0, 0x64

    invoke-static {v2}, Lcom/google/a/i/a/d;->a(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v1

    invoke-static {v2}, Lcom/google/a/i/a/d;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/google/a/i/a/d;->a(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    .line 319
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result p2

    const/4 v0, 0x7

    if-ge p2, v0, :cond_3

    .line 320
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    .line 322
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/a/c/c;->a(I)I

    move-result p0

    const/16 p2, 0x64

    if-lt p0, p2, :cond_4

    .line 324
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    .line 326
    :cond_4
    div-int/lit8 p2, p0, 0xa

    invoke-static {p2}, Lcom/google/a/i/a/d;->a(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    rem-int/2addr p0, v1

    invoke-static {p0}, Lcom/google/a/i/a/d;->a(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    .line 330
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result p2

    const/4 v0, 0x4

    if-ge p2, v0, :cond_6

    .line 331
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    .line 333
    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/a/c/c;->a(I)I

    move-result p0

    if-lt p0, v1, :cond_7

    .line 335
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    .line 337
    :cond_7
    invoke-static {p0}, Lcom/google/a/i/a/d;->a(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    return-void
.end method

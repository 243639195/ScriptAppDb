.class public final Lcom/google/a/h/c/g;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoder.java"


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3

.field private static final h:I = 0x384

.field private static final i:I = 0x385

.field private static final j:I = 0x386

.field private static final k:I = 0x391

.field private static final l:I = 0x39c

.field private static final m:I = 0x39d

.field private static final n:I = 0x39e

.field private static final o:I = 0x39f

.field private static final p:[B

.field private static final q:[B

.field private static final r:[B

.field private static final s:[B

.field private static final t:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x1e

    .line 116
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/a/h/c/g;->p:[B

    .line 123
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/a/h/c/g;->q:[B

    const/16 v0, 0x80

    .line 127
    new-array v1, v0, [B

    sput-object v1, Lcom/google/a/h/c/g;->r:[B

    .line 128
    new-array v0, v0, [B

    sput-object v0, Lcom/google/a/h/c/g;->s:[B

    .line 130
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/a/h/c/g;->t:Ljava/nio/charset/Charset;

    .line 137
    sget-object v0, Lcom/google/a/h/c/g;->r:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 138
    :goto_0
    sget-object v3, Lcom/google/a/h/c/g;->p:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 139
    sget-object v3, Lcom/google/a/h/c/g;->p:[B

    aget-byte v3, v3, v2

    if-lez v3, :cond_0

    .line 141
    sget-object v4, Lcom/google/a/h/c/g;->r:[B

    int-to-byte v5, v2

    aput-byte v5, v4, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_1
    sget-object v2, Lcom/google/a/h/c/g;->s:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 145
    :goto_1
    sget-object v1, Lcom/google/a/h/c/g;->q:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 146
    sget-object v1, Lcom/google/a/h/c/g;->q:[B

    aget-byte v1, v1, v0

    if-lez v1, :cond_2

    .line 148
    sget-object v2, Lcom/google/a/h/c/g;->s:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 476
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1

    .line 479
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 480
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/google/a/h/c/g;->a(C)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ge p1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_0

    .line 484
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static a(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x2

    const/4 v6, 0x0

    move/from16 v9, p4

    const/4 v8, 0x0

    :cond_0
    :goto_0
    add-int v10, p1, v8

    .line 260
    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x1a

    const/16 v13, 0x20

    const/16 v14, 0x1b

    const/16 v15, 0x1c

    const/16 v5, 0x1d

    packed-switch v9, :pswitch_data_0

    .line 336
    invoke-static {v11}, Lcom/google/a/h/c/g;->e(C)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 337
    sget-object v10, Lcom/google/a/h/c/g;->s:[B

    aget-byte v10, v10, v11

    int-to-char v10, v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 310
    :pswitch_0
    invoke-static {v11}, Lcom/google/a/h/c/g;->d(C)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 311
    sget-object v10, Lcom/google/a/h/c/g;->r:[B

    aget-byte v10, v10, v11

    int-to-char v10, v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 313
    :cond_1
    invoke-static {v11}, Lcom/google/a/h/c/g;->b(C)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 315
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 317
    :cond_2
    invoke-static {v11}, Lcom/google/a/h/c/g;->c(C)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 319
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v10, v10, 0x1

    if-ge v10, v1, :cond_4

    .line 323
    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 324
    invoke-static {v10}, Lcom/google/a/h/c/g;->e(C)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v9, 0x3

    const/16 v5, 0x19

    .line 326
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 330
    :cond_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    sget-object v10, Lcom/google/a/h/c/g;->s:[B

    aget-byte v10, v10, v11

    int-to-char v10, v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 286
    :pswitch_1
    invoke-static {v11}, Lcom/google/a/h/c/g;->c(C)Z

    move-result v10

    if-eqz v10, :cond_6

    if-ne v11, v13, :cond_5

    .line 288
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    add-int/lit8 v11, v11, -0x61

    int-to-char v10, v11

    .line 290
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 293
    :cond_6
    invoke-static {v11}, Lcom/google/a/h/c/g;->b(C)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 294
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, -0x41

    int-to-char v10, v11

    .line 295
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 298
    :cond_7
    invoke-static {v11}, Lcom/google/a/h/c/g;->d(C)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 300
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 303
    :cond_8
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    sget-object v10, Lcom/google/a/h/c/g;->s:[B

    aget-byte v10, v10, v11

    int-to-char v10, v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 263
    :pswitch_2
    invoke-static {v11}, Lcom/google/a/h/c/g;->b(C)Z

    move-result v10

    if-eqz v10, :cond_a

    if-ne v11, v13, :cond_9

    .line 265
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    add-int/lit8 v11, v11, -0x41

    int-to-char v10, v11

    .line 267
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 270
    :cond_a
    invoke-static {v11}, Lcom/google/a/h/c/g;->c(C)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 272
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 274
    :cond_b
    invoke-static {v11}, Lcom/google/a/h/c/g;->d(C)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 276
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v9, 0x2

    goto/16 :goto_0

    .line 279
    :cond_c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    sget-object v10, Lcom/google/a/h/c/g;->s:[B

    aget-byte v10, v10, v11

    int-to-char v10, v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v1, :cond_0

    .line 350
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v1, v0, :cond_f

    .line 352
    rem-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_d

    const/4 v8, 0x1

    goto :goto_5

    :cond_d
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_e

    mul-int/lit8 v7, v7, 0x1e

    .line 354
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    add-int/2addr v7, v8

    int-to-char v7, v7

    .line 355
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 357
    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 360
    :cond_f
    rem-int/2addr v0, v4

    if-eqz v0, :cond_10

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v7, v5

    int-to-char v0, v7

    .line 361
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    return v9

    .line 340
    :cond_11
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7
    const/4 v9, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;ILjava/nio/charset/Charset;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    .line 539
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    .line 540
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 543
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0xd

    if-ge v3, v4, :cond_0

    .line 546
    invoke-static {v2}, Lcom/google/a/h/c/g;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    add-int v2, v1, v3

    if-ge v2, v0, :cond_0

    .line 553
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    :cond_0
    if-lt v3, v4, :cond_1

    sub-int/2addr v1, p1

    return v1

    .line 558
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 560
    invoke-virtual {p2, v2}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 561
    new-instance p0, Lcom/google/a/w;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Non-encodable character detected: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " (Unicode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr v1, p1

    return v1
.end method

.method public static a(Ljava/lang/String;Lcom/google/a/h/c/c;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x384

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    .line 170
    sget-object p2, Lcom/google/a/h/c/g;->t:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 171
    :cond_0
    sget-object v4, Lcom/google/a/h/c/g;->t:Ljava/nio/charset/Charset;

    invoke-virtual {v4, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 172
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/a/c/d;->a(Ljava/lang/String;)Lcom/google/a/c/d;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1093
    iget-object v4, v4, Lcom/google/a/c/d;->B:[I

    aget v4, v4, v3

    if-ltz v4, :cond_1

    if-ge v4, v1, :cond_1

    const/16 v5, 0x39f

    .line 1570
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v4, v4

    .line 1571
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const v5, 0xc5f94

    if-ge v4, v5, :cond_2

    const/16 v5, 0x39e

    .line 1573
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1574
    div-int/lit16 v5, v4, 0x384

    sub-int/2addr v5, v2

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1575
    rem-int/2addr v4, v1

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const v6, 0xc6318

    if-ge v4, v6, :cond_3

    const/16 v6, 0x39d

    .line 1577
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v5, v4

    int-to-char v4, v5

    .line 1578
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1580
    :cond_3
    new-instance p0, Lcom/google/a/w;

    const-string p1, "ECI number not in valid range from 0..811799, but was "

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 183
    sget-object v5, Lcom/google/a/h/c/g$1;->a:[I

    invoke-virtual {p1}, Lcom/google/a/h/c/c;->ordinal()I

    move-result p1

    aget p1, v5, p1

    const/16 v5, 0x386

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x0

    goto :goto_2

    .line 192
    :pswitch_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {p0, v3, v4, v0}, Lcom/google/a/h/c/g;->a(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_5

    .line 188
    :pswitch_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 189
    array-length p1, p0

    invoke-static {p0, p1, v2, v0}, Lcom/google/a/h/c/g;->a([BIILjava/lang/StringBuilder;)V

    goto :goto_5

    .line 185
    :pswitch_2
    invoke-static {p0, v3, v4, v0, v3}, Lcom/google/a/h/c/g;->a(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    goto :goto_5

    :goto_2
    if-ge p1, v4, :cond_b

    .line 198
    invoke-static {p0, p1}, Lcom/google/a/h/c/g;->a(Ljava/lang/CharSequence;I)I

    move-result v8

    const/16 v9, 0xd

    if-lt v8, v9, :cond_5

    .line 200
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    .line 203
    invoke-static {p0, p1, v8, v0}, Lcom/google/a/h/c/g;->a(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    add-int/2addr p1, v8

    goto :goto_1

    .line 206
    :cond_5
    invoke-static {p0, p1}, Lcom/google/a/h/c/g;->b(Ljava/lang/CharSequence;I)I

    move-result v9

    const/4 v10, 0x5

    if-ge v9, v10, :cond_9

    if-ne v8, v4, :cond_6

    goto :goto_4

    .line 216
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/google/a/h/c/g;->a(Ljava/lang/String;ILjava/nio/charset/Charset;)I

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, 0x1

    :cond_7
    add-int/2addr v8, p1

    .line 220
    invoke-virtual {p0, p1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 221
    array-length v9, p1

    if-ne v9, v2, :cond_8

    if-nez v6, :cond_8

    .line 223
    invoke-static {p1, v2, v3, v0}, Lcom/google/a/h/c/g;->a([BIILjava/lang/StringBuilder;)V

    goto :goto_3

    .line 226
    :cond_8
    array-length v7, p1

    invoke-static {p1, v7, v6, v0}, Lcom/google/a/h/c/g;->a([BIILjava/lang/StringBuilder;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_3
    move p1, v8

    goto :goto_2

    :cond_9
    :goto_4
    if-eqz v6, :cond_a

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 213
    :cond_a
    invoke-static {p0, p1, v9, v0, v7}, Lcom/google/a/h/c/g;->a(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v7

    add-int/2addr p1, v9

    goto :goto_2

    .line 237
    :cond_b
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(ILjava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    const/16 v0, 0x384

    if-ltz p0, :cond_0

    if-ge p0, v0, :cond_0

    const/16 v0, 0x39f

    .line 570
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char p0, p0

    .line 571
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const v1, 0xc5f94

    if-ge p0, v1, :cond_1

    const/16 v1, 0x39e

    .line 573
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 574
    div-int/lit16 v1, p0, 0x384

    add-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 575
    rem-int/2addr p0, v0

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    const v0, 0xc6318

    if-ge p0, v0, :cond_2

    const/16 v0, 0x39d

    .line 577
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v1, p0

    int-to-char p0, v1

    .line 578
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 580
    :cond_2
    new-instance p1, Lcom/google/a/w;

    const-string v0, "ECI number not in valid range from 0..811799, but was "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 9

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    div-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-wide/16 v1, 0x384

    .line 422
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 423
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_2

    .line 425
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v5, 0x2c

    sub-int v6, p2, v4

    .line 426
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 427
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "1"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v7, p1, v4

    add-int v8, v7, v5

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 428
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 430
    :cond_0
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 432
    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_1

    .line 436
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    add-int/2addr v4, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a([BIILjava/lang/StringBuilder;)V
    .locals 11

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    const/16 p2, 0x391

    .line 383
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 385
    :cond_0
    rem-int/lit8 p2, p1, 0x6

    if-nez p2, :cond_1

    const/16 p2, 0x39c

    .line 386
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p2, 0x385

    .line 388
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p2, 0x0

    const/4 v0, 0x6

    if-lt p1, v0, :cond_5

    const/4 v1, 0x5

    .line 395
    new-array v2, v1, [C

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, p1, 0x0

    sub-int/2addr v4, v3

    if-lt v4, v0, :cond_6

    const-wide/16 v4, 0x0

    move-wide v5, v4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_2

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    add-int v7, v3, v4

    .line 400
    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    add-long v9, v5, v7

    add-int/lit8 v4, v4, 0x1

    move-wide v5, v9

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_3

    const-wide/16 v7, 0x384

    .line 403
    rem-long v9, v5, v7

    long-to-int v9, v9

    int-to-char v9, v9

    aput-char v9, v2, v4

    .line 404
    div-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x4

    :goto_4
    if-ltz v4, :cond_4

    .line 407
    aget-char v5, v2, v4

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x6

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_5
    add-int/lit8 v0, p1, 0x0

    if-ge v3, v0, :cond_7

    .line 414
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 415
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/lang/CharSequence;I)I
    .locals 7

    .line 499
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_7

    .line 502
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    move v4, v1

    const/4 v1, 0x0

    :cond_0
    :goto_1
    const/16 v5, 0xd

    if-ge v1, v5, :cond_1

    .line 504
    invoke-static {v2}, Lcom/google/a/h/c/g;->a(C)Z

    move-result v6

    if-eqz v6, :cond_1

    if-ge v4, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_0

    .line 508
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_1

    :cond_1
    if-lt v1, v5, :cond_2

    sub-int/2addr v4, p1

    sub-int/2addr v4, v1

    return v4

    :cond_2
    if-gtz v1, :cond_6

    .line 518
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    if-eq v1, v5, :cond_3

    const/16 v2, 0x20

    if-lt v1, v2, :cond_4

    const/16 v2, 0x7e

    if-gt v1, v2, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_5

    add-int/lit8 v1, v4, 0x1

    goto :goto_0

    :cond_5
    move v1, v4

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_0

    :cond_7
    :goto_2
    sub-int/2addr v1, p1

    return v1
.end method

.method private static b(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static c(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static d(C)Z
    .locals 1

    .line 456
    sget-object v0, Lcom/google/a/h/c/g;->r:[B

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static e(C)Z
    .locals 1

    .line 460
    sget-object v0, Lcom/google/a/h/c/g;->s:[B

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static f(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

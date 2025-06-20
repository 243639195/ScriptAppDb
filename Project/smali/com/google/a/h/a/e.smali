.class final Lcom/google/a/h/a/e;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/h/a/e$a;
    }
.end annotation


# static fields
.field private static final A:[C

.field private static final B:[C

.field private static final C:[Ljava/math/BigInteger;

.field private static final D:I = 0x2

.field private static final a:I = 0x384

.field private static final b:I = 0x385

.field private static final c:I = 0x386

.field private static final d:I = 0x39c

.field private static final e:I = 0x39d

.field private static final f:I = 0x39e

.field private static final g:I = 0x39f

.field private static final h:I = 0x3a0

.field private static final i:I = 0x39b

.field private static final j:I = 0x39a

.field private static final k:I = 0x391

.field private static final l:I = 0xf

.field private static final m:I = 0x0

.field private static final n:I = 0x1

.field private static final o:I = 0x2

.field private static final p:I = 0x3

.field private static final q:I = 0x4

.field private static final r:I = 0x5

.field private static final s:I = 0x6

.field private static final t:I = 0x19

.field private static final u:I = 0x1b

.field private static final v:I = 0x1b

.field private static final w:I = 0x1c

.field private static final x:I = 0x1c

.field private static final y:I = 0x1d

.field private static final z:I = 0x1d


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/a/h/a/e;->A:[C

    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/a/h/a/e;->B:[C

    const/16 v0, 0x10

    .line 89
    new-array v0, v0, [Ljava/math/BigInteger;

    .line 90
    sput-object v0, Lcom/google/a/h/a/e;->C:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v0, 0x384

    .line 91
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/google/a/h/a/e;->C:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v1, 0x2

    .line 93
    :goto_0
    sget-object v2, Lcom/google/a/h/a/e;->C:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 94
    sget-object v2, Lcom/google/a/h/a/e;->C:[Ljava/math/BigInteger;

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .locals 20

    move/from16 v0, p0

    .line 524
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x385

    const/16 v5, 0x3a0

    const-wide/16 v6, 0x384

    const/16 v8, 0x384

    const/4 v9, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v0, v4, :cond_5

    const/16 v4, 0x39c

    if-eq v0, v4, :cond_0

    move/from16 v2, p3

    goto/16 :goto_7

    :cond_0
    move/from16 v2, p3

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-wide/16 v14, 0x0

    .line 584
    :goto_0
    aget v10, p1, v12

    if-ge v2, v10, :cond_c

    if-nez v0, :cond_c

    add-int/lit8 v10, v2, 0x1

    .line 585
    aget v2, p1, v2

    if-ge v2, v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    mul-long v14, v14, v6

    int-to-long v6, v2

    add-long v18, v14, v6

    move v2, v10

    move-wide/from16 v14, v18

    goto :goto_1

    :cond_1
    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    move v2, v10

    goto :goto_1

    :cond_2
    :pswitch_0
    add-int/lit8 v10, v10, -0x1

    move v2, v10

    const/4 v0, 0x1

    .line 604
    :goto_1
    rem-int/lit8 v6, v4, 0x5

    if-nez v6, :cond_4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v9, :cond_3

    rsub-int/lit8 v6, v4, 0x5

    mul-int/lit8 v6, v6, 0x8

    shr-long v6, v14, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 608
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    const-wide/16 v14, 0x0

    :cond_4
    const-wide/16 v6, 0x384

    goto :goto_0

    .line 534
    :cond_5
    new-array v0, v9, [I

    add-int/lit8 v4, p3, 0x1

    .line 535
    aget v2, p1, p3

    move v7, v2

    const/4 v2, 0x0

    :goto_3
    const/4 v6, 0x0

    const-wide/16 v10, 0x0

    .line 536
    :goto_4
    aget v14, p1, v12

    if-ge v4, v14, :cond_9

    if-nez v2, :cond_9

    add-int/lit8 v14, v6, 0x1

    .line 537
    aput v7, v0, v6

    const-wide/16 v16, 0x384

    mul-long v10, v10, v16

    int-to-long v6, v7

    add-long v18, v10, v6

    add-int/lit8 v6, v4, 0x1

    .line 540
    aget v7, p1, v4

    if-eq v7, v5, :cond_8

    packed-switch v7, :pswitch_data_2

    packed-switch v7, :pswitch_data_3

    .line 554
    rem-int/lit8 v4, v14, 0x5

    if-nez v4, :cond_7

    if-lez v14, :cond_7

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v9, :cond_6

    rsub-int/lit8 v10, v4, 0x5

    mul-int/lit8 v10, v10, 0x8

    shr-long v10, v18, v10

    long-to-int v10, v10

    int-to-byte v10, v10

    .line 558
    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    move v4, v6

    goto :goto_3

    :cond_7
    move v4, v6

    move v6, v14

    move-wide/from16 v10, v18

    goto :goto_4

    :cond_8
    :pswitch_1
    add-int/lit8 v4, v6, -0x1

    move v6, v14

    move-wide/from16 v10, v18

    const/4 v2, 0x1

    goto :goto_4

    .line 568
    :cond_9
    aget v1, p1, v12

    if-ne v4, v1, :cond_a

    if-ge v7, v8, :cond_a

    add-int/lit8 v1, v6, 0x1

    .line 569
    aput v7, v0, v6

    goto :goto_6

    :cond_a
    move v1, v6

    :goto_6
    if-ge v12, v1, :cond_b

    .line 576
    aget v2, v0, v12

    int-to-byte v2, v2

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_b
    move v2, v4

    .line 616
    :cond_c
    :goto_7
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x384
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static a([IILcom/google/a/h/c;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    .line 169
    aget v2, p0, v1

    if-le v0, v2, :cond_0

    .line 171
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_0
    const/4 v0, 0x2

    .line 173
    new-array v2, v0, [I

    move v3, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 175
    aget v4, p0, v3

    aput v4, v2, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_1
    invoke-static {v2, v0}, Lcom/google/a/h/a/e;->a([II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2046
    iput p1, p2, Lcom/google/a/h/c;->a:I

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    invoke-static {p0, v3, p1}, Lcom/google/a/h/a/e;->a([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 182
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2059
    iput-object p1, p2, Lcom/google/a/h/c;->b:Ljava/lang/String;

    .line 185
    aget p1, p0, v0

    const/16 v2, 0x39b

    const/4 v3, -0x1

    if-ne p1, v2, :cond_2

    add-int/lit8 p1, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    .line 189
    :goto_1
    aget v2, p0, v1

    if-ge v0, v2, :cond_3

    .line 190
    aget v2, p0, v0

    packed-switch v2, :pswitch_data_0

    .line 238
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 193
    aget v2, p0, v0

    packed-switch v2, :pswitch_data_1

    .line 230
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    .line 220
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 221
    invoke-static {p0, v0, v2}, Lcom/google/a/h/a/e;->b([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5155
    iput v2, p2, Lcom/google/a/h/c;->j:I

    goto :goto_1

    .line 225
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 226
    invoke-static {p0, v0, v2}, Lcom/google/a/h/a/e;->b([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 227
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 6142
    iput-wide v4, p2, Lcom/google/a/h/c;->h:J

    goto :goto_1

    .line 205
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 206
    invoke-static {p0, v0, v2}, Lcom/google/a/h/a/e;->a([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3116
    iput-object v2, p2, Lcom/google/a/h/c;->f:Ljava/lang/String;

    goto :goto_1

    .line 200
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 201
    invoke-static {p0, v0, v2}, Lcom/google/a/h/a/e;->a([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3108
    iput-object v2, p2, Lcom/google/a/h/c;->e:Ljava/lang/String;

    goto :goto_1

    .line 215
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 216
    invoke-static {p0, v0, v2}, Lcom/google/a/h/a/e;->b([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 4168
    iput-wide v4, p2, Lcom/google/a/h/c;->i:J

    goto :goto_1

    .line 210
    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 211
    invoke-static {p0, v0, v2}, Lcom/google/a/h/a/e;->b([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4100
    iput v2, p2, Lcom/google/a/h/c;->d:I

    goto/16 :goto_1

    .line 195
    :pswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 196
    invoke-static {p0, v0, v2}, Lcom/google/a/h/a/e;->a([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2129
    iput-object v2, p2, Lcom/google/a/h/c;->g:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_8
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    .line 7089
    iput-boolean v2, p2, Lcom/google/a/h/c;->c:Z

    goto/16 :goto_1

    :cond_3
    if-eq p1, v3, :cond_5

    sub-int v1, v0, p1

    .line 8085
    iget-boolean v2, p2, Lcom/google/a/h/c;->c:Z

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, -0x1

    :cond_4
    add-int/2addr v1, p1

    .line 249
    invoke-static {p0, p1, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    .line 9077
    iput-object p0, p2, Lcom/google/a/h/c;->k:[I

    :cond_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static a([IILjava/lang/StringBuilder;)I
    .locals 17

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 267
    aget v4, p0, v3

    sub-int v4, v4, p1

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    new-array v4, v4, [I

    .line 269
    aget v6, p0, v3

    sub-int v6, v6, p1

    shl-int/2addr v6, v5

    new-array v6, v6, [I

    move/from16 v1, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 273
    :goto_0
    aget v9, p0, v3

    const/16 v10, 0x391

    const/16 v11, 0x384

    if-ge v1, v9, :cond_3

    if-nez v7, :cond_3

    add-int/lit8 v9, v1, 0x1

    .line 274
    aget v1, p0, v1

    if-ge v1, v11, :cond_0

    .line 276
    div-int/lit8 v10, v1, 0x1e

    aput v10, v4, v8

    add-int/lit8 v10, v8, 0x1

    .line 277
    rem-int/lit8 v1, v1, 0x1e

    aput v1, v4, v10

    add-int/lit8 v8, v8, 0x2

    :goto_1
    move v1, v9

    goto :goto_0

    :cond_0
    if-eq v1, v10, :cond_2

    const/16 v10, 0x3a0

    if-eq v1, v10, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    add-int/lit8 v1, v8, 0x1

    .line 283
    aput v11, v4, v8

    move v8, v1

    goto :goto_1

    :cond_1
    :pswitch_1
    add-int/lit8 v1, v9, -0x1

    const/4 v7, 0x1

    goto :goto_0

    .line 301
    :cond_2
    aput v10, v4, v8

    add-int/lit8 v1, v9, 0x1

    .line 302
    aget v9, p0, v9

    .line 303
    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 9337
    :cond_3
    sget v0, Lcom/google/a/h/a/e$a;->a:I

    .line 9338
    sget v5, Lcom/google/a/h/a/e$a;->a:I

    move v7, v5

    move v5, v0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_19

    .line 9341
    aget v9, v4, v0

    .line 9343
    sget-object v12, Lcom/google/a/h/a/e$1;->a:[I

    add-int/lit8 v13, v5, -0x1

    aget v12, v12, v13

    const/16 v13, 0x20

    const/16 v14, 0x1a

    const/16 v15, 0x1d

    packed-switch v12, :pswitch_data_2

    goto/16 :goto_7

    :pswitch_2
    if-ge v9, v15, :cond_4

    .line 9481
    sget-object v5, Lcom/google/a/h/a/e;->A:[C

    aget-char v5, v5, v9

    goto :goto_4

    :cond_4
    if-eq v9, v15, :cond_7

    if-eq v9, v11, :cond_6

    if-eq v9, v10, :cond_5

    goto :goto_3

    .line 9490
    :cond_5
    aget v5, v6, v0

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    move v5, v7

    goto/16 :goto_7

    .line 9493
    :cond_6
    sget v5, Lcom/google/a/h/a/e$a;->a:I

    goto/16 :goto_7

    .line 9485
    :cond_7
    sget v5, Lcom/google/a/h/a/e$a;->a:I

    goto/16 :goto_7

    :pswitch_3
    if-ge v9, v14, :cond_9

    add-int/lit8 v9, v9, 0x41

    int-to-char v5, v9

    :goto_4
    move v13, v5

    :cond_8
    move v5, v7

    goto/16 :goto_8

    :cond_9
    if-eq v9, v14, :cond_8

    if-eq v9, v11, :cond_a

    goto :goto_3

    .line 9471
    :cond_a
    sget v5, Lcom/google/a/h/a/e$a;->a:I

    goto/16 :goto_7

    :pswitch_4
    if-ge v9, v15, :cond_b

    .line 9444
    sget-object v12, Lcom/google/a/h/a/e;->A:[C

    aget-char v9, v12, v9

    goto/16 :goto_5

    :cond_b
    if-eq v9, v15, :cond_e

    if-eq v9, v11, :cond_d

    if-eq v9, v10, :cond_c

    goto/16 :goto_7

    .line 9451
    :cond_c
    aget v9, v6, v0

    int-to-char v9, v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 9454
    :cond_d
    sget v5, Lcom/google/a/h/a/e$a;->a:I

    goto/16 :goto_7

    .line 9448
    :cond_e
    sget v5, Lcom/google/a/h/a/e$a;->a:I

    goto/16 :goto_7

    :pswitch_5
    const/16 v12, 0x19

    if-ge v9, v12, :cond_f

    .line 9411
    sget-object v12, Lcom/google/a/h/a/e;->B:[C

    aget-char v9, v12, v9

    goto :goto_5

    :cond_f
    if-eq v9, v11, :cond_11

    if-eq v9, v10, :cond_10

    packed-switch v9, :pswitch_data_3

    goto/16 :goto_7

    .line 9429
    :pswitch_6
    sget v7, Lcom/google/a/h/a/e$a;->f:I

    goto :goto_6

    .line 9424
    :pswitch_7
    sget v5, Lcom/google/a/h/a/e$a;->a:I

    goto/16 :goto_7

    .line 9421
    :pswitch_8
    sget v5, Lcom/google/a/h/a/e$a;->b:I

    goto/16 :goto_7

    .line 9415
    :pswitch_9
    sget v5, Lcom/google/a/h/a/e$a;->d:I

    goto :goto_7

    .line 9432
    :cond_10
    aget v9, v6, v0

    int-to-char v9, v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 9435
    :cond_11
    sget v5, Lcom/google/a/h/a/e$a;->a:I

    goto :goto_7

    :pswitch_a
    if-ge v9, v14, :cond_12

    add-int/lit8 v9, v9, 0x61

    int-to-char v9, v9

    goto :goto_5

    :cond_12
    if-eq v9, v11, :cond_14

    if-eq v9, v10, :cond_13

    packed-switch v9, :pswitch_data_4

    goto :goto_7

    .line 9395
    :pswitch_b
    sget v7, Lcom/google/a/h/a/e$a;->f:I

    goto :goto_6

    .line 9390
    :pswitch_c
    sget v5, Lcom/google/a/h/a/e$a;->c:I

    goto :goto_7

    .line 9387
    :pswitch_d
    sget v7, Lcom/google/a/h/a/e$a;->e:I

    goto :goto_6

    .line 9399
    :cond_13
    aget v9, v6, v0

    int-to-char v9, v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 9402
    :cond_14
    sget v5, Lcom/google/a/h/a/e$a;->a:I

    goto :goto_7

    :pswitch_e
    if-ge v9, v14, :cond_15

    add-int/lit8 v9, v9, 0x41

    int-to-char v9, v9

    :goto_5
    move v13, v9

    goto :goto_8

    :cond_15
    if-eq v9, v11, :cond_17

    if-eq v9, v10, :cond_16

    packed-switch v9, :pswitch_data_5

    goto :goto_7

    .line 9363
    :pswitch_f
    sget v7, Lcom/google/a/h/a/e$a;->f:I

    :goto_6
    const/4 v13, 0x0

    move/from16 v16, v7

    move v7, v5

    move/from16 v5, v16

    goto :goto_8

    .line 9358
    :pswitch_10
    sget v5, Lcom/google/a/h/a/e$a;->c:I

    goto :goto_7

    .line 9355
    :pswitch_11
    sget v5, Lcom/google/a/h/a/e$a;->b:I

    goto :goto_7

    .line 9366
    :cond_16
    aget v9, v6, v0

    int-to-char v9, v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 9369
    :cond_17
    sget v5, Lcom/google/a/h/a/e$a;->a:I

    :goto_7
    const/4 v13, 0x0

    :goto_8
    :pswitch_12
    if-eqz v13, :cond_18

    .line 9501
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_19
    return v1

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_e
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x19
        :pswitch_9
        :pswitch_12
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1a
        :pswitch_12
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1a
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method static a([ILjava/lang/String;)Lcom/google/a/c/e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 108
    aget v2, p0, v2

    .line 109
    new-instance v3, Lcom/google/a/h/c;

    invoke-direct {v3}, Lcom/google/a/h/c;-><init>()V

    const/4 v4, 0x2

    :goto_0
    const/4 v5, 0x0

    .line 110
    aget v5, p0, v5

    if-ge v4, v5, :cond_2

    const/16 v5, 0x391

    if-eq v2, v5, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    add-int/lit8 v4, v4, -0x1

    .line 150
    invoke-static {p0, v4, v0}, Lcom/google/a/h/a/e;->a([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_1

    .line 139
    :pswitch_0
    invoke-static {p0, v4, v3}, Lcom/google/a/h/a/e;->a([IILcom/google/a/h/c;)I

    move-result v2

    goto :goto_1

    :pswitch_1
    add-int/lit8 v2, v4, 0x1

    .line 126
    aget v1, p0, v4

    .line 127
    invoke-static {v1}, Lcom/google/a/c/d;->a(I)Lcom/google/a/c/d;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/google/a/c/d;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    add-int/lit8 v2, v4, 0x2

    goto :goto_1

    :pswitch_3
    add-int/lit8 v2, v4, 0x1

    goto :goto_1

    .line 144
    :pswitch_4
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    .line 123
    :pswitch_5
    invoke-static {p0, v4, v0}, Lcom/google/a/h/a/e;->b([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_1

    .line 117
    :pswitch_6
    invoke-static {v2, p0, v1, v4, v0}, Lcom/google/a/h/a/e;->a(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_1

    .line 113
    :pswitch_7
    invoke-static {p0, v4, v0}, Lcom/google/a/h/a/e;->a([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v4, 0x1

    .line 120
    aget v4, p0, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 154
    aget v2, p0, v2

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    .line 159
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_3

    .line 160
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    .line 162
    :cond_3
    new-instance p0, Lcom/google/a/c/e;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/a/c/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1137
    iput-object v3, p0, Lcom/google/a/c/e;->h:Ljava/lang/Object;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a([II)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    .line 711
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v0, p1, :cond_0

    .line 713
    sget-object v4, Lcom/google/a/h/a/e;->C:[Ljava/math/BigInteger;

    sub-int v5, p1, v0

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 715
    :cond_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    .line 716
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-eq p1, v0, :cond_1

    .line 717
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0

    .line 719
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([I[IILjava/lang/StringBuilder;)V
    .locals 12

    .line 337
    sget v0, Lcom/google/a/h/a/e$a;->a:I

    .line 338
    sget v1, Lcom/google/a/h/a/e$a;->a:I

    const/4 v2, 0x0

    move v3, v1

    move v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_15

    .line 341
    aget v4, p0, v0

    .line 343
    sget-object v5, Lcom/google/a/h/a/e$1;->a:[I

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    const/16 v6, 0x20

    const/16 v7, 0x1a

    const/16 v8, 0x1d

    const/16 v9, 0x391

    const/16 v10, 0x384

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    if-ge v4, v8, :cond_0

    .line 481
    sget-object v1, Lcom/google/a/h/a/e;->A:[C

    aget-char v1, v1, v4

    goto :goto_2

    :cond_0
    if-eq v4, v8, :cond_3

    if-eq v4, v10, :cond_2

    if-eq v4, v9, :cond_1

    goto :goto_1

    .line 490
    :cond_1
    aget v1, p1, v0

    int-to-char v1, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v1, v3

    goto/16 :goto_5

    .line 493
    :cond_2
    sget v1, Lcom/google/a/h/a/e$a;->a:I

    goto/16 :goto_5

    .line 485
    :cond_3
    sget v1, Lcom/google/a/h/a/e$a;->a:I

    goto/16 :goto_5

    :pswitch_1
    if-ge v4, v7, :cond_4

    add-int/lit8 v4, v4, 0x41

    int-to-char v1, v4

    :goto_2
    move v4, v1

    move v1, v3

    goto/16 :goto_6

    :cond_4
    if-eq v4, v7, :cond_6

    if-eq v4, v10, :cond_5

    goto :goto_1

    .line 471
    :cond_5
    sget v1, Lcom/google/a/h/a/e$a;->a:I

    goto/16 :goto_5

    :cond_6
    move v1, v3

    goto/16 :goto_4

    :pswitch_2
    if-ge v4, v8, :cond_7

    .line 444
    sget-object v5, Lcom/google/a/h/a/e;->A:[C

    aget-char v4, v5, v4

    goto/16 :goto_6

    :cond_7
    if-eq v4, v8, :cond_a

    if-eq v4, v10, :cond_9

    if-eq v4, v9, :cond_8

    goto/16 :goto_5

    .line 451
    :cond_8
    aget v4, p1, v0

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 454
    :cond_9
    sget v1, Lcom/google/a/h/a/e$a;->a:I

    goto/16 :goto_5

    .line 448
    :cond_a
    sget v1, Lcom/google/a/h/a/e$a;->a:I

    goto/16 :goto_5

    :pswitch_3
    const/16 v5, 0x19

    if-ge v4, v5, :cond_b

    .line 411
    sget-object v5, Lcom/google/a/h/a/e;->B:[C

    aget-char v4, v5, v4

    goto/16 :goto_6

    :cond_b
    if-eq v4, v10, :cond_d

    if-eq v4, v9, :cond_c

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_5

    .line 429
    :pswitch_4
    sget v3, Lcom/google/a/h/a/e$a;->f:I

    goto :goto_3

    .line 424
    :pswitch_5
    sget v1, Lcom/google/a/h/a/e$a;->a:I

    goto/16 :goto_5

    .line 421
    :pswitch_6
    sget v1, Lcom/google/a/h/a/e$a;->b:I

    goto/16 :goto_5

    .line 415
    :pswitch_7
    sget v1, Lcom/google/a/h/a/e$a;->d:I

    goto/16 :goto_5

    .line 432
    :cond_c
    aget v4, p1, v0

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 435
    :cond_d
    sget v1, Lcom/google/a/h/a/e$a;->a:I

    goto :goto_5

    :pswitch_8
    if-ge v4, v7, :cond_e

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    goto :goto_6

    :cond_e
    if-eq v4, v10, :cond_10

    if-eq v4, v9, :cond_f

    packed-switch v4, :pswitch_data_2

    goto :goto_5

    .line 395
    :pswitch_9
    sget v3, Lcom/google/a/h/a/e$a;->f:I

    goto :goto_3

    .line 390
    :pswitch_a
    sget v1, Lcom/google/a/h/a/e$a;->c:I

    goto :goto_5

    .line 387
    :pswitch_b
    sget v3, Lcom/google/a/h/a/e$a;->e:I

    goto :goto_3

    .line 399
    :cond_f
    aget v4, p1, v0

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 402
    :cond_10
    sget v1, Lcom/google/a/h/a/e$a;->a:I

    goto :goto_5

    :pswitch_c
    if-ge v4, v7, :cond_11

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    goto :goto_6

    :cond_11
    if-eq v4, v10, :cond_13

    if-eq v4, v9, :cond_12

    packed-switch v4, :pswitch_data_3

    goto :goto_5

    .line 363
    :pswitch_d
    sget v3, Lcom/google/a/h/a/e$a;->f:I

    :goto_3
    const/4 v4, 0x0

    move v11, v3

    move v3, v1

    move v1, v11

    goto :goto_6

    .line 358
    :pswitch_e
    sget v1, Lcom/google/a/h/a/e$a;->c:I

    goto :goto_5

    .line 355
    :pswitch_f
    sget v1, Lcom/google/a/h/a/e$a;->b:I

    goto :goto_5

    :goto_4
    :pswitch_10
    const/16 v4, 0x20

    goto :goto_6

    .line 366
    :cond_12
    aget v4, p1, v0

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 369
    :cond_13
    sget v1, Lcom/google/a/h/a/e$a;->a:I

    :goto_5
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_14

    .line 501
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_15
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_7
        :pswitch_10
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1a
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method private static b([IILjava/lang/StringBuilder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    const/16 v0, 0xf

    .line 632
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 634
    :goto_0
    aget v4, p0, v1

    if-ge p1, v4, :cond_5

    if-nez v2, :cond_5

    add-int/lit8 v4, p1, 0x1

    .line 635
    aget p1, p0, p1

    .line 636
    aget v5, p0, v1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/16 v5, 0x384

    if-ge p1, v5, :cond_1

    .line 640
    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/16 v5, 0x3a0

    if-eq p1, v5, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :cond_2
    :pswitch_0
    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x1

    .line 655
    :goto_1
    rem-int/lit8 v5, v3, 0xf

    if-eqz v5, :cond_3

    const/16 v5, 0x386

    if-eq p1, v5, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    if-lez v3, :cond_4

    .line 660
    invoke-static {v0, v3}, Lcom/google/a/h/a/e;->a([II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :cond_4
    move p1, v4

    goto :goto_0

    :cond_5
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lcom/google/a/i/c/c;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field static final a:Ljava/lang/String; = "ISO-8859-1"

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    .line 41
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/a/i/c/c;->b:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 1

    .line 200
    sget-object v0, Lcom/google/a/i/c/c;->b:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 201
    sget-object v0, Lcom/google/a/i/c/c;->b:[I

    aget p0, v0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lcom/google/a/c/a;Lcom/google/a/i/a/f;Lcom/google/a/i/a/j;Lcom/google/a/i/c/b;)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    move-object/from16 v0, p3

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, -0x1

    const/4 v2, 0x0

    const v4, 0x7fffffff

    :goto_0
    const/16 v5, 0x8

    if-ge v2, v5, :cond_d

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 269
    invoke-static {v5, v6, v7, v2, v0}, Lcom/google/a/i/c/e;->a(Lcom/google/a/c/a;Lcom/google/a/i/a/f;Lcom/google/a/i/a/j;ILcom/google/a/i/c/b;)V

    const/4 v8, 0x1

    .line 20041
    invoke-static {v0, v8}, Lcom/google/a/i/c/d;->a(Lcom/google/a/i/c/b;Z)I

    move-result v9

    invoke-static {v0, v1}, Lcom/google/a/i/c/d;->a(Lcom/google/a/i/c/b;Z)I

    move-result v10

    add-int/2addr v9, v10

    .line 21055
    iget-object v10, v0, Lcom/google/a/i/c/b;->a:[[B

    .line 22044
    iget v11, v0, Lcom/google/a/i/c/b;->b:I

    .line 23040
    iget v12, v0, Lcom/google/a/i/c/b;->c:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    add-int/lit8 v15, v12, -0x1

    if-ge v13, v15, :cond_2

    .line 20055
    aget-object v15, v10, v13

    move/from16 v16, v14

    const/4 v14, 0x0

    :goto_2
    add-int/lit8 v1, v11, -0x1

    if-ge v14, v1, :cond_1

    .line 20057
    aget-byte v1, v15, v14

    add-int/lit8 v17, v14, 0x1

    .line 20058
    aget-byte v8, v15, v17

    if-ne v1, v8, :cond_0

    add-int/lit8 v8, v13, 0x1

    aget-object v18, v10, v8

    aget-byte v14, v18, v14

    if-ne v1, v14, :cond_0

    aget-object v8, v10, v8

    aget-byte v8, v8, v17

    if-ne v1, v8, :cond_0

    add-int/lit8 v16, v16, 0x1

    :cond_0
    move/from16 v14, v17

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v13, v13, 0x1

    move/from16 v14, v16

    const/4 v1, 0x0

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v14, v14, 0x3

    add-int/2addr v9, v14

    .line 24055
    iget-object v1, v0, Lcom/google/a/i/c/b;->a:[[B

    .line 25044
    iget v8, v0, Lcom/google/a/i/c/b;->b:I

    .line 26040
    iget v10, v0, Lcom/google/a/i/c/b;->c:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v11, v10, :cond_8

    move v13, v12

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v8, :cond_7

    .line 23078
    aget-object v14, v1, v11

    add-int/lit8 v15, v12, 0x6

    if-ge v15, v8, :cond_4

    .line 23079
    aget-byte v5, v14, v12

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    add-int/lit8 v5, v12, 0x1

    aget-byte v5, v14, v5

    if-nez v5, :cond_4

    add-int/lit8 v5, v12, 0x2

    aget-byte v5, v14, v5

    if-ne v5, v6, :cond_4

    add-int/lit8 v5, v12, 0x3

    aget-byte v5, v14, v5

    if-ne v5, v6, :cond_4

    add-int/lit8 v5, v12, 0x4

    aget-byte v5, v14, v5

    if-ne v5, v6, :cond_4

    add-int/lit8 v5, v12, 0x5

    aget-byte v5, v14, v5

    if-nez v5, :cond_4

    aget-byte v5, v14, v15

    if-ne v5, v6, :cond_4

    add-int/lit8 v5, v12, -0x4

    .line 23087
    invoke-static {v14, v5, v12}, Lcom/google/a/i/c/d;->a([BII)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v5, v12, 0x7

    add-int/lit8 v6, v12, 0xb

    invoke-static {v14, v5, v6}, Lcom/google/a/i/c/d;->a([BII)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    add-int/lit8 v13, v13, 0x1

    :cond_4
    add-int/lit8 v5, v11, 0x6

    if-ge v5, v10, :cond_6

    .line 23090
    aget-object v6, v1, v11

    aget-byte v6, v6, v12

    const/4 v14, 0x1

    if-ne v6, v14, :cond_6

    add-int/lit8 v6, v11, 0x1

    aget-object v6, v1, v6

    aget-byte v6, v6, v12

    if-nez v6, :cond_6

    add-int/lit8 v6, v11, 0x2

    aget-object v6, v1, v6

    aget-byte v6, v6, v12

    if-ne v6, v14, :cond_6

    add-int/lit8 v6, v11, 0x3

    aget-object v6, v1, v6

    aget-byte v6, v6, v12

    if-ne v6, v14, :cond_6

    add-int/lit8 v6, v11, 0x4

    aget-object v6, v1, v6

    aget-byte v6, v6, v12

    if-ne v6, v14, :cond_6

    add-int/lit8 v6, v11, 0x5

    aget-object v6, v1, v6

    aget-byte v6, v6, v12

    if-nez v6, :cond_6

    aget-object v5, v1, v5

    aget-byte v5, v5, v12

    if-ne v5, v14, :cond_6

    add-int/lit8 v5, v11, -0x4

    .line 23098
    invoke-static {v1, v12, v5, v11}, Lcom/google/a/i/c/d;->a([[BIII)Z

    move-result v5

    if-nez v5, :cond_5

    add-int/lit8 v5, v11, 0x7

    add-int/lit8 v6, v11, 0xb

    invoke-static {v1, v12, v5, v6}, Lcom/google/a/i/c/d;->a([[BIII)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    add-int/lit8 v13, v13, 0x1

    :cond_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    goto/16 :goto_4

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move v12, v13

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    goto/16 :goto_3

    :cond_8
    mul-int/lit8 v12, v12, 0x28

    add-int/2addr v9, v12

    .line 27055
    iget-object v1, v0, Lcom/google/a/i/c/b;->a:[[B

    .line 28044
    iget v5, v0, Lcom/google/a/i/c/b;->b:I

    .line 29040
    iget v6, v0, Lcom/google/a/i/c/b;->c:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_5
    if-ge v8, v6, :cond_b

    .line 26138
    aget-object v11, v1, v8

    move v12, v10

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v5, :cond_a

    .line 26140
    aget-byte v13, v11, v10

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    add-int/lit8 v12, v12, 0x1

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_a
    const/4 v14, 0x1

    add-int/lit8 v8, v8, 0x1

    move v10, v12

    goto :goto_5

    .line 30040
    :cond_b
    iget v1, v0, Lcom/google/a/i/c/b;->c:I

    .line 30044
    iget v5, v0, Lcom/google/a/i/c/b;->b:I

    mul-int v1, v1, v5

    shl-int/lit8 v5, v10, 0x1

    sub-int/2addr v5, v1

    .line 26146
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    div-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v9, v5

    if-ge v9, v4, :cond_c

    move v3, v2

    move v4, v9

    :cond_c
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_d
    return v3
.end method

.method private static a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;Lcom/google/a/c/a;Lcom/google/a/i/a/j;)I
    .locals 0

    .line 18048
    iget p1, p1, Lcom/google/a/c/a;->b:I

    .line 192
    invoke-virtual {p0, p3}, Lcom/google/a/i/a/h;->a(Lcom/google/a/i/a/j;)I

    move-result p0

    add-int/2addr p1, p0

    .line 19048
    iget p0, p2, Lcom/google/a/c/a;->b:I

    add-int/2addr p1, p0

    return p1
.end method

.method private static a(Lcom/google/a/i/c/b;)I
    .locals 14

    const/4 v0, 0x1

    .line 1041
    invoke-static {p0, v0}, Lcom/google/a/i/c/d;->a(Lcom/google/a/i/c/b;Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/google/a/i/c/d;->a(Lcom/google/a/i/c/b;Z)I

    move-result v3

    add-int/2addr v1, v3

    .line 2055
    iget-object v3, p0, Lcom/google/a/i/c/b;->a:[[B

    .line 3044
    iget v4, p0, Lcom/google/a/i/c/b;->b:I

    .line 4040
    iget v5, p0, Lcom/google/a/i/c/b;->c:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    add-int/lit8 v8, v5, -0x1

    if-ge v6, v8, :cond_2

    .line 1055
    aget-object v8, v3, v6

    move v9, v7

    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v10, v4, -0x1

    if-ge v7, v10, :cond_1

    .line 1057
    aget-byte v10, v8, v7

    add-int/lit8 v11, v7, 0x1

    .line 1058
    aget-byte v12, v8, v11

    if-ne v10, v12, :cond_0

    add-int/lit8 v12, v6, 0x1

    aget-object v13, v3, v12

    aget-byte v7, v13, v7

    if-ne v10, v7, :cond_0

    aget-object v7, v3, v12

    aget-byte v7, v7, v11

    if-ne v10, v7, :cond_0

    add-int/lit8 v9, v9, 0x1

    :cond_0
    move v7, v11

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_0

    :cond_2
    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v1, v7

    .line 5055
    iget-object v3, p0, Lcom/google/a/i/c/b;->a:[[B

    .line 6044
    iget v4, p0, Lcom/google/a/i/c/b;->b:I

    .line 7040
    iget v5, p0, Lcom/google/a/i/c/b;->c:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v5, :cond_8

    move v8, v7

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v4, :cond_7

    .line 4078
    aget-object v9, v3, v6

    add-int/lit8 v10, v7, 0x6

    if-ge v10, v4, :cond_4

    .line 4079
    aget-byte v11, v9, v7

    if-ne v11, v0, :cond_4

    add-int/lit8 v11, v7, 0x1

    aget-byte v11, v9, v11

    if-nez v11, :cond_4

    add-int/lit8 v11, v7, 0x2

    aget-byte v11, v9, v11

    if-ne v11, v0, :cond_4

    add-int/lit8 v11, v7, 0x3

    aget-byte v11, v9, v11

    if-ne v11, v0, :cond_4

    add-int/lit8 v11, v7, 0x4

    aget-byte v11, v9, v11

    if-ne v11, v0, :cond_4

    add-int/lit8 v11, v7, 0x5

    aget-byte v11, v9, v11

    if-nez v11, :cond_4

    aget-byte v10, v9, v10

    if-ne v10, v0, :cond_4

    add-int/lit8 v10, v7, -0x4

    .line 4087
    invoke-static {v9, v10, v7}, Lcom/google/a/i/c/d;->a([BII)Z

    move-result v10

    if-nez v10, :cond_3

    add-int/lit8 v10, v7, 0x7

    add-int/lit8 v11, v7, 0xb

    invoke-static {v9, v10, v11}, Lcom/google/a/i/c/d;->a([BII)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    :cond_4
    add-int/lit8 v9, v6, 0x6

    if-ge v9, v5, :cond_6

    .line 4090
    aget-object v10, v3, v6

    aget-byte v10, v10, v7

    if-ne v10, v0, :cond_6

    add-int/lit8 v10, v6, 0x1

    aget-object v10, v3, v10

    aget-byte v10, v10, v7

    if-nez v10, :cond_6

    add-int/lit8 v10, v6, 0x2

    aget-object v10, v3, v10

    aget-byte v10, v10, v7

    if-ne v10, v0, :cond_6

    add-int/lit8 v10, v6, 0x3

    aget-object v10, v3, v10

    aget-byte v10, v10, v7

    if-ne v10, v0, :cond_6

    add-int/lit8 v10, v6, 0x4

    aget-object v10, v3, v10

    aget-byte v10, v10, v7

    if-ne v10, v0, :cond_6

    add-int/lit8 v10, v6, 0x5

    aget-object v10, v3, v10

    aget-byte v10, v10, v7

    if-nez v10, :cond_6

    aget-object v9, v3, v9

    aget-byte v9, v9, v7

    if-ne v9, v0, :cond_6

    add-int/lit8 v9, v6, -0x4

    .line 4098
    invoke-static {v3, v7, v9, v6}, Lcom/google/a/i/c/d;->a([[BIII)Z

    move-result v9

    if-nez v9, :cond_5

    add-int/lit8 v9, v6, 0x7

    add-int/lit8 v10, v6, 0xb

    invoke-static {v3, v7, v9, v10}, Lcom/google/a/i/c/d;->a([[BIII)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    add-int/lit8 v8, v8, 0x1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_7
    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto/16 :goto_2

    :cond_8
    mul-int/lit8 v7, v7, 0x28

    add-int/2addr v1, v7

    .line 8055
    iget-object v3, p0, Lcom/google/a/i/c/b;->a:[[B

    .line 9044
    iget v4, p0, Lcom/google/a/i/c/b;->b:I

    .line 10040
    iget v5, p0, Lcom/google/a/i/c/b;->c:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v6, v5, :cond_b

    .line 7138
    aget-object v8, v3, v6

    move v9, v7

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v4, :cond_a

    .line 7140
    aget-byte v10, v8, v7

    if-ne v10, v0, :cond_9

    add-int/lit8 v9, v9, 0x1

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_4

    .line 11040
    :cond_b
    iget v2, p0, Lcom/google/a/i/c/b;->c:I

    .line 11044
    iget p0, p0, Lcom/google/a/i/c/b;->b:I

    mul-int v2, v2, p0

    shl-int/lit8 p0, v7, 0x1

    sub-int/2addr p0, v2

    .line 7146
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0xa

    div-int/2addr p0, v2

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr v1, p0

    return v1
.end method

.method private static a(Lcom/google/a/c/a;III)Lcom/google/a/c/a;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/google/a/c/a;->a()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 404
    new-instance v0, Lcom/google/a/w;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v5, v2, :cond_6

    const/4 v9, 0x1

    .line 417
    new-array v10, v9, [I

    .line 418
    new-array v9, v9, [I

    if-lt v5, v2, :cond_1

    .line 35348
    new-instance v0, Lcom/google/a/w;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35351
    :cond_1
    rem-int v11, v0, v2

    sub-int v12, v2, v11

    .line 35355
    div-int v13, v0, v2

    add-int/lit8 v14, v13, 0x1

    .line 35359
    div-int v15, v1, v2

    add-int/lit8 v16, v15, 0x1

    sub-int/2addr v13, v15

    sub-int v14, v14, v16

    if-eq v13, v14, :cond_2

    .line 35369
    new-instance v0, Lcom/google/a/w;

    const-string v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int v4, v12, v11

    if-eq v2, v4, :cond_3

    .line 35373
    new-instance v0, Lcom/google/a/w;

    const-string v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int v4, v15, v13

    mul-int v4, v4, v12

    add-int v17, v16, v14

    mul-int v17, v17, v11

    add-int v4, v4, v17

    if-eq v0, v4, :cond_4

    .line 35381
    new-instance v0, Lcom/google/a/w;

    const-string v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-ge v5, v12, :cond_5

    const/4 v4, 0x0

    aput v15, v10, v4

    aput v13, v9, v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    aput v16, v10, v4

    aput v14, v9, v4

    .line 423
    :goto_1
    aget v11, v10, v4

    .line 424
    new-array v12, v11, [B

    shl-int/lit8 v13, v6, 0x3

    move-object/from16 v14, p0

    .line 425
    invoke-virtual {v14, v13, v12, v11}, Lcom/google/a/c/a;->a(I[BI)V

    .line 426
    aget v9, v9, v4

    invoke-static {v12, v9}, Lcom/google/a/i/c/c;->a([BI)[B

    move-result-object v9

    .line 427
    new-instance v13, Lcom/google/a/i/c/a;

    invoke-direct {v13, v12, v9}, Lcom/google/a/i/c/a;-><init>([B[B)V

    invoke-interface {v3, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 430
    array-length v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 431
    aget v9, v10, v4

    add-int/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    if-eq v1, v6, :cond_7

    .line 434
    new-instance v0, Lcom/google/a/w;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_7
    new-instance v1, Lcom/google/a/c/a;

    invoke-direct {v1}, Lcom/google/a/c/a;-><init>()V

    const/4 v2, 0x0

    :goto_2
    const/16 v5, 0x8

    if-ge v2, v7, :cond_a

    .line 441
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/a/i/c/a;

    .line 36030
    iget-object v9, v9, Lcom/google/a/i/c/a;->a:[B

    .line 443
    array-length v10, v9

    if-ge v2, v10, :cond_8

    .line 444
    aget-byte v9, v9, v2

    invoke-virtual {v1, v9, v5}, Lcom/google/a/c/a;->b(II)V

    goto :goto_3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    :goto_4
    if-ge v4, v8, :cond_d

    .line 450
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/a/i/c/a;

    .line 36034
    iget-object v6, v6, Lcom/google/a/i/c/a;->b:[B

    .line 452
    array-length v7, v6

    if-ge v4, v7, :cond_b

    .line 453
    aget-byte v6, v6, v4

    invoke-virtual {v1, v6, v5}, Lcom/google/a/c/a;->b(II)V

    goto :goto_5

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 457
    :cond_d
    invoke-virtual {v1}, Lcom/google/a/c/a;->a()I

    move-result v2

    if-eq v0, v2, :cond_e

    .line 458
    new-instance v2, Lcom/google/a/w;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interleaving error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v1}, Lcom/google/a/c/a;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " differ."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    return-object v1
.end method

.method private static a(Ljava/lang/String;)Lcom/google/a/i/a/h;
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-static {p0, v0}, Lcom/google/a/i/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/i/a/h;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/i/a/h;
    .locals 5

    const-string v0, "Shift_JIS"

    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/a/i/c/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    sget-object p0, Lcom/google/a/i/a/h;->g:Lcom/google/a/i/a/h;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 221
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 222
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 225
    :cond_1
    invoke-static {v2}, Lcom/google/a/i/c/c;->a(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 228
    :cond_2
    sget-object p0, Lcom/google/a/i/a/h;->e:Lcom/google/a/i/a/h;

    return-object p0

    :cond_3
    if-eqz v0, :cond_4

    .line 232
    sget-object p0, Lcom/google/a/i/a/h;->c:Lcom/google/a/i/a/h;

    return-object p0

    :cond_4
    if-eqz v1, :cond_5

    .line 235
    sget-object p0, Lcom/google/a/i/a/h;->b:Lcom/google/a/i/a/h;

    return-object p0

    .line 237
    :cond_5
    sget-object p0, Lcom/google/a/i/a/h;->e:Lcom/google/a/i/a/h;

    return-object p0
.end method

.method private static a(ILcom/google/a/i/a/f;)Lcom/google/a/i/a/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    .line 281
    invoke-static {v0}, Lcom/google/a/i/a/j;->b(I)Lcom/google/a/i/a/j;

    move-result-object v1

    .line 282
    invoke-static {p0, v1, p1}, Lcom/google/a/i/c/c;->a(ILcom/google/a/i/a/j;Lcom/google/a/i/a/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_1
    new-instance p0, Lcom/google/a/w;

    const-string p1, "Data too big"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/a/i/a/f;Lcom/google/a/i/a/h;Lcom/google/a/c/a;Lcom/google/a/c/a;)Lcom/google/a/i/a/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    const/4 v0, 0x1

    .line 180
    invoke-static {v0}, Lcom/google/a/i/a/j;->b(I)Lcom/google/a/i/a/j;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/google/a/i/c/c;->a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;Lcom/google/a/c/a;Lcom/google/a/i/a/j;)I

    move-result v0

    .line 181
    invoke-static {v0, p0}, Lcom/google/a/i/c/c;->a(ILcom/google/a/i/a/f;)Lcom/google/a/i/a/j;

    move-result-object v0

    .line 184
    invoke-static {p1, p2, p3, v0}, Lcom/google/a/i/c/c;->a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;Lcom/google/a/c/a;Lcom/google/a/i/a/j;)I

    move-result p1

    .line 185
    invoke-static {p1, p0}, Lcom/google/a/i/c/c;->a(ILcom/google/a/i/a/f;)Lcom/google/a/i/a/j;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/google/a/i/a/f;)Lcom/google/a/i/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    invoke-static {p0, p1, v0}, Lcom/google/a/i/c/c;->a(Ljava/lang/String;Lcom/google/a/i/a/f;Ljava/util/Map;)Lcom/google/a/i/c/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/google/a/i/a/f;Ljava/util/Map;)Lcom/google/a/i/c/f;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/a/i/a/f;",
            "Ljava/util/Map<",
            "Lcom/google/a/g;",
            "*>;)",
            "Lcom/google/a/i/c/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    const-string v0, "ISO-8859-1"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 81
    sget-object v3, Lcom/google/a/g;->b:Lcom/google/a/g;

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 83
    sget-object v0, Lcom/google/a/g;->b:Lcom/google/a/g;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_1
    invoke-static {p0, v0}, Lcom/google/a/i/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/i/a/h;

    move-result-object v4

    .line 92
    new-instance v5, Lcom/google/a/c/a;

    invoke-direct {v5}, Lcom/google/a/c/a;-><init>()V

    .line 95
    sget-object v6, Lcom/google/a/i/a/h;->e:Lcom/google/a/i/a/h;

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-ne v4, v6, :cond_2

    if-eqz v3, :cond_2

    .line 96
    invoke-static {v0}, Lcom/google/a/c/d;->a(Ljava/lang/String;)Lcom/google/a/c/d;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11612
    sget-object v6, Lcom/google/a/i/a/h;->f:Lcom/google/a/i/a/h;

    .line 12099
    iget v6, v6, Lcom/google/a/i/a/h;->k:I

    .line 11612
    invoke-virtual {v5, v6, v7}, Lcom/google/a/c/a;->b(II)V

    .line 13093
    iget-object v3, v3, Lcom/google/a/c/d;->B:[I

    aget v3, v3, v1

    .line 11614
    invoke-virtual {v5, v3, v8}, Lcom/google/a/c/a;->b(II)V

    :cond_2
    if-eqz p2, :cond_3

    .line 103
    sget-object v3, Lcom/google/a/g;->l:Lcom/google/a/g;

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 104
    sget-object v3, Lcom/google/a/g;->l:Lcom/google/a/g;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 106
    sget-object v3, Lcom/google/a/i/a/h;->h:Lcom/google/a/i/a/h;

    invoke-static {v3, v5}, Lcom/google/a/i/c/c;->a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;)V

    .line 110
    :cond_4
    invoke-static {v4, v5}, Lcom/google/a/i/c/c;->a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;)V

    .line 114
    new-instance v3, Lcom/google/a/c/a;

    invoke-direct {v3}, Lcom/google/a/c/a;-><init>()V

    .line 13506
    sget-object v6, Lcom/google/a/i/c/c$1;->a:[I

    invoke-virtual {v4}, Lcom/google/a/i/a/h;->ordinal()I

    move-result v9

    aget v6, v6, v9

    const/4 v9, -0x1

    packed-switch v6, :pswitch_data_0

    .line 13520
    new-instance p0, Lcom/google/a/w;

    const-string p1, "Invalid mode: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    :try_start_0
    const-string v0, "Shift_JIS"

    .line 13588
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13592
    array-length v6, v0

    :goto_2
    if-ge v1, v6, :cond_d

    .line 13594
    aget-byte v7, v0, v1

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v10, v1, 0x1

    .line 13595
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v7, v8

    or-int/2addr v7, v10

    const v10, 0x8140

    if-lt v7, v10, :cond_5

    const v11, 0x9ffc

    if-gt v7, v11, :cond_5

    sub-int/2addr v7, v10

    goto :goto_3

    :cond_5
    const v10, 0xe040

    if-lt v7, v10, :cond_6

    const v10, 0xebbf

    if-gt v7, v10, :cond_6

    const v10, 0xc140

    sub-int/2addr v7, v10

    goto :goto_3

    :cond_6
    const/4 v7, -0x1

    :goto_3
    if-ne v7, v9, :cond_7

    .line 13604
    new-instance p0, Lcom/google/a/w;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    shr-int/lit8 v10, v7, 0x8

    mul-int/lit16 v10, v10, 0xc0

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v10, v7

    const/16 v7, 0xd

    .line 13607
    invoke-virtual {v3, v10, v7}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :catch_0
    move-exception p0

    .line 13590
    new-instance p1, Lcom/google/a/w;

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 13576
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 13580
    array-length v6, v0

    :goto_4
    if-ge v1, v6, :cond_d

    aget-byte v7, v0, v1

    .line 13581
    invoke-virtual {v3, v7, v8}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 13578
    new-instance p1, Lcom/google/a/w;

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 13549
    :pswitch_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_5
    if-ge v1, v0, :cond_d

    .line 13552
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/a/i/c/c;->a(I)I

    move-result v6

    if-ne v6, v9, :cond_8

    .line 13554
    new-instance p0, Lcom/google/a/w;

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    throw p0

    :cond_8
    add-int/lit8 v7, v1, 0x1

    if-ge v7, v0, :cond_a

    .line 13557
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/a/i/c/c;->a(I)I

    move-result v7

    if-ne v7, v9, :cond_9

    .line 13559
    new-instance p0, Lcom/google/a/w;

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    throw p0

    :cond_9
    mul-int/lit8 v6, v6, 0x2d

    add-int/2addr v6, v7

    const/16 v7, 0xb

    .line 13562
    invoke-virtual {v3, v6, v7}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_a
    const/4 v1, 0x6

    .line 13566
    invoke-virtual {v3, v6, v1}, Lcom/google/a/c/a;->b(II)V

    move v1, v7

    goto :goto_5

    .line 13525
    :pswitch_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_6
    if-ge v1, v0, :cond_d

    .line 13528
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    add-int/lit8 v8, v1, 0x2

    if-ge v8, v0, :cond_b

    add-int/lit8 v9, v1, 0x1

    .line 13531
    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    .line 13532
    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    mul-int/lit8 v6, v6, 0x64

    const/16 v10, 0xa

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    .line 13533
    invoke-virtual {v3, v6, v10}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_6

    :cond_b
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_c

    .line 13537
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v1

    const/4 v1, 0x7

    .line 13538
    invoke-virtual {v3, v6, v1}, Lcom/google/a/c/a;->b(II)V

    move v1, v8

    goto :goto_6

    .line 13542
    :cond_c
    invoke-virtual {v3, v6, v7}, Lcom/google/a/c/a;->b(II)V

    goto :goto_6

    :cond_d
    if-eqz p2, :cond_e

    .line 118
    sget-object v0, Lcom/google/a/g;->k:Lcom/google/a/g;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 119
    sget-object v0, Lcom/google/a/g;->k:Lcom/google/a/g;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 120
    invoke-static {p2}, Lcom/google/a/i/a/j;->b(I)Lcom/google/a/i/a/j;

    move-result-object p2

    .line 121
    invoke-static {v4, v5, v3, p2}, Lcom/google/a/i/c/c;->a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;Lcom/google/a/c/a;Lcom/google/a/i/a/j;)I

    move-result v0

    .line 122
    invoke-static {v0, p2, p1}, Lcom/google/a/i/c/c;->a(ILcom/google/a/i/a/j;Lcom/google/a/i/a/f;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 123
    new-instance p0, Lcom/google/a/w;

    const-string p1, "Data too big for requested version"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14180
    :cond_e
    invoke-static {v2}, Lcom/google/a/i/a/j;->b(I)Lcom/google/a/i/a/j;

    move-result-object p2

    invoke-static {v4, v5, v3, p2}, Lcom/google/a/i/c/c;->a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;Lcom/google/a/c/a;Lcom/google/a/i/a/j;)I

    move-result p2

    .line 14181
    invoke-static {p2, p1}, Lcom/google/a/i/c/c;->a(ILcom/google/a/i/a/f;)Lcom/google/a/i/a/j;

    move-result-object p2

    .line 14184
    invoke-static {v4, v5, v3, p2}, Lcom/google/a/i/c/c;->a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;Lcom/google/a/c/a;Lcom/google/a/i/a/j;)I

    move-result p2

    .line 14185
    invoke-static {p2, p1}, Lcom/google/a/i/c/c;->a(ILcom/google/a/i/a/f;)Lcom/google/a/i/a/j;

    move-result-object p2

    .line 129
    :cond_f
    new-instance v0, Lcom/google/a/c/a;

    invoke-direct {v0}, Lcom/google/a/c/a;-><init>()V

    .line 130
    invoke-virtual {v0, v5}, Lcom/google/a/c/a;->a(Lcom/google/a/c/a;)V

    .line 132
    sget-object v1, Lcom/google/a/i/a/h;->e:Lcom/google/a/i/a/h;

    if-ne v4, v1, :cond_10

    invoke-virtual {v3}, Lcom/google/a/c/a;->a()I

    move-result p0

    goto :goto_7

    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 14492
    :goto_7
    invoke-virtual {v4, p2}, Lcom/google/a/i/a/h;->a(Lcom/google/a/i/a/j;)I

    move-result v1

    shl-int v5, v2, v1

    if-lt p0, v5, :cond_11

    .line 14494
    new-instance p1, Lcom/google/a/w;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is bigger than "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v5, v2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14496
    :cond_11
    invoke-virtual {v0, p0, v1}, Lcom/google/a/c/a;->b(II)V

    .line 135
    invoke-virtual {v0, v3}, Lcom/google/a/c/a;->a(Lcom/google/a/c/a;)V

    .line 137
    invoke-virtual {p2, p1}, Lcom/google/a/i/a/j;->a(Lcom/google/a/i/a/f;)Lcom/google/a/i/a/j$b;

    move-result-object p0

    .line 15074
    iget v1, p2, Lcom/google/a/i/a/j;->c:I

    .line 138
    invoke-virtual {p0}, Lcom/google/a/i/a/j$b;->b()I

    move-result v2

    sub-int/2addr v1, v2

    .line 141
    invoke-static {v1, v0}, Lcom/google/a/i/c/c;->a(ILcom/google/a/c/a;)V

    .line 16074
    iget v2, p2, Lcom/google/a/i/a/j;->c:I

    .line 147
    invoke-virtual {p0}, Lcom/google/a/i/a/j$b;->a()I

    move-result p0

    .line 144
    invoke-static {v0, v2, v1, p0}, Lcom/google/a/i/c/c;->a(Lcom/google/a/c/a;III)Lcom/google/a/c/a;

    move-result-object p0

    .line 149
    new-instance v0, Lcom/google/a/i/c/f;

    invoke-direct {v0}, Lcom/google/a/i/c/f;-><init>()V

    .line 16088
    iput-object p1, v0, Lcom/google/a/i/c/f;->c:Lcom/google/a/i/a/f;

    .line 17084
    iput-object v4, v0, Lcom/google/a/i/c/f;->b:Lcom/google/a/i/a/h;

    .line 17092
    iput-object p2, v0, Lcom/google/a/i/c/f;->d:Lcom/google/a/i/a/j;

    .line 156
    invoke-virtual {p2}, Lcom/google/a/i/a/j;->a()I

    move-result v1

    .line 157
    new-instance v2, Lcom/google/a/i/c/b;

    invoke-direct {v2, v1, v1}, Lcom/google/a/i/c/b;-><init>(II)V

    .line 158
    invoke-static {p0, p1, p2, v2}, Lcom/google/a/i/c/c;->a(Lcom/google/a/c/a;Lcom/google/a/i/a/f;Lcom/google/a/i/a/j;Lcom/google/a/i/c/b;)I

    move-result v1

    .line 17096
    iput v1, v0, Lcom/google/a/i/c/f;->e:I

    .line 162
    invoke-static {p0, p1, p2, v1, v2}, Lcom/google/a/i/c/e;->a(Lcom/google/a/c/a;Lcom/google/a/i/a/f;Lcom/google/a/i/a/j;ILcom/google/a/i/c/b;)V

    .line 17100
    iput-object v2, v0, Lcom/google/a/i/c/f;->f:Lcom/google/a/i/c/b;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(IIII[I[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    if-lt p3, p2, :cond_0

    .line 348
    new-instance p0, Lcom/google/a/w;

    const-string p1, "Block ID too large"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    .line 351
    :cond_0
    rem-int v0, p0, p2

    sub-int v1, p2, v0

    .line 355
    div-int v2, p0, p2

    add-int/lit8 v3, v2, 0x1

    .line 359
    div-int/2addr p1, p2

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v2, p1

    sub-int/2addr v3, v4

    if-eq v2, v3, :cond_1

    .line 369
    new-instance p0, Lcom/google/a/w;

    const-string p1, "EC bytes mismatch"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int v5, v1, v0

    if-eq p2, v5, :cond_2

    .line 373
    new-instance p0, Lcom/google/a/w;

    const-string p1, "RS blocks mismatch"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    add-int p2, p1, v2

    mul-int p2, p2, v1

    add-int v5, v4, v3

    mul-int v5, v5, v0

    add-int/2addr p2, v5

    if-eq p0, p2, :cond_3

    .line 381
    new-instance p0, Lcom/google/a/w;

    const-string p1, "Total bytes mismatch"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p0, 0x0

    if-ge p3, v1, :cond_4

    .line 385
    aput p1, p4, p0

    .line 386
    aput v2, p5, p0

    return-void

    .line 388
    :cond_4
    aput v4, p4, p0

    .line 389
    aput v3, p5, p0

    return-void
.end method

.method private static a(ILcom/google/a/c/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    shl-int/lit8 v0, p0, 0x3

    .line 31048
    iget v1, p1, Lcom/google/a/c/a;->b:I

    if-le v1, v0, :cond_0

    .line 312
    new-instance p0, Lcom/google/a/w;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32048
    iget p1, p1, Lcom/google/a/c/a;->b:I

    .line 312
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 33048
    iget v3, p1, Lcom/google/a/c/a;->b:I

    if-ge v3, v0, :cond_1

    .line 316
    invoke-virtual {p1, v1}, Lcom/google/a/c/a;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34048
    :cond_1
    iget v2, p1, Lcom/google/a/c/a;->b:I

    and-int/lit8 v2, v2, 0x7

    const/16 v3, 0x8

    if-lez v2, :cond_2

    :goto_1
    if-ge v2, v3, :cond_2

    .line 323
    invoke-virtual {p1, v1}, Lcom/google/a/c/a;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 327
    :cond_2
    invoke-virtual {p1}, Lcom/google/a/c/a;->a()I

    move-result v2

    sub-int/2addr p0, v2

    :goto_2
    if-ge v1, p0, :cond_4

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_3

    const/16 v2, 0xec

    goto :goto_3

    :cond_3
    const/16 v2, 0x11

    .line 329
    :goto_3
    invoke-virtual {p1, v2, v3}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 35048
    :cond_4
    iget p0, p1, Lcom/google/a/c/a;->b:I

    if-eq p0, v0, :cond_5

    .line 332
    new-instance p0, Lcom/google/a/w;

    const-string p1, "Bits size does not equal capacity"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method

.method private static a(ILcom/google/a/i/a/j;Lcom/google/a/i/a/h;Lcom/google/a/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    .line 492
    invoke-virtual {p2, p1}, Lcom/google/a/i/a/h;->a(Lcom/google/a/i/a/j;)I

    move-result p1

    const/4 p2, 0x1

    shl-int v0, p2, p1

    if-lt p0, v0, :cond_0

    .line 494
    new-instance p1, Lcom/google/a/w;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is bigger than "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p1

    .line 496
    :cond_0
    invoke-virtual {p3, p0, p1}, Lcom/google/a/c/a;->b(II)V

    return-void
.end method

.method private static a(Lcom/google/a/c/d;Lcom/google/a/c/a;)V
    .locals 2

    .line 612
    sget-object v0, Lcom/google/a/i/a/h;->f:Lcom/google/a/i/a/h;

    .line 37099
    iget v0, v0, Lcom/google/a/i/a/h;->k:I

    const/4 v1, 0x4

    .line 612
    invoke-virtual {p1, v0, v1}, Lcom/google/a/c/a;->b(II)V

    .line 38093
    iget-object p0, p0, Lcom/google/a/c/d;->B:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    const/16 v0, 0x8

    .line 614
    invoke-virtual {p1, p0, v0}, Lcom/google/a/c/a;->b(II)V

    return-void
.end method

.method private static a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;)V
    .locals 1

    .line 36099
    iget p0, p0, Lcom/google/a/i/a/h;->k:I

    const/4 v0, 0x4

    .line 484
    invoke-virtual {p1, p0, v0}, Lcom/google/a/c/a;->b(II)V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Lcom/google/a/c/a;)V
    .locals 6

    .line 525
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 528
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 531
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 532
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v2, v2, 0x64

    const/16 v5, 0xa

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 533
    invoke-virtual {p1, v2, v5}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 537
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    const/4 v1, 0x7

    .line 538
    invoke-virtual {p1, v2, v1}, Lcom/google/a/c/a;->b(II)V

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    .line 542
    invoke-virtual {p1, v2, v3}, Lcom/google/a/c/a;->b(II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/google/a/c/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    :try_start_0
    const-string v0, "Shift_JIS"

    .line 588
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 594
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    .line 595
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    const v3, 0x8140

    const/4 v4, -0x1

    if-lt v2, v3, :cond_0

    const v5, 0x9ffc

    if-gt v2, v5, :cond_0

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_0
    const v3, 0xe040

    if-lt v2, v3, :cond_1

    const v3, 0xebbf

    if-gt v2, v3, :cond_1

    const v3, 0xc140

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ne v2, v4, :cond_2

    .line 604
    new-instance p0, Lcom/google/a/w;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    shr-int/lit8 v3, v2, 0x8

    mul-int/lit16 v3, v3, 0xc0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    const/16 v2, 0xd

    .line 607
    invoke-virtual {p1, v3, v2}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    .line 590
    new-instance p1, Lcom/google/a/w;

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a(Ljava/lang/String;Lcom/google/a/c/a;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    .line 576
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x8

    .line 581
    invoke-virtual {p1, v1, v2}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 578
    new-instance p1, Lcom/google/a/w;

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a(Ljava/lang/String;Lcom/google/a/i/a/h;Lcom/google/a/c/a;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    .line 506
    sget-object v0, Lcom/google/a/i/c/c$1;->a:[I

    invoke-virtual {p1}, Lcom/google/a/i/a/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 520
    new-instance p0, Lcom/google/a/w;

    const-string p2, "Invalid mode: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    :try_start_0
    const-string p1, "Shift_JIS"

    .line 36588
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36592
    array-length p1, p0

    :goto_0
    if-ge v3, p1, :cond_3

    .line 36594
    aget-byte p3, p0, v3

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 v0, v3, 0x1

    .line 36595
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr p3, v1

    or-int/2addr p3, v0

    const v0, 0x8140

    if-lt p3, v0, :cond_0

    const v4, 0x9ffc

    if-gt p3, v4, :cond_0

    sub-int/2addr p3, v0

    goto :goto_1

    :cond_0
    const v0, 0xe040

    if-lt p3, v0, :cond_1

    const v0, 0xebbf

    if-gt p3, v0, :cond_1

    const v0, 0xc140

    sub-int/2addr p3, v0

    goto :goto_1

    :cond_1
    const/4 p3, -0x1

    :goto_1
    if-ne p3, v2, :cond_2

    .line 36604
    new-instance p0, Lcom/google/a/w;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    shr-int/lit8 v0, p3, 0x8

    mul-int/lit16 v0, v0, 0xc0

    and-int/lit16 p3, p3, 0xff

    add-int/2addr v0, p3

    const/16 p3, 0xd

    .line 36607
    invoke-virtual {p2, v0, p3}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    .line 36590
    new-instance p1, Lcom/google/a/w;

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 36576
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 36580
    array-length p1, p0

    :goto_2
    if-ge v3, p1, :cond_4

    aget-byte p3, p0, v3

    .line 36581
    invoke-virtual {p2, p3, v1}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void

    :catch_1
    move-exception p0

    .line 36578
    new-instance p1, Lcom/google/a/w;

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 36549
    :pswitch_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_3
    if-ge v3, p1, :cond_8

    .line 36552
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Lcom/google/a/i/c/c;->a(I)I

    move-result p3

    if-ne p3, v2, :cond_5

    .line 36554
    new-instance p0, Lcom/google/a/w;

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    throw p0

    :cond_5
    add-int/lit8 v0, v3, 0x1

    if-ge v0, p1, :cond_7

    .line 36557
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/a/i/c/c;->a(I)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 36559
    new-instance p0, Lcom/google/a/w;

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    throw p0

    :cond_6
    mul-int/lit8 p3, p3, 0x2d

    add-int/2addr p3, v0

    const/16 v0, 0xb

    .line 36562
    invoke-virtual {p2, p3, v0}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    :cond_7
    const/4 v1, 0x6

    .line 36566
    invoke-virtual {p2, p3, v1}, Lcom/google/a/c/a;->b(II)V

    move v3, v0

    goto :goto_3

    :cond_8
    return-void

    .line 36525
    :pswitch_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_4
    if-ge v3, p1, :cond_b

    .line 36528
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    add-int/lit8 p3, p3, -0x30

    add-int/lit8 v0, v3, 0x2

    if-ge v0, p1, :cond_9

    add-int/lit8 v1, v3, 0x1

    .line 36531
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    .line 36532
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 p3, p3, 0x64

    const/16 v2, 0xa

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr p3, v1

    add-int/2addr p3, v0

    .line 36533
    invoke-virtual {p2, p3, v2}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v3, v3, 0x3

    goto :goto_4

    :cond_9
    add-int/lit8 v3, v3, 0x1

    if-ge v3, p1, :cond_a

    .line 36537
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/2addr p3, v1

    const/4 v1, 0x7

    .line 36538
    invoke-virtual {p2, p3, v1}, Lcom/google/a/c/a;->b(II)V

    move v3, v0

    goto :goto_4

    :cond_a
    const/4 v0, 0x4

    .line 36542
    invoke-virtual {p2, p3, v0}, Lcom/google/a/c/a;->b(II)V

    goto :goto_4

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(ILcom/google/a/i/a/j;Lcom/google/a/i/a/f;)Z
    .locals 1

    .line 30074
    iget v0, p1, Lcom/google/a/i/a/j;->c:I

    .line 298
    invoke-virtual {p1, p2}, Lcom/google/a/i/a/j;->a(Lcom/google/a/i/a/f;)Lcom/google/a/i/a/j$b;

    move-result-object p1

    .line 299
    invoke-virtual {p1}, Lcom/google/a/i/a/j$b;->b()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 p0, p0, 0x7

    .line 302
    div-int/lit8 p0, p0, 0x8

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a([BI)[B
    .locals 5

    .line 466
    array-length v0, p0

    add-int v1, v0, p1

    .line 467
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 469
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 471
    :cond_0
    new-instance p0, Lcom/google/a/c/b/d;

    sget-object v3, Lcom/google/a/c/b/a;->e:Lcom/google/a/c/b/a;

    invoke-direct {p0, v3}, Lcom/google/a/c/b/d;-><init>(Lcom/google/a/c/b/a;)V

    invoke-virtual {p0, v1, p1}, Lcom/google/a/c/b/d;->a([II)V

    .line 473
    new-array p0, p1, [B

    :goto_1
    if-ge v2, p1, :cond_1

    add-int v3, v0, v2

    .line 475
    aget v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method private static b(Ljava/lang/CharSequence;Lcom/google/a/c/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    .line 549
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 552
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/a/i/c/c;->a(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 554
    new-instance p0, Lcom/google/a/w;

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    throw p0

    :cond_0
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_2

    .line 557
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/a/i/c/c;->a(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 559
    new-instance p0, Lcom/google/a/w;

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    throw p0

    :cond_1
    mul-int/lit8 v2, v2, 0x2d

    add-int/2addr v2, v4

    const/16 v3, 0xb

    .line 562
    invoke-virtual {p1, v2, v3}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    .line 566
    invoke-virtual {p1, v2, v1}, Lcom/google/a/c/a;->b(II)V

    move v1, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Shift_JIS"

    .line 243
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    array-length v1, p0

    .line 248
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 252
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x81

    if-lt v3, v4, :cond_1

    const/16 v4, 0x9f

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0xe0

    if-lt v3, v4, :cond_3

    const/16 v4, 0xeb

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

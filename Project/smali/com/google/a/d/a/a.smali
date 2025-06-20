.class final Lcom/google/a/d/a/a;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field final a:Lcom/google/a/c/b;

.field final b:Lcom/google/a/c/b;

.field final c:Lcom/google/a/d/a/e;


# direct methods
.method constructor <init>(Lcom/google/a/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1406
    iget v0, p1, Lcom/google/a/c/b;->b:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/16 v1, 0x90

    if-gt v0, v1, :cond_1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2406
    :cond_0
    iget v0, p1, Lcom/google/a/c/b;->b:I

    .line 3399
    iget v1, p1, Lcom/google/a/c/b;->a:I

    .line 2064
    invoke-static {v0, v1}, Lcom/google/a/d/a/e;->a(II)Lcom/google/a/d/a/e;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    .line 42
    invoke-direct {p0, p1}, Lcom/google/a/d/a/a;->b(Lcom/google/a/c/b;)Lcom/google/a/c/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/a/d/a/a;->a:Lcom/google/a/c/b;

    .line 43
    new-instance p1, Lcom/google/a/c/b;

    iget-object v0, p0, Lcom/google/a/d/a/a;->a:Lcom/google/a/c/b;

    .line 4399
    iget v0, v0, Lcom/google/a/c/b;->a:I

    .line 43
    iget-object v1, p0, Lcom/google/a/d/a/a;->a:Lcom/google/a/c/b;

    .line 4406
    iget v1, v1, Lcom/google/a/c/b;->b:I

    .line 43
    invoke-direct {p1, v0, v1}, Lcom/google/a/c/b;-><init>(II)V

    iput-object p1, p0, Lcom/google/a/d/a/a;->b:Lcom/google/a/c/b;

    return-void

    .line 38
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p1

    throw p1
.end method

.method private a(II)I
    .locals 5

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    .line 226
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    .line 230
    invoke-virtual {p0, v0, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    shl-int/2addr v2, v3

    const/4 v4, 0x2

    .line 234
    invoke-virtual {p0, v0, v4, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 v2, v2, 0x1

    :cond_1
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p2, -0x2

    .line 238
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v3

    add-int/lit8 v2, p2, -0x1

    .line 242
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v3

    .line 246
    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v3

    .line 250
    invoke-virtual {p0, v4, v2, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v3

    const/4 v1, 0x3

    .line 254
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method private a()Lcom/google/a/d/a/e;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    return-object v0
.end method

.method private static a(Lcom/google/a/c/b;)Lcom/google/a/d/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    .line 5406
    iget v0, p0, Lcom/google/a/c/b;->b:I

    .line 6399
    iget p0, p0, Lcom/google/a/c/b;->a:I

    .line 64
    invoke-static {v0, p0}, Lcom/google/a/d/a/e;->a(II)Lcom/google/a/d/a/e;

    move-result-object p0

    return-object p0
.end method

.method private b(II)I
    .locals 4

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x0

    .line 271
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v0

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x2

    .line 275
    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x1

    .line 279
    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x4

    .line 283
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x3

    .line 287
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x2

    .line 291
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x1

    .line 295
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v2

    .line 299
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method private b(Lcom/google/a/c/b;)Lcom/google/a/c/b;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 403
    iget-object v2, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    .line 11067
    iget v2, v2, Lcom/google/a/d/a/e;->b:I

    .line 404
    iget-object v3, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    .line 11071
    iget v3, v3, Lcom/google/a/d/a/e;->c:I

    .line 11406
    iget v4, v1, Lcom/google/a/c/b;->b:I

    if-eq v4, v2, :cond_0

    .line 407
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Dimension of bitMatrix must match the version size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_0
    iget-object v4, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    .line 12075
    iget v4, v4, Lcom/google/a/d/a/e;->d:I

    .line 411
    iget-object v5, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    .line 12079
    iget v5, v5, Lcom/google/a/d/a/e;->e:I

    .line 413
    div-int/2addr v2, v4

    .line 414
    div-int/2addr v3, v5

    mul-int v6, v2, v4

    mul-int v7, v3, v5

    .line 419
    new-instance v8, Lcom/google/a/c/b;

    invoke-direct {v8, v7, v6}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_5

    mul-int v9, v7, v4

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v3, :cond_4

    mul-int v11, v10, v5

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v4, :cond_3

    add-int/lit8 v13, v4, 0x2

    mul-int v13, v13, v7

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v13, v12

    add-int v14, v9, v12

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v5, :cond_2

    add-int/lit8 v16, v5, 0x2

    mul-int v16, v16, v10

    add-int/lit8 v16, v16, 0x1

    add-int v6, v16, v15

    .line 429
    invoke-virtual {v1, v6, v13}, Lcom/google/a/c/b;->a(II)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int v6, v11, v15

    .line 431
    invoke-virtual {v8, v6, v14}, Lcom/google/a/c/b;->b(II)V

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    return-object v8
.end method

.method private b()[B
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 77
    iget-object v1, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    .line 7083
    iget v1, v1, Lcom/google/a/d/a/e;->g:I

    .line 77
    new-array v1, v1, [B

    .line 83
    iget-object v2, v0, Lcom/google/a/d/a/a;->a:Lcom/google/a/c/b;

    .line 7406
    iget v2, v2, Lcom/google/a/c/b;->b:I

    .line 84
    iget-object v3, v0, Lcom/google/a/d/a/a;->a:Lcom/google/a/c/b;

    .line 8399
    iget v3, v3, Lcom/google/a/c/b;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_0
    const/4 v14, 0x2

    const/4 v15, 0x1

    if-ne v6, v2, :cond_8

    if-nez v7, :cond_8

    if-nez v8, :cond_8

    add-int/lit8 v8, v9, 0x1

    add-int/lit8 v4, v2, -0x1

    .line 9226
    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    shl-int/lit8 v17, v17, 0x1

    .line 9230
    invoke-virtual {v0, v4, v15, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_1

    or-int/lit8 v17, v17, 0x1

    :cond_1
    shl-int/lit8 v17, v17, 0x1

    .line 9234
    invoke-virtual {v0, v4, v14, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v17, v17, 0x1

    :cond_2
    shl-int/lit8 v4, v17, 0x1

    add-int/lit8 v13, v3, -0x2

    .line 9238
    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_3

    or-int/lit8 v4, v4, 0x1

    :cond_3
    shl-int/2addr v4, v15

    add-int/lit8 v13, v3, -0x1

    .line 9242
    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_4

    or-int/lit8 v4, v4, 0x1

    :cond_4
    shl-int/2addr v4, v15

    .line 9246
    invoke-virtual {v0, v15, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_5

    or-int/lit8 v4, v4, 0x1

    :cond_5
    shl-int/2addr v4, v15

    .line 9250
    invoke-virtual {v0, v14, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_6

    or-int/lit8 v4, v4, 0x1

    :cond_6
    shl-int/2addr v4, v15

    const/4 v14, 0x3

    .line 9254
    invoke-virtual {v0, v14, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_7

    or-int/lit8 v4, v4, 0x1

    :cond_7
    int-to-byte v4, v4

    .line 95
    aput-byte v4, v1, v9

    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v7, v7, 0x2

    move v9, v8

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v4, v2, -0x2

    if-ne v6, v4, :cond_10

    if-nez v7, :cond_10

    and-int/lit8 v13, v3, 0x3

    if-eqz v13, :cond_10

    if-nez v10, :cond_10

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v13, v2, -0x3

    .line 9271
    invoke-virtual {v0, v13, v5, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    shl-int/2addr v13, v15

    .line 9275
    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_9

    or-int/lit8 v13, v13, 0x1

    :cond_9
    shl-int/lit8 v4, v13, 0x1

    add-int/lit8 v13, v2, -0x1

    .line 9279
    invoke-virtual {v0, v13, v5, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_a

    or-int/lit8 v4, v4, 0x1

    :cond_a
    shl-int/2addr v4, v15

    add-int/lit8 v13, v3, -0x4

    .line 9283
    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_b

    or-int/lit8 v4, v4, 0x1

    :cond_b
    shl-int/2addr v4, v15

    add-int/lit8 v13, v3, -0x3

    .line 9287
    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_c

    or-int/lit8 v4, v4, 0x1

    :cond_c
    shl-int/2addr v4, v15

    add-int/lit8 v13, v3, -0x2

    .line 9291
    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_d

    or-int/lit8 v4, v4, 0x1

    :cond_d
    shl-int/2addr v4, v15

    add-int/lit8 v13, v3, -0x1

    .line 9295
    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_e

    or-int/lit8 v4, v4, 0x1

    :cond_e
    shl-int/2addr v4, v15

    .line 9299
    invoke-virtual {v0, v15, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_f

    or-int/lit8 v4, v4, 0x1

    :cond_f
    int-to-byte v4, v4

    .line 100
    aput-byte v4, v1, v9

    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v7, v7, 0x2

    move v9, v10

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v13, v2, 0x4

    if-ne v6, v13, :cond_18

    if-ne v7, v14, :cond_18

    and-int/lit8 v13, v3, 0x7

    if-nez v13, :cond_18

    if-nez v11, :cond_18

    add-int/lit8 v4, v9, 0x1

    add-int/lit8 v11, v2, -0x1

    .line 9316
    invoke-virtual {v0, v11, v5, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    shl-int/2addr v13, v15

    add-int/lit8 v14, v3, -0x1

    .line 9320
    invoke-virtual {v0, v11, v14, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v11

    if-eqz v11, :cond_11

    or-int/lit8 v13, v13, 0x1

    :cond_11
    shl-int/lit8 v11, v13, 0x1

    add-int/lit8 v13, v3, -0x3

    .line 9324
    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_12

    or-int/lit8 v11, v11, 0x1

    :cond_12
    shl-int/2addr v11, v15

    add-int/lit8 v15, v3, -0x2

    .line 9328
    invoke-virtual {v0, v5, v15, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_13

    or-int/lit8 v11, v11, 0x1

    :cond_13
    move/from16 v19, v4

    const/4 v4, 0x1

    shl-int/2addr v11, v4

    .line 9332
    invoke-virtual {v0, v5, v14, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_14

    or-int/lit8 v11, v11, 0x1

    :cond_14
    shl-int/2addr v11, v4

    .line 9336
    invoke-virtual {v0, v4, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_15

    or-int/lit8 v11, v11, 0x1

    :cond_15
    shl-int/2addr v11, v4

    .line 9340
    invoke-virtual {v0, v4, v15, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_16

    or-int/lit8 v11, v11, 0x1

    :cond_16
    shl-int/2addr v11, v4

    .line 9344
    invoke-virtual {v0, v4, v14, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_17

    or-int/lit8 v11, v11, 0x1

    :cond_17
    int-to-byte v4, v11

    .line 105
    aput-byte v4, v1, v9

    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v7, v7, 0x2

    move/from16 v9, v19

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_18
    if-ne v6, v4, :cond_20

    if-nez v7, :cond_20

    and-int/lit8 v13, v3, 0x7

    const/4 v15, 0x4

    if-ne v13, v15, :cond_20

    if-nez v12, :cond_20

    add-int/lit8 v12, v9, 0x1

    add-int/lit8 v13, v2, -0x3

    .line 9361
    invoke-virtual {v0, v13, v5, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    const/4 v15, 0x1

    shl-int/2addr v13, v15

    .line 9365
    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_19

    or-int/lit8 v13, v13, 0x1

    :cond_19
    shl-int/lit8 v4, v13, 0x1

    add-int/lit8 v13, v2, -0x1

    .line 9369
    invoke-virtual {v0, v13, v5, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_1a

    or-int/lit8 v4, v4, 0x1

    :cond_1a
    shl-int/2addr v4, v15

    add-int/lit8 v13, v3, -0x2

    .line 9373
    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_1b

    or-int/lit8 v4, v4, 0x1

    :cond_1b
    shl-int/2addr v4, v15

    add-int/lit8 v13, v3, -0x1

    .line 9377
    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v16

    if-eqz v16, :cond_1c

    or-int/lit8 v4, v4, 0x1

    :cond_1c
    shl-int/2addr v4, v15

    .line 9381
    invoke-virtual {v0, v15, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v16

    if-eqz v16, :cond_1d

    or-int/lit8 v4, v4, 0x1

    :cond_1d
    shl-int/2addr v4, v15

    .line 9385
    invoke-virtual {v0, v14, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_1e

    or-int/lit8 v4, v4, 0x1

    :cond_1e
    shl-int/2addr v4, v15

    const/4 v14, 0x3

    .line 9389
    invoke-virtual {v0, v14, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_1f

    or-int/lit8 v4, v4, 0x1

    :cond_1f
    int-to-byte v4, v4

    .line 110
    aput-byte v4, v1, v9

    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v7, v7, 0x2

    move v9, v12

    const/4 v12, 0x1

    goto :goto_0

    :cond_20
    if-ge v6, v2, :cond_21

    if-ltz v7, :cond_21

    .line 117
    iget-object v4, v0, Lcom/google/a/d/a/a;->b:Lcom/google/a/c/b;

    invoke-virtual {v4, v7, v6}, Lcom/google/a/c/b;->a(II)Z

    move-result v4

    if-nez v4, :cond_21

    add-int/lit8 v4, v9, 0x1

    .line 118
    invoke-virtual {v0, v6, v7, v2, v3}, Lcom/google/a/d/a/a;->b(IIII)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v1, v9

    move v9, v4

    :cond_21
    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v7, v7, 0x2

    if-ltz v6, :cond_22

    if-lt v7, v3, :cond_20

    :cond_22
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x3

    :cond_23
    if-ltz v6, :cond_24

    if-ge v7, v3, :cond_24

    .line 128
    iget-object v4, v0, Lcom/google/a/d/a/a;->b:Lcom/google/a/c/b;

    invoke-virtual {v4, v7, v6}, Lcom/google/a/c/b;->a(II)Z

    move-result v4

    if-nez v4, :cond_24

    add-int/lit8 v4, v9, 0x1

    .line 129
    invoke-virtual {v0, v6, v7, v2, v3}, Lcom/google/a/d/a/a;->b(IIII)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v1, v9

    move v9, v4

    :cond_24
    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v7, -0x2

    if-ge v6, v2, :cond_25

    if-gez v7, :cond_23

    :cond_25
    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v7, v7, 0x1

    :goto_0
    if-lt v6, v2, :cond_0

    if-lt v7, v3, :cond_0

    .line 139
    iget-object v2, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    .line 10083
    iget v2, v2, Lcom/google/a/d/a/e;->g:I

    if-eq v9, v2, :cond_26

    .line 140
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object v1

    throw v1

    :cond_26
    return-object v1
.end method

.method private c(II)I
    .locals 7

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    .line 316
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    add-int/lit8 v4, p2, -0x1

    .line 320
    invoke-virtual {p0, v0, v4, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p2, -0x3

    .line 324
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v5

    if-eqz v5, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/2addr v0, v3

    add-int/lit8 v5, p2, -0x2

    .line 328
    invoke-virtual {p0, v1, v5, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v3

    .line 332
    invoke-virtual {p0, v1, v4, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v3

    .line 336
    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v3

    .line 340
    invoke-virtual {p0, v3, v5, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v3

    .line 344
    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method private d(II)I
    .locals 4

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x0

    .line 361
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v0

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x2

    .line 365
    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x1

    .line 369
    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x2

    .line 373
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x1

    .line 377
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v2

    .line 381
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v2

    const/4 v1, 0x2

    .line 385
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v2

    const/4 v1, 0x3

    .line 389
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method


# virtual methods
.method final a(IIII)Z
    .locals 0

    if-gez p1, :cond_0

    add-int/2addr p1, p3

    add-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0x7

    rsub-int/lit8 p3, p3, 0x4

    add-int/2addr p2, p3

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, p4

    add-int/lit8 p4, p4, 0x4

    and-int/lit8 p3, p4, 0x7

    rsub-int/lit8 p3, p3, 0x4

    add-int/2addr p1, p3

    .line 164
    :cond_1
    iget-object p3, p0, Lcom/google/a/d/a/a;->b:Lcom/google/a/c/b;

    invoke-virtual {p3, p2, p1}, Lcom/google/a/c/b;->b(II)V

    .line 165
    iget-object p3, p0, Lcom/google/a/d/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {p3, p2, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result p1

    return p1
.end method

.method final b(IIII)I
    .locals 5

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    .line 181
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p2, -0x1

    .line 185
    invoke-virtual {p0, v0, v3, p3, p4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p1, -0x1

    .line 189
    invoke-virtual {p0, v2, v1, p3, p4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 193
    invoke-virtual {p0, v2, v3, p3, p4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 197
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 201
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 205
    invoke-virtual {p0, p1, v3, p3, p4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 209
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

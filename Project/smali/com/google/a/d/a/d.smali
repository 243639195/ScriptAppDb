.class public final Lcom/google/a/d/a/d;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final a:Lcom/google/a/c/b/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/a/c/b/c;

    sget-object v1, Lcom/google/a/c/b/a;->f:Lcom/google/a/c/b/a;

    invoke-direct {v0, v1}, Lcom/google/a/c/b/c;-><init>(Lcom/google/a/c/b/a;)V

    iput-object v0, p0, Lcom/google/a/d/a/d;->a:Lcom/google/a/c/b/c;

    return-void
.end method

.method private a([[Z)Lcom/google/a/c/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/google/a/c/b;->a([[Z)Lcom/google/a/c/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/a/d/a/d;->a(Lcom/google/a/c/b;)Lcom/google/a/c/e;

    move-result-object p1

    return-object p1
.end method

.method private a([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/d;
        }
    .end annotation

    .line 107
    array-length v0, p1

    .line 109
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 111
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/a/d/a/d;->a:Lcom/google/a/c/b/c;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Lcom/google/a/c/b/c;->a([II)V
    :try_end_0
    .catch Lcom/google/a/c/b/e; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 121
    aget v0, v1, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 116
    :catch_0
    invoke-static {}, Lcom/google/a/d;->a()Lcom/google/a/d;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/a/c/b;)Lcom/google/a/c/e;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/google/a/d/a/a;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/google/a/d/a/a;-><init>(Lcom/google/a/c/b;)V

    .line 1047
    iget-object v1, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    .line 1077
    iget-object v2, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    .line 2083
    iget v2, v2, Lcom/google/a/d/a/e;->g:I

    .line 1077
    new-array v2, v2, [B

    .line 1083
    iget-object v3, v0, Lcom/google/a/d/a/a;->a:Lcom/google/a/c/b;

    .line 2406
    iget v3, v3, Lcom/google/a/c/b;->b:I

    .line 1084
    iget-object v4, v0, Lcom/google/a/d/a/a;->a:Lcom/google/a/c/b;

    .line 3399
    iget v4, v4, Lcom/google/a/c/b;->a:I

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v15, 0x2

    const/4 v5, 0x1

    if-ne v7, v3, :cond_7

    if-nez v8, :cond_7

    if-nez v9, :cond_7

    add-int/lit8 v9, v10, 0x1

    add-int/lit8 v14, v3, -0x1

    .line 4226
    invoke-virtual {v0, v14, v6, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v18

    shl-int/lit8 v18, v18, 0x1

    .line 4230
    invoke-virtual {v0, v14, v5, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v19

    if-eqz v19, :cond_0

    or-int/lit8 v18, v18, 0x1

    :cond_0
    shl-int/lit8 v18, v18, 0x1

    .line 4234
    invoke-virtual {v0, v14, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_1

    or-int/lit8 v18, v18, 0x1

    :cond_1
    shl-int/lit8 v14, v18, 0x1

    add-int/lit8 v15, v4, -0x2

    .line 4238
    invoke-virtual {v0, v6, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v15

    if-eqz v15, :cond_2

    or-int/lit8 v14, v14, 0x1

    :cond_2
    shl-int/2addr v14, v5

    add-int/lit8 v15, v4, -0x1

    .line 4242
    invoke-virtual {v0, v6, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_3

    or-int/lit8 v14, v14, 0x1

    :cond_3
    shl-int/2addr v14, v5

    .line 4246
    invoke-virtual {v0, v5, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_4

    or-int/lit8 v14, v14, 0x1

    :cond_4
    shl-int/2addr v14, v5

    const/4 v6, 0x2

    .line 4250
    invoke-virtual {v0, v6, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_5

    or-int/lit8 v14, v14, 0x1

    :cond_5
    shl-int/lit8 v6, v14, 0x1

    const/4 v14, 0x3

    .line 4254
    invoke-virtual {v0, v14, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_6

    or-int/lit8 v6, v6, 0x1

    :cond_6
    int-to-byte v6, v6

    .line 1095
    aput-byte v6, v2, v10

    add-int/lit8 v7, v7, -0x2

    add-int/lit8 v8, v8, 0x2

    move v10, v9

    const/4 v9, 0x4

    const/4 v15, 0x1

    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v6, v3, -0x2

    if-ne v7, v6, :cond_f

    if-nez v8, :cond_f

    and-int/lit8 v14, v4, 0x3

    if-eqz v14, :cond_f

    if-nez v11, :cond_f

    add-int/lit8 v11, v10, 0x1

    add-int/lit8 v14, v3, -0x3

    const/4 v15, 0x0

    .line 4271
    invoke-virtual {v0, v14, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    shl-int/2addr v14, v5

    .line 4275
    invoke-virtual {v0, v6, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_8

    or-int/lit8 v14, v14, 0x1

    :cond_8
    shl-int/lit8 v6, v14, 0x1

    add-int/lit8 v14, v3, -0x1

    .line 4279
    invoke-virtual {v0, v14, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_9

    or-int/lit8 v6, v6, 0x1

    :cond_9
    shl-int/2addr v6, v5

    add-int/lit8 v14, v4, -0x4

    .line 4283
    invoke-virtual {v0, v15, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_a

    or-int/lit8 v6, v6, 0x1

    :cond_a
    shl-int/2addr v6, v5

    add-int/lit8 v14, v4, -0x3

    .line 4287
    invoke-virtual {v0, v15, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_b

    or-int/lit8 v6, v6, 0x1

    :cond_b
    shl-int/2addr v6, v5

    add-int/lit8 v14, v4, -0x2

    .line 4291
    invoke-virtual {v0, v15, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_c

    or-int/lit8 v6, v6, 0x1

    :cond_c
    shl-int/2addr v6, v5

    add-int/lit8 v14, v4, -0x1

    .line 4295
    invoke-virtual {v0, v15, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_d

    or-int/lit8 v6, v6, 0x1

    :cond_d
    shl-int/2addr v6, v5

    .line 4299
    invoke-virtual {v0, v5, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_e

    or-int/lit8 v6, v6, 0x1

    :cond_e
    int-to-byte v6, v6

    .line 1100
    aput-byte v6, v2, v10

    add-int/lit8 v7, v7, -0x2

    add-int/lit8 v8, v8, 0x2

    move/from16 v21, v9

    move v10, v11

    const/4 v9, 0x4

    const/4 v11, 0x1

    :goto_1
    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_f
    add-int/lit8 v14, v3, 0x4

    if-ne v7, v14, :cond_17

    const/4 v14, 0x2

    if-ne v8, v14, :cond_17

    and-int/lit8 v14, v4, 0x7

    if-nez v14, :cond_17

    if-nez v12, :cond_17

    add-int/lit8 v6, v10, 0x1

    add-int/lit8 v12, v3, -0x1

    const/4 v14, 0x0

    .line 4316
    invoke-virtual {v0, v12, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v15

    shl-int/lit8 v14, v15, 0x1

    add-int/lit8 v15, v4, -0x1

    .line 4320
    invoke-virtual {v0, v12, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_10

    or-int/lit8 v14, v14, 0x1

    :cond_10
    shl-int/lit8 v12, v14, 0x1

    add-int/lit8 v14, v4, -0x3

    const/4 v5, 0x0

    .line 4324
    invoke-virtual {v0, v5, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_11

    or-int/lit8 v12, v12, 0x1

    :cond_11
    const/4 v5, 0x1

    shl-int/2addr v12, v5

    add-int/lit8 v5, v4, -0x2

    move/from16 v20, v6

    const/4 v6, 0x0

    .line 4328
    invoke-virtual {v0, v6, v5, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_12

    or-int/lit8 v12, v12, 0x1

    :cond_12
    move/from16 v21, v9

    const/4 v9, 0x1

    shl-int/2addr v12, v9

    .line 4332
    invoke-virtual {v0, v6, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_13

    or-int/lit8 v12, v12, 0x1

    :cond_13
    shl-int/lit8 v6, v12, 0x1

    .line 4336
    invoke-virtual {v0, v9, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_14

    or-int/lit8 v6, v6, 0x1

    :cond_14
    shl-int/2addr v6, v9

    .line 4340
    invoke-virtual {v0, v9, v5, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v5

    if-eqz v5, :cond_15

    or-int/lit8 v6, v6, 0x1

    :cond_15
    shl-int/lit8 v5, v6, 0x1

    .line 4344
    invoke-virtual {v0, v9, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_16

    or-int/lit8 v5, v5, 0x1

    :cond_16
    int-to-byte v5, v5

    .line 1105
    aput-byte v5, v2, v10

    add-int/lit8 v7, v7, -0x2

    add-int/lit8 v8, v8, 0x2

    move/from16 v10, v20

    const/4 v9, 0x4

    const/4 v12, 0x1

    goto :goto_1

    :cond_17
    move/from16 v21, v9

    if-ne v7, v6, :cond_1f

    if-nez v8, :cond_1f

    and-int/lit8 v5, v4, 0x7

    const/4 v9, 0x4

    if-ne v5, v9, :cond_20

    if-nez v13, :cond_20

    add-int/lit8 v5, v10, 0x1

    add-int/lit8 v13, v3, -0x3

    const/4 v14, 0x0

    .line 4361
    invoke-virtual {v0, v13, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    const/4 v15, 0x1

    shl-int/2addr v13, v15

    .line 4365
    invoke-virtual {v0, v6, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_18

    or-int/lit8 v13, v13, 0x1

    :cond_18
    shl-int/lit8 v6, v13, 0x1

    add-int/lit8 v13, v3, -0x1

    .line 4369
    invoke-virtual {v0, v13, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_19

    or-int/lit8 v6, v6, 0x1

    :cond_19
    shl-int/2addr v6, v15

    add-int/lit8 v13, v4, -0x2

    .line 4373
    invoke-virtual {v0, v14, v13, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_1a

    or-int/lit8 v6, v6, 0x1

    :cond_1a
    shl-int/2addr v6, v15

    add-int/lit8 v13, v4, -0x1

    .line 4377
    invoke-virtual {v0, v14, v13, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v16

    if-eqz v16, :cond_1b

    or-int/lit8 v6, v6, 0x1

    :cond_1b
    shl-int/2addr v6, v15

    .line 4381
    invoke-virtual {v0, v15, v13, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_1c

    or-int/lit8 v6, v6, 0x1

    :cond_1c
    shl-int/2addr v6, v15

    const/4 v14, 0x2

    .line 4385
    invoke-virtual {v0, v14, v13, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_1d

    or-int/lit8 v6, v6, 0x1

    :cond_1d
    shl-int/2addr v6, v15

    const/4 v14, 0x3

    .line 4389
    invoke-virtual {v0, v14, v13, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_1e

    or-int/lit8 v6, v6, 0x1

    :cond_1e
    int-to-byte v6, v6

    .line 1110
    aput-byte v6, v2, v10

    add-int/lit8 v7, v7, -0x2

    add-int/lit8 v8, v8, 0x2

    move v10, v5

    const/4 v13, 0x1

    goto :goto_2

    :cond_1f
    const/4 v9, 0x4

    :cond_20
    const/4 v15, 0x1

    :cond_21
    if-ge v7, v3, :cond_22

    if-ltz v8, :cond_22

    .line 1117
    iget-object v5, v0, Lcom/google/a/d/a/a;->b:Lcom/google/a/c/b;

    invoke-virtual {v5, v8, v7}, Lcom/google/a/c/b;->a(II)Z

    move-result v5

    if-nez v5, :cond_22

    add-int/lit8 v5, v10, 0x1

    .line 1118
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/google/a/d/a/a;->b(IIII)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v10

    move v10, v5

    :cond_22
    add-int/lit8 v7, v7, -0x2

    add-int/lit8 v8, v8, 0x2

    if-ltz v7, :cond_23

    if-lt v8, v4, :cond_21

    :cond_23
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x3

    :cond_24
    if-ltz v7, :cond_25

    if-ge v8, v4, :cond_25

    .line 1128
    iget-object v5, v0, Lcom/google/a/d/a/a;->b:Lcom/google/a/c/b;

    invoke-virtual {v5, v8, v7}, Lcom/google/a/c/b;->a(II)Z

    move-result v5

    if-nez v5, :cond_25

    add-int/lit8 v5, v10, 0x1

    .line 1129
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/google/a/d/a/a;->b(IIII)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v10

    move v10, v5

    :cond_25
    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v8, -0x2

    if-ge v7, v3, :cond_26

    if-gez v8, :cond_24

    :cond_26
    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v8, v8, 0x1

    :goto_2
    if-lt v7, v3, :cond_38

    if-lt v8, v4, :cond_38

    .line 1139
    iget-object v0, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    .line 5083
    iget v0, v0, Lcom/google/a/d/a/e;->g:I

    if-eq v10, v0, :cond_27

    .line 1140
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object v0

    throw v0

    .line 7087
    :cond_27
    iget-object v0, v1, Lcom/google/a/d/a/e;->f:Lcom/google/a/d/a/e$b;

    .line 7137
    iget-object v3, v0, Lcom/google/a/d/a/e$b;->b:[Lcom/google/a/d/a/e$a;

    .line 6054
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v5, v4, :cond_28

    aget-object v7, v3, v5

    .line 7156
    iget v7, v7, Lcom/google/a/d/a/e$a;->a:I

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 6059
    :cond_28
    new-array v4, v6, [Lcom/google/a/d/a/b;

    .line 6061
    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v6, v5, :cond_2a

    aget-object v8, v3, v6

    move v9, v7

    const/4 v7, 0x0

    .line 8156
    :goto_5
    iget v10, v8, Lcom/google/a/d/a/e$a;->a:I

    if-ge v7, v10, :cond_29

    .line 8160
    iget v10, v8, Lcom/google/a/d/a/e$a;->b:I

    .line 9133
    iget v11, v0, Lcom/google/a/d/a/e$b;->a:I

    add-int/2addr v11, v10

    add-int/lit8 v12, v9, 0x1

    .line 6065
    new-instance v13, Lcom/google/a/d/a/b;

    new-array v11, v11, [B

    invoke-direct {v13, v10, v11}, Lcom/google/a/d/a/b;-><init>(I[B)V

    aput-object v13, v4, v9

    add-int/lit8 v7, v7, 0x1

    move v9, v12

    goto :goto_5

    :cond_29
    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_4

    :cond_2a
    const/4 v6, 0x0

    .line 6072
    aget-object v3, v4, v6

    iget-object v3, v3, Lcom/google/a/d/a/b;->b:[B

    array-length v3, v3

    .line 10133
    iget v0, v0, Lcom/google/a/d/a/e$b;->a:I

    sub-int/2addr v3, v0

    add-int/lit8 v0, v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_6
    if-ge v5, v0, :cond_2c

    move v8, v6

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v7, :cond_2b

    .line 6082
    aget-object v9, v4, v6

    iget-object v9, v9, Lcom/google/a/d/a/b;->b:[B

    add-int/lit8 v10, v8, 0x1

    aget-byte v8, v2, v8

    aput-byte v8, v9, v5

    add-int/lit8 v6, v6, 0x1

    move v8, v10

    goto :goto_7

    :cond_2b
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_6

    .line 11063
    :cond_2c
    iget v1, v1, Lcom/google/a/d/a/e;->a:I

    const/16 v5, 0x18

    if-ne v1, v5, :cond_2d

    goto :goto_8

    :cond_2d
    const/4 v15, 0x0

    :goto_8
    if-eqz v15, :cond_2e

    const/16 v1, 0x8

    goto :goto_9

    :cond_2e
    move v1, v7

    :goto_9
    const/4 v5, 0x0

    :goto_a
    if-ge v5, v1, :cond_2f

    .line 6090
    aget-object v8, v4, v5

    iget-object v8, v8, Lcom/google/a/d/a/b;->b:[B

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, v2, v6

    aput-byte v6, v8, v0

    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_a

    :cond_2f
    const/4 v5, 0x0

    .line 6094
    aget-object v0, v4, v5

    iget-object v0, v0, Lcom/google/a/d/a/b;->b:[B

    array-length v0, v0

    :goto_b
    if-ge v3, v0, :cond_33

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v7, :cond_32

    if-eqz v15, :cond_30

    add-int/lit8 v8, v1, 0x8

    .line 6097
    rem-int/2addr v8, v7

    goto :goto_d

    :cond_30
    move v8, v1

    :goto_d
    if-eqz v15, :cond_31

    const/4 v9, 0x7

    if-le v8, v9, :cond_31

    add-int/lit8 v9, v3, -0x1

    goto :goto_e

    :cond_31
    move v9, v3

    .line 6099
    :goto_e
    aget-object v8, v4, v8

    iget-object v8, v8, Lcom/google/a/d/a/b;->b:[B

    add-int/lit8 v10, v6, 0x1

    aget-byte v6, v2, v6

    aput-byte v6, v8, v9

    add-int/lit8 v1, v1, 0x1

    move v6, v10

    goto :goto_c

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 6103
    :cond_33
    array-length v0, v2

    if-eq v6, v0, :cond_34

    .line 6104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 76
    :cond_34
    array-length v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_35

    aget-object v3, v4, v1

    .line 11111
    iget v3, v3, Lcom/google/a/d/a/b;->a:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 79
    :cond_35
    new-array v0, v2, [B

    .line 81
    array-length v1, v4

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_37

    .line 84
    aget-object v3, v4, v2

    .line 11115
    iget-object v6, v3, Lcom/google/a/d/a/b;->b:[B

    .line 12111
    iget v3, v3, Lcom/google/a/d/a/b;->a:I

    move-object/from16 v14, p0

    .line 87
    invoke-direct {v14, v6, v3}, Lcom/google/a/d/a/d;->a([BI)V

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v3, :cond_36

    mul-int v8, v7, v1

    add-int/2addr v8, v2

    .line 90
    aget-byte v9, v6, v7

    aput-byte v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_37
    move-object/from16 v14, p0

    .line 95
    invoke-static {v0}, Lcom/google/a/d/a/c;->a([B)Lcom/google/a/c/e;

    move-result-object v0

    return-object v0

    :cond_38
    move-object/from16 v14, p0

    const/4 v5, 0x0

    move/from16 v9, v21

    const/4 v6, 0x0

    goto/16 :goto_0
.end method

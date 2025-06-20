.class public final Lcom/google/a/c/j;
.super Lcom/google/a/c/h;
.source "HybridBinarizer.java"


# static fields
.field private static final b:I = 0x3

.field private static final c:I = 0x8

.field private static final d:I = 0x7

.field private static final e:I = 0x28

.field private static final f:I = 0x18


# instance fields
.field private g:Lcom/google/a/c/b;


# direct methods
.method public constructor <init>(Lcom/google/a/j;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/a/c/h;-><init>(Lcom/google/a/j;)V

    return-void
.end method

.method private static a(II)I
    .locals 1

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    if-le p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method private static a([BIIIILcom/google/a/c/b;)V
    .locals 7

    mul-int v0, p2, p4

    add-int/2addr v0, p1

    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    add-int v5, v2, v4

    .line 149
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    if-gt v5, p3, :cond_0

    add-int v5, p1, v4

    add-int v6, p2, v0

    .line 150
    invoke-virtual {p5, v5, v6}, Lcom/google/a/c/b;->b(II)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, p4

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a([BIIII[[ILcom/google/a/c/b;)V
    .locals 19

    move/from16 v0, p1

    move/from16 v1, p2

    const/16 v2, 0x8

    add-int/lit8 v3, p4, -0x8

    add-int/lit8 v4, p3, -0x8

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_7

    shl-int/lit8 v7, v6, 0x3

    if-le v7, v3, :cond_0

    move v7, v3

    :cond_0
    add-int/lit8 v8, v1, -0x3

    .line 115
    invoke-static {v6, v8}, Lcom/google/a/c/j;->a(II)I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v0, :cond_6

    shl-int/lit8 v10, v9, 0x3

    if-le v10, v4, :cond_1

    move v10, v4

    :cond_1
    add-int/lit8 v11, v0, -0x3

    .line 121
    invoke-static {v9, v11}, Lcom/google/a/c/j;->a(II)I

    move-result v11

    const/4 v12, -0x2

    const/4 v13, 0x0

    :goto_2
    const/4 v14, 0x2

    if-gt v12, v14, :cond_2

    add-int v15, v8, v12

    .line 124
    aget-object v15, p5, v15

    add-int/lit8 v16, v11, -0x2

    .line 125
    aget v16, v15, v16

    add-int/lit8 v17, v11, -0x1

    aget v17, v15, v17

    add-int v16, v16, v17

    aget v17, v15, v11

    add-int v16, v16, v17

    add-int/lit8 v17, v11, 0x1

    aget v17, v15, v17

    add-int v16, v16, v17

    add-int/2addr v14, v11

    aget v14, v15, v14

    add-int v16, v16, v14

    add-int v13, v13, v16

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 127
    :cond_2
    div-int/lit8 v13, v13, 0x19

    mul-int v11, v7, p3

    add-int/2addr v11, v10

    move v12, v11

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v2, :cond_5

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v2, :cond_4

    add-int v15, v12, v14

    .line 3149
    aget-byte v2, p0, v15

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v13, :cond_3

    add-int v2, v10, v14

    add-int v5, v7, v11

    move-object/from16 v0, p6

    .line 3150
    invoke-virtual {v0, v2, v5}, Lcom/google/a/c/b;->b(II)V

    goto :goto_5

    :cond_3
    move-object/from16 v0, p6

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p1

    const/16 v2, 0x8

    goto :goto_4

    :cond_4
    move-object/from16 v0, p6

    add-int/lit8 v11, v11, 0x1

    add-int v12, v12, p3

    move/from16 v0, p1

    const/16 v2, 0x8

    goto :goto_3

    :cond_5
    move-object/from16 v0, p6

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p1

    const/16 v2, 0x8

    goto :goto_1

    :cond_6
    move-object/from16 v0, p6

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p1

    const/16 v2, 0x8

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private static a([BIIII)[[I
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    const/16 v2, 0x8

    add-int/lit8 v3, p4, -0x8

    add-int/lit8 v4, p3, -0x8

    .line 168
    filled-new-array {v1, v0}, [I

    move-result-object v5

    const-class v6, I

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_a

    shl-int/lit8 v8, v7, 0x3

    if-le v8, v3, :cond_0

    move v8, v3

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v0, :cond_9

    shl-int/lit8 v10, v9, 0x3

    if-le v10, v4, :cond_1

    move v10, v4

    :cond_1
    mul-int v11, v8, p3

    add-int/2addr v11, v10

    move v14, v11

    const/16 v6, 0xff

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v11, v2, :cond_7

    move v10, v13

    move v13, v6

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_4

    add-int v15, v14, v6

    .line 184
    aget-byte v2, p0, v15

    const/16 v0, 0xff

    and-int/2addr v2, v0

    add-int/2addr v12, v2

    if-ge v2, v13, :cond_2

    move v13, v2

    :cond_2
    if-le v2, v10, :cond_3

    move v10, v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p1

    const/16 v2, 0x8

    goto :goto_3

    :cond_4
    sub-int v0, v10, v13

    const/16 v2, 0x18

    if-le v0, v2, :cond_6

    :goto_4
    add-int/lit8 v11, v11, 0x1

    add-int v14, v14, p3

    const/16 v0, 0x8

    if-ge v11, v0, :cond_6

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_5

    add-int v6, v14, v2

    .line 199
    aget-byte v6, p0, v6

    const/16 v0, 0xff

    and-int/2addr v6, v0

    add-int/2addr v12, v6

    add-int/lit8 v2, v2, 0x1

    const/16 v0, 0x8

    goto :goto_5

    :cond_5
    const/16 v0, 0xff

    goto :goto_4

    :cond_6
    const/16 v0, 0xff

    add-int/lit8 v11, v11, 0x1

    add-int v14, v14, p3

    move v6, v13

    move/from16 v0, p1

    const/16 v2, 0x8

    move v13, v10

    goto :goto_2

    :cond_7
    shr-int/lit8 v0, v12, 0x6

    sub-int/2addr v13, v6

    const/16 v2, 0x18

    if-gt v13, v2, :cond_8

    .line 214
    div-int/lit8 v0, v6, 0x2

    if-lez v7, :cond_8

    if-lez v9, :cond_8

    add-int/lit8 v2, v7, -0x1

    .line 224
    aget-object v10, v5, v2

    aget v10, v10, v9

    aget-object v11, v5, v7

    add-int/lit8 v12, v9, -0x1

    aget v11, v11, v12

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    aget-object v2, v5, v2

    aget v2, v2, v12

    add-int/2addr v10, v2

    div-int/lit8 v2, v10, 0x4

    if-ge v6, v2, :cond_8

    move v0, v2

    .line 231
    :cond_8
    aget-object v2, v5, v7

    aput v0, v2, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p1

    const/16 v2, 0x8

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, p1

    const/16 v2, 0x8

    goto/16 :goto_0

    :cond_a
    return-object v5
.end method


# virtual methods
.method public final a(Lcom/google/a/j;)Lcom/google/a/b;
    .locals 1

    .line 93
    new-instance v0, Lcom/google/a/c/j;

    invoke-direct {v0, p1}, Lcom/google/a/c/j;-><init>(Lcom/google/a/j;)V

    return-object v0
.end method

.method public final a()Lcom/google/a/c/b;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 63
    iget-object v1, v0, Lcom/google/a/c/j;->g:Lcom/google/a/c/b;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, v0, Lcom/google/a/c/j;->g:Lcom/google/a/c/b;

    return-object v1

    .line 1039
    :cond_0
    iget-object v1, v0, Lcom/google/a/b;->a:Lcom/google/a/j;

    .line 1066
    iget v2, v1, Lcom/google/a/j;->a:I

    .line 1073
    iget v3, v1, Lcom/google/a/j;->b:I

    const/16 v4, 0x28

    if-lt v2, v4, :cond_16

    if-lt v3, v4, :cond_16

    .line 70
    invoke-virtual {v1}, Lcom/google/a/j;->a()[B

    move-result-object v1

    shr-int/lit8 v4, v2, 0x3

    and-int/lit8 v5, v2, 0x7

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    shr-int/lit8 v5, v3, 0x3

    and-int/lit8 v6, v3, 0x7

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v6, v3, -0x8

    add-int/lit8 v7, v2, -0x8

    .line 1168
    filled-new-array {v5, v4}, [I

    move-result-object v8

    const-class v9, I

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    const/4 v10, 0x0

    :goto_0
    const/16 v13, 0x8

    if-ge v10, v5, :cond_d

    shl-int/lit8 v14, v10, 0x3

    if-le v14, v6, :cond_3

    move v14, v6

    :cond_3
    const/4 v15, 0x0

    :goto_1
    if-ge v15, v4, :cond_c

    shl-int/lit8 v9, v15, 0x3

    if-le v9, v7, :cond_4

    move v9, v7

    :cond_4
    mul-int v16, v14, v2

    add-int v16, v16, v9

    move/from16 v19, v16

    const/4 v9, 0x0

    const/16 v12, 0xff

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_2
    if-ge v9, v13, :cond_a

    move v11, v12

    move/from16 v20, v14

    move/from16 v14, v17

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v13, :cond_7

    add-int v17, v19, v12

    .line 1184
    aget-byte v13, v1, v17

    const/16 v0, 0xff

    and-int/2addr v13, v0

    add-int v16, v16, v13

    if-ge v13, v11, :cond_5

    move v11, v13

    :cond_5
    if-le v13, v14, :cond_6

    move v14, v13

    :cond_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    const/16 v13, 0x8

    goto :goto_3

    :cond_7
    sub-int v0, v14, v11

    const/16 v12, 0x18

    if-le v0, v12, :cond_9

    :cond_8
    add-int/lit8 v9, v9, 0x1

    add-int v19, v19, v2

    const/16 v0, 0x8

    if-ge v9, v0, :cond_9

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v0, :cond_8

    add-int v0, v19, v12

    .line 1199
    aget-byte v0, v1, v0

    const/16 v13, 0xff

    and-int/2addr v0, v13

    add-int v16, v16, v0

    add-int/lit8 v12, v12, 0x1

    const/16 v0, 0x8

    goto :goto_4

    :cond_9
    add-int/lit8 v9, v9, 0x1

    add-int v19, v19, v2

    move v12, v11

    move/from16 v17, v14

    move/from16 v14, v20

    move-object/from16 v0, p0

    const/16 v13, 0x8

    goto :goto_2

    :cond_a
    move/from16 v20, v14

    shr-int/lit8 v0, v16, 0x6

    sub-int v9, v17, v12

    const/16 v11, 0x18

    if-gt v9, v11, :cond_b

    .line 1214
    div-int/lit8 v0, v12, 0x2

    if-lez v10, :cond_b

    if-lez v15, :cond_b

    add-int/lit8 v9, v10, -0x1

    .line 1224
    aget-object v11, v8, v9

    aget v11, v11, v15

    aget-object v13, v8, v10

    add-int/lit8 v14, v15, -0x1

    aget v13, v13, v14

    const/16 v16, 0x2

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v11, v13

    aget-object v9, v8, v9

    aget v9, v9, v14

    add-int/2addr v11, v9

    div-int/lit8 v9, v11, 0x4

    if-ge v12, v9, :cond_b

    move v0, v9

    .line 1231
    :cond_b
    aget-object v9, v8, v10

    aput v0, v9, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v20

    move-object/from16 v0, p0

    const/16 v13, 0x8

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 81
    :cond_d
    new-instance v0, Lcom/google/a/c/b;

    invoke-direct {v0, v2, v3}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v5, :cond_15

    shl-int/lit8 v9, v3, 0x3

    if-le v9, v6, :cond_e

    move v9, v6

    :cond_e
    add-int/lit8 v10, v5, -0x3

    .line 2115
    invoke-static {v3, v10}, Lcom/google/a/c/j;->a(II)I

    move-result v10

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v4, :cond_14

    shl-int/lit8 v12, v11, 0x3

    if-le v12, v7, :cond_f

    move v12, v7

    :cond_f
    add-int/lit8 v13, v4, -0x3

    .line 2121
    invoke-static {v11, v13}, Lcom/google/a/c/j;->a(II)I

    move-result v13

    const/4 v14, -0x2

    move/from16 v21, v4

    const/4 v4, 0x2

    const/4 v15, 0x0

    :goto_7
    if-gt v14, v4, :cond_10

    add-int v4, v10, v14

    .line 2124
    aget-object v4, v8, v4

    add-int/lit8 v16, v13, -0x2

    .line 2125
    aget v16, v4, v16

    add-int/lit8 v17, v13, -0x1

    aget v17, v4, v17

    add-int v16, v16, v17

    aget v17, v4, v13

    add-int v16, v16, v17

    add-int/lit8 v17, v13, 0x1

    aget v17, v4, v17

    add-int v16, v16, v17

    const/16 v17, 0x2

    add-int/lit8 v18, v13, 0x2

    aget v4, v4, v18

    add-int v16, v16, v4

    add-int v15, v15, v16

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x2

    goto :goto_7

    :cond_10
    const/16 v17, 0x2

    .line 2127
    div-int/lit8 v15, v15, 0x19

    mul-int v4, v9, v2

    add-int/2addr v4, v12

    move v13, v4

    const/4 v4, 0x0

    :goto_8
    const/16 v14, 0x8

    if-ge v4, v14, :cond_13

    move/from16 v22, v5

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v14, :cond_12

    add-int v16, v13, v5

    .line 2149
    aget-byte v14, v1, v16

    move-object/from16 v23, v1

    const/16 v1, 0xff

    and-int/2addr v14, v1

    if-gt v14, v15, :cond_11

    add-int v14, v12, v5

    add-int v1, v9, v4

    .line 2150
    invoke-virtual {v0, v14, v1}, Lcom/google/a/c/b;->b(II)V

    :cond_11
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v23

    const/16 v14, 0x8

    goto :goto_9

    :cond_12
    move-object/from16 v23, v1

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v13, v2

    move/from16 v5, v22

    goto :goto_8

    :cond_13
    move-object/from16 v23, v1

    move/from16 v22, v5

    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v21

    goto :goto_6

    :cond_14
    move-object/from16 v23, v1

    move/from16 v21, v4

    move/from16 v22, v5

    const/16 v17, 0x2

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_15
    move-object/from16 v1, p0

    .line 83
    iput-object v0, v1, Lcom/google/a/c/j;->g:Lcom/google/a/c/b;

    goto :goto_a

    :cond_16
    move-object v1, v0

    .line 86
    invoke-super/range {p0 .. p0}, Lcom/google/a/c/h;->a()Lcom/google/a/c/b;

    move-result-object v0

    iput-object v0, v1, Lcom/google/a/c/j;->g:Lcom/google/a/c/b;

    .line 88
    :goto_a
    iget-object v0, v1, Lcom/google/a/c/j;->g:Lcom/google/a/c/b;

    return-object v0
.end method

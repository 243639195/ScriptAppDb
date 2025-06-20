.class public final Lcom/google/a/i/a/e;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final a:Lcom/google/a/c/b/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/a/c/b/c;

    sget-object v1, Lcom/google/a/c/b/a;->e:Lcom/google/a/c/b/a;

    invoke-direct {v0, v1}, Lcom/google/a/c/b/c;-><init>(Lcom/google/a/c/b/a;)V

    iput-object v0, p0, Lcom/google/a/i/a/e;->a:Lcom/google/a/c/b/c;

    return-void
.end method

.method private a(Lcom/google/a/c/b;)Lcom/google/a/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/google/a/i/a/e;->a(Lcom/google/a/c/b;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/a/i/a/a;Ljava/util/Map;)Lcom/google/a/c/e;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/i/a/a;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/c/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/google/a/i/a/a;->b()Lcom/google/a/i/a/j;

    move-result-object v1

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/google/a/i/a/a;->a()Lcom/google/a/i/a/g;

    move-result-object v2

    .line 5135
    iget-object v2, v2, Lcom/google/a/i/a/g;->a:Lcom/google/a/i/a/f;

    .line 5155
    invoke-virtual/range {p1 .. p1}, Lcom/google/a/i/a/a;->a()Lcom/google/a/i/a/g;

    move-result-object v3

    .line 5156
    invoke-virtual/range {p1 .. p1}, Lcom/google/a/i/a/a;->b()Lcom/google/a/i/a/j;

    move-result-object v4

    .line 5160
    invoke-static {}, Lcom/google/a/i/a/c;->values()[Lcom/google/a/i/a/c;

    move-result-object v5

    .line 6139
    iget-byte v3, v3, Lcom/google/a/i/a/g;->b:B

    .line 5160
    aget-object v3, v5, v3

    .line 5161
    iget-object v5, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    .line 6406
    iget v5, v5, Lcom/google/a/c/b;->b:I

    .line 5162
    iget-object v6, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v3, v6, v5}, Lcom/google/a/i/a/c;->a(Lcom/google/a/c/b;I)V

    .line 7140
    invoke-virtual {v4}, Lcom/google/a/i/a/j;->a()I

    move-result v3

    .line 7141
    new-instance v6, Lcom/google/a/c/b;

    invoke-direct {v6, v3}, Lcom/google/a/c/b;-><init>(I)V

    const/16 v7, 0x9

    const/4 v8, 0x0

    .line 7144
    invoke-virtual {v6, v8, v8, v7, v7}, Lcom/google/a/c/b;->a(IIII)V

    add-int/lit8 v9, v3, -0x8

    const/16 v10, 0x8

    .line 7146
    invoke-virtual {v6, v9, v8, v10, v7}, Lcom/google/a/c/b;->a(IIII)V

    .line 7148
    invoke-virtual {v6, v8, v9, v7, v10}, Lcom/google/a/c/b;->a(IIII)V

    .line 7151
    iget-object v9, v4, Lcom/google/a/i/a/j;->b:[I

    array-length v9, v9

    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x2

    if-ge v11, v9, :cond_4

    .line 7153
    iget-object v13, v4, Lcom/google/a/i/a/j;->b:[I

    aget v13, v13, v11

    sub-int/2addr v13, v12

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v9, :cond_3

    if-nez v11, :cond_0

    if-eqz v14, :cond_2

    add-int/lit8 v15, v9, -0x1

    if-eq v14, v15, :cond_2

    :cond_0
    add-int/lit8 v15, v9, -0x1

    if-ne v11, v15, :cond_1

    if-eqz v14, :cond_2

    .line 7159
    :cond_1
    iget-object v15, v4, Lcom/google/a/i/a/j;->b:[I

    aget v15, v15, v14

    sub-int/2addr v15, v12

    const/4 v10, 0x5

    invoke-virtual {v6, v15, v13, v10, v10}, Lcom/google/a/c/b;->a(IIII)V

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const/16 v10, 0x8

    goto :goto_1

    :cond_3
    add-int/lit8 v11, v11, 0x1

    const/16 v10, 0x8

    goto :goto_0

    :cond_4
    add-int/lit8 v9, v3, -0x11

    const/4 v10, 0x6

    const/4 v11, 0x1

    .line 7164
    invoke-virtual {v6, v10, v7, v11, v9}, Lcom/google/a/c/b;->a(IIII)V

    .line 7166
    invoke-virtual {v6, v7, v10, v9, v11}, Lcom/google/a/c/b;->a(IIII)V

    .line 7168
    iget v7, v4, Lcom/google/a/i/a/j;->a:I

    if-le v7, v10, :cond_5

    add-int/lit8 v3, v3, -0xb

    const/4 v7, 0x3

    .line 7170
    invoke-virtual {v6, v3, v8, v7, v10}, Lcom/google/a/c/b;->a(IIII)V

    .line 7172
    invoke-virtual {v6, v8, v3, v10, v7}, Lcom/google/a/c/b;->a(IIII)V

    .line 8074
    :cond_5
    iget v3, v4, Lcom/google/a/i/a/j;->c:I

    .line 5167
    new-array v3, v3, [B

    add-int/lit8 v7, v5, -0x1

    move v9, v7

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_2
    if-lez v9, :cond_d

    if-ne v9, v10, :cond_6

    add-int/lit8 v9, v9, -0x1

    :cond_6
    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v13

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v5, :cond_c

    if-eqz v14, :cond_7

    sub-int v18, v7, v13

    move/from16 v10, v18

    goto :goto_4

    :cond_7
    move v10, v13

    :goto_4
    move/from16 v18, v16

    move/from16 v16, v15

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v12, :cond_b

    sub-int v12, v9, v15

    .line 5183
    invoke-virtual {v6, v12, v10}, Lcom/google/a/c/b;->a(II)Z

    move-result v19

    if-nez v19, :cond_a

    add-int/lit8 v11, v17, 0x1

    shl-int/lit8 v17, v18, 0x1

    .line 5187
    iget-object v8, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v8, v12, v10}, Lcom/google/a/c/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_8

    or-int/lit8 v8, v17, 0x1

    goto :goto_6

    :cond_8
    move/from16 v8, v17

    :goto_6
    const/16 v12, 0x8

    if-ne v11, v12, :cond_9

    add-int/lit8 v11, v16, 0x1

    int-to-byte v8, v8

    .line 5192
    aput-byte v8, v3, v16

    move/from16 v16, v11

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_7

    :cond_9
    move/from16 v18, v8

    move/from16 v17, v11

    goto :goto_7

    :cond_a
    const/16 v12, 0x8

    :goto_7
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    goto :goto_5

    :cond_b
    const/16 v12, 0x8

    add-int/lit8 v13, v13, 0x1

    move/from16 v15, v16

    move/from16 v16, v18

    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x1

    const/4 v12, 0x2

    goto :goto_3

    :cond_c
    const/16 v12, 0x8

    xor-int/lit8 v14, v14, 0x1

    add-int/lit8 v9, v9, -0x2

    move v13, v15

    move/from16 v15, v16

    move/from16 v16, v17

    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x1

    const/4 v12, 0x2

    goto :goto_2

    .line 9074
    :cond_d
    iget v0, v4, Lcom/google/a/i/a/j;->c:I

    if-eq v13, v0, :cond_e

    .line 5202
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object v0

    throw v0

    .line 10051
    :cond_e
    array-length v0, v3

    .line 11074
    iget v4, v1, Lcom/google/a/i/a/j;->c:I

    if-eq v0, v4, :cond_f

    .line 10052
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 10057
    :cond_f
    invoke-virtual {v1, v2}, Lcom/google/a/i/a/j;->a(Lcom/google/a/i/a/f;)Lcom/google/a/i/a/j$b;

    move-result-object v0

    .line 11210
    iget-object v4, v0, Lcom/google/a/i/a/j$b;->b:[Lcom/google/a/i/a/j$a;

    .line 10062
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_8
    if-ge v6, v5, :cond_10

    aget-object v8, v4, v6

    .line 11229
    iget v8, v8, Lcom/google/a/i/a/j$a;->a:I

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 10067
    :cond_10
    new-array v5, v7, [Lcom/google/a/i/a/b;

    .line 10069
    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_9
    if-ge v7, v6, :cond_12

    aget-object v9, v4, v7

    move v10, v8

    const/4 v8, 0x0

    .line 12229
    :goto_a
    iget v11, v9, Lcom/google/a/i/a/j$a;->a:I

    if-ge v8, v11, :cond_11

    .line 12233
    iget v11, v9, Lcom/google/a/i/a/j$a;->b:I

    .line 13194
    iget v12, v0, Lcom/google/a/i/a/j$b;->a:I

    add-int/2addr v12, v11

    add-int/lit8 v13, v10, 0x1

    .line 10073
    new-instance v14, Lcom/google/a/i/a/b;

    new-array v12, v12, [B

    invoke-direct {v14, v11, v12}, Lcom/google/a/i/a/b;-><init>(I[B)V

    aput-object v14, v5, v10

    add-int/lit8 v8, v8, 0x1

    move v10, v13

    goto :goto_a

    :cond_11
    add-int/lit8 v7, v7, 0x1

    move v8, v10

    goto :goto_9

    :cond_12
    const/4 v7, 0x0

    .line 10079
    aget-object v4, v5, v7

    iget-object v4, v4, Lcom/google/a/i/a/b;->b:[B

    array-length v4, v4

    .line 10080
    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_b
    if-ltz v6, :cond_13

    .line 10082
    aget-object v7, v5, v6

    iget-object v7, v7, Lcom/google/a/i/a/b;->b:[B

    array-length v7, v7

    if-eq v7, v4, :cond_13

    add-int/lit8 v6, v6, -0x1

    goto :goto_b

    :cond_13
    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 14194
    iget v0, v0, Lcom/google/a/i/a/j$b;->a:I

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_c
    if-ge v0, v4, :cond_15

    move v9, v7

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v8, :cond_14

    .line 10096
    aget-object v10, v5, v7

    iget-object v10, v10, Lcom/google/a/i/a/b;->b:[B

    add-int/lit8 v11, v9, 0x1

    aget-byte v9, v3, v9

    aput-byte v9, v10, v0

    add-int/lit8 v7, v7, 0x1

    move v9, v11

    goto :goto_d

    :cond_14
    add-int/lit8 v0, v0, 0x1

    move v7, v9

    goto :goto_c

    :cond_15
    move v0, v6

    :goto_e
    if-ge v0, v8, :cond_16

    .line 10101
    aget-object v9, v5, v0

    iget-object v9, v9, Lcom/google/a/i/a/b;->b:[B

    add-int/lit8 v10, v7, 0x1

    aget-byte v7, v3, v7

    aput-byte v7, v9, v4

    add-int/lit8 v0, v0, 0x1

    move v7, v10

    goto :goto_e

    :cond_16
    const/4 v0, 0x0

    .line 10104
    aget-object v9, v5, v0

    iget-object v9, v9, Lcom/google/a/i/a/b;->b:[B

    array-length v9, v9

    :goto_f
    if-ge v4, v9, :cond_19

    move v10, v7

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v8, :cond_18

    if-ge v7, v6, :cond_17

    move v11, v4

    goto :goto_11

    :cond_17
    add-int/lit8 v11, v4, 0x1

    .line 10108
    :goto_11
    aget-object v12, v5, v7

    iget-object v12, v12, Lcom/google/a/i/a/b;->b:[B

    add-int/lit8 v13, v10, 0x1

    aget-byte v10, v3, v10

    aput-byte v10, v12, v11

    add-int/lit8 v7, v7, 0x1

    move v10, v13

    goto :goto_10

    :cond_18
    add-int/lit8 v4, v4, 0x1

    move v7, v10

    goto :goto_f

    .line 142
    :cond_19
    array-length v3, v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_12
    if-ge v4, v3, :cond_1a

    aget-object v7, v5, v4

    .line 15115
    iget v7, v7, Lcom/google/a/i/a/b;->a:I

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 145
    :cond_1a
    new-array v3, v6, [B

    .line 149
    array-length v4, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_13
    if-ge v6, v4, :cond_1c

    aget-object v8, v5, v6

    .line 15119
    iget-object v9, v8, Lcom/google/a/i/a/b;->b:[B

    .line 16115
    iget v8, v8, Lcom/google/a/i/a/b;->a:I

    move-object/from16 v10, p0

    .line 152
    invoke-direct {v10, v9, v8}, Lcom/google/a/i/a/e;->a([BI)V

    move v11, v7

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v8, :cond_1b

    add-int/lit8 v12, v11, 0x1

    .line 154
    aget-byte v13, v9, v7

    aput-byte v13, v3, v11

    add-int/lit8 v7, v7, 0x1

    move v11, v12

    goto :goto_14

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    move v7, v11

    goto :goto_13

    :cond_1c
    move-object/from16 v10, p0

    move-object/from16 v6, p2

    .line 159
    invoke-static {v3, v1, v2, v6}, Lcom/google/a/i/a/d;->a([BLcom/google/a/i/a/j;Lcom/google/a/i/a/f;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object v0

    return-object v0
.end method

.method private a([[Z)Lcom/google/a/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation

    .line 1060
    invoke-static {p1}, Lcom/google/a/c/b;->a([[Z)Lcom/google/a/c/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/i/a/e;->a(Lcom/google/a/c/b;Ljava/util/Map;)Lcom/google/a/c/e;

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

    .line 171
    array-length v0, p1

    .line 173
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 175
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/a/i/a/e;->a:Lcom/google/a/c/b/c;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Lcom/google/a/c/b/c;->a([II)V
    :try_end_0
    .catch Lcom/google/a/c/b/e; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 185
    aget v0, v1, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 180
    :catch_0
    invoke-static {}, Lcom/google/a/d;->a()Lcom/google/a/d;

    move-result-object p1

    throw p1
.end method

.method private b([[Z)Lcom/google/a/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z)",
            "Lcom/google/a/c/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation

    .line 60
    invoke-static {p1}, Lcom/google/a/c/b;->a([[Z)Lcom/google/a/c/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/i/a/e;->a(Lcom/google/a/c/b;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/a/c/b;Ljava/util/Map;)Lcom/google/a/c/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/b;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/c/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/google/a/i/a/a;

    invoke-direct {v0, p1}, Lcom/google/a/i/a/a;-><init>(Lcom/google/a/c/b;)V

    const/4 p1, 0x0

    .line 84
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/google/a/i/a/e;->a(Lcom/google/a/i/a/a;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/a/h; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/a/d; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, p1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, p1

    .line 1211
    :goto_0
    :try_start_1
    iget-object v3, v0, Lcom/google/a/i/a/a;->c:Lcom/google/a/i/a/g;

    if-eqz v3, :cond_0

    .line 1214
    invoke-static {}, Lcom/google/a/i/a/c;->values()[Lcom/google/a/i/a/c;

    move-result-object v3

    iget-object v4, v0, Lcom/google/a/i/a/a;->c:Lcom/google/a/i/a/g;

    .line 2139
    iget-byte v4, v4, Lcom/google/a/i/a/g;->b:B

    .line 1214
    aget-object v3, v3, v4

    .line 1215
    iget-object v4, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    .line 2406
    iget v4, v4, Lcom/google/a/c/b;->b:I

    .line 1216
    iget-object v5, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v3, v5, v4}, Lcom/google/a/i/a/c;->a(Lcom/google/a/c/b;I)V

    .line 3228
    :cond_0
    iput-object p1, v0, Lcom/google/a/i/a/a;->b:Lcom/google/a/i/a/j;

    .line 3229
    iput-object p1, v0, Lcom/google/a/i/a/a;->c:Lcom/google/a/i/a/g;

    const/4 p1, 0x1

    .line 3230
    iput-boolean p1, v0, Lcom/google/a/i/a/a;->d:Z

    .line 100
    invoke-virtual {v0}, Lcom/google/a/i/a/a;->b()Lcom/google/a/i/a/j;

    .line 103
    invoke-virtual {v0}, Lcom/google/a/i/a/a;->a()Lcom/google/a/i/a/g;

    const/4 p1, 0x0

    .line 3235
    :goto_1
    iget-object v3, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    .line 3399
    iget v3, v3, Lcom/google/a/c/b;->a:I

    if-ge p1, v3, :cond_3

    add-int/lit8 v3, p1, 0x1

    move v4, v3

    .line 3236
    :goto_2
    iget-object v5, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    .line 3406
    iget v5, v5, Lcom/google/a/c/b;->b:I

    if-ge v4, v5, :cond_2

    .line 3237
    iget-object v5, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v5, p1, v4}, Lcom/google/a/c/b;->a(II)Z

    move-result v5

    iget-object v6, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v6, v4, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result v6

    if-eq v5, v6, :cond_1

    .line 3238
    iget-object v5, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v5, v4, p1}, Lcom/google/a/c/b;->c(II)V

    .line 3239
    iget-object v5, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v5, p1, v4}, Lcom/google/a/c/b;->c(II)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move p1, v3

    goto :goto_1

    .line 114
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/google/a/i/a/e;->a(Lcom/google/a/i/a/a;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object p1

    .line 117
    new-instance p2, Lcom/google/a/i/a/i;

    invoke-direct {p2}, Lcom/google/a/i/a/i;-><init>()V

    .line 4137
    iput-object p2, p1, Lcom/google/a/c/e;->h:Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/a/h; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/a/d; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    :catch_2
    if-eqz v1, :cond_4

    .line 124
    throw v1

    .line 126
    :cond_4
    throw v2
.end method

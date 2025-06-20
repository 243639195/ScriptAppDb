.class public abstract Lcom/google/a/g/r;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/google/a/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a([I[IF)F
    .locals 9

    .line 252
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 256
    aget v5, p0, v2

    add-int/2addr v3, v5

    .line 257
    aget v5, p1, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v3, v4, :cond_1

    return v2

    :cond_1
    int-to-float v3, v3

    int-to-float v4, v4

    div-float v4, v3, v4

    mul-float p2, p2, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 270
    aget v6, p0, v1

    .line 271
    aget v7, p1, v1

    int-to-float v7, v7

    mul-float v7, v7, v4

    int-to-float v6, v6

    cmpl-float v8, v6, v7

    if-lez v8, :cond_2

    sub-float/2addr v6, v7

    goto :goto_2

    :cond_2
    sub-float v6, v7, v6

    :goto_2
    cmpl-float v7, v6, p2

    if-lez v7, :cond_3

    return v2

    :cond_3
    add-float/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    div-float/2addr v5, v3

    return v5
.end method

.method protected static a(Lcom/google/a/c/a;I[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 193
    array-length v0, p2

    const/4 v1, 0x0

    .line 194
    invoke-static {p2, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 8048
    iget v2, p0, Lcom/google/a/c/a;->b:I

    if-lt p1, v2, :cond_0

    .line 197
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0

    .line 199
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/a/c/a;->a(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const/4 v5, 0x0

    :goto_0
    if-ge p1, v2, :cond_3

    .line 203
    invoke-virtual {p0, p1}, Lcom/google/a/c/a;->a(I)Z

    move-result v6

    if-eq v6, v3, :cond_1

    .line 204
    aget v6, p2, v5

    add-int/2addr v6, v4

    aput v6, p2, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    if-eq v5, v0, :cond_3

    .line 209
    aput v4, p2, v5

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-eq v5, v0, :cond_5

    sub-int/2addr v0, v4

    if-ne v5, v0, :cond_4

    if-eq p1, v2, :cond_5

    .line 218
    :cond_4
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_5
    return-void
.end method

.method private b(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/google/a/c;->a()I

    move-result v1

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/google/a/c;->b()I

    move-result v2

    .line 107
    new-instance v3, Lcom/google/a/c/a;

    invoke-direct {v3, v1}, Lcom/google/a/c/a;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 109
    sget-object v6, Lcom/google/a/e;->d:Lcom/google/a/e;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    const/16 v7, 0x8

    goto :goto_1

    :cond_1
    const/4 v7, 0x5

    :goto_1
    shr-int v7, v2, v7

    .line 110
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    const/16 v6, 0xf

    .line 118
    :goto_2
    div-int/lit8 v8, v2, 0x2

    move-object v9, v0

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v6, :cond_8

    add-int/lit8 v10, v0, 0x1

    .line 122
    div-int/lit8 v11, v10, 0x2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_4

    goto :goto_5

    :cond_4
    neg-int v11, v11

    :goto_5
    mul-int v11, v11, v7

    add-int/2addr v11, v8

    if-ltz v11, :cond_8

    if-ge v11, v2, :cond_8

    move-object/from16 v0, p1

    .line 6066
    :try_start_0
    iget-object v12, v0, Lcom/google/a/c;->a:Lcom/google/a/b;

    invoke-virtual {v12, v11, v3}, Lcom/google/a/b;->a(ILcom/google/a/c/a;)Lcom/google/a/c/a;

    move-result-object v12
    :try_end_0
    .catch Lcom/google/a/m; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v3, 0x0

    :goto_6
    const/4 v13, 0x2

    if-ge v3, v13, :cond_7

    if-ne v3, v5, :cond_5

    .line 141
    invoke-virtual {v12}, Lcom/google/a/c/a;->c()V

    if-eqz v9, :cond_5

    .line 146
    sget-object v13, Lcom/google/a/e;->j:Lcom/google/a/e;

    invoke-interface {v9, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 147
    new-instance v13, Ljava/util/EnumMap;

    const-class v14, Lcom/google/a/e;

    invoke-direct {v13, v14}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 148
    invoke-interface {v13, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    sget-object v9, Lcom/google/a/e;->j:Lcom/google/a/e;

    invoke-interface {v13, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v13

    :cond_5
    move-object/from16 v13, p0

    .line 155
    :try_start_1
    invoke-virtual {v13, v11, v12, v9}, Lcom/google/a/g/r;->a(ILcom/google/a/c/a;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object v14

    if-ne v3, v5, :cond_6

    .line 159
    sget-object v15, Lcom/google/a/s;->b:Lcom/google/a/s;

    const/16 v5, 0xb4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v15, v5}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    .line 6096
    iget-object v5, v14, Lcom/google/a/r;->d:[Lcom/google/a/t;

    if-eqz v5, :cond_6

    .line 163
    new-instance v15, Lcom/google/a/t;
    :try_end_1
    .catch Lcom/google/a/q; {:try_start_1 .. :try_end_1} :catch_0

    int-to-float v0, v1

    move/from16 v16, v1

    :try_start_2
    aget-object v1, v5, v4

    .line 7038
    iget v1, v1, Lcom/google/a/t;->a:F
    :try_end_2
    .catch Lcom/google/a/q; {:try_start_2 .. :try_end_2} :catch_1

    sub-float v1, v0, v1

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v1, v1, v17

    move/from16 v18, v2

    .line 163
    :try_start_3
    aget-object v2, v5, v4

    .line 7042
    iget v2, v2, Lcom/google/a/t;->b:F

    .line 163
    invoke-direct {v15, v1, v2}, Lcom/google/a/t;-><init>(FF)V

    aput-object v15, v5, v4

    .line 164
    new-instance v1, Lcom/google/a/t;
    :try_end_3
    .catch Lcom/google/a/q; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v2, 0x1

    :try_start_4
    aget-object v15, v5, v2

    .line 8038
    iget v15, v15, Lcom/google/a/t;->a:F

    sub-float/2addr v0, v15

    sub-float v0, v0, v17

    .line 164
    aget-object v15, v5, v2

    .line 8042
    iget v15, v15, Lcom/google/a/t;->b:F

    .line 164
    invoke-direct {v1, v0, v15}, Lcom/google/a/t;-><init>(FF)V

    aput-object v1, v5, v2
    :try_end_4
    .catch Lcom/google/a/q; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    return-object v14

    :catch_0
    move/from16 v16, v1

    :catch_1
    move/from16 v18, v2

    :catch_2
    const/4 v2, 0x1

    :catch_3
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v16

    move/from16 v2, v18

    move-object/from16 v0, p1

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v13, p0

    move/from16 v16, v1

    move/from16 v18, v2

    const/4 v2, 0x1

    move-object v3, v12

    goto :goto_7

    :catch_4
    move-object/from16 v13, p0

    move/from16 v16, v1

    move/from16 v18, v2

    const/4 v2, 0x1

    :goto_7
    move v0, v10

    move/from16 v1, v16

    move/from16 v2, v18

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_8
    move-object/from16 v13, p0

    .line 174
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0
.end method

.method protected static b(Lcom/google/a/c/a;I[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 225
    array-length v0, p2

    .line 226
    invoke-virtual {p0, p1}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-lez p1, :cond_2

    if-ltz v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 228
    invoke-virtual {p0, p1}, Lcom/google/a/c/a;->a(I)Z

    move-result v3

    if-eq v3, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_3

    .line 234
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_3
    add-int/2addr p1, v2

    .line 236
    invoke-static {p0, p1, p2}, Lcom/google/a/g/r;->a(Lcom/google/a/c/a;I[I)V

    return-void
.end method


# virtual methods
.method public abstract a(ILcom/google/a/c/a;Ljava/util/Map;)Lcom/google/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/a/c/a;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation
.end method

.method public a(Lcom/google/a/c;)Lcom/google/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/r;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation

    .line 54
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/a/g/r;->b(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/a/m; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 56
    sget-object v2, Lcom/google/a/e;->d:Lcom/google/a/e;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1116
    iget-object v2, p1, Lcom/google/a/c;->a:Lcom/google/a/b;

    .line 2039
    iget-object v2, v2, Lcom/google/a/b;->a:Lcom/google/a/j;

    .line 1116
    invoke-virtual {v2}, Lcom/google/a/j;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2126
    iget-object v0, p1, Lcom/google/a/c;->a:Lcom/google/a/b;

    .line 3039
    iget-object v0, v0, Lcom/google/a/b;->a:Lcom/google/a/j;

    .line 2126
    invoke-virtual {v0}, Lcom/google/a/j;->e()Lcom/google/a/j;

    move-result-object v0

    .line 2127
    new-instance v2, Lcom/google/a/c;

    iget-object p1, p1, Lcom/google/a/c;->a:Lcom/google/a/b;

    invoke-virtual {p1, v0}, Lcom/google/a/b;->a(Lcom/google/a/j;)Lcom/google/a/b;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/a/c;-><init>(Lcom/google/a/b;)V

    .line 59
    invoke-direct {p0, v2, p2}, Lcom/google/a/g/r;->b(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    .line 3112
    iget-object p2, p1, Lcom/google/a/r;->f:Ljava/util/Map;

    const/16 v0, 0x10e

    if-eqz p2, :cond_1

    .line 63
    sget-object v3, Lcom/google/a/s;->b:Lcom/google/a/s;

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    sget-object v3, Lcom/google/a/s;->b:Lcom/google/a/s;

    .line 66
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v0

    rem-int/lit16 v0, p2, 0x168

    .line 68
    :cond_1
    sget-object p2, Lcom/google/a/s;->b:Lcom/google/a/s;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    .line 4096
    iget-object p2, p1, Lcom/google/a/r;->d:[Lcom/google/a/t;

    if-eqz p2, :cond_2

    .line 72
    invoke-virtual {v2}, Lcom/google/a/c;->b()I

    move-result v0

    .line 73
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 74
    new-instance v2, Lcom/google/a/t;

    int-to-float v3, v0

    aget-object v4, p2, v1

    .line 5042
    iget v4, v4, Lcom/google/a/t;->b:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    .line 74
    aget-object v4, p2, v1

    .line 6038
    iget v4, v4, Lcom/google/a/t;->a:F

    .line 74
    invoke-direct {v2, v3, v4}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    .line 79
    :cond_3
    throw v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

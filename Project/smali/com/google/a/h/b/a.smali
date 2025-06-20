.class public final Lcom/google/a/h/b/a;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:F = 0.42f

.field private static final d:F = 0.8f

.field private static final e:[I

.field private static final f:[I

.field private static final g:I = 0x3

.field private static final h:I = 0x5

.field private static final i:I = 0x19

.field private static final j:I = 0x5

.field private static final k:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    .line 40
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/a/h/b/a;->a:[I

    .line 41
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/a/h/b/a;->b:[I

    const/16 v0, 0x8

    .line 47
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/a/h/b/a;->e:[I

    const/16 v0, 0x9

    .line 49
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/a/h/b/a;->f:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x1
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x2
        0x7
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([I[I)F
    .locals 10

    .line 310
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 314
    aget v5, p0, v2

    add-int/2addr v3, v5

    .line 315
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

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v5, v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 330
    aget v7, p0, v1

    .line 331
    aget v8, p1, v1

    int-to-float v8, v8

    mul-float v8, v8, v4

    int-to-float v7, v7

    cmpl-float v9, v7, v8

    if-lez v9, :cond_2

    sub-float/2addr v7, v8

    goto :goto_2

    :cond_2
    sub-float v7, v8, v7

    :goto_2
    cmpl-float v8, v7, v5

    if-lez v8, :cond_3

    return v2

    :cond_3
    add-float/2addr v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    div-float/2addr v6, v3

    return v6
.end method

.method public static a(Lcom/google/a/c;Z)Lcom/google/a/h/b/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            "Z)",
            "Lcom/google/a/h/b/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/google/a/c;->c()Lcom/google/a/c/b;

    move-result-object p0

    .line 81
    invoke-static {p1, p0}, Lcom/google/a/h/b/a;->a(ZLcom/google/a/c/b;)Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/google/a/c/b;->d()Lcom/google/a/c/b;

    move-result-object p0

    .line 1399
    iget v0, p0, Lcom/google/a/c/b;->a:I

    .line 1406
    iget v1, p0, Lcom/google/a/c/b;->b:I

    .line 1286
    new-instance v2, Lcom/google/a/c/a;

    invoke-direct {v2, v0}, Lcom/google/a/c/a;-><init>(I)V

    .line 1287
    new-instance v3, Lcom/google/a/c/a;

    invoke-direct {v3, v0}, Lcom/google/a/c/a;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v4, v1, 0x1

    .line 1288
    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_0

    .line 1289
    invoke-virtual {p0, v0, v2}, Lcom/google/a/c/b;->a(ILcom/google/a/c/a;)Lcom/google/a/c/a;

    move-result-object v2

    add-int/lit8 v4, v1, -0x1

    sub-int/2addr v4, v0

    .line 1290
    invoke-virtual {p0, v4, v3}, Lcom/google/a/c/b;->a(ILcom/google/a/c/a;)Lcom/google/a/c/a;

    move-result-object v3

    .line 1291
    invoke-virtual {v2}, Lcom/google/a/c/a;->c()V

    .line 1292
    invoke-virtual {v3}, Lcom/google/a/c/a;->c()V

    .line 1293
    invoke-virtual {p0, v0, v3}, Lcom/google/a/c/b;->b(ILcom/google/a/c/a;)V

    .line 1294
    invoke-virtual {p0, v4, v2}, Lcom/google/a/c/b;->b(ILcom/google/a/c/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p1, p0}, Lcom/google/a/h/b/a;->a(ZLcom/google/a/c/b;)Ljava/util/List;

    move-result-object v0

    .line 87
    :cond_1
    new-instance p1, Lcom/google/a/h/b/b;

    invoke-direct {p1, p0, v0}, Lcom/google/a/h/b/b;-><init>(Lcom/google/a/c/b;Ljava/util/List;)V

    return-object p1
.end method

.method private static a(ZLcom/google/a/c/b;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/a/c/b;",
            ")",
            "Ljava/util/List<",
            "[",
            "Lcom/google/a/t;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p1

    .line 98
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 2406
    :goto_1
    iget v0, v6, Lcom/google/a/c/b;->b:I

    if-ge v10, v0, :cond_6

    .line 3406
    iget v13, v6, Lcom/google/a/c/b;->b:I

    .line 4399
    iget v14, v6, Lcom/google/a/c/b;->a:I

    const/16 v0, 0x8

    .line 3162
    new-array v15, v0, [Lcom/google/a/t;

    .line 3163
    sget-object v5, Lcom/google/a/h/b/a;->e:[I

    move-object v0, v6

    move v1, v13

    move v2, v14

    move v3, v10

    move v4, v11

    invoke-static/range {v0 .. v5}, Lcom/google/a/h/b/a;->a(Lcom/google/a/c/b;IIII[I)[Lcom/google/a/t;

    move-result-object v0

    sget-object v1, Lcom/google/a/h/b/a;->a:[I

    invoke-static {v15, v0, v1}, Lcom/google/a/h/b/a;->a([Lcom/google/a/t;[Lcom/google/a/t;[I)V

    const/16 v16, 0x4

    .line 3166
    aget-object v0, v15, v16

    if-eqz v0, :cond_0

    .line 3167
    aget-object v0, v15, v16

    .line 5038
    iget v0, v0, Lcom/google/a/t;->a:F

    float-to-int v0, v0

    .line 3168
    aget-object v1, v15, v16

    .line 5042
    iget v1, v1, Lcom/google/a/t;->b:F

    float-to-int v1, v1

    move v4, v0

    move v3, v1

    goto :goto_2

    :cond_0
    move v3, v10

    move v4, v11

    .line 3170
    :goto_2
    sget-object v5, Lcom/google/a/h/b/a;->f:[I

    move-object v0, v6

    move v1, v13

    move v2, v14

    invoke-static/range {v0 .. v5}, Lcom/google/a/h/b/a;->a(Lcom/google/a/c/b;IIII[I)[Lcom/google/a/t;

    move-result-object v0

    sget-object v1, Lcom/google/a/h/b/a;->b:[I

    invoke-static {v15, v0, v1}, Lcom/google/a/h/b/a;->a([Lcom/google/a/t;[Lcom/google/a/t;[I)V

    .line 105
    aget-object v0, v15, v9

    if-nez v0, :cond_4

    const/4 v0, 0x3

    aget-object v1, v15, v0

    if-nez v1, :cond_4

    if-eqz v12, :cond_6

    .line 114
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/a/t;

    .line 115
    aget-object v3, v2, v8

    if-eqz v3, :cond_2

    int-to-float v3, v10

    .line 116
    aget-object v4, v2, v8

    .line 6042
    iget v4, v4, Lcom/google/a/t;->b:F

    .line 116
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v10, v3

    .line 118
    :cond_2
    aget-object v3, v2, v0

    if-eqz v3, :cond_1

    .line 119
    aget-object v2, v2, v0

    .line 7042
    iget v2, v2, Lcom/google/a/t;->b:F

    float-to-int v2, v2

    .line 119
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v10, v2

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v10, 0x5

    goto :goto_0

    .line 126
    :cond_4
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_6

    const/4 v1, 0x2

    .line 132
    aget-object v2, v15, v1

    if-eqz v2, :cond_5

    .line 133
    aget-object v2, v15, v1

    .line 8038
    iget v2, v2, Lcom/google/a/t;->a:F

    float-to-int v11, v2

    .line 134
    aget-object v1, v15, v1

    .line 8042
    iget v1, v1, Lcom/google/a/t;->b:F

    float-to-int v10, v1

    :goto_4
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 136
    :cond_5
    aget-object v1, v15, v16

    .line 9038
    iget v1, v1, Lcom/google/a/t;->a:F

    float-to-int v11, v1

    .line 137
    aget-object v1, v15, v16

    .line 9042
    iget v1, v1, Lcom/google/a/t;->b:F

    float-to-int v10, v1

    goto :goto_4

    :cond_6
    return-object v7
.end method

.method private static a([Lcom/google/a/t;[Lcom/google/a/t;[I)V
    .locals 3

    const/4 v0, 0x0

    .line 176
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 177
    aget v1, p2, v0

    aget-object v2, p1, v0

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/a/c/b;III[I[I)[I
    .locals 9

    .line 259
    array-length v0, p5

    const/4 v1, 0x0

    invoke-static {p5, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    const/4 v0, 0x0

    .line 264
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/b;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    add-int/lit8 p1, p1, -0x1

    move v0, v2

    goto :goto_0

    .line 269
    :cond_0
    array-length v0, p4

    move v4, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const v5, 0x3ed70a3d    # 0.42f

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge p1, p3, :cond_4

    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/b;->a(II)Z

    move-result v8

    if-eq v8, v2, :cond_1

    .line 273
    aget v5, p5, v3

    add-int/2addr v5, v7

    aput v5, p5, v3

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v0, -0x1

    if-ne v3, v8, :cond_3

    .line 276
    invoke-static {p5, p4}, Lcom/google/a/h/b/a;->a([I[I)F

    move-result v8

    cmpg-float v5, v8, v5

    if-gez v5, :cond_2

    .line 277
    new-array p0, v6, [I

    aput v4, p0, v1

    aput p1, p0, v7

    return-object p0

    .line 279
    :cond_2
    aget v5, p5, v1

    aget v8, p5, v7

    add-int/2addr v5, v8

    add-int/2addr v4, v5

    add-int/lit8 v5, v3, -0x1

    .line 280
    invoke-static {p5, v6, p5, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    aput v1, p5, v5

    .line 282
    aput v1, p5, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 287
    :goto_2
    aput v7, p5, v3

    xor-int/lit8 v2, v2, 0x1

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v7

    if-ne v3, v0, :cond_5

    .line 292
    invoke-static {p5, p4}, Lcom/google/a/h/b/a;->a([I[I)F

    move-result p0

    cmpg-float p0, p0, v5

    if-gez p0, :cond_5

    .line 293
    new-array p0, v6, [I

    aput v4, p0, v1

    sub-int/2addr p1, v7

    aput p1, p0, v7

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/google/a/c/b;II)[Lcom/google/a/t;
    .locals 9

    .line 9406
    iget v6, p0, Lcom/google/a/c/b;->b:I

    .line 10399
    iget v7, p0, Lcom/google/a/c/b;->a:I

    const/16 v0, 0x8

    .line 162
    new-array v8, v0, [Lcom/google/a/t;

    .line 163
    sget-object v5, Lcom/google/a/h/b/a;->e:[I

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/a/h/b/a;->a(Lcom/google/a/c/b;IIII[I)[Lcom/google/a/t;

    move-result-object v0

    sget-object v1, Lcom/google/a/h/b/a;->a:[I

    invoke-static {v8, v0, v1}, Lcom/google/a/h/b/a;->a([Lcom/google/a/t;[Lcom/google/a/t;[I)V

    const/4 v0, 0x4

    .line 166
    aget-object v1, v8, v0

    if-eqz v1, :cond_0

    .line 167
    aget-object p1, v8, v0

    .line 11038
    iget p1, p1, Lcom/google/a/t;->a:F

    float-to-int p2, p1

    .line 168
    aget-object p1, v8, v0

    .line 11042
    iget p1, p1, Lcom/google/a/t;->b:F

    float-to-int p1, p1

    :cond_0
    move v3, p1

    move v4, p2

    .line 170
    sget-object v5, Lcom/google/a/h/b/a;->f:[I

    move-object v0, p0

    move v1, v6

    move v2, v7

    invoke-static/range {v0 .. v5}, Lcom/google/a/h/b/a;->a(Lcom/google/a/c/b;IIII[I)[Lcom/google/a/t;

    move-result-object p0

    sget-object p1, Lcom/google/a/h/b/a;->b:[I

    invoke-static {v8, p0, p1}, Lcom/google/a/h/b/a;->a([Lcom/google/a/t;[Lcom/google/a/t;[I)V

    return-object v8
.end method

.method private static a(Lcom/google/a/c/b;IIII[I)[Lcom/google/a/t;
    .locals 17

    move/from16 v0, p1

    const/4 v1, 0x4

    .line 187
    new-array v1, v1, [Lcom/google/a/t;

    move-object/from16 v8, p5

    .line 189
    array-length v2, v8

    new-array v9, v2, [I

    move/from16 v10, p3

    :goto_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v10, v0, :cond_3

    move-object/from16 v2, p0

    move/from16 v3, p4

    move v4, v10

    move/from16 v5, p2

    move-object v6, v8

    move-object v7, v9

    .line 191
    invoke-static/range {v2 .. v7}, Lcom/google/a/h/b/a;->a(Lcom/google/a/c/b;III[I[I)[I

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_1
    move-object v13, v2

    if-lez v10, :cond_1

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p4

    move v4, v10

    move/from16 v5, p2

    move-object v6, v8

    move-object v7, v9

    .line 194
    invoke-static/range {v2 .. v7}, Lcom/google/a/h/b/a;->a(Lcom/google/a/c/b;III[I[I)[I

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v10, v12

    .line 202
    :cond_1
    new-instance v2, Lcom/google/a/t;

    aget v3, v13, v11

    int-to-float v3, v3

    int-to-float v4, v10

    invoke-direct {v2, v3, v4}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v1, v11

    .line 203
    new-instance v2, Lcom/google/a/t;

    aget v3, v13, v12

    int-to-float v3, v3

    invoke-direct {v2, v3, v4}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v1, v12

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x5

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v3, v10, 0x1

    if-eqz v2, :cond_7

    const/4 v13, 0x2

    .line 212
    new-array v2, v13, [I

    aget-object v4, v1, v11

    .line 12038
    iget v4, v4, Lcom/google/a/t;->a:F

    float-to-int v4, v4

    aput v4, v2, v11

    .line 212
    aget-object v4, v1, v12

    .line 13038
    iget v4, v4, Lcom/google/a/t;->a:F

    float-to-int v4, v4

    aput v4, v2, v12

    move-object v15, v2

    move v14, v3

    const/4 v7, 0x0

    :goto_3
    if-ge v14, v0, :cond_5

    .line 214
    aget v3, v15, v11

    move-object/from16 v2, p0

    move v4, v14

    move/from16 v5, p2

    move-object v6, v8

    move v13, v7

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lcom/google/a/h/b/a;->a(Lcom/google/a/c/b;III[I[I)[I

    move-result-object v2

    if-eqz v2, :cond_4

    .line 219
    aget v3, v15, v11

    aget v4, v2, v11

    sub-int/2addr v3, v4

    .line 220
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_4

    aget v3, v15, v12

    aget v5, v2, v12

    sub-int/2addr v3, v5

    .line 221
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v4, :cond_4

    move-object v15, v2

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    const/16 v2, 0x19

    if-gt v13, v2, :cond_6

    add-int/lit8 v7, v13, 0x1

    :goto_4
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x2

    goto :goto_3

    :cond_5
    move v13, v7

    :cond_6
    add-int/lit8 v7, v13, 0x1

    sub-int v3, v14, v7

    .line 233
    new-instance v0, Lcom/google/a/t;

    aget v2, v15, v11

    int-to-float v2, v2

    int-to-float v4, v3

    invoke-direct {v0, v2, v4}, Lcom/google/a/t;-><init>(FF)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v0, 0x3

    .line 234
    new-instance v2, Lcom/google/a/t;

    aget v5, v15, v12

    int-to-float v5, v5

    invoke-direct {v2, v5, v4}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v1, v0

    :cond_7
    sub-int/2addr v3, v10

    const/16 v0, 0xa

    if-ge v3, v0, :cond_8

    const/4 v0, 0x0

    .line 237
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    return-object v1
.end method

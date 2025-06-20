.class final Lcom/google/a/i/b/b;
.super Ljava/lang/Object;
.source "AlignmentPatternFinder.java"


# instance fields
.field final a:Lcom/google/a/c/b;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/a/i/b/a;",
            ">;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field private final g:F

.field private final h:[I

.field private final i:Lcom/google/a/u;


# direct methods
.method constructor <init>(Lcom/google/a/c/b;IIIIFLcom/google/a/u;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/a/i/b/b;->a:Lcom/google/a/c/b;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/a/i/b/b;->b:Ljava/util/List;

    .line 71
    iput p2, p0, Lcom/google/a/i/b/b;->c:I

    .line 72
    iput p3, p0, Lcom/google/a/i/b/b;->d:I

    .line 73
    iput p4, p0, Lcom/google/a/i/b/b;->e:I

    .line 74
    iput p5, p0, Lcom/google/a/i/b/b;->f:I

    .line 75
    iput p6, p0, Lcom/google/a/i/b/b;->g:F

    const/4 p1, 0x3

    .line 76
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/a/i/b/b;->h:[I

    .line 77
    iput-object p7, p0, Lcom/google/a/i/b/b;->i:Lcom/google/a/u;

    return-void
.end method

.method private a(IIII)F
    .locals 9

    .line 193
    iget-object v0, p0, Lcom/google/a/i/b/b;->a:Lcom/google/a/c/b;

    .line 1406
    iget v1, v0, Lcom/google/a/c/b;->b:I

    .line 196
    iget-object v2, p0, Lcom/google/a/i/b/b;->h:[I

    const/4 v3, 0x0

    .line 197
    aput v3, v2, v3

    const/4 v4, 0x1

    .line 198
    aput v3, v2, v4

    const/4 v5, 0x2

    .line 199
    aput v3, v2, v5

    move v6, p1

    :goto_0
    if-ltz v6, :cond_0

    .line 203
    invoke-virtual {v0, p2, v6}, Lcom/google/a/c/b;->a(II)Z

    move-result v7

    if-eqz v7, :cond_0

    aget v7, v2, v4

    if-gt v7, p3, :cond_0

    .line 204
    aget v7, v2, v4

    add-int/2addr v7, v4

    aput v7, v2, v4

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    const/high16 v7, 0x7fc00000    # Float.NaN

    if-ltz v6, :cond_b

    .line 208
    aget v8, v2, v4

    if-le v8, p3, :cond_1

    goto/16 :goto_5

    :cond_1
    :goto_1
    if-ltz v6, :cond_2

    .line 211
    invoke-virtual {v0, p2, v6}, Lcom/google/a/c/b;->a(II)Z

    move-result v8

    if-nez v8, :cond_2

    aget v8, v2, v3

    if-gt v8, p3, :cond_2

    .line 212
    aget v8, v2, v3

    add-int/2addr v8, v4

    aput v8, v2, v3

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 215
    :cond_2
    aget v6, v2, v3

    if-le v6, p3, :cond_3

    return v7

    :cond_3
    add-int/2addr p1, v4

    :goto_2
    if-ge p1, v1, :cond_4

    .line 221
    invoke-virtual {v0, p2, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result v6

    if-eqz v6, :cond_4

    aget v6, v2, v4

    if-gt v6, p3, :cond_4

    .line 222
    aget v6, v2, v4

    add-int/2addr v6, v4

    aput v6, v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    if-eq p1, v1, :cond_a

    .line 225
    aget v6, v2, v4

    if-le v6, p3, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    if-ge p1, v1, :cond_6

    .line 228
    invoke-virtual {v0, p2, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result v6

    if-nez v6, :cond_6

    aget v6, v2, v5

    if-gt v6, p3, :cond_6

    .line 229
    aget v6, v2, v5

    add-int/2addr v6, v4

    aput v6, v2, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 232
    :cond_6
    aget p2, v2, v5

    if-le p2, p3, :cond_7

    return v7

    .line 236
    :cond_7
    aget p2, v2, v3

    aget p3, v2, v4

    add-int/2addr p2, p3

    aget p3, v2, v5

    add-int/2addr p2, p3

    sub-int/2addr p2, p4

    .line 237
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    mul-int/lit8 p4, p4, 0x2

    if-lt p2, p4, :cond_8

    return v7

    .line 241
    :cond_8
    invoke-virtual {p0, v2}, Lcom/google/a/i/b/b;->a([I)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {v2, p1}, Lcom/google/a/i/b/b;->a([II)F

    move-result p1

    return p1

    :cond_9
    return v7

    :cond_a
    :goto_4
    return v7

    :cond_b
    :goto_5
    return v7
.end method

.method private static a([II)F
    .locals 1

    const/4 v0, 0x2

    .line 161
    aget v0, p0, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/4 v0, 0x1

    aget p0, p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method private a()Lcom/google/a/i/b/a;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 88
    iget v0, p0, Lcom/google/a/i/b/b;->c:I

    .line 89
    iget v1, p0, Lcom/google/a/i/b/b;->f:I

    .line 90
    iget v2, p0, Lcom/google/a/i/b/b;->e:I

    add-int/2addr v2, v0

    .line 91
    iget v3, p0, Lcom/google/a/i/b/b;->d:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x3

    .line 94
    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_9

    and-int/lit8 v7, v6, 0x1

    const/4 v8, 0x2

    if-nez v7, :cond_0

    add-int/lit8 v7, v6, 0x1

    .line 97
    div-int/2addr v7, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v6, 0x1

    div-int/2addr v7, v8

    neg-int v7, v7

    :goto_1
    add-int/2addr v7, v3

    aput v5, v4, v5

    const/4 v9, 0x1

    aput v5, v4, v9

    aput v5, v4, v8

    move v10, v0

    :goto_2
    if-ge v10, v2, :cond_1

    .line 105
    iget-object v11, p0, Lcom/google/a/i/b/b;->a:Lcom/google/a/c/b;

    invoke-virtual {v11, v10, v7}, Lcom/google/a/c/b;->a(II)Z

    move-result v11

    if-nez v11, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_3
    if-ge v10, v2, :cond_7

    .line 110
    iget-object v12, p0, Lcom/google/a/i/b/b;->a:Lcom/google/a/c/b;

    invoke-virtual {v12, v10, v7}, Lcom/google/a/c/b;->a(II)Z

    move-result v12

    if-eqz v12, :cond_5

    if-ne v11, v9, :cond_2

    .line 113
    aget v12, v4, v9

    add-int/2addr v12, v9

    aput v12, v4, v9

    goto :goto_4

    :cond_2
    if-ne v11, v8, :cond_4

    .line 116
    invoke-virtual {p0, v4}, Lcom/google/a/i/b/b;->a([I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 117
    invoke-virtual {p0, v4, v7, v10}, Lcom/google/a/i/b/b;->a([III)Lcom/google/a/i/b/a;

    move-result-object v11

    if-eqz v11, :cond_3

    return-object v11

    .line 122
    :cond_3
    aget v11, v4, v8

    aput v11, v4, v5

    aput v9, v4, v9

    aput v5, v4, v8

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 127
    aget v12, v4, v11

    add-int/2addr v12, v9

    aput v12, v4, v11

    goto :goto_4

    :cond_5
    if-ne v11, v9, :cond_6

    add-int/lit8 v11, v11, 0x1

    .line 134
    :cond_6
    aget v12, v4, v11

    add-int/2addr v12, v9

    aput v12, v4, v11

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 138
    :cond_7
    invoke-virtual {p0, v4}, Lcom/google/a/i/b/b;->a([I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 139
    invoke-virtual {p0, v4, v7, v2}, Lcom/google/a/i/b/b;->a([III)Lcom/google/a/i/b/a;

    move-result-object v7

    if-eqz v7, :cond_8

    return-object v7

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 149
    :cond_9
    iget-object v0, p0, Lcom/google/a/i/b/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 150
    iget-object v0, p0, Lcom/google/a/i/b/b;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/i/b/a;

    return-object v0

    .line 153
    :cond_a
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method final a([III)Lcom/google/a/i/b/a;
    .locals 12

    const/4 v0, 0x0

    .line 256
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    add-int/2addr v1, v4

    .line 257
    invoke-static {p1, p3}, Lcom/google/a/i/b/b;->a([II)F

    move-result p3

    float-to-int v4, p3

    .line 258
    aget v5, p1, v2

    mul-int/lit8 v5, v5, 0x2

    .line 2193
    iget-object v6, p0, Lcom/google/a/i/b/b;->a:Lcom/google/a/c/b;

    .line 2406
    iget v7, v6, Lcom/google/a/c/b;->b:I

    .line 2196
    iget-object v8, p0, Lcom/google/a/i/b/b;->h:[I

    .line 2197
    aput v0, v8, v0

    .line 2198
    aput v0, v8, v2

    .line 2199
    aput v0, v8, v3

    move v9, p2

    :goto_0
    if-ltz v9, :cond_0

    .line 2203
    invoke-virtual {v6, v4, v9}, Lcom/google/a/c/b;->a(II)Z

    move-result v10

    if-eqz v10, :cond_0

    aget v10, v8, v2

    if-gt v10, v5, :cond_0

    .line 2204
    aget v10, v8, v2

    add-int/2addr v10, v2

    aput v10, v8, v2

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_0
    const/high16 v10, 0x7fc00000    # Float.NaN

    if-ltz v9, :cond_9

    .line 2208
    aget v11, v8, v2

    if-le v11, v5, :cond_1

    goto/16 :goto_4

    :cond_1
    :goto_1
    if-ltz v9, :cond_2

    .line 2211
    invoke-virtual {v6, v4, v9}, Lcom/google/a/c/b;->a(II)Z

    move-result v11

    if-nez v11, :cond_2

    aget v11, v8, v0

    if-gt v11, v5, :cond_2

    .line 2212
    aget v11, v8, v0

    add-int/2addr v11, v2

    aput v11, v8, v0

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 2215
    :cond_2
    aget v9, v8, v0

    if-le v9, v5, :cond_3

    goto :goto_4

    :cond_3
    add-int/2addr p2, v2

    :goto_2
    if-ge p2, v7, :cond_4

    .line 2221
    invoke-virtual {v6, v4, p2}, Lcom/google/a/c/b;->a(II)Z

    move-result v9

    if-eqz v9, :cond_4

    aget v9, v8, v2

    if-gt v9, v5, :cond_4

    .line 2222
    aget v9, v8, v2

    add-int/2addr v9, v2

    aput v9, v8, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    if-eq p2, v7, :cond_9

    .line 2225
    aget v9, v8, v2

    if-le v9, v5, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    if-ge p2, v7, :cond_6

    .line 2228
    invoke-virtual {v6, v4, p2}, Lcom/google/a/c/b;->a(II)Z

    move-result v9

    if-nez v9, :cond_6

    aget v9, v8, v3

    if-gt v9, v5, :cond_6

    .line 2229
    aget v9, v8, v3

    add-int/2addr v9, v2

    aput v9, v8, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 2232
    :cond_6
    aget v4, v8, v3

    if-le v4, v5, :cond_7

    goto :goto_4

    .line 2236
    :cond_7
    aget v4, v8, v0

    aget v5, v8, v2

    add-int/2addr v4, v5

    aget v5, v8, v3

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    .line 2237
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    mul-int/lit8 v1, v1, 0x2

    if-lt v4, v1, :cond_8

    goto :goto_4

    .line 2241
    :cond_8
    invoke-virtual {p0, v8}, Lcom/google/a/i/b/b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v8, p2}, Lcom/google/a/i/b/b;->a([II)F

    move-result v10

    .line 259
    :cond_9
    :goto_4
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_e

    .line 260
    aget p2, p1, v0

    aget v1, p1, v2

    add-int/2addr p2, v1

    aget p1, p1, v3

    add-int/2addr p2, p1

    int-to-float p1, p2

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p1, p2

    .line 261
    iget-object p2, p0, Lcom/google/a/i/b/b;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/i/b/a;

    .line 4042
    iget v3, v1, Lcom/google/a/t;->b:F

    sub-float v3, v10, v3

    .line 3041
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_c

    .line 5038
    iget v3, v1, Lcom/google/a/t;->a:F

    sub-float v3, p3, v3

    .line 3041
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_c

    .line 3042
    iget v3, v1, Lcom/google/a/i/b/a;->c:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-lez v4, :cond_b

    .line 3043
    iget v4, v1, Lcom/google/a/i/b/a;->c:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_c

    :cond_b
    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_a

    .line 6038
    iget p2, v1, Lcom/google/a/t;->a:F

    add-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    .line 6042
    iget v0, v1, Lcom/google/a/t;->b:F

    add-float/2addr v0, v10

    div-float/2addr v0, p3

    .line 5055
    iget v1, v1, Lcom/google/a/i/b/a;->c:F

    add-float/2addr v1, p1

    div-float/2addr v1, p3

    .line 5056
    new-instance p1, Lcom/google/a/i/b/a;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/a/i/b/a;-><init>(FFF)V

    return-object p1

    .line 268
    :cond_d
    new-instance p2, Lcom/google/a/i/b/a;

    invoke-direct {p2, p3, v10, p1}, Lcom/google/a/i/b/a;-><init>(FFF)V

    .line 269
    iget-object p1, p0, Lcom/google/a/i/b/b;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method final a([I)Z
    .locals 5

    .line 170
    iget v0, p0, Lcom/google/a/i/b/b;->g:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 173
    aget v4, p1, v3

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

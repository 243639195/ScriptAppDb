.class public final Lcom/google/a/h/b;
.super Ljava/lang/Object;
.source "PDF417Reader.java"

# interfaces
.implements Lcom/google/a/f/c;
.implements Lcom/google/a/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/a/t;Lcom/google/a/t;)I
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6038
    :cond_0
    iget p0, p0, Lcom/google/a/t;->a:F

    .line 7038
    iget p1, p1, Lcom/google/a/t;->a:F

    sub-float/2addr p0, p1

    .line 104
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a([Lcom/google/a/t;)I
    .locals 4

    const/4 v0, 0x0

    .line 115
    aget-object v0, p0, v0

    const/4 v1, 0x4

    aget-object v1, p0, v1

    .line 116
    invoke-static {v0, v1}, Lcom/google/a/h/b;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v0

    const/4 v1, 0x6

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/a/h/b;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    div-int/lit8 v1, v1, 0x12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x5

    aget-object v2, p0, v2

    .line 118
    invoke-static {v1, v2}, Lcom/google/a/h/b;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v1

    const/4 v2, 0x7

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-static {v2, p0}, Lcom/google/a/h/b;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x11

    div-int/lit8 p0, p0, 0x12

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 115
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static a(Lcom/google/a/c;Z)[Lcom/google/a/r;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            "Z)[",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-static/range {p0 .. p1}, Lcom/google/a/h/b/a;->a(Lcom/google/a/c;Z)Lcom/google/a/h/b/b;

    move-result-object v1

    .line 1042
    iget-object v2, v1, Lcom/google/a/h/b/b;->b:Ljava/util/List;

    .line 86
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/a/t;

    .line 2038
    iget-object v4, v1, Lcom/google/a/h/b/b;->a:Lcom/google/a/c/b;

    const/4 v5, 0x4

    .line 87
    aget-object v6, v3, v5

    const/4 v7, 0x5

    aget-object v8, v3, v7

    const/4 v9, 0x6

    aget-object v10, v3, v9

    const/4 v11, 0x7

    aget-object v12, v3, v11

    const/4 v13, 0x0

    .line 2123
    aget-object v14, v3, v13

    aget-object v15, v3, v5

    .line 2124
    invoke-static {v14, v15}, Lcom/google/a/h/b;->b(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v14

    aget-object v15, v3, v9

    const/16 v16, 0x2

    aget-object v9, v3, v16

    invoke-static {v15, v9}, Lcom/google/a/h/b;->b(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x11

    div-int/lit8 v9, v9, 0x12

    invoke-static {v14, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v14, 0x1

    aget-object v15, v3, v14

    aget-object v14, v3, v7

    .line 2126
    invoke-static {v15, v14}, Lcom/google/a/h/b;->b(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v14

    aget-object v15, v3, v11

    const/16 v17, 0x3

    aget-object v11, v3, v17

    invoke-static {v15, v11}, Lcom/google/a/h/b;->b(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x11

    div-int/lit8 v11, v11, 0x12

    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 2123
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 3115
    aget-object v11, v3, v13

    aget-object v5, v3, v5

    .line 3116
    invoke-static {v11, v5}, Lcom/google/a/h/b;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v5

    const/4 v11, 0x6

    aget-object v11, v3, v11

    aget-object v13, v3, v16

    invoke-static {v11, v13}, Lcom/google/a/h/b;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x11

    div-int/lit8 v11, v11, 0x12

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v11, 0x1

    aget-object v11, v3, v11

    aget-object v7, v3, v7

    .line 3118
    invoke-static {v11, v7}, Lcom/google/a/h/b;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v7

    const/4 v11, 0x7

    aget-object v11, v3, v11

    aget-object v13, v3, v17

    invoke-static {v11, v13}, Lcom/google/a/h/b;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x11

    div-int/lit8 v11, v11, 0x12

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 3115
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object v5, v6

    move-object v6, v8

    move-object v7, v10

    move-object v8, v12

    move v10, v11

    .line 87
    invoke-static/range {v4 .. v10}, Lcom/google/a/h/a/j;->a(Lcom/google/a/c/b;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;II)Lcom/google/a/c/e;

    move-result-object v4

    .line 89
    new-instance v5, Lcom/google/a/r;

    .line 4090
    iget-object v6, v4, Lcom/google/a/c/e;->c:Ljava/lang/String;

    .line 5067
    iget-object v7, v4, Lcom/google/a/c/e;->a:[B

    .line 89
    sget-object v8, Lcom/google/a/a;->k:Lcom/google/a/a;

    invoke-direct {v5, v6, v7, v3, v8}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    .line 90
    sget-object v3, Lcom/google/a/s;->d:Lcom/google/a/s;

    .line 5104
    iget-object v6, v4, Lcom/google/a/c/e;->e:Ljava/lang/String;

    .line 90
    invoke-virtual {v5, v3, v6}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    .line 5133
    iget-object v3, v4, Lcom/google/a/c/e;->h:Ljava/lang/Object;

    .line 91
    check-cast v3, Lcom/google/a/h/c;

    if-eqz v3, :cond_0

    .line 93
    sget-object v4, Lcom/google/a/s;->i:Lcom/google/a/s;

    invoke-virtual {v5, v4, v3}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    .line 95
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 97
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/a/r;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/r;

    return-object v0
.end method

.method private static b(Lcom/google/a/t;Lcom/google/a/t;)I
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 8038
    :cond_0
    iget p0, p0, Lcom/google/a/t;->a:F

    .line 9038
    iget p1, p1, Lcom/google/a/t;->a:F

    sub-float/2addr p0, p1

    .line 111
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_1
    :goto_0
    const p0, 0x7fffffff

    return p0
.end method

.method private static b([Lcom/google/a/t;)I
    .locals 4

    const/4 v0, 0x0

    .line 123
    aget-object v0, p0, v0

    const/4 v1, 0x4

    aget-object v1, p0, v1

    .line 124
    invoke-static {v0, v1}, Lcom/google/a/h/b;->b(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v0

    const/4 v1, 0x6

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/a/h/b;->b(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    div-int/lit8 v1, v1, 0x12

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x5

    aget-object v2, p0, v2

    .line 126
    invoke-static {v1, v2}, Lcom/google/a/h/b;->b(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v1

    const/4 v2, 0x7

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-static {v2, p0}, Lcom/google/a/h/b;->b(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x11

    div-int/lit8 p0, p0, 0x12

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 123
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/a/c;)Lcom/google/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/google/a/h/b;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .locals 1
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
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    const/4 p2, 0x0

    .line 61
    invoke-static {p1, p2}, Lcom/google/a/h/b;->a(Lcom/google/a/c;Z)[Lcom/google/a/r;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 62
    array-length v0, p1

    if-eqz v0, :cond_1

    aget-object v0, p1, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    aget-object p1, p1, p2

    return-object p1

    .line 63
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a_(Lcom/google/a/c;)[Lcom/google/a/r;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/a/h/b;->b(Lcom/google/a/c;)[Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/a/c;)[Lcom/google/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            ")[",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x1

    .line 76
    :try_start_0
    invoke-static {p1, v0}, Lcom/google/a/h/b;->a(Lcom/google/a/c;Z)[Lcom/google/a/r;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/a/h; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/a/d; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 78
    :catch_0
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

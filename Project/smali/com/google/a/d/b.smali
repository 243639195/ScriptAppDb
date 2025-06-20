.class public final Lcom/google/a/d/b;
.super Ljava/lang/Object;
.source "DataMatrixWriter.java"

# interfaces
.implements Lcom/google/a/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/a/d/c/e;Lcom/google/a/d/c/k;II)Lcom/google/a/c/b;
    .locals 11

    .line 107
    invoke-virtual {p1}, Lcom/google/a/d/c/k;->b()I

    move-result v0

    .line 108
    invoke-virtual {p1}, Lcom/google/a/d/c/k;->c()I

    move-result v1

    .line 110
    new-instance v2, Lcom/google/a/i/c/b;

    invoke-virtual {p1}, Lcom/google/a/d/c/k;->d()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/a/d/c/k;->e()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/a/i/c/b;-><init>(II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v1, :cond_a

    .line 117
    iget v7, p1, Lcom/google/a/d/c/k;->e:I

    rem-int v7, v4, v7

    if-nez v7, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 119
    :goto_1
    invoke-virtual {p1}, Lcom/google/a/d/c/k;->d()I

    move-result v9

    if-ge v7, v9, :cond_1

    .line 120
    rem-int/lit8 v9, v7, 0x2

    if-nez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v2, v8, v5, v9}, Lcom/google/a/i/c/b;->a(IIZ)V

    add-int/2addr v8, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v7, v0, :cond_7

    .line 128
    iget v9, p1, Lcom/google/a/d/c/k;->d:I

    rem-int v9, v7, v9

    if-nez v9, :cond_3

    .line 129
    invoke-virtual {v2, v8, v5, v6}, Lcom/google/a/i/c/b;->a(IIZ)V

    add-int/lit8 v8, v8, 0x1

    .line 1059
    :cond_3
    iget-object v9, p0, Lcom/google/a/d/c/e;->b:[B

    iget v10, p0, Lcom/google/a/d/c/e;->a:I

    mul-int v10, v10, v4

    add-int/2addr v10, v7

    aget-byte v9, v9, v10

    if-ne v9, v6, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    .line 132
    :goto_4
    invoke-virtual {v2, v8, v5, v9}, Lcom/google/a/i/c/b;->a(IIZ)V

    add-int/2addr v8, v6

    .line 135
    iget v9, p1, Lcom/google/a/d/c/k;->d:I

    rem-int v9, v7, v9

    iget v10, p1, Lcom/google/a/d/c/k;->d:I

    sub-int/2addr v10, v6

    if-ne v9, v10, :cond_6

    .line 136
    rem-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_5

    const/4 v9, 0x1

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v2, v8, v5, v9}, Lcom/google/a/i/c/b;->a(IIZ)V

    add-int/lit8 v8, v8, 0x1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 142
    iget v7, p1, Lcom/google/a/d/c/k;->e:I

    rem-int v7, v4, v7

    iget v8, p1, Lcom/google/a/d/c/k;->e:I

    sub-int/2addr v8, v6

    if-ne v7, v8, :cond_9

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 144
    :goto_6
    invoke-virtual {p1}, Lcom/google/a/d/c/k;->d()I

    move-result v9

    if-ge v7, v9, :cond_8

    .line 145
    invoke-virtual {v2, v8, v5, v6}, Lcom/google/a/i/c/b;->a(IIZ)V

    add-int/2addr v8, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v5, 0x1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2044
    :cond_a
    iget p0, v2, Lcom/google/a/i/c/b;->b:I

    .line 3040
    iget p1, v2, Lcom/google/a/i/c/b;->c:I

    .line 1166
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1167
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1169
    div-int v4, v0, p0

    div-int v5, v1, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int v5, p0, v4

    sub-int/2addr v0, v5

    .line 1171
    div-int/lit8 v0, v0, 0x2

    mul-int v5, p1, v4

    sub-int/2addr v1, v5

    .line 1172
    div-int/lit8 v1, v1, 0x2

    if-lt p3, p1, :cond_c

    if-ge p2, p0, :cond_b

    goto :goto_7

    .line 1182
    :cond_b
    new-instance v5, Lcom/google/a/c/b;

    invoke-direct {v5, p2, p3}, Lcom/google/a/c/b;-><init>(II)V

    goto :goto_8

    .line 1180
    :cond_c
    :goto_7
    new-instance v5, Lcom/google/a/c/b;

    invoke-direct {v5, p0, p1}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1185
    :goto_8
    invoke-virtual {v5}, Lcom/google/a/c/b;->a()V

    const/4 p2, 0x0

    :goto_9
    if-ge p2, p1, :cond_f

    move v7, v0

    const/4 p3, 0x0

    :goto_a
    if-ge p3, p0, :cond_e

    .line 1189
    invoke-virtual {v2, p3, p2}, Lcom/google/a/i/c/b;->a(II)B

    move-result v8

    if-ne v8, v6, :cond_d

    .line 1190
    invoke-virtual {v5, v7, v1, v4, v4}, Lcom/google/a/c/b;->a(IIII)V

    :cond_d
    add-int/lit8 p3, p3, 0x1

    add-int/2addr v7, v4

    goto :goto_a

    :cond_e
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v1, v4

    goto :goto_9

    :cond_f
    return-object v5
.end method

.method private static a(Lcom/google/a/i/c/b;II)Lcom/google/a/c/b;
    .locals 10

    .line 3044
    iget v0, p0, Lcom/google/a/i/c/b;->b:I

    .line 4040
    iget v1, p0, Lcom/google/a/i/c/b;->c:I

    .line 166
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 167
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 169
    div-int v4, v2, v0

    div-int v5, v3, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int v5, v0, v4

    sub-int/2addr v2, v5

    .line 171
    div-int/lit8 v2, v2, 0x2

    mul-int v5, v1, v4

    sub-int/2addr v3, v5

    .line 172
    div-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    if-lt p2, v1, :cond_1

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v6, Lcom/google/a/c/b;

    invoke-direct {v6, p1, p2}, Lcom/google/a/c/b;-><init>(II)V

    goto :goto_1

    .line 180
    :cond_1
    :goto_0
    new-instance v6, Lcom/google/a/c/b;

    invoke-direct {v6, v0, v1}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 185
    :goto_1
    invoke-virtual {v6}, Lcom/google/a/c/b;->a()V

    const/4 p1, 0x0

    :goto_2
    if-ge p1, v1, :cond_4

    move v7, v2

    const/4 p2, 0x0

    :goto_3
    if-ge p2, v0, :cond_3

    .line 189
    invoke-virtual {p0, p2, p1}, Lcom/google/a/i/c/b;->a(II)B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 190
    invoke-virtual {v6, v7, v3, v4, v4}, Lcom/google/a/c/b;->a(IIII)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v7, v4

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    add-int/2addr v3, v4

    goto :goto_2

    :cond_4
    return-object v6
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/a/a;II)Lcom/google/a/c/b;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/google/a/d/b;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/a/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/a/g;",
            "*>;)",
            "Lcom/google/a/c/b;"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_0
    sget-object v0, Lcom/google/a/a;->f:Lcom/google/a/a;

    if-eq p2, v0, :cond_1

    .line 54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Can only encode DATA_MATRIX, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ltz p3, :cond_7

    if-gez p4, :cond_2

    goto :goto_2

    .line 62
    :cond_2
    sget-object p2, Lcom/google/a/d/c/l;->a:Lcom/google/a/d/c/l;

    const/4 v0, 0x0

    if-eqz p5, :cond_5

    .line 66
    sget-object v1, Lcom/google/a/g;->c:Lcom/google/a/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/d/c/l;

    if-eqz v1, :cond_3

    move-object p2, v1

    .line 71
    :cond_3
    sget-object v1, Lcom/google/a/g;->d:Lcom/google/a/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/f;

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, v0

    .line 76
    :goto_0
    sget-object v2, Lcom/google/a/g;->e:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/a/f;

    if-eqz p5, :cond_6

    move-object v0, p5

    goto :goto_1

    :cond_5
    move-object v1, v0

    .line 84
    :cond_6
    :goto_1
    invoke-static {p1, p2, v1, v0}, Lcom/google/a/d/c/j;->a(Ljava/lang/String;Lcom/google/a/d/c/l;Lcom/google/a/f;Lcom/google/a/f;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p5

    const/4 v2, 0x1

    invoke-static {p5, p2, v1, v0, v2}, Lcom/google/a/d/c/k;->a(ILcom/google/a/d/c/l;Lcom/google/a/f;Lcom/google/a/f;Z)Lcom/google/a/d/c/k;

    move-result-object p2

    .line 89
    invoke-static {p1, p2}, Lcom/google/a/d/c/i;->a(Ljava/lang/String;Lcom/google/a/d/c/k;)Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance p5, Lcom/google/a/d/c/e;

    invoke-virtual {p2}, Lcom/google/a/d/c/k;->b()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/a/d/c/k;->c()I

    move-result v1

    invoke-direct {p5, p1, v0, v1}, Lcom/google/a/d/c/e;-><init>(Ljava/lang/CharSequence;II)V

    .line 93
    invoke-virtual {p5}, Lcom/google/a/d/c/e;->a()V

    .line 96
    invoke-static {p5, p2, p3, p4}, Lcom/google/a/d/b;->a(Lcom/google/a/d/c/e;Lcom/google/a/d/c/k;II)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1

    .line 58
    :cond_7
    :goto_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Requested dimensions can\'t be negative: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

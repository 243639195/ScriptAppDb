.class public final Lcom/google/a/c/b;
.super Ljava/lang/Object;
.source "BitMatrix.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p1}, Lcom/google/a/c/b;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iput p1, p0, Lcom/google/a/c/b;->a:I

    .line 63
    iput p2, p0, Lcom/google/a/c/b;->b:I

    add-int/lit8 p1, p1, 0x1f

    .line 64
    div-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/a/c/b;->c:I

    .line 65
    iget p1, p0, Lcom/google/a/c/b;->c:I

    mul-int p1, p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/a/c/b;->d:[I

    return-void

    .line 60
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both dimensions must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(III[I)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/google/a/c/b;->a:I

    .line 70
    iput p2, p0, Lcom/google/a/c/b;->b:I

    .line 71
    iput p3, p0, Lcom/google/a/c/b;->c:I

    .line 72
    iput-object p4, p0, Lcom/google/a/c/b;->d:[I

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/c/b;
    .locals 10

    if-nez p0, :cond_0

    .line 98
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 101
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 107
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_8

    .line 108
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_4

    .line 109
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_1

    goto :goto_1

    .line 120
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    const/4 v8, 0x1

    .line 122
    aput-boolean v8, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 125
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    .line 126
    aput-boolean v2, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "illegal character encountered: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    if-le v4, v5, :cond_7

    if-ne v6, v1, :cond_5

    sub-int v6, v4, v5

    goto :goto_2

    :cond_5
    sub-int v5, v4, v5

    if-eq v5, v6, :cond_6

    .line 114
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "row lengths do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v5, v4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    if-le v4, v5, :cond_b

    if-ne v6, v1, :cond_9

    sub-int p0, v4, v5

    move v6, p0

    goto :goto_3

    :cond_9
    sub-int p0, v4, v5

    if-eq p0, v6, :cond_a

    .line 139
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "row lengths do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 144
    :cond_b
    new-instance p0, Lcom/google/a/c/b;

    invoke-direct {p0, v6, v7}, Lcom/google/a/c/b;-><init>(II)V

    :goto_4
    if-ge v2, v4, :cond_d

    .line 146
    aget-boolean p1, v0, v2

    if-eqz p1, :cond_c

    .line 147
    rem-int p1, v2, v6

    div-int p2, v2, v6

    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/b;->b(II)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    return-object p0
.end method

.method public static a([[Z)Lcom/google/a/c/b;
    .locals 8

    .line 82
    array-length v0, p0

    const/4 v1, 0x0

    .line 83
    aget-object v2, p0, v1

    array-length v2, v2

    .line 84
    new-instance v3, Lcom/google/a/c/b;

    invoke-direct {v3, v2, v0}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 86
    aget-object v5, p0, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_1

    .line 88
    aget-boolean v7, v5, v6

    if-eqz v7, :cond_0

    .line 89
    invoke-virtual {v3, v6, v4}, Lcom/google/a/c/b;->b(II)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\n"

    .line 450
    invoke-direct {p0, p1, p2, v0}, Lcom/google/a/c/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/a/c/b;)V
    .locals 10

    .line 199
    iget v0, p0, Lcom/google/a/c/b;->a:I

    .line 1399
    iget v1, p1, Lcom/google/a/c/b;->a:I

    if-ne v0, v1, :cond_3

    .line 199
    iget v0, p0, Lcom/google/a/c/b;->b:I

    .line 1406
    iget v1, p1, Lcom/google/a/c/b;->b:I

    if-ne v0, v1, :cond_3

    .line 199
    iget v0, p0, Lcom/google/a/c/b;->c:I

    .line 1413
    iget v1, p1, Lcom/google/a/c/b;->c:I

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 203
    :cond_0
    new-instance v0, Lcom/google/a/c/a;

    iget v1, p0, Lcom/google/a/c/b;->a:I

    invoke-direct {v0, v1}, Lcom/google/a/c/a;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 204
    :goto_0
    iget v3, p0, Lcom/google/a/c/b;->b:I

    if-ge v2, v3, :cond_2

    .line 205
    iget v3, p0, Lcom/google/a/c/b;->c:I

    mul-int v3, v3, v2

    .line 206
    invoke-virtual {p1, v2, v0}, Lcom/google/a/c/b;->a(ILcom/google/a/c/a;)Lcom/google/a/c/a;

    move-result-object v4

    .line 2287
    iget-object v4, v4, Lcom/google/a/c/a;->a:[I

    const/4 v5, 0x0

    .line 207
    :goto_1
    iget v6, p0, Lcom/google/a/c/b;->c:I

    if-ge v5, v6, :cond_1

    .line 208
    iget-object v6, p0, Lcom/google/a/c/b;->d:[I

    add-int v7, v3, v5

    aget v8, v6, v7

    aget v9, v4, v5

    xor-int/2addr v8, v9

    aput v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 201
    :cond_3
    :goto_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input matrix dimensions do not match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/c/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/a/c/b;->b:I

    iget v2, p0, Lcom/google/a/c/b;->a:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 467
    :goto_0
    iget v3, p0, Lcom/google/a/c/b;->b:I

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    .line 468
    :goto_1
    iget v4, p0, Lcom/google/a/c/b;->a:I

    if-ge v3, v4, :cond_1

    .line 469
    invoke-virtual {p0, v3, v2}, Lcom/google/a/c/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p1

    goto :goto_2

    :cond_0
    move-object v4, p2

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 471
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(II)V
    .locals 3

    .line 177
    iget v0, p0, Lcom/google/a/c/b;->c:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    .line 178
    iget-object v0, p0, Lcom/google/a/c/b;->d:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method private e()V
    .locals 5

    .line 3399
    iget v0, p0, Lcom/google/a/c/b;->a:I

    .line 3406
    iget v1, p0, Lcom/google/a/c/b;->b:I

    .line 286
    new-instance v2, Lcom/google/a/c/a;

    invoke-direct {v2, v0}, Lcom/google/a/c/a;-><init>(I)V

    .line 287
    new-instance v3, Lcom/google/a/c/a;

    invoke-direct {v3, v0}, Lcom/google/a/c/a;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v4, v1, 0x1

    .line 288
    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_0

    .line 289
    invoke-virtual {p0, v0, v2}, Lcom/google/a/c/b;->a(ILcom/google/a/c/a;)Lcom/google/a/c/a;

    move-result-object v2

    add-int/lit8 v4, v1, -0x1

    sub-int/2addr v4, v0

    .line 290
    invoke-virtual {p0, v4, v3}, Lcom/google/a/c/b;->a(ILcom/google/a/c/a;)Lcom/google/a/c/a;

    move-result-object v3

    .line 291
    invoke-virtual {v2}, Lcom/google/a/c/a;->c()V

    .line 292
    invoke-virtual {v3}, Lcom/google/a/c/a;->c()V

    .line 293
    invoke-virtual {p0, v0, v3}, Lcom/google/a/c/b;->b(ILcom/google/a/c/a;)V

    .line 294
    invoke-virtual {p0, v4, v2}, Lcom/google/a/c/b;->b(ILcom/google/a/c/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f()[I
    .locals 12

    .line 304
    iget v0, p0, Lcom/google/a/c/b;->a:I

    .line 305
    iget v1, p0, Lcom/google/a/c/b;->b:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v1

    const/4 v4, -0x1

    move v1, v0

    const/4 v0, 0x0

    .line 309
    :goto_0
    iget v6, p0, Lcom/google/a/c/b;->b:I

    if-ge v0, v6, :cond_7

    move v6, v4

    move v4, v2

    move v2, v1

    const/4 v1, 0x0

    .line 310
    :goto_1
    iget v7, p0, Lcom/google/a/c/b;->c:I

    if-ge v1, v7, :cond_6

    .line 311
    iget-object v7, p0, Lcom/google/a/c/b;->d:[I

    iget v8, p0, Lcom/google/a/c/b;->c:I

    mul-int v8, v8, v0

    add-int/2addr v8, v1

    aget v7, v7, v8

    if-eqz v7, :cond_5

    if-ge v0, v5, :cond_0

    move v5, v0

    :cond_0
    if-le v0, v6, :cond_1

    move v6, v0

    :cond_1
    shl-int/lit8 v8, v1, 0x5

    const/16 v9, 0x1f

    if-ge v8, v2, :cond_3

    const/4 v10, 0x0

    :goto_2
    rsub-int/lit8 v11, v10, 0x1f

    shl-int v11, v7, v11

    if-nez v11, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v10, v8

    if-ge v10, v2, :cond_3

    move v2, v10

    :cond_3
    add-int/lit8 v10, v8, 0x1f

    if-le v10, v4, :cond_5

    :goto_3
    ushr-int v10, v7, v9

    if-nez v10, :cond_4

    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_4
    add-int v7, v8, v9

    if-le v7, v4, :cond_5

    move v4, v7

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v2, v4

    move v4, v6

    goto :goto_0

    :cond_7
    if-lt v2, v1, :cond_9

    if-ge v4, v5, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x4

    .line 345
    new-array v0, v0, [I

    aput v1, v0, v3

    const/4 v3, 0x1

    aput v5, v0, v3

    const/4 v6, 0x2

    sub-int/2addr v2, v1

    add-int/2addr v2, v3

    aput v2, v0, v6

    const/4 v1, 0x3

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    aput v4, v0, v1

    return-object v0

    :cond_9
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private g()I
    .locals 1

    .line 399
    iget v0, p0, Lcom/google/a/c/b;->a:I

    return v0
.end method

.method private h()I
    .locals 1

    .line 406
    iget v0, p0, Lcom/google/a/c/b;->b:I

    return v0
.end method

.method private i()I
    .locals 1

    .line 413
    iget v0, p0, Lcom/google/a/c/b;->c:I

    return v0
.end method


# virtual methods
.method public final a(ILcom/google/a/c/a;)Lcom/google/a/c/a;
    .locals 4

    if-eqz p2, :cond_1

    .line 3048
    iget v0, p2, Lcom/google/a/c/a;->b:I

    .line 260
    iget v1, p0, Lcom/google/a/c/b;->a:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p2}, Lcom/google/a/c/a;->b()V

    goto :goto_1

    .line 261
    :cond_1
    :goto_0
    new-instance p2, Lcom/google/a/c/a;

    iget v0, p0, Lcom/google/a/c/b;->a:I

    invoke-direct {p2, v0}, Lcom/google/a/c/a;-><init>(I)V

    .line 265
    :goto_1
    iget v0, p0, Lcom/google/a/c/b;->c:I

    mul-int p1, p1, v0

    const/4 v0, 0x0

    .line 266
    :goto_2
    iget v1, p0, Lcom/google/a/c/b;->c:I

    if-ge v0, v1, :cond_2

    shl-int/lit8 v1, v0, 0x5

    .line 267
    iget-object v2, p0, Lcom/google/a/c/b;->d:[I

    add-int v3, p1, v0

    aget v2, v2, v3

    .line 3144
    iget-object v3, p2, Lcom/google/a/c/a;->a:[I

    div-int/lit8 v1, v1, 0x20

    aput v2, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object p2
.end method

.method public final a()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/google/a/c/b;->d:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 219
    iget-object v3, p0, Lcom/google/a/c/b;->d:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IIII)V
    .locals 7

    if-ltz p2, :cond_7

    if-gez p1, :cond_0

    goto :goto_4

    :cond_0
    if-lez p4, :cond_6

    if-gtz p3, :cond_1

    goto :goto_3

    :cond_1
    add-int/2addr p3, p1

    add-int/2addr p4, p2

    .line 240
    iget v0, p0, Lcom/google/a/c/b;->b:I

    if-gt p4, v0, :cond_5

    iget v0, p0, Lcom/google/a/c/b;->a:I

    if-le p3, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_0
    if-ge p2, p4, :cond_4

    .line 244
    iget v0, p0, Lcom/google/a/c/b;->c:I

    mul-int v0, v0, p2

    move v1, p1

    :goto_1
    if-ge v1, p3, :cond_3

    .line 246
    iget-object v2, p0, Lcom/google/a/c/b;->d:[I

    div-int/lit8 v3, v1, 0x20

    add-int/2addr v3, v0

    aget v4, v2, v3

    and-int/lit8 v5, v1, 0x1f

    const/4 v6, 0x1

    shl-int v5, v6, v5

    or-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return-void

    .line 241
    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The region must fit inside the matrix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 236
    :cond_6
    :goto_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height and width must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    :cond_7
    :goto_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Left and top must be nonnegative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(II)Z
    .locals 1

    .line 161
    iget v0, p0, Lcom/google/a/c/b;->c:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    .line 162
    iget-object v0, p0, Lcom/google/a/c/b;->d:[I

    aget p2, v0, p2

    and-int/lit8 p1, p1, 0x1f

    ushr-int p1, p2, p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(II)V
    .locals 3

    .line 172
    iget v0, p0, Lcom/google/a/c/b;->c:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    .line 173
    iget-object v0, p0, Lcom/google/a/c/b;->d:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method public final b(ILcom/google/a/c/a;)V
    .locals 3

    .line 3287
    iget-object p2, p2, Lcom/google/a/c/a;->a:[I

    .line 277
    iget-object v0, p0, Lcom/google/a/c/b;->d:[I

    iget v1, p0, Lcom/google/a/c/b;->c:I

    mul-int p1, p1, v1

    iget v1, p0, Lcom/google/a/c/b;->c:I

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final b()[I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 355
    :goto_0
    iget-object v2, p0, Lcom/google/a/c/b;->d:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/a/c/b;->d:[I

    aget v2, v2, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_0
    iget-object v2, p0, Lcom/google/a/c/b;->d:[I

    array-length v2, v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 361
    :cond_1
    iget v2, p0, Lcom/google/a/c/b;->c:I

    div-int v2, v1, v2

    .line 362
    iget v3, p0, Lcom/google/a/c/b;->c:I

    rem-int v3, v1, v3

    shl-int/lit8 v3, v3, 0x5

    .line 364
    iget-object v4, p0, Lcom/google/a/c/b;->d:[I

    aget v1, v4, v1

    const/4 v4, 0x0

    :goto_1
    rsub-int/lit8 v5, v4, 0x1f

    shl-int v5, v1, v5

    if-nez v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v3, v4

    const/4 v1, 0x2

    .line 370
    new-array v1, v1, [I

    aput v3, v1, v0

    const/4 v0, 0x1

    aput v2, v1, v0

    return-object v1
.end method

.method public final c(II)V
    .locals 3

    .line 188
    iget v0, p0, Lcom/google/a/c/b;->c:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    .line 189
    iget-object v0, p0, Lcom/google/a/c/b;->d:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    xor-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method public final c()[I
    .locals 6

    .line 374
    iget-object v0, p0, Lcom/google/a/c/b;->d:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 375
    iget-object v2, p0, Lcom/google/a/c/b;->d:[I

    aget v2, v2, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 382
    :cond_1
    iget v2, p0, Lcom/google/a/c/b;->c:I

    div-int v2, v0, v2

    .line 383
    iget v3, p0, Lcom/google/a/c/b;->c:I

    rem-int v3, v0, v3

    shl-int/lit8 v3, v3, 0x5

    .line 385
    iget-object v4, p0, Lcom/google/a/c/b;->d:[I

    aget v0, v4, v0

    const/16 v4, 0x1f

    :goto_1
    ushr-int v5, v0, v4

    if-nez v5, :cond_2

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    add-int/2addr v3, v4

    const/4 v0, 0x2

    .line 392
    new-array v0, v0, [I

    const/4 v4, 0x0

    aput v3, v0, v4

    aput v2, v0, v1

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/google/a/c/b;->d()Lcom/google/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/a/c/b;
    .locals 5

    .line 478
    new-instance v0, Lcom/google/a/c/b;

    iget v1, p0, Lcom/google/a/c/b;->a:I

    iget v2, p0, Lcom/google/a/c/b;->b:I

    iget v3, p0, Lcom/google/a/c/b;->c:I

    iget-object v4, p0, Lcom/google/a/c/b;->d:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/c/b;-><init>(III[I)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 418
    instance-of v0, p1, Lcom/google/a/c/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 421
    :cond_0
    check-cast p1, Lcom/google/a/c/b;

    .line 422
    iget v0, p0, Lcom/google/a/c/b;->a:I

    iget v2, p1, Lcom/google/a/c/b;->a:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/a/c/b;->b:I

    iget v2, p1, Lcom/google/a/c/b;->b:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/a/c/b;->c:I

    iget v2, p1, Lcom/google/a/c/b;->c:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/a/c/b;->d:[I

    iget-object p1, p1, Lcom/google/a/c/b;->d:[I

    .line 423
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 428
    iget v0, p0, Lcom/google/a/c/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 429
    iget v1, p0, Lcom/google/a/c/b;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 430
    iget v1, p0, Lcom/google/a/c/b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 431
    iget v1, p0, Lcom/google/a/c/b;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 432
    iget-object v1, p0, Lcom/google/a/c/b;->d:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "X "

    const-string v1, "  "

    const-string v2, "\n"

    .line 3450
    invoke-direct {p0, v0, v1, v2}, Lcom/google/a/c/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

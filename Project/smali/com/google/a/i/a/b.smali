.class final Lcom/google/a/i/a/b;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field final a:I

.field final b:[B


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/a/i/a/b;->a:I

    .line 33
    iput-object p2, p0, Lcom/google/a/i/a/b;->b:[B

    return-void
.end method

.method private a()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/google/a/i/a/b;->a:I

    return v0
.end method

.method private static a([BLcom/google/a/i/a/j;Lcom/google/a/i/a/f;)[Lcom/google/a/i/a/b;
    .locals 11

    .line 51
    array-length v0, p0

    .line 1074
    iget v1, p1, Lcom/google/a/i/a/j;->c:I

    if-eq v0, v1, :cond_0

    .line 52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 57
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/a/i/a/j;->a(Lcom/google/a/i/a/f;)Lcom/google/a/i/a/j$b;

    move-result-object p1

    .line 1210
    iget-object p2, p1, Lcom/google/a/i/a/j$b;->b:[Lcom/google/a/i/a/j$a;

    .line 62
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p2, v2

    .line 1229
    iget v4, v4, Lcom/google/a/i/a/j$a;->a:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    new-array v0, v3, [Lcom/google/a/i/a/b;

    .line 69
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v5, p2, v3

    move v6, v4

    const/4 v4, 0x0

    .line 2229
    :goto_2
    iget v7, v5, Lcom/google/a/i/a/j$a;->a:I

    if-ge v4, v7, :cond_2

    .line 2233
    iget v7, v5, Lcom/google/a/i/a/j$a;->b:I

    .line 3194
    iget v8, p1, Lcom/google/a/i/a/j$b;->a:I

    add-int/2addr v8, v7

    add-int/lit8 v9, v6, 0x1

    .line 73
    new-instance v10, Lcom/google/a/i/a/b;

    new-array v8, v8, [B

    invoke-direct {v10, v7, v8}, Lcom/google/a/i/a/b;-><init>(I[B)V

    aput-object v10, v0, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_1

    .line 79
    :cond_3
    aget-object p2, v0, v1

    iget-object p2, p2, Lcom/google/a/i/a/b;->b:[B

    array-length p2, p2

    .line 80
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_4

    .line 82
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/google/a/i/a/b;->b:[B

    array-length v3, v3

    if-eq v3, p2, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 4194
    iget p1, p1, Lcom/google/a/i/a/j$b;->a:I

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge p1, p2, :cond_6

    move v5, v3

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_5

    .line 96
    aget-object v6, v0, v3

    iget-object v6, v6, Lcom/google/a/i/a/b;->b:[B

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v6, p1

    add-int/lit8 v3, v3, 0x1

    move v5, v7

    goto :goto_5

    :cond_5
    add-int/lit8 p1, p1, 0x1

    move v3, v5

    goto :goto_4

    :cond_6
    move p1, v2

    :goto_6
    if-ge p1, v4, :cond_7

    .line 101
    aget-object v5, v0, p1

    iget-object v5, v5, Lcom/google/a/i/a/b;->b:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, v5, p2

    add-int/lit8 p1, p1, 0x1

    move v3, v6

    goto :goto_6

    .line 104
    :cond_7
    aget-object p1, v0, v1

    iget-object p1, p1, Lcom/google/a/i/a/b;->b:[B

    array-length p1, p1

    :goto_7
    if-ge p2, p1, :cond_a

    move v5, v3

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v4, :cond_9

    if-ge v3, v2, :cond_8

    move v6, p2

    goto :goto_9

    :cond_8
    add-int/lit8 v6, p2, 0x1

    .line 108
    :goto_9
    aget-object v7, v0, v3

    iget-object v7, v7, Lcom/google/a/i/a/b;->b:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v7, v6

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    goto :goto_8

    :cond_9
    add-int/lit8 p2, p2, 0x1

    move v3, v5

    goto :goto_7

    :cond_a
    return-object v0
.end method

.method private b()[B
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/a/i/a/b;->b:[B

    return-object v0
.end method

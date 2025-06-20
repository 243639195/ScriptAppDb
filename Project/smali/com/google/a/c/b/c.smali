.class public final Lcom/google/a/c/b/c;
.super Ljava/lang/Object;
.source "ReedSolomonDecoder.java"


# instance fields
.field private final a:Lcom/google/a/c/b/a;


# direct methods
.method public constructor <init>(Lcom/google/a/c/b/a;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    return-void
.end method

.method private a(Lcom/google/a/c/b/b;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/c/b/e;
        }
    .end annotation

    .line 26077
    iget-object v0, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 147
    new-array v0, v1, [I

    invoke-virtual {p1, v1}, Lcom/google/a/c/b/b;->a(I)I

    move-result p1

    aput p1, v0, v2

    return-object v0

    .line 149
    :cond_0
    new-array v3, v0, [I

    .line 151
    :goto_0
    iget-object v4, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    .line 26154
    iget v4, v4, Lcom/google/a/c/b/a;->l:I

    if-ge v1, v4, :cond_2

    if-ge v2, v0, :cond_2

    .line 152
    invoke-virtual {p1, v1}, Lcom/google/a/c/b/b;->b(I)I

    move-result v4

    if-nez v4, :cond_1

    .line 153
    iget-object v4, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v4, v1}, Lcom/google/a/c/b/a;->b(I)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eq v2, v0, :cond_3

    .line 158
    new-instance p1, Lcom/google/a/c/b/e;

    const-string v0, "Error locator degree does not match number of roots"

    invoke-direct {p1, v0}, Lcom/google/a/c/b/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object v3
.end method

.method private a(Lcom/google/a/c/b/b;[I)[I
    .locals 9

    .line 165
    array-length v0, p2

    .line 166
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 168
    iget-object v4, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    aget v5, p2, v3

    invoke-virtual {v4, v5}, Lcom/google/a/c/b/a;->b(I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_1
    if-ge v5, v0, :cond_2

    if-eq v3, v5, :cond_1

    .line 176
    iget-object v7, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    aget v8, p2, v5

    invoke-virtual {v7, v8, v4}, Lcom/google/a/c/b/a;->c(II)I

    move-result v7

    and-int/lit8 v8, v7, 0x1

    if-nez v8, :cond_0

    or-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    and-int/lit8 v7, v7, -0x2

    .line 178
    :goto_2
    iget-object v8, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v8, v6, v7}, Lcom/google/a/c/b/a;->c(II)I

    move-result v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 181
    :cond_2
    iget-object v5, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {p1, v4}, Lcom/google/a/c/b/b;->b(I)I

    move-result v7

    iget-object v8, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    .line 182
    invoke-virtual {v8, v6}, Lcom/google/a/c/b/a;->b(I)I

    move-result v6

    .line 181
    invoke-virtual {v5, v7, v6}, Lcom/google/a/c/b/a;->c(II)I

    move-result v5

    aput v5, v1, v3

    .line 183
    iget-object v5, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    .line 26158
    iget v5, v5, Lcom/google/a/c/b/a;->m:I

    if-eqz v5, :cond_3

    .line 184
    iget-object v5, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    aget v6, v1, v3

    invoke-virtual {v5, v6, v4}, Lcom/google/a/c/b/a;->c(II)I

    move-result v4

    aput v4, v1, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private a(Lcom/google/a/c/b/b;Lcom/google/a/c/b/b;I)[Lcom/google/a/c/b/b;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/c/b/e;
        }
    .end annotation

    .line 15077
    iget-object v0, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 16077
    iget-object v2, p2, Lcom/google/a/c/b/b;->a:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    .line 16085
    iget-object v0, v0, Lcom/google/a/c/b/a;->j:Lcom/google/a/c/b/b;

    .line 100
    iget-object v2, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    .line 16089
    iget-object v2, v2, Lcom/google/a/c/b/a;->k:Lcom/google/a/c/b/b;

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    .line 17077
    :goto_0
    iget-object v3, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    const/4 v4, 0x2

    .line 103
    div-int/lit8 v5, p3, 0x2

    if-lt v3, v5, :cond_4

    .line 110
    invoke-virtual {p1}, Lcom/google/a/c/b/b;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    new-instance p1, Lcom/google/a/c/b/e;

    const-string p2, "r_{i-1} was zero"

    invoke-direct {p1, p2}, Lcom/google/a/c/b/e;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_1
    iget-object v3, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    .line 17085
    iget-object v3, v3, Lcom/google/a/c/b/a;->j:Lcom/google/a/c/b/b;

    .line 18077
    iget-object v4, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v4, v4

    sub-int/2addr v4, v1

    .line 116
    invoke-virtual {p1, v4}, Lcom/google/a/c/b/b;->a(I)I

    move-result v4

    .line 117
    iget-object v5, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v5, v4}, Lcom/google/a/c/b/a;->b(I)I

    move-result v4

    .line 19077
    :goto_1
    iget-object v5, p2, Lcom/google/a/c/b/b;->a:[I

    array-length v5, v5

    sub-int/2addr v5, v1

    .line 20077
    iget-object v6, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v6, v6

    sub-int/2addr v6, v1

    if-lt v5, v6, :cond_2

    .line 118
    invoke-virtual {p2}, Lcom/google/a/c/b/b;->a()Z

    move-result v5

    if-nez v5, :cond_2

    .line 21077
    iget-object v5, p2, Lcom/google/a/c/b/b;->a:[I

    array-length v5, v5

    sub-int/2addr v5, v1

    .line 22077
    iget-object v6, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v6, v6

    sub-int/2addr v6, v1

    sub-int/2addr v5, v6

    .line 120
    iget-object v6, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    .line 23077
    iget-object v7, p2, Lcom/google/a/c/b/b;->a:[I

    array-length v7, v7

    sub-int/2addr v7, v1

    .line 120
    invoke-virtual {p2, v7}, Lcom/google/a/c/b/b;->a(I)I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lcom/google/a/c/b/a;->c(II)I

    move-result v6

    .line 121
    iget-object v7, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v7, v5, v6}, Lcom/google/a/c/b/a;->a(II)Lcom/google/a/c/b/b;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/a/c/b/b;->a(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v3

    .line 122
    invoke-virtual {p1, v5, v6}, Lcom/google/a/c/b/b;->a(II)Lcom/google/a/c/b/b;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/google/a/c/b/b;->a(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object p2

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {v3, v2}, Lcom/google/a/c/b/b;->b(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/a/c/b/b;->a(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v0

    .line 24077
    iget-object v3, p2, Lcom/google/a/c/b/b;->a:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    .line 25077
    iget-object v4, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v4, v4

    sub-int/2addr v4, v1

    if-lt v3, v4, :cond_3

    .line 128
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Division algorithm failed to reduce polynomial?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto/16 :goto_0

    :cond_4
    const/4 p2, 0x0

    .line 132
    invoke-virtual {v2, p2}, Lcom/google/a/c/b/b;->a(I)I

    move-result p3

    if-nez p3, :cond_5

    .line 134
    new-instance p1, Lcom/google/a/c/b/e;

    const-string p2, "sigmaTilde(0) was zero"

    invoke-direct {p1, p2}, Lcom/google/a/c/b/e;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v0, p3}, Lcom/google/a/c/b/a;->b(I)I

    move-result p3

    .line 138
    invoke-virtual {v2, p3}, Lcom/google/a/c/b/b;->c(I)Lcom/google/a/c/b/b;

    move-result-object v0

    .line 139
    invoke-virtual {p1, p3}, Lcom/google/a/c/b/b;->c(I)Lcom/google/a/c/b/b;

    move-result-object p1

    .line 140
    new-array p3, v4, [Lcom/google/a/c/b/b;

    aput-object v0, p3, p2

    aput-object p1, p3, v1

    return-object p3
.end method


# virtual methods
.method public final a([II)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/c/b/e;
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/google/a/c/b/b;

    iget-object v1, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-direct {v0, v1, p1}, Lcom/google/a/c/b/b;-><init>(Lcom/google/a/c/b/a;[I)V

    .line 60
    new-array v1, p2, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, p2, :cond_1

    .line 63
    iget-object v6, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    .line 1158
    iget v7, v6, Lcom/google/a/c/b/a;->m:I

    add-int/2addr v7, v4

    .line 2120
    iget-object v6, v6, Lcom/google/a/c/b/a;->i:[I

    aget v6, v6, v7

    .line 63
    invoke-virtual {v0, v6}, Lcom/google/a/c/b/b;->b(I)I

    move-result v6

    add-int/lit8 v7, p2, -0x1

    sub-int/2addr v7, v4

    .line 64
    aput v6, v1, v7

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    return-void

    .line 72
    :cond_2
    new-instance v0, Lcom/google/a/c/b/b;

    iget-object v4, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-direct {v0, v4, v1}, Lcom/google/a/c/b/b;-><init>(Lcom/google/a/c/b/a;[I)V

    .line 73
    iget-object v1, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    .line 74
    invoke-virtual {v1, p2, v3}, Lcom/google/a/c/b/a;->a(II)Lcom/google/a/c/b/b;

    move-result-object v1

    .line 4077
    iget-object v4, v1, Lcom/google/a/c/b/b;->a:[I

    array-length v4, v4

    sub-int/2addr v4, v3

    .line 5077
    iget-object v5, v0, Lcom/google/a/c/b/b;->a:[I

    array-length v5, v5

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 3099
    :goto_1
    iget-object v4, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    .line 5085
    iget-object v4, v4, Lcom/google/a/c/b/a;->j:Lcom/google/a/c/b/b;

    .line 3100
    iget-object v5, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    .line 5089
    iget-object v5, v5, Lcom/google/a/c/b/a;->k:Lcom/google/a/c/b/b;

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 6077
    :goto_2
    iget-object v6, v0, Lcom/google/a/c/b/b;->a:[I

    array-length v6, v6

    sub-int/2addr v6, v3

    const/4 v7, 0x2

    .line 3103
    div-int/lit8 v8, p2, 0x2

    if-lt v6, v8, :cond_7

    .line 3110
    invoke-virtual {v0}, Lcom/google/a/c/b/b;->a()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3112
    new-instance p1, Lcom/google/a/c/b/e;

    const-string p2, "r_{i-1} was zero"

    invoke-direct {p1, p2}, Lcom/google/a/c/b/e;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3115
    :cond_4
    iget-object v6, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    .line 6085
    iget-object v6, v6, Lcom/google/a/c/b/a;->j:Lcom/google/a/c/b/b;

    .line 7077
    iget-object v7, v0, Lcom/google/a/c/b/b;->a:[I

    array-length v7, v7

    sub-int/2addr v7, v3

    .line 3116
    invoke-virtual {v0, v7}, Lcom/google/a/c/b/b;->a(I)I

    move-result v7

    .line 3117
    iget-object v8, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v8, v7}, Lcom/google/a/c/b/a;->b(I)I

    move-result v7

    .line 8077
    :goto_3
    iget-object v8, v1, Lcom/google/a/c/b/b;->a:[I

    array-length v8, v8

    sub-int/2addr v8, v3

    .line 9077
    iget-object v9, v0, Lcom/google/a/c/b/b;->a:[I

    array-length v9, v9

    sub-int/2addr v9, v3

    if-lt v8, v9, :cond_5

    .line 3118
    invoke-virtual {v1}, Lcom/google/a/c/b/b;->a()Z

    move-result v8

    if-nez v8, :cond_5

    .line 10077
    iget-object v8, v1, Lcom/google/a/c/b/b;->a:[I

    array-length v8, v8

    sub-int/2addr v8, v3

    .line 11077
    iget-object v9, v0, Lcom/google/a/c/b/b;->a:[I

    array-length v9, v9

    sub-int/2addr v9, v3

    sub-int/2addr v8, v9

    .line 3120
    iget-object v9, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    .line 12077
    iget-object v10, v1, Lcom/google/a/c/b/b;->a:[I

    array-length v10, v10

    sub-int/2addr v10, v3

    .line 3120
    invoke-virtual {v1, v10}, Lcom/google/a/c/b/b;->a(I)I

    move-result v10

    invoke-virtual {v9, v10, v7}, Lcom/google/a/c/b/a;->c(II)I

    move-result v9

    .line 3121
    iget-object v10, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v10, v8, v9}, Lcom/google/a/c/b/a;->a(II)Lcom/google/a/c/b/b;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/google/a/c/b/b;->a(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v6

    .line 3122
    invoke-virtual {v0, v8, v9}, Lcom/google/a/c/b/b;->a(II)Lcom/google/a/c/b/b;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/google/a/c/b/b;->a(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v1

    goto :goto_3

    .line 3125
    :cond_5
    invoke-virtual {v6, v5}, Lcom/google/a/c/b/b;->b(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/a/c/b/b;->a(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v4

    .line 13077
    iget-object v6, v1, Lcom/google/a/c/b/b;->a:[I

    array-length v6, v6

    sub-int/2addr v6, v3

    .line 14077
    iget-object v7, v0, Lcom/google/a/c/b/b;->a:[I

    array-length v7, v7

    sub-int/2addr v7, v3

    if-lt v6, v7, :cond_6

    .line 3128
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Division algorithm failed to reduce polynomial?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    goto/16 :goto_2

    .line 3132
    :cond_7
    invoke-virtual {v5, v2}, Lcom/google/a/c/b/b;->a(I)I

    move-result p2

    if-nez p2, :cond_8

    .line 3134
    new-instance p1, Lcom/google/a/c/b/e;

    const-string p2, "sigmaTilde(0) was zero"

    invoke-direct {p1, p2}, Lcom/google/a/c/b/e;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3137
    :cond_8
    iget-object v1, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v1, p2}, Lcom/google/a/c/b/a;->b(I)I

    move-result p2

    .line 3138
    invoke-virtual {v5, p2}, Lcom/google/a/c/b/b;->c(I)Lcom/google/a/c/b/b;

    move-result-object v1

    .line 3139
    invoke-virtual {v0, p2}, Lcom/google/a/c/b/b;->c(I)Lcom/google/a/c/b/b;

    move-result-object p2

    .line 3140
    new-array v0, v7, [Lcom/google/a/c/b/b;

    aput-object v1, v0, v2

    aput-object p2, v0, v3

    .line 75
    aget-object p2, v0, v2

    .line 76
    aget-object v0, v0, v3

    .line 77
    invoke-direct {p0, p2}, Lcom/google/a/c/b/c;->a(Lcom/google/a/c/b/b;)[I

    move-result-object p2

    .line 78
    invoke-direct {p0, v0, p2}, Lcom/google/a/c/b/c;->a(Lcom/google/a/c/b/b;[I)[I

    move-result-object v0

    .line 79
    :goto_4
    array-length v1, p2

    if-ge v2, v1, :cond_a

    .line 80
    array-length v1, p1

    sub-int/2addr v1, v3

    iget-object v4, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    aget v5, p2, v2

    invoke-virtual {v4, v5}, Lcom/google/a/c/b/a;->a(I)I

    move-result v4

    sub-int/2addr v1, v4

    if-gez v1, :cond_9

    .line 82
    new-instance p1, Lcom/google/a/c/b/e;

    const-string p2, "Bad error location"

    invoke-direct {p1, p2}, Lcom/google/a/c/b/e;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_9
    aget v4, p1, v1

    aget v5, v0, v2

    invoke-static {v4, v5}, Lcom/google/a/c/b/a;->b(II)I

    move-result v4

    aput v4, p1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

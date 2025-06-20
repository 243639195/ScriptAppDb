.class public final Lcom/google/a/e/a;
.super Ljava/lang/Object;
.source "MaxiCodeReader.java"

# interfaces
.implements Lcom/google/a/p;


# static fields
.field private static final a:[Lcom/google/a/t;

.field private static final b:I = 0x1e

.field private static final c:I = 0x21


# instance fields
.field private final d:Lcom/google/a/e/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    new-array v0, v0, [Lcom/google/a/t;

    sput-object v0, Lcom/google/a/e/a;->a:[Lcom/google/a/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/a/e/a/c;

    invoke-direct {v0}, Lcom/google/a/e/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/a/e/a;->d:Lcom/google/a/e/a/c;

    return-void
.end method

.method private static a(Lcom/google/a/c/b;)Lcom/google/a/c/b;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 3304
    iget v0, p0, Lcom/google/a/c/b;->a:I

    .line 3305
    iget v1, p0, Lcom/google/a/c/b;->b:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v1

    const/4 v4, -0x1

    move v1, v0

    const/4 v0, 0x0

    .line 3309
    :goto_0
    iget v6, p0, Lcom/google/a/c/b;->b:I

    if-ge v0, v6, :cond_7

    move v6, v4

    move v4, v2

    move v2, v1

    const/4 v1, 0x0

    .line 3310
    :goto_1
    iget v7, p0, Lcom/google/a/c/b;->c:I

    if-ge v1, v7, :cond_6

    .line 3311
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
    const/4 v0, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v2, v1, :cond_9

    if-ge v4, v5, :cond_8

    goto :goto_4

    :cond_8
    const/4 v8, 0x4

    .line 3345
    new-array v8, v8, [I

    aput v1, v8, v3

    aput v5, v8, v7

    sub-int/2addr v2, v1

    add-int/2addr v2, v7

    aput v2, v8, v6

    sub-int/2addr v4, v5

    add-int/2addr v4, v7

    aput v4, v8, v0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v8, 0x0

    :goto_5
    if-nez v8, :cond_a

    .line 97
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0

    .line 100
    :cond_a
    aget v1, v8, v3

    .line 101
    aget v2, v8, v7

    .line 102
    aget v4, v8, v6

    .line 103
    aget v0, v8, v0

    .line 106
    new-instance v5, Lcom/google/a/c/b;

    const/16 v7, 0x21

    const/16 v8, 0x1e

    invoke-direct {v5, v8, v7}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v7, :cond_d

    mul-int v10, v9, v0

    .line 108
    div-int/lit8 v11, v0, 0x2

    add-int/2addr v10, v11

    div-int/2addr v10, v7

    add-int/2addr v10, v2

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v8, :cond_c

    mul-int v12, v11, v4

    .line 110
    div-int/lit8 v13, v4, 0x2

    add-int/2addr v12, v13

    and-int/lit8 v13, v9, 0x1

    mul-int v13, v13, v4

    div-int/2addr v13, v6

    add-int/2addr v12, v13

    div-int/2addr v12, v8

    add-int/2addr v12, v1

    .line 111
    invoke-virtual {p0, v12, v10}, Lcom/google/a/c/b;->a(II)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 112
    invoke-virtual {v5, v11, v9}, Lcom/google/a/c/b;->b(II)V

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_d
    return-object v5
.end method


# virtual methods
.method public final a(Lcom/google/a/c;)Lcom/google/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/google/a/e/a;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .locals 13
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
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation

    if-eqz p2, :cond_f

    .line 63
    sget-object v0, Lcom/google/a/e;->b:Lcom/google/a/e;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 64
    invoke-virtual {p1}, Lcom/google/a/c;->c()Lcom/google/a/c/b;

    move-result-object p1

    .line 1304
    iget p2, p1, Lcom/google/a/c/b;->a:I

    .line 1305
    iget v0, p1, Lcom/google/a/c/b;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, v0

    const/4 v3, -0x1

    move v0, p2

    const/4 p2, 0x0

    .line 1309
    :goto_0
    iget v5, p1, Lcom/google/a/c/b;->b:I

    if-ge p2, v5, :cond_7

    move v5, v4

    move v4, v0

    const/4 v0, 0x0

    .line 1310
    :goto_1
    iget v6, p1, Lcom/google/a/c/b;->c:I

    if-ge v0, v6, :cond_6

    .line 1311
    iget-object v6, p1, Lcom/google/a/c/b;->d:[I

    iget v7, p1, Lcom/google/a/c/b;->c:I

    mul-int v7, v7, p2

    add-int/2addr v7, v0

    aget v6, v6, v7

    if-eqz v6, :cond_5

    if-ge p2, v5, :cond_0

    move v5, p2

    :cond_0
    if-le p2, v3, :cond_1

    move v3, p2

    :cond_1
    shl-int/lit8 v7, v0, 0x5

    const/16 v8, 0x1f

    if-ge v7, v4, :cond_3

    const/4 v9, 0x0

    :goto_2
    rsub-int/lit8 v10, v9, 0x1f

    shl-int v10, v6, v10

    if-nez v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v9, v7

    if-ge v9, v4, :cond_3

    move v4, v9

    :cond_3
    add-int/lit8 v9, v7, 0x1f

    if-le v9, v1, :cond_5

    :goto_3
    ushr-int v9, v6, v8

    if-nez v9, :cond_4

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_4
    add-int v6, v7, v8

    if-le v6, v1, :cond_5

    move v1, v6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 p2, p2, 0x1

    move v0, v4

    move v4, v5

    goto :goto_0

    :cond_7
    const/4 p2, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt v1, v0, :cond_9

    if-ge v3, v4, :cond_8

    goto :goto_4

    :cond_8
    const/4 v7, 0x4

    .line 1345
    new-array v7, v7, [I

    aput v0, v7, v2

    aput v4, v7, v6

    sub-int/2addr v1, v0

    add-int/2addr v1, v6

    aput v1, v7, v5

    sub-int/2addr v3, v4

    add-int/2addr v3, v6

    aput v3, v7, p2

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_a

    .line 1097
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1

    .line 1100
    :cond_a
    aget v0, v7, v2

    .line 1101
    aget v1, v7, v6

    .line 1102
    aget v3, v7, v5

    .line 1103
    aget p2, v7, p2

    .line 1106
    new-instance v4, Lcom/google/a/c/b;

    const/16 v6, 0x21

    const/16 v7, 0x1e

    invoke-direct {v4, v7, v6}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v6, :cond_d

    mul-int v9, v8, p2

    .line 1108
    div-int/lit8 v10, p2, 0x2

    add-int/2addr v9, v10

    div-int/2addr v9, v6

    add-int/2addr v9, v1

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v7, :cond_c

    mul-int v11, v10, v3

    .line 1110
    div-int/lit8 v12, v3, 0x2

    add-int/2addr v11, v12

    and-int/lit8 v12, v8, 0x1

    mul-int v12, v12, v3

    div-int/2addr v12, v5

    add-int/2addr v11, v12

    div-int/2addr v11, v7

    add-int/2addr v11, v0

    .line 1111
    invoke-virtual {p1, v11, v9}, Lcom/google/a/c/b;->a(II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1112
    invoke-virtual {v4, v10, v8}, Lcom/google/a/c/b;->b(II)V

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 65
    :cond_d
    iget-object p1, p0, Lcom/google/a/e/a;->d:Lcom/google/a/e/a/c;

    invoke-virtual {p1, v4}, Lcom/google/a/e/a/c;->a(Lcom/google/a/c/b;)Lcom/google/a/c/e;

    move-result-object p1

    .line 70
    new-instance p2, Lcom/google/a/r;

    .line 2090
    iget-object v0, p1, Lcom/google/a/c/e;->c:Ljava/lang/String;

    .line 3067
    iget-object v1, p1, Lcom/google/a/c/e;->a:[B

    .line 70
    sget-object v2, Lcom/google/a/e/a;->a:[Lcom/google/a/t;

    sget-object v3, Lcom/google/a/a;->j:Lcom/google/a/a;

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    .line 3104
    iget-object p1, p1, Lcom/google/a/c/e;->e:Ljava/lang/String;

    if-eqz p1, :cond_e

    .line 74
    sget-object v0, Lcom/google/a/s;->d:Lcom/google/a/s;

    invoke-virtual {p2, v0, p1}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    :cond_e
    return-object p2

    .line 67
    :cond_f
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

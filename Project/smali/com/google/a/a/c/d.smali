.class public final Lcom/google/a/a/c/d;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field static final a:[Ljava/lang/String;

.field static final b:I = 0x0

.field static final c:I = 0x1

.field static final d:I = 0x2

.field static final e:I = 0x3

.field static final f:I = 0x4

.field static final g:[[I

.field static final h:[[I

.field private static final j:[[I


# instance fields
.field final i:[B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x5

    .line 43
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "UPPER"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "LOWER"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "DIGIT"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "MIXED"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "PUNCT"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/a/a/c/d;->a:[Ljava/lang/String;

    .line 56
    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v5

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v6

    new-array v2, v0, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/a/a/c/d;->g:[[I

    const/16 v1, 0x100

    .line 97
    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 99
    sput-object v0, Lcom/google/a/a/c/d;->j:[[I

    aget-object v0, v0, v3

    const/16 v1, 0x20

    aput v4, v0, v1

    const/16 v0, 0x41

    :goto_0
    const/16 v2, 0x5a

    if-gt v0, v2, :cond_0

    .line 101
    sget-object v2, Lcom/google/a/a/c/d;->j:[[I

    aget-object v2, v2, v3

    add-int/lit8 v8, v0, -0x41

    add-int/2addr v8, v5

    aput v8, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    sget-object v0, Lcom/google/a/a/c/d;->j:[[I

    aget-object v0, v0, v4

    aput v4, v0, v1

    const/16 v0, 0x61

    :goto_1
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_1

    .line 105
    sget-object v2, Lcom/google/a/a/c/d;->j:[[I

    aget-object v2, v2, v4

    add-int/lit8 v8, v0, -0x61

    add-int/2addr v8, v5

    aput v8, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_1
    sget-object v0, Lcom/google/a/a/c/d;->j:[[I

    aget-object v0, v0, v5

    aput v4, v0, v1

    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 109
    sget-object v1, Lcom/google/a/a/c/d;->j:[[I

    aget-object v1, v1, v5

    add-int/lit8 v2, v0, -0x30

    add-int/2addr v2, v5

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 111
    :cond_2
    sget-object v0, Lcom/google/a/a/c/d;->j:[[I

    aget-object v0, v0, v5

    const/16 v1, 0x2c

    const/16 v2, 0xc

    aput v2, v0, v1

    .line 112
    sget-object v0, Lcom/google/a/a/c/d;->j:[[I

    aget-object v0, v0, v5

    const/16 v1, 0x2e

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v0, 0x1c

    .line 113
    new-array v1, v0, [I

    fill-array-data v1, :array_5

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_3

    .line 119
    sget-object v8, Lcom/google/a/a/c/d;->j:[[I

    aget-object v8, v8, v6

    aget v9, v1, v2

    aput v2, v8, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/16 v1, 0x1f

    .line 121
    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v1, :cond_5

    .line 127
    aget v9, v2, v8

    if-lez v9, :cond_4

    .line 128
    sget-object v9, Lcom/google/a/a/c/d;->j:[[I

    aget-object v9, v9, v7

    aget v10, v2, v8

    aput v8, v9, v10

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x6

    .line 135
    filled-new-array {v1, v1}, [I

    move-result-object v1

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 137
    sput-object v1, Lcom/google/a/a/c/d;->h:[[I

    array-length v2, v1

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v2, :cond_6

    aget-object v9, v1, v8

    const/4 v10, -0x1

    .line 138
    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 140
    :cond_6
    sget-object v1, Lcom/google/a/a/c/d;->h:[[I

    aget-object v1, v1, v3

    aput v3, v1, v7

    .line 142
    sget-object v1, Lcom/google/a/a/c/d;->h:[[I

    aget-object v1, v1, v4

    aput v3, v1, v7

    .line 143
    sget-object v1, Lcom/google/a/a/c/d;->h:[[I

    aget-object v1, v1, v4

    aput v0, v1, v3

    .line 145
    sget-object v0, Lcom/google/a/a/c/d;->h:[[I

    aget-object v0, v0, v6

    aput v3, v0, v7

    .line 147
    sget-object v0, Lcom/google/a/a/c/d;->h:[[I

    aget-object v0, v0, v5

    aput v3, v0, v7

    .line 148
    sget-object v0, Lcom/google/a/a/c/d;->h:[[I

    aget-object v0, v0, v5

    const/16 v1, 0xf

    aput v1, v0, v3

    return-void

    :array_0
    .array-data 4
        0x0
        0x5001c
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_1
    .array-data 4
        0x901ee
        0x0
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_2
    .array-data 4
        0x4000e
        0x901dc
        0x0
        0x901dd
        0xe3bbe
    .end array-data

    :array_3
    .array-data 4
        0x5001d
        0x5001c
        0xa03be
        0x0
        0x5001e
    .end array-data

    :array_4
    .array-data 4
        0x5001f
        0xa03fc
        0xa03fe
        0xa03fd
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/google/a/a/c/d;->i:[B

    return-void
.end method

.method private a()Lcom/google/a/c/a;
    .locals 13

    .line 161
    sget-object v0, Lcom/google/a/a/c/f;->a:Lcom/google/a/a/c/f;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .line 162
    :goto_0
    iget-object v3, p0, Lcom/google/a/a/c/d;->i:[B

    array-length v3, v3

    if-ge v0, v3, :cond_c

    add-int/lit8 v3, v0, 0x1

    .line 164
    iget-object v4, p0, Lcom/google/a/a/c/d;->i:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/google/a/a/c/d;->i:[B

    aget-byte v4, v4, v3

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 165
    :goto_1
    iget-object v5, p0, Lcom/google/a/a/c/d;->i:[B

    aget-byte v5, v5, v0

    const/16 v6, 0xd

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    if-eq v5, v6, :cond_5

    const/16 v6, 0x2c

    const/16 v10, 0x20

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_3

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    if-ne v4, v10, :cond_1

    const/4 v4, 0x5

    goto :goto_2

    :cond_3
    if-ne v4, v10, :cond_1

    const/4 v4, 0x3

    goto :goto_2

    :cond_4
    if-ne v4, v10, :cond_1

    const/4 v4, 0x4

    goto :goto_2

    :cond_5
    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    :goto_2
    const/4 v5, 0x1

    if-lez v4, :cond_b

    .line 1255
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1256
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/a/a/c/f;

    .line 1263
    invoke-virtual {v10, v0}, Lcom/google/a/a/c/f;->b(I)Lcom/google/a/a/c/f;

    move-result-object v11

    .line 1265
    invoke-virtual {v11, v9, v4}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2058
    iget v12, v10, Lcom/google/a/a/c/f;->b:I

    if-eq v12, v9, :cond_7

    .line 1269
    invoke-virtual {v11, v9, v4}, Lcom/google/a/a/c/f;->b(II)Lcom/google/a/a/c/f;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eq v4, v7, :cond_8

    if-ne v4, v9, :cond_9

    :cond_8
    rsub-int/lit8 v12, v4, 0x10

    .line 1274
    invoke-virtual {v11, v8, v12}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object v11

    .line 1275
    invoke-virtual {v11, v8, v5}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object v11

    .line 1276
    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2066
    :cond_9
    iget v11, v10, Lcom/google/a/a/c/f;->c:I

    if-lez v11, :cond_6

    .line 1281
    invoke-virtual {v10, v0}, Lcom/google/a/a/c/f;->a(I)Lcom/google/a/a/c/f;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/google/a/a/c/f;->a(I)Lcom/google/a/a/c/f;

    move-result-object v10

    .line 1282
    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1259
    :cond_a
    invoke-static {v6}, Lcom/google/a/a/c/d;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    move-object v2, v0

    move v0, v3

    goto :goto_4

    .line 188
    :cond_b
    invoke-direct {p0, v2, v0}, Lcom/google/a/a/c/d;->a(Ljava/lang/Iterable;I)Ljava/util/Collection;

    move-result-object v2

    :goto_4
    add-int/2addr v0, v5

    goto/16 :goto_0

    .line 192
    :cond_c
    new-instance v0, Lcom/google/a/a/c/d$1;

    invoke-direct {v0, p0}, Lcom/google/a/a/c/d$1;-><init>(Lcom/google/a/a/c/d;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/c/f;

    .line 199
    iget-object v1, p0, Lcom/google/a/a/c/d;->i:[B

    invoke-virtual {v0, v1}, Lcom/google/a/a/c/f;->a([B)Lcom/google/a/c/a;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/a/a/c/f;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/google/a/a/c/f;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 288
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/a/c/f;

    const/4 v2, 0x1

    .line 290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 291
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/a/a/c/f;

    .line 292
    invoke-virtual {v4, v1}, Lcom/google/a/a/c/f;->a(Lcom/google/a/a/c/f;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 296
    :cond_2
    invoke-virtual {v1, v4}, Lcom/google/a/a/c/f;->a(Lcom/google/a/a/c/f;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 297
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v2, :cond_0

    .line 301
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private a(Ljava/lang/Iterable;I)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/a/a/c/f;",
            ">;I)",
            "Ljava/util/Collection<",
            "Lcom/google/a/a/c/f;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 207
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/a/c/f;

    .line 208
    invoke-virtual {p0, v1, p2, v0}, Lcom/google/a/a/c/d;->a(Lcom/google/a/a/c/f;ILjava/util/Collection;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-static {v0}, Lcom/google/a/a/c/d;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method static a(Ljava/lang/Iterable;II)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/a/a/c/f;",
            ">;II)",
            "Ljava/util/Collection<",
            "Lcom/google/a/a/c/f;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 256
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/a/c/f;

    .line 6263
    invoke-virtual {v1, p1}, Lcom/google/a/a/c/f;->b(I)Lcom/google/a/a/c/f;

    move-result-object v2

    const/4 v3, 0x4

    .line 6265
    invoke-virtual {v2, v3, p2}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7058
    iget v4, v1, Lcom/google/a/a/c/f;->b:I

    if-eq v4, v3, :cond_1

    .line 6269
    invoke-virtual {v2, v3, p2}, Lcom/google/a/a/c/f;->b(II)Lcom/google/a/a/c/f;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v4, 0x3

    if-eq p2, v4, :cond_2

    if-ne p2, v3, :cond_3

    :cond_2
    rsub-int/lit8 v3, p2, 0x10

    const/4 v4, 0x2

    .line 6274
    invoke-virtual {v2, v4, v3}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object v2

    const/4 v3, 0x1

    .line 6275
    invoke-virtual {v2, v4, v3}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object v2

    .line 6276
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7066
    :cond_3
    iget v2, v1, Lcom/google/a/a/c/f;->c:I

    if-lez v2, :cond_0

    .line 6281
    invoke-virtual {v1, p1}, Lcom/google/a/a/c/f;->a(I)Lcom/google/a/a/c/f;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/google/a/a/c/f;->a(I)Lcom/google/a/a/c/f;

    move-result-object v1

    .line 6282
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    :cond_4
    invoke-static {v0}, Lcom/google/a/a/c/d;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/a/a/c/f;IILjava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/c/f;",
            "II",
            "Ljava/util/Collection<",
            "Lcom/google/a/a/c/f;",
            ">;)V"
        }
    .end annotation

    .line 263
    invoke-virtual {p0, p1}, Lcom/google/a/a/c/f;->b(I)Lcom/google/a/a/c/f;

    move-result-object v0

    const/4 v1, 0x4

    .line 265
    invoke-virtual {v0, v1, p2}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 8058
    iget v2, p0, Lcom/google/a/a/c/f;->b:I

    if-eq v2, v1, :cond_0

    .line 269
    invoke-virtual {v0, v1, p2}, Lcom/google/a/a/c/f;->b(II)Lcom/google/a/a/c/f;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_2

    :cond_1
    rsub-int/lit8 p2, p2, 0x10

    const/4 v1, 0x2

    .line 274
    invoke-virtual {v0, v1, p2}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object p2

    .line 275
    invoke-virtual {p2, v1, v3}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object p2

    .line 276
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 8066
    :cond_2
    iget p2, p0, Lcom/google/a/a/c/f;->c:I

    if-lez p2, :cond_3

    .line 281
    invoke-virtual {p0, p1}, Lcom/google/a/a/c/f;->a(I)Lcom/google/a/a/c/f;

    move-result-object p0

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/google/a/a/c/f;->a(I)Lcom/google/a/a/c/f;

    move-result-object p0

    .line 282
    invoke-interface {p3, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method final a(Lcom/google/a/a/c/f;ILjava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/c/f;",
            "I",
            "Ljava/util/Collection<",
            "Lcom/google/a/a/c/f;",
            ">;)V"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/a/a/c/d;->i:[B

    aget-byte v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 218
    sget-object v1, Lcom/google/a/a/c/d;->j:[[I

    .line 3058
    iget v2, p1, Lcom/google/a/a/c/f;->b:I

    .line 218
    aget-object v1, v1, v2

    aget v1, v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x4

    if-gt v2, v4, :cond_5

    .line 221
    sget-object v4, Lcom/google/a/a/c/d;->j:[[I

    aget-object v4, v4, v2

    aget v4, v4, v0

    if-lez v4, :cond_4

    if-nez v3, :cond_1

    .line 225
    invoke-virtual {p1, p2}, Lcom/google/a/a/c/f;->b(I)Lcom/google/a/a/c/f;

    move-result-object v3

    :cond_1
    if-eqz v1, :cond_2

    .line 4058
    iget v5, p1, Lcom/google/a/a/c/f;->b:I

    if-eq v2, v5, :cond_2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 233
    :cond_2
    invoke-virtual {v3, v2, v4}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object v5

    .line 234
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v1, :cond_4

    .line 237
    sget-object v5, Lcom/google/a/a/c/d;->h:[[I

    .line 5058
    iget v6, p1, Lcom/google/a/a/c/f;->b:I

    .line 237
    aget-object v5, v5, v6

    aget v5, v5, v2

    if-ltz v5, :cond_4

    .line 240
    invoke-virtual {v3, v2, v4}, Lcom/google/a/a/c/f;->b(II)Lcom/google/a/a/c/f;

    move-result-object v4

    .line 241
    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5066
    :cond_5
    iget v1, p1, Lcom/google/a/a/c/f;->c:I

    if-gtz v1, :cond_6

    .line 245
    sget-object v1, Lcom/google/a/a/c/d;->j:[[I

    .line 6058
    iget v2, p1, Lcom/google/a/a/c/f;->b:I

    .line 245
    aget-object v1, v1, v2

    aget v0, v1, v0

    if-nez v0, :cond_7

    .line 249
    :cond_6
    invoke-virtual {p1, p2}, Lcom/google/a/a/c/f;->a(I)Lcom/google/a/a/c/f;

    move-result-object p1

    .line 250
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

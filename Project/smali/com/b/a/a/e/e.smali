.class final Lcom/b/a/a/e/e;
.super Ljava/lang/Object;
.source "Hpack.java"


# instance fields
.field a:[Lcom/b/a/a/e/c;

.field b:I

.field c:I

.field d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/a/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/b/b/h;

.field private final g:I

.field private h:I


# direct methods
.method constructor <init>(Lcom/b/b/x;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, v0}, Lcom/b/a/a/e/e;-><init>(Lcom/b/b/x;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/b/x;B)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/b/a/a/e/e;->e:Ljava/util/List;

    const/16 p2, 0x8

    .line 124
    new-array p2, p2, [Lcom/b/a/a/e/c;

    iput-object p2, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    .line 126
    iget-object p2, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/b/a/a/e/e;->b:I

    const/4 p2, 0x0

    .line 127
    iput p2, p0, Lcom/b/a/a/e/e;->c:I

    .line 128
    iput p2, p0, Lcom/b/a/a/e/e;->d:I

    const/16 p2, 0x1000

    .line 135
    iput p2, p0, Lcom/b/a/a/e/e;->g:I

    .line 136
    iput p2, p0, Lcom/b/a/a/e/e;->h:I

    .line 137
    invoke-static {p1}, Lcom/b/b/n;->a(Lcom/b/b/x;)Lcom/b/b/h;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a/e/e;->f:Lcom/b/b/h;

    return-void
.end method

.method private a(I)I
    .locals 5

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lcom/b/a/a/e/e;->b:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 167
    iget-object v2, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/b/a/a/e/c;->i:I

    sub-int/2addr p1, v2

    .line 168
    iget v2, p0, Lcom/b/a/a/e/e;->d:I

    iget-object v3, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/b/a/a/e/c;->i:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/b/a/a/e/e;->d:I

    .line 169
    iget v2, p0, Lcom/b/a/a/e/e;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/b/a/a/e/e;->c:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    iget v1, p0, Lcom/b/a/a/e/e;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    iget v3, p0, Lcom/b/a/a/e/e;->b:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    iget v4, p0, Lcom/b/a/a/e/e;->c:I

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget p1, p0, Lcom/b/a/a/e/e;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/b/a/a/e/e;->b:I

    :cond_1
    return v0
.end method

.method private a(II)I
    .locals 2

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 323
    :goto_0
    invoke-direct {p0}, Lcom/b/a/a/e/e;->e()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p1, v0, p1

    add-int/2addr p2, p1

    return p2
.end method

.method private a(Lcom/b/a/a/e/c;)V
    .locals 6

    .line 275
    iget-object v0, p0, Lcom/b/a/a/e/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget v0, p1, Lcom/b/a/a/e/c;->i:I

    .line 283
    iget v1, p0, Lcom/b/a/a/e/e;->h:I

    if-le v0, v1, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/b/a/a/e/e;->d()V

    return-void

    .line 289
    :cond_0
    iget v1, p0, Lcom/b/a/a/e/e;->d:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/b/a/a/e/e;->h:I

    sub-int/2addr v1, v2

    .line 290
    invoke-direct {p0, v1}, Lcom/b/a/a/e/e;->a(I)I

    .line 293
    iget v1, p0, Lcom/b/a/a/e/e;->c:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 294
    iget-object v1, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/b/a/a/e/c;

    .line 295
    iget-object v2, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    array-length v4, v4

    iget-object v5, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    iget-object v2, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/b/a/a/e/e;->b:I

    .line 297
    iput-object v1, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    .line 299
    :cond_1
    iget v1, p0, Lcom/b/a/a/e/e;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/b/a/a/e/e;->b:I

    .line 300
    iget-object v2, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    aput-object p1, v2, v1

    .line 301
    iget p1, p0, Lcom/b/a/a/e/e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/b/a/a/e/e;->c:I

    .line 306
    iget p1, p0, Lcom/b/a/a/e/e;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/b/a/a/e/e;->d:I

    return-void
.end method

.method private b(I)I
    .locals 1

    .line 233
    iget v0, p0, Lcom/b/a/a/e/e;->b:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private c(I)Lcom/b/b/i;
    .locals 2

    .line 262
    invoke-static {p1}, Lcom/b/a/a/e/e;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/b/a/a/e/d;->a:[Lcom/b/a/a/e/c;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/b/a/a/e/c;->g:Lcom/b/b/i;

    return-object p1

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    sget-object v1, Lcom/b/a/a/e/d;->a:[Lcom/b/a/a/e/c;

    array-length v1, v1

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/b/a/a/e/e;->b(I)I

    move-result p1

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/b/a/a/e/c;->g:Lcom/b/b/i;

    return-object p1
.end method

.method private c()V
    .locals 2

    .line 145
    iget v0, p0, Lcom/b/a/a/e/e;->h:I

    iget v1, p0, Lcom/b/a/a/e/e;->d:I

    if-ge v0, v1, :cond_1

    .line 146
    iget v0, p0, Lcom/b/a/a/e/e;->h:I

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/b/a/a/e/e;->d()V

    return-void

    .line 149
    :cond_0
    iget v0, p0, Lcom/b/a/a/e/e;->d:I

    iget v1, p0, Lcom/b/a/a/e/e;->h:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/b/a/a/e/e;->a(I)I

    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/b/a/a/e/e;->b:I

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lcom/b/a/a/e/e;->c:I

    .line 158
    iput v0, p0, Lcom/b/a/a/e/e;->d:I

    return-void
.end method

.method private static d(I)Z
    .locals 2

    if-ltz p0, :cond_0

    .line 270
    sget-object v0, Lcom/b/a/a/e/d;->a:[Lcom/b/a/a/e/c;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private e()I
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/b/a/a/e/e;->f:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->e()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private f()Lcom/b/b/i;
    .locals 5

    .line 337
    invoke-direct {p0}, Lcom/b/a/a/e/e;->e()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x7f

    .line 339
    invoke-direct {p0, v0, v2}, Lcom/b/a/a/e/e;->a(II)I

    move-result v0

    if-eqz v1, :cond_1

    .line 342
    invoke-static {}, Lcom/b/a/a/e/ag;->a()Lcom/b/a/a/e/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/a/e/e;->f:Lcom/b/b/h;

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lcom/b/b/h;->e(J)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/b/a/a/e/ag;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/b/b/i;->a([B)Lcom/b/b/i;

    move-result-object v0

    return-object v0

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/b/a/a/e/e;->f:Lcom/b/b/h;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/b/b/h;->c(J)Lcom/b/b/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/b/a/a/e/e;->f:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->d()Z

    move-result v0

    if-nez v0, :cond_c

    .line 185
    iget-object v0, p0, Lcom/b/a/a/e/e;->f:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->e()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 187
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_4

    const/16 v1, 0x7f

    .line 189
    invoke-direct {p0, v0, v1}, Lcom/b/a/a/e/e;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1219
    invoke-static {v0}, Lcom/b/a/a/e/e;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1220
    sget-object v1, Lcom/b/a/a/e/d;->a:[Lcom/b/a/a/e/c;

    aget-object v0, v1, v0

    .line 1221
    iget-object v1, p0, Lcom/b/a/a/e/e;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1223
    :cond_1
    sget-object v1, Lcom/b/a/a/e/d;->a:[Lcom/b/a/a/e/c;

    array-length v1, v1

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lcom/b/a/a/e/e;->b(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 1224
    iget-object v2, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_2

    goto :goto_1

    .line 1227
    :cond_2
    iget-object v0, p0, Lcom/b/a/a/e/e;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/b/a/a/e/e;->a:[Lcom/b/a/a/e/c;

    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1225
    :cond_3
    :goto_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Header index too large "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/16 v1, 0x40

    if-ne v0, v1, :cond_5

    .line 1256
    invoke-direct {p0}, Lcom/b/a/a/e/e;->f()Lcom/b/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/e/d;->a(Lcom/b/b/i;)Lcom/b/b/i;

    move-result-object v0

    .line 1257
    invoke-direct {p0}, Lcom/b/a/a/e/e;->f()Lcom/b/b/i;

    move-result-object v1

    .line 1258
    new-instance v2, Lcom/b/a/a/e/c;

    invoke-direct {v2, v0, v1}, Lcom/b/a/a/e/c;-><init>(Lcom/b/b/i;Lcom/b/b/i;)V

    invoke-direct {p0, v2}, Lcom/b/a/a/e/e;->a(Lcom/b/a/a/e/c;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_6

    const/16 v1, 0x3f

    .line 194
    invoke-direct {p0, v0, v1}, Lcom/b/a/a/e/e;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2250
    invoke-direct {p0, v0}, Lcom/b/a/a/e/e;->c(I)Lcom/b/b/i;

    move-result-object v0

    .line 2251
    invoke-direct {p0}, Lcom/b/a/a/e/e;->f()Lcom/b/b/i;

    move-result-object v1

    .line 2252
    new-instance v2, Lcom/b/a/a/e/c;

    invoke-direct {v2, v0, v1}, Lcom/b/a/a/e/c;-><init>(Lcom/b/b/i;Lcom/b/b/i;)V

    invoke-direct {p0, v2}, Lcom/b/a/a/e/e;->a(Lcom/b/a/a/e/c;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9

    const/16 v1, 0x1f

    .line 197
    invoke-direct {p0, v0, v1}, Lcom/b/a/a/e/e;->a(II)I

    move-result v0

    iput v0, p0, Lcom/b/a/a/e/e;->h:I

    .line 198
    iget v0, p0, Lcom/b/a/a/e/e;->h:I

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/b/a/a/e/e;->h:I

    iget v1, p0, Lcom/b/a/a/e/e;->g:I

    if-le v0, v1, :cond_7

    goto :goto_2

    .line 202
    :cond_7
    invoke-direct {p0}, Lcom/b/a/a/e/e;->c()V

    goto/16 :goto_0

    .line 200
    :cond_8
    :goto_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid dynamic table size update "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/b/a/a/e/e;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/16 v1, 0x10

    if-eq v0, v1, :cond_b

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    const/16 v1, 0xf

    .line 206
    invoke-direct {p0, v0, v1}, Lcom/b/a/a/e/e;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4237
    invoke-direct {p0, v0}, Lcom/b/a/a/e/e;->c(I)Lcom/b/b/i;

    move-result-object v0

    .line 4238
    invoke-direct {p0}, Lcom/b/a/a/e/e;->f()Lcom/b/b/i;

    move-result-object v1

    .line 4239
    iget-object v2, p0, Lcom/b/a/a/e/e;->e:Ljava/util/List;

    new-instance v3, Lcom/b/a/a/e/c;

    invoke-direct {v3, v0, v1}, Lcom/b/a/a/e/c;-><init>(Lcom/b/b/i;Lcom/b/b/i;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3243
    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/b/a/a/e/e;->f()Lcom/b/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/e/d;->a(Lcom/b/b/i;)Lcom/b/b/i;

    move-result-object v0

    .line 3244
    invoke-direct {p0}, Lcom/b/a/a/e/e;->f()Lcom/b/b/i;

    move-result-object v1

    .line 3245
    iget-object v2, p0, Lcom/b/a/a/e/e;->e:Ljava/util/List;

    new-instance v3, Lcom/b/a/a/e/c;

    invoke-direct {v3, v0, v1}, Lcom/b/a/a/e/c;-><init>(Lcom/b/b/i;Lcom/b/b/i;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/a/e/c;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/a/e/e;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 214
    iget-object v1, p0, Lcom/b/a/a/e/e;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

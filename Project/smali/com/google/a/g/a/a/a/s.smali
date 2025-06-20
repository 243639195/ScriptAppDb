.class public final Lcom/google/a/g/a/a/a/s;
.super Ljava/lang/Object;
.source "GeneralAppIdDecoder.java"


# instance fields
.field private final a:Lcom/google/a/c/a;

.field private final b:Lcom/google/a/g/a/a/a/m;

.field private final c:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/google/a/c/a;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/a/g/a/a/a/m;

    invoke-direct {v0}, Lcom/google/a/g/a/a/a/m;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    .line 44
    iput-object p1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    return-void
.end method

.method public static a(Lcom/google/a/c/a;II)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    add-int v2, p1, v0

    .line 110
    invoke-virtual {p0, v2}, Lcom/google/a/c/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int v2, p2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private a()Lcom/google/a/g/a/a/a/o;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 26049
    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    .line 140
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 26061
    iget v1, v1, Lcom/google/a/g/a/a/a/m;->b:I

    sget v2, Lcom/google/a/g/a/a/a/m$a;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_c

    .line 26218
    :goto_1
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 27049
    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/lit8 v2, v1, 0x5

    .line 27366
    iget-object v5, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 28048
    iget v5, v5, Lcom/google/a/c/a;->b:I

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-gt v2, v5, :cond_3

    .line 27371
    invoke-virtual {p0, v1, v7}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v2

    const/16 v5, 0x10

    if-lt v2, v7, :cond_2

    if-ge v2, v5, :cond_2

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v1, 0x6

    .line 27376
    iget-object v8, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 29048
    iget v8, v8, Lcom/google/a/c/a;->b:I

    if-gt v2, v8, :cond_3

    .line 27380
    invoke-virtual {p0, v1, v6}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    if-lt v1, v5, :cond_3

    const/16 v2, 0x3f

    if-ge v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_8

    .line 26219
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 29049
    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    .line 29385
    invoke-virtual {p0, v1, v7}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v2

    const/16 v5, 0xf

    if-ne v2, v5, :cond_4

    .line 29387
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v1, v1, 0x5

    const/16 v5, 0x24

    invoke-direct {v2, v1, v5}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    move-object v5, v2

    goto :goto_5

    :cond_4
    if-lt v2, v7, :cond_5

    if-ge v2, v5, :cond_5

    .line 29391
    new-instance v5, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v1, v1, 0x5

    add-int/lit8 v2, v2, 0x30

    sub-int/2addr v2, v7

    int-to-char v2, v2

    invoke-direct {v5, v1, v2}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto :goto_5

    .line 29394
    :cond_5
    invoke-virtual {p0, v1, v6}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v2

    const/16 v5, 0x20

    if-lt v2, v5, :cond_6

    const/16 v5, 0x3a

    if-ge v2, v5, :cond_6

    .line 29397
    new-instance v5, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x21

    int-to-char v2, v2

    invoke-direct {v5, v1, v2}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto :goto_5

    :cond_6
    packed-switch v2, :pswitch_data_0

    .line 29418
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decoding invalid alphanumeric value: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v2, 0x2f

    goto :goto_4

    :pswitch_1
    const/16 v2, 0x2e

    goto :goto_4

    :pswitch_2
    const/16 v2, 0x2d

    goto :goto_4

    :pswitch_3
    const/16 v2, 0x2c

    goto :goto_4

    :pswitch_4
    const/16 v2, 0x2a

    .line 29420
    :goto_4
    new-instance v5, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v1, v1, 0x6

    invoke-direct {v5, v1, v2}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    .line 26220
    :goto_5
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 30041
    iget v2, v5, Lcom/google/a/g/a/a/a/q;->d:I

    .line 30053
    iput v2, v1, Lcom/google/a/g/a/a/a/m;->a:I

    .line 26222
    invoke-virtual {v5}, Lcom/google/a/g/a/a/a/n;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 26223
    new-instance v1, Lcom/google/a/g/a/a/a/o;

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 31049
    iget v2, v2, Lcom/google/a/g/a/a/a/m;->a:I

    .line 26223
    iget-object v5, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;)V

    .line 26224
    new-instance v2, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v2, v1, v4}, Lcom/google/a/g/a/a/a/l;-><init>(Lcom/google/a/g/a/a/a/o;Z)V

    goto :goto_8

    .line 26227
    :cond_7
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    .line 32045
    iget-char v2, v5, Lcom/google/a/g/a/a/a/n;->a:C

    .line 26227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 26230
    :cond_8
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 32049
    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    .line 26230
    invoke-direct {p0, v1}, Lcom/google/a/g/a/a/a/s;->h(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 26231
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/a/g/a/a/a/m;->a(I)V

    .line 26232
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 32073
    sget v2, Lcom/google/a/g/a/a/a/m$a;->a:I

    iput v2, v1, Lcom/google/a/g/a/a/a/m;->b:I

    goto :goto_7

    .line 26233
    :cond_9
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 33049
    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    .line 26233
    invoke-direct {p0, v1}, Lcom/google/a/g/a/a/a/s;->g(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 26234
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 34049
    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/2addr v1, v7

    .line 26234
    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 35048
    iget v2, v2, Lcom/google/a/c/a;->b:I

    if-ge v1, v2, :cond_a

    .line 26235
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    invoke-virtual {v1, v7}, Lcom/google/a/g/a/a/a/m;->a(I)V

    goto :goto_6

    .line 26237
    :cond_a
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 36048
    iget v2, v2, Lcom/google/a/c/a;->b:I

    .line 36053
    iput v2, v1, Lcom/google/a/g/a/a/a/m;->a:I

    .line 26240
    :goto_6
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 36081
    sget v2, Lcom/google/a/g/a/a/a/m$a;->c:I

    iput v2, v1, Lcom/google/a/g/a/a/a/m;->b:I

    .line 26242
    :cond_b
    :goto_7
    new-instance v2, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v2}, Lcom/google/a/g/a/a/a/l;-><init>()V

    .line 37052
    :goto_8
    iget-boolean v1, v2, Lcom/google/a/g/a/a/a/l;->b:Z

    goto :goto_a

    .line 143
    :cond_c
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 37069
    iget v1, v1, Lcom/google/a/g/a/a/a/m;->b:I

    sget v2, Lcom/google/a/g/a/a/a/m$a;->c:I

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_e

    .line 144
    invoke-direct {p0}, Lcom/google/a/g/a/a/a/s;->c()Lcom/google/a/g/a/a/a/l;

    move-result-object v2

    .line 38052
    iget-boolean v1, v2, Lcom/google/a/g/a/a/a/l;->b:Z

    goto :goto_a

    .line 147
    :cond_e
    invoke-direct {p0}, Lcom/google/a/g/a/a/a/s;->b()Lcom/google/a/g/a/a/a/l;

    move-result-object v2

    .line 39052
    iget-boolean v1, v2, Lcom/google/a/g/a/a/a/l;->b:Z

    .line 151
    :goto_a
    iget-object v5, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 40049
    iget v5, v5, Lcom/google/a/g/a/a/a/m;->a:I

    if-eq v0, v5, :cond_f

    const/4 v3, 0x1

    :cond_f
    if-nez v3, :cond_10

    if-eqz v1, :cond_11

    :cond_10
    if-eqz v1, :cond_0

    .line 41048
    :cond_11
    iget-object v0, v2, Lcom/google/a/g/a/a/a/l;->a:Lcom/google/a/g/a/a/a/o;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(I)Z
    .locals 3

    add-int/lit8 v0, p1, 0x7

    .line 74
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 3048
    iget v1, v1, Lcom/google/a/c/a;->b:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x4

    .line 75
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 4048
    iget v0, v0, Lcom/google/a/c/a;->b:I

    if-gt p1, v0, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    move v0, p1

    :goto_0
    add-int/lit8 v1, p1, 0x3

    if-ge v0, v1, :cond_3

    .line 79
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-virtual {v1, v0}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-virtual {p1, v1}, Lcom/google/a/c/a;->a(I)Z

    move-result p1

    return p1
.end method

.method private b()Lcom/google/a/g/a/a/a/l;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 41049
    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/lit8 v1, v0, 0x7

    .line 41074
    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 42048
    iget v2, v2, Lcom/google/a/c/a;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x4

    .line 41075
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 43048
    iget v1, v1, Lcom/google/a/c/a;->b:I

    if-gt v0, v1, :cond_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    goto :goto_3

    :cond_1
    move v1, v0

    :goto_2
    add-int/lit8 v2, v0, 0x3

    if-ge v1, v2, :cond_3

    .line 41079
    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-virtual {v2, v1}, Lcom/google/a/c/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 41084
    :cond_3
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-virtual {v0, v2}, Lcom/google/a/c/a;->a(I)Z

    move-result v0

    :goto_3
    const/4 v1, 0x4

    if-eqz v0, :cond_a

    .line 162
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 43049
    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/lit8 v2, v0, 0x7

    .line 43088
    iget-object v5, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 44048
    iget v5, v5, Lcom/google/a/c/a;->b:I

    const/16 v6, 0xa

    if-le v2, v5, :cond_5

    .line 43089
    invoke-virtual {p0, v0, v1}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    if-nez v0, :cond_4

    .line 43091
    new-instance v0, Lcom/google/a/g/a/a/a/p;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 45048
    iget v1, v1, Lcom/google/a/c/a;->b:I

    .line 43091
    invoke-direct {v0, v1, v6, v6}, Lcom/google/a/g/a/a/a/p;-><init>(III)V

    goto :goto_4

    .line 43093
    :cond_4
    new-instance v1, Lcom/google/a/g/a/a/a/p;

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 46048
    iget v2, v2, Lcom/google/a/c/a;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 43093
    invoke-direct {v1, v2, v0, v6}, Lcom/google/a/g/a/a/a/p;-><init>(III)V

    move-object v0, v1

    goto :goto_4

    :cond_5
    const/4 v1, 0x7

    .line 43095
    invoke-virtual {p0, v0, v1}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    .line 43097
    div-int/lit8 v1, v0, 0xb

    .line 43098
    rem-int/lit8 v0, v0, 0xb

    .line 43100
    new-instance v5, Lcom/google/a/g/a/a/a/p;

    invoke-direct {v5, v2, v1, v0}, Lcom/google/a/g/a/a/a/p;-><init>(III)V

    move-object v0, v5

    .line 163
    :goto_4
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 47041
    iget v2, v0, Lcom/google/a/g/a/a/a/q;->d:I

    .line 47053
    iput v2, v1, Lcom/google/a/g/a/a/a/m;->a:I

    .line 47066
    iget v1, v0, Lcom/google/a/g/a/a/a/p;->a:I

    if-ne v1, v6, :cond_6

    const/4 v3, 0x1

    :cond_6
    if-eqz v3, :cond_8

    .line 167
    invoke-virtual {v0}, Lcom/google/a/g/a/a/a/p;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 168
    new-instance v0, Lcom/google/a/g/a/a/a/o;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 48049
    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    .line 168
    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;)V

    goto :goto_5

    .line 170
    :cond_7
    new-instance v1, Lcom/google/a/g/a/a/a/o;

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 49049
    iget v2, v2, Lcom/google/a/g/a/a/a/m;->a:I

    .line 170
    iget-object v3, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49058
    iget v0, v0, Lcom/google/a/g/a/a/a/p;->b:I

    .line 170
    invoke-direct {v1, v2, v3, v0}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;I)V

    move-object v0, v1

    .line 172
    :goto_5
    new-instance v1, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v1, v0, v4}, Lcom/google/a/g/a/a/a/l;-><init>(Lcom/google/a/g/a/a/a/o;Z)V

    return-object v1

    .line 174
    :cond_8
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    .line 50054
    iget v2, v0, Lcom/google/a/g/a/a/a/p;->a:I

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Lcom/google/a/g/a/a/a/p;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 177
    new-instance v0, Lcom/google/a/g/a/a/a/o;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50055
    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    .line 177
    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;)V

    .line 178
    new-instance v1, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v1, v0, v4}, Lcom/google/a/g/a/a/a/l;-><init>(Lcom/google/a/g/a/a/a/o;Z)V

    return-object v1

    .line 180
    :cond_9
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    .line 50056
    iget v0, v0, Lcom/google/a/g/a/a/a/p;->b:I

    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 183
    :cond_a
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50057
    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/lit8 v2, v0, 0x1

    .line 50058
    iget-object v5, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50068
    iget v5, v5, Lcom/google/a/c/a;->b:I

    if-le v2, v5, :cond_b

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_d

    add-int v5, v2, v0

    .line 50062
    iget-object v6, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50069
    iget v6, v6, Lcom/google/a/c/a;->b:I

    if-ge v5, v6, :cond_d

    .line 50063
    iget-object v6, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-virtual {v6, v5}, Lcom/google/a/c/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    const/4 v3, 0x1

    :goto_7
    if-eqz v3, :cond_e

    .line 184
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50070
    sget v2, Lcom/google/a/g/a/a/a/m$a;->b:I

    iput v2, v0, Lcom/google/a/g/a/a/a/m;->b:I

    .line 185
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    invoke-virtual {v0, v1}, Lcom/google/a/g/a/a/a/m;->a(I)V

    .line 187
    :cond_e
    new-instance v0, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v0}, Lcom/google/a/g/a/a/a/l;-><init>()V

    return-object v0
.end method

.method private b(I)Lcom/google/a/g/a/a/a/p;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x7

    .line 88
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 5048
    iget v1, v1, Lcom/google/a/c/a;->b:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x4

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result p1

    const/16 v0, 0xa

    if-nez p1, :cond_0

    .line 91
    new-instance p1, Lcom/google/a/g/a/a/a/p;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 6048
    iget v1, v1, Lcom/google/a/c/a;->b:I

    .line 91
    invoke-direct {p1, v1, v0, v0}, Lcom/google/a/g/a/a/a/p;-><init>(III)V

    return-object p1

    .line 93
    :cond_0
    new-instance v1, Lcom/google/a/g/a/a/a/p;

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 7048
    iget v2, v2, Lcom/google/a/c/a;->b:I

    add-int/lit8 p1, p1, -0x1

    .line 93
    invoke-direct {v1, v2, p1, v0}, Lcom/google/a/g/a/a/a/p;-><init>(III)V

    return-object v1

    :cond_1
    const/4 v1, 0x7

    .line 95
    invoke-virtual {p0, p1, v1}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x8

    .line 97
    div-int/lit8 v1, p1, 0xb

    .line 98
    rem-int/lit8 p1, p1, 0xb

    .line 100
    new-instance v2, Lcom/google/a/g/a/a/a/p;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/a/g/a/a/a/p;-><init>(III)V

    return-object v2
.end method

.method private c()Lcom/google/a/g/a/a/a/l;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50072
    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/lit8 v1, v0, 0x5

    .line 50073
    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50097
    iget v2, v2, Lcom/google/a/c/a;->b:I

    const/16 v3, 0x74

    const/16 v4, 0x40

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x7

    const/4 v8, 0x5

    if-gt v1, v2, :cond_2

    .line 50077
    invoke-virtual {p0, v0, v8}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    if-lt v1, v8, :cond_0

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v0, 0x7

    .line 50082
    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50098
    iget v2, v2, Lcom/google/a/c/a;->b:I

    if-gt v1, v2, :cond_2

    .line 50086
    invoke-virtual {p0, v0, v7}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    if-lt v1, v4, :cond_1

    if-ge v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, 0x8

    .line 50091
    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50099
    iget v2, v2, Lcom/google/a/c/a;->b:I

    if-gt v1, v2, :cond_2

    .line 50095
    invoke-virtual {p0, v0, v5}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    const/16 v1, 0xe8

    if-lt v0, v1, :cond_2

    const/16 v1, 0xfd

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    .line 192
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50100
    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    .line 50101
    invoke-virtual {p0, v0, v8}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    .line 50103
    new-instance v1, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x5

    const/16 v2, 0x24

    invoke-direct {v1, v0, v2}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    move-object v2, v1

    goto/16 :goto_4

    :cond_3
    if-lt v1, v8, :cond_4

    if-ge v1, v2, :cond_4

    .line 50107
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v1, v1, 0x30

    sub-int/2addr v1, v8

    int-to-char v1, v1

    invoke-direct {v2, v0, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto/16 :goto_4

    .line 50110
    :cond_4
    invoke-virtual {p0, v0, v7}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0x5a

    if-lt v1, v4, :cond_5

    if-ge v1, v2, :cond_5

    .line 50113
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    invoke-direct {v2, v0, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto/16 :goto_4

    :cond_5
    if-lt v1, v2, :cond_6

    if-ge v1, v3, :cond_6

    .line 50117
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v1, v1, 0x7

    int-to-char v1, v1

    invoke-direct {v2, v0, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto :goto_4

    .line 50120
    :cond_6
    invoke-virtual {p0, v0, v5}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 50187
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object v0

    throw v0

    :pswitch_0
    const/16 v1, 0x20

    goto :goto_3

    :pswitch_1
    const/16 v1, 0x5f

    goto :goto_3

    :pswitch_2
    const/16 v1, 0x3f

    goto :goto_3

    :pswitch_3
    const/16 v1, 0x3e

    goto :goto_3

    :pswitch_4
    const/16 v1, 0x3d

    goto :goto_3

    :pswitch_5
    const/16 v1, 0x3c

    goto :goto_3

    :pswitch_6
    const/16 v1, 0x3b

    goto :goto_3

    :pswitch_7
    const/16 v1, 0x3a

    goto :goto_3

    :pswitch_8
    const/16 v1, 0x2f

    goto :goto_3

    :pswitch_9
    const/16 v1, 0x2e

    goto :goto_3

    :pswitch_a
    const/16 v1, 0x2d

    goto :goto_3

    :pswitch_b
    const/16 v1, 0x2c

    goto :goto_3

    :pswitch_c
    const/16 v1, 0x2b

    goto :goto_3

    :pswitch_d
    const/16 v1, 0x2a

    goto :goto_3

    :pswitch_e
    const/16 v1, 0x29

    goto :goto_3

    :pswitch_f
    const/16 v1, 0x28

    goto :goto_3

    :pswitch_10
    const/16 v1, 0x27

    goto :goto_3

    :pswitch_11
    const/16 v1, 0x26

    goto :goto_3

    :pswitch_12
    const/16 v1, 0x25

    goto :goto_3

    :pswitch_13
    const/16 v1, 0x22

    goto :goto_3

    :pswitch_14
    const/16 v1, 0x21

    .line 50189
    :goto_3
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x8

    invoke-direct {v2, v0, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    .line 193
    :goto_4
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50190
    iget v1, v2, Lcom/google/a/g/a/a/a/q;->d:I

    .line 50191
    iput v1, v0, Lcom/google/a/g/a/a/a/m;->a:I

    .line 195
    invoke-virtual {v2}, Lcom/google/a/g/a/a/a/n;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 196
    new-instance v0, Lcom/google/a/g/a/a/a/o;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50193
    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    .line 196
    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;)V

    .line 197
    new-instance v1, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v1, v0, v6}, Lcom/google/a/g/a/a/a/l;-><init>(Lcom/google/a/g/a/a/a/o;Z)V

    return-object v1

    .line 199
    :cond_7
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    .line 50194
    iget-char v1, v2, Lcom/google/a/g/a/a/a/n;->a:C

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 202
    :cond_8
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50195
    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    .line 202
    invoke-direct {p0, v0}, Lcom/google/a/g/a/a/a/s;->h(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 203
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/a/g/a/a/a/m;->a(I)V

    .line 204
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50196
    sget v1, Lcom/google/a/g/a/a/a/m$a;->a:I

    iput v1, v0, Lcom/google/a/g/a/a/a/m;->b:I

    goto :goto_6

    .line 205
    :cond_9
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50198
    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    .line 205
    invoke-direct {p0, v0}, Lcom/google/a/g/a/a/a/s;->g(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 206
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50199
    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/2addr v0, v8

    .line 206
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50200
    iget v1, v1, Lcom/google/a/c/a;->b:I

    if-ge v0, v1, :cond_a

    .line 207
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    invoke-virtual {v0, v8}, Lcom/google/a/g/a/a/a/m;->a(I)V

    goto :goto_5

    .line 209
    :cond_a
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50201
    iget v1, v1, Lcom/google/a/c/a;->b:I

    .line 50202
    iput v1, v0, Lcom/google/a/g/a/a/a/m;->a:I

    .line 212
    :goto_5
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50204
    sget v1, Lcom/google/a/g/a/a/a/m$a;->b:I

    iput v1, v0, Lcom/google/a/g/a/a/a/m;->b:I

    .line 214
    :cond_b
    :goto_6
    new-instance v0, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v0}, Lcom/google/a/g/a/a/a/l;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xe8
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(I)Z
    .locals 4

    add-int/lit8 v0, p1, 0x5

    .line 246
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50278
    iget v1, v1, Lcom/google/a/c/a;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x5

    .line 250
    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v0, :cond_1

    const/16 v0, 0x10

    if-ge v1, v0, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, p1, 0x7

    .line 255
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50279
    iget v1, v1, Lcom/google/a/c/a;->b:I

    if-le v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x7

    .line 259
    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_3

    const/16 v1, 0x74

    if-ge v0, v1, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, p1, 0x8

    .line 264
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50280
    iget v1, v1, Lcom/google/a/c/a;->b:I

    if-le v0, v1, :cond_4

    return v2

    :cond_4
    const/16 v0, 0x8

    .line 268
    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result p1

    const/16 v0, 0xe8

    if-lt p1, v0, :cond_5

    const/16 v0, 0xfd

    if-ge p1, v0, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method private d()Lcom/google/a/g/a/a/a/l;
    .locals 7

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50206
    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/lit8 v1, v0, 0x5

    .line 50207
    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50223
    iget v2, v2, Lcom/google/a/c/a;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-gt v1, v2, :cond_1

    .line 50212
    invoke-virtual {p0, v0, v5}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v5, :cond_0

    if-ge v1, v2, :cond_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v0, 0x6

    .line 50217
    iget-object v6, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50224
    iget v6, v6, Lcom/google/a/c/a;->b:I

    if-gt v1, v6, :cond_1

    .line 50221
    invoke-virtual {p0, v0, v4}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    if-lt v0, v2, :cond_1

    const/16 v1, 0x3f

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 219
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50225
    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    .line 50226
    invoke-virtual {p0, v0, v5}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    .line 50228
    new-instance v1, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x5

    const/16 v2, 0x24

    invoke-direct {v1, v0, v2}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    move-object v2, v1

    goto :goto_4

    :cond_2
    if-lt v1, v5, :cond_3

    if-ge v1, v2, :cond_3

    .line 50232
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v1, v1, 0x30

    sub-int/2addr v1, v5

    int-to-char v1, v1

    invoke-direct {v2, v0, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto :goto_4

    .line 50235
    :cond_3
    invoke-virtual {p0, v0, v4}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_4

    const/16 v2, 0x3a

    if-ge v1, v2, :cond_4

    .line 50238
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, v1, 0x21

    int-to-char v1, v1

    invoke-direct {v2, v0, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto :goto_4

    :cond_4
    packed-switch v1, :pswitch_data_0

    .line 50259
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Decoding invalid alphanumeric value: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v1, 0x2f

    goto :goto_3

    :pswitch_1
    const/16 v1, 0x2e

    goto :goto_3

    :pswitch_2
    const/16 v1, 0x2d

    goto :goto_3

    :pswitch_3
    const/16 v1, 0x2c

    goto :goto_3

    :pswitch_4
    const/16 v1, 0x2a

    .line 50261
    :goto_3
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x6

    invoke-direct {v2, v0, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    .line 220
    :goto_4
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50262
    iget v1, v2, Lcom/google/a/g/a/a/a/q;->d:I

    .line 50263
    iput v1, v0, Lcom/google/a/g/a/a/a/m;->a:I

    .line 222
    invoke-virtual {v2}, Lcom/google/a/g/a/a/a/n;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    new-instance v0, Lcom/google/a/g/a/a/a/o;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50265
    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    .line 223
    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;)V

    .line 224
    new-instance v1, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v1, v0, v3}, Lcom/google/a/g/a/a/a/l;-><init>(Lcom/google/a/g/a/a/a/o;Z)V

    return-object v1

    .line 227
    :cond_5
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    .line 50266
    iget-char v1, v2, Lcom/google/a/g/a/a/a/n;->a:C

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 230
    :cond_6
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50267
    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    .line 230
    invoke-direct {p0, v0}, Lcom/google/a/g/a/a/a/s;->h(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 231
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/a/g/a/a/a/m;->a(I)V

    .line 232
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50268
    sget v1, Lcom/google/a/g/a/a/a/m$a;->a:I

    iput v1, v0, Lcom/google/a/g/a/a/a/m;->b:I

    goto :goto_6

    .line 233
    :cond_7
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50270
    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    .line 233
    invoke-direct {p0, v0}, Lcom/google/a/g/a/a/a/s;->g(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 234
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50271
    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/2addr v0, v5

    .line 234
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50272
    iget v1, v1, Lcom/google/a/c/a;->b:I

    if-ge v0, v1, :cond_8

    .line 235
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    invoke-virtual {v0, v5}, Lcom/google/a/g/a/a/a/m;->a(I)V

    goto :goto_5

    .line 237
    :cond_8
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50273
    iget v1, v1, Lcom/google/a/c/a;->b:I

    .line 50274
    iput v1, v0, Lcom/google/a/g/a/a/a/m;->a:I

    .line 240
    :goto_5
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 50276
    sget v1, Lcom/google/a/g/a/a/a/m$a;->c:I

    iput v1, v0, Lcom/google/a/g/a/a/a/m;->b:I

    .line 242
    :cond_9
    :goto_6
    new-instance v0, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v0}, Lcom/google/a/g/a/a/a/l;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d(I)Lcom/google/a/g/a/a/a/n;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x5

    .line 274
    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 276
    new-instance v1, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    const/16 v0, 0x24

    invoke-direct {v1, p1, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v1

    :cond_0
    if-lt v1, v0, :cond_1

    if-ge v1, v2, :cond_1

    .line 280
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x30

    sub-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v2

    :cond_1
    const/4 v0, 0x7

    .line 283
    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0x40

    const/16 v3, 0x5a

    if-lt v1, v2, :cond_2

    if-ge v1, v3, :cond_2

    .line 286
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v2

    :cond_2
    if-lt v1, v3, :cond_3

    const/16 v2, 0x74

    if-ge v1, v2, :cond_3

    .line 290
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v2

    :cond_3
    const/16 v0, 0x8

    .line 293
    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 360
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p1

    throw p1

    :pswitch_0
    const/16 v1, 0x20

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x5f

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x3f

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x3e

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x3d

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x3c

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x3b

    goto :goto_0

    :pswitch_7
    const/16 v1, 0x3a

    goto :goto_0

    :pswitch_8
    const/16 v1, 0x2f

    goto :goto_0

    :pswitch_9
    const/16 v1, 0x2e

    goto :goto_0

    :pswitch_a
    const/16 v1, 0x2d

    goto :goto_0

    :pswitch_b
    const/16 v1, 0x2c

    goto :goto_0

    :pswitch_c
    const/16 v1, 0x2b

    goto :goto_0

    :pswitch_d
    const/16 v1, 0x2a

    goto :goto_0

    :pswitch_e
    const/16 v1, 0x29

    goto :goto_0

    :pswitch_f
    const/16 v1, 0x28

    goto :goto_0

    :pswitch_10
    const/16 v1, 0x27

    goto :goto_0

    :pswitch_11
    const/16 v1, 0x26

    goto :goto_0

    :pswitch_12
    const/16 v1, 0x25

    goto :goto_0

    :pswitch_13
    const/16 v1, 0x22

    goto :goto_0

    :pswitch_14
    const/16 v1, 0x21

    .line 362
    :goto_0
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    invoke-direct {v2, p1, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0xe8
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e(I)Z
    .locals 5

    add-int/lit8 v0, p1, 0x5

    .line 366
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50281
    iget v1, v1, Lcom/google/a/c/a;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x5

    .line 371
    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/4 v3, 0x1

    const/16 v4, 0x10

    if-lt v1, v0, :cond_1

    if-ge v1, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, p1, 0x6

    .line 376
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50282
    iget v1, v1, Lcom/google/a/c/a;->b:I

    if-le v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x6

    .line 380
    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result p1

    if-lt p1, v4, :cond_3

    const/16 v0, 0x3f

    if-ge p1, v0, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method private f(I)Lcom/google/a/g/a/a/a/n;
    .locals 3

    const/4 v0, 0x5

    .line 385
    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 387
    new-instance v1, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    const/16 v0, 0x24

    invoke-direct {v1, p1, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v1

    :cond_0
    if-lt v1, v0, :cond_1

    if-ge v1, v2, :cond_1

    .line 391
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x30

    sub-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v2

    :cond_1
    const/4 v0, 0x6

    .line 394
    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_2

    const/16 v2, 0x3a

    if-ge v1, v2, :cond_2

    .line 397
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x21

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v2

    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 418
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Decoding invalid alphanumeric value: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 v1, 0x2f

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x2e

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x2d

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x2c

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x2a

    .line 420
    :goto_0
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    invoke-direct {v2, p1, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private g(I)Z
    .locals 4

    add-int/lit8 v0, p1, 0x1

    .line 424
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50283
    iget v1, v1, Lcom/google/a/c/a;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    add-int v1, v0, p1

    .line 428
    iget-object v3, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50284
    iget v3, v3, Lcom/google/a/c/a;->b:I

    if-ge v1, v3, :cond_3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 430
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v1, v3}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 433
    :cond_1
    iget-object v3, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-virtual {v3, v1}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private h(I)Z
    .locals 3

    add-int/lit8 v0, p1, 0x3

    .line 443
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50285
    iget v1, v1, Lcom/google/a/c/a;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    :goto_0
    if-ge p1, v0, :cond_2

    .line 448
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-virtual {v1, p1}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private i(I)Z
    .locals 4

    add-int/lit8 v0, p1, 0x1

    .line 458
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50286
    iget v1, v1, Lcom/google/a/c/a;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    add-int v1, v0, p1

    .line 462
    iget-object v3, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 50287
    iget v3, v3, Lcom/google/a/c/a;->b:I

    if-ge v1, v3, :cond_2

    .line 463
    iget-object v3, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-virtual {v3, v1}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method final a(II)I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-static {v0, p1, p2}, Lcom/google/a/g/a/a/a/s;->a(Lcom/google/a/c/a;II)I

    move-result p1

    return p1
.end method

.method final a(ILjava/lang/String;)Lcom/google/a/g/a/a/a/o;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_0
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 7053
    iput p1, p2, Lcom/google/a/g/a/a/a/m;->a:I

    .line 7138
    :cond_1
    iget-object p1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 8049
    iget p1, p1, Lcom/google/a/g/a/a/a/m;->a:I

    .line 7140
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 8061
    iget p2, p2, Lcom/google/a/g/a/a/a/m;->b:I

    sget v0, Lcom/google/a/g/a/a/a/m$a;->b:I

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_d

    .line 8218
    :goto_1
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 9049
    iget p2, p2, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/lit8 v0, p2, 0x5

    .line 9366
    iget-object v3, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 10048
    iget v3, v3, Lcom/google/a/c/a;->b:I

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-gt v0, v3, :cond_4

    .line 9371
    invoke-virtual {p0, p2, v5}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    const/16 v3, 0x10

    if-lt v0, v5, :cond_3

    if-ge v0, v3, :cond_3

    :goto_2
    const/4 p2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, p2, 0x6

    .line 9376
    iget-object v6, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 11048
    iget v6, v6, Lcom/google/a/c/a;->b:I

    if-gt v0, v6, :cond_4

    .line 9380
    invoke-virtual {p0, p2, v4}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result p2

    if-lt p2, v3, :cond_4

    const/16 v0, 0x3f

    if-ge p2, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_9

    .line 8219
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 11049
    iget p2, p2, Lcom/google/a/g/a/a/a/m;->a:I

    .line 11385
    invoke-virtual {p0, p2, v5}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    const/16 v3, 0xf

    if-ne v0, v3, :cond_5

    .line 11387
    new-instance v0, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 p2, p2, 0x5

    const/16 v3, 0x24

    invoke-direct {v0, p2, v3}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    move-object v3, v0

    goto :goto_5

    :cond_5
    if-lt v0, v5, :cond_6

    if-ge v0, v3, :cond_6

    .line 11391
    new-instance v3, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 p2, p2, 0x5

    add-int/lit8 v0, v0, 0x30

    sub-int/2addr v0, v5

    int-to-char v0, v0

    invoke-direct {v3, p2, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto :goto_5

    .line 11394
    :cond_6
    invoke-virtual {p0, p2, v4}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    const/16 v3, 0x20

    if-lt v0, v3, :cond_7

    const/16 v3, 0x3a

    if-ge v0, v3, :cond_7

    .line 11397
    new-instance v3, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 v0, v0, 0x21

    int-to-char v0, v0

    invoke-direct {v3, p2, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto :goto_5

    :cond_7
    packed-switch v0, :pswitch_data_0

    .line 11418
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Decoding invalid alphanumeric value: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 v0, 0x2f

    goto :goto_4

    :pswitch_1
    const/16 v0, 0x2e

    goto :goto_4

    :pswitch_2
    const/16 v0, 0x2d

    goto :goto_4

    :pswitch_3
    const/16 v0, 0x2c

    goto :goto_4

    :pswitch_4
    const/16 v0, 0x2a

    .line 11420
    :goto_4
    new-instance v3, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 p2, p2, 0x6

    invoke-direct {v3, p2, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    .line 8220
    :goto_5
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 12041
    iget v0, v3, Lcom/google/a/g/a/a/a/q;->d:I

    .line 12053
    iput v0, p2, Lcom/google/a/g/a/a/a/m;->a:I

    .line 8222
    invoke-virtual {v3}, Lcom/google/a/g/a/a/a/n;->a()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 8223
    new-instance p2, Lcom/google/a/g/a/a/a/o;

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 13049
    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    .line 8223
    iget-object v3, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v0, v3}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;)V

    .line 8224
    new-instance v0, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v0, p2, v2}, Lcom/google/a/g/a/a/a/l;-><init>(Lcom/google/a/g/a/a/a/o;Z)V

    goto :goto_8

    .line 8227
    :cond_8
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    .line 14045
    iget-char v0, v3, Lcom/google/a/g/a/a/a/n;->a:C

    .line 8227
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 8230
    :cond_9
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 14049
    iget p2, p2, Lcom/google/a/g/a/a/a/m;->a:I

    .line 8230
    invoke-direct {p0, p2}, Lcom/google/a/g/a/a/a/s;->h(I)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 8231
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/google/a/g/a/a/a/m;->a(I)V

    .line 8232
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 14073
    sget v0, Lcom/google/a/g/a/a/a/m$a;->a:I

    iput v0, p2, Lcom/google/a/g/a/a/a/m;->b:I

    goto :goto_7

    .line 8233
    :cond_a
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 15049
    iget p2, p2, Lcom/google/a/g/a/a/a/m;->a:I

    .line 8233
    invoke-direct {p0, p2}, Lcom/google/a/g/a/a/a/s;->g(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 8234
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 16049
    iget p2, p2, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/2addr p2, v5

    .line 8234
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 17048
    iget v0, v0, Lcom/google/a/c/a;->b:I

    if-ge p2, v0, :cond_b

    .line 8235
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    invoke-virtual {p2, v5}, Lcom/google/a/g/a/a/a/m;->a(I)V

    goto :goto_6

    .line 8237
    :cond_b
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    .line 18048
    iget v0, v0, Lcom/google/a/c/a;->b:I

    .line 18053
    iput v0, p2, Lcom/google/a/g/a/a/a/m;->a:I

    .line 8240
    :goto_6
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 18081
    sget v0, Lcom/google/a/g/a/a/a/m$a;->c:I

    iput v0, p2, Lcom/google/a/g/a/a/a/m;->b:I

    .line 8242
    :cond_c
    :goto_7
    new-instance v0, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v0}, Lcom/google/a/g/a/a/a/l;-><init>()V

    .line 19052
    :goto_8
    iget-boolean p2, v0, Lcom/google/a/g/a/a/a/l;->b:Z

    goto :goto_a

    .line 7143
    :cond_d
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 19069
    iget p2, p2, Lcom/google/a/g/a/a/a/m;->b:I

    sget v0, Lcom/google/a/g/a/a/a/m$a;->c:I

    if-ne p2, v0, :cond_e

    const/4 p2, 0x1

    goto :goto_9

    :cond_e
    const/4 p2, 0x0

    :goto_9
    if-eqz p2, :cond_f

    .line 7144
    invoke-direct {p0}, Lcom/google/a/g/a/a/a/s;->c()Lcom/google/a/g/a/a/a/l;

    move-result-object v0

    .line 20052
    iget-boolean p2, v0, Lcom/google/a/g/a/a/a/l;->b:Z

    goto :goto_a

    .line 7147
    :cond_f
    invoke-direct {p0}, Lcom/google/a/g/a/a/a/s;->b()Lcom/google/a/g/a/a/a/l;

    move-result-object v0

    .line 21052
    iget-boolean p2, v0, Lcom/google/a/g/a/a/a/l;->b:Z

    .line 7151
    :goto_a
    iget-object v3, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 22049
    iget v3, v3, Lcom/google/a/g/a/a/a/m;->a:I

    if-eq p1, v3, :cond_10

    goto :goto_b

    :cond_10
    const/4 v2, 0x0

    :goto_b
    if-nez v2, :cond_11

    if-eqz p2, :cond_12

    :cond_11
    if-eqz p2, :cond_1

    .line 23048
    :cond_12
    iget-object p1, v0, Lcom/google/a/g/a/a/a/l;->a:Lcom/google/a/g/a/a/a/o;

    if-eqz p1, :cond_13

    .line 23058
    iget-boolean p2, p1, Lcom/google/a/g/a/a/a/o;->c:Z

    if-eqz p2, :cond_13

    .line 129
    new-instance p2, Lcom/google/a/g/a/a/a/o;

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 24049
    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    .line 129
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24062
    iget p1, p1, Lcom/google/a/g/a/a/a/o;->b:I

    .line 129
    invoke-direct {p2, v0, v1, p1}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;I)V

    return-object p2

    .line 131
    :cond_13
    new-instance p1, Lcom/google/a/g/a/a/a/o;

    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    .line 25049
    iget p2, p2, Lcom/google/a/g/a/a/a/m;->a:I

    .line 131
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 51
    :goto_0
    invoke-virtual {p0, p2, v1}, Lcom/google/a/g/a/a/a/s;->a(ILjava/lang/String;)Lcom/google/a/g/a/a/a/o;

    move-result-object v1

    .line 1054
    iget-object v2, v1, Lcom/google/a/g/a/a/a/o;->a:Ljava/lang/String;

    .line 52
    invoke-static {v2}, Lcom/google/a/g/a/a/a/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    :cond_0
    iget-boolean v2, v1, Lcom/google/a/g/a/a/a/o;->c:Z

    if-eqz v2, :cond_1

    .line 1062
    iget v2, v1, Lcom/google/a/g/a/a/a/o;->b:I

    .line 57
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 2041
    :goto_1
    iget v3, v1, Lcom/google/a/g/a/a/a/q;->d:I

    if-eq p2, v3, :cond_2

    .line 3041
    iget p2, v1, Lcom/google/a/g/a/a/a/q;->d:I

    move-object v1, v2

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

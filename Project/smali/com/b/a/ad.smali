.class public final Lcom/b/a/ad;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 950
    iput-object v0, p0, Lcom/b/a/ad;->b:Ljava/lang/String;

    const-string v0, ""

    .line 951
    iput-object v0, p0, Lcom/b/a/ad;->c:Ljava/lang/String;

    const/4 v0, -0x1

    .line 953
    iput v0, p0, Lcom/b/a/ad;->e:I

    .line 954
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    .line 959
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 11

    if-ne p2, p3, :cond_0

    return-void

    .line 1418
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1426
    :cond_1
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1421
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1422
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    :cond_3
    :goto_1
    move v4, p2

    if-ge v4, p3, :cond_d

    const-string p2, "/\\"

    .line 1431
    invoke-static {p1, v4, p3, p2}, Lcom/b/a/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-ge p2, p3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    const-string v6, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, p1

    move v5, p2

    .line 3442
    invoke-static/range {v3 .. v10}, Lcom/b/a/ac;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    .line 3462
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "%2e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_c

    const-string v4, ".."

    .line 3466
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "%2e."

    .line 3467
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, ".%2e"

    .line 3468
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "%2e%2e"

    .line 3469
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const/4 v0, 0x1

    :cond_8
    if-eqz v0, :cond_a

    .line 3483
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3486
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3487
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 3489
    :cond_9
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3451
    :cond_a
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3452
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v0, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 3454
    :cond_b
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    if-eqz v1, :cond_c

    .line 3457
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_6
    if-eqz v1, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method private static b(Ljava/lang/String;II)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_3

    .line 1541
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1

    .line 1544
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return p1

    :cond_3
    return p2
.end method

.method private static c(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 1557
    invoke-static {p0, p1, p2, v0}, Lcom/b/a/ac;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    const-string p1, ":"

    .line 1560
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "["

    .line 1562
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1563
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-static {p0, p2, p1}, Lcom/b/a/ad;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object p0

    goto :goto_0

    .line 1564
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/b/a/ad;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 1566
    :cond_1
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    .line 1567
    array-length p1, p0

    const/16 p2, 0x10

    if-ne p1, p2, :cond_9

    const/4 p1, -0x1

    const/4 p1, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 3684
    :goto_1
    array-length v3, p0

    if-ge p1, v3, :cond_4

    move v3, p1

    :goto_2
    if-ge v3, p2, :cond_2

    .line 3686
    aget-byte v4, p0, v3

    if-nez v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_2
    sub-int v4, v3, p1

    if-le v4, v1, :cond_3

    move v2, p1

    move v1, v4

    :cond_3
    add-int/lit8 p1, v3, 0x2

    goto :goto_1

    .line 3697
    :cond_4
    new-instance p1, Lcom/b/b/f;

    invoke-direct {p1}, Lcom/b/b/f;-><init>()V

    .line 3698
    :cond_5
    :goto_3
    array-length v3, p0

    if-ge v0, v3, :cond_8

    const/16 v3, 0x3a

    if-ne v0, v2, :cond_6

    .line 3700
    invoke-virtual {p1, v3}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    add-int/2addr v0, v1

    if-ne v0, p2, :cond_5

    .line 3702
    invoke-virtual {p1, v3}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    goto :goto_3

    :cond_6
    if-lez v0, :cond_7

    .line 3704
    invoke-virtual {p1, v3}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    .line 3705
    :cond_7
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-long v3, v3

    .line 3706
    invoke-virtual {p1, v3, v4}, Lcom/b/b/f;->h(J)Lcom/b/b/f;

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 3710
    :cond_8
    invoke-virtual {p1}, Lcom/b/b/f;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1568
    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1571
    :cond_a
    invoke-static {p0}, Lcom/b/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/16 v2, 0x10

    .line 1576
    new-array v3, v2, [B

    const/4 v4, -0x1

    const/4 v5, 0x0

    move/from16 v6, p1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_0
    const/4 v10, 0x0

    if-ge v6, v1, :cond_14

    if-ne v7, v2, :cond_0

    return-object v10

    :cond_0
    add-int/lit8 v11, v6, 0x2

    const/4 v12, 0x4

    const/16 v13, 0xff

    if-gt v11, v1, :cond_3

    const-string v14, "::"

    const/4 v15, 0x2

    .line 1585
    invoke-virtual {v0, v6, v14, v5, v15}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v14

    if-eqz v14, :cond_3

    if-eq v8, v4, :cond_1

    return-object v10

    :cond_1
    add-int/lit8 v7, v7, 0x2

    if-ne v11, v1, :cond_2

    move v8, v7

    goto/16 :goto_9

    :cond_2
    move v8, v7

    move v9, v11

    goto/16 :goto_6

    :cond_3
    if-eqz v7, :cond_10

    const-string v11, ":"

    const/4 v14, 0x1

    .line 1594
    invoke-virtual {v0, v6, v11, v5, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    :cond_4
    const-string v11, "."

    .line 1596
    invoke-virtual {v0, v6, v11, v5, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_f

    add-int/lit8 v6, v7, -0x2

    move v11, v6

    :goto_1
    if-ge v9, v1, :cond_c

    if-ne v11, v2, :cond_5

    goto :goto_4

    :cond_5
    if-eq v11, v6, :cond_7

    .line 4655
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v14, 0x2e

    if-eq v15, v14, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v9, v9, 0x1

    :cond_7
    move v14, v9

    const/4 v15, 0x0

    :goto_2
    if-ge v14, v1, :cond_a

    .line 4663
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v2, 0x30

    if-lt v5, v2, :cond_a

    const/16 v4, 0x39

    if-gt v5, v4, :cond_a

    if-nez v15, :cond_8

    if-eq v9, v14, :cond_8

    goto :goto_3

    :cond_8
    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v15, v5

    sub-int/2addr v15, v2

    if-le v15, v13, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v14, v14, 0x1

    const/16 v2, 0x10

    const/4 v4, -0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_a
    sub-int v2, v14, v9

    if-nez v2, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v2, v11, 0x1

    int-to-byte v4, v15

    .line 4673
    aput-byte v4, v3, v11

    move v11, v2

    move v9, v14

    const/16 v2, 0x10

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v14, 0x1

    goto :goto_1

    :cond_c
    add-int/2addr v6, v12

    if-eq v11, v6, :cond_d

    :goto_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_d
    const/4 v5, 0x1

    :goto_4
    if-nez v5, :cond_e

    return-object v10

    :cond_e
    add-int/lit8 v7, v7, 0x2

    goto :goto_9

    :cond_f
    return-object v10

    :cond_10
    :goto_5
    move v9, v6

    :goto_6
    move v6, v9

    const/4 v2, 0x0

    :goto_7
    if-ge v6, v1, :cond_11

    .line 1610
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1611
    invoke-static {v4}, Lcom/b/a/ac;->a(C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_11

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_11
    sub-int v4, v6, v9

    if-eqz v4, :cond_13

    if-le v4, v12, :cond_12

    goto :goto_8

    :cond_12
    add-int/lit8 v4, v7, 0x1

    ushr-int/lit8 v5, v2, 0x8

    and-int/2addr v5, v13

    int-to-byte v5, v5

    .line 1619
    aput-byte v5, v3, v7

    add-int/lit8 v7, v4, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 1620
    aput-byte v2, v3, v4

    const/16 v2, 0x10

    const/4 v4, -0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_13
    :goto_8
    return-object v10

    :cond_14
    :goto_9
    const/16 v0, 0x10

    if-eq v7, v0, :cond_16

    const/4 v1, -0x1

    if-ne v8, v1, :cond_15

    return-object v10

    :cond_15
    sub-int v1, v7, v8

    rsub-int/lit8 v2, v1, 0x10

    .line 1634
    invoke-static {v3, v8, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v2, v7, 0x10

    add-int/2addr v2, v8

    const/4 v0, 0x0

    .line 1635
    invoke-static {v3, v8, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1639
    :cond_16
    :try_start_0
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1641
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static e(Ljava/lang/String;II)I
    .locals 9

    const/4 v0, -0x1

    :try_start_0
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 1716
    invoke-static/range {v1 .. v8}, Lcom/b/a/ac;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p0

    .line 1717
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const p1, 0xffff

    if-gt p0, p1, :cond_0

    return p0

    :cond_0
    return v0

    :catch_0
    return v0
.end method


# virtual methods
.method final a()I
    .locals 2

    .line 1020
    iget v0, p0, Lcom/b/a/ad;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/b/a/ad;->e:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ad;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method final a(Lcom/b/a/ac;Ljava/lang/String;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    .line 1291
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x0

    invoke-static {v9, v8, v2}, Lcom/b/a/a/c;->a(Ljava/lang/String;II)I

    move-result v10

    .line 1292
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v9, v10, v2}, Lcom/b/a/a/c;->b(Ljava/lang/String;II)I

    move-result v11

    sub-int v2, v11, v10

    const/16 v12, 0x3a

    const/4 v13, 0x2

    const/4 v14, -0x1

    if-lt v2, v13, :cond_6

    .line 2500
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5a

    const/16 v4, 0x41

    const/16 v5, 0x7a

    const/16 v6, 0x61

    if-lt v2, v6, :cond_0

    if-le v2, v5, :cond_1

    :cond_0
    if-lt v2, v4, :cond_6

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v10, 0x1

    :goto_0
    if-ge v2, v11, :cond_6

    .line 2504
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_2

    if-le v7, v5, :cond_5

    :cond_2
    if-lt v7, v4, :cond_3

    if-le v7, v3, :cond_5

    :cond_3
    const/16 v15, 0x30

    if-lt v7, v15, :cond_4

    const/16 v15, 0x39

    if-le v7, v15, :cond_5

    :cond_4
    const/16 v15, 0x2b

    if-eq v7, v15, :cond_5

    const/16 v15, 0x2d

    if-eq v7, v15, :cond_5

    const/16 v15, 0x2e

    if-eq v7, v15, :cond_5

    if-ne v7, v12, :cond_6

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v2, -0x1

    :goto_2
    if-eq v2, v14, :cond_9

    const/4 v3, 0x1

    const-string v5, "https:"

    const/4 v6, 0x0

    const/4 v7, 0x6

    move-object v2, v9

    move v4, v10

    .line 1297
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "https"

    .line 1298
    iput-object v2, v0, Lcom/b/a/ad;->a:Ljava/lang/String;

    add-int/lit8 v10, v10, 0x6

    goto :goto_3

    :cond_7
    const/4 v3, 0x1

    const-string v5, "http:"

    const/4 v6, 0x0

    const/4 v7, 0x5

    move-object v2, v9

    move v4, v10

    .line 1300
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "http"

    .line 1301
    iput-object v2, v0, Lcom/b/a/ad;->a:Ljava/lang/String;

    add-int/lit8 v10, v10, 0x5

    goto :goto_3

    .line 1304
    :cond_8
    sget v1, Lcom/b/a/ae;->c:I

    return v1

    :cond_9
    if-eqz v1, :cond_1a

    .line 1307
    iget-object v2, v1, Lcom/b/a/ac;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/b/a/ad;->a:Ljava/lang/String;

    :goto_3
    move v2, v10

    const/4 v3, 0x0

    :goto_4
    const/16 v15, 0x2f

    const/16 v7, 0x5c

    if-ge v2, v11, :cond_b

    .line 2527
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_a

    if-ne v4, v15, :cond_b

    :cond_a
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    const/16 v6, 0x23

    const/16 v16, 0x1

    if-ge v3, v13, :cond_f

    if-eqz v1, :cond_f

    .line 1316
    iget-object v2, v1, Lcom/b/a/ac;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/b/a/ad;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_5

    .line 1379
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/b/a/ac;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/b/a/ad;->b:Ljava/lang/String;

    .line 1380
    invoke-virtual/range {p1 .. p1}, Lcom/b/a/ac;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/b/a/ad;->c:Ljava/lang/String;

    .line 1381
    iget-object v2, v1, Lcom/b/a/ac;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/b/a/ad;->d:Ljava/lang/String;

    .line 1382
    iget v2, v1, Lcom/b/a/ac;->c:I

    iput v2, v0, Lcom/b/a/ad;->e:I

    .line 1383
    iget-object v2, v0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1384
    iget-object v2, v0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/b/a/ac;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eq v10, v11, :cond_d

    .line 1385
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_e

    .line 1386
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/b/a/ac;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ad;->b(Ljava/lang/String;)Lcom/b/a/ad;

    :cond_e
    move v15, v10

    goto/16 :goto_9

    :cond_f
    :goto_5
    add-int/2addr v10, v3

    move v2, v10

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_6
    const-string v1, "@/\\?#"

    .line 1329
    invoke-static {v9, v2, v11, v1}, Lcom/b/a/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v8

    if-eq v8, v11, :cond_10

    .line 1331
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    :cond_10
    const/4 v1, -0x1

    :goto_7
    if-eq v1, v14, :cond_14

    if-eq v1, v6, :cond_14

    if-eq v1, v15, :cond_14

    if-eq v1, v7, :cond_14

    packed-switch v1, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    if-nez v10, :cond_13

    .line 1337
    invoke-static {v9, v2, v8, v12}, Lcom/b/a/a/c;->a(Ljava/lang/String;IIC)I

    move-result v5

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v1, v9

    move v3, v5

    move v12, v5

    move/from16 v5, v17

    const/16 v15, 0x23

    move/from16 v6, v18

    const/16 v17, 0x5c

    move/from16 v7, v19

    move v15, v8

    move/from16 v8, v20

    .line 1339
    invoke-static/range {v1 .. v8}, Lcom/b/a/ac;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v13, :cond_11

    .line 1341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/b/a/ad;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%40"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_11
    iput-object v1, v0, Lcom/b/a/ad;->b:Ljava/lang/String;

    if-eq v12, v15, :cond_12

    add-int/lit8 v2, v12, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move v3, v15

    .line 1346
    invoke-static/range {v1 .. v8}, Lcom/b/a/ac;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->c:Ljava/lang/String;

    const/4 v10, 0x1

    :cond_12
    const/4 v13, 0x1

    goto :goto_8

    :cond_13
    move v15, v8

    const/16 v17, 0x5c

    .line 1351
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/b/a/ad;->c:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%40"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move v3, v15

    invoke-static/range {v1 .. v8}, Lcom/b/a/ac;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->c:Ljava/lang/String;

    :goto_8
    add-int/lit8 v2, v15, 0x1

    const/16 v6, 0x23

    const/16 v7, 0x5c

    const/16 v12, 0x3a

    const/16 v15, 0x2f

    goto/16 :goto_6

    :cond_14
    :pswitch_1
    move v15, v8

    .line 1363
    invoke-static {v9, v2, v15}, Lcom/b/a/ad;->b(Ljava/lang/String;II)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    if-ge v3, v15, :cond_15

    .line 1365
    invoke-static {v9, v2, v1}, Lcom/b/a/ad;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->d:Ljava/lang/String;

    .line 1366
    invoke-static {v9, v3, v15}, Lcom/b/a/ad;->e(Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lcom/b/a/ad;->e:I

    .line 1367
    iget v1, v0, Lcom/b/a/ad;->e:I

    if-ne v1, v14, :cond_16

    sget v1, Lcom/b/a/ae;->d:I

    return v1

    .line 1369
    :cond_15
    invoke-static {v9, v2, v1}, Lcom/b/a/ad;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->d:Ljava/lang/String;

    .line 1370
    iget-object v1, v0, Lcom/b/a/ad;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/b/a/ac;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/b/a/ad;->e:I

    .line 1372
    :cond_16
    iget-object v1, v0, Lcom/b/a/ad;->d:Ljava/lang/String;

    if-nez v1, :cond_17

    sget v1, Lcom/b/a/ae;->e:I

    return v1

    :cond_17
    :goto_9
    const-string v1, "?#"

    .line 1391
    invoke-static {v9, v15, v11, v1}, Lcom/b/a/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 1392
    invoke-direct {v0, v9, v15, v1}, Lcom/b/a/ad;->a(Ljava/lang/String;II)V

    if-ge v1, v11, :cond_18

    .line 1396
    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_18

    const/16 v2, 0x23

    .line 1397
    invoke-static {v9, v1, v11, v2}, Lcom/b/a/a/c;->a(Ljava/lang/String;IIC)I

    move-result v10

    add-int/lit8 v2, v1, 0x1

    const-string v4, " \"\'<>#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v9

    move v3, v10

    .line 1398
    invoke-static/range {v1 .. v8}, Lcom/b/a/ac;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/ac;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->g:Ljava/util/List;

    move v1, v10

    :cond_18
    if-ge v1, v11, :cond_19

    .line 1404
    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_19

    add-int/lit8 v2, v1, 0x1

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move v3, v11

    .line 1405
    invoke-static/range {v1 .. v8}, Lcom/b/a/ac;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->h:Ljava/lang/String;

    .line 1409
    :cond_19
    sget v1, Lcom/b/a/ae;->a:I

    return v1

    .line 1309
    :cond_1a
    sget v1, Lcom/b/a/ae;->b:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)Lcom/b/a/ad;
    .locals 3

    if-nez p1, :cond_0

    .line 1006
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "host == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    .line 1007
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/b/a/ad;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1008
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    :cond_1
    iput-object v0, p0, Lcom/b/a/ad;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/b/a/ac;
    .locals 2

    .line 1233
    iget-object v0, p0, Lcom/b/a/ad;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/b/a/ad;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1235
    :cond_1
    new-instance v0, Lcom/b/a/ac;

    invoke-direct {v0, p0}, Lcom/b/a/ac;-><init>(Lcom/b/a/ad;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/b/a/ad;
    .locals 6

    if-eqz p1, :cond_0

    const-string v1, " \"\'<>#"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p1

    .line 1121
    invoke-static/range {v0 .. v5}, Lcom/b/a/ac;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    .line 1120
    invoke-static {p1}, Lcom/b/a/ac;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/b/a/ad;->g:Ljava/util/List;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1240
    iget-object v1, p0, Lcom/b/a/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    .line 1241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    iget-object v1, p0, Lcom/b/a/ad;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/ad;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1244
    :cond_0
    iget-object v1, p0, Lcom/b/a/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    iget-object v1, p0, Lcom/b/a/ad;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1246
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1247
    iget-object v1, p0, Lcom/b/a/ad;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x40

    .line 1249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1252
    :cond_2
    iget-object v1, p0, Lcom/b/a/ad;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    const/16 v1, 0x5b

    .line 1254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1255
    iget-object v1, p0, Lcom/b/a/ad;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 1256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1258
    :cond_3
    iget-object v1, p0, Lcom/b/a/ad;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/ad;->a()I

    move-result v1

    .line 1262
    iget-object v3, p0, Lcom/b/a/ad;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/b/a/ac;->a(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_4

    .line 1263
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1267
    :cond_4
    iget-object v1, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/ac;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1269
    iget-object v1, p0, Lcom/b/a/ad;->g:Ljava/util/List;

    if-eqz v1, :cond_5

    const/16 v1, 0x3f

    .line 1270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1271
    iget-object v1, p0, Lcom/b/a/ad;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/ac;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1274
    :cond_5
    iget-object v1, p0, Lcom/b/a/ad;->h:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/16 v1, 0x23

    .line 1275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1276
    iget-object v1, p0, Lcom/b/a/ad;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

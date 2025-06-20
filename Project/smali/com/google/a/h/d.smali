.class public final Lcom/google/a/h/d;
.super Ljava/lang/Object;
.source "PDF417Writer.java"

# interfaces
.implements Lcom/google/a/v;


# static fields
.field private static final a:I = 0x1e

.field private static final b:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/a/h/c/e;Ljava/lang/String;IIII)Lcom/google/a/c/b;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 7648
    invoke-static/range {p2 .. p2}, Lcom/google/a/h/c/f;->a(I)I

    move-result v0

    .line 7649
    iget-object v1, v6, Lcom/google/a/h/c/e;->c:Lcom/google/a/h/c/c;

    iget-object v2, v6, Lcom/google/a/h/c/e;->d:Ljava/nio/charset/Charset;

    move-object/from16 v3, p1

    invoke-static {v3, v1, v2}, Lcom/google/a/h/c/g;->a(Ljava/lang/String;Lcom/google/a/h/c/c;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 7650
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 7693
    iget v4, v6, Lcom/google/a/h/c/e;->e:I

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v11, v6, Lcom/google/a/h/c/e;->f:I

    const/4 v12, 0x2

    if-gt v4, v11, :cond_2

    .line 7695
    invoke-static {v2, v0, v4}, Lcom/google/a/h/c/e;->a(III)I

    move-result v11

    .line 7697
    iget v15, v6, Lcom/google/a/h/c/e;->h:I

    if-lt v11, v15, :cond_2

    .line 7701
    iget v15, v6, Lcom/google/a/h/c/e;->g:I

    if-gt v11, v15, :cond_1

    mul-int/lit8 v15, v4, 0x11

    add-int/lit8 v15, v15, 0x45

    int-to-float v15, v15

    const v16, 0x3eb6c8b4    # 0.357f

    mul-float v15, v15, v16

    int-to-float v14, v11

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v14, v14, v16

    div-float/2addr v15, v14

    if-eqz v10, :cond_0

    const/high16 v14, 0x40400000    # 3.0f

    sub-float v13, v15, v14

    .line 7708
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float v14, v5, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_1

    .line 7713
    :cond_0
    new-array v5, v12, [I

    const/4 v10, 0x0

    aput v4, v5, v10

    const/4 v10, 0x1

    aput v11, v5, v10

    move-object v10, v5

    move v5, v15

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v10, :cond_3

    .line 7718
    iget v4, v6, Lcom/google/a/h/c/e;->e:I

    invoke-static {v2, v0, v4}, Lcom/google/a/h/c/e;->a(III)I

    move-result v4

    .line 7719
    iget v5, v6, Lcom/google/a/h/c/e;->h:I

    if-ge v4, v5, :cond_3

    .line 7720
    new-array v10, v12, [I

    iget v4, v6, Lcom/google/a/h/c/e;->e:I

    const/4 v5, 0x0

    aput v4, v10, v5

    iget v4, v6, Lcom/google/a/h/c/e;->h:I

    const/4 v5, 0x1

    aput v4, v10, v5

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_1
    if-nez v10, :cond_4

    .line 7725
    new-instance v0, Lcom/google/a/w;

    const-string v1, "Unable to fit message in columns"

    invoke-direct {v0, v1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v4, 0x0

    .line 7654
    aget v11, v10, v4

    .line 7655
    aget v4, v10, v5

    .line 7657
    invoke-static {v2, v0, v11, v4}, Lcom/google/a/h/c/e;->a(IIII)I

    move-result v10

    add-int/2addr v0, v2

    add-int/2addr v0, v5

    const/16 v5, 0x3a1

    if-le v0, v5, :cond_5

    .line 7661
    new-instance v0, Lcom/google/a/w;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encoded message contains too many code words, message too big ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7662
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/2addr v2, v10

    const/4 v0, 0x1

    add-int/2addr v2, v0

    .line 7665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-char v2, v2

    .line 7666
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v10, :cond_6

    const/16 v2, 0x384

    .line 7669
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7671
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v5, p2

    .line 7674
    invoke-static {v0, v5}, Lcom/google/a/h/c/f;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    .line 7677
    new-instance v2, Lcom/google/a/h/c/a;

    invoke-direct {v2, v4, v11}, Lcom/google/a/h/c/a;-><init>(II)V

    iput-object v2, v6, Lcom/google/a/h/c/e;->a:Lcom/google/a/h/c/a;

    .line 7678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v10, v6, Lcom/google/a/h/c/e;->a:Lcom/google/a/h/c/a;

    move-object v0, v6

    move v2, v11

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/google/a/h/c/e;->a(Ljava/lang/CharSequence;IIILcom/google/a/h/c/a;)V

    .line 8539
    iget-object v0, v6, Lcom/google/a/h/c/e;->a:Lcom/google/a/h/c/a;

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 110
    invoke-virtual {v0, v2, v1}, Lcom/google/a/h/c/a;->a(II)[[B

    move-result-object v0

    if-le v8, v7, :cond_7

    const/4 v1, 0x1

    :goto_3
    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 112
    :goto_4
    aget-object v2, v0, v10

    array-length v2, v2

    array-length v3, v0

    if-ge v2, v3, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    if-eq v1, v2, :cond_9

    .line 113
    invoke-static {v0}, Lcom/google/a/h/d;->a([[B)[[B

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    .line 117
    :goto_6
    aget-object v2, v0, v10

    array-length v2, v2

    div-int v2, v7, v2

    .line 118
    array-length v3, v0

    div-int v3, v8, v3

    if-lt v2, v3, :cond_a

    move v2, v3

    :cond_a
    const/4 v3, 0x1

    if-le v2, v3, :cond_c

    .line 9539
    iget-object v0, v6, Lcom/google/a/h/c/e;->a:Lcom/google/a/h/c/a;

    shl-int/lit8 v3, v2, 0x2

    .line 129
    invoke-virtual {v0, v2, v3}, Lcom/google/a/h/c/a;->a(II)[[B

    move-result-object v0

    if-eqz v1, :cond_b

    .line 131
    invoke-static {v0}, Lcom/google/a/h/d;->a([[B)[[B

    move-result-object v0

    .line 133
    :cond_b
    invoke-static {v0, v9}, Lcom/google/a/h/d;->a([[BI)Lcom/google/a/c/b;

    move-result-object v0

    return-object v0

    .line 135
    :cond_c
    invoke-static {v0, v9}, Lcom/google/a/h/d;->a([[BI)Lcom/google/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method private static a([[BI)Lcom/google/a/c/b;
    .locals 8

    .line 147
    new-instance v0, Lcom/google/a/c/b;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    array-length v4, p0

    add-int/2addr v4, v3

    invoke-direct {v0, v2, v4}, Lcom/google/a/c/b;-><init>(II)V

    .line 148
    invoke-virtual {v0}, Lcom/google/a/c/b;->a()V

    .line 10406
    iget v2, v0, Lcom/google/a/c/b;->b:I

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v2

    const/4 v2, 0x0

    .line 149
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_2

    .line 150
    aget-object v5, p0, v2

    const/4 v6, 0x0

    .line 151
    :goto_1
    aget-object v7, p0, v1

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 153
    aget-byte v7, v5, v6

    if-ne v7, v3, :cond_0

    add-int v7, v6, p1

    .line 154
    invoke-virtual {v0, v7, v4}, Lcom/google/a/c/b;->b(II)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a([[B)[[B
    .locals 7

    const/4 v0, 0x0

    .line 165
    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, B

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    const/4 v2, 0x0

    .line 166
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 169
    array-length v3, p0

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    .line 170
    :goto_1
    aget-object v5, p0, v0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 171
    aget-object v5, v1, v4

    aget-object v6, p0, v2

    aget-byte v6, v6, v4

    aput-byte v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/a/a;II)Lcom/google/a/c/b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 95
    invoke-virtual/range {v0 .. v5}, Lcom/google/a/h/d;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;
    .locals 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/google/a/a;->k:Lcom/google/a/a;

    if-eq p2, v0, :cond_0

    .line 54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Can only encode PDF_417, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_0
    new-instance p2, Lcom/google/a/h/c/e;

    invoke-direct {p2}, Lcom/google/a/h/c/e;-><init>()V

    const/16 v0, 0x1e

    const/4 v1, 0x2

    if-eqz p5, :cond_6

    .line 62
    sget-object v2, Lcom/google/a/g;->g:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    sget-object v2, Lcom/google/a/g;->g:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1757
    iput-boolean v2, p2, Lcom/google/a/h/c/e;->b:Z

    .line 65
    :cond_1
    sget-object v2, Lcom/google/a/g;->h:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    sget-object v2, Lcom/google/a/g;->h:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/a/h/c/c;->valueOf(Ljava/lang/String;)Lcom/google/a/h/c/c;

    move-result-object v2

    .line 2750
    iput-object v2, p2, Lcom/google/a/h/c/e;->c:Lcom/google/a/h/c/c;

    .line 68
    :cond_2
    sget-object v2, Lcom/google/a/g;->i:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    sget-object v2, Lcom/google/a/g;->i:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/a/h/c/d;

    .line 3043
    iget v3, v2, Lcom/google/a/h/c/d;->b:I

    .line 4039
    iget v4, v2, Lcom/google/a/h/c/d;->a:I

    .line 4051
    iget v5, v2, Lcom/google/a/h/c/d;->d:I

    .line 5047
    iget v2, v2, Lcom/google/a/h/c/d;->c:I

    .line 5740
    iput v3, p2, Lcom/google/a/h/c/e;->f:I

    .line 5741
    iput v4, p2, Lcom/google/a/h/c/e;->e:I

    .line 5742
    iput v5, p2, Lcom/google/a/h/c/e;->g:I

    .line 5743
    iput v2, p2, Lcom/google/a/h/c/e;->h:I

    .line 75
    :cond_3
    sget-object v2, Lcom/google/a/g;->f:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    sget-object v0, Lcom/google/a/g;->f:Lcom/google/a/g;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 78
    :cond_4
    sget-object v2, Lcom/google/a/g;->a:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 79
    sget-object v1, Lcom/google/a/g;->a:Lcom/google/a/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 81
    :cond_5
    sget-object v2, Lcom/google/a/g;->b:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 82
    sget-object v2, Lcom/google/a/g;->b:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p5

    .line 5764
    iput-object p5, p2, Lcom/google/a/h/c/e;->d:Ljava/nio/charset/Charset;

    .line 6107
    :cond_6
    invoke-virtual {p2, p1, v1}, Lcom/google/a/h/c/e;->a(Ljava/lang/String;I)V

    .line 6539
    iget-object p1, p2, Lcom/google/a/h/c/e;->a:Lcom/google/a/h/c/a;

    const/4 p5, 0x4

    const/4 v1, 0x1

    .line 6110
    invoke-virtual {p1, v1, p5}, Lcom/google/a/h/c/a;->a(II)[[B

    move-result-object p1

    const/4 p5, 0x0

    if-le p4, p3, :cond_7

    const/4 v2, 0x1

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    .line 6112
    :goto_0
    aget-object v3, p1, p5

    array-length v3, v3

    array-length v4, p1

    if-ge v3, v4, :cond_8

    const/4 v3, 0x1

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_9

    .line 6113
    invoke-static {p1}, Lcom/google/a/h/d;->a([[B)[[B

    move-result-object p1

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    .line 6117
    :goto_2
    aget-object p5, p1, p5

    array-length p5, p5

    div-int/2addr p3, p5

    .line 6118
    array-length p5, p1

    div-int/2addr p4, p5

    if-lt p3, p4, :cond_a

    move p3, p4

    :cond_a
    if-le p3, v1, :cond_c

    .line 7539
    iget-object p1, p2, Lcom/google/a/h/c/e;->a:Lcom/google/a/h/c/a;

    shl-int/lit8 p2, p3, 0x2

    .line 6129
    invoke-virtual {p1, p3, p2}, Lcom/google/a/h/c/a;->a(II)[[B

    move-result-object p1

    if-eqz v2, :cond_b

    .line 6131
    invoke-static {p1}, Lcom/google/a/h/d;->a([[B)[[B

    move-result-object p1

    .line 6133
    :cond_b
    invoke-static {p1, v0}, Lcom/google/a/h/d;->a([[BI)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1

    .line 6135
    :cond_c
    invoke-static {p1, v0}, Lcom/google/a/h/d;->a([[BI)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method

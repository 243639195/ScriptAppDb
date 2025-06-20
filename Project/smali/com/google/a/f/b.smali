.class public final Lcom/google/a/f/b;
.super Ljava/lang/Object;
.source "GenericMultipleBarcodeReader.java"

# interfaces
.implements Lcom/google/a/f/c;


# static fields
.field private static final a:I = 0x64

.field private static final b:I = 0x4


# instance fields
.field private final c:Lcom/google/a/p;


# direct methods
.method private constructor <init>(Lcom/google/a/p;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/a/f/b;->c:Lcom/google/a/p;

    return-void
.end method

.method private static a(Lcom/google/a/r;II)Lcom/google/a/r;
    .locals 10

    .line 7096
    iget-object v0, p0, Lcom/google/a/r;->d:[Lcom/google/a/t;

    if-nez v0, :cond_0

    return-object p0

    .line 163
    :cond_0
    array-length v1, v0

    new-array v6, v1, [Lcom/google/a/t;

    const/4 v1, 0x0

    .line 164
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 165
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 167
    new-instance v3, Lcom/google/a/t;

    .line 8038
    iget v4, v2, Lcom/google/a/t;->a:F

    int-to-float v5, p1

    add-float/2addr v4, v5

    .line 8042
    iget v2, v2, Lcom/google/a/t;->b:F

    int-to-float v5, p2

    add-float/2addr v2, v5

    .line 167
    invoke-direct {v3, v4, v2}, Lcom/google/a/t;-><init>(FF)V

    aput-object v3, v6, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_2
    new-instance p1, Lcom/google/a/r;

    .line 8072
    iget-object v3, p0, Lcom/google/a/r;->a:Ljava/lang/String;

    .line 8079
    iget-object v4, p0, Lcom/google/a/r;->b:[B

    .line 8087
    iget v5, p0, Lcom/google/a/r;->c:I

    .line 8103
    iget-object v7, p0, Lcom/google/a/r;->e:Lcom/google/a/a;

    .line 8145
    iget-wide v8, p0, Lcom/google/a/r;->g:J

    move-object v2, p1

    .line 175
    invoke-direct/range {v2 .. v9}, Lcom/google/a/r;-><init>(Ljava/lang/String;[BI[Lcom/google/a/t;Lcom/google/a/a;J)V

    .line 9112
    iget-object p0, p0, Lcom/google/a/r;->f:Ljava/util/Map;

    .line 176
    invoke-virtual {p1, p0}, Lcom/google/a/r;->a(Ljava/util/Map;)V

    return-object p1
.end method

.method private a(Lcom/google/a/c;Ljava/util/Map;Ljava/util/List;III)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;",
            "Ljava/util/List<",
            "Lcom/google/a/r;",
            ">;III)V"
        }
    .end annotation

    move/from16 v7, p4

    move-object/from16 v9, p1

    move/from16 v10, p5

    move/from16 v8, p6

    :goto_0
    const/4 v0, 0x4

    if-le v8, v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v11, p0

    .line 84
    :try_start_0
    iget-object v0, v11, Lcom/google/a/f/b;->c:Lcom/google/a/p;

    move-object/from16 v12, p2

    invoke-interface {v0, v9, v12}, Lcom/google/a/p;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/a/q; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/a/r;

    .line 1072
    iget-object v2, v2, Lcom/google/a/r;->a:Ljava/lang/String;

    .line 2072
    iget-object v3, v0, Lcom/google/a/r;->a:Ljava/lang/String;

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    .line 3096
    iget-object v1, v0, Lcom/google/a/r;->d:[Lcom/google/a/t;

    if-nez v1, :cond_3

    move-object/from16 v7, p3

    move-object v1, v0

    goto :goto_3

    .line 2163
    :cond_3
    array-length v2, v1

    new-array v2, v2, [Lcom/google/a/t;

    const/4 v3, 0x0

    .line 2164
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_5

    .line 2165
    aget-object v4, v1, v3

    if-eqz v4, :cond_4

    .line 2167
    new-instance v5, Lcom/google/a/t;

    .line 4038
    iget v6, v4, Lcom/google/a/t;->a:F

    int-to-float v14, v7

    add-float/2addr v6, v14

    .line 4042
    iget v4, v4, Lcom/google/a/t;->b:F

    int-to-float v14, v10

    add-float/2addr v4, v14

    .line 2167
    invoke-direct {v5, v6, v4}, Lcom/google/a/t;-><init>(FF)V

    aput-object v5, v2, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2170
    :cond_5
    new-instance v1, Lcom/google/a/r;

    .line 4072
    iget-object v15, v0, Lcom/google/a/r;->a:Ljava/lang/String;

    .line 4079
    iget-object v3, v0, Lcom/google/a/r;->b:[B

    .line 4087
    iget v4, v0, Lcom/google/a/r;->c:I

    .line 4103
    iget-object v5, v0, Lcom/google/a/r;->e:Lcom/google/a/a;

    .line 4145
    iget-wide v6, v0, Lcom/google/a/r;->g:J

    move-object v14, v1

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-wide/from16 v20, v6

    .line 2175
    invoke-direct/range {v14 .. v21}, Lcom/google/a/r;-><init>(Ljava/lang/String;[BI[Lcom/google/a/t;Lcom/google/a/a;J)V

    .line 5112
    iget-object v2, v0, Lcom/google/a/r;->f:Ljava/util/Map;

    .line 2176
    invoke-virtual {v1, v2}, Lcom/google/a/r;->a(Ljava/util/Map;)V

    move-object/from16 v7, p3

    .line 96
    :goto_3
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move-object/from16 v7, p3

    .line 6096
    :goto_4
    iget-object v0, v0, Lcom/google/a/r;->d:[Lcom/google/a/t;

    if-eqz v0, :cond_12

    .line 99
    array-length v1, v0

    if-nez v1, :cond_7

    goto/16 :goto_9

    .line 102
    :cond_7
    invoke-virtual {v9}, Lcom/google/a/c;->a()I

    move-result v14

    .line 103
    invoke-virtual {v9}, Lcom/google/a/c;->b()I

    move-result v15

    int-to-float v1, v14

    int-to-float v2, v15

    .line 108
    array-length v3, v0

    const/4 v4, 0x0

    move v6, v2

    const/4 v5, 0x0

    move v2, v1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_d

    aget-object v13, v0, v1

    if-eqz v13, :cond_c

    move-object/from16 v22, v0

    .line 7038
    iget v0, v13, Lcom/google/a/t;->a:F

    .line 7042
    iget v13, v13, Lcom/google/a/t;->b:F

    cmpg-float v16, v0, v2

    if-gez v16, :cond_8

    move v2, v0

    :cond_8
    cmpg-float v16, v13, v6

    if-gez v16, :cond_9

    move v6, v13

    :cond_9
    cmpl-float v16, v0, v5

    if-lez v16, :cond_a

    goto :goto_6

    :cond_a
    move v0, v5

    :goto_6
    cmpl-float v5, v13, v4

    if-lez v5, :cond_b

    move v5, v0

    move v4, v13

    goto :goto_7

    :cond_b
    move v5, v0

    goto :goto_7

    :cond_c
    move-object/from16 v22, v0

    :goto_7
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v22

    goto :goto_5

    :cond_d
    const/high16 v13, 0x42c80000    # 100.0f

    cmpl-float v0, v2, v13

    if-lez v0, :cond_e

    float-to-int v0, v2

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v9, v1, v1, v0, v15}, Lcom/google/a/c;->a(IIII)Lcom/google/a/c;

    move-result-object v2

    add-int/lit8 v16, v8, 0x1

    move-object v0, v11

    move-object v1, v2

    move-object v2, v12

    move-object v3, v7

    move/from16 v23, v4

    move/from16 v17, p4

    move/from16 v4, v17

    move/from16 v24, v5

    move v5, v10

    move v13, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/google/a/f/b;->a(Lcom/google/a/c;Ljava/util/Map;Ljava/util/List;III)V

    goto :goto_8

    :cond_e
    move/from16 v23, v4

    move/from16 v24, v5

    move v13, v6

    move/from16 v17, p4

    :goto_8
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, v13, v0

    if-lez v0, :cond_f

    float-to-int v0, v13

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v9, v1, v1, v14, v0}, Lcom/google/a/c;->a(IIII)Lcom/google/a/c;

    move-result-object v2

    add-int/lit8 v6, v8, 0x1

    move-object v0, v11

    move-object v1, v2

    move-object v2, v12

    move-object v3, v7

    move/from16 v4, v17

    move v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/google/a/f/b;->a(Lcom/google/a/c;Ljava/util/Map;Ljava/util/List;III)V

    :cond_f
    add-int/lit8 v0, v14, -0x64

    int-to-float v0, v0

    move/from16 v4, v24

    cmpg-float v0, v4, v0

    if-gez v0, :cond_10

    float-to-int v0, v4

    sub-int v1, v14, v0

    const/4 v2, 0x0

    .line 144
    invoke-virtual {v9, v0, v2, v1, v15}, Lcom/google/a/c;->a(IIII)Lcom/google/a/c;

    move-result-object v1

    add-int v4, v17, v0

    add-int/lit8 v6, v8, 0x1

    move-object v0, v11

    move-object v2, v12

    move-object v3, v7

    move v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/google/a/f/b;->a(Lcom/google/a/c;Ljava/util/Map;Ljava/util/List;III)V

    :cond_10
    add-int/lit8 v0, v15, -0x64

    int-to-float v0, v0

    move/from16 v4, v23

    cmpg-float v0, v4, v0

    if-gez v0, :cond_11

    float-to-int v0, v4

    sub-int/2addr v15, v0

    const/4 v1, 0x0

    .line 151
    invoke-virtual {v9, v1, v0, v14, v15}, Lcom/google/a/c;->a(IIII)Lcom/google/a/c;

    move-result-object v9

    add-int/2addr v10, v0

    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v17

    goto/16 :goto_0

    :cond_11
    return-void

    :cond_12
    :goto_9
    return-void

    :catch_0
    return-void
.end method


# virtual methods
.method public final a_(Lcom/google/a/c;)[Lcom/google/a/r;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/a/f/b;->b(Lcom/google/a/c;)[Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/a/c;)[Lcom/google/a/r;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            ")[",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 64
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v7

    .line 65
    invoke-direct/range {v0 .. v6}, Lcom/google/a/f/b;->a(Lcom/google/a/c;Ljava/util/Map;Ljava/util/List;III)V

    .line 66
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1

    .line 69
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/a/r;

    invoke-interface {v7, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/a/r;

    return-object p1
.end method

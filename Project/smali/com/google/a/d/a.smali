.class public final Lcom/google/a/d/a;
.super Ljava/lang/Object;
.source "DataMatrixReader.java"

# interfaces
.implements Lcom/google/a/p;


# static fields
.field private static final a:[Lcom/google/a/t;


# instance fields
.field private final b:Lcom/google/a/d/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    new-array v0, v0, [Lcom/google/a/t;

    sput-object v0, Lcom/google/a/d/a;->a:[Lcom/google/a/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/google/a/d/a/d;

    invoke-direct {v0}, Lcom/google/a/d/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/a/d/a;->b:Lcom/google/a/d/a/d;

    return-void
.end method

.method private static a([ILcom/google/a/c/b;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 35399
    iget v0, p1, Lcom/google/a/c/b;->a:I

    const/4 v1, 0x0

    .line 145
    aget v2, p0, v1

    const/4 v3, 0x1

    .line 146
    aget v3, p0, v3

    :goto_0
    if-ge v2, v0, :cond_0

    .line 147
    invoke-virtual {p1, v2, v3}, Lcom/google/a/c/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    .line 151
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0

    .line 154
    :cond_1
    aget p0, p0, v1

    sub-int/2addr v2, p0

    if-nez v2, :cond_2

    .line 156
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_2
    return v2
.end method

.method private static a(Lcom/google/a/c/b;)Lcom/google/a/c/b;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/google/a/c/b;->b()[I

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/google/a/c/b;->c()[I

    move-result-object v1

    if-eqz v0, :cond_9

    if-nez v1, :cond_0

    goto :goto_4

    .line 34399
    :cond_0
    iget v2, p0, Lcom/google/a/c/b;->a:I

    const/4 v3, 0x0

    .line 34145
    aget v4, v0, v3

    const/4 v5, 0x1

    .line 34146
    aget v6, v0, v5

    :goto_0
    if-ge v4, v2, :cond_1

    .line 34147
    invoke-virtual {p0, v4, v6}, Lcom/google/a/c/b;->a(II)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-ne v4, v2, :cond_2

    .line 34151
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0

    .line 34154
    :cond_2
    aget v2, v0, v3

    sub-int/2addr v4, v2

    if-nez v4, :cond_3

    .line 34156
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0

    .line 112
    :cond_3
    aget v2, v0, v5

    .line 113
    aget v6, v1, v5

    .line 114
    aget v0, v0, v3

    .line 115
    aget v1, v1, v3

    sub-int/2addr v1, v0

    add-int/2addr v1, v5

    .line 117
    div-int/2addr v1, v4

    sub-int/2addr v6, v2

    add-int/2addr v6, v5

    .line 118
    div-int/2addr v6, v4

    if-lez v1, :cond_8

    if-gtz v6, :cond_4

    goto :goto_3

    .line 126
    :cond_4
    div-int/lit8 v5, v4, 0x2

    add-int/2addr v2, v5

    add-int/2addr v0, v5

    .line 131
    new-instance v5, Lcom/google/a/c/b;

    invoke-direct {v5, v1, v6}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_7

    mul-int v8, v7, v4

    add-int/2addr v8, v2

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v1, :cond_6

    mul-int v10, v9, v4

    add-int/2addr v10, v0

    .line 135
    invoke-virtual {p0, v10, v8}, Lcom/google/a/c/b;->a(II)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 136
    invoke-virtual {v5, v9, v7}, Lcom/google/a/c/b;->b(II)V

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    return-object v5

    .line 120
    :cond_8
    :goto_3
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0

    .line 107
    :cond_9
    :goto_4
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0
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

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/google/a/d/a;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .locals 27
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    .line 67
    sget-object v4, Lcom/google/a/e;->b:Lcom/google/a/e;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/google/a/c;->c()Lcom/google/a/c/b;

    move-result-object v1

    .line 1104
    invoke-virtual {v1}, Lcom/google/a/c/b;->b()[I

    move-result-object v4

    .line 1105
    invoke-virtual {v1}, Lcom/google/a/c/b;->c()[I

    move-result-object v5

    if-eqz v4, :cond_9

    if-nez v5, :cond_0

    goto :goto_4

    .line 1399
    :cond_0
    iget v6, v1, Lcom/google/a/c/b;->a:I

    .line 1145
    aget v7, v4, v2

    .line 1146
    aget v8, v4, v3

    :goto_0
    if-ge v7, v6, :cond_1

    .line 1147
    invoke-virtual {v1, v7, v8}, Lcom/google/a/c/b;->a(II)Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-ne v7, v6, :cond_2

    .line 1151
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    .line 1154
    :cond_2
    aget v6, v4, v2

    sub-int/2addr v7, v6

    if-nez v7, :cond_3

    .line 1156
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    .line 1112
    :cond_3
    aget v6, v4, v3

    .line 1113
    aget v8, v5, v3

    .line 1114
    aget v4, v4, v2

    .line 1115
    aget v5, v5, v2

    sub-int/2addr v5, v4

    add-int/2addr v5, v3

    .line 1117
    div-int/2addr v5, v7

    sub-int/2addr v8, v6

    add-int/2addr v8, v3

    .line 1118
    div-int/2addr v8, v7

    if-lez v5, :cond_8

    if-gtz v8, :cond_4

    goto :goto_3

    .line 1126
    :cond_4
    div-int/lit8 v3, v7, 0x2

    add-int/2addr v6, v3

    add-int/2addr v4, v3

    .line 1131
    new-instance v3, Lcom/google/a/c/b;

    invoke-direct {v3, v5, v8}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_7

    mul-int v10, v9, v7

    add-int/2addr v10, v6

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v5, :cond_6

    mul-int v12, v11, v7

    add-int/2addr v12, v4

    .line 1135
    invoke-virtual {v1, v12, v10}, Lcom/google/a/c/b;->a(II)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1136
    invoke-virtual {v3, v11, v9}, Lcom/google/a/c/b;->b(II)V

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 69
    :cond_7
    iget-object v1, v0, Lcom/google/a/d/a;->b:Lcom/google/a/d/a/d;

    invoke-virtual {v1, v3}, Lcom/google/a/d/a/d;->a(Lcom/google/a/c/b;)Lcom/google/a/c/e;

    move-result-object v1

    .line 70
    sget-object v2, Lcom/google/a/d/a;->a:[Lcom/google/a/t;

    goto/16 :goto_f

    .line 1120
    :cond_8
    :goto_3
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    .line 1107
    :cond_9
    :goto_4
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    .line 72
    :cond_a
    new-instance v1, Lcom/google/a/d/b/a;

    invoke-virtual/range {p1 .. p1}, Lcom/google/a/c;->c()Lcom/google/a/c/b;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/a/d/b/a;-><init>(Lcom/google/a/c/b;)V

    .line 2059
    iget-object v4, v1, Lcom/google/a/d/b/a;->b:Lcom/google/a/c/a/c;

    invoke-virtual {v4}, Lcom/google/a/c/a/c;->a()[Lcom/google/a/t;

    move-result-object v4

    .line 2060
    aget-object v5, v4, v2

    .line 2061
    aget-object v6, v4, v3

    const/4 v7, 0x2

    .line 2062
    aget-object v8, v4, v7

    const/4 v9, 0x3

    .line 2063
    aget-object v4, v4, v9

    .line 2068
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 2069
    invoke-virtual {v1, v5, v6}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2070
    invoke-virtual {v1, v5, v8}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2071
    invoke-virtual {v1, v6, v4}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2072
    invoke-virtual {v1, v8, v4}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2073
    new-instance v12, Lcom/google/a/d/b/a$b;

    invoke-direct {v12, v2}, Lcom/google/a/d/b/a$b;-><init>(B)V

    invoke-static {v10, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2077
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/a/d/b/a$a;

    .line 2078
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/a/d/b/a$a;

    .line 2082
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 2412
    iget-object v14, v12, Lcom/google/a/d/b/a$a;->a:Lcom/google/a/t;

    .line 2083
    invoke-static {v13, v14}, Lcom/google/a/d/b/a;->a(Ljava/util/Map;Lcom/google/a/t;)V

    .line 2416
    iget-object v12, v12, Lcom/google/a/d/b/a$a;->b:Lcom/google/a/t;

    .line 2084
    invoke-static {v13, v12}, Lcom/google/a/d/b/a;->a(Ljava/util/Map;Lcom/google/a/t;)V

    .line 3412
    iget-object v12, v10, Lcom/google/a/d/b/a$a;->a:Lcom/google/a/t;

    .line 2085
    invoke-static {v13, v12}, Lcom/google/a/d/b/a;->a(Ljava/util/Map;Lcom/google/a/t;)V

    .line 3416
    iget-object v10, v10, Lcom/google/a/d/b/a$a;->b:Lcom/google/a/t;

    .line 2086
    invoke-static {v13, v10}, Lcom/google/a/d/b/a;->a(Ljava/util/Map;Lcom/google/a/t;)V

    .line 2091
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Ljava/util/Map$Entry;

    .line 2092
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/a/t;

    .line 2093
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 2094
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v7, :cond_b

    move-object/from16 v15, v17

    goto :goto_5

    :cond_b
    if-nez v14, :cond_c

    move-object/from16 v14, v17

    goto :goto_5

    :cond_c
    move-object/from16 v16, v17

    goto :goto_5

    :cond_d
    if-eqz v14, :cond_23

    if-eqz v15, :cond_23

    if-nez v16, :cond_e

    goto/16 :goto_10

    .line 2111
    :cond_e
    new-array v10, v9, [Lcom/google/a/t;

    aput-object v14, v10, v2

    aput-object v15, v10, v3

    aput-object v16, v10, v7

    .line 2113
    invoke-static {v10}, Lcom/google/a/t;->a([Lcom/google/a/t;)V

    .line 2116
    aget-object v12, v10, v2

    .line 2117
    aget-object v14, v10, v3

    .line 2118
    aget-object v10, v10, v7

    .line 2122
    invoke-interface {v13, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    move-object v4, v5

    goto :goto_6

    .line 2124
    :cond_f
    invoke-interface {v13, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2126
    invoke-interface {v13, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    move-object v4, v8

    goto :goto_6

    :cond_10
    move-object v4, v6

    .line 2141
    :cond_11
    :goto_6
    invoke-virtual {v1, v10, v4}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v5

    .line 3420
    iget v5, v5, Lcom/google/a/d/b/a$a;->c:I

    .line 2142
    invoke-virtual {v1, v12, v4}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v6

    .line 4420
    iget v6, v6, Lcom/google/a/d/b/a$a;->c:I

    and-int/lit8 v8, v5, 0x1

    if-ne v8, v3, :cond_12

    add-int/lit8 v5, v5, 0x1

    :cond_12
    add-int/2addr v5, v7

    and-int/lit8 v8, v6, 0x1

    if-ne v8, v3, :cond_13

    add-int/lit8 v6, v6, 0x1

    :cond_13
    add-int/2addr v6, v7

    mul-int/lit8 v8, v5, 0x4

    mul-int/lit8 v13, v6, 0x7

    if-ge v8, v13, :cond_1a

    mul-int/lit8 v8, v6, 0x4

    mul-int/lit8 v13, v5, 0x7

    if-lt v8, v13, :cond_14

    goto/16 :goto_a

    .line 2189
    :cond_14
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 19273
    invoke-static {v14, v12}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v6

    int-to-float v6, v6

    int-to-float v5, v5

    div-float/2addr v6, v5

    .line 19274
    invoke-static {v10, v4}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v8

    .line 20038
    iget v13, v4, Lcom/google/a/t;->a:F

    .line 21038
    iget v15, v10, Lcom/google/a/t;->a:F

    sub-float/2addr v13, v15

    int-to-float v8, v8

    div-float/2addr v13, v8

    .line 21042
    iget v15, v4, Lcom/google/a/t;->b:F

    .line 22042
    iget v9, v10, Lcom/google/a/t;->b:F

    sub-float/2addr v15, v9

    div-float/2addr v15, v8

    .line 19278
    new-instance v8, Lcom/google/a/t;

    .line 23038
    iget v9, v4, Lcom/google/a/t;->a:F

    mul-float v13, v13, v6

    add-float/2addr v9, v13

    .line 23042
    iget v13, v4, Lcom/google/a/t;->b:F

    mul-float v6, v6, v15

    add-float/2addr v13, v6

    .line 19278
    invoke-direct {v8, v9, v13}, Lcom/google/a/t;-><init>(FF)V

    .line 19280
    invoke-static {v14, v10}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 19281
    invoke-static {v12, v4}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v5

    .line 24038
    iget v9, v4, Lcom/google/a/t;->a:F

    .line 25038
    iget v13, v12, Lcom/google/a/t;->a:F

    sub-float/2addr v9, v13

    int-to-float v5, v5

    div-float/2addr v9, v5

    .line 25042
    iget v13, v4, Lcom/google/a/t;->b:F

    .line 26042
    iget v15, v12, Lcom/google/a/t;->b:F

    sub-float/2addr v13, v15

    div-float/2addr v13, v5

    .line 19285
    new-instance v5, Lcom/google/a/t;

    .line 27038
    iget v15, v4, Lcom/google/a/t;->a:F

    mul-float v9, v9, v6

    add-float/2addr v15, v9

    .line 27042
    iget v9, v4, Lcom/google/a/t;->b:F

    mul-float v6, v6, v13

    add-float/2addr v9, v6

    .line 19285
    invoke-direct {v5, v15, v9}, Lcom/google/a/t;-><init>(FF)V

    .line 19287
    invoke-virtual {v1, v8}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 19288
    invoke-virtual {v1, v5}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result v6

    if-nez v6, :cond_17

    const/16 v18, 0x0

    goto :goto_8

    .line 19293
    :cond_15
    invoke-virtual {v1, v5}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result v6

    if-nez v6, :cond_16

    goto :goto_7

    .line 19297
    :cond_16
    invoke-virtual {v1, v10, v8}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v6

    .line 27420
    iget v6, v6, Lcom/google/a/d/b/a$a;->c:I

    .line 19298
    invoke-virtual {v1, v12, v8}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v9

    .line 28420
    iget v9, v9, Lcom/google/a/d/b/a$a;->c:I

    sub-int/2addr v6, v9

    .line 19297
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 19299
    invoke-virtual {v1, v10, v5}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v9

    .line 29420
    iget v9, v9, Lcom/google/a/d/b/a$a;->c:I

    .line 19300
    invoke-virtual {v1, v12, v5}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v13

    .line 30420
    iget v13, v13, Lcom/google/a/d/b/a$a;->c:I

    sub-int/2addr v9, v13

    .line 19299
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v6, v9, :cond_17

    :goto_7
    move-object/from16 v18, v8

    goto :goto_8

    :cond_17
    move-object/from16 v18, v5

    :goto_8
    if-nez v18, :cond_18

    goto :goto_9

    :cond_18
    move-object/from16 v4, v18

    .line 2197
    :goto_9
    invoke-virtual {v1, v10, v4}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v5

    .line 31420
    iget v5, v5, Lcom/google/a/d/b/a$a;->c:I

    .line 2198
    invoke-virtual {v1, v12, v4}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v6

    .line 32420
    iget v6, v6, Lcom/google/a/d/b/a$a;->c:I

    .line 2197
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    and-int/lit8 v6, v5, 0x1

    if-ne v6, v3, :cond_19

    add-int/lit8 v5, v5, 0x1

    :cond_19
    move/from16 v25, v5

    .line 2204
    iget-object v1, v1, Lcom/google/a/d/b/a;->a:Lcom/google/a/c/b;

    move-object/from16 v19, v1

    move-object/from16 v20, v10

    move-object/from16 v21, v14

    move-object/from16 v22, v12

    move-object/from16 v23, v4

    move/from16 v24, v25

    invoke-static/range {v19 .. v25}, Lcom/google/a/d/b/a;->a(Lcom/google/a/c/b;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;II)Lcom/google/a/c/b;

    move-result-object v1

    goto/16 :goto_e

    .line 5227
    :cond_1a
    :goto_a
    invoke-static {v14, v12}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v5

    div-float/2addr v8, v9

    .line 5228
    invoke-static {v10, v4}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v9

    .line 6038
    iget v13, v4, Lcom/google/a/t;->a:F

    .line 7038
    iget v15, v10, Lcom/google/a/t;->a:F

    sub-float/2addr v13, v15

    int-to-float v9, v9

    div-float/2addr v13, v9

    .line 7042
    iget v15, v4, Lcom/google/a/t;->b:F

    .line 8042
    iget v7, v10, Lcom/google/a/t;->b:F

    sub-float/2addr v15, v7

    div-float/2addr v15, v9

    .line 5232
    new-instance v7, Lcom/google/a/t;

    .line 9038
    iget v9, v4, Lcom/google/a/t;->a:F

    mul-float v13, v13, v8

    add-float/2addr v9, v13

    .line 9042
    iget v13, v4, Lcom/google/a/t;->b:F

    mul-float v8, v8, v15

    add-float/2addr v13, v8

    .line 5232
    invoke-direct {v7, v9, v13}, Lcom/google/a/t;-><init>(FF)V

    .line 5234
    invoke-static {v14, v10}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    .line 5235
    invoke-static {v12, v4}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v9

    .line 10038
    iget v13, v4, Lcom/google/a/t;->a:F

    .line 11038
    iget v15, v12, Lcom/google/a/t;->a:F

    sub-float/2addr v13, v15

    int-to-float v9, v9

    div-float/2addr v13, v9

    .line 11042
    iget v15, v4, Lcom/google/a/t;->b:F

    .line 12042
    iget v2, v12, Lcom/google/a/t;->b:F

    sub-float/2addr v15, v2

    div-float/2addr v15, v9

    .line 5239
    new-instance v2, Lcom/google/a/t;

    .line 13038
    iget v9, v4, Lcom/google/a/t;->a:F

    mul-float v13, v13, v8

    add-float/2addr v9, v13

    .line 13042
    iget v13, v4, Lcom/google/a/t;->b:F

    mul-float v8, v8, v15

    add-float/2addr v13, v8

    .line 5239
    invoke-direct {v2, v9, v13}, Lcom/google/a/t;-><init>(FF)V

    .line 5241
    invoke-virtual {v1, v7}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 5242
    invoke-virtual {v1, v2}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result v5

    if-nez v5, :cond_1d

    const/16 v18, 0x0

    goto :goto_c

    .line 5247
    :cond_1b
    invoke-virtual {v1, v2}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result v8

    if-nez v8, :cond_1c

    goto :goto_b

    .line 5251
    :cond_1c
    invoke-virtual {v1, v10, v7}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v8

    .line 13420
    iget v8, v8, Lcom/google/a/d/b/a$a;->c:I

    sub-int v8, v5, v8

    .line 5251
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 5252
    invoke-virtual {v1, v12, v7}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v9

    .line 14420
    iget v9, v9, Lcom/google/a/d/b/a$a;->c:I

    sub-int v9, v6, v9

    .line 5252
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    .line 5253
    invoke-virtual {v1, v10, v2}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v9

    .line 15420
    iget v9, v9, Lcom/google/a/d/b/a$a;->c:I

    sub-int/2addr v5, v9

    .line 5253
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 5254
    invoke-virtual {v1, v12, v2}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v9

    .line 16420
    iget v9, v9, Lcom/google/a/d/b/a$a;->c:I

    sub-int/2addr v6, v9

    .line 5254
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    if-gt v8, v5, :cond_1d

    :goto_b
    move-object/from16 v18, v7

    goto :goto_c

    :cond_1d
    move-object/from16 v18, v2

    :goto_c
    if-nez v18, :cond_1e

    goto :goto_d

    :cond_1e
    move-object/from16 v4, v18

    .line 2171
    :goto_d
    invoke-virtual {v1, v10, v4}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v2

    .line 17420
    iget v2, v2, Lcom/google/a/d/b/a$a;->c:I

    .line 2172
    invoke-virtual {v1, v12, v4}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v5

    .line 18420
    iget v5, v5, Lcom/google/a/d/b/a$a;->c:I

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v3, :cond_1f

    add-int/lit8 v2, v2, 0x1

    :cond_1f
    move/from16 v24, v2

    and-int/lit8 v2, v5, 0x1

    if-ne v2, v3, :cond_20

    add-int/lit8 v5, v5, 0x1

    :cond_20
    move/from16 v25, v5

    .line 2184
    iget-object v1, v1, Lcom/google/a/d/b/a;->a:Lcom/google/a/c/b;

    move-object/from16 v19, v1

    move-object/from16 v20, v10

    move-object/from16 v21, v14

    move-object/from16 v22, v12

    move-object/from16 v23, v4

    invoke-static/range {v19 .. v25}, Lcom/google/a/d/b/a;->a(Lcom/google/a/c/b;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;II)Lcom/google/a/c/b;

    move-result-object v1

    .line 2213
    :goto_e
    new-instance v2, Lcom/google/a/c/g;

    new-array v5, v11, [Lcom/google/a/t;

    const/4 v6, 0x0

    aput-object v10, v5, v6

    aput-object v14, v5, v3

    const/4 v3, 0x2

    aput-object v12, v5, v3

    const/4 v3, 0x3

    aput-object v4, v5, v3

    invoke-direct {v2, v1, v5}, Lcom/google/a/c/g;-><init>(Lcom/google/a/c/b;[Lcom/google/a/t;)V

    .line 73
    iget-object v1, v0, Lcom/google/a/d/a;->b:Lcom/google/a/d/a/d;

    .line 33039
    iget-object v3, v2, Lcom/google/a/c/g;->d:Lcom/google/a/c/b;

    .line 73
    invoke-virtual {v1, v3}, Lcom/google/a/d/a/d;->a(Lcom/google/a/c/b;)Lcom/google/a/c/e;

    move-result-object v1

    .line 33043
    iget-object v2, v2, Lcom/google/a/c/g;->e:[Lcom/google/a/t;

    .line 76
    :goto_f
    new-instance v3, Lcom/google/a/r;

    .line 33090
    iget-object v4, v1, Lcom/google/a/c/e;->c:Ljava/lang/String;

    .line 34067
    iget-object v5, v1, Lcom/google/a/c/e;->a:[B

    .line 76
    sget-object v6, Lcom/google/a/a;->f:Lcom/google/a/a;

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    .line 34097
    iget-object v2, v1, Lcom/google/a/c/e;->d:Ljava/util/List;

    if-eqz v2, :cond_21

    .line 80
    sget-object v4, Lcom/google/a/s;->c:Lcom/google/a/s;

    invoke-virtual {v3, v4, v2}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    .line 34104
    :cond_21
    iget-object v1, v1, Lcom/google/a/c/e;->e:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 84
    sget-object v2, Lcom/google/a/s;->d:Lcom/google/a/s;

    invoke-virtual {v3, v2, v1}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    :cond_22
    return-object v3

    .line 2107
    :cond_23
    :goto_10
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

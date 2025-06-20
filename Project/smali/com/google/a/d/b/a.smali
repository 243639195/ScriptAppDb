.class public final Lcom/google/a/d/b/a;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/d/b/a$b;,
        Lcom/google/a/d/b/a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/a/c/b;

.field public final b:Lcom/google/a/c/a/c;


# direct methods
.method public constructor <init>(Lcom/google/a/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/a/d/b/a;->a:Lcom/google/a/c/b;

    .line 48
    new-instance v0, Lcom/google/a/c/a/c;

    invoke-direct {v0, p1}, Lcom/google/a/c/a/c;-><init>(Lcom/google/a/c/b;)V

    iput-object v0, p0, Lcom/google/a/d/b/a;->b:Lcom/google/a/c/a/c;

    return-void
.end method

.method public static a(Lcom/google/a/t;Lcom/google/a/t;)I
    .locals 0

    .line 310
    invoke-static {p0, p1}, Lcom/google/a/t;->a(Lcom/google/a/t;Lcom/google/a/t;)F

    move-result p0

    invoke-static {p0}, Lcom/google/a/c/a/a;->a(F)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/google/a/c/b;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;II)Lcom/google/a/c/b;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 329
    invoke-static {}, Lcom/google/a/c/i;->a()Lcom/google/a/c/i;

    move-result-object v4

    move/from16 v5, p5

    int-to-float v6, v5

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float v8, v6, v7

    move/from16 v6, p6

    int-to-float v9, v6

    sub-float v11, v9, v7

    .line 50050
    iget v12, v0, Lcom/google/a/t;->a:F

    .line 50051
    iget v13, v0, Lcom/google/a/t;->b:F

    .line 50052
    iget v14, v3, Lcom/google/a/t;->a:F

    .line 50053
    iget v15, v3, Lcom/google/a/t;->b:F

    .line 50054
    iget v10, v2, Lcom/google/a/t;->a:F

    .line 50055
    iget v9, v2, Lcom/google/a/t;->b:F

    .line 50056
    iget v7, v1, Lcom/google/a/t;->a:F

    .line 50057
    iget v3, v1, Lcom/google/a/t;->b:F

    const/high16 v16, 0x3f000000    # 0.5f

    const/high16 v17, 0x3f000000    # 0.5f

    const/high16 v18, 0x3f000000    # 0.5f

    const/high16 v19, 0x3f000000    # 0.5f

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v5

    move/from16 v20, v3

    move v3, v6

    move/from16 v4, v16

    move/from16 v5, v17

    move v6, v8

    move/from16 v21, v7

    move/from16 v7, v18

    move/from16 v17, v9

    move v9, v11

    move/from16 v16, v10

    move/from16 v10, v19

    move/from16 v18, v21

    move/from16 v19, v20

    .line 331
    invoke-virtual/range {v0 .. v19}, Lcom/google/a/c/i;->a(Lcom/google/a/c/b;IIFFFFFFFFFFFFFFFF)Lcom/google/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method private a()Lcom/google/a/c/g;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 59
    iget-object v1, v0, Lcom/google/a/d/b/a;->b:Lcom/google/a/c/a/c;

    invoke-virtual {v1}, Lcom/google/a/c/a/c;->a()[Lcom/google/a/t;

    move-result-object v1

    const/4 v2, 0x0

    .line 60
    aget-object v3, v1, v2

    const/4 v4, 0x1

    .line 61
    aget-object v5, v1, v4

    const/4 v6, 0x2

    .line 62
    aget-object v7, v1, v6

    const/4 v8, 0x3

    .line 63
    aget-object v1, v1, v8

    .line 68
    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    invoke-virtual {v0, v3, v5}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v0, v3, v7}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v0, v5, v1}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v0, v7, v1}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v11, Lcom/google/a/d/b/a$b;

    invoke-direct {v11, v2}, Lcom/google/a/d/b/a$b;-><init>(B)V

    invoke-static {v9, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/a/d/b/a$a;

    .line 78
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/a/d/b/a$a;

    .line 82
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1412
    iget-object v13, v11, Lcom/google/a/d/b/a$a;->a:Lcom/google/a/t;

    .line 83
    invoke-static {v12, v13}, Lcom/google/a/d/b/a;->a(Ljava/util/Map;Lcom/google/a/t;)V

    .line 1416
    iget-object v11, v11, Lcom/google/a/d/b/a$a;->b:Lcom/google/a/t;

    .line 84
    invoke-static {v12, v11}, Lcom/google/a/d/b/a;->a(Ljava/util/Map;Lcom/google/a/t;)V

    .line 2412
    iget-object v11, v9, Lcom/google/a/d/b/a$a;->a:Lcom/google/a/t;

    .line 85
    invoke-static {v12, v11}, Lcom/google/a/d/b/a;->a(Ljava/util/Map;Lcom/google/a/t;)V

    .line 2416
    iget-object v9, v9, Lcom/google/a/d/b/a$a;->b:Lcom/google/a/t;

    .line 86
    invoke-static {v12, v9}, Lcom/google/a/d/b/a;->a(Ljava/util/Map;Lcom/google/a/t;)V

    .line 91
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/a/t;

    .line 93
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 94
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v6, :cond_0

    move-object/from16 v14, v16

    goto :goto_0

    :cond_0
    if-nez v13, :cond_1

    move-object/from16 v13, v16

    goto :goto_0

    :cond_1
    move-object/from16 v15, v16

    goto :goto_0

    :cond_2
    if-eqz v13, :cond_16

    if-eqz v14, :cond_16

    if-nez v15, :cond_3

    goto/16 :goto_a

    .line 111
    :cond_3
    new-array v9, v8, [Lcom/google/a/t;

    aput-object v13, v9, v2

    aput-object v14, v9, v4

    aput-object v15, v9, v6

    .line 113
    invoke-static {v9}, Lcom/google/a/t;->a([Lcom/google/a/t;)V

    .line 116
    aget-object v11, v9, v2

    .line 117
    aget-object v13, v9, v4

    .line 118
    aget-object v9, v9, v6

    .line 122
    invoke-interface {v12, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    move-object v1, v3

    goto :goto_1

    .line 124
    :cond_4
    invoke-interface {v12, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object v1, v5

    goto :goto_1

    .line 126
    :cond_5
    invoke-interface {v12, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object v1, v7

    .line 141
    :cond_6
    :goto_1
    invoke-virtual {v0, v9, v1}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v3

    .line 2420
    iget v3, v3, Lcom/google/a/d/b/a$a;->c:I

    .line 142
    invoke-virtual {v0, v11, v1}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v5

    .line 3420
    iget v5, v5, Lcom/google/a/d/b/a$a;->c:I

    and-int/lit8 v7, v3, 0x1

    if-ne v7, v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    :cond_7
    add-int/2addr v3, v6

    and-int/lit8 v7, v5, 0x1

    if-ne v7, v4, :cond_8

    add-int/lit8 v5, v5, 0x1

    :cond_8
    add-int/2addr v5, v6

    mul-int/lit8 v7, v3, 0x4

    mul-int/lit8 v12, v5, 0x7

    if-ge v7, v12, :cond_f

    mul-int/lit8 v7, v5, 0x4

    mul-int/lit8 v12, v3, 0x7

    if-lt v7, v12, :cond_9

    goto/16 :goto_5

    .line 189
    :cond_9
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 18273
    invoke-static {v13, v11}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v3, v3

    div-float/2addr v5, v3

    .line 18274
    invoke-static {v9, v1}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v7

    .line 19038
    iget v12, v1, Lcom/google/a/t;->a:F

    .line 20038
    iget v14, v9, Lcom/google/a/t;->a:F

    sub-float/2addr v12, v14

    int-to-float v7, v7

    div-float/2addr v12, v7

    .line 20042
    iget v14, v1, Lcom/google/a/t;->b:F

    .line 21042
    iget v15, v9, Lcom/google/a/t;->b:F

    sub-float/2addr v14, v15

    div-float/2addr v14, v7

    .line 18278
    new-instance v7, Lcom/google/a/t;

    .line 22038
    iget v15, v1, Lcom/google/a/t;->a:F

    mul-float v12, v12, v5

    add-float/2addr v15, v12

    .line 22042
    iget v12, v1, Lcom/google/a/t;->b:F

    mul-float v5, v5, v14

    add-float/2addr v12, v5

    .line 18278
    invoke-direct {v7, v15, v12}, Lcom/google/a/t;-><init>(FF)V

    .line 18280
    invoke-static {v13, v9}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 18281
    invoke-static {v11, v1}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v3

    .line 23038
    iget v12, v1, Lcom/google/a/t;->a:F

    .line 24038
    iget v14, v11, Lcom/google/a/t;->a:F

    sub-float/2addr v12, v14

    int-to-float v3, v3

    div-float/2addr v12, v3

    .line 24042
    iget v14, v1, Lcom/google/a/t;->b:F

    .line 25042
    iget v15, v11, Lcom/google/a/t;->b:F

    sub-float/2addr v14, v15

    div-float/2addr v14, v3

    .line 18285
    new-instance v3, Lcom/google/a/t;

    .line 26038
    iget v15, v1, Lcom/google/a/t;->a:F

    mul-float v12, v12, v5

    add-float/2addr v15, v12

    .line 26042
    iget v12, v1, Lcom/google/a/t;->b:F

    mul-float v5, v5, v14

    add-float/2addr v12, v5

    .line 18285
    invoke-direct {v3, v15, v12}, Lcom/google/a/t;-><init>(FF)V

    .line 18287
    invoke-virtual {v0, v7}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 18288
    invoke-virtual {v0, v3}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result v5

    if-nez v5, :cond_c

    const/16 v17, 0x0

    goto :goto_3

    .line 18293
    :cond_a
    invoke-virtual {v0, v3}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_2

    .line 18297
    :cond_b
    invoke-virtual {v0, v9, v7}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v5

    .line 26420
    iget v5, v5, Lcom/google/a/d/b/a$a;->c:I

    .line 18298
    invoke-virtual {v0, v11, v7}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v12

    .line 27420
    iget v12, v12, Lcom/google/a/d/b/a$a;->c:I

    sub-int/2addr v5, v12

    .line 18297
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 18299
    invoke-virtual {v0, v9, v3}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v12

    .line 28420
    iget v12, v12, Lcom/google/a/d/b/a$a;->c:I

    .line 18300
    invoke-virtual {v0, v11, v3}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v14

    .line 29420
    iget v14, v14, Lcom/google/a/d/b/a$a;->c:I

    sub-int/2addr v12, v14

    .line 18299
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-gt v5, v12, :cond_c

    :goto_2
    move-object/from16 v17, v7

    goto :goto_3

    :cond_c
    move-object/from16 v17, v3

    :goto_3
    if-nez v17, :cond_d

    goto :goto_4

    :cond_d
    move-object/from16 v1, v17

    .line 197
    :goto_4
    invoke-virtual {v0, v9, v1}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v3

    .line 30420
    iget v3, v3, Lcom/google/a/d/b/a$a;->c:I

    .line 198
    invoke-virtual {v0, v11, v1}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v5

    .line 31420
    iget v5, v5, Lcom/google/a/d/b/a$a;->c:I

    .line 197
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v4

    and-int/lit8 v5, v3, 0x1

    if-ne v5, v4, :cond_e

    add-int/lit8 v3, v3, 0x1

    :cond_e
    move/from16 v24, v3

    .line 204
    iget-object v3, v0, Lcom/google/a/d/b/a;->a:Lcom/google/a/c/b;

    move-object/from16 v18, v3

    move-object/from16 v19, v9

    move-object/from16 v20, v13

    move-object/from16 v21, v11

    move-object/from16 v22, v1

    move/from16 v23, v24

    invoke-static/range {v18 .. v24}, Lcom/google/a/d/b/a;->a(Lcom/google/a/c/b;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;II)Lcom/google/a/c/b;

    move-result-object v3

    goto/16 :goto_9

    .line 4227
    :cond_f
    :goto_5
    invoke-static {v13, v11}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v7

    int-to-float v7, v7

    int-to-float v12, v3

    div-float/2addr v7, v12

    .line 4228
    invoke-static {v9, v1}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v12

    .line 5038
    iget v14, v1, Lcom/google/a/t;->a:F

    .line 6038
    iget v15, v9, Lcom/google/a/t;->a:F

    sub-float/2addr v14, v15

    int-to-float v12, v12

    div-float/2addr v14, v12

    .line 6042
    iget v15, v1, Lcom/google/a/t;->b:F

    .line 7042
    iget v8, v9, Lcom/google/a/t;->b:F

    sub-float/2addr v15, v8

    div-float/2addr v15, v12

    .line 4232
    new-instance v8, Lcom/google/a/t;

    .line 8038
    iget v12, v1, Lcom/google/a/t;->a:F

    mul-float v14, v14, v7

    add-float/2addr v12, v14

    .line 8042
    iget v14, v1, Lcom/google/a/t;->b:F

    mul-float v7, v7, v15

    add-float/2addr v14, v7

    .line 4232
    invoke-direct {v8, v12, v14}, Lcom/google/a/t;-><init>(FF)V

    .line 4234
    invoke-static {v13, v9}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v7

    int-to-float v7, v7

    int-to-float v12, v5

    div-float/2addr v7, v12

    .line 4235
    invoke-static {v11, v1}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v12

    .line 9038
    iget v14, v1, Lcom/google/a/t;->a:F

    .line 10038
    iget v15, v11, Lcom/google/a/t;->a:F

    sub-float/2addr v14, v15

    int-to-float v12, v12

    div-float/2addr v14, v12

    .line 10042
    iget v15, v1, Lcom/google/a/t;->b:F

    .line 11042
    iget v6, v11, Lcom/google/a/t;->b:F

    sub-float/2addr v15, v6

    div-float/2addr v15, v12

    .line 4239
    new-instance v6, Lcom/google/a/t;

    .line 12038
    iget v12, v1, Lcom/google/a/t;->a:F

    mul-float v14, v14, v7

    add-float/2addr v12, v14

    .line 12042
    iget v14, v1, Lcom/google/a/t;->b:F

    mul-float v7, v7, v15

    add-float/2addr v14, v7

    .line 4239
    invoke-direct {v6, v12, v14}, Lcom/google/a/t;-><init>(FF)V

    .line 4241
    invoke-virtual {v0, v8}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 4242
    invoke-virtual {v0, v6}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result v3

    if-nez v3, :cond_12

    const/16 v17, 0x0

    goto :goto_7

    .line 4247
    :cond_10
    invoke-virtual {v0, v6}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_6

    .line 4251
    :cond_11
    invoke-virtual {v0, v9, v8}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v7

    .line 12420
    iget v7, v7, Lcom/google/a/d/b/a$a;->c:I

    sub-int v7, v3, v7

    .line 4251
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 4252
    invoke-virtual {v0, v11, v8}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v12

    .line 13420
    iget v12, v12, Lcom/google/a/d/b/a$a;->c:I

    sub-int v12, v5, v12

    .line 4252
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v7, v12

    .line 4253
    invoke-virtual {v0, v9, v6}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v12

    .line 14420
    iget v12, v12, Lcom/google/a/d/b/a$a;->c:I

    sub-int/2addr v3, v12

    .line 4253
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4254
    invoke-virtual {v0, v11, v6}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v12

    .line 15420
    iget v12, v12, Lcom/google/a/d/b/a$a;->c:I

    sub-int/2addr v5, v12

    .line 4254
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v3, v5

    if-gt v7, v3, :cond_12

    :goto_6
    move-object/from16 v17, v8

    goto :goto_7

    :cond_12
    move-object/from16 v17, v6

    :goto_7
    if-nez v17, :cond_13

    goto :goto_8

    :cond_13
    move-object/from16 v1, v17

    .line 171
    :goto_8
    invoke-virtual {v0, v9, v1}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v3

    .line 16420
    iget v3, v3, Lcom/google/a/d/b/a$a;->c:I

    .line 172
    invoke-virtual {v0, v11, v1}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object v5

    .line 17420
    iget v5, v5, Lcom/google/a/d/b/a$a;->c:I

    and-int/lit8 v6, v3, 0x1

    if-ne v6, v4, :cond_14

    add-int/lit8 v3, v3, 0x1

    :cond_14
    move/from16 v23, v3

    and-int/lit8 v3, v5, 0x1

    if-ne v3, v4, :cond_15

    add-int/lit8 v5, v5, 0x1

    :cond_15
    move/from16 v24, v5

    .line 184
    iget-object v3, v0, Lcom/google/a/d/b/a;->a:Lcom/google/a/c/b;

    move-object/from16 v18, v3

    move-object/from16 v19, v9

    move-object/from16 v20, v13

    move-object/from16 v21, v11

    move-object/from16 v22, v1

    invoke-static/range {v18 .. v24}, Lcom/google/a/d/b/a;->a(Lcom/google/a/c/b;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;II)Lcom/google/a/c/b;

    move-result-object v3

    .line 213
    :goto_9
    new-instance v5, Lcom/google/a/c/g;

    new-array v6, v10, [Lcom/google/a/t;

    aput-object v9, v6, v2

    aput-object v13, v6, v4

    const/4 v2, 0x2

    aput-object v11, v6, v2

    const/4 v2, 0x3

    aput-object v1, v6, v2

    invoke-direct {v5, v3, v6}, Lcom/google/a/c/g;-><init>(Lcom/google/a/c/b;[Lcom/google/a/t;)V

    return-object v5

    .line 107
    :cond_16
    :goto_a
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1
.end method

.method private a(Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;I)Lcom/google/a/t;
    .locals 5

    .line 273
    invoke-static {p1, p2}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v0

    int-to-float v0, v0

    int-to-float p5, p5

    div-float/2addr v0, p5

    .line 274
    invoke-static {p3, p4}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v1

    .line 43038
    iget v2, p4, Lcom/google/a/t;->a:F

    .line 44038
    iget v3, p3, Lcom/google/a/t;->a:F

    sub-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 44042
    iget v3, p4, Lcom/google/a/t;->b:F

    .line 45042
    iget v4, p3, Lcom/google/a/t;->b:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    .line 278
    new-instance v1, Lcom/google/a/t;

    .line 46038
    iget v4, p4, Lcom/google/a/t;->a:F

    mul-float v2, v2, v0

    add-float/2addr v4, v2

    .line 46042
    iget v2, p4, Lcom/google/a/t;->b:F

    mul-float v0, v0, v3

    add-float/2addr v2, v0

    .line 278
    invoke-direct {v1, v4, v2}, Lcom/google/a/t;-><init>(FF)V

    .line 280
    invoke-static {p1, p3}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p5

    .line 281
    invoke-static {p2, p4}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result p5

    .line 47038
    iget v0, p4, Lcom/google/a/t;->a:F

    .line 48038
    iget v2, p2, Lcom/google/a/t;->a:F

    sub-float/2addr v0, v2

    int-to-float p5, p5

    div-float/2addr v0, p5

    .line 48042
    iget v2, p4, Lcom/google/a/t;->b:F

    .line 49042
    iget v3, p2, Lcom/google/a/t;->b:F

    sub-float/2addr v2, v3

    div-float/2addr v2, p5

    .line 285
    new-instance p5, Lcom/google/a/t;

    .line 50038
    iget v3, p4, Lcom/google/a/t;->a:F

    mul-float v0, v0, p1

    add-float/2addr v3, v0

    .line 50039
    iget p4, p4, Lcom/google/a/t;->b:F

    mul-float p1, p1, v2

    add-float/2addr p4, p1

    .line 285
    invoke-direct {p5, v3, p4}, Lcom/google/a/t;-><init>(FF)V

    .line 287
    invoke-virtual {p0, v1}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 288
    invoke-virtual {p0, p5}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p5

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 293
    :cond_1
    invoke-virtual {p0, p5}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v1

    .line 297
    :cond_2
    invoke-virtual {p0, p3, v1}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object p1

    .line 50040
    iget p1, p1, Lcom/google/a/d/b/a$a;->c:I

    .line 298
    invoke-virtual {p0, p2, v1}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object p4

    .line 50041
    iget p4, p4, Lcom/google/a/d/b/a$a;->c:I

    sub-int/2addr p1, p4

    .line 297
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 299
    invoke-virtual {p0, p3, p5}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object p3

    .line 50042
    iget p3, p3, Lcom/google/a/d/b/a$a;->c:I

    .line 300
    invoke-virtual {p0, p2, p5}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object p2

    .line 50043
    iget p2, p2, Lcom/google/a/d/b/a$a;->c:I

    sub-int/2addr p3, p2

    .line 299
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-gt p1, p2, :cond_3

    return-object v1

    :cond_3
    return-object p5
.end method

.method private a(Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;II)Lcom/google/a/t;
    .locals 5

    .line 227
    invoke-static {p1, p2}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p5

    div-float/2addr v0, v1

    .line 228
    invoke-static {p3, p4}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v1

    .line 32038
    iget v2, p4, Lcom/google/a/t;->a:F

    .line 33038
    iget v3, p3, Lcom/google/a/t;->a:F

    sub-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 33042
    iget v3, p4, Lcom/google/a/t;->b:F

    .line 34042
    iget v4, p3, Lcom/google/a/t;->b:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    .line 232
    new-instance v1, Lcom/google/a/t;

    .line 35038
    iget v4, p4, Lcom/google/a/t;->a:F

    mul-float v2, v2, v0

    add-float/2addr v4, v2

    .line 35042
    iget v2, p4, Lcom/google/a/t;->b:F

    mul-float v0, v0, v3

    add-float/2addr v2, v0

    .line 232
    invoke-direct {v1, v4, v2}, Lcom/google/a/t;-><init>(FF)V

    .line 234
    invoke-static {p1, p3}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, p6

    div-float/2addr p1, v0

    .line 235
    invoke-static {p2, p4}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v0

    .line 36038
    iget v2, p4, Lcom/google/a/t;->a:F

    .line 37038
    iget v3, p2, Lcom/google/a/t;->a:F

    sub-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 37042
    iget v3, p4, Lcom/google/a/t;->b:F

    .line 38042
    iget v4, p2, Lcom/google/a/t;->b:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v0

    .line 239
    new-instance v0, Lcom/google/a/t;

    .line 39038
    iget v4, p4, Lcom/google/a/t;->a:F

    mul-float v2, v2, p1

    add-float/2addr v4, v2

    .line 39042
    iget p4, p4, Lcom/google/a/t;->b:F

    mul-float p1, p1, v3

    add-float/2addr p4, p1

    .line 239
    invoke-direct {v0, v4, p4}, Lcom/google/a/t;-><init>(FF)V

    .line 241
    invoke-virtual {p0, v1}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 242
    invoke-virtual {p0, v0}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 247
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/a/d/b/a;->a(Lcom/google/a/t;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v1

    .line 251
    :cond_2
    invoke-virtual {p0, p3, v1}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object p1

    .line 39420
    iget p1, p1, Lcom/google/a/d/b/a$a;->c:I

    sub-int p1, p5, p1

    .line 251
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 252
    invoke-virtual {p0, p2, v1}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object p4

    .line 40420
    iget p4, p4, Lcom/google/a/d/b/a$a;->c:I

    sub-int p4, p6, p4

    .line 252
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    add-int/2addr p1, p4

    .line 253
    invoke-virtual {p0, p3, v0}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object p3

    .line 41420
    iget p3, p3, Lcom/google/a/d/b/a$a;->c:I

    sub-int/2addr p5, p3

    .line 253
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 254
    invoke-virtual {p0, p2, v0}, Lcom/google/a/d/b/a;->b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;

    move-result-object p2

    .line 42420
    iget p2, p2, Lcom/google/a/d/b/a$a;->c:I

    sub-int/2addr p6, p2

    .line 254
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p3, p2

    if-gt p1, p3, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static a(Ljava/util/Map;Lcom/google/a/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/a/t;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/a/t;",
            ")V"
        }
    .end annotation

    .line 317
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/t;)Z
    .locals 3

    .line 50044
    iget v0, p1, Lcom/google/a/t;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 50045
    iget v0, p1, Lcom/google/a/t;->a:F

    .line 306
    iget-object v2, p0, Lcom/google/a/d/b/a;->a:Lcom/google/a/c/b;

    .line 50046
    iget v2, v2, Lcom/google/a/c/b;->a:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 50047
    iget v0, p1, Lcom/google/a/t;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 50048
    iget p1, p1, Lcom/google/a/t;->b:F

    .line 306
    iget-object v0, p0, Lcom/google/a/d/b/a;->a:Lcom/google/a/c/b;

    .line 50049
    iget v0, v0, Lcom/google/a/c/b;->b:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/d/b/a$a;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 50058
    iget v3, v1, Lcom/google/a/t;->a:F

    float-to-int v3, v3

    .line 50059
    iget v4, v1, Lcom/google/a/t;->b:F

    float-to-int v4, v4

    .line 50060
    iget v5, v2, Lcom/google/a/t;->a:F

    float-to-int v5, v5

    .line 50061
    iget v6, v2, Lcom/google/a/t;->b:F

    float-to-int v6, v6

    sub-int v7, v6, v4

    .line 361
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v8, v5, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v10, 0x1

    if-le v7, v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    move/from16 v18, v6

    move v6, v5

    move/from16 v5, v18

    :cond_1
    sub-int v8, v5, v3

    .line 371
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int v11, v6, v4

    .line 372
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    neg-int v12, v8

    .line 373
    div-int/lit8 v12, v12, 0x2

    const/4 v13, -0x1

    if-ge v4, v6, :cond_2

    const/4 v14, 0x1

    goto :goto_1

    :cond_2
    const/4 v14, -0x1

    :goto_1
    if-ge v3, v5, :cond_3

    const/4 v13, 0x1

    .line 377
    :cond_3
    iget-object v10, v0, Lcom/google/a/d/b/a;->a:Lcom/google/a/c/b;

    if-eqz v7, :cond_4

    move v15, v4

    goto :goto_2

    :cond_4
    move v15, v3

    :goto_2
    if-eqz v7, :cond_5

    move v9, v3

    goto :goto_3

    :cond_5
    move v9, v4

    :goto_3
    invoke-virtual {v10, v15, v9}, Lcom/google/a/c/b;->a(II)Z

    move-result v9

    const/4 v10, 0x0

    :goto_4
    if-eq v3, v5, :cond_a

    .line 379
    iget-object v15, v0, Lcom/google/a/d/b/a;->a:Lcom/google/a/c/b;

    if-eqz v7, :cond_6

    move v0, v4

    goto :goto_5

    :cond_6
    move v0, v3

    :goto_5
    if-eqz v7, :cond_7

    move/from16 v16, v5

    move v5, v3

    goto :goto_6

    :cond_7
    move/from16 v16, v5

    move v5, v4

    :goto_6
    invoke-virtual {v15, v0, v5}, Lcom/google/a/c/b;->a(II)Z

    move-result v0

    if-eq v0, v9, :cond_8

    add-int/lit8 v10, v10, 0x1

    move v9, v0

    :cond_8
    add-int/2addr v12, v11

    if-lez v12, :cond_9

    if-eq v4, v6, :cond_a

    add-int/2addr v4, v14

    sub-int/2addr v12, v8

    :cond_9
    add-int/2addr v3, v13

    move/from16 v5, v16

    move-object/from16 v0, p0

    goto :goto_4

    .line 393
    :cond_a
    new-instance v0, Lcom/google/a/d/b/a$a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v10, v3}, Lcom/google/a/d/b/a$a;-><init>(Lcom/google/a/t;Lcom/google/a/t;IB)V

    return-object v0
.end method

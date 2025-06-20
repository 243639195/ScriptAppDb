.class public final Lcom/google/a/c/f;
.super Lcom/google/a/c/i;
.source "DefaultGridSampler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/a/c/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/c/b;IIFFFFFFFFFFFFFFFF)Lcom/google/a/c/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 39
    invoke-static/range {p4 .. p19}, Lcom/google/a/c/k;->a(FFFFFFFFFFFFFFFF)Lcom/google/a/c/k;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 43
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/a/c/f;->a(Lcom/google/a/c/b;IILcom/google/a/c/k;)Lcom/google/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/a/c/b;IILcom/google/a/c/k;)Lcom/google/a/c/b;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    if-lez v1, :cond_14

    if-gtz v2, :cond_0

    goto/16 :goto_10

    .line 54
    :cond_0
    new-instance v4, Lcom/google/a/c/b;

    invoke-direct {v4, v1, v2}, Lcom/google/a/c/b;-><init>(II)V

    mul-int/lit8 v1, v1, 0x2

    .line 55
    new-array v1, v1, [F

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_13

    .line 57
    array-length v7, v1

    int-to-float v8, v6

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v7, :cond_1

    .line 60
    div-int/lit8 v11, v10, 0x2

    int-to-float v11, v11

    add-float/2addr v11, v9

    aput v11, v1, v10

    add-int/lit8 v11, v10, 0x1

    .line 61
    aput v8, v1, v11

    add-int/lit8 v10, v10, 0x2

    goto :goto_1

    .line 1067
    :cond_1
    array-length v8, v1

    .line 1068
    iget v9, v3, Lcom/google/a/c/k;->a:F

    .line 1069
    iget v10, v3, Lcom/google/a/c/k;->b:F

    .line 1070
    iget v11, v3, Lcom/google/a/c/k;->c:F

    .line 1071
    iget v12, v3, Lcom/google/a/c/k;->d:F

    .line 1072
    iget v13, v3, Lcom/google/a/c/k;->e:F

    .line 1073
    iget v14, v3, Lcom/google/a/c/k;->f:F

    .line 1074
    iget v15, v3, Lcom/google/a/c/k;->g:F

    .line 1075
    iget v5, v3, Lcom/google/a/c/k;->h:F

    .line 1076
    iget v2, v3, Lcom/google/a/c/k;->i:F

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_2

    .line 1078
    aget v16, v1, v3

    add-int/lit8 v17, v3, 0x1

    .line 1079
    aget v18, v1, v17

    mul-float v19, v11, v16

    mul-float v20, v14, v18

    add-float v19, v19, v20

    add-float v19, v19, v2

    mul-float v20, v9, v16

    mul-float v21, v12, v18

    add-float v20, v20, v21

    add-float v20, v20, v15

    div-float v20, v20, v19

    .line 1081
    aput v20, v1, v3

    mul-float v16, v16, v10

    mul-float v18, v18, v13

    add-float v16, v16, v18

    add-float v16, v16, v5

    div-float v16, v16, v19

    .line 1082
    aput v16, v1, v17

    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 1399
    :cond_2
    iget v2, v0, Lcom/google/a/c/b;->a:I

    .line 1406
    iget v3, v0, Lcom/google/a/c/b;->b:I

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1125
    :goto_3
    array-length v10, v1

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-ge v8, v10, :cond_9

    if-eqz v9, :cond_9

    .line 1126
    aget v9, v1, v8

    float-to-int v9, v9

    add-int/lit8 v10, v8, 0x1

    .line 1127
    aget v13, v1, v10

    float-to-int v13, v13

    if-lt v9, v12, :cond_8

    if-gt v9, v2, :cond_8

    if-lt v13, v12, :cond_8

    if-le v13, v3, :cond_3

    goto :goto_8

    :cond_3
    if-ne v9, v12, :cond_4

    .line 1133
    aput v11, v1, v8

    :goto_4
    const/4 v9, 0x1

    goto :goto_5

    :cond_4
    if-ne v9, v2, :cond_5

    add-int/lit8 v9, v2, -0x1

    int-to-float v9, v9

    .line 1136
    aput v9, v1, v8

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_5
    if-ne v13, v12, :cond_6

    .line 1140
    aput v11, v1, v10

    :goto_6
    const/4 v9, 0x1

    goto :goto_7

    :cond_6
    if-ne v13, v3, :cond_7

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    .line 1143
    aput v9, v1, v10

    goto :goto_6

    :cond_7
    :goto_7
    add-int/lit8 v8, v8, 0x2

    goto :goto_3

    .line 1129
    :cond_8
    :goto_8
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0

    .line 1149
    :cond_9
    array-length v8, v1

    add-int/lit8 v8, v8, -0x2

    const/4 v9, 0x1

    :goto_9
    if-ltz v8, :cond_10

    if-eqz v9, :cond_10

    .line 1150
    aget v9, v1, v8

    float-to-int v9, v9

    add-int/lit8 v10, v8, 0x1

    .line 1151
    aget v13, v1, v10

    float-to-int v13, v13

    if-lt v9, v12, :cond_f

    if-gt v9, v2, :cond_f

    if-lt v13, v12, :cond_f

    if-le v13, v3, :cond_a

    goto :goto_e

    :cond_a
    if-ne v9, v12, :cond_b

    .line 1157
    aput v11, v1, v8

    :goto_a
    const/4 v9, 0x1

    goto :goto_b

    :cond_b
    if-ne v9, v2, :cond_c

    add-int/lit8 v9, v2, -0x1

    int-to-float v9, v9

    .line 1160
    aput v9, v1, v8

    goto :goto_a

    :cond_c
    const/4 v9, 0x0

    :goto_b
    if-ne v13, v12, :cond_d

    .line 1164
    aput v11, v1, v10

    :goto_c
    const/4 v9, 0x1

    goto :goto_d

    :cond_d
    if-ne v13, v3, :cond_e

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    .line 1167
    aput v9, v1, v10

    goto :goto_c

    :cond_e
    :goto_d
    add-int/lit8 v8, v8, -0x2

    goto :goto_9

    .line 1153
    :cond_f
    :goto_e
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_10
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v7, :cond_12

    .line 69
    :try_start_0
    aget v3, v1, v2

    float-to-int v3, v3

    add-int/lit8 v5, v2, 0x1

    aget v5, v1, v5

    float-to-int v5, v5

    invoke-virtual {v0, v3, v5}, Lcom/google/a/c/b;->a(II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 71
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {v4, v3, v6}, Lcom/google/a/c/b;->b(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_11
    add-int/lit8 v2, v2, 0x2

    goto :goto_f

    .line 82
    :catch_0
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_12
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, p3

    move-object/from16 v3, p4

    goto/16 :goto_0

    :cond_13
    return-object v4

    .line 52
    :cond_14
    :goto_10
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0
.end method

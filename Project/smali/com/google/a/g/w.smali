.class final Lcom/google/a/g/w;
.super Ljava/lang/Object;
.source "UPCEANExtension5Support.java"


# static fields
.field static final a:[I


# instance fields
.field final b:[I

.field final c:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 34
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/a/g/w;->a:[I

    return-void

    :array_0
    .array-data 4
        0x18
        0x14
        0x12
        0x11
        0xc
        0x6
        0x3
        0xa
        0x9
        0x5
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 38
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/a/g/w;->b:[I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/w;->c:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 120
    sget-object v1, Lcom/google/a/g/w;->a:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0
.end method

.method private a(Lcom/google/a/c/a;[ILjava/lang/StringBuilder;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/a/g/w;->b:[I

    const/4 v1, 0x0

    .line 66
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 67
    aput v1, v0, v2

    const/4 v3, 0x2

    .line 68
    aput v1, v0, v3

    const/4 v3, 0x3

    .line 69
    aput v1, v0, v3

    .line 4048
    iget v4, p1, Lcom/google/a/c/a;->b:I

    .line 71
    aget p2, p2, v2

    move v5, p2

    const/4 p2, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x5

    const/16 v8, 0xa

    if-ge p2, v7, :cond_3

    if-ge v5, v4, :cond_3

    .line 76
    sget-object v7, Lcom/google/a/g/y;->f:[[I

    invoke-static {p1, v0, v5, v7}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;[II[[I)I

    move-result v7

    .line 77
    rem-int/lit8 v9, v7, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    array-length v9, v0

    move v10, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v9, :cond_0

    aget v11, v0, v5

    add-int/2addr v10, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x4

    if-lt v7, v8, :cond_1

    rsub-int/lit8 v7, p2, 0x4

    shl-int v7, v2, v7

    or-int/2addr v6, v7

    :cond_1
    if-eq p2, v5, :cond_2

    .line 86
    invoke-virtual {p1, v10}, Lcom/google/a/c/a;->c(I)I

    move-result v5

    .line 87
    invoke-virtual {p1, v5}, Lcom/google/a/c/a;->d(I)I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v10

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eq p1, v7, :cond_4

    .line 92
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-ge p1, v8, :cond_9

    .line 4120
    sget-object p2, Lcom/google/a/g/w;->a:[I

    aget p2, p2, p1

    if-ne v6, p2, :cond_8

    .line 96
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5104
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    add-int/lit8 v0, p3, -0x2

    :goto_4
    if-ltz v0, :cond_5

    .line 5107
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, -0x2

    goto :goto_4

    :cond_5
    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr p3, v2

    :goto_5
    if-ltz p3, :cond_6

    .line 5111
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v1, v0

    add-int/lit8 p3, p3, -0x2

    goto :goto_5

    :cond_6
    mul-int/lit8 v1, v1, 0x3

    .line 5114
    rem-int/2addr v1, v8

    if-eq v1, p1, :cond_7

    .line 97
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_7
    return v5

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 4124
    :cond_9
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method private static a(Ljava/lang/CharSequence;)I
    .locals 4

    .line 104
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_0

    .line 107
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 111
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_1
    mul-int/lit8 v2, v2, 0x3

    .line 114
    rem-int/lit8 v2, v2, 0xa

    return v2
.end method

.method private a(ILcom/google/a/c/a;[I)Lcom/google/a/r;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 43
    iget-object v3, v0, Lcom/google/a/g/w;->c:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1065
    iget-object v5, v0, Lcom/google/a/g/w;->b:[I

    .line 1066
    aput v4, v5, v4

    const/4 v6, 0x1

    .line 1067
    aput v4, v5, v6

    const/4 v7, 0x2

    .line 1068
    aput v4, v5, v7

    const/4 v8, 0x3

    .line 1069
    aput v4, v5, v8

    .line 2048
    iget v9, v1, Lcom/google/a/c/a;->b:I

    .line 1071
    aget v10, p3, v6

    move v11, v10

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x5

    const/16 v14, 0x30

    const/16 v15, 0xa

    if-ge v10, v13, :cond_3

    if-ge v11, v9, :cond_3

    .line 1076
    sget-object v13, Lcom/google/a/g/y;->f:[[I

    invoke-static {v1, v5, v11, v13}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;[II[[I)I

    move-result v13

    .line 1077
    rem-int/lit8 v16, v13, 0xa

    add-int/lit8 v14, v16, 0x30

    int-to-char v14, v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1078
    array-length v14, v5

    move v7, v11

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v14, :cond_0

    aget v16, v5, v11

    add-int v7, v7, v16

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x4

    if-lt v13, v15, :cond_1

    rsub-int/lit8 v13, v10, 0x4

    shl-int v13, v6, v13

    or-int/2addr v12, v13

    :cond_1
    if-eq v10, v11, :cond_2

    .line 1086
    invoke-virtual {v1, v7}, Lcom/google/a/c/a;->c(I)I

    move-result v7

    .line 1087
    invoke-virtual {v1, v7}, Lcom/google/a/c/a;->d(I)I

    move-result v7

    :cond_2
    move v11, v7

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x2

    goto :goto_0

    .line 1091
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq v1, v13, :cond_4

    .line 1092
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v15, :cond_12

    .line 2120
    sget-object v5, Lcom/google/a/g/w;->a:[I

    aget v5, v5, v1

    if-ne v12, v5, :cond_11

    .line 1096
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3104
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v9, v7, -0x2

    const/4 v10, 0x0

    :goto_3
    if-ltz v9, :cond_5

    .line 3107
    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    sub-int/2addr v12, v14

    add-int/2addr v10, v12

    add-int/lit8 v9, v9, -0x2

    goto :goto_3

    :cond_5
    mul-int/lit8 v10, v10, 0x3

    sub-int/2addr v7, v6

    :goto_4
    if-ltz v7, :cond_6

    .line 3111
    invoke-interface {v5, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v14

    add-int/2addr v10, v9

    add-int/lit8 v7, v7, -0x2

    goto :goto_4

    :cond_6
    mul-int/lit8 v10, v10, 0x3

    .line 3114
    rem-int/2addr v10, v15

    if-eq v10, v1, :cond_7

    .line 1097
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    .line 47
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3133
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    if-eq v3, v13, :cond_8

    :goto_5
    move-object v7, v5

    goto/16 :goto_a

    .line 3147
    :cond_8
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v14, :cond_d

    const/16 v7, 0x35

    if-eq v3, v7, :cond_c

    const/16 v7, 0x39

    if-eq v3, v7, :cond_9

    const-string v3, ""

    goto :goto_7

    :cond_9
    const/4 v3, -0x1

    .line 3156
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x339c7b9

    if-eq v7, v8, :cond_a

    packed-switch v7, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const-string v7, "99991"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v3, 0x1

    goto :goto_6

    :pswitch_1
    const-string v7, "99990"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v3, 0x2

    goto :goto_6

    :cond_a
    const-string v7, "90000"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v3, 0x0

    :cond_b
    :goto_6
    packed-switch v3, :pswitch_data_1

    const-string v3, ""

    goto :goto_7

    :pswitch_2
    const-string v3, "Used"

    goto :goto_9

    :pswitch_3
    const-string v3, "0.00"

    goto :goto_9

    :pswitch_4
    move-object v3, v5

    goto :goto_9

    :cond_c
    const-string v3, "$"

    goto :goto_7

    :cond_d
    const-string v3, "\u00a3"

    .line 3173
    :goto_7
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3174
    div-int/lit8 v8, v7, 0x64

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 3175
    rem-int/lit8 v7, v7, 0x64

    if-ge v7, v15, :cond_e

    const-string v9, "0"

    .line 3176
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_e
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 3177
    :goto_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_9
    if-nez v3, :cond_f

    goto/16 :goto_5

    .line 3140
    :cond_f
    new-instance v7, Ljava/util/EnumMap;

    const-class v8, Lcom/google/a/s;

    invoke-direct {v7, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 3141
    sget-object v8, Lcom/google/a/s;->f:Lcom/google/a/s;

    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :goto_a
    new-instance v3, Lcom/google/a/r;

    const/4 v9, 0x2

    new-array v8, v9, [Lcom/google/a/t;

    new-instance v9, Lcom/google/a/t;

    aget v10, p3, v4

    aget v2, p3, v6

    add-int/2addr v10, v2

    int-to-float v2, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v2, v10

    move/from16 v10, p1

    int-to-float v10, v10

    invoke-direct {v9, v2, v10}, Lcom/google/a/t;-><init>(FF)V

    aput-object v9, v8, v4

    new-instance v2, Lcom/google/a/t;

    int-to-float v4, v11

    invoke-direct {v2, v4, v10}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v8, v6

    sget-object v2, Lcom/google/a/a;->q:Lcom/google/a/a;

    invoke-direct {v3, v1, v5, v8, v2}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    if-eqz v7, :cond_10

    .line 59
    invoke-virtual {v3, v7}, Lcom/google/a/r;->a(Ljava/util/Map;)V

    :cond_10
    return-object v3

    :cond_11
    move/from16 v10, p1

    const/4 v9, 0x2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 2124
    :cond_12
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :pswitch_data_0
    .packed-switch 0x33e01f0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/google/a/s;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 5147
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    const/16 v3, 0x35

    if-eq v2, v3, :cond_4

    const/16 v3, 0x39

    if-eq v2, v3, :cond_1

    const-string v0, ""

    goto :goto_2

    :cond_1
    const/4 v2, -0x1

    .line 5156
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v5, 0x339c7b9

    if-eq v3, v5, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "99991"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    const-string v0, "99990"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v3, "90000"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    const-string v0, ""

    goto :goto_2

    :pswitch_2
    const-string p0, "Used"

    goto :goto_4

    :pswitch_3
    const-string p0, "0.00"

    goto :goto_4

    :pswitch_4
    move-object p0, v1

    goto :goto_4

    :cond_4
    const-string v0, "$"

    goto :goto_2

    :cond_5
    const-string v0, "\u00a3"

    .line 5173
    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 5174
    div-int/lit8 v2, p0, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 5175
    rem-int/lit8 p0, p0, 0x64

    const/16 v3, 0xa

    if-ge p0, v3, :cond_6

    const-string v3, "0"

    .line 5176
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 5177
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4
    if-nez p0, :cond_7

    return-object v1

    .line 140
    :cond_7
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/a/s;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 141
    sget-object v1, Lcom/google/a/s;->f:Lcom/google/a/s;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x33e01f0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    const/16 v2, 0x35

    if-eq v1, v2, :cond_3

    const/16 v2, 0x39

    if-eq v1, v2, :cond_0

    const-string v0, ""

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x339c7b9

    if-eq v2, v4, :cond_1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "99991"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    const-string v0, "99990"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v2, "90000"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    const-string v0, ""

    goto :goto_2

    :pswitch_2
    const-string p0, "Used"

    return-object p0

    :pswitch_3
    const-string p0, "0.00"

    return-object p0

    :pswitch_4
    const/4 p0, 0x0

    return-object p0

    :cond_3
    const-string v0, "$"

    goto :goto_2

    :cond_4
    const-string v0, "\u00a3"

    .line 173
    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 174
    div-int/lit8 v1, p0, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    rem-int/lit8 p0, p0, 0x64

    const/16 v2, 0xa

    if-ge p0, v2, :cond_5

    const-string v2, "0"

    .line 176
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 177
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x33e01f0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

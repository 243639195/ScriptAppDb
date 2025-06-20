.class final Lcom/google/a/g/v;
.super Ljava/lang/Object;
.source "UPCEANExtension2Support.java"


# instance fields
.field private final a:[I

.field private final b:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 34
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/a/g/v;->a:[I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/v;->b:Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Lcom/google/a/c/a;[ILjava/lang/StringBuilder;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/google/a/g/v;->a:[I

    const/4 v1, 0x0

    .line 62
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 63
    aput v1, v0, v2

    const/4 v3, 0x2

    .line 64
    aput v1, v0, v3

    const/4 v4, 0x3

    .line 65
    aput v1, v0, v4

    .line 3048
    iget v4, p1, Lcom/google/a/c/a;->b:I

    .line 67
    aget p2, p2, v2

    move v5, p2

    const/4 p2, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge p2, v3, :cond_3

    if-ge v5, v4, :cond_3

    .line 72
    sget-object v7, Lcom/google/a/g/y;->f:[[I

    invoke-static {p1, v0, v5, v7}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;[II[[I)I

    move-result v7

    .line 73
    rem-int/lit8 v8, v7, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    array-length v8, v0

    move v9, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_0

    aget v10, v0, v5

    add-int/2addr v9, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    const/16 v5, 0xa

    if-lt v7, v5, :cond_1

    rsub-int/lit8 v5, p2, 0x1

    shl-int v5, v2, v5

    or-int/2addr v5, v6

    move v6, v5

    :cond_1
    if-eq p2, v2, :cond_2

    .line 82
    invoke-virtual {p1, v9}, Lcom/google/a/c/a;->c(I)I

    move-result v5

    .line 83
    invoke-virtual {p1, v5}, Lcom/google/a/c/a;->d(I)I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v9

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eq p1, v3, :cond_4

    .line 88
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1

    .line 91
    :cond_4
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x4

    if-eq p1, v6, :cond_5

    .line 92
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_5
    return v5
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
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

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_0
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/a/s;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 108
    sget-object v1, Lcom/google/a/s;->e:Lcom/google/a/s;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final a(ILcom/google/a/c/a;[I)Lcom/google/a/r;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 39
    iget-object v3, v0, Lcom/google/a/g/v;->b:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1061
    iget-object v5, v0, Lcom/google/a/g/v;->a:[I

    .line 1062
    aput v4, v5, v4

    const/4 v6, 0x1

    .line 1063
    aput v4, v5, v6

    const/4 v7, 0x2

    .line 1064
    aput v4, v5, v7

    const/4 v8, 0x3

    .line 1065
    aput v4, v5, v8

    .line 2048
    iget v8, v1, Lcom/google/a/c/a;->b:I

    .line 1067
    aget v9, p3, v6

    move v10, v9

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v9, v7, :cond_3

    if-ge v10, v8, :cond_3

    .line 1072
    sget-object v12, Lcom/google/a/g/y;->f:[[I

    invoke-static {v1, v5, v10, v12}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;[II[[I)I

    move-result v12

    .line 1073
    rem-int/lit8 v13, v12, 0xa

    add-int/lit8 v13, v13, 0x30

    int-to-char v13, v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1074
    array-length v13, v5

    move v14, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v13, :cond_0

    aget v15, v5, v10

    add-int/2addr v14, v15

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    const/16 v10, 0xa

    if-lt v12, v10, :cond_1

    rsub-int/lit8 v10, v9, 0x1

    shl-int v10, v6, v10

    or-int/2addr v10, v11

    move v11, v10

    :cond_1
    if-eq v9, v6, :cond_2

    .line 1082
    invoke-virtual {v1, v14}, Lcom/google/a/c/a;->c(I)I

    move-result v10

    .line 1083
    invoke-virtual {v1, v10}, Lcom/google/a/c/a;->d(I)I

    move-result v10

    goto :goto_2

    :cond_2
    move v10, v14

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1087
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq v1, v7, :cond_4

    .line 1088
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    .line 1091
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-eq v1, v11, :cond_5

    .line 1092
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    .line 43
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2104
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    if-eq v3, v7, :cond_6

    move-object v3, v5

    goto :goto_3

    .line 2107
    :cond_6
    new-instance v3, Ljava/util/EnumMap;

    const-class v8, Lcom/google/a/s;

    invoke-direct {v3, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2108
    sget-object v8, Lcom/google/a/s;->e:Lcom/google/a/s;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_3
    new-instance v8, Lcom/google/a/r;

    new-array v7, v7, [Lcom/google/a/t;

    new-instance v9, Lcom/google/a/t;

    aget v11, p3, v4

    aget v2, p3, v6

    add-int/2addr v11, v2

    int-to-float v2, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v2, v11

    move/from16 v11, p1

    int-to-float v11, v11

    invoke-direct {v9, v2, v11}, Lcom/google/a/t;-><init>(FF)V

    aput-object v9, v7, v4

    new-instance v2, Lcom/google/a/t;

    int-to-float v4, v10

    invoke-direct {v2, v4, v11}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v7, v6

    sget-object v2, Lcom/google/a/a;->q:Lcom/google/a/a;

    invoke-direct {v8, v1, v5, v7, v2}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    if-eqz v3, :cond_7

    .line 55
    invoke-virtual {v8, v3}, Lcom/google/a/r;->a(Ljava/util/Map;)V

    :cond_7
    return-object v8
.end method

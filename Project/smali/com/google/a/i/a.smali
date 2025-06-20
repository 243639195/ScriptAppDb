.class public Lcom/google/a/i/a;
.super Ljava/lang/Object;
.source "QRCodeReader.java"

# interfaces
.implements Lcom/google/a/p;


# static fields
.field private static final b:[Lcom/google/a/t;


# instance fields
.field protected final a:Lcom/google/a/i/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    new-array v0, v0, [Lcom/google/a/t;

    sput-object v0, Lcom/google/a/i/a;->b:[Lcom/google/a/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/google/a/i/a/e;

    invoke-direct {v0}, Lcom/google/a/i/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/a/i/a;->a:Lcom/google/a/i/a/e;

    return-void
.end method

.method private static a([ILcom/google/a/c/b;)F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 10406
    iget v0, p1, Lcom/google/a/c/b;->b:I

    .line 11399
    iget v1, p1, Lcom/google/a/c/b;->a:I

    const/4 v2, 0x0

    .line 202
    aget v3, p0, v2

    const/4 v4, 0x1

    .line 203
    aget v5, p0, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-ge v5, v0, :cond_1

    .line 207
    invoke-virtual {p1, v3, v5}, Lcom/google/a/c/b;->a(II)Z

    move-result v7

    if-eq v4, v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    xor-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eq v3, v1, :cond_3

    if-ne v5, v0, :cond_2

    goto :goto_1

    .line 219
    :cond_2
    aget p0, p0, v2

    sub-int/2addr v3, p0

    int-to-float p0, v3

    const/high16 p1, 0x40e00000    # 7.0f

    div-float/2addr p0, p1

    return p0

    .line 217
    :cond_3
    :goto_1
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/google/a/c/b;)Lcom/google/a/c/b;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/google/a/c/b;->b()[I

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/google/a/c/b;->c()[I

    move-result-object v1

    if-eqz v0, :cond_12

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 8406
    :cond_0
    iget v2, p0, Lcom/google/a/c/b;->b:I

    .line 9399
    iget v3, p0, Lcom/google/a/c/b;->a:I

    const/4 v4, 0x0

    .line 8202
    aget v5, v0, v4

    const/4 v6, 0x1

    .line 8203
    aget v7, v0, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    if-ge v7, v2, :cond_2

    .line 8207
    invoke-virtual {p0, v5, v7}, Lcom/google/a/c/b;->a(II)Z

    move-result v10

    if-eq v8, v10, :cond_1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x5

    if-eq v9, v10, :cond_2

    xor-int/lit8 v8, v8, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-eq v5, v3, :cond_11

    if-ne v7, v2, :cond_3

    goto/16 :goto_5

    .line 8219
    :cond_3
    aget v2, v0, v4

    sub-int/2addr v5, v2

    int-to-float v2, v5

    const/high16 v3, 0x40e00000    # 7.0f

    div-float/2addr v2, v3

    .line 128
    aget v3, v0, v6

    .line 129
    aget v5, v1, v6

    .line 130
    aget v0, v0, v4

    .line 131
    aget v1, v1, v4

    if-ge v0, v1, :cond_10

    if-lt v3, v5, :cond_4

    goto/16 :goto_4

    :cond_4
    sub-int v7, v5, v3

    sub-int v8, v1, v0

    if-eq v7, v8, :cond_5

    add-int v1, v0, v7

    .line 10399
    iget v8, p0, Lcom/google/a/c/b;->a:I

    if-lt v1, v8, :cond_5

    .line 144
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_5
    sub-int v8, v1, v0

    add-int/2addr v8, v6

    int-to-float v8, v8

    div-float/2addr v8, v2

    .line 148
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v6

    int-to-float v6, v7

    div-float/2addr v6, v2

    .line 149
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-lez v8, :cond_f

    if-gtz v6, :cond_6

    goto :goto_3

    :cond_6
    if-eq v6, v8, :cond_7

    .line 155
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_7
    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v2, v7

    float-to-int v7, v7

    add-int/2addr v3, v7

    add-int/2addr v0, v7

    add-int/lit8 v9, v8, -0x1

    int-to-float v9, v9

    mul-float v9, v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v0

    sub-int/2addr v9, v1

    if-lez v9, :cond_9

    if-le v9, v7, :cond_8

    .line 172
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_8
    sub-int/2addr v0, v9

    :cond_9
    add-int/lit8 v1, v6, -0x1

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v3

    sub-int/2addr v1, v5

    if-lez v1, :cond_b

    if-le v1, v7, :cond_a

    .line 181
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_a
    sub-int/2addr v3, v1

    .line 187
    :cond_b
    new-instance v1, Lcom/google/a/c/b;

    invoke-direct {v1, v8, v6}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_e

    int-to-float v7, v5

    mul-float v7, v7, v2

    float-to-int v7, v7

    add-int/2addr v7, v3

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_d

    int-to-float v10, v9

    mul-float v10, v10, v2

    float-to-int v10, v10

    add-int/2addr v10, v0

    .line 191
    invoke-virtual {p0, v10, v7}, Lcom/google/a/c/b;->a(II)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 192
    invoke-virtual {v1, v9, v5}, Lcom/google/a/c/b;->b(II)V

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_e
    return-object v1

    .line 151
    :cond_f
    :goto_3
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0

    .line 135
    :cond_10
    :goto_4
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0

    .line 8217
    :cond_11
    :goto_5
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0

    .line 123
    :cond_12
    :goto_6
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0
.end method

.method private b()Lcom/google/a/i/a/e;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/a/i/a;->a:Lcom/google/a/i/a/e;

    return-object v0
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

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/google/a/i/a;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .locals 12
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

    if-eqz p2, :cond_13

    .line 72
    sget-object v0, Lcom/google/a/e;->b:Lcom/google/a/e;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 73
    invoke-virtual {p1}, Lcom/google/a/c;->c()Lcom/google/a/c/b;

    move-result-object p1

    .line 1120
    invoke-virtual {p1}, Lcom/google/a/c/b;->b()[I

    move-result-object v0

    .line 1121
    invoke-virtual {p1}, Lcom/google/a/c/b;->c()[I

    move-result-object v1

    if-eqz v0, :cond_12

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 1406
    :cond_0
    iget v2, p1, Lcom/google/a/c/b;->b:I

    .line 2399
    iget v3, p1, Lcom/google/a/c/b;->a:I

    const/4 v4, 0x0

    .line 1202
    aget v5, v0, v4

    const/4 v6, 0x1

    .line 1203
    aget v7, v0, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    if-ge v7, v2, :cond_2

    .line 1207
    invoke-virtual {p1, v5, v7}, Lcom/google/a/c/b;->a(II)Z

    move-result v10

    if-eq v8, v10, :cond_1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x5

    if-eq v9, v10, :cond_2

    xor-int/lit8 v8, v8, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-eq v5, v3, :cond_11

    if-ne v7, v2, :cond_3

    goto/16 :goto_5

    .line 1219
    :cond_3
    aget v2, v0, v4

    sub-int/2addr v5, v2

    int-to-float v2, v5

    const/high16 v3, 0x40e00000    # 7.0f

    div-float/2addr v2, v3

    .line 1128
    aget v3, v0, v6

    .line 1129
    aget v5, v1, v6

    .line 1130
    aget v0, v0, v4

    .line 1131
    aget v1, v1, v4

    if-ge v0, v1, :cond_10

    if-lt v3, v5, :cond_4

    goto/16 :goto_4

    :cond_4
    sub-int v7, v5, v3

    sub-int v8, v1, v0

    if-eq v7, v8, :cond_5

    add-int v1, v0, v7

    .line 3399
    iget v8, p1, Lcom/google/a/c/b;->a:I

    if-lt v1, v8, :cond_5

    .line 1144
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_5
    sub-int v8, v1, v0

    add-int/2addr v8, v6

    int-to-float v8, v8

    div-float/2addr v8, v2

    .line 1148
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v6

    int-to-float v6, v7

    div-float/2addr v6, v2

    .line 1149
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-lez v8, :cond_f

    if-gtz v6, :cond_6

    goto :goto_3

    :cond_6
    if-eq v6, v8, :cond_7

    .line 1155
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_7
    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v2, v7

    float-to-int v7, v7

    add-int/2addr v3, v7

    add-int/2addr v0, v7

    add-int/lit8 v9, v8, -0x1

    int-to-float v9, v9

    mul-float v9, v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v0

    sub-int/2addr v9, v1

    if-lez v9, :cond_9

    if-le v9, v7, :cond_8

    .line 1172
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_8
    sub-int/2addr v0, v9

    :cond_9
    add-int/lit8 v1, v6, -0x1

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v3

    sub-int/2addr v1, v5

    if-lez v1, :cond_b

    if-le v1, v7, :cond_a

    .line 1181
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_a
    sub-int/2addr v3, v1

    .line 1187
    :cond_b
    new-instance v1, Lcom/google/a/c/b;

    invoke-direct {v1, v8, v6}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_e

    int-to-float v7, v5

    mul-float v7, v7, v2

    float-to-int v7, v7

    add-int/2addr v7, v3

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_d

    int-to-float v10, v9

    mul-float v10, v10, v2

    float-to-int v10, v10

    add-int/2addr v10, v0

    .line 1191
    invoke-virtual {p1, v10, v7}, Lcom/google/a/c/b;->a(II)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1192
    invoke-virtual {v1, v9, v5}, Lcom/google/a/c/b;->b(II)V

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 74
    :cond_e
    iget-object p1, p0, Lcom/google/a/i/a;->a:Lcom/google/a/i/a/e;

    invoke-virtual {p1, v1, p2}, Lcom/google/a/i/a/e;->a(Lcom/google/a/c/b;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object p1

    .line 75
    sget-object p2, Lcom/google/a/i/a;->b:[Lcom/google/a/t;

    goto :goto_7

    .line 1151
    :cond_f
    :goto_3
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1

    .line 1135
    :cond_10
    :goto_4
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1

    .line 1217
    :cond_11
    :goto_5
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1

    .line 1123
    :cond_12
    :goto_6
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1

    .line 77
    :cond_13
    new-instance v0, Lcom/google/a/i/b/c;

    invoke-virtual {p1}, Lcom/google/a/c;->c()Lcom/google/a/c/b;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/a/i/b/c;-><init>(Lcom/google/a/c/b;)V

    invoke-virtual {v0, p2}, Lcom/google/a/i/b/c;->a(Ljava/util/Map;)Lcom/google/a/c/g;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/google/a/i/a;->a:Lcom/google/a/i/a/e;

    .line 4039
    iget-object v1, p1, Lcom/google/a/c/g;->d:Lcom/google/a/c/b;

    .line 78
    invoke-virtual {v0, v1, p2}, Lcom/google/a/i/a/e;->a(Lcom/google/a/c/b;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object p2

    .line 4043
    iget-object p1, p1, Lcom/google/a/c/g;->e:[Lcom/google/a/t;

    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    .line 4133
    :goto_7
    iget-object v0, p1, Lcom/google/a/c/e;->h:Ljava/lang/Object;

    .line 83
    instance-of v0, v0, Lcom/google/a/i/a/i;

    if-eqz v0, :cond_14

    .line 5133
    iget-object v0, p1, Lcom/google/a/c/e;->h:Ljava/lang/Object;

    .line 84
    check-cast v0, Lcom/google/a/i/a/i;

    invoke-virtual {v0, p2}, Lcom/google/a/i/a/i;->a([Lcom/google/a/t;)V

    .line 87
    :cond_14
    new-instance v0, Lcom/google/a/r;

    .line 6090
    iget-object v1, p1, Lcom/google/a/c/e;->c:Ljava/lang/String;

    .line 7067
    iget-object v2, p1, Lcom/google/a/c/e;->a:[B

    .line 87
    sget-object v3, Lcom/google/a/a;->l:Lcom/google/a/a;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    .line 7097
    iget-object p2, p1, Lcom/google/a/c/e;->d:Ljava/util/List;

    if-eqz p2, :cond_15

    .line 90
    sget-object v1, Lcom/google/a/s;->c:Lcom/google/a/s;

    invoke-virtual {v0, v1, p2}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    .line 7104
    :cond_15
    iget-object p2, p1, Lcom/google/a/c/e;->e:Ljava/lang/String;

    if-eqz p2, :cond_16

    .line 94
    sget-object v1, Lcom/google/a/s;->d:Lcom/google/a/s;

    invoke-virtual {v0, v1, p2}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    .line 96
    :cond_16
    invoke-virtual {p1}, Lcom/google/a/c/e;->a()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 97
    sget-object p2, Lcom/google/a/s;->j:Lcom/google/a/s;

    .line 7149
    iget v1, p1, Lcom/google/a/c/e;->j:I

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 97
    invoke-virtual {v0, p2, v1}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    .line 99
    sget-object p2, Lcom/google/a/s;->k:Lcom/google/a/s;

    .line 8145
    iget p1, p1, Lcom/google/a/c/e;->i:I

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 99
    invoke-virtual {v0, p2, p1}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    :cond_17
    return-object v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

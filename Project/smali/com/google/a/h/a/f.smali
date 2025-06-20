.class final Lcom/google/a/h/a/f;
.super Ljava/lang/Object;
.source "DetectionResult.java"


# static fields
.field private static final e:I = 0x2


# instance fields
.field final a:Lcom/google/a/h/a/a;

.field final b:[Lcom/google/a/h/a/g;

.field c:Lcom/google/a/h/a/c;

.field final d:I


# direct methods
.method constructor <init>(Lcom/google/a/h/a/a;Lcom/google/a/h/a/c;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    .line 1039
    iget p1, p1, Lcom/google/a/h/a/a;->a:I

    .line 37
    iput p1, p0, Lcom/google/a/h/a/f;->d:I

    .line 38
    iput-object p2, p0, Lcom/google/a/h/a/f;->c:Lcom/google/a/h/a/c;

    .line 39
    iget p1, p0, Lcom/google/a/h/a/f;->d:I

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lcom/google/a/h/a/g;

    iput-object p1, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    return-void
.end method

.method static a(IILcom/google/a/h/a/d;)I
    .locals 1

    if-nez p2, :cond_0

    return p1

    .line 175
    :cond_0
    invoke-virtual {p2}, Lcom/google/a/h/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    invoke-virtual {p2, p0}, Lcom/google/a/h/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50089
    iput p0, p2, Lcom/google/a/h/a/d;->e:I

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :cond_2
    :goto_0
    return p1
.end method

.method private a(I)Lcom/google/a/h/a/g;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private a(II[Lcom/google/a/h/a/d;)V
    .locals 10

    .line 187
    aget-object v0, p3, p2

    .line 188
    iget-object v1, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    .line 50091
    iget-object v1, v1, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 190
    iget-object v2, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    const/4 v3, 0x1

    add-int/2addr p1, v3

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object p1, v2, p1

    .line 50092
    iget-object p1, p1, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const/16 v2, 0xe

    .line 194
    new-array v4, v2, [Lcom/google/a/h/a/d;

    .line 196
    aget-object v5, v1, p2

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x3

    .line 197
    aget-object v7, p1, p2

    aput-object v7, v4, v5

    const/4 v5, 0x0

    if-lez p2, :cond_1

    add-int/lit8 v7, p2, -0x1

    .line 200
    aget-object v8, p3, v7

    aput-object v8, v4, v5

    const/4 v8, 0x4

    .line 201
    aget-object v9, v1, v7

    aput-object v9, v4, v8

    const/4 v8, 0x5

    .line 202
    aget-object v7, p1, v7

    aput-object v7, v4, v8

    :cond_1
    if-le p2, v3, :cond_2

    const/16 v7, 0x8

    add-int/lit8 v8, p2, -0x2

    .line 205
    aget-object v9, p3, v8

    aput-object v9, v4, v7

    const/16 v7, 0xa

    .line 206
    aget-object v9, v1, v8

    aput-object v9, v4, v7

    const/16 v7, 0xb

    .line 207
    aget-object v8, p1, v8

    aput-object v8, v4, v7

    .line 209
    :cond_2
    array-length v7, p3

    sub-int/2addr v7, v3

    if-ge p2, v7, :cond_3

    add-int/lit8 v7, p2, 0x1

    .line 210
    aget-object v8, p3, v7

    aput-object v8, v4, v3

    const/4 v8, 0x6

    .line 211
    aget-object v9, v1, v7

    aput-object v9, v4, v8

    const/4 v8, 0x7

    .line 212
    aget-object v7, p1, v7

    aput-object v7, v4, v8

    .line 214
    :cond_3
    array-length v7, p3

    sub-int/2addr v7, v6

    if-ge p2, v7, :cond_4

    const/16 v7, 0x9

    add-int/2addr p2, v6

    .line 215
    aget-object p3, p3, p2

    aput-object p3, v4, v7

    const/16 p3, 0xc

    .line 216
    aget-object v1, v1, p2

    aput-object v1, v4, p3

    const/16 p3, 0xd

    .line 217
    aget-object p1, p1, p2

    aput-object p1, v4, p3

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v2, :cond_7

    .line 219
    aget-object p2, v4, p1

    if-eqz p2, :cond_5

    .line 50096
    invoke-virtual {p2}, Lcom/google/a/h/a/d;->a()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 50101
    iget p3, p2, Lcom/google/a/h/a/d;->c:I

    .line 50102
    iget v1, v0, Lcom/google/a/h/a/d;->c:I

    if-ne p3, v1, :cond_5

    .line 50103
    iget p2, p2, Lcom/google/a/h/a/d;->e:I

    .line 50104
    iput p2, v0, Lcom/google/a/h/a/d;->e:I

    const/4 p2, 0x1

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_6

    return-void

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private a(ILcom/google/a/h/a/g;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aput-object p2, v0, p1

    return-void
.end method

.method private a(Lcom/google/a/h/a/c;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/google/a/h/a/f;->c:Lcom/google/a/h/a/c;

    return-void
.end method

.method private static a(Lcom/google/a/h/a/d;Lcom/google/a/h/a/d;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcom/google/a/h/a/d;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50106
    iget v1, p1, Lcom/google/a/h/a/d;->c:I

    .line 50107
    iget v2, p0, Lcom/google/a/h/a/d;->c:I

    if-ne v1, v2, :cond_1

    .line 50108
    iget p1, p1, Lcom/google/a/h/a/d;->e:I

    .line 50109
    iput p1, p0, Lcom/google/a/h/a/d;->e:I

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private a()[Lcom/google/a/h/a/g;
    .locals 17

    move-object/from16 v0, p0

    .line 43
    iget-object v1, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/a/h/a/f;->a(Lcom/google/a/h/a/g;)V

    .line 44
    iget-object v1, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v3, v0, Lcom/google/a/h/a/f;->d:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/a/h/a/f;->a(Lcom/google/a/h/a/g;)V

    const/16 v1, 0x3a0

    .line 1098
    :goto_0
    iget-object v3, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v5, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v5, v4

    aget-object v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_3

    .line 1101
    :cond_0
    iget-object v3, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v3, v3, v2

    .line 2077
    iget-object v3, v3, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 1102
    iget-object v5, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v6, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v6, v4

    aget-object v5, v5, v6

    .line 3077
    iget-object v5, v5, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v6, 0x0

    .line 1103
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_3

    .line 1104
    aget-object v7, v3, v6

    if-eqz v7, :cond_2

    aget-object v7, v5, v6

    if-eqz v7, :cond_2

    aget-object v7, v3, v6

    .line 4072
    iget v7, v7, Lcom/google/a/h/a/d;->e:I

    .line 1106
    aget-object v8, v5, v6

    .line 5072
    iget v8, v8, Lcom/google/a/h/a/d;->e:I

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    .line 1107
    :goto_2
    iget v8, v0, Lcom/google/a/h/a/f;->d:I

    if-gt v7, v8, :cond_2

    .line 1108
    iget-object v8, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v8, v8, v7

    .line 5077
    iget-object v8, v8, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 1108
    aget-object v8, v8, v6

    if-eqz v8, :cond_1

    .line 1112
    aget-object v9, v3, v6

    .line 6072
    iget v9, v9, Lcom/google/a/h/a/d;->e:I

    .line 6076
    iput v9, v8, Lcom/google/a/h/a/d;->e:I

    .line 1113
    invoke-virtual {v8}, Lcom/google/a/h/a/d;->a()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1114
    iget-object v8, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v8, v8, v7

    .line 7077
    iget-object v8, v8, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v9, 0x0

    .line 1114
    aput-object v9, v8, v6

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 7147
    :cond_3
    :goto_3
    iget-object v3, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v3, v3, v2

    const/4 v5, 0x2

    if-nez v3, :cond_4

    const/4 v7, 0x0

    goto :goto_6

    .line 7151
    :cond_4
    iget-object v3, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v3, v3, v2

    .line 8077
    iget-object v3, v3, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7152
    :goto_4
    array-length v8, v3

    if-ge v6, v8, :cond_8

    .line 7153
    aget-object v8, v3, v6

    if-eqz v8, :cond_7

    .line 7156
    aget-object v8, v3, v6

    .line 9072
    iget v8, v8, Lcom/google/a/h/a/d;->e:I

    move v10, v7

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 7158
    :goto_5
    iget v11, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v11, v4

    if-ge v7, v11, :cond_6

    if-ge v9, v5, :cond_6

    .line 7159
    iget-object v11, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v11, v11, v7

    .line 9077
    iget-object v11, v11, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 7159
    aget-object v11, v11, v6

    if-eqz v11, :cond_5

    .line 7161
    invoke-static {v8, v9, v11}, Lcom/google/a/h/a/f;->a(IILcom/google/a/h/a/d;)I

    move-result v9

    .line 7162
    invoke-virtual {v11}, Lcom/google/a/h/a/d;->a()Z

    move-result v11

    if-nez v11, :cond_5

    add-int/lit8 v10, v10, 0x1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    move v7, v10

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 9122
    :cond_8
    :goto_6
    iget-object v3, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v6, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v6, v4

    aget-object v3, v3, v6

    if-nez v3, :cond_9

    const/4 v8, 0x0

    goto :goto_9

    .line 9126
    :cond_9
    iget-object v3, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v6, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v6, v4

    aget-object v3, v3, v6

    .line 10077
    iget-object v3, v3, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 9127
    :goto_7
    array-length v9, v3

    if-ge v6, v9, :cond_d

    .line 9128
    aget-object v9, v3, v6

    if-eqz v9, :cond_c

    .line 9131
    aget-object v9, v3, v6

    .line 11072
    iget v9, v9, Lcom/google/a/h/a/d;->e:I

    .line 9133
    iget v10, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v10, v4

    move v11, v8

    const/4 v8, 0x0

    :goto_8
    if-lez v10, :cond_b

    if-ge v8, v5, :cond_b

    .line 9134
    iget-object v12, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v12, v12, v10

    .line 11077
    iget-object v12, v12, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 9134
    aget-object v12, v12, v6

    if-eqz v12, :cond_a

    .line 9136
    invoke-static {v9, v8, v12}, Lcom/google/a/h/a/f;->a(IILcom/google/a/h/a/d;)I

    move-result v8

    .line 9137
    invoke-virtual {v12}, Lcom/google/a/h/a/d;->a()Z

    move-result v12

    if-nez v12, :cond_a

    add-int/lit8 v11, v11, 0x1

    :cond_a
    add-int/lit8 v10, v10, -0x1

    goto :goto_8

    :cond_b
    move v8, v11

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_d
    :goto_9
    add-int v3, v7, v8

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto/16 :goto_f

    :cond_e
    const/4 v6, 0x1

    .line 1073
    :goto_a
    iget v7, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v7, v4

    if-ge v6, v7, :cond_17

    .line 1074
    iget-object v7, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v7, v7, v6

    .line 12077
    iget-object v7, v7, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v8, 0x0

    .line 1075
    :goto_b
    array-length v9, v7

    if-ge v8, v9, :cond_16

    .line 1076
    aget-object v9, v7, v8

    if-eqz v9, :cond_15

    .line 1079
    aget-object v9, v7, v8

    invoke-virtual {v9}, Lcom/google/a/h/a/d;->a()Z

    move-result v9

    if-nez v9, :cond_15

    .line 12187
    aget-object v9, v7, v8

    .line 12188
    iget-object v10, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    add-int/lit8 v11, v6, -0x1

    aget-object v10, v10, v11

    .line 13077
    iget-object v10, v10, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 12190
    iget-object v11, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    add-int/lit8 v12, v6, 0x1

    aget-object v11, v11, v12

    if-eqz v11, :cond_f

    .line 12191
    iget-object v11, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v11, v11, v12

    .line 14077
    iget-object v11, v11, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    goto :goto_c

    :cond_f
    move-object v11, v10

    :goto_c
    const/16 v12, 0xe

    .line 12194
    new-array v13, v12, [Lcom/google/a/h/a/d;

    .line 12196
    aget-object v14, v10, v8

    aput-object v14, v13, v5

    const/4 v14, 0x3

    .line 12197
    aget-object v15, v11, v8

    aput-object v15, v13, v14

    if-lez v8, :cond_10

    add-int/lit8 v14, v8, -0x1

    .line 12200
    aget-object v15, v7, v14

    aput-object v15, v13, v2

    const/4 v15, 0x4

    .line 12201
    aget-object v16, v10, v14

    aput-object v16, v13, v15

    const/4 v15, 0x5

    .line 12202
    aget-object v14, v11, v14

    aput-object v14, v13, v15

    :cond_10
    if-le v8, v4, :cond_11

    const/16 v14, 0x8

    add-int/lit8 v15, v8, -0x2

    .line 12205
    aget-object v16, v7, v15

    aput-object v16, v13, v14

    const/16 v14, 0xa

    .line 12206
    aget-object v16, v10, v15

    aput-object v16, v13, v14

    const/16 v14, 0xb

    .line 12207
    aget-object v15, v11, v15

    aput-object v15, v13, v14

    .line 12209
    :cond_11
    array-length v14, v7

    sub-int/2addr v14, v4

    if-ge v8, v14, :cond_12

    add-int/lit8 v14, v8, 0x1

    .line 12210
    aget-object v15, v7, v14

    aput-object v15, v13, v4

    const/4 v15, 0x6

    .line 12211
    aget-object v16, v10, v14

    aput-object v16, v13, v15

    const/4 v15, 0x7

    .line 12212
    aget-object v14, v11, v14

    aput-object v14, v13, v15

    .line 12214
    :cond_12
    array-length v14, v7

    sub-int/2addr v14, v5

    if-ge v8, v14, :cond_13

    const/16 v14, 0x9

    add-int/lit8 v15, v8, 0x2

    .line 12215
    aget-object v16, v7, v15

    aput-object v16, v13, v14

    const/16 v14, 0xc

    .line 12216
    aget-object v10, v10, v15

    aput-object v10, v13, v14

    const/16 v10, 0xd

    .line 12217
    aget-object v11, v11, v15

    aput-object v11, v13, v10

    :cond_13
    const/4 v10, 0x0

    :goto_d
    if-ge v10, v12, :cond_15

    .line 12219
    aget-object v11, v13, v10

    if-eqz v11, :cond_14

    .line 14233
    invoke-virtual {v11}, Lcom/google/a/h/a/d;->a()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 15064
    iget v14, v11, Lcom/google/a/h/a/d;->c:I

    .line 16064
    iget v15, v9, Lcom/google/a/h/a/d;->c:I

    if-ne v14, v15, :cond_14

    .line 16072
    iget v11, v11, Lcom/google/a/h/a/d;->e:I

    .line 16076
    iput v11, v9, Lcom/google/a/h/a/d;->e:I

    const/4 v11, 0x1

    goto :goto_e

    :cond_14
    const/4 v11, 0x0

    :goto_e
    if-nez v11, :cond_15

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_a

    :cond_17
    :goto_f
    if-lez v3, :cond_19

    if-lt v3, v1, :cond_18

    goto :goto_10

    :cond_18
    move v1, v3

    goto/16 :goto_0

    .line 51
    :cond_19
    :goto_10
    iget-object v1, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    return-object v1
.end method

.method private b()I
    .locals 15

    .line 25098
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v3, p0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v3, v2

    aget-object v0, v0, v3

    if-nez v0, :cond_0

    goto :goto_2

    .line 25101
    :cond_0
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v0, v0, v1

    .line 26077
    iget-object v0, v0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 25102
    iget-object v3, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v4, p0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    .line 27077
    iget-object v3, v3, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v4, 0x0

    .line 25103
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 25104
    aget-object v5, v0, v4

    if-eqz v5, :cond_2

    aget-object v5, v3, v4

    if-eqz v5, :cond_2

    aget-object v5, v0, v4

    .line 28072
    iget v5, v5, Lcom/google/a/h/a/d;->e:I

    .line 25106
    aget-object v6, v3, v4

    .line 29072
    iget v6, v6, Lcom/google/a/h/a/d;->e:I

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    .line 25107
    :goto_1
    iget v6, p0, Lcom/google/a/h/a/f;->d:I

    if-gt v5, v6, :cond_2

    .line 25108
    iget-object v6, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v6, v6, v5

    .line 29077
    iget-object v6, v6, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 25108
    aget-object v6, v6, v4

    if-eqz v6, :cond_1

    .line 25112
    aget-object v7, v0, v4

    .line 30072
    iget v7, v7, Lcom/google/a/h/a/d;->e:I

    .line 30076
    iput v7, v6, Lcom/google/a/h/a/d;->e:I

    .line 25113
    invoke-virtual {v6}, Lcom/google/a/h/a/d;->a()Z

    move-result v6

    if-nez v6, :cond_1

    .line 25114
    iget-object v6, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v6, v6, v5

    .line 31077
    iget-object v6, v6, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v7, 0x0

    .line 25114
    aput-object v7, v6, v4

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 31147
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v0, v0, v1

    const/4 v3, 0x2

    if-nez v0, :cond_4

    const/4 v5, 0x0

    goto :goto_5

    .line 31151
    :cond_4
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v0, v0, v1

    .line 32077
    iget-object v0, v0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 31152
    :goto_3
    array-length v6, v0

    if-ge v4, v6, :cond_8

    .line 31153
    aget-object v6, v0, v4

    if-eqz v6, :cond_7

    .line 31156
    aget-object v6, v0, v4

    .line 33072
    iget v6, v6, Lcom/google/a/h/a/d;->e:I

    move v8, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 31158
    :goto_4
    iget v9, p0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v9, v2

    if-ge v5, v9, :cond_6

    if-ge v7, v3, :cond_6

    .line 31159
    iget-object v9, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v9, v9, v5

    .line 33077
    iget-object v9, v9, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 31159
    aget-object v9, v9, v4

    if-eqz v9, :cond_5

    .line 31161
    invoke-static {v6, v7, v9}, Lcom/google/a/h/a/f;->a(IILcom/google/a/h/a/d;)I

    move-result v7

    .line 31162
    invoke-virtual {v9}, Lcom/google/a/h/a/d;->a()Z

    move-result v9

    if-nez v9, :cond_5

    add-int/lit8 v8, v8, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    move v5, v8

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 33122
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v4, p0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v4, v2

    aget-object v0, v0, v4

    if-nez v0, :cond_9

    const/4 v6, 0x0

    goto :goto_8

    .line 33126
    :cond_9
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v4, p0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v4, v2

    aget-object v0, v0, v4

    .line 34077
    iget-object v0, v0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 33127
    :goto_6
    array-length v7, v0

    if-ge v4, v7, :cond_d

    .line 33128
    aget-object v7, v0, v4

    if-eqz v7, :cond_c

    .line 33131
    aget-object v7, v0, v4

    .line 35072
    iget v7, v7, Lcom/google/a/h/a/d;->e:I

    .line 33133
    iget v8, p0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v8, v2

    move v9, v6

    const/4 v6, 0x0

    :goto_7
    if-lez v8, :cond_b

    if-ge v6, v3, :cond_b

    .line 33134
    iget-object v10, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v10, v10, v8

    .line 35077
    iget-object v10, v10, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 33134
    aget-object v10, v10, v4

    if-eqz v10, :cond_a

    .line 33136
    invoke-static {v7, v6, v10}, Lcom/google/a/h/a/f;->a(IILcom/google/a/h/a/d;)I

    move-result v6

    .line 33137
    invoke-virtual {v10}, Lcom/google/a/h/a/d;->a()Z

    move-result v10

    if-nez v10, :cond_a

    add-int/lit8 v9, v9, 0x1

    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    :cond_b
    move v6, v9

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    :goto_8
    add-int/2addr v5, v6

    if-nez v5, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x1

    .line 73
    :goto_9
    iget v4, p0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v4, v2

    if-ge v0, v4, :cond_17

    .line 74
    iget-object v4, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v4, v4, v0

    .line 36077
    iget-object v4, v4, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v6, 0x0

    .line 75
    :goto_a
    array-length v7, v4

    if-ge v6, v7, :cond_16

    .line 76
    aget-object v7, v4, v6

    if-eqz v7, :cond_15

    .line 79
    aget-object v7, v4, v6

    invoke-virtual {v7}, Lcom/google/a/h/a/d;->a()Z

    move-result v7

    if-nez v7, :cond_15

    .line 36187
    aget-object v7, v4, v6

    .line 36188
    iget-object v8, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    add-int/lit8 v9, v0, -0x1

    aget-object v8, v8, v9

    .line 37077
    iget-object v8, v8, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 36190
    iget-object v9, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    add-int/lit8 v10, v0, 0x1

    aget-object v9, v9, v10

    if-eqz v9, :cond_f

    .line 36191
    iget-object v9, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v9, v9, v10

    .line 38077
    iget-object v9, v9, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    goto :goto_b

    :cond_f
    move-object v9, v8

    :goto_b
    const/16 v10, 0xe

    .line 36194
    new-array v11, v10, [Lcom/google/a/h/a/d;

    .line 36196
    aget-object v12, v8, v6

    aput-object v12, v11, v3

    const/4 v12, 0x3

    .line 36197
    aget-object v13, v9, v6

    aput-object v13, v11, v12

    if-lez v6, :cond_10

    add-int/lit8 v12, v6, -0x1

    .line 36200
    aget-object v13, v4, v12

    aput-object v13, v11, v1

    const/4 v13, 0x4

    .line 36201
    aget-object v14, v8, v12

    aput-object v14, v11, v13

    const/4 v13, 0x5

    .line 36202
    aget-object v12, v9, v12

    aput-object v12, v11, v13

    :cond_10
    if-le v6, v2, :cond_11

    const/16 v12, 0x8

    add-int/lit8 v13, v6, -0x2

    .line 36205
    aget-object v14, v4, v13

    aput-object v14, v11, v12

    const/16 v12, 0xa

    .line 36206
    aget-object v14, v8, v13

    aput-object v14, v11, v12

    const/16 v12, 0xb

    .line 36207
    aget-object v13, v9, v13

    aput-object v13, v11, v12

    .line 36209
    :cond_11
    array-length v12, v4

    sub-int/2addr v12, v2

    if-ge v6, v12, :cond_12

    add-int/lit8 v12, v6, 0x1

    .line 36210
    aget-object v13, v4, v12

    aput-object v13, v11, v2

    const/4 v13, 0x6

    .line 36211
    aget-object v14, v8, v12

    aput-object v14, v11, v13

    const/4 v13, 0x7

    .line 36212
    aget-object v12, v9, v12

    aput-object v12, v11, v13

    .line 36214
    :cond_12
    array-length v12, v4

    sub-int/2addr v12, v3

    if-ge v6, v12, :cond_13

    const/16 v12, 0x9

    add-int/lit8 v13, v6, 0x2

    .line 36215
    aget-object v14, v4, v13

    aput-object v14, v11, v12

    const/16 v12, 0xc

    .line 36216
    aget-object v8, v8, v13

    aput-object v8, v11, v12

    const/16 v8, 0xd

    .line 36217
    aget-object v9, v9, v13

    aput-object v9, v11, v8

    :cond_13
    const/4 v8, 0x0

    :goto_c
    if-ge v8, v10, :cond_15

    .line 36219
    aget-object v9, v11, v8

    if-eqz v9, :cond_14

    .line 38233
    invoke-virtual {v9}, Lcom/google/a/h/a/d;->a()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 39064
    iget v12, v9, Lcom/google/a/h/a/d;->c:I

    .line 40064
    iget v13, v7, Lcom/google/a/h/a/d;->c:I

    if-ne v12, v13, :cond_14

    .line 40072
    iget v9, v9, Lcom/google/a/h/a/d;->e:I

    .line 40076
    iput v9, v7, Lcom/google/a/h/a/d;->e:I

    const/4 v9, 0x1

    goto :goto_d

    :cond_14
    const/4 v9, 0x0

    :goto_d
    if-nez v9, :cond_15

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_a

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_17
    return v5
.end method

.method private c()I
    .locals 11

    .line 40098
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v3, p0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v3, v2

    aget-object v0, v0, v3

    if-nez v0, :cond_0

    goto :goto_2

    .line 40101
    :cond_0
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v0, v0, v1

    .line 41077
    iget-object v0, v0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 40102
    iget-object v3, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v4, p0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    .line 42077
    iget-object v3, v3, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v4, 0x0

    .line 40103
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 40104
    aget-object v5, v0, v4

    if-eqz v5, :cond_2

    aget-object v5, v3, v4

    if-eqz v5, :cond_2

    aget-object v5, v0, v4

    .line 43072
    iget v5, v5, Lcom/google/a/h/a/d;->e:I

    .line 40106
    aget-object v6, v3, v4

    .line 44072
    iget v6, v6, Lcom/google/a/h/a/d;->e:I

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    .line 40107
    :goto_1
    iget v6, p0, Lcom/google/a/h/a/f;->d:I

    if-gt v5, v6, :cond_2

    .line 40108
    iget-object v6, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v6, v6, v5

    .line 44077
    iget-object v6, v6, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 40108
    aget-object v6, v6, v4

    if-eqz v6, :cond_1

    .line 40112
    aget-object v7, v0, v4

    .line 45072
    iget v7, v7, Lcom/google/a/h/a/d;->e:I

    .line 45076
    iput v7, v6, Lcom/google/a/h/a/d;->e:I

    .line 40113
    invoke-virtual {v6}, Lcom/google/a/h/a/d;->a()Z

    move-result v6

    if-nez v6, :cond_1

    .line 40114
    iget-object v6, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v6, v6, v5

    .line 46077
    iget-object v6, v6, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v7, 0x0

    .line 40114
    aput-object v7, v6, v4

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 46147
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v0, v0, v1

    const/4 v3, 0x2

    if-nez v0, :cond_4

    const/4 v5, 0x0

    goto :goto_5

    .line 46151
    :cond_4
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v0, v0, v1

    .line 47077
    iget-object v0, v0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 46152
    :goto_3
    array-length v6, v0

    if-ge v4, v6, :cond_8

    .line 46153
    aget-object v6, v0, v4

    if-eqz v6, :cond_7

    .line 46156
    aget-object v6, v0, v4

    .line 48072
    iget v6, v6, Lcom/google/a/h/a/d;->e:I

    move v8, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 46158
    :goto_4
    iget v9, p0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v9, v2

    if-ge v5, v9, :cond_6

    if-ge v7, v3, :cond_6

    .line 46159
    iget-object v9, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v9, v9, v5

    .line 48077
    iget-object v9, v9, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 46159
    aget-object v9, v9, v4

    if-eqz v9, :cond_5

    .line 46161
    invoke-static {v6, v7, v9}, Lcom/google/a/h/a/f;->a(IILcom/google/a/h/a/d;)I

    move-result v7

    .line 46162
    invoke-virtual {v9}, Lcom/google/a/h/a/d;->a()Z

    move-result v9

    if-nez v9, :cond_5

    add-int/lit8 v8, v8, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    move v5, v8

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 48122
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v4, p0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v4, v2

    aget-object v0, v0, v4

    if-nez v0, :cond_9

    goto :goto_8

    .line 48126
    :cond_9
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v4, p0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v4, v2

    aget-object v0, v0, v4

    .line 49077
    iget-object v0, v0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 48127
    :goto_6
    array-length v7, v0

    if-ge v4, v7, :cond_d

    .line 48128
    aget-object v7, v0, v4

    if-eqz v7, :cond_c

    .line 48131
    aget-object v7, v0, v4

    .line 50072
    iget v7, v7, Lcom/google/a/h/a/d;->e:I

    .line 48133
    iget v8, p0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v8, v2

    move v9, v6

    const/4 v6, 0x0

    :goto_7
    if-lez v8, :cond_b

    if-ge v6, v3, :cond_b

    .line 48134
    iget-object v10, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v10, v10, v8

    .line 50073
    iget-object v10, v10, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 48134
    aget-object v10, v10, v4

    if-eqz v10, :cond_a

    .line 48136
    invoke-static {v7, v6, v10}, Lcom/google/a/h/a/f;->a(IILcom/google/a/h/a/d;)I

    move-result v6

    .line 48137
    invoke-virtual {v10}, Lcom/google/a/h/a/d;->a()Z

    move-result v10

    if-nez v10, :cond_a

    add-int/lit8 v9, v9, 0x1

    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    :cond_b
    move v6, v9

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    move v1, v6

    :goto_8
    add-int/2addr v5, v1

    return v5
.end method

.method private d()V
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v2, p0, Lcom/google/a/h/a/f;->d:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_2

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v0, v0, v1

    .line 50074
    iget-object v0, v0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 102
    iget-object v2, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v4, p0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v4, v3

    aget-object v2, v2, v4

    .line 50075
    iget-object v2, v2, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 103
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 104
    aget-object v4, v0, v1

    if-eqz v4, :cond_2

    aget-object v4, v2, v1

    if-eqz v4, :cond_2

    aget-object v4, v0, v1

    .line 50076
    iget v4, v4, Lcom/google/a/h/a/d;->e:I

    .line 106
    aget-object v5, v2, v1

    .line 50077
    iget v5, v5, Lcom/google/a/h/a/d;->e:I

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    .line 107
    :goto_1
    iget v5, p0, Lcom/google/a/h/a/f;->d:I

    if-gt v4, v5, :cond_2

    .line 108
    iget-object v5, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v5, v5, v4

    .line 50078
    iget-object v5, v5, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 108
    aget-object v5, v5, v1

    if-eqz v5, :cond_1

    .line 112
    aget-object v6, v0, v1

    .line 50079
    iget v6, v6, Lcom/google/a/h/a/d;->e:I

    .line 50080
    iput v6, v5, Lcom/google/a/h/a/d;->e:I

    .line 113
    invoke-virtual {v5}, Lcom/google/a/h/a/d;->a()Z

    move-result v5

    if-nez v5, :cond_1

    .line 114
    iget-object v5, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v5, v5, v4

    .line 50082
    iget-object v5, v5, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v6, 0x0

    .line 114
    aput-object v6, v5, v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private e()I
    .locals 8

    .line 122
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v1, p0, Lcom/google/a/h/a/f;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v2, p0, Lcom/google/a/h/a/f;->d:I

    add-int/lit8 v2, v2, 0x1

    aget-object v0, v0, v2

    .line 50083
    iget-object v0, v0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 127
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_4

    .line 128
    aget-object v4, v0, v2

    if-eqz v4, :cond_3

    .line 131
    aget-object v4, v0, v2

    .line 50084
    iget v4, v4, Lcom/google/a/h/a/d;->e:I

    .line 133
    iget v5, p0, Lcom/google/a/h/a/f;->d:I

    add-int/lit8 v5, v5, 0x1

    move v6, v3

    const/4 v3, 0x0

    :goto_1
    if-lez v5, :cond_2

    const/4 v7, 0x2

    if-ge v3, v7, :cond_2

    .line 134
    iget-object v7, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v7, v7, v5

    .line 50085
    iget-object v7, v7, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 134
    aget-object v7, v7, v2

    if-eqz v7, :cond_1

    .line 136
    invoke-static {v4, v3, v7}, Lcom/google/a/h/a/f;->a(IILcom/google/a/h/a/d;)I

    move-result v3

    .line 137
    invoke-virtual {v7}, Lcom/google/a/h/a/d;->a()Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    move v3, v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private f()I
    .locals 9

    .line 147
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return v1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v0, v0, v1

    .line 50086
    iget-object v0, v0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 152
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_4

    .line 153
    aget-object v4, v0, v2

    if-eqz v4, :cond_3

    .line 156
    aget-object v4, v0, v2

    .line 50087
    iget v4, v4, Lcom/google/a/h/a/d;->e:I

    const/4 v5, 0x1

    move v7, v3

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 158
    :goto_1
    iget v8, p0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v8, v5

    if-ge v3, v8, :cond_2

    const/4 v8, 0x2

    if-ge v6, v8, :cond_2

    .line 159
    iget-object v8, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v8, v8, v3

    .line 50088
    iget-object v8, v8, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 159
    aget-object v8, v8, v2

    if-eqz v8, :cond_1

    .line 161
    invoke-static {v4, v6, v8}, Lcom/google/a/h/a/f;->a(IILcom/google/a/h/a/d;)I

    move-result v6

    .line 162
    invoke-virtual {v8}, Lcom/google/a/h/a/d;->a()Z

    move-result v8

    if-nez v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v7

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private g()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/google/a/h/a/f;->d:I

    return v0
.end method

.method private h()I
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    .line 50111
    iget v0, v0, Lcom/google/a/h/a/a;->e:I

    return v0
.end method

.method private i()I
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    .line 50112
    iget v0, v0, Lcom/google/a/h/a/a;->b:I

    return v0
.end method

.method private j()Lcom/google/a/h/a/c;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/a/h/a/f;->c:Lcom/google/a/h/a/c;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/google/a/h/a/g;)V
    .locals 13

    if-eqz p1, :cond_e

    .line 56
    check-cast p1, Lcom/google/a/h/a/h;

    iget-object v0, p0, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    .line 18077
    iget-object v1, p1, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 19077
    iget-object v2, p1, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 19035
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    if-eqz v6, :cond_0

    .line 19037
    invoke-virtual {v6}, Lcom/google/a/h/a/d;->b()V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 17049
    :cond_1
    invoke-virtual {p1, v1, v0}, Lcom/google/a/h/a/h;->a([Lcom/google/a/h/a/d;Lcom/google/a/h/a/a;)V

    .line 20073
    iget-object v2, p1, Lcom/google/a/h/a/g;->a:Lcom/google/a/h/a/c;

    .line 17051
    iget-boolean v3, p1, Lcom/google/a/h/a/h;->c:Z

    if-eqz v3, :cond_2

    .line 20142
    iget-object v3, v2, Lcom/google/a/h/a/c;->b:Lcom/google/a/t;

    goto :goto_1

    .line 20146
    :cond_2
    iget-object v3, v2, Lcom/google/a/h/a/c;->d:Lcom/google/a/t;

    .line 17052
    :goto_1
    iget-boolean v5, p1, Lcom/google/a/h/a/h;->c:Z

    if-eqz v5, :cond_3

    .line 20150
    iget-object v2, v2, Lcom/google/a/h/a/c;->c:Lcom/google/a/t;

    goto :goto_2

    .line 20154
    :cond_3
    iget-object v2, v2, Lcom/google/a/h/a/c;->e:Lcom/google/a/t;

    .line 21042
    :goto_2
    iget v3, v3, Lcom/google/a/t;->b:F

    float-to-int v3, v3

    .line 17053
    invoke-virtual {p1, v3}, Lcom/google/a/h/a/h;->b(I)I

    move-result v3

    .line 22042
    iget v2, v2, Lcom/google/a/t;->b:F

    float-to-int v2, v2

    .line 17054
    invoke-virtual {p1, v2}, Lcom/google/a/h/a/h;->b(I)I

    move-result p1

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_3
    if-ge v3, p1, :cond_e

    .line 17062
    aget-object v8, v1, v3

    if-eqz v8, :cond_d

    .line 17065
    aget-object v8, v1, v3

    .line 22072
    iget v9, v8, Lcom/google/a/h/a/d;->e:I

    sub-int/2addr v9, v2

    if-nez v9, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_4
    if-ne v9, v5, :cond_5

    .line 17082
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 23072
    iget v6, v8, Lcom/google/a/h/a/d;->e:I

    move v7, v2

    move v2, v6

    :goto_4
    const/4 v6, 0x1

    goto :goto_9

    :cond_5
    const/4 v10, 0x0

    if-ltz v9, :cond_c

    .line 24072
    iget v11, v8, Lcom/google/a/h/a/d;->e:I

    .line 25047
    iget v12, v0, Lcom/google/a/h/a/a;->e:I

    if-ge v11, v12, :cond_c

    if-le v9, v3, :cond_6

    goto :goto_8

    :cond_6
    const/4 v11, 0x2

    if-le v7, v11, :cond_7

    add-int/lit8 v11, v7, -0x2

    mul-int v9, v9, v11

    :cond_7
    if-lt v9, v3, :cond_8

    const/4 v11, 0x1

    goto :goto_5

    :cond_8
    const/4 v11, 0x0

    :goto_5
    move v12, v11

    const/4 v11, 0x1

    :goto_6
    if-gt v11, v9, :cond_a

    if-nez v12, :cond_a

    sub-int v12, v3, v11

    .line 17100
    aget-object v12, v1, v12

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_a
    if-eqz v12, :cond_b

    .line 17103
    aput-object v10, v1, v3

    goto :goto_9

    .line 25072
    :cond_b
    iget v2, v8, Lcom/google/a/h/a/d;->e:I

    goto :goto_4

    .line 17088
    :cond_c
    :goto_8
    aput-object v10, v1, v3

    :cond_d
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .line 270
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v3, p0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v3, v2

    aget-object v0, v0, v3

    .line 274
    :cond_0
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 50113
    :goto_0
    :try_start_0
    iget-object v6, v0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 275
    array-length v6, v6

    if-ge v5, v6, :cond_4

    const-string v6, "CW %3d:"

    .line 276
    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/4 v6, 0x0

    .line 277
    :goto_1
    iget v7, p0, Lcom/google/a/h/a/f;->d:I

    const/4 v8, 0x2

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_3

    .line 278
    iget-object v7, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v7, v7, v6

    if-nez v7, :cond_1

    const-string v7, "    |   "

    .line 279
    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    .line 282
    :cond_1
    iget-object v7, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v7, v7, v6

    .line 50114
    iget-object v7, v7, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    .line 282
    aget-object v7, v7, v5

    if-nez v7, :cond_2

    const-string v7, "    |   "

    .line 284
    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    :cond_2
    const-string v9, " %3d|%3d"

    .line 287
    new-array v8, v8, [Ljava/lang/Object;

    .line 50115
    iget v10, v7, Lcom/google/a/h/a/d;->e:I

    .line 287
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v1

    .line 50116
    iget v7, v7, Lcom/google/a/h/a/d;->d:I

    .line 287
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v2

    invoke-virtual {v3, v9, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const-string v6, "%n"

    .line 289
    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 291
    :cond_4
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 274
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v4, :cond_5

    .line 292
    :try_start_2
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    invoke-static {v4, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    :goto_4
    throw v0
.end method

.class public final Lcom/google/a/g/a/a/d;
.super Lcom/google/a/g/a/a;
.source "RSSExpandedReader.java"


# static fields
.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[[I

.field private static final k:[[I

.field private static final l:I = 0x0

.field private static final m:I = 0x1

.field private static final n:I = 0x2

.field private static final o:I = 0x3

.field private static final p:I = 0x4

.field private static final q:I = 0x5

.field private static final r:[[I

.field private static final s:I = 0xb


# instance fields
.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final v:[I

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x5

    .line 55
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/a/g/a/a/d;->g:[I

    .line 56
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/a/g/a/a/d;->h:[I

    .line 57
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/a/g/a/a/d;->i:[I

    const/4 v1, 0x6

    .line 59
    new-array v2, v1, [[I

    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v7, 0x2

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v8, 0x3

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v0

    sput-object v2, Lcom/google/a/g/a/a/d;->j:[[I

    const/16 v2, 0x17

    .line 68
    new-array v2, v2, [[I

    const/16 v4, 0x8

    new-array v9, v4, [I

    fill-array-data v9, :array_9

    aput-object v9, v2, v5

    new-array v9, v4, [I

    fill-array-data v9, :array_a

    aput-object v9, v2, v6

    new-array v9, v4, [I

    fill-array-data v9, :array_b

    aput-object v9, v2, v7

    new-array v9, v4, [I

    fill-array-data v9, :array_c

    aput-object v9, v2, v8

    new-array v9, v4, [I

    fill-array-data v9, :array_d

    aput-object v9, v2, v3

    new-array v9, v4, [I

    fill-array-data v9, :array_e

    aput-object v9, v2, v0

    new-array v9, v4, [I

    fill-array-data v9, :array_f

    aput-object v9, v2, v1

    new-array v9, v4, [I

    fill-array-data v9, :array_10

    const/4 v10, 0x7

    aput-object v9, v2, v10

    new-array v9, v4, [I

    fill-array-data v9, :array_11

    aput-object v9, v2, v4

    new-array v9, v4, [I

    fill-array-data v9, :array_12

    const/16 v11, 0x9

    aput-object v9, v2, v11

    new-array v9, v4, [I

    fill-array-data v9, :array_13

    const/16 v12, 0xa

    aput-object v9, v2, v12

    new-array v9, v4, [I

    fill-array-data v9, :array_14

    const/16 v13, 0xb

    aput-object v9, v2, v13

    new-array v9, v4, [I

    fill-array-data v9, :array_15

    const/16 v14, 0xc

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_16

    const/16 v14, 0xd

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_17

    const/16 v14, 0xe

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_18

    const/16 v14, 0xf

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_19

    const/16 v14, 0x10

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1a

    const/16 v14, 0x11

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1b

    const/16 v14, 0x12

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1c

    const/16 v14, 0x13

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1d

    const/16 v14, 0x14

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1e

    const/16 v14, 0x15

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1f

    const/16 v14, 0x16

    aput-object v9, v2, v14

    sput-object v2, Lcom/google/a/g/a/a/d;->k:[[I

    .line 101
    new-array v2, v12, [[I

    new-array v9, v7, [I

    fill-array-data v9, :array_20

    aput-object v9, v2, v5

    new-array v5, v8, [I

    fill-array-data v5, :array_21

    aput-object v5, v2, v6

    new-array v5, v3, [I

    fill-array-data v5, :array_22

    aput-object v5, v2, v7

    new-array v5, v0, [I

    fill-array-data v5, :array_23

    aput-object v5, v2, v8

    new-array v5, v1, [I

    fill-array-data v5, :array_24

    aput-object v5, v2, v3

    new-array v3, v10, [I

    fill-array-data v3, :array_25

    aput-object v3, v2, v0

    new-array v0, v4, [I

    fill-array-data v0, :array_26

    aput-object v0, v2, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_27

    aput-object v0, v2, v10

    new-array v0, v12, [I

    fill-array-data v0, :array_28

    aput-object v0, v2, v4

    new-array v0, v13, [I

    fill-array-data v0, :array_29

    aput-object v0, v2, v11

    sput-object v2, Lcom/google/a/g/a/a/d;->r:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7
        0x5
        0x4
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x14
        0x34
        0x68
        0xcc
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x15c
        0x56c
        0xb84
        0xf94
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x8
        0x4
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x6
        0x4
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x4
        0x6
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x2
        0x8
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x6
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x2
        0x9
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    :array_b
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    :array_c
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_d
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_e
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_f
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_10
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_11
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_12
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_13
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_14
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_15
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_16
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_17
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_18
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_1a
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_1b
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_1c
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_1d
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_1e
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_1f
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    :array_20
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x2
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/google/a/g/a/a;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    const/4 v0, 0x2

    .line 118
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/a/g/a/a/d;->v:[I

    return-void
.end method

.method private static a(Lcom/google/a/c/a;I)I
    .locals 1

    .line 408
    invoke-virtual {p0, p1}, Lcom/google/a/c/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0, p1}, Lcom/google/a/c/a;->d(I)I

    move-result p1

    .line 410
    invoke-virtual {p0, p1}, Lcom/google/a/c/a;->c(I)I

    move-result p0

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/a/c/a;->c(I)I

    move-result p1

    .line 413
    invoke-virtual {p0, p1}, Lcom/google/a/c/a;->d(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private a(Lcom/google/a/c/a;Ljava/util/List;I)Lcom/google/a/g/a/a/b;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/a;",
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/b;",
            ">;I)",
            "Lcom/google/a/g/a/a/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 421
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 422
    :goto_0
    iget-boolean v7, v0, Lcom/google/a/g/a/a/d;->w:Z

    if-eqz v7, :cond_1

    xor-int/lit8 v3, v3, 0x1

    :cond_1
    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 30052
    :goto_1
    iget-object v9, v0, Lcom/google/a/g/a/a;->a:[I

    .line 29461
    aput v5, v9, v5

    .line 29462
    aput v5, v9, v6

    .line 29463
    aput v5, v9, v4

    const/4 v10, 0x3

    .line 29464
    aput v5, v9, v10

    .line 31048
    iget v11, v1, Lcom/google/a/c/a;->b:I

    if-gez v7, :cond_3

    .line 29471
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    goto :goto_2

    .line 29474
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/a/g/a/a/b;

    .line 31065
    iget-object v12, v12, Lcom/google/a/g/a/a/b;->c:Lcom/google/a/g/a/c;

    .line 32044
    iget-object v12, v12, Lcom/google/a/g/a/c;->b:[I

    .line 29475
    aget v12, v12, v6

    goto :goto_2

    :cond_3
    move v12, v7

    .line 29477
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    rem-int/2addr v13, v4

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    .line 29478
    :goto_3
    iget-boolean v14, v0, Lcom/google/a/g/a/a/d;->w:Z

    if-eqz v14, :cond_5

    xor-int/lit8 v13, v13, 0x1

    :cond_5
    const/4 v14, 0x0

    :goto_4
    if-ge v12, v11, :cond_6

    .line 29484
    invoke-virtual {v1, v12}, Lcom/google/a/c/a;->a(I)Z

    move-result v14

    xor-int/2addr v14, v6

    if-eqz v14, :cond_6

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    move/from16 v16, v12

    const/4 v15, 0x0

    :goto_5
    if-ge v12, v11, :cond_12

    .line 29494
    invoke-virtual {v1, v12}, Lcom/google/a/c/a;->a(I)Z

    move-result v4

    if-eq v4, v14, :cond_7

    .line 29495
    aget v4, v9, v15

    add-int/2addr v4, v6

    aput v4, v9, v15

    move/from16 v4, p3

    const/16 v17, 0x2

    goto/16 :goto_a

    :cond_7
    if-ne v15, v10, :cond_10

    if-eqz v13, :cond_8

    .line 29499
    invoke-static {v9}, Lcom/google/a/g/a/a/d;->b([I)V

    .line 29502
    :cond_8
    invoke-static {v9}, Lcom/google/a/g/a/a/d;->a([I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 29503
    iget-object v4, v0, Lcom/google/a/g/a/a/d;->v:[I

    aput v16, v4, v5

    .line 29504
    iget-object v4, v0, Lcom/google/a/g/a/a/d;->v:[I

    aput v12, v4, v6

    move/from16 v4, p3

    .line 432
    invoke-direct {v0, v1, v4, v3}, Lcom/google/a/g/a/a/d;->a(Lcom/google/a/c/a;IZ)Lcom/google/a/g/a/c;

    move-result-object v9

    if-nez v9, :cond_a

    .line 434
    iget-object v7, v0, Lcom/google/a/g/a/a/d;->v:[I

    aget v7, v7, v5

    .line 32408
    invoke-virtual {v1, v7}, Lcom/google/a/c/a;->a(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 32409
    invoke-virtual {v1, v7}, Lcom/google/a/c/a;->d(I)I

    move-result v7

    .line 32410
    invoke-virtual {v1, v7}, Lcom/google/a/c/a;->c(I)I

    move-result v7

    goto :goto_6

    .line 32412
    :cond_9
    invoke-virtual {v1, v7}, Lcom/google/a/c/a;->c(I)I

    move-result v7

    .line 32413
    invoke-virtual {v1, v7}, Lcom/google/a/c/a;->d(I)I

    move-result v7

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    :goto_6
    if-nez v8, :cond_d

    .line 443
    invoke-direct {v0, v1, v9, v3, v6}, Lcom/google/a/g/a/a/d;->a(Lcom/google/a/c/a;Lcom/google/a/g/a/c;ZZ)Lcom/google/a/g/a/b;

    move-result-object v4

    .line 445
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/a/g/a/a/b;

    .line 33069
    iget-object v2, v2, Lcom/google/a/g/a/a/b;->b:Lcom/google/a/g/a/b;

    if-nez v2, :cond_b

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_c

    .line 446
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    .line 451
    :cond_c
    :try_start_0
    invoke-direct {v0, v1, v9, v3, v5}, Lcom/google/a/g/a/a/d;->a(Lcom/google/a/c/a;Lcom/google/a/g/a/c;ZZ)Lcom/google/a/g/a/b;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/a/m; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    const/4 v1, 0x0

    .line 455
    :goto_8
    new-instance v2, Lcom/google/a/g/a/a/b;

    invoke-direct {v2, v4, v1, v9}, Lcom/google/a/g/a/a/b;-><init>(Lcom/google/a/g/a/b;Lcom/google/a/g/a/b;Lcom/google/a/g/a/c;)V

    return-object v2

    :cond_d
    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_e
    move/from16 v4, p3

    if-eqz v13, :cond_f

    .line 29509
    invoke-static {v9}, Lcom/google/a/g/a/a/d;->b([I)V

    .line 29512
    :cond_f
    aget v18, v9, v5

    aget v19, v9, v6

    add-int v18, v18, v19

    add-int v16, v16, v18

    const/16 v17, 0x2

    .line 29513
    aget v18, v9, v17

    aput v18, v9, v5

    .line 29514
    aget v18, v9, v10

    aput v18, v9, v6

    .line 29515
    aput v5, v9, v17

    .line 29516
    aput v5, v9, v10

    add-int/lit8 v15, v15, -0x1

    goto :goto_9

    :cond_10
    move/from16 v4, p3

    const/16 v17, 0x2

    add-int/lit8 v15, v15, 0x1

    .line 29521
    :goto_9
    aput v6, v9, v15

    if-nez v14, :cond_11

    const/4 v14, 0x1

    goto :goto_a

    :cond_11
    const/4 v14, 0x0

    :goto_a
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x2

    goto/16 :goto_5

    .line 29525
    :cond_12
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1
.end method

.method private a(Lcom/google/a/c/a;Lcom/google/a/g/a/c;ZZ)Lcom/google/a/g/a/b;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 36056
    iget-object v4, v0, Lcom/google/a/g/a/a;->b:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 585
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_0

    .line 586
    aput v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    if-eqz p4, :cond_1

    .line 37044
    iget-object v7, v2, Lcom/google/a/g/a/c;->b:[I

    .line 590
    aget v7, v7, v5

    invoke-static {v1, v7, v4}, Lcom/google/a/g/a/a/d;->b(Lcom/google/a/c/a;I[I)V

    goto :goto_2

    .line 38044
    :cond_1
    iget-object v7, v2, Lcom/google/a/g/a/c;->b:[I

    .line 592
    aget v7, v7, v6

    invoke-static {v1, v7, v4}, Lcom/google/a/g/a/a/d;->a(Lcom/google/a/c/a;I[I)V

    .line 594
    array-length v1, v4

    sub-int/2addr v1, v6

    move v7, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_2

    .line 595
    aget v8, v4, v1

    .line 596
    aget v9, v4, v7

    aput v9, v4, v1

    .line 597
    aput v8, v4, v7

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 602
    :cond_2
    :goto_2
    invoke-static {v4}, Lcom/google/a/c/a/a;->a([I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v7, 0x41880000    # 17.0f

    div-float/2addr v1, v7

    .line 39044
    iget-object v7, v2, Lcom/google/a/g/a/c;->b:[I

    .line 605
    aget v7, v7, v6

    .line 40044
    iget-object v8, v2, Lcom/google/a/g/a/c;->b:[I

    .line 605
    aget v8, v8, v5

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x41700000    # 15.0f

    div-float/2addr v7, v8

    sub-float v8, v1, v7

    .line 606
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float/2addr v8, v7

    const v7, 0x3e99999a    # 0.3f

    cmpl-float v8, v8, v7

    if-lez v8, :cond_3

    .line 607
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    .line 40068
    :cond_3
    iget-object v8, v0, Lcom/google/a/g/a/a;->e:[I

    .line 40072
    iget-object v9, v0, Lcom/google/a/g/a/a;->f:[I

    .line 41060
    iget-object v10, v0, Lcom/google/a/g/a/a;->c:[F

    .line 41064
    iget-object v11, v0, Lcom/google/a/g/a/a;->d:[F

    const/4 v12, 0x0

    .line 615
    :goto_3
    array-length v13, v4

    if-ge v12, v13, :cond_9

    const/high16 v13, 0x3f800000    # 1.0f

    .line 616
    aget v14, v4, v12

    int-to-float v14, v14

    mul-float v14, v14, v13

    div-float/2addr v14, v1

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    const/16 v15, 0x8

    if-gtz v13, :cond_5

    cmpg-float v13, v14, v7

    if-gez v13, :cond_4

    .line 620
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_4
    const/4 v13, 0x1

    goto :goto_4

    :cond_5
    if-le v13, v15, :cond_7

    const v13, 0x410b3333    # 8.7f

    cmpl-float v13, v14, v13

    if-lez v13, :cond_6

    .line 625
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_6
    const/16 v13, 0x8

    .line 629
    :cond_7
    :goto_4
    div-int/lit8 v15, v12, 0x2

    and-int/lit8 v16, v12, 0x1

    if-nez v16, :cond_8

    .line 631
    aput v13, v8, v15

    int-to-float v13, v13

    sub-float/2addr v14, v13

    .line 632
    aput v14, v10, v15

    goto :goto_5

    .line 634
    :cond_8
    aput v13, v9, v15

    int-to-float v13, v13

    sub-float/2addr v14, v13

    .line 635
    aput v14, v11, v15

    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 42068
    :cond_9
    iget-object v1, v0, Lcom/google/a/g/a/a;->e:[I

    .line 41686
    invoke-static {v1}, Lcom/google/a/c/a/a;->a([I)I

    move-result v1

    .line 42072
    iget-object v4, v0, Lcom/google/a/g/a/a;->f:[I

    .line 41687
    invoke-static {v4}, Lcom/google/a/c/a/a;->a([I)I

    move-result v4

    const/4 v7, 0x4

    const/16 v10, 0xd

    if-le v1, v10, :cond_a

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_7

    :cond_a
    if-ge v1, v7, :cond_b

    const/4 v11, 0x1

    goto :goto_6

    :cond_b
    const/4 v11, 0x0

    :goto_6
    const/4 v12, 0x0

    :goto_7
    if-le v4, v10, :cond_c

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_9

    :cond_c
    if-ge v4, v7, :cond_d

    const/4 v13, 0x1

    goto :goto_8

    :cond_d
    const/4 v13, 0x0

    :goto_8
    const/4 v14, 0x0

    :goto_9
    add-int v15, v1, v4

    add-int/lit8 v15, v15, -0x11

    and-int/lit8 v5, v1, 0x1

    if-ne v5, v6, :cond_e

    const/4 v5, 0x1

    goto :goto_a

    :cond_e
    const/4 v5, 0x0

    :goto_a
    and-int/lit8 v16, v4, 0x1

    if-nez v16, :cond_f

    const/16 v16, 0x1

    goto :goto_b

    :cond_f
    const/16 v16, 0x0

    :goto_b
    if-ne v15, v6, :cond_13

    if-eqz v5, :cond_11

    if-eqz v16, :cond_10

    .line 41711
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_10
    const/4 v12, 0x1

    goto :goto_e

    :cond_11
    if-nez v16, :cond_12

    .line 41716
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_12
    :goto_c
    const/4 v14, 0x1

    goto :goto_e

    :cond_13
    const/4 v10, -0x1

    if-ne v15, v10, :cond_17

    if-eqz v5, :cond_15

    if-eqz v16, :cond_14

    .line 41723
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v11, 0x1

    goto :goto_e

    :cond_15
    if-nez v16, :cond_16

    .line 41728
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_16
    :goto_d
    const/4 v13, 0x1

    goto :goto_e

    :cond_17
    if-nez v15, :cond_29

    if-eqz v5, :cond_1a

    if-nez v16, :cond_18

    .line 41735
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_18
    if-ge v1, v4, :cond_19

    const/4 v11, 0x1

    goto :goto_c

    :cond_19
    const/4 v12, 0x1

    goto :goto_d

    :cond_1a
    if-eqz v16, :cond_1b

    .line 41747
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_1b
    :goto_e
    if-eqz v11, :cond_1d

    if-eqz v12, :cond_1c

    .line 41757
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    .line 43068
    :cond_1c
    iget-object v1, v0, Lcom/google/a/g/a/a;->e:[I

    .line 44060
    iget-object v4, v0, Lcom/google/a/g/a/a;->c:[F

    .line 41759
    invoke-static {v1, v4}, Lcom/google/a/g/a/a/d;->a([I[F)V

    :cond_1d
    if-eqz v12, :cond_1e

    .line 44068
    iget-object v1, v0, Lcom/google/a/g/a/a;->e:[I

    .line 45060
    iget-object v4, v0, Lcom/google/a/g/a/a;->c:[F

    .line 41762
    invoke-static {v1, v4}, Lcom/google/a/g/a/a/d;->b([I[F)V

    :cond_1e
    if-eqz v13, :cond_20

    if-eqz v14, :cond_1f

    .line 41766
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    .line 45072
    :cond_1f
    iget-object v1, v0, Lcom/google/a/g/a/a;->f:[I

    .line 46060
    iget-object v4, v0, Lcom/google/a/g/a/a;->c:[F

    .line 41768
    invoke-static {v1, v4}, Lcom/google/a/g/a/a/d;->a([I[F)V

    :cond_20
    if-eqz v14, :cond_21

    .line 46072
    iget-object v1, v0, Lcom/google/a/g/a/a;->f:[I

    .line 47064
    iget-object v4, v0, Lcom/google/a/g/a/a;->d:[F

    .line 41771
    invoke-static {v1, v4}, Lcom/google/a/g/a/a/d;->b([I[F)V

    .line 48040
    :cond_21
    iget v1, v2, Lcom/google/a/g/a/c;->a:I

    mul-int/lit8 v1, v1, 0x4

    const/4 v5, 0x2

    if-eqz p3, :cond_22

    const/4 v10, 0x0

    goto :goto_f

    :cond_22
    const/4 v10, 0x2

    :goto_f
    add-int/2addr v1, v10

    xor-int/lit8 v10, p4, 0x1

    add-int/2addr v1, v10

    sub-int/2addr v1, v6

    .line 645
    array-length v10, v8

    sub-int/2addr v10, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_10
    if-ltz v10, :cond_24

    .line 646
    invoke-static/range {p2 .. p4}, Lcom/google/a/g/a/a/d;->a(Lcom/google/a/g/a/c;ZZ)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 647
    sget-object v13, Lcom/google/a/g/a/a/d;->k:[[I

    aget-object v13, v13, v1

    mul-int/lit8 v14, v10, 0x2

    aget v13, v13, v14

    .line 648
    aget v14, v8, v10

    mul-int v14, v14, v13

    add-int/2addr v11, v14

    .line 650
    :cond_23
    aget v13, v8, v10

    add-int/2addr v12, v13

    add-int/lit8 v10, v10, -0x1

    goto :goto_10

    .line 654
    :cond_24
    array-length v10, v9

    sub-int/2addr v10, v6

    const/4 v13, 0x0

    :goto_11
    if-ltz v10, :cond_26

    .line 655
    invoke-static/range {p2 .. p4}, Lcom/google/a/g/a/a/d;->a(Lcom/google/a/g/a/c;ZZ)Z

    move-result v14

    if-eqz v14, :cond_25

    .line 656
    sget-object v14, Lcom/google/a/g/a/a/d;->k:[[I

    aget-object v14, v14, v1

    mul-int/lit8 v15, v10, 0x2

    add-int/2addr v15, v6

    aget v14, v14, v15

    .line 657
    aget v15, v9, v10

    mul-int v15, v15, v14

    add-int/2addr v13, v15

    :cond_25
    add-int/lit8 v10, v10, -0x1

    goto :goto_11

    :cond_26
    add-int/2addr v11, v13

    and-int/lit8 v1, v12, 0x1

    if-nez v1, :cond_28

    const/16 v1, 0xd

    if-gt v12, v1, :cond_28

    if-ge v12, v7, :cond_27

    goto :goto_12

    :cond_27
    rsub-int/lit8 v10, v12, 0xd

    .line 667
    div-int/2addr v10, v5

    .line 668
    sget-object v1, Lcom/google/a/g/a/a/d;->g:[I

    aget v1, v1, v10

    rsub-int/lit8 v2, v1, 0x9

    .line 670
    invoke-static {v8, v1, v6}, Lcom/google/a/g/a/f;->a([IIZ)I

    move-result v1

    const/4 v3, 0x0

    .line 671
    invoke-static {v9, v2, v3}, Lcom/google/a/g/a/f;->a([IIZ)I

    move-result v2

    .line 672
    sget-object v3, Lcom/google/a/g/a/a/d;->h:[I

    aget v3, v3, v10

    .line 673
    sget-object v4, Lcom/google/a/g/a/a/d;->i:[I

    aget v4, v4, v10

    mul-int v1, v1, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v4

    .line 676
    new-instance v2, Lcom/google/a/g/a/b;

    invoke-direct {v2, v1, v11}, Lcom/google/a/g/a/b;-><init>(II)V

    return-object v2

    .line 664
    :cond_28
    :goto_12
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1

    .line 41752
    :cond_29
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v1

    throw v1
.end method

.method private a(Lcom/google/a/c/a;IZ)Lcom/google/a/g/a/c;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 546
    iget-object p3, p0, Lcom/google/a/g/a/a/d;->v:[I

    aget p3, p3, v0

    sub-int/2addr p3, v1

    :goto_0
    if-ltz p3, :cond_0

    .line 548
    invoke-virtual {p1, p3}, Lcom/google/a/c/a;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    add-int/2addr p3, v1

    .line 553
    iget-object p1, p0, Lcom/google/a/g/a/a/d;->v:[I

    aget p1, p1, v0

    sub-int/2addr p1, p3

    .line 555
    iget-object v2, p0, Lcom/google/a/g/a/a/d;->v:[I

    aget v2, v2, v1

    goto :goto_1

    .line 560
    :cond_1
    iget-object p3, p0, Lcom/google/a/g/a/a/d;->v:[I

    aget p3, p3, v0

    .line 562
    iget-object v2, p0, Lcom/google/a/g/a/a/d;->v:[I

    aget v2, v2, v1

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/google/a/c/a;->d(I)I

    move-result v2

    .line 563
    iget-object p1, p0, Lcom/google/a/g/a/a/d;->v:[I

    aget p1, p1, v1

    sub-int p1, v2, p1

    :goto_1
    move v5, p3

    move v6, v2

    .line 36052
    iget-object p3, p0, Lcom/google/a/g/a/a;->a:[I

    .line 568
    array-length v2, p3

    sub-int/2addr v2, v1

    invoke-static {p3, v0, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    aput p1, p3, v0

    .line 573
    :try_start_0
    sget-object p1, Lcom/google/a/g/a/a/d;->j:[[I

    invoke-static {p3, p1}, Lcom/google/a/g/a/a/d;->a([I[[I)I

    move-result v3
    :try_end_0
    .catch Lcom/google/a/m; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    new-instance p1, Lcom/google/a/g/a/c;

    const/4 p3, 0x2

    new-array v4, p3, [I

    aput v5, v4, v0

    aput v6, v4, v1

    move-object v2, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/a/g/a/c;-><init>(I[IIII)V

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(ILcom/google/a/c/a;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/a/c/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 151
    :try_start_0
    iget-object v3, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    iget-object v4, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    invoke-direct {p0, p2, v4, p1}, Lcom/google/a/g/a/a/d;->a(Lcom/google/a/c/a;Ljava/util/List;I)Lcom/google/a/g/a/a/b;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/a/m; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 153
    iget-object v3, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    throw v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/google/a/g/a/a/d;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 163
    iget-object p1, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    return-object p1

    .line 166
    :cond_2
    iget-object p2, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1273
    :goto_1
    iget-object v4, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1274
    iget-object v4, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/a/g/a/a/c;

    .line 2043
    iget v5, v4, Lcom/google/a/g/a/a/c;->b:I

    if-le v5, p1, :cond_3

    .line 1276
    iget-object v5, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/google/a/g/a/a/c;->a(Ljava/util/List;)Z

    move-result v4

    goto :goto_2

    .line 1279
    :cond_3
    iget-object v3, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    invoke-virtual {v4, v3}, Lcom/google/a/g/a/a/c;->a(Ljava/util/List;)Z

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_11

    if-eqz v3, :cond_5

    goto/16 :goto_9

    .line 1291
    :cond_5
    iget-object v3, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    iget-object v4, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    .line 2330
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/a/g/a/a/c;

    .line 2332
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/a/g/a/a/b;

    .line 3039
    iget-object v8, v5, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    .line 2334
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/a/g/a/a/b;

    .line 2335
    invoke-virtual {v7, v9}, Lcom/google/a/g/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v7, 0x1

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_7

    const/4 v5, 0x0

    goto :goto_4

    :cond_a
    const/4 v5, 0x1

    :goto_4
    if-eqz v5, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_11

    .line 1295
    iget-object v3, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    new-instance v4, Lcom/google/a/g/a/a/c;

    iget-object v5, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    invoke-direct {v4, v5, p1}, Lcom/google/a/g/a/a/c;-><init>(Ljava/util/List;I)V

    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1297
    iget-object p1, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    iget-object v2, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    .line 3302
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3303
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/a/g/a/a/c;

    .line 4039
    iget-object v4, v3, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    .line 3304
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_c

    .line 5039
    iget-object v3, v3, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    .line 3308
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/a/g/a/a/b;

    .line 3310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/a/g/a/a/b;

    .line 3311
    invoke-virtual {v4, v6}, Lcom/google/a/g/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v4, 0x1

    goto :goto_7

    :cond_f
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_d

    const/4 v3, 0x0

    goto :goto_8

    :cond_10
    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_c

    .line 3323
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_11
    :goto_9
    if-eqz p2, :cond_13

    .line 171
    invoke-direct {p0, v1}, Lcom/google/a/g/a/a/d;->a(Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_12

    return-object p1

    .line 175
    :cond_12
    invoke-direct {p0, v0}, Lcom/google/a/g/a/a/d;->a(Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    return-object p1

    .line 181
    :cond_13
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method private a(Ljava/util/List;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/c;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_7

    .line 216
    iget-object v0, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/g/a/a/c;

    .line 217
    iget-object v1, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/a/g/a/a/c;

    .line 219
    iget-object v3, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    .line 6039
    iget-object v2, v2, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    .line 219
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    .line 7039
    iget-object v2, v0, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    .line 221
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    iget-object v1, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    .line 7247
    sget-object v2, Lcom/google/a/g/a/a/d;->r:[[I

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x1

    if-ge v5, v3, :cond_4

    aget-object v7, v2, v5

    .line 7248
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    array-length v9, v7

    if-gt v8, v9, :cond_3

    const/4 v8, 0x0

    .line 7253
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 7254
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/a/g/a/a/b;

    .line 8065
    iget-object v9, v9, Lcom/google/a/g/a/a/b;->c:Lcom/google/a/g/a/c;

    .line 9040
    iget v9, v9, Lcom/google/a/g/a/c;->a:I

    .line 7254
    aget v10, v7, v8

    if-eq v9, v10, :cond_1

    const/4 v7, 0x0

    goto :goto_4

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x1

    :goto_4
    if-eqz v7, :cond_3

    const/4 v4, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_5
    if-eqz v4, :cond_6

    .line 227
    invoke-direct {p0}, Lcom/google/a/g/a/a/d;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 228
    iget-object p1, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    return-object p1

    .line 231
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 232
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, p2, 0x1

    .line 235
    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/google/a/g/a/a/d;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/a/m; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 241
    :cond_7
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method private a(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/b;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x19

    if-le v0, v2, :cond_0

    .line 189
    iget-object p1, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object v1

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 195
    iget-object v0, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 200
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/a/g/a/a/d;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/a/m; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 206
    iget-object p1, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_2
    return-object v0
.end method

.method private a(I)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 273
    :goto_0
    iget-object v3, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 274
    iget-object v3, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/a/g/a/a/c;

    .line 10043
    iget v4, v3, Lcom/google/a/g/a/a/c;->b:I

    if-le v4, p1, :cond_0

    .line 276
    iget-object v4, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/a/g/a/a/c;->a(Ljava/util/List;)Z

    move-result v3

    goto :goto_1

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    invoke-virtual {v3, v2}, Lcom/google/a/g/a/a/c;->a(Ljava/util/List;)Z

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_10

    if-eqz v2, :cond_2

    goto/16 :goto_8

    .line 291
    :cond_2
    iget-object v2, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    iget-object v3, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    .line 10330
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/a/g/a/a/c;

    .line 10332
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/a/g/a/a/b;

    .line 11039
    iget-object v8, v4, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    .line 10334
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/a/g/a/a/b;

    .line 10335
    invoke-virtual {v7, v9}, Lcom/google/a/g/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_3

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_9

    return-void

    .line 295
    :cond_9
    iget-object v2, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    new-instance v3, Lcom/google/a/g/a/a/c;

    iget-object v4, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    invoke-direct {v3, v4, p1}, Lcom/google/a/g/a/a/c;-><init>(Ljava/util/List;I)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 297
    iget-object p1, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    iget-object v1, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    .line 11302
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 11303
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/a/g/a/a/c;

    .line 12039
    iget-object v3, v2, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    .line 11304
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_a

    .line 13039
    iget-object v2, v2, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    .line 11308
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/a/g/a/a/b;

    .line 11310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/a/g/a/a/b;

    .line 11311
    invoke-virtual {v3, v6}, Lcom/google/a/g/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v3, 0x1

    goto :goto_6

    :cond_d
    const/4 v3, 0x0

    :goto_6
    if-nez v3, :cond_b

    const/4 v2, 0x0

    goto :goto_7

    :cond_e
    const/4 v2, 0x1

    :goto_7
    if-eqz v2, :cond_a

    .line 11323
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_f
    return-void

    :cond_10
    :goto_8
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/c;",
            ">;)V"
        }
    .end annotation

    .line 302
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 303
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/g/a/a/c;

    .line 14039
    iget-object v1, v0, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    .line 304
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 15039
    iget-object v0, v0, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    .line 308
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/g/a/a/b;

    .line 310
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/a/g/a/a/b;

    .line 311
    invoke-virtual {v1, v5}, Lcom/google/a/g/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_1

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_0

    .line 323
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static a(Lcom/google/a/g/a/c;ZZ)Z
    .locals 0

    .line 49040
    iget p0, p0, Lcom/google/a/g/a/c;->a:I

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/a/g/a/a/b;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/a/g/a/a/c;",
            ">;)Z"
        }
    .end annotation

    .line 330
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/g/a/a/c;

    .line 332
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/a/g/a/a/b;

    .line 16039
    iget-object v5, v0, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    .line 334
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/a/g/a/a/b;

    .line 335
    invoke-virtual {v3, v6}, Lcom/google/a/g/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    return v4

    :cond_5
    return v1
.end method

.method private static a(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/b;",
            ">;)Z"
        }
    .end annotation

    .line 247
    sget-object v0, Lcom/google/a/g/a/a/d;->r:[[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 248
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    array-length v6, v4

    if-gt v5, v6, :cond_2

    const/4 v5, 0x0

    .line 253
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_1

    .line 254
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/a/g/a/a/b;

    .line 9065
    iget-object v6, v6, Lcom/google/a/g/a/a/b;->c:Lcom/google/a/g/a/c;

    .line 10040
    iget v6, v6, Lcom/google/a/g/a/c;->a:I

    .line 254
    aget v8, v4, v5

    if-eq v6, v8, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_2

    return v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private static b(Ljava/util/List;)Lcom/google/a/r;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/b;",
            ">;)",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation

    .line 16043
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    sub-int/2addr v0, v1

    .line 16044
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/a/g/a/a/b;

    .line 17061
    iget-object v2, v2, Lcom/google/a/g/a/a/b;->b:Lcom/google/a/g/a/b;

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    mul-int/lit8 v0, v0, 0xc

    .line 16050
    new-instance v2, Lcom/google/a/c/a;

    invoke-direct {v2, v0}, Lcom/google/a/c/a;-><init>(I)V

    const/4 v0, 0x0

    .line 16053
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/a/g/a/a/b;

    .line 18061
    iget-object v3, v3, Lcom/google/a/g/a/a/b;->b:Lcom/google/a/g/a/b;

    .line 19033
    iget v3, v3, Lcom/google/a/g/a/b;->a:I

    const/16 v4, 0xb

    const/16 v5, 0xb

    const/4 v6, 0x0

    :goto_0
    if-ltz v5, :cond_2

    shl-int v7, v1, v5

    and-int/2addr v7, v3

    if-eqz v7, :cond_1

    .line 16057
    invoke-virtual {v2, v6}, Lcom/google/a/c/a;->b(I)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    .line 16062
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 16063
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/a/g/a/a/b;

    .line 19057
    iget-object v7, v5, Lcom/google/a/g/a/a/b;->a:Lcom/google/a/g/a/b;

    .line 20033
    iget v7, v7, Lcom/google/a/g/a/b;->a:I

    move v8, v6

    const/16 v6, 0xb

    :goto_2
    if-ltz v6, :cond_4

    shl-int v9, v1, v6

    and-int/2addr v9, v7

    if-eqz v9, :cond_3

    .line 16068
    invoke-virtual {v2, v8}, Lcom/google/a/c/a;->b(I)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 20061
    :cond_4
    iget-object v6, v5, Lcom/google/a/g/a/a/b;->b:Lcom/google/a/g/a/b;

    if-eqz v6, :cond_6

    .line 21061
    iget-object v5, v5, Lcom/google/a/g/a/a/b;->b:Lcom/google/a/g/a/b;

    .line 22033
    iget v5, v5, Lcom/google/a/g/a/b;->a:I

    const/16 v6, 0xb

    :goto_3
    if-ltz v6, :cond_6

    shl-int v7, v1, v6

    and-int/2addr v7, v5

    if-eqz v7, :cond_5

    .line 16077
    invoke-virtual {v2, v8}, Lcom/google/a/c/a;->b(I)V

    :cond_5
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_6
    move v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 22058
    :cond_7
    invoke-virtual {v2, v1}, Lcom/google/a/c/a;->a(I)Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eqz v3, :cond_8

    .line 22059
    new-instance v3, Lcom/google/a/g/a/a/a/g;

    invoke-direct {v3, v2}, Lcom/google/a/g/a/a/a/g;-><init>(Lcom/google/a/c/a;)V

    goto/16 :goto_4

    .line 22061
    :cond_8
    invoke-virtual {v2, v5}, Lcom/google/a/c/a;->a(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 22062
    new-instance v3, Lcom/google/a/g/a/a/a/k;

    invoke-direct {v3, v2}, Lcom/google/a/g/a/a/a/k;-><init>(Lcom/google/a/c/a;)V

    goto/16 :goto_4

    .line 22065
    :cond_9
    invoke-static {v2, v1, v4}, Lcom/google/a/g/a/a/a/s;->a(Lcom/google/a/c/a;II)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x5

    .line 22072
    invoke-static {v2, v1, v3}, Lcom/google/a/g/a/a/a/s;->a(Lcom/google/a/c/a;II)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    const/4 v3, 0x7

    .line 22078
    invoke-static {v2, v1, v3}, Lcom/google/a/g/a/a/a/s;->a(Lcom/google/a/c/a;II)I

    move-result v3

    packed-switch v3, :pswitch_data_2

    .line 22090
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unknown decoder: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22069
    :pswitch_0
    new-instance v3, Lcom/google/a/g/a/a/a/b;

    invoke-direct {v3, v2}, Lcom/google/a/g/a/a/a/b;-><init>(Lcom/google/a/c/a;)V

    goto :goto_4

    .line 22068
    :pswitch_1
    new-instance v3, Lcom/google/a/g/a/a/a/a;

    invoke-direct {v3, v2}, Lcom/google/a/g/a/a/a/a;-><init>(Lcom/google/a/c/a;)V

    goto :goto_4

    .line 22075
    :pswitch_2
    new-instance v3, Lcom/google/a/g/a/a/a/d;

    invoke-direct {v3, v2}, Lcom/google/a/g/a/a/a/d;-><init>(Lcom/google/a/c/a;)V

    goto :goto_4

    .line 22074
    :pswitch_3
    new-instance v3, Lcom/google/a/g/a/a/a/c;

    invoke-direct {v3, v2}, Lcom/google/a/g/a/a/a/c;-><init>(Lcom/google/a/c/a;)V

    goto :goto_4

    .line 22087
    :pswitch_4
    new-instance v3, Lcom/google/a/g/a/a/a/e;

    const-string v6, "320"

    const-string v7, "17"

    invoke-direct {v3, v2, v6, v7}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 22086
    :pswitch_5
    new-instance v3, Lcom/google/a/g/a/a/a/e;

    const-string v6, "310"

    const-string v7, "17"

    invoke-direct {v3, v2, v6, v7}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 22085
    :pswitch_6
    new-instance v3, Lcom/google/a/g/a/a/a/e;

    const-string v6, "320"

    const-string v7, "15"

    invoke-direct {v3, v2, v6, v7}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 22084
    :pswitch_7
    new-instance v3, Lcom/google/a/g/a/a/a/e;

    const-string v6, "310"

    const-string v7, "15"

    invoke-direct {v3, v2, v6, v7}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 22083
    :pswitch_8
    new-instance v3, Lcom/google/a/g/a/a/a/e;

    const-string v6, "320"

    const-string v7, "13"

    invoke-direct {v3, v2, v6, v7}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 22082
    :pswitch_9
    new-instance v3, Lcom/google/a/g/a/a/a/e;

    const-string v6, "310"

    const-string v7, "13"

    invoke-direct {v3, v2, v6, v7}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 22081
    :pswitch_a
    new-instance v3, Lcom/google/a/g/a/a/a/e;

    const-string v6, "320"

    const-string v7, "11"

    invoke-direct {v3, v2, v6, v7}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 22080
    :pswitch_b
    new-instance v3, Lcom/google/a/g/a/a/a/e;

    const-string v6, "310"

    const-string v7, "11"

    invoke-direct {v3, v2, v6, v7}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :goto_4
    invoke-virtual {v3}, Lcom/google/a/g/a/a/a/j;->a()Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/a/g/a/a/b;

    .line 23065
    iget-object v3, v3, Lcom/google/a/g/a/a/b;->c:Lcom/google/a/g/a/c;

    .line 24048
    iget-object v3, v3, Lcom/google/a/g/a/c;->c:[Lcom/google/a/t;

    .line 366
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/a/g/a/a/b;

    .line 24065
    iget-object p0, p0, Lcom/google/a/g/a/a/b;->c:Lcom/google/a/g/a/c;

    .line 25048
    iget-object p0, p0, Lcom/google/a/g/a/c;->c:[Lcom/google/a/t;

    .line 368
    new-instance v6, Lcom/google/a/r;

    const/4 v7, 0x0

    new-array v4, v4, [Lcom/google/a/t;

    aget-object v8, v3, v0

    aput-object v8, v4, v0

    aget-object v3, v3, v1

    aput-object v3, v4, v1

    aget-object v0, p0, v0

    aput-object v0, v4, v5

    const/4 v0, 0x3

    aget-object p0, p0, v1

    aput-object p0, v4, v0

    sget-object p0, Lcom/google/a/a;->n:Lcom/google/a/a;

    invoke-direct {v6, v2, v7, v4, p0}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/c;",
            ">;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    return-object v0
.end method

.method private b(Lcom/google/a/c/a;Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/a;",
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/b;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 34052
    iget-object v0, p0, Lcom/google/a/g/a/a;->a:[I

    const/4 v1, 0x0

    .line 461
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 462
    aput v1, v0, v2

    const/4 v3, 0x2

    .line 463
    aput v1, v0, v3

    const/4 v4, 0x3

    .line 464
    aput v1, v0, v4

    .line 35048
    iget v5, p1, Lcom/google/a/c/a;->b:I

    if-gez p3, :cond_1

    .line 471
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 474
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/a/g/a/a/b;

    .line 35065
    iget-object p3, p3, Lcom/google/a/g/a/a/b;->c:Lcom/google/a/g/a/c;

    .line 36044
    iget-object p3, p3, Lcom/google/a/g/a/c;->b:[I

    .line 475
    aget p3, p3, v2

    .line 477
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    rem-int/2addr p2, v3

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 478
    :goto_1
    iget-boolean v6, p0, Lcom/google/a/g/a/a/d;->w:Z

    if-eqz v6, :cond_3

    xor-int/lit8 p2, p2, 0x1

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-ge p3, v5, :cond_4

    .line 484
    invoke-virtual {p1, p3}, Lcom/google/a/c/a;->a(I)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    move v8, p3

    const/4 v7, 0x0

    :goto_3
    if-ge p3, v5, :cond_b

    .line 494
    invoke-virtual {p1, p3}, Lcom/google/a/c/a;->a(I)Z

    move-result v9

    if-eq v9, v6, :cond_5

    .line 495
    aget v9, v0, v7

    add-int/2addr v9, v2

    aput v9, v0, v7

    goto :goto_5

    :cond_5
    if-ne v7, v4, :cond_9

    if-eqz p2, :cond_6

    .line 499
    invoke-static {v0}, Lcom/google/a/g/a/a/d;->b([I)V

    .line 502
    :cond_6
    invoke-static {v0}, Lcom/google/a/g/a/a/d;->a([I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 503
    iget-object p1, p0, Lcom/google/a/g/a/a/d;->v:[I

    aput v8, p1, v1

    .line 504
    iget-object p1, p0, Lcom/google/a/g/a/a/d;->v:[I

    aput p3, p1, v2

    return-void

    :cond_7
    if-eqz p2, :cond_8

    .line 509
    invoke-static {v0}, Lcom/google/a/g/a/a/d;->b([I)V

    .line 512
    :cond_8
    aget v9, v0, v1

    aget v10, v0, v2

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    .line 513
    aget v9, v0, v3

    aput v9, v0, v1

    .line 514
    aget v9, v0, v4

    aput v9, v0, v2

    .line 515
    aput v1, v0, v3

    .line 516
    aput v1, v0, v4

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 521
    :goto_4
    aput v2, v0, v7

    if-nez v6, :cond_a

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    :goto_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 525
    :cond_b
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method private static b([I)V
    .locals 5

    .line 529
    array-length v0, p0

    const/4 v1, 0x0

    .line 530
    :goto_0
    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_0

    .line 531
    aget v2, p0, v1

    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    .line 532
    aget v4, p0, v3

    aput v4, p0, v1

    .line 533
    aput v2, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()Z
    .locals 8

    .line 377
    iget-object v0, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/g/a/a/b;

    .line 25057
    iget-object v2, v0, Lcom/google/a/g/a/a/b;->a:Lcom/google/a/g/a/b;

    .line 25061
    iget-object v0, v0, Lcom/google/a/g/a/a/b;->b:Lcom/google/a/g/a/b;

    if-nez v0, :cond_0

    return v1

    .line 26037
    :cond_0
    iget v0, v0, Lcom/google/a/g/a/b;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    move v3, v0

    const/4 v0, 0x1

    const/4 v5, 0x2

    .line 388
    :goto_0
    iget-object v6, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 389
    iget-object v6, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/a/g/a/a/b;

    .line 26057
    iget-object v7, v6, Lcom/google/a/g/a/a/b;->a:Lcom/google/a/g/a/b;

    .line 27037
    iget v7, v7, Lcom/google/a/g/a/b;->b:I

    add-int/2addr v3, v7

    add-int/lit8 v5, v5, 0x1

    .line 27061
    iget-object v6, v6, Lcom/google/a/g/a/a/b;->b:Lcom/google/a/g/a/b;

    if-eqz v6, :cond_1

    .line 28037
    iget v6, v6, Lcom/google/a/g/a/b;->b:I

    add-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_2
    rem-int/lit16 v3, v3, 0xd3

    add-int/lit8 v5, v5, -0x4

    mul-int/lit16 v5, v5, 0xd3

    add-int/2addr v5, v3

    .line 29033
    iget v0, v2, Lcom/google/a/g/a/b;->a:I

    if-ne v5, v0, :cond_3

    return v4

    :cond_3
    return v1
.end method

.method private d()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 49068
    iget-object v0, p0, Lcom/google/a/g/a/a;->e:[I

    .line 686
    invoke-static {v0}, Lcom/google/a/c/a/a;->a([I)I

    move-result v0

    .line 49072
    iget-object v1, p0, Lcom/google/a/g/a/a;->f:[I

    .line 687
    invoke-static {v1}, Lcom/google/a/c/a/a;->a([I)I

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v0, v3, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    if-ge v0, v2, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-le v1, v3, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    if-ge v1, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x0

    :goto_3
    add-int v8, v0, v1

    add-int/lit8 v8, v8, -0x11

    and-int/lit8 v9, v0, 0x1

    if-ne v9, v5, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    and-int/lit8 v10, v1, 0x1

    if-nez v10, :cond_5

    const/4 v4, 0x1

    :cond_5
    if-ne v8, v5, :cond_9

    if-eqz v9, :cond_7

    if-eqz v4, :cond_6

    .line 711
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_6
    :goto_5
    const/4 v7, 0x1

    goto :goto_7

    :cond_7
    if-nez v4, :cond_8

    .line 716
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_8
    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const/4 v10, -0x1

    if-ne v8, v10, :cond_d

    if-eqz v9, :cond_b

    if-eqz v4, :cond_a

    .line 723
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_a
    :goto_6
    const/4 v6, 0x1

    goto :goto_7

    :cond_b
    if-nez v4, :cond_c

    .line 728
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_c
    const/4 v2, 0x1

    goto :goto_7

    :cond_d
    if-nez v8, :cond_18

    if-eqz v9, :cond_10

    if-nez v4, :cond_e

    .line 735
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_e
    if-ge v0, v1, :cond_f

    const/4 v3, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x1

    goto :goto_5

    :cond_10
    if-eqz v4, :cond_11

    .line 747
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_11
    :goto_7
    if-eqz v6, :cond_13

    if-eqz v7, :cond_12

    .line 757
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0

    .line 50068
    :cond_12
    iget-object v0, p0, Lcom/google/a/g/a/a;->e:[I

    .line 50069
    iget-object v1, p0, Lcom/google/a/g/a/a;->c:[F

    .line 759
    invoke-static {v0, v1}, Lcom/google/a/g/a/a/d;->a([I[F)V

    :cond_13
    if-eqz v7, :cond_14

    .line 50070
    iget-object v0, p0, Lcom/google/a/g/a/a;->e:[I

    .line 50071
    iget-object v1, p0, Lcom/google/a/g/a/a;->c:[F

    .line 762
    invoke-static {v0, v1}, Lcom/google/a/g/a/a/d;->b([I[F)V

    :cond_14
    if-eqz v2, :cond_16

    if-eqz v3, :cond_15

    .line 766
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0

    .line 50072
    :cond_15
    iget-object v0, p0, Lcom/google/a/g/a/a;->f:[I

    .line 50073
    iget-object v1, p0, Lcom/google/a/g/a/a;->c:[F

    .line 768
    invoke-static {v0, v1}, Lcom/google/a/g/a/a/d;->a([I[F)V

    :cond_16
    if-eqz v3, :cond_17

    .line 50074
    iget-object v0, p0, Lcom/google/a/g/a/a;->f:[I

    .line 50075
    iget-object v1, p0, Lcom/google/a/g/a/a;->d:[F

    .line 771
    invoke-static {v0, v1}, Lcom/google/a/g/a/a/d;->b([I[F)V

    :cond_17
    return-void

    .line 752
    :cond_18
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final a(ILcom/google/a/c/a;Ljava/util/Map;)Lcom/google/a/r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/a/c/a;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation

    .line 127
    iget-object p3, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    const/4 p3, 0x0

    .line 128
    iput-boolean p3, p0, Lcom/google/a/g/a/a/d;->w:Z

    .line 130
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/a/g/a/a/d;->a(ILcom/google/a/c/a;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/google/a/g/a/a/d;->b(Ljava/util/List;)Lcom/google/a/r;

    move-result-object p3
    :try_end_0
    .catch Lcom/google/a/m; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    .line 135
    :catch_0
    iget-object p3, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    const/4 p3, 0x1

    .line 136
    iput-boolean p3, p0, Lcom/google/a/g/a/a/d;->w:Z

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/google/a/g/a/a/d;->a(ILcom/google/a/c/a;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/a/g/a/a/d;->b(Ljava/util/List;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/a/g/a/a/d;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    iget-object v0, p0, Lcom/google/a/g/a/a/d;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

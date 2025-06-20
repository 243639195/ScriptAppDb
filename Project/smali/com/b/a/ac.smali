.class public final Lcom/b/a/ac;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# static fields
.field private static final d:[C


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 285
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/b/a/ac;->d:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Lcom/b/a/ad;)V
    .locals 4

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iget-object v0, p1, Lcom/b/a/ad;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    .line 335
    iget-object v0, p1, Lcom/b/a/ad;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/b/a/ac;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ac;->e:Ljava/lang/String;

    .line 336
    iget-object v0, p1, Lcom/b/a/ad;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/b/a/ac;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ac;->f:Ljava/lang/String;

    .line 337
    iget-object v0, p1, Lcom/b/a/ad;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/ac;->b:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Lcom/b/a/ad;->a()I

    move-result v0

    iput v0, p0, Lcom/b/a/ac;->c:I

    .line 339
    iget-object v0, p1, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/ac;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ac;->g:Ljava/util/List;

    .line 340
    iget-object v0, p1, Lcom/b/a/ad;->g:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/b/a/ad;->g:Ljava/util/List;

    const/4 v3, 0x1

    .line 341
    invoke-static {v0, v3}, Lcom/b/a/ac;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/b/a/ac;->h:Ljava/util/List;

    .line 343
    iget-object v0, p1, Lcom/b/a/ad;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/b/a/ad;->h:Ljava/lang/String;

    .line 344
    invoke-static {v0, v1}, Lcom/b/a/ac;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lcom/b/a/ac;->i:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Lcom/b/a/ad;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    return-void
.end method

.method static a(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v1, 0x46

    if-gt p0, v1, :cond_2

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "http"

    .line 505
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x50

    return p0

    :cond_0
    const-string v0, "https"

    .line 507
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x1bb

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 15

    move-object v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p1

    :goto_0
    if-ge v3, v1, :cond_f

    .line 1810
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    const/16 v5, 0x2b

    const/4 v6, -0x1

    const/16 v7, 0x80

    const/16 v8, 0x7f

    const/16 v9, 0x20

    const/16 v10, 0x25

    if-lt v4, v9, :cond_3

    if-eq v4, v8, :cond_3

    if-lt v4, v7, :cond_0

    if-nez p7, :cond_3

    .line 1814
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ne v11, v6, :cond_3

    if-ne v4, v10, :cond_1

    if-eqz p4, :cond_3

    if-eqz p5, :cond_1

    .line 1815
    invoke-static {v0, v3, v1}, Lcom/b/a/ac;->a(Ljava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_1
    if-ne v4, v5, :cond_2

    if-eqz p6, :cond_2

    goto :goto_1

    .line 1809
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 1818
    :cond_3
    :goto_1
    new-instance v4, Lcom/b/b/f;

    invoke-direct {v4}, Lcom/b/b/f;-><init>()V

    move/from16 v11, p1

    .line 1819
    invoke-virtual {v4, v0, v11, v3}, Lcom/b/b/f;->a(Ljava/lang/String;II)Lcom/b/b/f;

    const/4 v11, 0x0

    :goto_2
    if-ge v3, v1, :cond_e

    .line 4835
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    if-eqz p4, :cond_5

    const/16 v6, 0x9

    if-eq v10, v6, :cond_4

    const/16 v6, 0xa

    if-eq v10, v6, :cond_4

    const/16 v6, 0xc

    if-eq v10, v6, :cond_4

    const/16 v6, 0xd

    if-eq v10, v6, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v5, -0x1

    goto :goto_8

    :cond_5
    :goto_4
    if-ne v10, v5, :cond_7

    if-eqz p6, :cond_7

    if-eqz p4, :cond_6

    const-string v6, "+"

    goto :goto_5

    :cond_6
    const-string v6, "%2B"

    .line 4841
    :goto_5
    invoke-virtual {v4, v6}, Lcom/b/b/f;->a(Ljava/lang/String;)Lcom/b/b/f;

    goto :goto_3

    :cond_7
    if-lt v10, v9, :cond_a

    if-eq v10, v8, :cond_a

    if-lt v10, v7, :cond_8

    if-nez p7, :cond_a

    .line 4845
    :cond_8
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v5, -0x1

    if-ne v6, v5, :cond_b

    const/16 v6, 0x25

    if-ne v10, v6, :cond_9

    if-eqz p4, :cond_b

    if-eqz p5, :cond_9

    .line 4846
    invoke-static {v0, v3, v1}, Lcom/b/a/ac;->a(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_6

    .line 4860
    :cond_9
    invoke-virtual {v4, v10}, Lcom/b/b/f;->a(I)Lcom/b/b/f;

    goto :goto_8

    :cond_a
    const/4 v5, -0x1

    :cond_b
    :goto_6
    if-nez v11, :cond_c

    .line 4849
    new-instance v11, Lcom/b/b/f;

    invoke-direct {v11}, Lcom/b/b/f;-><init>()V

    .line 4851
    :cond_c
    invoke-virtual {v11, v10}, Lcom/b/b/f;->a(I)Lcom/b/b/f;

    .line 4852
    :goto_7
    invoke-virtual {v11}, Lcom/b/b/f;->d()Z

    move-result v6

    if-nez v6, :cond_d

    .line 4853
    invoke-virtual {v11}, Lcom/b/b/f;->e()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    const/16 v5, 0x25

    .line 4854
    invoke-virtual {v4, v5}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    .line 4855
    sget-object v12, Lcom/b/a/ac;->d:[C

    shr-int/lit8 v13, v6, 0x4

    and-int/lit8 v13, v13, 0xf

    aget-char v5, v12, v13

    invoke-virtual {v4, v5}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    .line 4856
    sget-object v5, Lcom/b/a/ac;->d:[C

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    const/4 v5, -0x1

    goto :goto_7

    .line 4834
    :cond_d
    :goto_8
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    const/16 v5, 0x2b

    const/4 v6, -0x1

    const/16 v10, 0x25

    goto/16 :goto_2

    .line 1822
    :cond_e
    invoke-virtual {v4}, Lcom/b/b/f;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    move/from16 v11, p1

    .line 1827
    invoke-virtual/range {p0 .. p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 8

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_5

    .line 1742
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    const/16 v3, 0x25

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1745
    :cond_1
    :goto_1
    new-instance v1, Lcom/b/b/f;

    invoke-direct {v1}, Lcom/b/b/f;-><init>()V

    .line 1746
    invoke-virtual {v1, p0, p1, v0}, Lcom/b/b/f;->a(Ljava/lang/String;II)Lcom/b/b/f;

    :goto_2
    if-ge v0, p2, :cond_4

    .line 4759
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    if-ne p1, v3, :cond_2

    add-int/lit8 v4, v0, 0x2

    if-ge v4, p2, :cond_2

    add-int/lit8 v5, v0, 0x1

    .line 4761
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/b/a/ac;->a(C)I

    move-result v5

    .line 4762
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/b/a/ac;->a(C)I

    move-result v6

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    if-eq v6, v7, :cond_3

    shl-int/lit8 v0, v5, 0x4

    add-int/2addr v0, v6

    .line 4764
    invoke-virtual {v1, v0}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    move v0, v4

    goto :goto_3

    :cond_2
    if-ne p1, v2, :cond_3

    if-eqz p3, :cond_3

    const/16 v4, 0x20

    .line 4769
    invoke-virtual {v1, v4}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    goto :goto_3

    .line 4772
    :cond_3
    invoke-virtual {v1, p1}, Lcom/b/b/f;->a(I)Lcom/b/b/f;

    .line 4758
    :goto_3
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_2

    .line 1748
    :cond_4
    invoke-virtual {v1}, Lcom/b/b/f;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1753
    :cond_5
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 8

    .line 1868
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 1867
    invoke-static/range {v0 .. v7}, Lcom/b/a/ac;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1727
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/b/a/ac;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1731
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1732
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1734
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1735
    invoke-static {v3, p1}, Lcom/b/a/ac;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1737
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 547
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/16 v2, 0x2f

    .line 548
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;II)Z
    .locals 2

    add-int/lit8 v0, p1, 0x2

    if-ge v0, p2, :cond_0

    .line 1778
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x25

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 1779
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/b/a/ac;->a(C)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1780
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/b/a/ac;->a(C)I

    move-result p0

    if-eq p0, v1, :cond_0

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static b(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 635
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_3

    const/16 v2, 0x26

    .line 636
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 637
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    const/16 v4, 0x3d

    .line 639
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v3, :cond_2

    if-le v4, v2, :cond_1

    goto :goto_1

    .line 644
    :cond_1
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    .line 645
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 641
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 642
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static b(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 615
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 616
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .line 617
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lez v1, :cond_0

    const/16 v4, 0x26

    .line 618
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    const/16 v2, 0x3d

    .line 621
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/String;)Lcom/b/a/ac;
    .locals 3

    .line 896
    new-instance v0, Lcom/b/a/ad;

    invoke-direct {v0}, Lcom/b/a/ad;-><init>()V

    const/4 v1, 0x0

    .line 897
    invoke-virtual {v0, v1, p0}, Lcom/b/a/ad;->a(Lcom/b/a/ac;Ljava/lang/String;)I

    move-result p0

    .line 898
    sget v2, Lcom/b/a/ae;->a:I

    if-ne p0, v2, :cond_0

    invoke-virtual {v0}, Lcom/b/a/ad;->b()Lcom/b/a/ac;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/net/URI;
    .locals 11

    .line 2867
    new-instance v0, Lcom/b/a/ad;

    invoke-direct {v0}, Lcom/b/a/ad;-><init>()V

    .line 2868
    iget-object v1, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/b/a/ad;->a:Ljava/lang/String;

    .line 2869
    invoke-virtual {p0}, Lcom/b/a/ac;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->b:Ljava/lang/String;

    .line 2870
    invoke-virtual {p0}, Lcom/b/a/ac;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->c:Ljava/lang/String;

    .line 2871
    iget-object v1, p0, Lcom/b/a/ac;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/b/a/ad;->d:Ljava/lang/String;

    .line 2873
    iget v1, p0, Lcom/b/a/ac;->c:I

    iget-object v2, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/b/a/ac;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/b/a/ac;->c:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v0, Lcom/b/a/ad;->e:I

    .line 2874
    iget-object v1, v0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2875
    iget-object v1, v0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-virtual {p0}, Lcom/b/a/ac;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2876
    invoke-virtual {p0}, Lcom/b/a/ac;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ad;->b(Ljava/lang/String;)Lcom/b/a/ad;

    .line 3823
    iget-object v1, p0, Lcom/b/a/ac;->i:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 3824
    :cond_1
    iget-object v1, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3825
    iget-object v2, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2877
    :goto_1
    iput-object v1, v0, Lcom/b/a/ad;->h:Ljava/lang/String;

    .line 4211
    iget-object v1, v0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    .line 4212
    iget-object v4, v0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 4213
    iget-object v4, v0, Lcom/b/a/ad;->f:Ljava/util/List;

    const-string v6, "[]"

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 4214
    invoke-static/range {v5 .. v10}, Lcom/b/a/ac;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    .line 4213
    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4216
    :cond_2
    iget-object v1, v0, Lcom/b/a/ad;->g:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 4217
    iget-object v1, v0, Lcom/b/a/ad;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_4

    .line 4218
    iget-object v3, v0, Lcom/b/a/ad;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 4220
    iget-object v3, v0, Lcom/b/a/ad;->g:Ljava/util/List;

    const-string v5, "\\^`{|}"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 4221
    invoke-static/range {v4 .. v9}, Lcom/b/a/ac;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    .line 4220
    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4225
    :cond_4
    iget-object v1, v0, Lcom/b/a/ad;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 4226
    iget-object v2, v0, Lcom/b/a/ad;->h:Ljava/lang/String;

    const-string v3, " \"#<>\\^`{|}"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/b/a/ac;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->h:Ljava/lang/String;

    .line 372
    :cond_5
    invoke-virtual {v0}, Lcom/b/a/ad;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string v3, ""

    .line 378
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 381
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/b/a/ac;
    .locals 0

    .line 862
    invoke-virtual {p0, p1}, Lcom/b/a/ac;->d(Ljava/lang/String;)Lcom/b/a/ad;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 863
    invoke-virtual {p1}, Lcom/b/a/ad;->b()Lcom/b/a/ac;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()Z
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)Lcom/b/a/ad;
    .locals 2

    .line 886
    new-instance v0, Lcom/b/a/ad;

    invoke-direct {v0}, Lcom/b/a/ad;-><init>()V

    .line 887
    invoke-virtual {v0, p0, p1}, Lcom/b/a/ad;->a(Lcom/b/a/ac;Ljava/lang/String;)I

    move-result p1

    .line 888
    sget v1, Lcom/b/a/ae;->a:I

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/b/a/ac;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 409
    iget-object v1, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lcom/b/a/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 410
    iget-object v2, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/b/a/ac;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    const/16 v1, 0x3a

    iget-object v2, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 442
    iget-object v1, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 443
    iget-object v2, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 937
    instance-of v0, p1, Lcom/b/a/ac;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/b/a/ac;

    iget-object p1, p1, Lcom/b/a/ac;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/b/a/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .line 497
    iget v0, p0, Lcom/b/a/ac;->c:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    .line 541
    iget-object v0, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 542
    iget-object v1, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lcom/b/a/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 543
    iget-object v2, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 566
    iget-object v1, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "?#"

    invoke-static {v1, v0, v3, v4}, Lcom/b/a/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 567
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 570
    iget-object v4, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-static {v4, v0, v1, v2}, Lcom/b/a/a/c;->a(Ljava/lang/String;IIC)I

    move-result v4

    .line 571
    iget-object v5, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public final j()Ljava/lang/String;
    .locals 5

    .line 608
    iget-object v0, p0, Lcom/b/a/ac;->h:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 610
    iget-object v1, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x23

    invoke-static {v1, v2, v3, v4}, Lcom/b/a/a/c;->a(Ljava/lang/String;IIC)I

    move-result v1

    .line 611
    iget-object v2, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/b/a/ac;->h:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 669
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    iget-object v1, p0, Lcom/b/a/ac;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/ac;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 671
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    return-object v0
.end method

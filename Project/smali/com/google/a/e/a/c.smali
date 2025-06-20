.class public final Lcom/google/a/e/a/c;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2


# instance fields
.field private final d:Lcom/google/a/c/b/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/a/c/b/c;

    sget-object v1, Lcom/google/a/c/b/a;->h:Lcom/google/a/c/b/a;

    invoke-direct {v0, v1}, Lcom/google/a/c/b/c;-><init>(Lcom/google/a/c/b/a;)V

    iput-object v0, p0, Lcom/google/a/e/a/c;->d:Lcom/google/a/c/b/c;

    return-void
.end method

.method private a([BIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/d;
        }
    .end annotation

    add-int v0, p3, p4

    if-nez p5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 94
    :goto_0
    div-int v2, v0, v1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    if-eqz p5, :cond_1

    .line 96
    rem-int/lit8 v5, v4, 0x2

    add-int/lit8 v6, p5, -0x1

    if-ne v5, v6, :cond_2

    .line 97
    :cond_1
    div-int v5, v4, v1

    add-int v6, v4, p2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v2, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 101
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/a/e/a/c;->d:Lcom/google/a/c/b/c;

    div-int/2addr p4, v1

    invoke-virtual {v0, v2, p4}, Lcom/google/a/c/b/c;->a([II)V
    :try_end_0
    .catch Lcom/google/a/c/b/e; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-ge v3, p3, :cond_6

    if-eqz p5, :cond_4

    .line 108
    rem-int/lit8 p4, v3, 0x2

    add-int/lit8 v0, p5, -0x1

    if-ne p4, v0, :cond_5

    :cond_4
    add-int p4, v3, p2

    .line 109
    div-int v0, v3, v1

    aget v0, v2, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-void

    .line 103
    :catch_0
    invoke-static {}, Lcom/google/a/d;->a()Lcom/google/a/d;

    move-result-object p1

    throw p1
.end method

.method private b(Lcom/google/a/c/b;)Lcom/google/a/c/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/google/a/e/a/c;->a(Lcom/google/a/c/b;)Lcom/google/a/c/e;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/a/c/b;)Lcom/google/a/c/e;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/b;",
            ")",
            "Lcom/google/a/c/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/google/a/e/a/a;

    invoke-direct {v0, p1}, Lcom/google/a/e/a/a;-><init>(Lcom/google/a/c/b;)V

    const/16 p1, 0x90

    .line 1073
    new-array p1, p1, [B

    .line 1074
    iget-object v1, v0, Lcom/google/a/e/a/a;->b:Lcom/google/a/c/b;

    .line 1406
    iget v1, v1, Lcom/google/a/c/b;->b:I

    .line 1075
    iget-object v2, v0, Lcom/google/a/e/a/a;->b:Lcom/google/a/c/b;

    .line 2399
    iget v2, v2, Lcom/google/a/c/b;->a:I

    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1077
    sget-object v4, Lcom/google/a/e/a/a;->a:[[I

    aget-object v4, v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    .line 1079
    aget v6, v4, v5

    if-ltz v6, :cond_0

    .line 1080
    iget-object v8, v0, Lcom/google/a/e/a/a;->b:Lcom/google/a/c/b;

    invoke-virtual {v8, v5, v3}, Lcom/google/a/c/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1081
    div-int/lit8 v8, v6, 0x6

    aget-byte v9, p1, v8

    rem-int/lit8 v6, v6, 0x6

    rsub-int/lit8 v6, v6, 0x5

    const/4 v10, 0x1

    shl-int v6, v10, v6

    int-to-byte v6, v6

    or-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, p1, v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 57
    invoke-direct/range {v1 .. v6}, Lcom/google/a/e/a/c;->a([BIIII)V

    .line 58
    aget-byte v0, p1, v7

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_0

    .line 74
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p1

    throw p1

    :pswitch_0
    const/16 v3, 0x14

    const/16 v4, 0x44

    const/16 v5, 0x38

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 69
    invoke-direct/range {v1 .. v6}, Lcom/google/a/e/a/c;->a([BIIII)V

    const/4 v6, 0x2

    .line 70
    invoke-direct/range {v1 .. v6}, Lcom/google/a/e/a/c;->a([BIIII)V

    const/16 v1, 0x4e

    .line 71
    new-array v1, v1, [B

    goto :goto_2

    :pswitch_1
    const/16 v3, 0x14

    const/16 v4, 0x54

    const/16 v5, 0x28

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 64
    invoke-direct/range {v1 .. v6}, Lcom/google/a/e/a/c;->a([BIIII)V

    const/4 v6, 0x2

    .line 65
    invoke-direct/range {v1 .. v6}, Lcom/google/a/e/a/c;->a([BIIII)V

    const/16 v1, 0x5e

    .line 66
    new-array v1, v1, [B

    :goto_2
    const/16 v2, 0xa

    .line 77
    invoke-static {p1, v7, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x14

    .line 78
    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    invoke-static {v1, v0}, Lcom/google/a/e/a/b;->a([BI)Lcom/google/a/c/e;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

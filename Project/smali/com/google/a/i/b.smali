.class public final Lcom/google/a/i/b;
.super Ljava/lang/Object;
.source "QRCodeWriter.java"

# interfaces
.implements Lcom/google/a/v;


# static fields
.field private static final a:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/a/i/c/f;III)Lcom/google/a/c/b;
    .locals 9

    .line 1058
    iget-object p0, p0, Lcom/google/a/i/c/f;->f:Lcom/google/a/i/c/b;

    if-nez p0, :cond_0

    .line 87
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 2044
    :cond_0
    iget v0, p0, Lcom/google/a/i/c/b;->b:I

    .line 3040
    iget v1, p0, Lcom/google/a/i/c/b;->c:I

    const/4 v2, 0x1

    shl-int/2addr p3, v2

    add-int v3, v0, p3

    add-int/2addr p3, v1

    .line 93
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 94
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 96
    div-int v3, p1, v3

    div-int p3, p2, p3

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    mul-int v3, v0, p3

    sub-int v3, p1, v3

    .line 101
    div-int/lit8 v3, v3, 0x2

    mul-int v4, v1, p3

    sub-int v4, p2, v4

    .line 102
    div-int/lit8 v4, v4, 0x2

    .line 104
    new-instance v5, Lcom/google/a/c/b;

    invoke-direct {v5, p1, p2}, Lcom/google/a/c/b;-><init>(II)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_3

    move v7, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_2

    .line 109
    invoke-virtual {p0, v6, p2}, Lcom/google/a/i/c/b;->a(II)B

    move-result v8

    if-ne v8, v2, :cond_1

    .line 110
    invoke-virtual {v5, v7, v4, p3, p3}, Lcom/google/a/c/b;->a(IIII)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, p3

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v4, p3

    goto :goto_0

    :cond_3
    return-object v5
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/a/a;II)Lcom/google/a/c/b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 44
    invoke-virtual/range {v0 .. v5}, Lcom/google/a/i/b;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/a/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/a/g;",
            "*>;)",
            "Lcom/google/a/c/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_0
    sget-object v0, Lcom/google/a/a;->l:Lcom/google/a/a;

    if-eq p2, v0, :cond_1

    .line 59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Can only encode QR_CODE, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ltz p3, :cond_5

    if-gez p4, :cond_2

    goto :goto_0

    .line 67
    :cond_2
    sget-object p2, Lcom/google/a/i/a/f;->a:Lcom/google/a/i/a/f;

    const/4 v0, 0x4

    if-eqz p5, :cond_4

    .line 70
    sget-object v1, Lcom/google/a/g;->a:Lcom/google/a/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    sget-object p2, Lcom/google/a/g;->a:Lcom/google/a/g;

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/a/i/a/f;->valueOf(Ljava/lang/String;)Lcom/google/a/i/a/f;

    move-result-object p2

    .line 73
    :cond_3
    sget-object v1, Lcom/google/a/g;->f:Lcom/google/a/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    sget-object v0, Lcom/google/a/g;->f:Lcom/google/a/g;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 78
    :cond_4
    invoke-static {p1, p2, p5}, Lcom/google/a/i/c/c;->a(Ljava/lang/String;Lcom/google/a/i/a/f;Ljava/util/Map;)Lcom/google/a/i/c/f;

    move-result-object p1

    .line 79
    invoke-static {p1, p3, p4, v0}, Lcom/google/a/i/b;->a(Lcom/google/a/i/c/f;III)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1

    .line 63
    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Requested dimensions are too small: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class public final Lcom/b/b/m;
.super Ljava/lang/Object;
.source "InflaterSource.java"

# interfaces
.implements Lcom/b/b/x;


# instance fields
.field private final a:Lcom/b/b/h;

.field private final b:Ljava/util/zip/Inflater;

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(Lcom/b/b/h;Ljava/util/zip/Inflater;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    .line 50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inflater == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_1
    iput-object p1, p0, Lcom/b/b/m;->a:Lcom/b/b/h;

    .line 52
    iput-object p2, p0, Lcom/b/b/m;->b:Ljava/util/zip/Inflater;

    return-void
.end method

.method private b()V
    .locals 4

    .line 112
    iget v0, p0, Lcom/b/b/m;->c:I

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget v0, p0, Lcom/b/b/m;->c:I

    iget-object v1, p0, Lcom/b/b/m;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    .line 114
    iget v1, p0, Lcom/b/b/m;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/b/b/m;->c:I

    .line 115
    iget-object v1, p0, Lcom/b/b/m;->a:Lcom/b/b/h;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/b/b/h;->f(J)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/b/f;J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_0
    iget-boolean v2, p0, Lcom/b/b/m;->d:Z

    if-eqz v2, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    cmp-long v2, p2, v0

    if-nez v2, :cond_2

    return-wide v0

    .line 1095
    :cond_2
    iget-object p2, p0, Lcom/b/b/m;->b:Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_3

    goto :goto_0

    .line 1097
    :cond_3
    invoke-direct {p0}, Lcom/b/b/m;->b()V

    .line 1098
    iget-object p2, p0, Lcom/b/b/m;->b:Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result p2

    if-eqz p2, :cond_4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1101
    :cond_4
    iget-object p2, p0, Lcom/b/b/m;->a:Lcom/b/b/h;

    invoke-interface {p2}, Lcom/b/b/h;->d()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    .line 1104
    :cond_5
    iget-object p2, p0, Lcom/b/b/m;->a:Lcom/b/b/h;

    invoke-interface {p2}, Lcom/b/b/h;->c()Lcom/b/b/f;

    move-result-object p2

    iget-object p2, p2, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 1105
    iget v1, p2, Lcom/b/b/t;->c:I

    iget v2, p2, Lcom/b/b/t;->b:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/b/b/m;->c:I

    .line 1106
    iget-object v1, p0, Lcom/b/b/m;->b:Ljava/util/zip/Inflater;

    iget-object v2, p2, Lcom/b/b/t;->a:[B

    iget p2, p2, Lcom/b/b/t;->b:I

    iget v3, p0, Lcom/b/b/m;->c:I

    invoke-virtual {v1, v2, p2, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 66
    :goto_0
    :try_start_0
    invoke-virtual {p1, p3}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object p2

    .line 67
    iget-object p3, p0, Lcom/b/b/m;->b:Ljava/util/zip/Inflater;

    iget-object v1, p2, Lcom/b/b/t;->a:[B

    iget v2, p2, Lcom/b/b/t;->c:I

    iget v3, p2, Lcom/b/b/t;->c:I

    rsub-int v3, v3, 0x2000

    invoke-virtual {p3, v1, v2, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result p3

    if-lez p3, :cond_6

    .line 69
    iget v0, p2, Lcom/b/b/t;->c:I

    add-int/2addr v0, p3

    iput v0, p2, Lcom/b/b/t;->c:I

    .line 70
    iget-wide v0, p1, Lcom/b/b/f;->b:J

    int-to-long p2, p3

    add-long v2, v0, p2

    iput-wide v2, p1, Lcom/b/b/f;->b:J

    return-wide p2

    .line 73
    :cond_6
    iget-object p3, p0, Lcom/b/b/m;->b:Ljava/util/zip/Inflater;

    invoke-virtual {p3}, Ljava/util/zip/Inflater;->finished()Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/b/b/m;->b:Ljava/util/zip/Inflater;

    invoke-virtual {p3}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_2

    .line 82
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/b/b/m;->b()V

    .line 75
    iget p3, p2, Lcom/b/b/t;->b:I

    iget v0, p2, Lcom/b/b/t;->c:I

    if-ne p3, v0, :cond_9

    .line 77
    invoke-virtual {p2}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object p3

    iput-object p3, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 78
    invoke-static {p2}, Lcom/b/b/u;->a(Lcom/b/b/t;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    const-wide/16 p1, -0x1

    return-wide p1

    :catch_0
    move-exception p1

    .line 84
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final a()Lcom/b/b/y;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/b/b/m;->a:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->a()Lcom/b/b/y;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/b/b/m;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/b/b/m;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/b/b/m;->d:Z

    .line 126
    iget-object v0, p0, Lcom/b/b/m;->a:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->close()V

    return-void
.end method

.class final Lcom/b/b/p;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/b/b/x;


# instance fields
.field final synthetic a:Lcom/b/b/y;

.field final synthetic b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/b/b/y;Ljava/io/InputStream;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/b/b/p;->a:Lcom/b/b/y;

    iput-object p2, p0, Lcom/b/b/p;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/b/f;J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 132
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    return-wide v0

    .line 135
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/b/b/p;->a:Lcom/b/b/y;

    invoke-virtual {v0}, Lcom/b/b/y;->f_()V

    const/4 v0, 0x1

    .line 136
    invoke-virtual {p1, v0}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object v0

    .line 137
    iget v1, v0, Lcom/b/b/t;->c:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    .line 138
    iget-object p3, p0, Lcom/b/b/p;->b:Ljava/io/InputStream;

    iget-object v1, v0, Lcom/b/b/t;->a:[B

    iget v2, v0, Lcom/b/b/t;->c:I

    invoke-virtual {p3, v1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    const-wide/16 p1, -0x1

    return-wide p1

    .line 140
    :cond_2
    iget p3, v0, Lcom/b/b/t;->c:I

    add-int/2addr p3, p2

    iput p3, v0, Lcom/b/b/t;->c:I

    .line 141
    iget-wide v0, p1, Lcom/b/b/f;->b:J

    int-to-long p2, p2

    add-long v2, v0, p2

    iput-wide v2, p1, Lcom/b/b/f;->b:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p2

    :catch_0
    move-exception p1

    .line 144
    invoke-static {p1}, Lcom/b/b/n;->a(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 145
    :cond_3
    throw p1
.end method

.method public final a()Lcom/b/b/y;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/b/b/p;->a:Lcom/b/b/y;

    return-object v0
.end method

.method public final close()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/b/b/p;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/b/p;->b:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/b/a/a/d/e;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lcom/b/b/w;


# instance fields
.field final synthetic a:Lcom/b/a/a/d/a;

.field private final b:Lcom/b/b/k;

.field private c:Z

.field private d:J


# direct methods
.method constructor <init>(Lcom/b/a/a/d/a;J)V
    .locals 1

    .line 271
    iput-object p1, p0, Lcom/b/a/a/d/e;->a:Lcom/b/a/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance p1, Lcom/b/b/k;

    iget-object v0, p0, Lcom/b/a/a/d/e;->a:Lcom/b/a/a/d/a;

    iget-object v0, v0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    invoke-interface {v0}, Lcom/b/b/g;->a()Lcom/b/b/y;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/b/b/k;-><init>(Lcom/b/b/y;)V

    iput-object p1, p0, Lcom/b/a/a/d/e;->b:Lcom/b/b/k;

    .line 272
    iput-wide p2, p0, Lcom/b/a/a/d/e;->d:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/b/y;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/b/a/a/d/e;->b:Lcom/b/b/k;

    return-object v0
.end method

.method public final a_(Lcom/b/b/f;J)V
    .locals 4

    .line 280
    iget-boolean v0, p0, Lcom/b/a/a/d/e;->c:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/b/b/f;->b()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lcom/b/a/a/c;->a(JJ)V

    .line 282
    iget-wide v0, p0, Lcom/b/a/a/d/e;->d:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 283
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/b/a/a/d/e;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/d/e;->a:Lcom/b/a/a/d/a;

    iget-object v0, v0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/b/b/g;->a_(Lcom/b/b/f;J)V

    .line 287
    iget-wide v0, p0, Lcom/b/a/a/d/e;->d:J

    sub-long v2, v0, p2

    iput-wide v2, p0, Lcom/b/a/a/d/e;->d:J

    return-void
.end method

.method public final close()V
    .locals 5

    .line 296
    iget-boolean v0, p0, Lcom/b/a/a/d/e;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 297
    iput-boolean v0, p0, Lcom/b/a/a/d/e;->c:Z

    .line 298
    iget-wide v0, p0, Lcom/b/a/a/d/e;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/d/e;->b:Lcom/b/b/k;

    invoke-static {v0}, Lcom/b/a/a/d/a;->a(Lcom/b/b/k;)V

    .line 300
    iget-object v0, p0, Lcom/b/a/a/d/e;->a:Lcom/b/a/a/d/a;

    const/4 v1, 0x3

    iput v1, v0, Lcom/b/a/a/d/a;->e:I

    return-void
.end method

.method public final flush()V
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/b/a/a/d/e;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/d/e;->a:Lcom/b/a/a/d/a;

    iget-object v0, v0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    invoke-interface {v0}, Lcom/b/b/g;->flush()V

    return-void
.end method

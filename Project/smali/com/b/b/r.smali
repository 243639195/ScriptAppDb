.class final Lcom/b/b/r;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lcom/b/b/g;


# instance fields
.field public final a:Lcom/b/b/f;

.field public final b:Lcom/b/b/w;

.field c:Z


# direct methods
.method constructor <init>(Lcom/b/b/w;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/b/b/f;

    invoke-direct {v0}, Lcom/b/b/f;-><init>()V

    iput-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    if-nez p1, :cond_0

    .line 29
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/b/b/r;->b:Lcom/b/b/w;

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/b/y;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/b/b/r;->b:Lcom/b/b/w;

    invoke-interface {v0}, Lcom/b/b/w;->a()Lcom/b/b/y;

    move-result-object v0

    return-object v0
.end method

.method public final a_(Lcom/b/b/f;J)V
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/b/f;->a_(Lcom/b/b/f;J)V

    .line 41
    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/b/b/g;
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1}, Lcom/b/b/f;->a(Ljava/lang/String;)Lcom/b/b/f;

    .line 53
    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    move-result-object p1

    return-object p1
.end method

.method public final b([B)Lcom/b/b/g;
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1}, Lcom/b/b/f;->a([B)Lcom/b/b/f;

    .line 85
    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    move-result-object p1

    return-object p1
.end method

.method public final b([BII)Lcom/b/b/g;
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/b/f;->a([BII)Lcom/b/b/f;

    .line 91
    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/b/b/f;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    return-object v0
.end method

.method public final close()V
    .locals 6

    .line 222
    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    iget-wide v1, v1, Lcom/b/b/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 229
    iget-object v1, p0, Lcom/b/b/r;->b:Lcom/b/b/w;

    iget-object v2, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    iget-object v3, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    iget-wide v3, v3, Lcom/b/b/f;->b:J

    invoke-interface {v1, v2, v3, v4}, Lcom/b/b/w;->a_(Lcom/b/b/f;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 236
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/b/b/r;->b:Lcom/b/b/w;

    invoke-interface {v1}, Lcom/b/b/w;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 240
    iput-boolean v1, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_3

    .line 242
    invoke-static {v0}, Lcom/b/b/aa;->a(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final f(I)Lcom/b/b/g;
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1}, Lcom/b/b/f;->d(I)Lcom/b/b/f;

    .line 135
    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    move-result-object p1

    return-object p1
.end method

.method public final flush()V
    .locals 5

    .line 214
    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    iget-wide v0, v0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 216
    iget-object v0, p0, Lcom/b/b/r;->b:Lcom/b/b/w;

    iget-object v1, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    iget-object v2, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    iget-wide v2, v2, Lcom/b/b/f;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/b/b/w;->a_(Lcom/b/b/f;J)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/b/b/r;->b:Lcom/b/b/w;

    invoke-interface {v0}, Lcom/b/b/w;->flush()V

    return-void
.end method

.method public final g(I)Lcom/b/b/g;
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1}, Lcom/b/b/f;->c(I)Lcom/b/b/f;

    .line 123
    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    move-result-object p1

    return-object p1
.end method

.method public final h(I)Lcom/b/b/g;
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    .line 117
    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    move-result-object p1

    return-object p1
.end method

.method public final i(J)Lcom/b/b/g;
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/b/b/f;->h(J)Lcom/b/b/f;

    .line 165
    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    move-result-object p1

    return-object p1
.end method

.method public final j(J)Lcom/b/b/g;
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/b/b/f;->g(J)Lcom/b/b/f;

    .line 159
    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    move-result-object p1

    return-object p1
.end method

.method public final p()Lcom/b/b/g;
    .locals 9

    .line 169
    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    .line 1263
    iget-wide v1, v0, Lcom/b/b/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    move-wide v1, v3

    goto :goto_0

    .line 1267
    :cond_1
    iget-object v0, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v0, v0, Lcom/b/b/t;->g:Lcom/b/b/t;

    .line 1268
    iget v5, v0, Lcom/b/b/t;->c:I

    const/16 v6, 0x2000

    if-ge v5, v6, :cond_2

    iget-boolean v5, v0, Lcom/b/b/t;->e:Z

    if-eqz v5, :cond_2

    .line 1269
    iget v5, v0, Lcom/b/b/t;->c:I

    iget v0, v0, Lcom/b/b/t;->b:I

    sub-int/2addr v5, v0

    int-to-long v5, v5

    sub-long v7, v1, v5

    move-wide v1, v7

    :cond_2
    :goto_0
    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/b/b/r;->b:Lcom/b/b/w;

    iget-object v3, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-interface {v0, v3, v1, v2}, Lcom/b/b/w;->a_(Lcom/b/b/f;J)V

    :cond_3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/b/r;->b:Lcom/b/b/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

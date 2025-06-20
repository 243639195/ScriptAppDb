.class final Lcom/b/b/b;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lcom/b/b/w;


# instance fields
.field final synthetic a:Lcom/b/b/w;

.field final synthetic b:Lcom/b/b/a;


# direct methods
.method constructor <init>(Lcom/b/b/a;Lcom/b/b/w;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/b/b/b;->b:Lcom/b/b/a;

    iput-object p2, p0, Lcom/b/b/b;->a:Lcom/b/b/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/b/y;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/b/b/b;->b:Lcom/b/b/a;

    return-object v0
.end method

.method public final a_(Lcom/b/b/f;J)V
    .locals 6

    .line 161
    iget-wide v0, p1, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/b/b/aa;->a(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    .line 166
    iget-object v2, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    :goto_1
    const-wide/32 v2, 0x10000

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 167
    iget-object v2, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v2, v2, Lcom/b/b/t;->c:I

    iget-object v3, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v3, v3, Lcom/b/b/t;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long v4, v0, v2

    cmp-long v0, v4, p2

    if-ltz v0, :cond_0

    move-wide v0, p2

    goto :goto_2

    :cond_0
    move-wide v0, v4

    goto :goto_1

    .line 177
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/b/b/b;->b:Lcom/b/b/a;

    invoke-virtual {v2}, Lcom/b/b/a;->c()V

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/b/b/b;->a:Lcom/b/b/w;

    invoke-interface {v2, p1, v0, v1}, Lcom/b/b/w;->a_(Lcom/b/b/f;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    sub-long v2, p2, v0

    .line 185
    iget-object p2, p0, Lcom/b/b/b;->b:Lcom/b/b/a;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/b/b/a;->a(Z)V

    move-wide p2, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 183
    :try_start_1
    iget-object p2, p0, Lcom/b/b/b;->b:Lcom/b/b/a;

    invoke-virtual {p2, p1}, Lcom/b/b/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :goto_3
    iget-object p2, p0, Lcom/b/b/b;->b:Lcom/b/b/a;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/b/b/a;->a(Z)V

    throw p1

    :cond_2
    return-void
.end method

.method public final close()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/b/b/b;->b:Lcom/b/b/a;

    invoke-virtual {v0}, Lcom/b/b/a;->c()V

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/b/b/b;->a:Lcom/b/b/w;

    invoke-interface {v0}, Lcom/b/b/w;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object v0, p0, Lcom/b/b/b;->b:Lcom/b/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b/b/a;->a(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 210
    :try_start_1
    iget-object v1, p0, Lcom/b/b/b;->b:Lcom/b/b/a;

    invoke-virtual {v1, v0}, Lcom/b/b/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/b/b/b;->b:Lcom/b/b/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/b/b/a;->a(Z)V

    throw v0
.end method

.method public final flush()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/b/b/b;->b:Lcom/b/b/a;

    invoke-virtual {v0}, Lcom/b/b/a;->c()V

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/b/b/b;->a:Lcom/b/b/w;

    invoke-interface {v0}, Lcom/b/b/w;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    iget-object v0, p0, Lcom/b/b/b;->b:Lcom/b/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b/b/a;->a(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 197
    :try_start_1
    iget-object v1, p0, Lcom/b/b/b;->b:Lcom/b/b/a;

    invoke-virtual {v1, v0}, Lcom/b/b/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/b/b/b;->b:Lcom/b/b/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/b/b/a;->a(Z)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/b/b;->a:Lcom/b/b/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/b/a/an;
.super Lcom/b/a/a/b;
.source "RealCall.java"


# instance fields
.field final synthetic a:Lcom/b/a/am;

.field private final c:Lcom/b/a/h;


# direct methods
.method constructor <init>(Lcom/b/a/am;Lcom/b/a/h;)V
    .locals 3

    .line 109
    iput-object p1, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    .line 110
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/b/a/am;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iput-object p2, p0, Lcom/b/a/an;->c:Lcom/b/a/h;

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    iget-object v0, v0, Lcom/b/a/am;->c:Lcom/b/a/ao;

    .line 1045
    iget-object v0, v0, Lcom/b/a/ao;->a:Lcom/b/a/ac;

    .line 1481
    iget-object v0, v0, Lcom/b/a/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final b()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    invoke-virtual {v2}, Lcom/b/a/am;->c()Lcom/b/a/as;

    move-result-object v2

    .line 130
    iget-object v3, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    iget-object v3, v3, Lcom/b/a/am;->b:Lcom/b/a/a/c/k;

    invoke-virtual {v3}, Lcom/b/a/a/c/k;->a()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 132
    :try_start_1
    iget-object v1, p0, Lcom/b/a/an;->c:Lcom/b/a/h;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/b/a/h;->a(Ljava/io/IOException;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/b/a/an;->c:Lcom/b/a/h;

    invoke-interface {v1, v2}, Lcom/b/a/h;->a(Lcom/b/a/as;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    iget-object v0, v0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    .line 2374
    iget-object v0, v0, Lcom/b/a/ai;->c:Lcom/b/a/u;

    .line 145
    :goto_1
    invoke-virtual {v0, p0}, Lcom/b/a/u;->b(Lcom/b/a/an;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 140
    :try_start_2
    invoke-static {}, Lcom/b/a/a/g/h;->b()Lcom/b/a/a/g/h;

    move-result-object v0

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Callback failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    .line 3155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4094
    iget-object v6, v4, Lcom/b/a/am;->b:Lcom/b/a/a/c/k;

    invoke-virtual {v6}, Lcom/b/a/a/c/k;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "canceled "

    goto :goto_3

    :cond_1
    const-string v6, ""

    .line 3155
    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/b/a/am;->d:Z

    if-eqz v6, :cond_2

    const-string v6, "web socket"

    goto :goto_4

    :cond_2
    const-string v6, "call"

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3157
    invoke-virtual {v4}, Lcom/b/a/am;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/b/a/a/g/h;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/b/a/an;->c:Lcom/b/a/h;

    invoke-interface {v0, v1}, Lcom/b/a/h;->a(Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :goto_5
    iget-object v0, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    iget-object v0, v0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    .line 4374
    iget-object v0, v0, Lcom/b/a/ai;->c:Lcom/b/a/u;

    goto :goto_1

    .line 145
    :goto_6
    iget-object v1, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    iget-object v1, v1, Lcom/b/a/am;->a:Lcom/b/a/ai;

    .line 5374
    iget-object v1, v1, Lcom/b/a/ai;->c:Lcom/b/a/u;

    .line 145
    invoke-virtual {v1, p0}, Lcom/b/a/u;->b(Lcom/b/a/an;)V

    throw v0
.end method

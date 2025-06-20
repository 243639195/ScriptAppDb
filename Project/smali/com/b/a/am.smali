.class final Lcom/b/a/am;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lcom/b/a/g;


# instance fields
.field final a:Lcom/b/a/ai;

.field final b:Lcom/b/a/a/c/k;

.field final c:Lcom/b/a/ao;

.field final d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lcom/b/a/ai;Lcom/b/a/ao;Z)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    .line 46
    iput-object p2, p0, Lcom/b/a/am;->c:Lcom/b/a/ao;

    .line 47
    iput-boolean p3, p0, Lcom/b/a/am;->d:Z

    .line 48
    new-instance p2, Lcom/b/a/a/c/k;

    invoke-direct {p2, p1, p3}, Lcom/b/a/a/c/k;-><init>(Lcom/b/a/ai;Z)V

    iput-object p2, p0, Lcom/b/a/am;->b:Lcom/b/a/a/c/k;

    return-void
.end method

.method private d()V
    .locals 2

    .line 72
    invoke-static {}, Lcom/b/a/a/g/h;->b()Lcom/b/a/a/g/h;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/b/a/am;->b:Lcom/b/a/a/c/k;

    invoke-virtual {v1, v0}, Lcom/b/a/a/c/k;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/as;
    .locals 2

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/am;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/b/a/am;->e:Z

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    invoke-direct {p0}, Lcom/b/a/am;->d()V

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    .line 1374
    iget-object v0, v0, Lcom/b/a/ai;->c:Lcom/b/a/u;

    .line 62
    invoke-virtual {v0, p0}, Lcom/b/a/u;->a(Lcom/b/a/am;)V

    .line 63
    invoke-virtual {p0}, Lcom/b/a/am;->c()Lcom/b/a/as;

    move-result-object v0

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    .line 2374
    iget-object v1, v1, Lcom/b/a/ai;->c:Lcom/b/a/u;

    .line 67
    invoke-virtual {v1, p0}, Lcom/b/a/u;->b(Lcom/b/a/am;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    .line 3374
    iget-object v1, v1, Lcom/b/a/ai;->c:Lcom/b/a/u;

    .line 67
    invoke-virtual {v1, p0}, Lcom/b/a/u;->b(Lcom/b/a/am;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 59
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final a(Lcom/b/a/h;)V
    .locals 2

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/am;->e:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/b/a/am;->e:Z

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-direct {p0}, Lcom/b/a/am;->d()V

    .line 82
    iget-object v0, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    .line 4374
    iget-object v0, v0, Lcom/b/a/ai;->c:Lcom/b/a/u;

    .line 82
    new-instance v1, Lcom/b/a/an;

    invoke-direct {v1, p0, p1}, Lcom/b/a/an;-><init>(Lcom/b/a/am;Lcom/b/a/h;)V

    invoke-virtual {v0, v1}, Lcom/b/a/u;->a(Lcom/b/a/an;)V

    return-void

    :catchall_0
    move-exception p1

    .line 80
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final b()Ljava/lang/String;
    .locals 8

    .line 161
    iget-object v0, p0, Lcom/b/a/am;->c:Lcom/b/a/ao;

    .line 5045
    iget-object v0, v0, Lcom/b/a/ao;->a:Lcom/b/a/ac;

    const-string v1, "/..."

    .line 5850
    invoke-virtual {v0, v1}, Lcom/b/a/ac;->d(Ljava/lang/String;)Lcom/b/a/ad;

    move-result-object v0

    const-string v1, ""

    const-string v2, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 5977
    invoke-static/range {v1 .. v6}, Lcom/b/a/ac;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->b:Ljava/lang/String;

    const-string v2, ""

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 5990
    invoke-static/range {v2 .. v7}, Lcom/b/a/ac;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->c:Ljava/lang/String;

    .line 5853
    invoke-virtual {v0}, Lcom/b/a/ad;->b()Lcom/b/a/ac;

    move-result-object v0

    .line 5854
    invoke-virtual {v0}, Lcom/b/a/ac;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final c()Lcom/b/a/as;
    .locals 8

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v0, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    .line 6391
    iget-object v0, v0, Lcom/b/a/ai;->g:Ljava/util/List;

    .line 167
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object v0, p0, Lcom/b/a/am;->b:Lcom/b/a/a/c/k;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v0, Lcom/b/a/a/c/a;

    iget-object v2, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    .line 7318
    iget-object v2, v2, Lcom/b/a/ai;->j:Lcom/b/a/s;

    .line 169
    invoke-direct {v0, v2}, Lcom/b/a/a/c/a;-><init>(Lcom/b/a/s;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Lcom/b/a/a/a/a;

    iget-object v2, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    .line 7326
    iget-object v3, v2, Lcom/b/a/ai;->k:Lcom/b/a/d;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/b/a/ai;->k:Lcom/b/a/d;

    iget-object v2, v2, Lcom/b/a/d;->a:Lcom/b/a/a/a/i;

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/b/a/ai;->l:Lcom/b/a/a/a/i;

    .line 170
    :goto_0
    invoke-direct {v0, v2}, Lcom/b/a/a/a/a;-><init>(Lcom/b/a/a/a/i;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Lcom/b/a/a/b/a;

    iget-object v2, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    invoke-direct {v0, v2}, Lcom/b/a/a/b/a;-><init>(Lcom/b/a/ai;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-boolean v0, p0, Lcom/b/a/am;->d:Z

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    .line 7400
    iget-object v0, v0, Lcom/b/a/ai;->h:Ljava/util/List;

    .line 173
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    :cond_1
    new-instance v0, Lcom/b/a/a/c/b;

    iget-boolean v2, p0, Lcom/b/a/am;->d:Z

    invoke-direct {v0, v2}, Lcom/b/a/a/c/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v7, Lcom/b/a/a/c/h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/b/a/am;->c:Lcom/b/a/ao;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/b/a/a/c/h;-><init>(Ljava/util/List;Lcom/b/a/a/b/g;Lcom/b/a/a/c/c;Lcom/b/a/m;ILcom/b/a/ao;)V

    .line 179
    iget-object v0, p0, Lcom/b/a/am;->c:Lcom/b/a/ao;

    invoke-interface {v7, v0}, Lcom/b/a/ag;->a(Lcom/b/a/ao;)Lcom/b/a/as;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 4

    .line 8099
    new-instance v0, Lcom/b/a/am;

    iget-object v1, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    iget-object v2, p0, Lcom/b/a/am;->c:Lcom/b/a/ao;

    iget-boolean v3, p0, Lcom/b/a/am;->d:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/am;-><init>(Lcom/b/a/ai;Lcom/b/a/ao;Z)V

    return-object v0
.end method

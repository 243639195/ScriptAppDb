.class public final Lcom/google/a/a/b;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/a/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/c;)Lcom/google/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/b;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/google/a/a/b/a;

    invoke-virtual {p1}, Lcom/google/a/c;->c()Lcom/google/a/c/b;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/a/a/b/a;-><init>(Lcom/google/a/c/b;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 65
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/a/a/b/a;->a(Z)Lcom/google/a/a/a;

    move-result-object p1

    .line 1043
    iget-object v2, p1, Lcom/google/a/c/g;->e:[Lcom/google/a/t;
    :try_end_0
    .catch Lcom/google/a/m; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/a/h; {:try_start_0 .. :try_end_0} :catch_2

    .line 67
    :try_start_1
    new-instance v3, Lcom/google/a/a/a/a;

    invoke-direct {v3}, Lcom/google/a/a/a/a;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/a/a/a/a;->a(Lcom/google/a/a/a;)Lcom/google/a/c/e;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/a/m; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/a/h; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v2

    move-object v2, v1

    move-object v1, p1

    move-object p1, v2

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v2, v1

    :goto_0
    move-object v3, v2

    move-object v2, p1

    move-object p1, v1

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v2, v1

    :goto_1
    move-object v3, v2

    move-object v2, v1

    :goto_2
    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 75
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/a/a/b/a;->a(Z)Lcom/google/a/a/a;

    move-result-object v0

    .line 2043
    iget-object v3, v0, Lcom/google/a/c/g;->e:[Lcom/google/a/t;

    .line 77
    new-instance v1, Lcom/google/a/a/a/a;

    invoke-direct {v1}, Lcom/google/a/a/a/a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/a/a/a/a;->a(Lcom/google/a/a/a;)Lcom/google/a/c/e;

    move-result-object v1
    :try_end_2
    .catch Lcom/google/a/m; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/a/h; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :catch_4
    move-exception p2

    if-eqz p1, :cond_0

    .line 80
    throw p1

    :cond_0
    if-eqz v2, :cond_1

    .line 83
    throw v2

    .line 85
    :cond_1
    throw p2

    :cond_2
    :goto_3
    move-object v6, v3

    if-eqz p2, :cond_3

    .line 90
    sget-object p1, Lcom/google/a/e;->j:Lcom/google/a/e;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_3
    new-instance p1, Lcom/google/a/r;

    .line 2090
    iget-object v3, v1, Lcom/google/a/c/e;->c:Ljava/lang/String;

    .line 3067
    iget-object v4, v1, Lcom/google/a/c/e;->a:[B

    .line 3075
    iget v5, v1, Lcom/google/a/c/e;->b:I

    .line 100
    sget-object v7, Lcom/google/a/a;->a:Lcom/google/a/a;

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/a/r;-><init>(Ljava/lang/String;[BI[Lcom/google/a/t;Lcom/google/a/a;J)V

    .line 3097
    iget-object p2, v1, Lcom/google/a/c/e;->d:Ljava/util/List;

    if-eqz p2, :cond_4

    .line 107
    sget-object v0, Lcom/google/a/s;->c:Lcom/google/a/s;

    invoke-virtual {p1, v0, p2}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    .line 3104
    :cond_4
    iget-object p2, v1, Lcom/google/a/c/e;->e:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 111
    sget-object v0, Lcom/google/a/s;->d:Lcom/google/a/s;

    invoke-virtual {p1, v0, p2}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    :cond_5
    return-object p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

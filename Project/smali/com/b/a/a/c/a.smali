.class public final Lcom/b/a/a/c/a;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Lcom/b/a/af;


# instance fields
.field private final a:Lcom/b/a/s;


# direct methods
.method public constructor <init>(Lcom/b/a/s;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/b/a/a/c/a;->a:Lcom/b/a/s;

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/ag;)Lcom/b/a/as;
    .locals 10

    .line 48
    invoke-interface {p1}, Lcom/b/a/ag;->a()Lcom/b/a/ao;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/b/a/ao;->e()Lcom/b/a/ap;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lcom/b/a/ao;->d()Lcom/b/a/aq;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 53
    invoke-virtual {v2}, Lcom/b/a/aq;->a()Lcom/b/a/ah;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "Content-Type"

    .line 55
    invoke-virtual {v3}, Lcom/b/a/ah;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    .line 58
    :cond_0
    invoke-virtual {v2}, Lcom/b/a/aq;->b()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    const-string v4, "Content-Length"

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    const-string v2, "Transfer-Encoding"

    .line 61
    invoke-virtual {v1, v2}, Lcom/b/a/ap;->b(Ljava/lang/String;)Lcom/b/a/ap;

    goto :goto_0

    :cond_1
    const-string v2, "Transfer-Encoding"

    const-string v3, "chunked"

    .line 63
    invoke-virtual {v1, v2, v3}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    const-string v2, "Content-Length"

    .line 64
    invoke-virtual {v1, v2}, Lcom/b/a/ap;->b(Ljava/lang/String;)Lcom/b/a/ap;

    :cond_2
    :goto_0
    const-string v2, "Host"

    .line 68
    invoke-virtual {v0, v2}, Lcom/b/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    const-string v2, "Host"

    .line 69
    invoke-virtual {v0}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/b/a/a/c;->a(Lcom/b/a/ac;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    :cond_3
    const-string v2, "Connection"

    .line 72
    invoke-virtual {v0, v2}, Lcom/b/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "Connection"

    const-string v4, "Keep-Alive"

    .line 73
    invoke-virtual {v1, v2, v4}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    :cond_4
    const-string v2, "Accept-Encoding"

    .line 79
    invoke-virtual {v0, v2}, Lcom/b/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "Range"

    invoke-virtual {v0, v2}, Lcom/b/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "Accept-Encoding"

    const-string v4, "gzip"

    .line 81
    invoke-virtual {v1, v2, v4}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 84
    :goto_1
    iget-object v4, p0, Lcom/b/a/a/c/a;->a:Lcom/b/a/s;

    invoke-interface {v4}, Lcom/b/a/s;->b()Ljava/util/List;

    move-result-object v4

    .line 85
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "Cookie"

    .line 1117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1118
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_2
    if-ge v3, v7, :cond_7

    if-lez v3, :cond_6

    const-string v8, "; "

    .line 1120
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    :cond_6
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/b/a/r;

    .line 1123
    invoke-virtual {v8}, Lcom/b/a/r;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x3d

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/b/a/r;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1125
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {v1, v5, v3}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    :cond_8
    const-string v3, "User-Agent"

    .line 89
    invoke-virtual {v0, v3}, Lcom/b/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    const-string v3, "User-Agent"

    const-string v4, "okhttp/3.6.0"

    .line 90
    invoke-virtual {v1, v3, v4}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    .line 93
    :cond_9
    invoke-virtual {v1}, Lcom/b/a/ap;->a()Lcom/b/a/ao;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/b/a/ag;->a(Lcom/b/a/ao;)Lcom/b/a/as;

    move-result-object p1

    .line 95
    iget-object v1, p0, Lcom/b/a/a/c/a;->a:Lcom/b/a/s;

    invoke-virtual {v0}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v3

    invoke-virtual {p1}, Lcom/b/a/as;->d()Lcom/b/a/aa;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/b/a/a/c/f;->a(Lcom/b/a/s;Lcom/b/a/ac;Lcom/b/a/aa;)V

    .line 97
    invoke-virtual {p1}, Lcom/b/a/as;->f()Lcom/b/a/at;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v0}, Lcom/b/a/at;->a(Lcom/b/a/ao;)Lcom/b/a/at;

    move-result-object v0

    if-eqz v2, :cond_a

    const-string v1, "gzip"

    const-string v2, "Content-Encoding"

    .line 101
    invoke-virtual {p1, v2}, Lcom/b/a/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 102
    invoke-static {p1}, Lcom/b/a/a/c/f;->b(Lcom/b/a/as;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 103
    new-instance v1, Lcom/b/b/l;

    invoke-virtual {p1}, Lcom/b/a/as;->e()Lcom/b/a/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/au;->c()Lcom/b/b/h;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/b/b/l;-><init>(Lcom/b/b/x;)V

    .line 104
    invoke-virtual {p1}, Lcom/b/a/as;->d()Lcom/b/a/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/aa;->b()Lcom/b/a/ab;

    move-result-object p1

    const-string v2, "Content-Encoding"

    .line 105
    invoke-virtual {p1, v2}, Lcom/b/a/ab;->a(Ljava/lang/String;)Lcom/b/a/ab;

    move-result-object p1

    const-string v2, "Content-Length"

    .line 106
    invoke-virtual {p1, v2}, Lcom/b/a/ab;->a(Ljava/lang/String;)Lcom/b/a/ab;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/b/a/ab;->a()Lcom/b/a/aa;

    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Lcom/b/a/at;->a(Lcom/b/a/aa;)Lcom/b/a/at;

    .line 109
    new-instance v2, Lcom/b/a/a/c/i;

    invoke-static {v1}, Lcom/b/b/n;->a(Lcom/b/b/x;)Lcom/b/b/h;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lcom/b/a/a/c/i;-><init>(Lcom/b/a/aa;Lcom/b/b/h;)V

    invoke-virtual {v0, v2}, Lcom/b/a/at;->a(Lcom/b/a/au;)Lcom/b/a/at;

    .line 112
    :cond_a
    invoke-virtual {v0}, Lcom/b/a/at;->a()Lcom/b/a/as;

    move-result-object p1

    return-object p1
.end method

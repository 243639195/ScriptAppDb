.class public final Lcom/b/a/a/b/f;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# instance fields
.field private final a:Lcom/b/a/a;

.field private final b:Lcom/b/a/a/b/d;

.field private c:Ljava/net/Proxy;

.field private d:Ljava/net/InetSocketAddress;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/aw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/a;Lcom/b/a/a/b/d;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/b/f;->e:Ljava/util/List;

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/b/f;->g:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b/f;->i:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/b/a/a/b/f;->a:Lcom/b/a/a;

    .line 58
    iput-object p2, p0, Lcom/b/a/a/b/f;->b:Lcom/b/a/a/b/d;

    .line 60
    invoke-virtual {p1}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object p2

    invoke-virtual {p1}, Lcom/b/a/a;->h()Ljava/net/Proxy;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1113
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1116
    :cond_0
    iget-object p1, p0, Lcom/b/a/a/b/f;->a:Lcom/b/a/a;

    invoke-virtual {p1}, Lcom/b/a/a;->g()Ljava/net/ProxySelector;

    move-result-object p1

    invoke-virtual {p2}, Lcom/b/a/ac;->a()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1117
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1118
    invoke-static {p1}, Lcom/b/a/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/net/Proxy;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, v0

    .line 1119
    invoke-static {p1}, Lcom/b/a/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/b/a/a/b/f;->e:Ljava/util/List;

    .line 1121
    iput v0, p0, Lcom/b/a/a/b/f;->f:I

    return-void
.end method

.method private a(Ljava/net/Proxy;)V
    .locals 7

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b/f;->g:Ljava/util/List;

    .line 147
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 152
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_1

    .line 153
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_1
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 3186
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3191
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3195
    :cond_2
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 158
    :goto_0
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_2

    .line 148
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/b/a/a/b/f;->a:Lcom/b/a/a;

    invoke-virtual {v0}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v1

    .line 149
    iget-object v0, p0, Lcom/b/a/a/b/f;->a:Lcom/b/a/a;

    invoke-virtual {v0}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ac;->g()I

    move-result v0

    :goto_2
    if-lez v0, :cond_7

    const v2, 0xffff

    if-le v0, v2, :cond_4

    goto :goto_5

    .line 166
    :cond_4
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_5

    .line 167
    iget-object p1, p0, Lcom/b/a/a/b/f;->g:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 170
    :cond_5
    iget-object p1, p0, Lcom/b/a/a/b/f;->a:Lcom/b/a/a;

    invoke-virtual {p1}, Lcom/b/a/a;->b()Lcom/b/a/v;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/b/a/v;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 171
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_6

    .line 172
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 173
    iget-object v5, p0, Lcom/b/a/a/b/f;->g:Ljava/util/List;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v4, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 177
    :cond_6
    :goto_4
    iput v3, p0, Lcom/b/a/a/b/f;->h:I

    return-void

    .line 162
    :cond_7
    :goto_5
    new-instance p1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No route to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; port is out of range"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()Z
    .locals 2

    .line 126
    iget v0, p0, Lcom/b/a/a/b/f;->f:I

    iget-object v1, p0, Lcom/b/a/a/b/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private d()Z
    .locals 2

    .line 200
    iget v0, p0, Lcom/b/a/a/b/f;->h:I

    iget-object v1, p0, Lcom/b/a/a/b/f;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/b/a/a/b/f;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/b/a/aw;Ljava/io/IOException;)V
    .locals 3

    .line 100
    invoke-virtual {p1}, Lcom/b/a/aw;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/f;->a:Lcom/b/a/a;

    invoke-virtual {v0}, Lcom/b/a/a;->g()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/b/a/a/b/f;->a:Lcom/b/a/a;

    invoke-virtual {v0}, Lcom/b/a/a;->g()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/b/f;->a:Lcom/b/a/a;

    .line 103
    invoke-virtual {v1}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/ac;->a()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b/a/aw;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 106
    :cond_0
    iget-object p2, p0, Lcom/b/a/a/b/f;->b:Lcom/b/a/a/b/d;

    invoke-virtual {p2, p1}, Lcom/b/a/a/b/d;->a(Lcom/b/a/aw;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/b/a/a/b/f;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/b/a/a/b/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/b/a/a/b/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/b/a/aw;
    .locals 4

    .line 74
    :goto_0
    invoke-direct {p0}, Lcom/b/a/a/b/f;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    invoke-direct {p0}, Lcom/b/a/a/b/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/b/a/a/b/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b/f;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/aw;

    return-object v0

    .line 2131
    :cond_1
    invoke-direct {p0}, Lcom/b/a/a/b/f;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2132
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No route to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/a/a/b/f;->a:Lcom/b/a/a;

    invoke-virtual {v2}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/b/a/a/b/f;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2135
    :cond_2
    iget-object v0, p0, Lcom/b/a/a/b/f;->e:Ljava/util/List;

    iget v1, p0, Lcom/b/a/a/b/f;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/b/a/a/b/f;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 2136
    invoke-direct {p0, v0}, Lcom/b/a/a/b/f;->a(Ljava/net/Proxy;)V

    .line 81
    iput-object v0, p0, Lcom/b/a/a/b/f;->c:Ljava/net/Proxy;

    .line 2205
    :cond_3
    invoke-direct {p0}, Lcom/b/a/a/b/f;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2206
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No route to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/a/a/b/f;->a:Lcom/b/a/a;

    invoke-virtual {v2}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/b/a/a/b/f;->g:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2209
    :cond_4
    iget-object v0, p0, Lcom/b/a/a/b/f;->g:Ljava/util/List;

    iget v1, p0, Lcom/b/a/a/b/f;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/b/a/a/b/f;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 83
    iput-object v0, p0, Lcom/b/a/a/b/f;->d:Ljava/net/InetSocketAddress;

    .line 85
    new-instance v0, Lcom/b/a/aw;

    iget-object v1, p0, Lcom/b/a/a/b/f;->a:Lcom/b/a/a;

    iget-object v2, p0, Lcom/b/a/a/b/f;->c:Ljava/net/Proxy;

    iget-object v3, p0, Lcom/b/a/a/b/f;->d:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/aw;-><init>(Lcom/b/a/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 86
    iget-object v1, p0, Lcom/b/a/a/b/f;->b:Lcom/b/a/a/b/d;

    invoke-virtual {v1, v0}, Lcom/b/a/a/b/d;->c(Lcom/b/a/aw;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    iget-object v1, p0, Lcom/b/a/a/b/f;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

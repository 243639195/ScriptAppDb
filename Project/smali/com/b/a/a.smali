.class public final Lcom/b/a/a;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final a:Lcom/b/a/ac;

.field final b:Lcom/b/a/v;

.field final c:Ljavax/net/SocketFactory;

.field final d:Lcom/b/a/b;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/al;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/p;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:Ljava/net/Proxy;

.field final i:Ljavax/net/ssl/SSLSocketFactory;

.field final j:Ljavax/net/ssl/HostnameVerifier;

.field final k:Lcom/b/a/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/b/a/v;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/b/a/i;Lcom/b/a/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/b/a/v;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/b/a/i;",
            "Lcom/b/a/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lcom/b/a/al;",
            ">;",
            "Ljava/util/List<",
            "Lcom/b/a/p;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/b/a/ad;

    invoke-direct {v0}, Lcom/b/a/ad;-><init>()V

    if-eqz p5, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    :goto_0
    const-string v2, "http"

    .line 1965
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "http"

    .line 1966
    iput-object v1, v0, Lcom/b/a/ad;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v2, "https"

    .line 1967
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v1, "https"

    .line 1968
    iput-object v1, v0, Lcom/b/a/ad;->a:Ljava/lang/String;

    .line 56
    :goto_1
    invoke-virtual {v0, p1}, Lcom/b/a/ad;->a(Ljava/lang/String;)Lcom/b/a/ad;

    move-result-object p1

    if-lez p2, :cond_9

    const v0, 0xffff

    if-le p2, v0, :cond_2

    goto :goto_2

    .line 2015
    :cond_2
    iput p2, p1, Lcom/b/a/ad;->e:I

    .line 58
    invoke-virtual {p1}, Lcom/b/a/ad;->b()Lcom/b/a/ac;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a;->a:Lcom/b/a/ac;

    if-nez p3, :cond_3

    .line 60
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_3
    iput-object p3, p0, Lcom/b/a/a;->b:Lcom/b/a/v;

    if-nez p4, :cond_4

    .line 63
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "socketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_4
    iput-object p4, p0, Lcom/b/a/a;->c:Ljavax/net/SocketFactory;

    if-nez p8, :cond_5

    .line 67
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxyAuthenticator == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_5
    iput-object p8, p0, Lcom/b/a/a;->d:Lcom/b/a/b;

    if-nez p10, :cond_6

    .line 71
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "protocols == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_6
    invoke-static {p10}, Lcom/b/a/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a;->e:Ljava/util/List;

    if-nez p11, :cond_7

    .line 74
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connectionSpecs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_7
    invoke-static {p11}, Lcom/b/a/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a;->f:Ljava/util/List;

    if-nez p12, :cond_8

    .line 77
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxySelector == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_8
    iput-object p12, p0, Lcom/b/a/a;->g:Ljava/net/ProxySelector;

    .line 80
    iput-object p9, p0, Lcom/b/a/a;->h:Ljava/net/Proxy;

    .line 81
    iput-object p5, p0, Lcom/b/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 82
    iput-object p6, p0, Lcom/b/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 83
    iput-object p7, p0, Lcom/b/a/a;->k:Lcom/b/a/i;

    return-void

    .line 2014
    :cond_9
    :goto_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "unexpected port: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1970
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "unexpected scheme: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lcom/b/a/ac;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/b/a/a;->a:Lcom/b/a/ac;

    return-object v0
.end method

.method public final b()Lcom/b/a/v;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/b/a/a;->b:Lcom/b/a/v;

    return-object v0
.end method

.method public final c()Ljavax/net/SocketFactory;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/b/a/a;->c:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final d()Lcom/b/a/b;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/b/a/a;->d:Lcom/b/a/b;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/al;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/b/a/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 153
    instance-of v0, p1, Lcom/b/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 154
    check-cast p1, Lcom/b/a/a;

    .line 155
    iget-object v0, p0, Lcom/b/a/a;->a:Lcom/b/a/ac;

    iget-object v2, p1, Lcom/b/a/a;->a:Lcom/b/a/ac;

    invoke-virtual {v0, v2}, Lcom/b/a/ac;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a;->b:Lcom/b/a/v;

    iget-object v2, p1, Lcom/b/a/a;->b:Lcom/b/a/v;

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a;->d:Lcom/b/a/b;

    iget-object v2, p1, Lcom/b/a/a;->d:Lcom/b/a/b;

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a;->e:Ljava/util/List;

    iget-object v2, p1, Lcom/b/a/a;->e:Ljava/util/List;

    .line 158
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a;->f:Ljava/util/List;

    iget-object v2, p1, Lcom/b/a/a;->f:Ljava/util/List;

    .line 159
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a;->g:Ljava/net/ProxySelector;

    iget-object v2, p1, Lcom/b/a/a;->g:Ljava/net/ProxySelector;

    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a;->h:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/b/a/a;->h:Ljava/net/Proxy;

    .line 161
    invoke-static {v0, v2}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Lcom/b/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 162
    invoke-static {v0, v2}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Lcom/b/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 163
    invoke-static {v0, v2}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a;->k:Lcom/b/a/i;

    iget-object p1, p1, Lcom/b/a/a;->k:Lcom/b/a/i;

    .line 164
    invoke-static {v0, p1}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/p;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/b/a/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/net/ProxySelector;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/b/a/a;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final h()Ljava/net/Proxy;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/b/a/a;->h:Ljava/net/Proxy;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/b/a/a;->a:Lcom/b/a/ac;

    invoke-virtual {v0}, Lcom/b/a/ac;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 172
    iget-object v1, p0, Lcom/b/a/a;->b:Lcom/b/a/v;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 173
    iget-object v1, p0, Lcom/b/a/a;->d:Lcom/b/a/b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 174
    iget-object v1, p0, Lcom/b/a/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 175
    iget-object v1, p0, Lcom/b/a/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 176
    iget-object v1, p0, Lcom/b/a/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 177
    iget-object v1, p0, Lcom/b/a/a;->h:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a;->h:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 178
    iget-object v1, p0, Lcom/b/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/b/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 179
    iget-object v1, p0, Lcom/b/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/b/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 180
    iget-object v1, p0, Lcom/b/a/a;->k:Lcom/b/a/i;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/b/a/a;->k:Lcom/b/a/i;

    invoke-virtual {v1}, Lcom/b/a/i;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final i()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/b/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final j()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/b/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final k()Lcom/b/a/i;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/b/a/a;->k:Lcom/b/a/i;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Address{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/b/a/a;->a:Lcom/b/a/ac;

    .line 2481
    iget-object v1, v1, Lcom/b/a/ac;->b:Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/a;->a:Lcom/b/a/ac;

    .line 2497
    iget v1, v1, Lcom/b/a/ac;->c:I

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    iget-object v1, p0, Lcom/b/a/a;->h:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    const-string v1, ", proxy="

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/a;->h:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ", proxySelector="

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}"

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/b/a/a/g/a;
.super Lcom/b/a/a/g/h;
.source "AndroidPlatform.java"


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/b/a/a/g/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/a/g/g<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/b/a/a/g/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/a/g/g<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/b/a/a/g/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/a/g/g<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/b/a/a/g/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/a/g/g<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/b/a/a/g/c;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/b/a/a/g/g;Lcom/b/a/a/g/g;Lcom/b/a/a/g/g;Lcom/b/a/a/g/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/b/a/a/g/g<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/b/a/a/g/g<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/b/a/a/g/g<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/b/a/a/g/g<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/b/a/a/g/h;-><init>()V

    .line 48
    invoke-static {}, Lcom/b/a/a/g/c;->a()Lcom/b/a/a/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/g/a;->f:Lcom/b/a/a/g/c;

    .line 53
    iput-object p1, p0, Lcom/b/a/a/g/a;->a:Ljava/lang/Class;

    .line 54
    iput-object p2, p0, Lcom/b/a/a/g/a;->b:Lcom/b/a/a/g/g;

    .line 55
    iput-object p3, p0, Lcom/b/a/a/g/a;->c:Lcom/b/a/a/g/g;

    .line 56
    iput-object p4, p0, Lcom/b/a/a/g/a;->d:Lcom/b/a/a/g/g;

    .line 57
    iput-object p5, p0, Lcom/b/a/a/g/a;->e:Lcom/b/a/a/g/g;

    return-void
.end method

.method public static a()Lcom/b/a/a/g/h;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.org.conscrypt.SSLParametersImpl"

    .line 182
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v3, v1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v1, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    .line 185
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 189
    :goto_1
    new-instance v4, Lcom/b/a/a/g/g;

    const-string v1, "setUseSessionTickets"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-direct {v4, v0, v1, v5}, Lcom/b/a/a/g/g;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 191
    new-instance v5, Lcom/b/a/a/g/g;

    const-string v1, "setHostname"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-direct {v5, v0, v1, v6}, Lcom/b/a/a/g/g;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v1, "android.net.Network"

    .line 198
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 199
    new-instance v1, Lcom/b/a/a/g/g;

    const-class v6, [B

    const-string v8, "getAlpnSelectedProtocol"

    new-array v9, v7, [Ljava/lang/Class;

    invoke-direct {v1, v6, v8, v9}, Lcom/b/a/a/g/g;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 200
    :try_start_3
    new-instance v6, Lcom/b/a/a/g/g;

    const-string v8, "setAlpnProtocols"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v9, [B

    aput-object v9, v2, v7

    invoke-direct {v6, v0, v8, v2}, Lcom/b/a/a/g/g;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v7, v6

    goto :goto_2

    :catch_1
    move-object v1, v0

    :catch_2
    move-object v7, v0

    :goto_2
    move-object v6, v1

    .line 204
    :try_start_4
    new-instance v1, Lcom/b/a/a/g/a;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/b/a/a/g/a;-><init>(Ljava/lang/Class;Lcom/b/a/a/g/g;Lcom/b/a/a/g/g;Lcom/b/a/a/g/g;Lcom/b/a/a/g/g;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    return-object v1

    :catch_3
    return-object v0
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/X509TrustManager;)Lcom/b/a/a/h/b;
    .locals 7

    :try_start_0
    const-string v0, "android.net.http.X509TrustManagerExtensions"

    .line 166
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 167
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljavax/net/ssl/X509TrustManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 168
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "checkServerTrusted"

    const/4 v5, 0x3

    .line 169
    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, [Ljava/security/cert/X509Certificate;

    aput-object v6, v5, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v5, v1

    const/4 v1, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/b/a/a/g/b;

    invoke-direct {v1, v2, v0}, Lcom/b/a/a/g/b;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 173
    :catch_0
    invoke-super {p0, p1}, Lcom/b/a/a/g/h;->a(Ljavax/net/ssl/X509TrustManager;)Lcom/b/a/a/h/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/b/a/a/g/a;->f:Lcom/b/a/a/g/c;

    invoke-virtual {v0, p1}, Lcom/b/a/a/g/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/b/a/a/g/a;->d:Lcom/b/a/a/g/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/g/a;->d:Lcom/b/a/a/g/g;

    invoke-virtual {v0, p1}, Lcom/b/a/a/g/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/g/a;->d:Lcom/b/a/a/g/g;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lcom/b/a/a/g/g;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_2

    .line 118
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/b/a/a/c;->e:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const/16 p1, 0xa

    if-eqz p3, :cond_1

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/4 p3, 0x0

    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    if-ge p3, v1, :cond_4

    .line 127
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/lit16 v3, p3, 0xfa0

    .line 130
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const-string v4, "OkHttp"

    .line 131
    invoke-virtual {p2, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, v4, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-lt v3, v2, :cond_3

    add-int/lit8 p3, v3, 0x1

    goto :goto_1

    :cond_3
    move p3, v3

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/b/a/a/g/a;->f:Lcom/b/a/a/g/c;

    invoke-virtual {v0, p2}, Lcom/b/a/a/g/c;->a(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x5

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, p2, p1, v0}, Lcom/b/a/a/g/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0

    .line 63
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 70
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Exception in connect"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 72
    throw p2

    :catch_1
    move-exception p1

    .line 65
    invoke-static {p1}, Lcom/b/a/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 66
    :cond_0
    throw p1
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/b/a/al;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/b/a/a/g/a;->b:Lcom/b/a/a/g/g;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lcom/b/a/a/g/g;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v2, p0, Lcom/b/a/a/g/a;->c:Lcom/b/a/a/g/g;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lcom/b/a/a/g/g;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    iget-object p2, p0, Lcom/b/a/a/g/a;->e:Lcom/b/a/a/g/g;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/b/a/a/g/a;->e:Lcom/b/a/a/g/g;

    invoke-virtual {p2, p1}, Lcom/b/a/a/g/g;->a(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 108
    new-array p2, v1, [Ljava/lang/Object;

    .line 1199
    new-instance v1, Lcom/b/b/f;

    invoke-direct {v1}, Lcom/b/b/f;-><init>()V

    .line 1200
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 1201
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/b/a/al;

    .line 1202
    sget-object v5, Lcom/b/a/al;->a:Lcom/b/a/al;

    if-eq v4, v5, :cond_1

    .line 1203
    invoke-virtual {v4}, Lcom/b/a/al;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    .line 1204
    invoke-virtual {v4}, Lcom/b/a/al;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/b/b/f;->a(Ljava/lang/String;)Lcom/b/b/f;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1206
    :cond_2
    invoke-virtual {v1}, Lcom/b/b/f;->n()[B

    move-result-object p3

    aput-object p3, p2, v0

    .line 109
    iget-object p3, p0, Lcom/b/a/a/g/a;->e:Lcom/b/a/a/g/g;

    invoke-virtual {p3, p1, p2}, Lcom/b/a/a/g/g;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 7

    :try_start_0
    const-string v0, "android.security.NetworkSecurityPolicy"

    .line 151
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    .line 152
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    .line 153
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "isCleartextTrafficPermitted"

    const/4 v4, 0x1

    .line 154
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    .line 155
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 156
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 160
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 158
    :catch_1
    invoke-super {p0, p1}, Lcom/b/a/a/g/h;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

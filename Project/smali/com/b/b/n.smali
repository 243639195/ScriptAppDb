.class public final Lcom/b/b/n;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/b/b/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/b/b/n;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/b/b/w;)Lcom/b/b/g;
    .locals 1

    .line 59
    new-instance v0, Lcom/b/b/r;

    invoke-direct {v0, p0}, Lcom/b/b/r;-><init>(Lcom/b/b/w;)V

    return-object v0
.end method

.method public static a(Lcom/b/b/x;)Lcom/b/b/h;
    .locals 1

    .line 50
    new-instance v0, Lcom/b/b/s;

    invoke-direct {v0, p0}, Lcom/b/b/s;-><init>(Lcom/b/b/x;)V

    return-object v0
.end method

.method public static a(Ljava/net/Socket;)Lcom/b/b/w;
    .locals 2

    if-nez p0, :cond_0

    .line 115
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/b/b/n;->c(Ljava/net/Socket;)Lcom/b/b/a;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1068
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "out == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1071
    :cond_1
    new-instance v1, Lcom/b/b/o;

    invoke-direct {v1, v0, p0}, Lcom/b/b/o;-><init>(Lcom/b/b/y;Ljava/io/OutputStream;)V

    .line 1159
    new-instance p0, Lcom/b/b/b;

    invoke-direct {p0, v0, v1}, Lcom/b/b/b;-><init>(Lcom/b/b/a;Lcom/b/b/w;)V

    return-object p0
.end method

.method static a(Ljava/lang/AssertionError;)Z
    .locals 1

    .line 257
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/net/Socket;)Lcom/b/b/x;
    .locals 2

    if-nez p0, :cond_0

    .line 218
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 219
    :cond_0
    invoke-static {p0}, Lcom/b/b/n;->c(Ljava/net/Socket;)Lcom/b/b/a;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_1

    .line 2127
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "in == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2130
    :cond_1
    new-instance v1, Lcom/b/b/p;

    invoke-direct {v1, v0, p0}, Lcom/b/b/p;-><init>(Lcom/b/b/y;Ljava/io/InputStream;)V

    .line 2231
    new-instance p0, Lcom/b/b/c;

    invoke-direct {p0, v0, v1}, Lcom/b/b/c;-><init>(Lcom/b/b/a;Lcom/b/b/x;)V

    return-object p0
.end method

.method private static c(Ljava/net/Socket;)Lcom/b/b/a;
    .locals 1

    .line 225
    new-instance v0, Lcom/b/b/q;

    invoke-direct {v0, p0}, Lcom/b/b/q;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method

.class public final Lorg/apache/commons/mail/a/e;
.super Lorg/apache/commons/mail/a/a;
.source "DataSourceUrlResolver.java"


# instance fields
.field private final b:Ljava/net/URL;


# direct methods
.method private constructor <init>(Ljava/net/URL;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/commons/mail/a/a;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/commons/mail/a/e;->b:Ljava/net/URL;

    return-void
.end method

.method private constructor <init>(Ljava/net/URL;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p2}, Lorg/apache/commons/mail/a/a;-><init>(Z)V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/mail/a/e;->b:Ljava/net/URL;

    return-void
.end method

.method private a()Ljava/net/URL;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/mail/a/e;->b:Ljava/net/URL;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/apache/commons/mail/a/e;->b:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_4

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "file:/"

    .line 3079
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    invoke-static {p1}, Lorg/apache/commons/mail/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 130
    :cond_2
    new-instance v0, Ljava/net/URL;

    .line 4066
    iget-object v1, p0, Lorg/apache/commons/mail/a/e;->b:Ljava/net/URL;

    const-string v2, "&amp;"

    const-string v3, "&"

    .line 130
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0

    .line 127
    :cond_3
    :goto_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 121
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No resource defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final resolve(Ljava/lang/String;)Ljavax/activation/DataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1057
    iget-boolean v0, p0, Lorg/apache/commons/mail/a/a;->a:Z

    .line 72
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/a/e;->resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "cid:"

    .line 1068
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1113
    iget-object v1, p0, Lorg/apache/commons/mail/a/e;->b:Ljava/net/URL;

    if-nez v1, :cond_0

    .line 1115
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_4

    .line 1119
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "file:/"

    .line 2079
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1125
    invoke-static {p1}, Lorg/apache/commons/mail/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1130
    :cond_2
    new-instance v1, Ljava/net/URL;

    .line 3066
    iget-object v2, p0, Lorg/apache/commons/mail/a/e;->b:Ljava/net/URL;

    const-string v3, "&amp;"

    const-string v4, "&"

    .line 1130
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_1

    .line 1127
    :cond_3
    :goto_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 85
    :goto_1
    new-instance p1, Ljavax/activation/URLDataSource;

    invoke-direct {p1, v1}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V

    .line 86
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    goto :goto_3

    .line 1121
    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "No resource defined"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move-object p1, v0

    :goto_3
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p2, :cond_6

    return-object v0

    .line 97
    :cond_6
    throw p1
.end method

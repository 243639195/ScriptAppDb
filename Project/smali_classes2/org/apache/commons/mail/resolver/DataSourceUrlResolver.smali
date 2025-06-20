.class public Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;
.super Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;
.source "DataSourceUrlResolver.java"


# instance fields
.field private final baseUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->baseUrl:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p2}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>(Z)V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->baseUrl:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method protected createUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->baseUrl:Ljava/net/URL;

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

    .line 125
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->isFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 130
    :cond_2
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->getBaseUrl()Ljava/net/URL;

    move-result-object v1

    const-string v2, "&amp;"

    const-string v3, "&"

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

.method public getBaseUrl()Ljava/net/URL;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->baseUrl:Ljava/net/URL;

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Ljavax/activation/DataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->isLenient()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 82
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->isCid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->createUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    .line 85
    new-instance v1, Ljavax/activation/URLDataSource;

    invoke-direct {v1, p1}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V

    .line 86
    invoke-interface {v1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_1

    return-object v0

    .line 97
    :cond_1
    throw p1
.end method

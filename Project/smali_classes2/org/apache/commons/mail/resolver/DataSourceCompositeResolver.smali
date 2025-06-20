.class public Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;
.super Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;
.source "DataSourceCompositeResolver.java"


# instance fields
.field private final dataSourceResolvers:[Lorg/apache/commons/mail/DataSourceResolver;


# direct methods
.method public constructor <init>([Lorg/apache/commons/mail/DataSourceResolver;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>()V

    .line 43
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/mail/DataSourceResolver;

    iput-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->dataSourceResolvers:[Lorg/apache/commons/mail/DataSourceResolver;

    .line 44
    iget-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->dataSourceResolvers:[Lorg/apache/commons/mail/DataSourceResolver;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/mail/DataSourceResolver;Z)V
    .locals 2

    .line 55
    invoke-direct {p0, p2}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>(Z)V

    .line 56
    array-length p2, p1

    new-array p2, p2, [Lorg/apache/commons/mail/DataSourceResolver;

    iput-object p2, p0, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->dataSourceResolvers:[Lorg/apache/commons/mail/DataSourceResolver;

    .line 57
    iget-object p2, p0, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->dataSourceResolvers:[Lorg/apache/commons/mail/DataSourceResolver;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getDataSourceResolvers()[Lorg/apache/commons/mail/DataSourceResolver;
    .locals 4

    .line 68
    iget-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->dataSourceResolvers:[Lorg/apache/commons/mail/DataSourceResolver;

    array-length v0, v0

    new-array v0, v0, [Lorg/apache/commons/mail/DataSourceResolver;

    .line 69
    iget-object v1, p0, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->dataSourceResolvers:[Lorg/apache/commons/mail/DataSourceResolver;

    iget-object v2, p0, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->dataSourceResolvers:[Lorg/apache/commons/mail/DataSourceResolver;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Ljavax/activation/DataSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->isLenient()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The following resource was not found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->getDataSourceResolvers()[Lorg/apache/commons/mail/DataSourceResolver;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->getDataSourceResolvers()[Lorg/apache/commons/mail/DataSourceResolver;

    move-result-object v1

    aget-object v1, v1, v0

    .line 92
    invoke-interface {v1, p1, p2}, Lorg/apache/commons/mail/DataSourceResolver;->resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 104
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The following resource was not found : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

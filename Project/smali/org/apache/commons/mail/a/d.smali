.class public final Lorg/apache/commons/mail/a/d;
.super Lorg/apache/commons/mail/a/a;
.source "DataSourceFileResolver.java"


# instance fields
.field private final b:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lorg/apache/commons/mail/a/a;-><init>()V

    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/mail/a/d;->b:Ljava/io/File;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/apache/commons/mail/a/a;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/commons/mail/a/d;->b:Ljava/io/File;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p2}, Lorg/apache/commons/mail/a/a;-><init>(Z)V

    .line 63
    iput-object p1, p0, Lorg/apache/commons/mail/a/d;->b:Ljava/io/File;

    return-void
.end method

.method private a()Ljava/io/File;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/commons/mail/a/d;->b:Ljava/io/File;

    return-object v0
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

    .line 79
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/a/d;->resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "cid:"

    .line 1068
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1073
    iget-object v0, p0, Lorg/apache/commons/mail/a/d;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/io/File;

    .line 2073
    iget-object v1, p0, Lorg/apache/commons/mail/a/d;->b:Ljava/io/File;

    .line 94
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 99
    new-instance p1, Ljavax/activation/FileDataSource;

    invoke-direct {p1, v0}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 105
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Cant resolve the following file resource :"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

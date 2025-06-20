.class public abstract Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;
.super Ljava/lang/Object;
.source "DataSourceBaseResolver.java"

# interfaces
.implements Lorg/apache/commons/mail/DataSourceResolver;


# instance fields
.field private final lenient:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;->lenient:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;->lenient:Z

    return-void
.end method


# virtual methods
.method protected isCid(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "cid:"

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected isFileUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "file:/"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected isHttpUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isLenient()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;->lenient:Z

    return v0
.end method

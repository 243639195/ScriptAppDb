.class public abstract Lorg/apache/commons/mail/a/a;
.super Ljava/lang/Object;
.source "DataSourceBaseResolver.java"

# interfaces
.implements Lorg/apache/commons/mail/DataSourceResolver;


# instance fields
.field final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/apache/commons/mail/a/a;->a:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lorg/apache/commons/mail/a/a;->a:Z

    return-void
.end method

.method private a()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lorg/apache/commons/mail/a/a;->a:Z

    return v0
.end method

.method protected static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://"

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "cid:"

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "file:/"

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

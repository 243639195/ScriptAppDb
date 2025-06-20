.class public Lcom/didi/virtualapk/delegate/IContentProviderProxy;
.super Ljava/lang/Object;
.source "IContentProviderProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "VA.IContentProviderProxy"


# instance fields
.field private mBase:Landroid/content/IContentProvider;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/IContentProvider;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->mBase:Landroid/content/IContentProvider;

    .line 49
    iput-object p1, p0, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getBundleParameter([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 114
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 115
    aget-object v1, p1, v0

    instance-of v1, v1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 116
    aget-object p1, p1, v0

    check-cast p1, Landroid/os/Bundle;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public static newInstance(Landroid/content/Context;Landroid/content/IContentProvider;)Landroid/content/IContentProvider;
    .locals 4

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/IContentProvider;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/didi/virtualapk/delegate/IContentProviderProxy;

    invoke-direct {v2, p0, p1}, Lcom/didi/virtualapk/delegate/IContentProviderProxy;-><init>(Landroid/content/Context;Landroid/content/IContentProvider;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/IContentProvider;

    return-object p0
.end method

.method private wrapperUri(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    .line 73
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 74
    aget-object v3, p2, v2

    instance-of v3, v3, Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 75
    aget-object v3, p2, v2

    check-cast v3, Landroid/net/Uri;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v0

    const/4 v2, 0x0

    .line 83
    :goto_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "call"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    invoke-direct {p0, p2}, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->getBundleParameter([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v4, "wrapper_uri"

    .line 86
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 88
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    return-void

    .line 97
    :cond_3
    iget-object v4, p0, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v4

    .line 98
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/didi/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 100
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 101
    invoke-virtual {v4, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v1

    .line 102
    invoke-static {v1, v3}, Lcom/didi/virtualapk/internal/PluginContentResolver;->wrapperUri(Lcom/didi/virtualapk/internal/LoadedPlugin;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 103
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "call"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "wrapper_uri"

    .line 104
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 106
    :cond_4
    aput-object v1, p2, v2

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "VA.IContentProviderProxy"

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0, p2, p3}, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->wrapperUri(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 63
    :try_start_0
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->mBase:Landroid/content/IContentProvider;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method

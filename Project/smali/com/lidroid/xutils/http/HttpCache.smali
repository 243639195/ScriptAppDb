.class public Lcom/lidroid/xutils/http/HttpCache;
.super Ljava/lang/Object;
.source "HttpCache.java"


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x19000

.field private static final DEFAULT_EXPIRY_TIME:J = 0xea60L

.field private static defaultExpiryTime:J = 0xea60L

.field private static final httpMethod_enabled_map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cacheSize:I

.field private final mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/cache/LruMemoryCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 116
    sput-object v0, Lcom/lidroid/xutils/http/HttpCache;->httpMethod_enabled_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    invoke-virtual {v1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x19000

    const-wide/32 v1, 0xea60

    .line 48
    invoke-direct {p0, v0, v1, v2}, Lcom/lidroid/xutils/http/HttpCache;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x19000

    .line 40
    iput v0, p0, Lcom/lidroid/xutils/http/HttpCache;->cacheSize:I

    .line 52
    iput p1, p0, Lcom/lidroid/xutils/http/HttpCache;->cacheSize:I

    .line 53
    sput-wide p2, Lcom/lidroid/xutils/http/HttpCache;->defaultExpiryTime:J

    .line 55
    new-instance p1, Lcom/lidroid/xutils/http/HttpCache$1;

    iget p2, p0, Lcom/lidroid/xutils/http/HttpCache;->cacheSize:I

    invoke-direct {p1, p0, p2}, Lcom/lidroid/xutils/http/HttpCache$1;-><init>(Lcom/lidroid/xutils/http/HttpCache;I)V

    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    return-void
.end method

.method public static getDefaultExpiryTime()J
    .locals 2

    .line 73
    sget-wide v0, Lcom/lidroid/xutils/http/HttpCache;->defaultExpiryTime:J

    return-wide v0
.end method

.method public static setDefaultExpiryTime(J)V
    .locals 0

    .line 69
    sput-wide p0, Lcom/lidroid/xutils/http/HttpCache;->defaultExpiryTime:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->evictAll()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEnabled(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 97
    :cond_0
    sget-object v1, Lcom/lidroid/xutils/http/HttpCache;->httpMethod_enabled_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    return v0

    .line 98
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .locals 2

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 104
    :cond_0
    sget-object v0, Lcom/lidroid/xutils/http/HttpCache;->httpMethod_enabled_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    return v1

    .line 105
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 77
    sget-wide v0, Lcom/lidroid/xutils/http/HttpCache;->defaultExpiryTime:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/lidroid/xutils/http/HttpCache;->put(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long v3, v1, p3

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/lidroid/xutils/cache/LruMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setCacheSize(I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruMemoryCache;->setMaxSize(I)V

    return-void
.end method

.method public setEnabled(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Z)V
    .locals 1

    .line 109
    sget-object v0, Lcom/lidroid/xutils/http/HttpCache;->httpMethod_enabled_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

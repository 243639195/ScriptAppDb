.class public Lcom/cyjh/share/net/volley/VollerHttpManager;
.super Ljava/lang/Object;
.source "VollerHttpManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VollerHttpManager"

.field private static manager:Lcom/cyjh/share/net/volley/VollerHttpManager;


# instance fields
.field private mContextRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Lcom/android/volley/Request;",
            ">;>;"
        }
    .end annotation
.end field

.field private mQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cyjh/share/net/volley/VollerHttpManager;->mContextRequestMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/cyjh/share/net/volley/VollerHttpManager;
    .locals 1

    .line 33
    sget-object v0, Lcom/cyjh/share/net/volley/VollerHttpManager;->manager:Lcom/cyjh/share/net/volley/VollerHttpManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/cyjh/share/net/volley/VollerHttpManager;

    invoke-direct {v0}, Lcom/cyjh/share/net/volley/VollerHttpManager;-><init>()V

    sput-object v0, Lcom/cyjh/share/net/volley/VollerHttpManager;->manager:Lcom/cyjh/share/net/volley/VollerHttpManager;

    .line 36
    :cond_0
    sget-object v0, Lcom/cyjh/share/net/volley/VollerHttpManager;->manager:Lcom/cyjh/share/net/volley/VollerHttpManager;

    return-object v0
.end method


# virtual methods
.method public addRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/android/volley/Request;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/cyjh/share/net/volley/VollerHttpManager;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/cyjh/share/net/volley/VollerHttpManager;->mContextRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-nez p1, :cond_0

    .line 81
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 83
    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1
    invoke-virtual {p0, p2}, Lcom/cyjh/share/net/volley/VollerHttpManager;->stopRequest(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p3, p2}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 87
    iget-object p1, p0, Lcom/cyjh/share/net/volley/VollerHttpManager;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1, p3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    :cond_2
    const-string p1, "VollerHttpManager"

    const-string p2, "\u4f60\u5e94\u8be5\u5728 application\u4e2d\u521d\u59cb\u5316\u961f\u5217"

    .line 90
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public addRequest(Ljava/lang/Object;Lcom/android/volley/Request;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/cyjh/share/net/volley/VollerHttpManager;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/cyjh/share/net/volley/VollerHttpManager;->stopRequest(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p2, p1}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 64
    iget-object p1, p0, Lcom/cyjh/share/net/volley/VollerHttpManager;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1, p2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 65
    iget-object p1, p0, Lcom/cyjh/share/net/volley/VollerHttpManager;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1}, Lcom/android/volley/RequestQueue;->start()V

    goto :goto_0

    :cond_0
    const-string p1, "VollerHttpManager"

    const-string p2, "\u4f60\u5e94\u8be5\u5728 application\u4e2d\u521d\u59cb\u5316\u961f\u5217"

    .line 67
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/cyjh/share/net/volley/VollerHttpManager;->mQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 46
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/share/net/volley/VollerHttpManager;->mQueue:Lcom/android/volley/RequestQueue;

    :cond_0
    return-void
.end method

.method public init(Lcom/android/volley/RequestQueue;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/cyjh/share/net/volley/VollerHttpManager;->mQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method public stopRequest(Landroid/content/Context;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/cyjh/share/net/volley/VollerHttpManager;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/cyjh/share/net/volley/VollerHttpManager;->mContextRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    .line 119
    iget-object v1, p0, Lcom/cyjh/share/net/volley/VollerHttpManager;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/Request;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "VollerHttpManager"

    const-string v0, "\u4f60\u5e94\u8be5\u5728 application\u4e2d\u521d\u59cb\u5316\u961f\u5217"

    .line 125
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public stopRequest(Ljava/lang/Object;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/cyjh/share/net/volley/VollerHttpManager;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/cyjh/share/net/volley/VollerHttpManager;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "VollerHttpManager"

    const-string v0, "\u4f60\u5e94\u8be5\u5728 application\u4e2d\u521d\u59cb\u5316\u961f\u5217"

    .line 105
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

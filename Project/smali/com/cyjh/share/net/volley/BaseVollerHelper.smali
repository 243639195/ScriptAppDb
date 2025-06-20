.class public abstract Lcom/cyjh/share/net/volley/BaseVollerHelper;
.super Ljava/lang/Object;
.source "BaseVollerHelper.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestForGPost(Ljava/lang/String;Ljava/util/Map;Lcom/cyjh/share/net/inf/IAnalysisJson;)Lcom/cyjh/share/net/volley/VollerRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cyjh/share/net/inf/IAnalysisJson;",
            ")",
            "Lcom/cyjh/share/net/volley/VollerRequest;"
        }
    .end annotation

    .line 38
    new-instance v6, Lcom/cyjh/share/net/volley/VollerRequest;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/share/net/volley/VollerRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/cyjh/share/net/inf/IAnalysisJson;)V

    return-object v6
.end method

.method public getRequestForGet(Ljava/lang/String;Lcom/cyjh/share/net/inf/IAnalysisJson;)Lcom/cyjh/share/net/volley/VollerRequest;
    .locals 1

    .line 26
    new-instance v0, Lcom/cyjh/share/net/volley/VollerRequest;

    invoke-direct {v0, p1, p0, p0, p2}, Lcom/cyjh/share/net/volley/VollerRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/cyjh/share/net/inf/IAnalysisJson;)V

    return-object v0
.end method

.method public sendGetRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Lcom/cyjh/share/net/inf/IAnalysisJson;)V
    .locals 1

    .line 51
    invoke-static {}, Lcom/cyjh/share/net/volley/VollerHttpManager;->getInstance()Lcom/cyjh/share/net/volley/VollerHttpManager;

    move-result-object v0

    invoke-virtual {p0, p3, p4}, Lcom/cyjh/share/net/volley/BaseVollerHelper;->getRequestForGet(Ljava/lang/String;Lcom/cyjh/share/net/inf/IAnalysisJson;)Lcom/cyjh/share/net/volley/VollerRequest;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/cyjh/share/net/volley/VollerHttpManager;->addRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/android/volley/Request;)V

    return-void
.end method

.method public sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/cyjh/share/net/inf/IAnalysisJson;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cyjh/share/net/inf/IAnalysisJson;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/cyjh/share/net/volley/VollerHttpManager;->getInstance()Lcom/cyjh/share/net/volley/VollerHttpManager;

    move-result-object v0

    invoke-virtual {p0, p3, p4, p5}, Lcom/cyjh/share/net/volley/BaseVollerHelper;->getRequestForGPost(Ljava/lang/String;Ljava/util/Map;Lcom/cyjh/share/net/inf/IAnalysisJson;)Lcom/cyjh/share/net/volley/VollerRequest;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/cyjh/share/net/volley/VollerHttpManager;->addRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/android/volley/Request;)V

    return-void
.end method

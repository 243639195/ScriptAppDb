.class public Lcom/cyjh/share/net/volley/ActivityHttpHelper;
.super Lcom/cyjh/share/net/volley/BaseVollerHelper;
.source "ActivityHttpHelper.java"


# instance fields
.field private mAnalysisJson:Lcom/cyjh/share/net/inf/IAnalysisJson;

.field private mDataListener:Lcom/cyjh/share/net/inf/IUIDataListener;


# direct methods
.method public constructor <init>(Lcom/cyjh/share/net/inf/IUIDataListener;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/cyjh/share/net/volley/BaseVollerHelper;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->mDataListener:Lcom/cyjh/share/net/inf/IUIDataListener;

    return-void
.end method

.method public constructor <init>(Lcom/cyjh/share/net/inf/IUIDataListener;Lcom/cyjh/share/net/inf/IAnalysisJson;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/cyjh/share/net/volley/BaseVollerHelper;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->mDataListener:Lcom/cyjh/share/net/inf/IUIDataListener;

    .line 35
    iput-object p2, p0, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->mAnalysisJson:Lcom/cyjh/share/net/inf/IAnalysisJson;

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->mDataListener:Lcom/cyjh/share/net/inf/IUIDataListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->mDataListener:Lcom/cyjh/share/net/inf/IUIDataListener;

    invoke-interface {v0, p1}, Lcom/cyjh/share/net/inf/IUIDataListener;->uiDataError(Lcom/android/volley/VolleyError;)V

    :cond_0
    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->mDataListener:Lcom/cyjh/share/net/inf/IUIDataListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->mDataListener:Lcom/cyjh/share/net/inf/IUIDataListener;

    invoke-interface {v0, p1}, Lcom/cyjh/share/net/inf/IUIDataListener;->uiDataSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public sendGetRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->mAnalysisJson:Lcom/cyjh/share/net/inf/IAnalysisJson;

    invoke-super {p0, p1, p2, p3, v0}, Lcom/cyjh/share/net/volley/BaseVollerHelper;->sendGetRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Lcom/cyjh/share/net/inf/IAnalysisJson;)V

    return-void
.end method

.method public sendGetRequest(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p0, p2}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendGetRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public sendGetRequest(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0, p1, p2}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendGetRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    iget-object v5, p0, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->mAnalysisJson:Lcom/cyjh/share/net/inf/IAnalysisJson;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-super/range {v0 .. v5}, Lcom/cyjh/share/net/volley/BaseVollerHelper;->sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/cyjh/share/net/inf/IAnalysisJson;)V

    return-void
.end method

.method public sendPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p1, p0, p2, p3}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public sendPostRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public stopRequest()V
    .locals 0

    .line 122
    invoke-virtual {p0, p0}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->stopRequest(Ljava/lang/Object;)V

    return-void
.end method

.method public stopRequest(Ljava/lang/Object;)V
    .locals 1

    .line 128
    invoke-static {}, Lcom/cyjh/share/net/volley/VollerHttpManager;->getInstance()Lcom/cyjh/share/net/volley/VollerHttpManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/share/net/volley/VollerHttpManager;->stopRequest(Ljava/lang/Object;)V

    return-void
.end method

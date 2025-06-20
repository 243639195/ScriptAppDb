.class public Lcom/cyjh/share/net/volley/VollerRequest;
.super Lcom/android/volley/Request;
.source "VollerRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIME_OUT:I = 0xc350


# instance fields
.field private mAnalysisJson:Lcom/cyjh/share/net/inf/IAnalysisJson;

.field private mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p5}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 44
    iput-object p4, p0, Lcom/cyjh/share/net/volley/VollerRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 45
    iput-object p3, p0, Lcom/cyjh/share/net/volley/VollerRequest;->map:Ljava/util/Map;

    .line 47
    new-instance p1, Lcom/android/volley/DefaultRetryPolicy;

    const/4 p2, 0x0

    const p3, 0xc350

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, p2, p4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/cyjh/share/net/volley/VollerRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 48
    invoke-virtual {p0, p2}, Lcom/cyjh/share/net/volley/VollerRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/cyjh/share/net/inf/IAnalysisJson;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Lcom/cyjh/share/net/inf/IAnalysisJson;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 60
    invoke-direct/range {v0 .. v5}, Lcom/cyjh/share/net/volley/VollerRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 61
    iput-object p4, p0, Lcom/cyjh/share/net/volley/VollerRequest;->mAnalysisJson:Lcom/cyjh/share/net/inf/IAnalysisJson;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/cyjh/share/net/inf/IAnalysisJson;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Lcom/cyjh/share/net/inf/IAnalysisJson;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/cyjh/share/net/volley/VollerRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 71
    iput-object p5, p0, Lcom/cyjh/share/net/volley/VollerRequest;->mAnalysisJson:Lcom/cyjh/share/net/inf/IAnalysisJson;

    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/cyjh/share/net/volley/VollerRequest;->mListener:Lcom/android/volley/Response$Listener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/cyjh/share/net/volley/VollerRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/cyjh/share/net/volley/VollerRequest;->map:Ljava/util/Map;

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 81
    sget-object v0, Lcom/android/volley/Request$Priority;->HIGH:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 88
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/cyjh/share/net/volley/VollerRequest;->mAnalysisJson:Lcom/cyjh/share/net/inf/IAnalysisJson;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/cyjh/share/net/volley/VollerRequest;->mAnalysisJson:Lcom/cyjh/share/net/inf/IAnalysisJson;

    invoke-interface {v1, v0}, Lcom/cyjh/share/net/inf/IAnalysisJson;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 95
    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method

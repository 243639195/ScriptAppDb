.class public Lcom/ds/daisi/net/volley/VolleyRequestQueue;
.super Ljava/lang/Object;
.source "VolleyRequestQueue.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 11
    invoke-static {}, Lcom/ds/daisi/AppContext;->getmRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

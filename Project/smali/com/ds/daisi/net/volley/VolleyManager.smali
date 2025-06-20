.class public Lcom/ds/daisi/net/volley/VolleyManager;
.super Ljava/lang/Object;
.source "VolleyManager.java"


# static fields
.field private static final DEFAULT_REQUEST_TIMEOUT:I = 0xbb8

.field private static final TAG:Ljava/lang/String;

.field private static mJsonRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

.field private static mStringRequest:Lcom/android/volley/toolbox/StringRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/ds/daisi/net/volley/VolleyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ds/daisi/net/volley/VolleyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAllReq()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/ds/daisi/net/volley/VolleyRequestQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/ds/daisi/net/volley/VolleyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    return-void
.end method

.method public static requestJsonObjectPost(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ds/daisi/net/volley/VolleyJsonRequestManager;)V
    .locals 7

    .line 77
    new-instance v6, Lcom/android/volley/toolbox/JsonObjectRequest;

    iget-object v4, p3, Lcom/ds/daisi/net/volley/VolleyJsonRequestManager;->mJsonSuccessListener:Lcom/ds/daisi/net/volley/VolleyJsonRequestManager$OnJsonObjectSucListener;

    iget-object v5, p3, Lcom/ds/daisi/net/volley/VolleyJsonRequestManager;->mVolleyErrorListener:Lcom/ds/daisi/net/volley/VolleyJsonRequestManager$OnRequestErrorListener;

    const/4 v1, 0x1

    move-object v0, v6

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    sput-object v6, Lcom/ds/daisi/net/volley/VolleyManager;->mJsonRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    .line 79
    sget-object p0, Lcom/ds/daisi/net/volley/VolleyManager;->mJsonRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 81
    new-instance p0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 p1, 0xbb8

    const/4 p2, 0x1

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 82
    sget-object p1, Lcom/ds/daisi/net/volley/VolleyManager;->mJsonRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    invoke-virtual {p1, p0}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 83
    sget-object p0, Lcom/ds/daisi/net/volley/VolleyManager;->mJsonRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 84
    invoke-static {}, Lcom/ds/daisi/net/volley/VolleyRequestQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/ds/daisi/net/volley/VolleyManager;->mJsonRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    invoke-virtual {p0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public static requestStringGet(Ljava/lang/String;Ljava/lang/String;Lcom/ds/daisi/net/volley/VolleyStrRequestManager;)V
    .locals 3

    .line 30
    invoke-static {}, Lcom/ds/daisi/net/volley/VolleyRequestQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 31
    new-instance v0, Lcom/android/volley/toolbox/StringRequest;

    iget-object v1, p2, Lcom/ds/daisi/net/volley/VolleyStrRequestManager;->mVolleySuccessListener:Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnStrReqSuccessListener;

    iget-object p2, p2, Lcom/ds/daisi/net/volley/VolleyStrRequestManager;->mVolleyErrorListener:Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnRequestErrorListener;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1, p2}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    sput-object v0, Lcom/ds/daisi/net/volley/VolleyManager;->mStringRequest:Lcom/android/volley/toolbox/StringRequest;

    .line 32
    sget-object p0, Lcom/ds/daisi/net/volley/VolleyManager;->mStringRequest:Lcom/android/volley/toolbox/StringRequest;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/StringRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 34
    new-instance p0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 p1, 0xbb8

    const/4 p2, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 35
    sget-object p1, Lcom/ds/daisi/net/volley/VolleyManager;->mStringRequest:Lcom/android/volley/toolbox/StringRequest;

    invoke-virtual {p1, p0}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 36
    sget-object p0, Lcom/ds/daisi/net/volley/VolleyManager;->mStringRequest:Lcom/android/volley/toolbox/StringRequest;

    invoke-virtual {p0, v2}, Lcom/android/volley/toolbox/StringRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 37
    invoke-static {}, Lcom/ds/daisi/net/volley/VolleyRequestQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/ds/daisi/net/volley/VolleyManager;->mStringRequest:Lcom/android/volley/toolbox/StringRequest;

    invoke-virtual {p0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public static requestStringPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ds/daisi/net/volley/VolleyStrRequestManager;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ds/daisi/net/volley/VolleyStrRequestManager;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/ds/daisi/net/volley/VolleyRequestQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 53
    new-instance v0, Lcom/ds/daisi/net/volley/VolleyManager$1;

    iget-object v4, p3, Lcom/ds/daisi/net/volley/VolleyStrRequestManager;->mVolleySuccessListener:Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnStrReqSuccessListener;

    iget-object v5, p3, Lcom/ds/daisi/net/volley/VolleyStrRequestManager;->mVolleyErrorListener:Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnRequestErrorListener;

    const/4 v2, 0x1

    move-object v1, v0

    move-object v3, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/ds/daisi/net/volley/VolleyManager$1;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V

    sput-object v0, Lcom/ds/daisi/net/volley/VolleyManager;->mStringRequest:Lcom/android/volley/toolbox/StringRequest;

    .line 64
    sget-object p0, Lcom/ds/daisi/net/volley/VolleyManager;->mStringRequest:Lcom/android/volley/toolbox/StringRequest;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/StringRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 65
    sget-object p0, Lcom/ds/daisi/net/volley/VolleyManager;->mStringRequest:Lcom/android/volley/toolbox/StringRequest;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/StringRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 66
    invoke-static {}, Lcom/ds/daisi/net/volley/VolleyRequestQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/ds/daisi/net/volley/VolleyManager;->mStringRequest:Lcom/android/volley/toolbox/StringRequest;

    invoke-virtual {p0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

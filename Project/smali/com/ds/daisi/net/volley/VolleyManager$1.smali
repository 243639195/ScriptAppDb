.class final Lcom/ds/daisi/net/volley/VolleyManager$1;
.super Lcom/android/volley/toolbox/StringRequest;
.source "VolleyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/net/volley/VolleyManager;->requestStringPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ds/daisi/net/volley/VolleyStrRequestManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V
    .locals 0

    .line 54
    iput-object p5, p0, Lcom/ds/daisi/net/volley/VolleyManager$1;->val$params:Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
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

    .line 57
    iget-object v0, p0, Lcom/ds/daisi/net/volley/VolleyManager$1;->val$params:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/ds/daisi/net/volley/VolleyManager$1;->val$params:Ljava/util/Map;

    return-object v0

    .line 60
    :cond_0
    invoke-super {p0}, Lcom/android/volley/toolbox/StringRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

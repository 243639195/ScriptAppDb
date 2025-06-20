.class Lcom/ds/daisi/net/volley/VolleyJsonRequestManager$OnJsonObjectSucListener;
.super Ljava/lang/Object;
.source "VolleyJsonRequestManager.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/net/volley/VolleyJsonRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnJsonObjectSucListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/ds/daisi/net/volley/VolleyJsonRequestManager;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/net/volley/VolleyJsonRequestManager;Landroid/content/Context;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/ds/daisi/net/volley/VolleyJsonRequestManager$OnJsonObjectSucListener;->this$0:Lcom/ds/daisi/net/volley/VolleyJsonRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/ds/daisi/net/volley/VolleyJsonRequestManager$OnJsonObjectSucListener;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/net/volley/VolleyJsonRequestManager$OnJsonObjectSucListener;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 5

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/volley/VolleyJsonRequestManager$OnJsonObjectSucListener;->this$0:Lcom/ds/daisi/net/volley/VolleyJsonRequestManager;

    iget-object v1, v1, Lcom/ds/daisi/net/volley/VolleyJsonRequestManager;->networkTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nnetwork request successful response message\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/ds/daisi/async/NetworkReqMessageTask;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n\t\t\t\trequest end\n\n\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ds/daisi/net/volley/VolleyJsonRequestManager$OnJsonObjectSucListener;->context:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/ds/daisi/async/NetworkReqMessageTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    iget-object v2, p0, Lcom/ds/daisi/net/volley/VolleyJsonRequestManager$OnJsonObjectSucListener;->context:Landroid/content/Context;

    const-string v3, "NetworkMessage"

    const-string v4, "NetworkReqLog.txt"

    .line 64
    invoke-static {v2, v3, v4}, Lcom/ds/daisi/constant/Constants;->getSaveFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/ds/daisi/async/NetworkReqMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    iget-object v0, p0, Lcom/ds/daisi/net/volley/VolleyJsonRequestManager$OnJsonObjectSucListener;->this$0:Lcom/ds/daisi/net/volley/VolleyJsonRequestManager;

    invoke-virtual {v0, p1}, Lcom/ds/daisi/net/volley/VolleyJsonRequestManager;->onJsonReqSuccessRes(Lorg/json/JSONObject;)V

    return-void
.end method

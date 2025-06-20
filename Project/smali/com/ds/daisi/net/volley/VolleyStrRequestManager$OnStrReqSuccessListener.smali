.class Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnStrReqSuccessListener;
.super Ljava/lang/Object;
.source "VolleyStrRequestManager.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/net/volley/VolleyStrRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnStrReqSuccessListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/ds/daisi/net/volley/VolleyStrRequestManager;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/net/volley/VolleyStrRequestManager;Landroid/content/Context;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnStrReqSuccessListener;->this$0:Lcom/ds/daisi/net/volley/VolleyStrRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnStrReqSuccessListener;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnStrReqSuccessListener;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnStrReqSuccessListener;->this$0:Lcom/ds/daisi/net/volley/VolleyStrRequestManager;

    iget-object v1, v1, Lcom/ds/daisi/net/volley/VolleyStrRequestManager;->networkTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nnetwork request successful response message\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/ds/daisi/async/NetworkReqMessageTask;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\t\t\t\trequest end\n\n\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnStrReqSuccessListener;->context:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/ds/daisi/async/NetworkReqMessageTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    iget-object v2, p0, Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnStrReqSuccessListener;->context:Landroid/content/Context;

    const-string v3, "NetworkMessage"

    const-string v4, "NetworkReqLog.txt"

    .line 63
    invoke-static {v2, v3, v4}, Lcom/ds/daisi/constant/Constants;->getSaveFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/ds/daisi/async/NetworkReqMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    iget-object v0, p0, Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnStrReqSuccessListener;->this$0:Lcom/ds/daisi/net/volley/VolleyStrRequestManager;

    invoke-virtual {v0, p1}, Lcom/ds/daisi/net/volley/VolleyStrRequestManager;->onRequestSuccessRes(Ljava/lang/String;)V

    return-void
.end method

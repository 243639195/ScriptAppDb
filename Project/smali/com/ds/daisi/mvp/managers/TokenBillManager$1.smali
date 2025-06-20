.class Lcom/ds/daisi/mvp/managers/TokenBillManager$1;
.super Lcom/ds/daisi/net/volley/VolleyStrRequestManager;
.source "TokenBillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/managers/TokenBillManager;->getCodes(Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/mvp/managers/TokenBillManager;

.field final synthetic val$callback:Lcom/ds/daisi/mvp/managers/Callback;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/managers/TokenBillManager;Landroid/content/Context;Lcom/ds/daisi/mvp/managers/Callback;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/ds/daisi/mvp/managers/TokenBillManager$1;->this$0:Lcom/ds/daisi/mvp/managers/TokenBillManager;

    iput-object p3, p0, Lcom/ds/daisi/mvp/managers/TokenBillManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    invoke-direct {p0, p2}, Lcom/ds/daisi/net/volley/VolleyStrRequestManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onRequestErrorRes(Ljava/lang/String;)V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerifyTokenManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/TokenBillManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/managers/Callback;->error(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestSuccessRes(Ljava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/TokenBillManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/managers/Callback;->finish(Ljava/lang/Object;)V

    return-void
.end method

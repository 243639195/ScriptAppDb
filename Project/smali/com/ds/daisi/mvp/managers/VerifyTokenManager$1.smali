.class Lcom/ds/daisi/mvp/managers/VerifyTokenManager$1;
.super Lcom/ds/daisi/net/volley/VolleyJsonRequestManager;
.source "VerifyTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/managers/VerifyTokenManager;->generateToken(Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/mvp/managers/VerifyTokenManager;

.field final synthetic val$callback:Lcom/ds/daisi/mvp/managers/Callback;

.field final synthetic val$codes:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/managers/VerifyTokenManager;Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/ds/daisi/mvp/managers/VerifyTokenManager$1;->this$0:Lcom/ds/daisi/mvp/managers/VerifyTokenManager;

    iput-object p3, p0, Lcom/ds/daisi/mvp/managers/VerifyTokenManager$1;->val$codes:Ljava/lang/String;

    iput-object p4, p0, Lcom/ds/daisi/mvp/managers/VerifyTokenManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    iput-object p5, p0, Lcom/ds/daisi/mvp/managers/VerifyTokenManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/ds/daisi/net/volley/VolleyJsonRequestManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onJsonReqSuccessRes(Lorg/json/JSONObject;)V
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/VerifyTokenManager$1;->this$0:Lcom/ds/daisi/mvp/managers/VerifyTokenManager;

    iget-object v2, p0, Lcom/ds/daisi/mvp/managers/VerifyTokenManager$1;->val$codes:Ljava/lang/String;

    iget-object v3, p0, Lcom/ds/daisi/mvp/managers/VerifyTokenManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    iget-object v4, p0, Lcom/ds/daisi/mvp/managers/VerifyTokenManager$1;->val$context:Landroid/content/Context;

    const-string v5, "1"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;->access$000(Lcom/ds/daisi/mvp/managers/VerifyTokenManager;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestErrorRes(Ljava/lang/String;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/VerifyTokenManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

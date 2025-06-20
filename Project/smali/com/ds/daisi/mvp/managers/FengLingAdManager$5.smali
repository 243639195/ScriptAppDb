.class Lcom/ds/daisi/mvp/managers/FengLingAdManager$5;
.super Ljava/lang/Object;
.source "FengLingAdManager.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/managers/FengLingAdManager;->getFengLingAdInfoOperate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/mvp/managers/FengLingAdManager;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/managers/FengLingAdManager;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager$5;->this$0:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 467
    invoke-static {}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager$5;->this$0:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

    invoke-static {v0}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->access$200(Lcom/ds/daisi/mvp/managers/FengLingAdManager;)Lcom/ds/daisi/mvp/managers/Callback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/managers/Callback;->error(Ljava/lang/String;)V

    return-void
.end method

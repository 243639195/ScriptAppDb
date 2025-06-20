.class Lcom/ds/daisi/mvp/managers/FengLingAdManager$1;
.super Ljava/lang/Object;
.source "FengLingAdManager.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/managers/FengLingAdManager;->reportLogInfo(Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

.field final synthetic val$callback:Lcom/ds/daisi/mvp/managers/Callback;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/managers/FengLingAdManager;Lcom/ds/daisi/mvp/managers/Callback;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager$1;->this$0:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

    iput-object p2, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/mvp/managers/FengLingAdManager$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    .line 85
    invoke-static {}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "OK"

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    new-instance p1, Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-direct {p1}, Lcom/cyjh/share/bean/response/FengLingAdInfo;-><init>()V

    .line 89
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/managers/Callback;->finish(Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    const-string v0, "\u8bf7\u6c42\u6570\u636e\u5931\u8d25\uff01"

    invoke-interface {p1, v0}, Lcom/ds/daisi/mvp/managers/Callback;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 94
    iget-object p1, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    const-string v0, "\u89e3\u6790\u6570\u636e\u5931\u8d25\uff01"

    invoke-interface {p1, v0}, Lcom/ds/daisi/mvp/managers/Callback;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

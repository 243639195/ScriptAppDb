.class Lcom/ds/daisi/activity/news/SplashActivity$5;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/news/SplashActivity;->acquireAppData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$5;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 534
    :try_start_0
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity$5;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-virtual {v0, v1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity$5;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    iget-wide v2, v0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->ClientTimestamp:J

    invoke-static {v1, v2, v3}, Lcom/ds/daisi/activity/news/SplashActivity;->access$602(Lcom/ds/daisi/activity/news/SplashActivity;J)J

    .line 536
    invoke-static {v0}, Lcom/cyjh/share/util/GsonExUtil;->class2Data(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-static {v0}, Lcom/cyjh/elfin/util/IpcSwap;->checkTemplateReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity$5;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    const/16 v2, 0x13

    invoke-static {v1, v0, v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$700(Lcom/ds/daisi/activity/news/SplashActivity;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 541
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v1, "zzz"

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SplashActivity---initAfter()---2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

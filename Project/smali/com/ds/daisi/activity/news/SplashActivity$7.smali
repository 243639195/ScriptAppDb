.class Lcom/ds/daisi/activity/news/SplashActivity$7;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/news/SplashActivity;->loadStartAppRequest()V
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

    .line 566
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$7;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 570
    :try_start_0
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity$7;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-virtual {v0, v1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object v0

    .line 571
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity$7;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    sget-wide v2, Lcom/cyjh/share/manager/VariableAndConstantsManager;->sCurrentTimestamp:J

    invoke-static {v1, v2, v3}, Lcom/ds/daisi/activity/news/SplashActivity;->access$902(Lcom/ds/daisi/activity/news/SplashActivity;J)J

    .line 572
    new-instance v1, Lcom/cyjh/share/bean/request/StartAppRequestInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/share/bean/request/StartAppRequestInfo;-><init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V

    .line 573
    invoke-static {}, Lcom/cyjh/share/helper/PhoneConfigHelper;->get()Lcom/cyjh/share/helper/PhoneConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/helper/PhoneConfigHelper;->getCloudPhoneType()I

    move-result v0

    iput v0, v1, Lcom/cyjh/share/bean/request/StartAppRequestInfo;->CloudPhoneType:I

    .line 574
    invoke-static {v1}, Lcom/cyjh/share/util/GsonExUtil;->class2Data(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-static {v0}, Lcom/cyjh/elfin/util/IpcSwap;->startAppReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity$7;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$700(Lcom/ds/daisi/activity/news/SplashActivity;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 578
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

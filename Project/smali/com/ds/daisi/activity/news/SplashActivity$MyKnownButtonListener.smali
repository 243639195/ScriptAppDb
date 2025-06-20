.class Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;
.super Lcom/ds/daisi/listener/BaseTextViewKnownListener;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/news/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyKnownButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 1296
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-direct {p0}, Lcom/ds/daisi/listener/BaseTextViewKnownListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/ds/daisi/activity/news/SplashActivity$1;)V
    .locals 0

    .line 1296
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    return-void
.end method


# virtual methods
.method public closeApp()V
    .locals 4

    .line 1304
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    const-class v3, Lcom/ds/daisi/services/PhoneStateService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashActivity;->stopService(Landroid/content/Intent;)Z

    .line 1305
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    const-class v3, Lcom/cyjh/mq/service/IpcService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashActivity;->stopService(Landroid/content/Intent;)Z

    .line 1306
    invoke-static {}, Lcom/cyjh/share/manager/ActivitysManager;->getActivitysManager()Lcom/cyjh/share/manager/ActivitysManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/manager/ActivitysManager;->finishAllActivity()V

    return-void
.end method

.method public pass()V
    .locals 1

    .line 1299
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/SplashActivity;->access$3400(Lcom/ds/daisi/activity/news/SplashActivity;)V

    return-void
.end method

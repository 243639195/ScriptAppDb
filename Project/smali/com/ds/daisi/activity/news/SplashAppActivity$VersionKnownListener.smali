.class Lcom/ds/daisi/activity/news/SplashAppActivity$VersionKnownListener;
.super Ljava/lang/Object;
.source "SplashAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/news/SplashAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VersionKnownListener"
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private returnCode:I

.field final synthetic this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/news/SplashAppActivity;Landroid/app/AlertDialog;I)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$VersionKnownListener;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-object p2, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$VersionKnownListener;->mAlertDialog:Landroid/app/AlertDialog;

    .line 731
    iput p3, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$VersionKnownListener;->returnCode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/news/SplashAppActivity;Landroid/app/AlertDialog;ILcom/ds/daisi/activity/news/SplashAppActivity$1;)V
    .locals 0

    .line 726
    invoke-direct {p0, p1, p2, p3}, Lcom/ds/daisi/activity/news/SplashAppActivity$VersionKnownListener;-><init>(Lcom/ds/daisi/activity/news/SplashAppActivity;Landroid/app/AlertDialog;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 736
    iget p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$VersionKnownListener;->returnCode:I

    if-nez p1, :cond_0

    .line 737
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$VersionKnownListener;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 738
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$VersionKnownListener;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$VersionKnownListener;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    const-class v2, Lcom/ds/daisi/services/PhoneStateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->stopService(Landroid/content/Intent;)Z

    .line 739
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$VersionKnownListener;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$VersionKnownListener;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    const-class v2, Lcom/cyjh/mq/service/IpcService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->stopService(Landroid/content/Intent;)Z

    .line 740
    invoke-static {}, Lcom/cyjh/share/manager/ActivitysManager;->getActivitysManager()Lcom/cyjh/share/manager/ActivitysManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/share/manager/ActivitysManager;->finishAllActivity()V

    goto :goto_0

    .line 743
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$VersionKnownListener;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 744
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$VersionKnownListener;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$1500(Lcom/ds/daisi/activity/news/SplashAppActivity;)V

    :goto_0
    return-void
.end method

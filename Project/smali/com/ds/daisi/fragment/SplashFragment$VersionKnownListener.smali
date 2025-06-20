.class Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/SplashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VersionKnownListener"
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private returnCode:I

.field final synthetic this$0:Lcom/ds/daisi/fragment/SplashFragment;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/fragment/SplashFragment;Landroid/app/AlertDialog;I)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p2, p0, Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;->mAlertDialog:Landroid/app/AlertDialog;

    .line 501
    iput p3, p0, Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;->returnCode:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 505
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 506
    iget p1, p0, Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;->returnCode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 508
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/SplashFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mSharedUsed:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "template_apk_req"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 509
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/SplashFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mSharedUsed:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "single_apk_req"

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 510
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-virtual {p1}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-virtual {v1}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ds/daisi/services/PhoneStateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->stopService(Landroid/content/Intent;)Z

    .line 512
    invoke-static {}, Lcom/cyjh/mq/sdk/MqBridge;->exit()V

    .line 513
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-virtual {p1}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-virtual {v1}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ds/daisi/services/TimerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->stopService(Landroid/content/Intent;)Z

    .line 514
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-virtual {p1}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    const/4 p1, 0x0

    .line 515
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 517
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/SplashFragment;->access$300(Lcom/ds/daisi/fragment/SplashFragment;)V

    :goto_0
    return-void
.end method

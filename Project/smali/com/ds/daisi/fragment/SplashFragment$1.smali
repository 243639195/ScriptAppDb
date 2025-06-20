.class Lcom/ds/daisi/fragment/SplashFragment$1;
.super Landroid/os/Handler;
.source "SplashFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/SplashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/SplashFragment;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/SplashFragment;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$1;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 93
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 94
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 121
    :pswitch_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$1;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ds/daisi/fragment/SplashFragment;->access$502(Lcom/ds/daisi/fragment/SplashFragment;Z)Z

    .line 122
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$1;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/SplashFragment;->access$600(Lcom/ds/daisi/fragment/SplashFragment;)Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment$1;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-virtual {v0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;->getCodes(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 100
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 101
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$1;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/SplashFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mSharedUsed:Landroid/content/SharedPreferences;

    const-string v2, "single_apk_req"

    const-wide/16 v3, 0x0

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SINGLE_APK_MESSAGE:  currentTime="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",saveTime="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1, v5}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SINGLE_APK_MESSAGE isSendMsg="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ds/daisi/fragment/SplashFragment$1;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {v5}, Lcom/ds/daisi/fragment/SplashFragment;->access$100(Lcom/ds/daisi/fragment/SplashFragment;)Z

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isCheckApk="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ds/daisi/fragment/SplashFragment$1;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {v5}, Lcom/ds/daisi/fragment/SplashFragment;->access$200(Lcom/ds/daisi/fragment/SplashFragment;)Z

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v4}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$1;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/SplashFragment;->access$100(Lcom/ds/daisi/fragment/SplashFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$1;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/SplashFragment;->access$000(Lcom/ds/daisi/fragment/SplashFragment;)Lcom/ds/daisi/mvp/presenters/TemplatePresenter;

    move-result-object p1

    const-class v0, Lcom/ds/daisi/fragment/SplashFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/SplashFragment$1;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-virtual {v1}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/ds/daisi/net/URL/URLConstant;->MONOMER_INSTALLATION_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/ds/daisi/mvp/presenters/TemplatePresenter;->singleApkOrTemplateChecked(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$1;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/SplashFragment;->access$100(Lcom/ds/daisi/fragment/SplashFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 111
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$1;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/SplashFragment;->access$400(Lcom/ds/daisi/fragment/SplashFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ds/daisi/fragment/SplashFragment$1$1;

    invoke-direct {v0, p0}, Lcom/ds/daisi/fragment/SplashFragment$1$1;-><init>(Lcom/ds/daisi/fragment/SplashFragment$1;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$1;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/SplashFragment;->access$000(Lcom/ds/daisi/fragment/SplashFragment;)Lcom/ds/daisi/mvp/presenters/TemplatePresenter;

    move-result-object p1

    const-class v0, Lcom/ds/daisi/fragment/SplashFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/SplashFragment$1;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-virtual {v1}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/ds/daisi/net/URL/URLConstant;->TEMPLATE_MANAGER:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/ds/daisi/mvp/presenters/TemplatePresenter;->singleApkOrTemplateChecked(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

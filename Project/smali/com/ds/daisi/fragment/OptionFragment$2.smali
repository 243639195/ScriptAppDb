.class Lcom/ds/daisi/fragment/OptionFragment$2;
.super Landroid/os/Handler;
.source "OptionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/OptionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/OptionFragment;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/OptionFragment;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$2;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 916
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 917
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 919
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$2;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "com.cyjh.elfin.20150527"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "http.agent"

    .line 920
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MIUI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 921
    new-instance p1, Lcom/ds/daisi/dialog/MIUIGuideDialog;

    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment$2;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/OptionFragment;->access$500(Lcom/ds/daisi/fragment/OptionFragment;)Lcom/ds/daisi/activity/ElfinPayActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ds/daisi/dialog/MIUIGuideDialog;-><init>(Landroid/content/Context;)V

    .line 922
    invoke-virtual {p1}, Lcom/ds/daisi/dialog/MIUIGuideDialog;->show()V

    goto/16 :goto_0

    .line 924
    :cond_1
    invoke-static {}, Lcom/ds/daisi/rom/FloatWindowManager;->getInstance()Lcom/ds/daisi/rom/FloatWindowManager;

    move-result-object p1

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ds/daisi/rom/FloatWindowManager;->checkPermission(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 925
    invoke-static {}, Lcom/ds/daisi/rom/FloatWindowManager;->getInstance()Lcom/ds/daisi/rom/FloatWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment$2;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-virtual {v0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ds/daisi/rom/FloatWindowManager;->applyPermission(Landroid/content/Context;)V

    goto :goto_0

    .line 927
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8bd5\u7528\u72b6\u6001\u7684"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment$2;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object v0, v0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget v0, v0, Lcom/ds/daisi/AppContext;->payCheckType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 929
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$2;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->payCheckType:I

    if-ne p1, v1, :cond_3

    .line 930
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$2;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/OptionFragment;->access$600(Lcom/ds/daisi/fragment/OptionFragment;)Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment$2;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-virtual {v0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;->getScriptTryCount(Landroid/content/Context;)V

    goto :goto_0

    .line 933
    :cond_3
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$2;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mSharedUsed:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "sciprt_user_type"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 934
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$2;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mSharedUsed:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "script_try_count"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 935
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$2;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/OptionFragment;->access$700(Lcom/ds/daisi/fragment/OptionFragment;)V

    :goto_0
    return-void
.end method

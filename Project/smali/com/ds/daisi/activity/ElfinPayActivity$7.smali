.class Lcom/ds/daisi/activity/ElfinPayActivity$7;
.super Ljava/lang/Object;
.source "ElfinPayActivity.java"

# interfaces
.implements Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/ElfinPayActivity;->startCircleRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/ElfinPayActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V
    .locals 0

    .line 1160
    iput-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity$7;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackSuc(Ljava/lang/Object;)V
    .locals 2

    .line 1163
    check-cast p1, Ljava/lang/String;

    .line 1164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1165
    const-class v0, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;

    .line 1166
    invoke-static {p1, v0}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;

    if-eqz p1, :cond_0

    .line 1167
    iget v0, p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 1169
    new-instance p1, Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;

    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$7;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;-><init>(Lcom/ds/daisi/activity/ElfinPayActivity;Lcom/ds/daisi/activity/ElfinPayActivity$1;)V

    .line 1170
    invoke-static {p1}, Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;->access$1700(Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1173
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1175
    :cond_1
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    const v0, 0x7f0900db

    invoke-static {p1, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    goto :goto_0

    .line 1179
    :cond_2
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    const v0, 0x7f0900d9

    invoke-static {p1, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    .line 1181
    :goto_0
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->cleanCallback()V

    return-void
.end method

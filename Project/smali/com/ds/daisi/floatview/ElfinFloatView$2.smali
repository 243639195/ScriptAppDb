.class Lcom/ds/daisi/floatview/ElfinFloatView$2;
.super Ljava/lang/Object;
.source "ElfinFloatView.java"

# interfaces
.implements Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnClickScriptRunCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/floatview/ElfinFloatView;->runScriptOperate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/floatview/ElfinFloatView;


# direct methods
.method constructor <init>(Lcom/ds/daisi/floatview/ElfinFloatView;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$2;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackFail()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$2;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$702(Lcom/ds/daisi/floatview/ElfinFloatView;Z)Z

    return-void
.end method

.method public onCallbackSuc(Ljava/lang/Object;)V
    .locals 3

    .line 537
    check-cast p1, Ljava/lang/String;

    .line 538
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 539
    const-class v0, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;

    .line 540
    invoke-static {p1, v0}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;

    if-eqz p1, :cond_0

    .line 541
    iget v0, p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Code:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 543
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$2;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$500(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/AppContext;

    move-result-object p1

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 544
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$2;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1, v1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$600(Lcom/ds/daisi/floatview/ElfinFloatView;Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 548
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :cond_1
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    const v0, 0x7f0900db

    invoke-static {p1, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    goto :goto_0

    .line 554
    :cond_2
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    const v0, 0x7f0900d9

    invoke-static {p1, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    .line 556
    :cond_3
    :goto_0
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->cleanCallback()V

    .line 557
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$2;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1, v1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$702(Lcom/ds/daisi/floatview/ElfinFloatView;Z)Z

    return-void
.end method

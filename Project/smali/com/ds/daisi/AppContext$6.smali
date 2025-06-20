.class Lcom/ds/daisi/AppContext$6;
.super Ljava/lang/Object;
.source "AppContext.java"

# interfaces
.implements Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnClickScriptRunCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/AppContext;->onKeyEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/AppContext;


# direct methods
.method constructor <init>(Lcom/ds/daisi/AppContext;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/ds/daisi/AppContext$6;->this$0:Lcom/ds/daisi/AppContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackFail()V
    .locals 2

    .line 876
    iget-object v0, p0, Lcom/ds/daisi/AppContext$6;->this$0:Lcom/ds/daisi/AppContext;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ds/daisi/AppContext;->access$602(Lcom/ds/daisi/AppContext;Z)Z

    return-void
.end method

.method public onCallbackSuc(Ljava/lang/Object;)V
    .locals 2

    .line 853
    check-cast p1, Ljava/lang/String;

    .line 854
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 855
    const-class v0, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;

    .line 856
    invoke-static {p1, v0}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;

    if-eqz p1, :cond_0

    .line 857
    iget v0, p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 859
    iget-object p1, p0, Lcom/ds/daisi/AppContext$6;->this$0:Lcom/ds/daisi/AppContext;

    invoke-static {p1}, Lcom/ds/daisi/AppContext;->access$500(Lcom/ds/daisi/AppContext;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 862
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 864
    :cond_1
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    const v0, 0x7f0900db

    invoke-static {p1, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    goto :goto_0

    .line 868
    :cond_2
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    const v0, 0x7f0900d9

    invoke-static {p1, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    .line 870
    :goto_0
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->cleanCallback()V

    .line 871
    iget-object p1, p0, Lcom/ds/daisi/AppContext$6;->this$0:Lcom/ds/daisi/AppContext;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ds/daisi/AppContext;->access$602(Lcom/ds/daisi/AppContext;Z)Z

    return-void
.end method

.class Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;
.super Landroid/os/Handler;
.source "ScriptUipSetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/ScriptUipSetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ds/daisi/fragment/ScriptUipSetFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V
    .locals 1

    .line 922
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 923
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;Lcom/ds/daisi/fragment/ScriptUipSetFragment$1;)V
    .locals 0

    .line 919
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 928
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    if-eqz v0, :cond_0

    .line 930
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 943
    :pswitch_0
    invoke-static {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$1800(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    goto :goto_0

    .line 938
    :pswitch_1
    invoke-static {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$1700(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    goto :goto_0

    .line 952
    :pswitch_2
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v1

    invoke-static {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$300(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)Lcom/ds/daisi/activity/ElfinPayActivity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 954
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object p1

    iget-object p1, p1, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    iget-wide v5, p1, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Id:J

    .line 952
    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->loadAd(Landroid/content/Context;IIJ)V

    goto :goto_0

    .line 948
    :pswitch_3
    invoke-static {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$1900(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    goto :goto_0

    .line 932
    :pswitch_4
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v7

    invoke-static {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$300(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)Lcom/ds/daisi/activity/ElfinPayActivity;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x2

    const-wide/16 v11, 0x3

    invoke-virtual/range {v7 .. v12}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->loadAd(Landroid/content/Context;IIJ)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

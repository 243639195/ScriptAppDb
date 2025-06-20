.class Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;
.super Landroid/os/Handler;
.source "FullScreenTwoAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;
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
            "Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)V
    .locals 1

    .line 259
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 260
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$1;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;-><init>(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 265
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    if-eqz v2, :cond_0

    .line 267
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 280
    :pswitch_0
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 281
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object p1

    iget-object p1, p1, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    iget-wide v5, p1, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Id:J

    .line 280
    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->loadAd(Landroid/content/Context;IIJ)V

    goto :goto_0

    .line 275
    :pswitch_1
    invoke-static {v2}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->access$300(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)V

    goto :goto_0

    .line 270
    :pswitch_2
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-wide/16 v5, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->loadAd(Landroid/content/Context;IIJ)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

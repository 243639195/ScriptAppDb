.class Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;
.super Landroid/os/Handler;
.source "SplashAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/news/SplashAppActivity;
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
            "Lcom/ds/daisi/activity/news/SplashAppActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/news/SplashAppActivity;)V
    .locals 1

    .line 508
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 509
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/news/SplashAppActivity;Lcom/ds/daisi/activity/news/SplashAppActivity$1;)V
    .locals 0

    .line 505
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;-><init>(Lcom/ds/daisi/activity/news/SplashAppActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 514
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ds/daisi/activity/news/SplashAppActivity;

    if-eqz v2, :cond_2

    .line 516
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "zzz"

    const-string v0, "SplashActivity--BG_DISPLAY_SUCCESS_STATIS_MESSAGE--\u540e\u53f0\u5e7f\u544a\u663e\u793a\u7edf\u8ba1"

    .line 544
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 546
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object p1

    iget-object p1, p1, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    iget-wide v5, p1, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Id:J

    .line 545
    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->loadAd(Landroid/content/Context;IIJ)V

    goto :goto_0

    :pswitch_1
    const-string p1, "zzz"

    const-string v0, "SplashActivity--ILFYAD_NET_REQUEST_MESSAGE--\u52a0\u8f7d\u8baf\u98de\u5e7f\u544a"

    .line 540
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$1000(Lcom/ds/daisi/activity/news/SplashAppActivity;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "zzz"

    const-string v0, "SplashActivity--LOAD_BACKGROUND_MESSAGE--\u52a0\u8f7d\u540e\u53f0\u5e7f\u544a"

    .line 525
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ds/daisi/entity/ParamsWrap;->isDisplayBackgroundSetAd(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 528
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object p1

    iget-object p1, p1, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    iget-object p1, p1, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->ImageUrl:Ljava/lang/String;

    const-string v0, "zzz"

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SplashActivity--LOAD_BACKGROUND_MESSAGE--\u52a0\u8f7d\u540e\u53f0\u5e7f\u544a: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    invoke-static {v2, p1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$900(Lcom/ds/daisi/activity/news/SplashAppActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_0
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$300(Lcom/ds/daisi/activity/news/SplashAppActivity;)V

    goto :goto_0

    .line 536
    :cond_1
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$300(Lcom/ds/daisi/activity/news/SplashAppActivity;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "zzz"

    const-string v0, "SplashActivity--MyHandler--\u8baf\u98de\u5e7f\u544a\u8bf7\u6c42\u7edf\u8ba1"

    .line 519
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-wide/16 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->loadAd(Landroid/content/Context;IIJ)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

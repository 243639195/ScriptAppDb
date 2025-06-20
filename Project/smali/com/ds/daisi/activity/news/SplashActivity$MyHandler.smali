.class Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/news/SplashActivity;
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
            "Lcom/ds/daisi/activity/news/SplashActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 1

    .line 965
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 966
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/ds/daisi/activity/news/SplashActivity$1;)V
    .locals 0

    .line 962
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 971
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ds/daisi/activity/news/SplashActivity;

    if-eqz v2, :cond_2

    .line 973
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f090077

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1051
    :pswitch_0
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$500(Lcom/ds/daisi/activity/news/SplashActivity;)V

    goto/16 :goto_0

    .line 1047
    :pswitch_1
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$2500(Lcom/ds/daisi/activity/news/SplashActivity;)V

    goto/16 :goto_0

    .line 1043
    :pswitch_2
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$1200(Lcom/ds/daisi/activity/news/SplashActivity;)V

    goto/16 :goto_0

    .line 1039
    :pswitch_3
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$2400(Lcom/ds/daisi/activity/news/SplashActivity;)V

    goto/16 :goto_0

    .line 1035
    :pswitch_4
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$2300(Lcom/ds/daisi/activity/news/SplashActivity;)V

    goto/16 :goto_0

    .line 1031
    :pswitch_5
    invoke-static {v2}, Lcom/ds/daisi/util/IntentUtils;->toCallElfinPayActivity(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 994
    :pswitch_6
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$2000(Lcom/ds/daisi/activity/news/SplashActivity;)V

    goto/16 :goto_0

    .line 990
    :pswitch_7
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$1900(Lcom/ds/daisi/activity/news/SplashActivity;)V

    goto/16 :goto_0

    .line 1027
    :pswitch_8
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$2200(Lcom/ds/daisi/activity/news/SplashActivity;)V

    goto/16 :goto_0

    .line 1014
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1015
    const-class v0, Lcom/cyjh/share/bean/response/AppStartupResponse;

    invoke-static {p1, v0}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/response/AppStartupResponse;

    if-eqz p1, :cond_0

    .line 1016
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$900(Lcom/ds/daisi/activity/news/SplashActivity;)J

    move-result-wide v6

    iget-wide v8, p1, Lcom/cyjh/share/bean/response/AppStartupResponse;->ClientTimestamp:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    .line 1017
    invoke-virtual {v2, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->startupSuc(Lcom/cyjh/share/bean/response/AppStartupResponse;)V

    goto/16 :goto_0

    .line 1019
    :cond_0
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$900(Lcom/ds/daisi/activity/news/SplashActivity;)J

    move-result-wide v6

    iget-wide v8, p1, Lcom/cyjh/share/bean/response/AppStartupResponse;->ClientTimestamp:J

    cmp-long p1, v6, v8

    if-eqz p1, :cond_2

    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$900(Lcom/ds/daisi/activity/news/SplashActivity;)J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-eqz p1, :cond_2

    .line 1020
    invoke-virtual {v2, v1}, Lcom/ds/daisi/activity/news/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->access$2100(Lcom/ds/daisi/activity/news/SplashActivity;ILjava/lang/String;)V

    goto :goto_0

    .line 1002
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1003
    const-class v0, Lcom/cyjh/share/bean/response/TemplateResponse;

    invoke-static {p1, v0}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/response/TemplateResponse;

    if-eqz p1, :cond_1

    .line 1004
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$600(Lcom/ds/daisi/activity/news/SplashActivity;)J

    move-result-wide v6

    iget-wide v8, p1, Lcom/cyjh/share/bean/response/TemplateResponse;->ClientTimestamp:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    .line 1005
    invoke-virtual {v2, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->templateVerifySuccess(Lcom/cyjh/share/bean/response/TemplateResponse;)V

    goto :goto_0

    .line 1007
    :cond_1
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$600(Lcom/ds/daisi/activity/news/SplashActivity;)J

    move-result-wide v6

    iget-wide v8, p1, Lcom/cyjh/share/bean/response/TemplateResponse;->ClientTimestamp:J

    cmp-long p1, v6, v8

    if-eqz p1, :cond_2

    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$600(Lcom/ds/daisi/activity/news/SplashActivity;)J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-eqz p1, :cond_2

    .line 1008
    invoke-virtual {v2, v1}, Lcom/ds/daisi/activity/news/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->access$2100(Lcom/ds/daisi/activity/news/SplashActivity;ILjava/lang/String;)V

    goto :goto_0

    .line 998
    :pswitch_b
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 999
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object p1

    iget-object p1, p1, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    iget-wide v5, p1, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Id:J

    .line 998
    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->loadAd(Landroid/content/Context;IIJ)V

    goto :goto_0

    .line 986
    :pswitch_c
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$1800(Lcom/ds/daisi/activity/news/SplashActivity;)V

    goto :goto_0

    .line 982
    :pswitch_d
    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$1700(Lcom/ds/daisi/activity/news/SplashActivity;)V

    goto :goto_0

    .line 976
    :pswitch_e
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-wide/16 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->loadAd(Landroid/content/Context;IIJ)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

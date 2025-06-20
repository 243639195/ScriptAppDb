.class public Lcom/ds/daisi/entity/ParamsWrap;
.super Ljava/lang/Object;
.source "ParamsWrap.java"


# static fields
.field private static final ILFY_KEY_LENGTH:I = 0x20

.field private static sParamsWrap:Lcom/ds/daisi/entity/ParamsWrap;


# instance fields
.field public ExpireTime:J

.field public dailyTryTimes:I

.field public engineToken:Ljava/lang/String;

.field public feedbackTips:Ljava/lang/String;

.field public isFreeAd:I

.field public mAdInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

.field public mBuyRegCodeConfigInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/response/BuyRegCodeConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFlySettingInfo:Lcom/cyjh/share/bean/response/FlySettingInfo;

.field public mFlySettingInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/response/FlySettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mRecommendSettingInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/response/RecommendSettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mStartRunResponseInfo:Lcom/cyjh/share/bean/response/ScriptStartRunInfo;

.field public onceTryMinute:I

.field public unbindDeductHours:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanCollect()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/ds/daisi/entity/ParamsWrap;->mFlySettingInfos:Ljava/util/List;

    .line 115
    iput-object v0, p0, Lcom/ds/daisi/entity/ParamsWrap;->mAdInfos:Ljava/util/List;

    .line 116
    iput-object v0, p0, Lcom/ds/daisi/entity/ParamsWrap;->mRecommendSettingInfos:Ljava/util/List;

    return-void
.end method

.method public static getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;
    .locals 2

    .line 120
    sget-object v0, Lcom/ds/daisi/entity/ParamsWrap;->sParamsWrap:Lcom/ds/daisi/entity/ParamsWrap;

    if-nez v0, :cond_1

    .line 121
    const-class v0, Lcom/ds/daisi/entity/ParamsWrap;

    monitor-enter v0

    .line 122
    :try_start_0
    sget-object v1, Lcom/ds/daisi/entity/ParamsWrap;->sParamsWrap:Lcom/ds/daisi/entity/ParamsWrap;

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Lcom/ds/daisi/entity/ParamsWrap;

    invoke-direct {v1}, Lcom/ds/daisi/entity/ParamsWrap;-><init>()V

    sput-object v1, Lcom/ds/daisi/entity/ParamsWrap;->sParamsWrap:Lcom/ds/daisi/entity/ParamsWrap;

    .line 125
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 127
    :cond_1
    :goto_0
    sget-object v0, Lcom/ds/daisi/entity/ParamsWrap;->sParamsWrap:Lcom/ds/daisi/entity/ParamsWrap;

    return-object v0
.end method


# virtual methods
.method public cleanData()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/ds/daisi/entity/ParamsWrap;->cleanCollect()V

    const/4 v0, 0x0

    .line 98
    sput-object v0, Lcom/ds/daisi/entity/ParamsWrap;->sParamsWrap:Lcom/ds/daisi/entity/ParamsWrap;

    return-void
.end method

.method public crateCollect()V
    .locals 1

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/entity/ParamsWrap;->mFlySettingInfos:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/entity/ParamsWrap;->mRecommendSettingInfos:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/entity/ParamsWrap;->mAdInfos:Ljava/util/List;

    return-void
.end method

.method public displayILFYAd(ILjava/lang/String;)Lcom/cyjh/share/bean/ILFYBean;
    .locals 7

    .line 49
    new-instance v0, Lcom/cyjh/share/bean/ILFYBean;

    invoke-direct {v0}, Lcom/cyjh/share/bean/ILFYBean;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/ds/daisi/entity/ParamsWrap;->mFlySettingInfos:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ds/daisi/entity/ParamsWrap;->mFlySettingInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/ds/daisi/entity/ParamsWrap;->mFlySettingInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/share/bean/response/FlySettingInfo;

    .line 56
    iget v4, v3, Lcom/cyjh/share/bean/response/FlySettingInfo;->AdType:I

    if-ne p1, v4, :cond_1

    .line 57
    iput-object v3, p0, Lcom/ds/daisi/entity/ParamsWrap;->mFlySettingInfo:Lcom/cyjh/share/bean/response/FlySettingInfo;

    .line 61
    :cond_2
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    .line 63
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v2

    .line 64
    iget-object v1, p0, Lcom/ds/daisi/entity/ParamsWrap;->mFlySettingInfo:Lcom/cyjh/share/bean/response/FlySettingInfo;

    iget v1, v1, Lcom/cyjh/share/bean/response/FlySettingInfo;->Active:I

    if-ne v1, v2, :cond_3

    int-to-double v3, p1

    iget-object p1, p0, Lcom/ds/daisi/entity/ParamsWrap;->mFlySettingInfo:Lcom/cyjh/share/bean/response/FlySettingInfo;

    iget-wide v5, p1, Lcom/cyjh/share/bean/response/FlySettingInfo;->Probability:D

    cmpg-double p1, v3, v5

    if-gez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/cyjh/share/bean/ILFYBean;->isDisplay:Z

    .line 66
    iget-object p1, p0, Lcom/ds/daisi/entity/ParamsWrap;->mFlySettingInfo:Lcom/cyjh/share/bean/response/FlySettingInfo;

    iget-object p1, p1, Lcom/cyjh/share/bean/response/FlySettingInfo;->FlyKey:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_4

    move-object p1, p2

    .line 70
    :cond_4
    iput-object p1, v0, Lcom/cyjh/share/bean/ILFYBean;->key:Ljava/lang/String;

    return-object v0

    .line 51
    :cond_5
    :goto_1
    iput-boolean v2, v0, Lcom/cyjh/share/bean/ILFYBean;->isDisplay:Z

    .line 52
    iput-object p2, v0, Lcom/cyjh/share/bean/ILFYBean;->key:Ljava/lang/String;

    return-object v0
.end method

.method public isDisplayBackgroundSetAd(I)Z
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/ds/daisi/entity/ParamsWrap;->mAdInfos:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ds/daisi/entity/ParamsWrap;->mAdInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/entity/ParamsWrap;->mAdInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    .line 79
    iget v3, v2, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->AdType:I

    if-ne v3, p1, :cond_1

    .line 80
    iput-object v2, p0, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    .line 81
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 v0, 0x64

    .line 83
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    int-to-double v2, p1

    .line 84
    iget-object p1, p0, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    iget-wide v4, p1, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Probability:D

    cmpg-double p1, v2, v4

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method public isFreeAd()Z
    .locals 2

    .line 93
    iget v0, p0, Lcom/ds/daisi/entity/ParamsWrap;->isFreeAd:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onClickBackgroundAdOpera(Landroid/content/Context;)V
    .locals 4

    .line 131
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    iget-object v0, v0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->LinkUrl:Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget-object v1, v1, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    iget v1, v1, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->OpenMethod:I

    .line 133
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v2

    iget-object v2, v2, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    iget-object v2, v2, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Title:Ljava/lang/String;

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 139
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {p1, v2, v0}, Lcom/ds/daisi/util/IntentUtils;->toCallWebH5LinkPageActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

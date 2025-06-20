.class Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$3;
.super Ljava/lang/Object;
.source "FullScreenTwoAdActivity.java"

# interfaces
.implements Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->onClickImgMyselfAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$3;->this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackSuc(Ljava/lang/Object;)V
    .locals 1

    .line 363
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->cleanCallback()V

    .line 364
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object p1

    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$3;->this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    invoke-virtual {p1, v0}, Lcom/ds/daisi/entity/ParamsWrap;->onClickBackgroundAdOpera(Landroid/content/Context;)V

    return-void
.end method

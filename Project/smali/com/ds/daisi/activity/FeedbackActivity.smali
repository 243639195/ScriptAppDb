.class public Lcom/ds/daisi/activity/FeedbackActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "FeedbackActivity.java"


# instance fields
.field mTitleView:Lcom/ds/daisi/customview/TitleView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initTitle()V
    .locals 2

    const v0, 0x7f1000a9

    .line 36
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/customview/TitleView;

    iput-object v0, p0, Lcom/ds/daisi/activity/FeedbackActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    .line 37
    iget-object v0, p0, Lcom/ds/daisi/activity/FeedbackActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0901b1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setTitleText(I)V

    .line 38
    iget-object v0, p0, Lcom/ds/daisi/activity/FeedbackActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityLeftImage(I)V

    .line 39
    iget-object v0, p0, Lcom/ds/daisi/activity/FeedbackActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setleftImage(I)V

    .line 40
    iget-object v0, p0, Lcom/ds/daisi/activity/FeedbackActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    new-instance v1, Lcom/ds/daisi/activity/FeedbackActivity$1;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/FeedbackActivity$1;-><init>(Lcom/ds/daisi/activity/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnLeftImageViewListener(Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;)V

    .line 46
    iget-object v0, p0, Lcom/ds/daisi/activity/FeedbackActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityRightImage(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04001d

    .line 26
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/FeedbackActivity;->setContentView(I)V

    .line 27
    invoke-direct {p0}, Lcom/ds/daisi/activity/FeedbackActivity;->initTitle()V

    .line 28
    invoke-virtual {p0}, Lcom/ds/daisi/activity/FeedbackActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lcom/ds/daisi/activity/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/ds/daisi/activity/FeedbackActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RootUtil;->isRoot()Z

    move-result v1

    .line 30
    invoke-static {v0, v1}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->newInstance(Ljava/lang/String;Z)Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;

    move-result-object v0

    const v1, 0x7f1000aa

    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 32
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 57
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 58
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 52
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

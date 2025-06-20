.class public Lcom/ds/daisi/activity/TermsOfServiceActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "TermsOfServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/TermsOfServiceActivity$OnLeftImageViewOnClicker;
    }
.end annotation


# instance fields
.field private mTitleView:Lcom/ds/daisi/customview/TitleView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f1000a5

    .line 26
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/customview/TitleView;

    iput-object v0, p0, Lcom/ds/daisi/activity/TermsOfServiceActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    .line 27
    iget-object v0, p0, Lcom/ds/daisi/activity/TermsOfServiceActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f090183

    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/TermsOfServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/ds/daisi/activity/TermsOfServiceActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityRightImage(I)V

    .line 29
    iget-object v0, p0, Lcom/ds/daisi/activity/TermsOfServiceActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setleftImage(I)V

    .line 30
    iget-object v0, p0, Lcom/ds/daisi/activity/TermsOfServiceActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    new-instance v1, Lcom/ds/daisi/activity/TermsOfServiceActivity$OnLeftImageViewOnClicker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/TermsOfServiceActivity$OnLeftImageViewOnClicker;-><init>(Lcom/ds/daisi/activity/TermsOfServiceActivity;Lcom/ds/daisi/activity/TermsOfServiceActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnLeftImageViewListener(Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;)V

    return-void
.end method

.method private replaceFragment()V
    .locals 3

    .line 34
    invoke-virtual {p0}, Lcom/ds/daisi/activity/TermsOfServiceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/ds/daisi/fragment/LicenseFragment;->newInstance()Lcom/ds/daisi/fragment/LicenseFragment;

    move-result-object v1

    const v2, 0x7f1000d8

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040032

    .line 20
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/TermsOfServiceActivity;->setContentView(I)V

    .line 21
    invoke-direct {p0}, Lcom/ds/daisi/activity/TermsOfServiceActivity;->initView()V

    .line 22
    invoke-direct {p0}, Lcom/ds/daisi/activity/TermsOfServiceActivity;->replaceFragment()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 57
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 51
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

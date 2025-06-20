.class public Lcom/ds/daisi/activity/LoginActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/LoginActivity$OnRightTextViewOnClicker;,
        Lcom/ds/daisi/activity/LoginActivity$OnLeftImageViewOnClicker;
    }
.end annotation


# instance fields
.field private mTitleView:Lcom/ds/daisi/customview/TitleView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f1000a5

    .line 29
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/customview/TitleView;

    iput-object v0, p0, Lcom/ds/daisi/activity/LoginActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    .line 30
    iget-object v0, p0, Lcom/ds/daisi/activity/LoginActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setleftImage(I)V

    .line 31
    iget-object v0, p0, Lcom/ds/daisi/activity/LoginActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0900e2

    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/ds/daisi/activity/LoginActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityTvRight(I)V

    .line 33
    iget-object v0, p0, Lcom/ds/daisi/activity/LoginActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f090145

    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setRightTvText(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/ds/daisi/activity/LoginActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityRightImage(I)V

    .line 35
    iget-object v0, p0, Lcom/ds/daisi/activity/LoginActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    new-instance v1, Lcom/ds/daisi/activity/LoginActivity$OnLeftImageViewOnClicker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/LoginActivity$OnLeftImageViewOnClicker;-><init>(Lcom/ds/daisi/activity/LoginActivity;Lcom/ds/daisi/activity/LoginActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnLeftImageViewListener(Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;)V

    .line 36
    iget-object v0, p0, Lcom/ds/daisi/activity/LoginActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    new-instance v1, Lcom/ds/daisi/activity/LoginActivity$OnRightTextViewOnClicker;

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/LoginActivity$OnRightTextViewOnClicker;-><init>(Lcom/ds/daisi/activity/LoginActivity;Lcom/ds/daisi/activity/LoginActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnRightTextViewListener(Lcom/ds/daisi/customview/TitleView$OnRightTextViewListener;)V

    return-void
.end method

.method private replaceFragment(I)V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/ds/daisi/activity/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 42
    invoke-static {p1}, Lcom/ds/daisi/fragment/LoginFragment;->newInstance(I)Lcom/ds/daisi/fragment/LoginFragment;

    move-result-object p1

    const v1, 0x7f1000b5

    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040024

    .line 22
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/LoginActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/ds/daisi/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-class v0, Lcom/ds/daisi/activity/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 24
    invoke-direct {p0}, Lcom/ds/daisi/activity/LoginActivity;->initView()V

    .line 25
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/LoginActivity;->replaceFragment(I)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 73
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 66
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 67
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

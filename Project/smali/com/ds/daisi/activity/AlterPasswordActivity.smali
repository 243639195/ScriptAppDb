.class public Lcom/ds/daisi/activity/AlterPasswordActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "AlterPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/AlterPasswordActivity$OnLeftImageViewClicker;
    }
.end annotation


# instance fields
.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mTitleView:Lcom/ds/daisi/customview/TitleView;

.field private userAccount:Ljava/lang/String;


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

    .line 30
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/AlterPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/customview/TitleView;

    iput-object v0, p0, Lcom/ds/daisi/activity/AlterPasswordActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    .line 31
    iget-object v0, p0, Lcom/ds/daisi/activity/AlterPasswordActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f090074

    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/AlterPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/ds/daisi/activity/AlterPasswordActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setleftImage(I)V

    .line 33
    iget-object v0, p0, Lcom/ds/daisi/activity/AlterPasswordActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityRightImage(I)V

    .line 34
    iget-object v0, p0, Lcom/ds/daisi/activity/AlterPasswordActivity;->mTitleView:Lcom/ds/daisi/customview/TitleView;

    new-instance v1, Lcom/ds/daisi/activity/AlterPasswordActivity$OnLeftImageViewClicker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/AlterPasswordActivity$OnLeftImageViewClicker;-><init>(Lcom/ds/daisi/activity/AlterPasswordActivity;Lcom/ds/daisi/activity/AlterPasswordActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnLeftImageViewListener(Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;)V

    return-void
.end method

.method private replaceFragment()V
    .locals 3

    .line 38
    invoke-virtual {p0}, Lcom/ds/daisi/activity/AlterPasswordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/activity/AlterPasswordActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 39
    iget-object v0, p0, Lcom/ds/daisi/activity/AlterPasswordActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/activity/AlterPasswordActivity;->userAccount:Ljava/lang/String;

    .line 40
    invoke-static {v1}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->newInstance(Ljava/lang/String;)Lcom/ds/daisi/fragment/AlterPasswordFragment;

    move-result-object v1

    const v2, 0x7f1000a6

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04001b

    .line 23
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/AlterPasswordActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/ds/daisi/activity/AlterPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-class v0, Lcom/ds/daisi/activity/AlterPasswordActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/activity/AlterPasswordActivity;->userAccount:Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Lcom/ds/daisi/activity/AlterPasswordActivity;->initView()V

    .line 26
    invoke-direct {p0}, Lcom/ds/daisi/activity/AlterPasswordActivity;->replaceFragment()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 61
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 62
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 55
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 56
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

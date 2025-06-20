.class public Lcom/ds/daisi/activity/BindRegisterCodeActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "BindRegisterCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/BindRegisterCodeActivity$OnLeftImageViewOnClicker;
    }
.end annotation


# instance fields
.field private mRegCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/activity/BindRegisterCodeActivity;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ds/daisi/activity/BindRegisterCodeActivity;->mRegCode:Ljava/lang/String;

    return-object p0
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f1000a5

    .line 34
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/BindRegisterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f090057

    .line 35
    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/BindRegisterCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 36
    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityRightImage(I)V

    const v1, 0x7f0200c2

    .line 37
    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setleftImage(I)V

    const v1, 0x7f090146

    .line 38
    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setRightTvText(I)V

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityTvRight(I)V

    .line 40
    new-instance v1, Lcom/ds/daisi/activity/BindRegisterCodeActivity$1;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/BindRegisterCodeActivity$1;-><init>(Lcom/ds/daisi/activity/BindRegisterCodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnRightTextViewListener(Lcom/ds/daisi/customview/TitleView$OnRightTextViewListener;)V

    .line 46
    new-instance v1, Lcom/ds/daisi/activity/BindRegisterCodeActivity$OnLeftImageViewOnClicker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/BindRegisterCodeActivity$OnLeftImageViewOnClicker;-><init>(Lcom/ds/daisi/activity/BindRegisterCodeActivity;Lcom/ds/daisi/activity/BindRegisterCodeActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnLeftImageViewListener(Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;)V

    return-void
.end method

.method private replaceFragment(Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/ds/daisi/activity/BindRegisterCodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 52
    invoke-static {p1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->newInstance(Ljava/lang/String;)Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    move-result-object p1

    const v1, 0x7f1000c0

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04002c

    .line 27
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/BindRegisterCodeActivity;->setContentView(I)V

    .line 28
    invoke-direct {p0}, Lcom/ds/daisi/activity/BindRegisterCodeActivity;->initView()V

    .line 29
    invoke-virtual {p0}, Lcom/ds/daisi/activity/BindRegisterCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-class v0, Lcom/ds/daisi/activity/BindRegisterCodeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/activity/BindRegisterCodeActivity;->mRegCode:Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/ds/daisi/activity/BindRegisterCodeActivity;->mRegCode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/BindRegisterCodeActivity;->replaceFragment(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 78
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onDestroy()V

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

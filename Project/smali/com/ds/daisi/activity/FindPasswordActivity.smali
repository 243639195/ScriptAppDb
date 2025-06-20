.class public Lcom/ds/daisi/activity/FindPasswordActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "FindPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/FindPasswordActivity$OnRightTextViewOnClicker;,
        Lcom/ds/daisi/activity/FindPasswordActivity$OnLeftImageViewListener;
    }
.end annotation


# static fields
.field public static final END_BIT:I = 0x12

.field public static final START_BIT:I = 0x6


# instance fields
.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mTitle:Lcom/ds/daisi/customview/TitleView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/ds/daisi/activity/FindPasswordActivity;)Landroid/support/v4/app/FragmentManager;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/ds/daisi/activity/FindPasswordActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object p0
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f1000a5

    .line 32
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/customview/TitleView;

    iput-object v0, p0, Lcom/ds/daisi/activity/FindPasswordActivity;->mTitle:Lcom/ds/daisi/customview/TitleView;

    .line 33
    iget-object v0, p0, Lcom/ds/daisi/activity/FindPasswordActivity;->mTitle:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setleftImage(I)V

    .line 34
    iget-object v0, p0, Lcom/ds/daisi/activity/FindPasswordActivity;->mTitle:Lcom/ds/daisi/customview/TitleView;

    new-instance v1, Lcom/ds/daisi/activity/FindPasswordActivity$OnLeftImageViewListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/FindPasswordActivity$OnLeftImageViewListener;-><init>(Lcom/ds/daisi/activity/FindPasswordActivity;Lcom/ds/daisi/activity/FindPasswordActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnLeftImageViewListener(Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;)V

    .line 35
    iget-object v0, p0, Lcom/ds/daisi/activity/FindPasswordActivity;->mTitle:Lcom/ds/daisi/customview/TitleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityRightImage(I)V

    .line 36
    iget-object v0, p0, Lcom/ds/daisi/activity/FindPasswordActivity;->mTitle:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0900e2

    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/FindPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setRightTvText(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/ds/daisi/activity/FindPasswordActivity;->mTitle:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0900b7

    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/FindPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/ds/daisi/activity/FindPasswordActivity;->mTitle:Lcom/ds/daisi/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityTvRight(I)V

    .line 39
    iget-object v0, p0, Lcom/ds/daisi/activity/FindPasswordActivity;->mTitle:Lcom/ds/daisi/customview/TitleView;

    new-instance v1, Lcom/ds/daisi/activity/FindPasswordActivity$OnRightTextViewOnClicker;

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/FindPasswordActivity$OnRightTextViewOnClicker;-><init>(Lcom/ds/daisi/activity/FindPasswordActivity;Lcom/ds/daisi/activity/FindPasswordActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnRightTextViewListener(Lcom/ds/daisi/customview/TitleView$OnRightTextViewListener;)V

    return-void
.end method

.method private replaceFragment()V
    .locals 3

    .line 43
    invoke-virtual {p0}, Lcom/ds/daisi/activity/FindPasswordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/activity/FindPasswordActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 44
    iget-object v0, p0, Lcom/ds/daisi/activity/FindPasswordActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->newInstance()Lcom/ds/daisi/fragment/FindPasswordOneFragment;

    move-result-object v1

    const v2, 0x7f1000af

    .line 44
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040020

    .line 26
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/FindPasswordActivity;->setContentView(I)V

    .line 27
    invoke-direct {p0}, Lcom/ds/daisi/activity/FindPasswordActivity;->initView()V

    .line 28
    invoke-direct {p0}, Lcom/ds/daisi/activity/FindPasswordActivity;->replaceFragment()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 77
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 78
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 71
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 72
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

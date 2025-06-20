.class public Lcom/ds/daisi/activity/RegisterActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/RegisterActivity$OnRightTextViewOnClicker;,
        Lcom/ds/daisi/activity/RegisterActivity$OnLeftImageViewListener;
    }
.end annotation


# static fields
.field public static final REGISTER_BY_LOGIN:Ljava/lang/String; = "login"

.field public static final REGISTER_BY_MAIN:Ljava/lang/String; = "main"


# instance fields
.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mTitle:Lcom/ds/daisi/customview/TitleView;

.field public registerJumpType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/ds/daisi/activity/RegisterActivity;)Landroid/support/v4/app/FragmentManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ds/daisi/activity/RegisterActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object p0
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f1000a5

    .line 35
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/customview/TitleView;

    iput-object v0, p0, Lcom/ds/daisi/activity/RegisterActivity;->mTitle:Lcom/ds/daisi/customview/TitleView;

    .line 36
    iget-object v0, p0, Lcom/ds/daisi/activity/RegisterActivity;->mTitle:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setleftImage(I)V

    .line 37
    iget-object v0, p0, Lcom/ds/daisi/activity/RegisterActivity;->mTitle:Lcom/ds/daisi/customview/TitleView;

    new-instance v1, Lcom/ds/daisi/activity/RegisterActivity$OnLeftImageViewListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/RegisterActivity$OnLeftImageViewListener;-><init>(Lcom/ds/daisi/activity/RegisterActivity;Lcom/ds/daisi/activity/RegisterActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnLeftImageViewListener(Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;)V

    .line 38
    iget-object v0, p0, Lcom/ds/daisi/activity/RegisterActivity;->mTitle:Lcom/ds/daisi/customview/TitleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityRightImage(I)V

    .line 39
    iget-object v0, p0, Lcom/ds/daisi/activity/RegisterActivity;->mTitle:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0900e2

    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setRightTvText(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/ds/daisi/activity/RegisterActivity;->mTitle:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f090147

    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/ds/daisi/activity/RegisterActivity;->mTitle:Lcom/ds/daisi/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityTvRight(I)V

    .line 42
    iget-object v0, p0, Lcom/ds/daisi/activity/RegisterActivity;->mTitle:Lcom/ds/daisi/customview/TitleView;

    new-instance v1, Lcom/ds/daisi/activity/RegisterActivity$OnRightTextViewOnClicker;

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/RegisterActivity$OnRightTextViewOnClicker;-><init>(Lcom/ds/daisi/activity/RegisterActivity;Lcom/ds/daisi/activity/RegisterActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnRightTextViewListener(Lcom/ds/daisi/customview/TitleView$OnRightTextViewListener;)V

    return-void
.end method

.method private replaceFragment()V
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/ds/daisi/activity/RegisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/activity/RegisterActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 47
    iget-object v0, p0, Lcom/ds/daisi/activity/RegisterActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/ds/daisi/fragment/RegisterOneFragment;->newInstance()Lcom/ds/daisi/fragment/RegisterOneFragment;

    move-result-object v1

    const v2, 0x7f1000bf

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04002b

    .line 29
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/RegisterActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/ds/daisi/activity/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-class v0, Lcom/ds/daisi/activity/RegisterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/activity/RegisterActivity;->registerJumpType:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/ds/daisi/activity/RegisterActivity;->initView()V

    .line 32
    invoke-direct {p0}, Lcom/ds/daisi/activity/RegisterActivity;->replaceFragment()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 85
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 86
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 79
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 80
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

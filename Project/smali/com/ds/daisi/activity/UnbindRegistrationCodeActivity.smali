.class public Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "UnbindRegistrationCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity$OnLeftImageViewOnClicker;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f1000a5

    .line 30
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f090146

    .line 31
    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 32
    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityRightImage(I)V

    const v1, 0x7f0200c2

    .line 33
    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setleftImage(I)V

    .line 34
    new-instance v1, Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity$OnLeftImageViewOnClicker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity$OnLeftImageViewOnClicker;-><init>(Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnLeftImageViewListener(Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;)V

    return-void
.end method

.method private replaceFragment(Ljava/lang/String;)V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 40
    invoke-static {p1}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->newInstance(Ljava/lang/String;)Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;

    move-result-object p1

    const v1, 0x7f1000c0

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04002c

    .line 24
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;->setContentView(I)V

    .line 25
    invoke-direct {p0}, Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;->initView()V

    .line 26
    invoke-virtual {p0}, Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-class v0, Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;->replaceFragment(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 66
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 61
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 55
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

.class public Lcom/ds/daisi/activity/MessageDetailActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "MessageDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/MessageDetailActivity$OnLeftImageOnClickerListener;
    }
.end annotation


# instance fields
.field private titleView:Lcom/ds/daisi/customview/TitleView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initTitleView()V
    .locals 3

    const v0, 0x7f1000bb

    .line 39
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/MessageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/customview/TitleView;

    iput-object v0, p0, Lcom/ds/daisi/activity/MessageDetailActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    .line 40
    iget-object v0, p0, Lcom/ds/daisi/activity/MessageDetailActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setleftImage(I)V

    .line 41
    iget-object v0, p0, Lcom/ds/daisi/activity/MessageDetailActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setTitleText(I)V

    .line 42
    iget-object v0, p0, Lcom/ds/daisi/activity/MessageDetailActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityRightImage(I)V

    .line 43
    iget-object v0, p0, Lcom/ds/daisi/activity/MessageDetailActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    new-instance v1, Lcom/ds/daisi/activity/MessageDetailActivity$OnLeftImageOnClickerListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/MessageDetailActivity$OnLeftImageOnClickerListener;-><init>(Lcom/ds/daisi/activity/MessageDetailActivity;Lcom/ds/daisi/activity/MessageDetailActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnLeftImageViewListener(Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;)V

    return-void
.end method

.method private replaceFragment(Lcom/ds/daisi/fragment/MsgDetailFragment;)V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/ds/daisi/activity/MessageDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1000bc

    .line 33
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 24
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040027

    .line 25
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/MessageDetailActivity;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lcom/ds/daisi/activity/MessageDetailActivity;->initTitleView()V

    .line 27
    invoke-virtual {p0}, Lcom/ds/daisi/activity/MessageDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-class v0, Lcom/ds/daisi/activity/MessageDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 28
    invoke-static {v0, v1}, Lcom/ds/daisi/fragment/MsgDetailFragment;->newInstance(J)Lcom/ds/daisi/fragment/MsgDetailFragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/MessageDetailActivity;->replaceFragment(Lcom/ds/daisi/fragment/MsgDetailFragment;)V

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

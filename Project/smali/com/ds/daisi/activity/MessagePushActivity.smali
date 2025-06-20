.class public Lcom/ds/daisi/activity/MessagePushActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "MessagePushActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/MessagePushActivity$OnRightTextViewOnClicker;,
        Lcom/ds/daisi/activity/MessagePushActivity$OnLeftImageOnClicker;
    }
.end annotation


# instance fields
.field private datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/share/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation
.end field

.field private mSharePres:Landroid/content/SharedPreferences;

.field private titleView:Lcom/ds/daisi/customview/TitleView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initTitleView()V
    .locals 4

    const v0, 0x7f1000bd

    .line 49
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/MessagePushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/customview/TitleView;

    iput-object v0, p0, Lcom/ds/daisi/activity/MessagePushActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    .line 50
    iget-object v0, p0, Lcom/ds/daisi/activity/MessagePushActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setleftImage(I)V

    .line 51
    iget-object v0, p0, Lcom/ds/daisi/activity/MessagePushActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    new-instance v1, Lcom/ds/daisi/activity/MessagePushActivity$OnLeftImageOnClicker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/MessagePushActivity$OnLeftImageOnClicker;-><init>(Lcom/ds/daisi/activity/MessagePushActivity;Lcom/ds/daisi/activity/MessagePushActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnLeftImageViewListener(Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;)V

    .line 52
    iget-object v0, p0, Lcom/ds/daisi/activity/MessagePushActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setTitleText(I)V

    .line 53
    iget-object v0, p0, Lcom/ds/daisi/activity/MessagePushActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setRightTvText(I)V

    .line 54
    iget-object v0, p0, Lcom/ds/daisi/activity/MessagePushActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityRightImage(I)V

    .line 55
    iget-object v0, p0, Lcom/ds/daisi/activity/MessagePushActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityTvRight(I)V

    .line 56
    iget-object v0, p0, Lcom/ds/daisi/activity/MessagePushActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    new-instance v3, Lcom/ds/daisi/activity/MessagePushActivity$OnRightTextViewOnClicker;

    invoke-direct {v3, p0, v2}, Lcom/ds/daisi/activity/MessagePushActivity$OnRightTextViewOnClicker;-><init>(Lcom/ds/daisi/activity/MessagePushActivity;Lcom/ds/daisi/activity/MessagePushActivity$1;)V

    invoke-virtual {v0, v3}, Lcom/ds/daisi/customview/TitleView;->setOnRightTextViewListener(Lcom/ds/daisi/customview/TitleView$OnRightTextViewListener;)V

    const-string v0, "small_red_dot"

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/ds/daisi/activity/MessagePushActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/activity/MessagePushActivity;->mSharePres:Landroid/content/SharedPreferences;

    .line 60
    iget-object v0, p0, Lcom/ds/daisi/activity/MessagePushActivity;->mSharePres:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "red_dot_flag"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private replaceFragment()V
    .locals 3

    .line 43
    invoke-virtual {p0}, Lcom/ds/daisi/activity/MessagePushActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/ds/daisi/activity/MessagePushActivity;->datas:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/ds/daisi/fragment/MsgPushFragment;->newInstance(Ljava/util/ArrayList;)Lcom/ds/daisi/fragment/MsgPushFragment;

    move-result-object v1

    const v2, 0x7f1000bc

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 45
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040028

    .line 34
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/MessagePushActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/ds/daisi/activity/MessagePushActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "msgData"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/activity/MessagePushActivity;->datas:Ljava/util/ArrayList;

    .line 36
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/ds/daisi/entity/MsgItem;

    const/16 v1, 0x3e9

    invoke-direct {v0, v1}, Lcom/ds/daisi/entity/MsgItem;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 37
    invoke-direct {p0}, Lcom/ds/daisi/activity/MessagePushActivity;->initTitleView()V

    .line 38
    invoke-direct {p0}, Lcom/ds/daisi/activity/MessagePushActivity;->replaceFragment()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 90
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 91
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 84
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 85
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

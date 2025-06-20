.class public Lcom/ds/daisi/activity/ScriptLogDetailActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "ScriptLogDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/ScriptLogDetailActivity$ReadScriptLogTask;,
        Lcom/ds/daisi/activity/ScriptLogDetailActivity$OnLeftImageViewListener;
    }
.end annotation


# instance fields
.field private btnShowMore:Landroid/widget/Button;

.field private isLastScriptLog:Z

.field private scriptLog:Lcom/ds/daisi/entity/ScriptLog;

.field private titleView:Lcom/ds/daisi/customview/TitleView;

.field private tvScriptLog:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/ds/daisi/activity/ScriptLogDetailActivity;)Lcom/ds/daisi/entity/ScriptLog;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->scriptLog:Lcom/ds/daisi/entity/ScriptLog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ds/daisi/activity/ScriptLogDetailActivity;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->tvScriptLog:Landroid/widget/TextView;

    return-object p0
.end method

.method private initScriptLog()V
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.cyjh.elfin.activity.SettingActivity.FlagLastLog"

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->isLastScriptLog:Z

    const-string v1, "ScriptLogActivity.ScriptLog"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/entity/ScriptLog;

    iput-object v0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->scriptLog:Lcom/ds/daisi/entity/ScriptLog;

    return-void
.end method

.method private initShowMoreButton()V
    .locals 2

    const v0, 0x7f1000c7

    .line 73
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->btnShowMore:Landroid/widget/Button;

    .line 74
    iget-boolean v0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->isLastScriptLog:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->btnShowMore:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->btnShowMore:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->btnShowMore:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initTitle()V
    .locals 3

    const v0, 0x7f1000c5

    .line 64
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/customview/TitleView;

    iput-object v0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    .line 65
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    iget-object v1, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->scriptLog:Lcom/ds/daisi/entity/ScriptLog;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/ScriptLog;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityRightImage(I)V

    .line 67
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setleftImage(I)V

    .line 68
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    new-instance v1, Lcom/ds/daisi/activity/ScriptLogDetailActivity$OnLeftImageViewListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/ScriptLogDetailActivity$OnLeftImageViewListener;-><init>(Lcom/ds/daisi/activity/ScriptLogDetailActivity;Lcom/ds/daisi/activity/ScriptLogDetailActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnLeftImageViewListener(Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;)V

    .line 69
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setTitleSize(I)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 57
    invoke-direct {p0}, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->initTitle()V

    .line 58
    invoke-direct {p0}, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->initShowMoreButton()V

    const v0, 0x7f1000c6

    .line 59
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->tvScriptLog:Landroid/widget/TextView;

    .line 60
    new-instance v0, Lcom/ds/daisi/activity/ScriptLogDetailActivity$ReadScriptLogTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ds/daisi/activity/ScriptLogDetailActivity$ReadScriptLogTask;-><init>(Lcom/ds/daisi/activity/ScriptLogDetailActivity;Lcom/ds/daisi/activity/ScriptLogDetailActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    iget-object v2, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->scriptLog:Lcom/ds/daisi/entity/ScriptLog;

    invoke-virtual {v2}, Lcom/ds/daisi/entity/ScriptLog;->getFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/ScriptLogDetailActivity$ReadScriptLogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1000c7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04002e

    .line 33
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->initScriptLog()V

    .line 35
    invoke-direct {p0}, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->initView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 46
    const-class v0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 47
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 40
    const-class v0, Lcom/ds/daisi/activity/ScriptLogDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 41
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

.class public Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ImageSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mImgLeftBack:Landroid/widget/ImageView;

.field private mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 39
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_img_left_back_arrow:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->mImgLeftBack:Landroid/widget/ImageView;

    .line 40
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_title:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->mTvTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 47
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_img_left_back_arrow:I

    if-ne p1, v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->requestWindowFeature(I)Z

    .line 29
    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->activity_img_select:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->setContentView(I)V

    .line 30
    invoke-static {}, Lcom/cyjh/share/manager/ActivitysManager;->getActivitysManager()Lcom/cyjh/share/manager/ActivitysManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/cyjh/share/manager/ActivitysManager;->addActivity(Landroid/app/Activity;)V

    .line 31
    invoke-direct {p0}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->initView()V

    .line 32
    iget-object p1, p0, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->mTvTitle:Landroid/widget/TextView;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->img_select_title:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p0, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->mTvTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->mImgLeftBack:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-static {}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->newInstance()Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    move-result-object p1

    const-string v0, "ImageSelectFragment"

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->replaceFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 76
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    const-string v0, "elfin"

    const-string v1, "ImageSelectActivity-- onDestroy"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/cyjh/share/manager/ActivitysManager;->getActivitysManager()Lcom/cyjh/share/manager/ActivitysManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/share/manager/ActivitysManager;->finishActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 70
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 71
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 64
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 65
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-nez p2, :cond_0

    .line 55
    sget p2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_fl_replace_fragment:I

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 57
    :cond_0
    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_fl_replace_fragment:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 59
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

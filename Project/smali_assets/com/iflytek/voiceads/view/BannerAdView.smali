.class public Lcom/iflytek/voiceads/view/BannerAdView;
.super Lcom/iflytek/voiceads/view/AdView;


# instance fields
.field private t:Z

.field private u:Landroid/content/Context;

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/view/AdView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->v:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Lcom/iflytek/voiceads/listener/InternalListener;)V
    .locals 6

    sget-object v4, Lcom/iflytek/voiceads/utils/a$a;->a:Lcom/iflytek/voiceads/utils/a$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/voiceads/view/AdView;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Lcom/iflytek/voiceads/utils/a$a;Lcom/iflytek/voiceads/listener/InternalListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->v:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->u:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/iflytek/voiceads/listener/IFLYAdListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->t:Z

    invoke-super {p0, p1}, Lcom/iflytek/voiceads/view/AdView;->a(Lcom/iflytek/voiceads/listener/IFLYAdListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized d(Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->u:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->u:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "IFLY_AD_SDK"

    const-string v1, "Ad is invisible, please check the app\'s state!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->l:Lcom/iflytek/voiceads/view/b;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/BannerAdView;->l:Lcom/iflytek/voiceads/view/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/view/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/BannerAdView;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/view/b;->a(Landroid/os/Message;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "Ad has no parent!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-boolean v1, p0, Lcom/iflytek/voiceads/view/BannerAdView;->v:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->v:Z

    :cond_3
    invoke-super {p0, p1}, Lcom/iflytek/voiceads/view/AdView;->d(Landroid/os/Message;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/iflytek/voiceads/view/BannerAdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "Ad is invisible, recycle delayed!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->l:Lcom/iflytek/voiceads/view/b;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/BannerAdView;->l:Lcom/iflytek/voiceads/view/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/view/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/BannerAdView;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/view/b;->a(Landroid/os/Message;I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/iflytek/voiceads/view/BannerAdView;->u:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/b;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "Ad is invisible,not in screen, recycle delayed!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->l:Lcom/iflytek/voiceads/view/b;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/BannerAdView;->l:Lcom/iflytek/voiceads/view/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/view/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/BannerAdView;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/view/b;->a(Landroid/os/Message;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized h()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "IFLY_AD_SDK"

    const-string v1, "recycleLoadAd"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "There isn\'t valid parent widget!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/iflytek/voiceads/utils/a$c;->e:Lcom/iflytek/voiceads/utils/a$c;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/BannerAdView;->l:Lcom/iflytek/voiceads/view/b;

    invoke-virtual {v1}, Lcom/iflytek/voiceads/view/b;->a()Lcom/iflytek/voiceads/utils/a$c;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "Ad is requesting, can\'t recycle load ad!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/BannerAdView;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->l:Lcom/iflytek/voiceads/view/b;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/BannerAdView;->l:Lcom/iflytek/voiceads/view/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/view/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/BannerAdView;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/view/b;->a(Landroid/os/Message;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->t:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public k()V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/voiceads/view/BannerAdView;->u:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/voiceads/param/d;->c(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/voiceads/view/BannerAdView;->u:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/voiceads/param/d;->d(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/voiceads/view/BannerAdView;->e:Lcom/iflytek/voiceads/param/a;

    invoke-virtual {v1}, Lcom/iflytek/voiceads/param/a;->b()I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/iflytek/voiceads/view/BannerAdView;->e:Lcom/iflytek/voiceads/param/a;

    invoke-virtual {v2}, Lcom/iflytek/voiceads/param/a;->a()I

    move-result v2

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/iflytek/voiceads/view/BannerAdView;->b:Landroid/widget/RelativeLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/voiceads/view/BannerAdView;->a(II)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/iflytek/voiceads/view/AdView;->onDetachedFromWindow()V

    return-void
.end method

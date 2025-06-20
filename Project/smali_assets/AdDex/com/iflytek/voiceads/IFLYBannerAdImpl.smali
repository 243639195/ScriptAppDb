.class public Lcom/iflytek/voiceads/IFLYBannerAdImpl;
.super Lcom/iflytek/voiceads/IFLYBannerAd;


# instance fields
.field public a:Lcom/iflytek/voiceads/view/BannerAdView;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/IFLYBannerAd;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/iflytek/voiceads/view/BannerAdView;

    iget-object v1, p0, Lcom/iflytek/voiceads/IFLYBannerAdImpl;->mInternalListener:Lcom/iflytek/voiceads/listener/InternalListener;

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/iflytek/voiceads/view/BannerAdView;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Lcom/iflytek/voiceads/listener/InternalListener;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/IFLYBannerAdImpl;->a:Lcom/iflytek/voiceads/view/BannerAdView;

    return-void
.end method

.method public static createBannerAd(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/voiceads/IFLYBannerAdImpl;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const-string v1, "IFLY_AD_SDK"

    const-string v2, "Ad constructor parameters error!"

    invoke-static {v1, v2}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/iflytek/voiceads/utils/i;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "IFLY_AD_SDK"

    const-string v2, "please check your uses-permission"

    invoke-static {v1, v2}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/iflytek/voiceads/IFLYBannerAdImpl;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/voiceads/IFLYBannerAdImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/iflytek/voiceads/IFLYBannerAd;->destroy()V

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYBannerAdImpl;->a:Lcom/iflytek/voiceads/view/BannerAdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYBannerAdImpl;->a:Lcom/iflytek/voiceads/view/BannerAdView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/view/BannerAdView;->l()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/voiceads/IFLYBannerAdImpl;->a:Lcom/iflytek/voiceads/view/BannerAdView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadAd(Lcom/iflytek/voiceads/listener/IFLYAdListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYBannerAdImpl;->a:Lcom/iflytek/voiceads/view/BannerAdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYBannerAdImpl;->a:Lcom/iflytek/voiceads/view/BannerAdView;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/view/BannerAdView;->a(Lcom/iflytek/voiceads/listener/IFLYAdListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYBannerAdImpl;->a:Lcom/iflytek/voiceads/view/BannerAdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYBannerAdImpl;->a:Lcom/iflytek/voiceads/view/BannerAdView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/voiceads/view/BannerAdView;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized showAd()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYBannerAdImpl;->a:Lcom/iflytek/voiceads/view/BannerAdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYBannerAdImpl;->a:Lcom/iflytek/voiceads/view/BannerAdView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/view/BannerAdView;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

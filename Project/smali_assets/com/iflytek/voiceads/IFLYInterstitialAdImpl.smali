.class public Lcom/iflytek/voiceads/IFLYInterstitialAdImpl;
.super Lcom/iflytek/voiceads/IFLYInterstitialAd;


# instance fields
.field public a:Lcom/iflytek/voiceads/view/InterstitialAdView;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/IFLYInterstitialAd;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/iflytek/voiceads/view/InterstitialAdView;

    iget-object v1, p0, Lcom/iflytek/voiceads/IFLYInterstitialAdImpl;->mInternalListener:Lcom/iflytek/voiceads/listener/InternalListener;

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/iflytek/voiceads/view/InterstitialAdView;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Lcom/iflytek/voiceads/listener/InternalListener;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/IFLYInterstitialAdImpl;->a:Lcom/iflytek/voiceads/view/InterstitialAdView;

    return-void
.end method

.method public static declared-synchronized createInterstitialAd(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/voiceads/IFLYInterstitialAd;
    .locals 4

    const/4 v0, 0x0

    const-class v1, Lcom/iflytek/voiceads/IFLYInterstitialAdImpl;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const-string v2, "IFLY_AD_SDK"

    const-string v3, "Ad constructor parameters error!"

    invoke-static {v2, v3}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/iflytek/voiceads/utils/i;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "IFLY_AD_SDK"

    const-string v3, "please check your uses-permission"

    invoke-static {v2, v3}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Lcom/iflytek/voiceads/IFLYInterstitialAdImpl;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/voiceads/IFLYInterstitialAdImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/iflytek/voiceads/IFLYInterstitialAd;->destroy()V

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYInterstitialAdImpl;->a:Lcom/iflytek/voiceads/view/InterstitialAdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYInterstitialAdImpl;->a:Lcom/iflytek/voiceads/view/InterstitialAdView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/view/InterstitialAdView;->l()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/voiceads/IFLYInterstitialAdImpl;->a:Lcom/iflytek/voiceads/view/InterstitialAdView;

    :cond_0
    return-void
.end method

.method public declared-synchronized loadAd(Lcom/iflytek/voiceads/listener/IFLYAdListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYInterstitialAdImpl;->a:Lcom/iflytek/voiceads/view/InterstitialAdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYInterstitialAdImpl;->a:Lcom/iflytek/voiceads/view/InterstitialAdView;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/view/InterstitialAdView;->a(Lcom/iflytek/voiceads/listener/IFLYAdListener;)V
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

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/iflytek/voiceads/IFLYInterstitialAd;->onDetachedFromWindow()V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYInterstitialAdImpl;->a:Lcom/iflytek/voiceads/view/InterstitialAdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYInterstitialAdImpl;->a:Lcom/iflytek/voiceads/view/InterstitialAdView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/voiceads/view/InterstitialAdView;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized showAd()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYInterstitialAdImpl;->a:Lcom/iflytek/voiceads/view/InterstitialAdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYInterstitialAdImpl;->a:Lcom/iflytek/voiceads/view/InterstitialAdView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/view/InterstitialAdView;->g()V
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

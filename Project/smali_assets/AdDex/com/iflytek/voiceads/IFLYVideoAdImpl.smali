.class public Lcom/iflytek/voiceads/IFLYVideoAdImpl;
.super Lcom/iflytek/voiceads/IFLYVideoAd;


# instance fields
.field private a:Lcom/iflytek/voiceads/e/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/iflytek/voiceads/listener/IFLYVideoListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/voiceads/IFLYVideoAd;-><init>()V

    new-instance v0, Lcom/iflytek/voiceads/e/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iflytek/voiceads/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/iflytek/voiceads/listener/IFLYVideoListener;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    return-void
.end method


# virtual methods
.method public backPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/e/a;->j()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cacheVideo()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/e/a;->b()V

    :cond_0
    return-void
.end method

.method public getVideoView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/e/a;->i()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/e/a;->a()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/e/a;->g()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/e/a;->h()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/e/a;->e()V

    :cond_0
    return-void
.end method

.method public setDirectJump(Z)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/e/a;->c(Z)V

    :cond_0
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/voiceads/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVolume(Z)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/e/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public setWifiTip(Z)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/e/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public varargs showAd([Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/e/a;->a([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public skipAd()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/e/a;->f()V

    :cond_0
    return-void
.end method

.method public startPlay()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/e/a;->d()V

    :cond_0
    return-void
.end method

.method public videoDownScroll()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/e/a;->l()V

    :cond_0
    return-void
.end method

.method public videoUpScroll()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;->a:Lcom/iflytek/voiceads/e/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/e/a;->k()V

    :cond_0
    return-void
.end method

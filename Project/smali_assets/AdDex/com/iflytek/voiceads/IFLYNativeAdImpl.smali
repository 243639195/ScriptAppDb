.class public Lcom/iflytek/voiceads/IFLYNativeAdImpl;
.super Lcom/iflytek/voiceads/IFLYNativeAd;


# instance fields
.field private a:Lcom/iflytek/voiceads/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/voiceads/IFLYNativeAd;-><init>()V

    new-instance v0, Lcom/iflytek/voiceads/c/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/iflytek/voiceads/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/IFLYNativeAdImpl;->a:Lcom/iflytek/voiceads/c/a;

    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYNativeAdImpl;->a:Lcom/iflytek/voiceads/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYNativeAdImpl;->a:Lcom/iflytek/voiceads/c/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/c/a;->a()V

    :cond_0
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYNativeAdImpl;->a:Lcom/iflytek/voiceads/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYNativeAdImpl;->a:Lcom/iflytek/voiceads/c/a;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/voiceads/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

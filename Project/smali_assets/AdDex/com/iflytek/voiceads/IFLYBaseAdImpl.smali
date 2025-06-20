.class public Lcom/iflytek/voiceads/IFLYBaseAdImpl;
.super Lcom/iflytek/voiceads/IFLYBaseAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/voiceads/IFLYBaseAd;-><init>()V

    return-void
.end method


# virtual methods
.method public getNativeAd(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)Lcom/iflytek/voiceads/IFLYNativeAd;
    .locals 1

    new-instance v0, Lcom/iflytek/voiceads/IFLYNativeAdImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/iflytek/voiceads/IFLYNativeAdImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V

    return-object v0
.end method

.method public getVideoAd(Landroid/content/Context;Ljava/lang/String;ILcom/iflytek/voiceads/listener/IFLYVideoListener;)Lcom/iflytek/voiceads/IFLYVideoAd;
    .locals 1

    new-instance v0, Lcom/iflytek/voiceads/IFLYVideoAdImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iflytek/voiceads/IFLYVideoAdImpl;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/iflytek/voiceads/listener/IFLYVideoListener;)V

    return-object v0
.end method

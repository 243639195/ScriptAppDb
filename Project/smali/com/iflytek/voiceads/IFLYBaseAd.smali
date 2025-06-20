.class public Lcom/iflytek/voiceads/IFLYBaseAd;
.super Ljava/lang/Object;


# instance fields
.field private cIFLYBaseAdImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private iFLYBaseAdImpl:Lcom/iflytek/voiceads/IFLYBaseAd;

.field private isClassLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/voiceads/IFLYBaseAd;->isClassLoaded:Z

    return-void
.end method


# virtual methods
.method public getNativeAd(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)Lcom/iflytek/voiceads/IFLYNativeAd;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYBaseAd;->iFLYBaseAdImpl:Lcom/iflytek/voiceads/IFLYBaseAd;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYBaseAd;->iFLYBaseAdImpl:Lcom/iflytek/voiceads/IFLYBaseAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/voiceads/IFLYBaseAd;->getNativeAd(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)Lcom/iflytek/voiceads/IFLYNativeAd;

    move-result-object p1

    return-object p1
.end method

.method public getVideoAd(Landroid/content/Context;Ljava/lang/String;ILcom/iflytek/voiceads/listener/IFLYVideoListener;)Lcom/iflytek/voiceads/IFLYVideoAd;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYBaseAd;->iFLYBaseAdImpl:Lcom/iflytek/voiceads/IFLYBaseAd;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYBaseAd;->iFLYBaseAdImpl:Lcom/iflytek/voiceads/IFLYBaseAd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iflytek/voiceads/IFLYBaseAd;->getVideoAd(Landroid/content/Context;Ljava/lang/String;ILcom/iflytek/voiceads/listener/IFLYVideoListener;)Lcom/iflytek/voiceads/IFLYVideoAd;

    move-result-object p1

    return-object p1
.end method

.method public initIFLYBaseAdImpl(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/voiceads/IFLYBaseAd;->isClassLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "com.iflytek.voiceads.IFLYBaseAdImpl"

    invoke-static {p1, v0}, Lcom/iflytek/voiceads/dex/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/voiceads/IFLYBaseAd;->cIFLYBaseAdImpl:Ljava/lang/Class;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/iflytek/voiceads/IFLYBaseAd;->isClassLoaded:Z

    :cond_0
    iget-object p1, p0, Lcom/iflytek/voiceads/IFLYBaseAd;->iFLYBaseAdImpl:Lcom/iflytek/voiceads/IFLYBaseAd;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/iflytek/voiceads/IFLYBaseAd;->cIFLYBaseAdImpl:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/voiceads/IFLYBaseAd;

    iput-object p1, p0, Lcom/iflytek/voiceads/IFLYBaseAd;->iFLYBaseAdImpl:Lcom/iflytek/voiceads/IFLYBaseAd;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_3
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/voiceads/config/SDKLogger;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

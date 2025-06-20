.class public Lcom/iflytek/voiceads/IFLYBannerAd;
.super Lcom/iflytek/voiceads/view/AdLayout;


# static fields
.field private static cIFLYBannerAdImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static iFLYBannerAdImpl:Lcom/iflytek/voiceads/IFLYBannerAd;

.field private static isClassLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/view/AdLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static createBannerAd(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/voiceads/IFLYBannerAd;
    .locals 7

    :try_start_0
    sget-boolean v0, Lcom/iflytek/voiceads/IFLYBannerAd;->isClassLoaded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "com.iflytek.voiceads.IFLYBannerAdImpl"

    invoke-static {p0, v0}, Lcom/iflytek/voiceads/dex/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iflytek/voiceads/IFLYBannerAd;->cIFLYBannerAdImpl:Ljava/lang/Class;

    sput-boolean v1, Lcom/iflytek/voiceads/IFLYBannerAd;->isClassLoaded:Z

    :cond_0
    sget-object v0, Lcom/iflytek/voiceads/IFLYBannerAd;->cIFLYBannerAdImpl:Ljava/lang/Class;

    const-string v2, "createBannerAd"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/voiceads/IFLYBannerAd;

    sput-object p1, Lcom/iflytek/voiceads/IFLYBannerAd;->iFLYBannerAdImpl:Lcom/iflytek/voiceads/IFLYBannerAd;

    sget-object p1, Lcom/iflytek/voiceads/IFLYBannerAd;->iFLYBannerAdImpl:Lcom/iflytek/voiceads/IFLYBannerAd;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "banner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "banner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "banner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_3
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "banner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/voiceads/config/SDKLogger;->e(Ljava/lang/String;)V

    new-instance p1, Lcom/iflytek/voiceads/IFLYBannerAd;

    invoke-direct {p1, p0}, Lcom/iflytek/voiceads/IFLYBannerAd;-><init>(Landroid/content/Context;)V

    return-object p1
.end method


# virtual methods
.method public loadAd(Lcom/iflytek/voiceads/listener/IFLYAdListener;)V
    .locals 2

    sget-object v0, Lcom/iflytek/voiceads/IFLYBannerAd;->iFLYBannerAdImpl:Lcom/iflytek/voiceads/IFLYBannerAd;

    if-nez v0, :cond_1

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/iflytek/voiceads/config/AdError;

    const v1, 0x1155a

    invoke-direct {v0, v1}, Lcom/iflytek/voiceads/config/AdError;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/iflytek/voiceads/listener/IFLYAdListener;->onAdFailed(Lcom/iflytek/voiceads/config/AdError;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/iflytek/voiceads/IFLYBannerAd;->iFLYBannerAdImpl:Lcom/iflytek/voiceads/IFLYBannerAd;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/IFLYBannerAd;->loadAd(Lcom/iflytek/voiceads/listener/IFLYAdListener;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/iflytek/voiceads/IFLYBannerAd;->iFLYBannerAdImpl:Lcom/iflytek/voiceads/IFLYBannerAd;

    if-nez v0, :cond_0

    const-string p1, "can\'t find AdDex file in assets"

    invoke-static {p1}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/iflytek/voiceads/IFLYBannerAd;->iFLYBannerAdImpl:Lcom/iflytek/voiceads/IFLYBannerAd;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/voiceads/IFLYBannerAd;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public showAd()V
    .locals 1

    sget-object v0, Lcom/iflytek/voiceads/IFLYBannerAd;->iFLYBannerAdImpl:Lcom/iflytek/voiceads/IFLYBannerAd;

    if-nez v0, :cond_0

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/iflytek/voiceads/IFLYBannerAd;->iFLYBannerAdImpl:Lcom/iflytek/voiceads/IFLYBannerAd;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYBannerAd;->showAd()V

    return-void
.end method

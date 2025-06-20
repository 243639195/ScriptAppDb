.class public Lcom/iflytek/voiceads/c/c;
.super Lcom/iflytek/voiceads/conn/NativeDataRef;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/voiceads/d/a;

.field private c:Lcom/iflytek/voiceads/d/b;

.field private d:Ljava/lang/String;

.field private e:Lcom/iflytek/voiceads/param/a;

.field private f:Lcom/iflytek/voiceads/listener/IFLYNativeListener;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/voiceads/d/b;Lcom/iflytek/voiceads/param/a;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/iflytek/voiceads/conn/NativeDataRef;-><init>()V

    iput-boolean v0, p0, Lcom/iflytek/voiceads/c/c;->g:Z

    iput-boolean v0, p0, Lcom/iflytek/voiceads/c/c;->h:Z

    iput-object p1, p0, Lcom/iflytek/voiceads/c/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/voiceads/c/c;->c:Lcom/iflytek/voiceads/d/b;

    iget-object v0, p2, Lcom/iflytek/voiceads/d/b;->f:Lcom/iflytek/voiceads/d/a;

    iput-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, p2, Lcom/iflytek/voiceads/d/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/voiceads/c/c;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/voiceads/c/c;->e:Lcom/iflytek/voiceads/param/a;

    iput-object p4, p0, Lcom/iflytek/voiceads/c/c;->f:Lcom/iflytek/voiceads/listener/IFLYNativeListener;

    return-void
.end method

.method private a()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->L:Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->K:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->K:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v1}, Lcom/iflytek/voiceads/utils/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/iflytek/voiceads/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x8000

    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/iflytek/voiceads/param/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type=DeepLink&sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/iflytek/voiceads/utils/j;->b([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/iflytek/voiceads/param/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type=DeepFail&sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/voiceads/c/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v2}, Lcom/iflytek/voiceads/utils/j;->b([Ljava/lang/Object;)V

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "native deep"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/c/c;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/iflytek/voiceads/param/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type=NotInstall&sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/iflytek/voiceads/utils/j;->b([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/c/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid click url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/voiceads/c/c;->getActionType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->e:Lcom/iflytek/voiceads/param/a;

    iget-object v2, p0, Lcom/iflytek/voiceads/c/c;->d:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/iflytek/voiceads/request/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/param/a;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/iflytek/voiceads/param/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type=H5Open&sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/iflytek/voiceads/utils/j;->b([Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/c/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/download/d;->a(Landroid/content/Context;)Lcom/iflytek/voiceads/download/d;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->f:Lcom/iflytek/voiceads/listener/IFLYNativeListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/download/d;->a(Lcom/iflytek/voiceads/listener/DialogListener;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->e:Lcom/iflytek/voiceads/param/a;

    const-string v2, "download_alert"

    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/param/a;->c(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/download/d;->a(Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/voiceads/download/d;->a(Landroid/content/Context;Lcom/iflytek/voiceads/d/a;[Ljava/lang/Object;)V

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "startNativeDownload"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/voiceads/download/d;->a(Landroid/content/Context;Lcom/iflytek/voiceads/d/a;[Ljava/lang/Object;)V

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "startNativeDownload with url"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public downloadApp()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->t:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/c/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getActionType()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget v0, v0, Lcom/iflytek/voiceads/d/a;->M:I

    return v0
.end method

.method public getAdAudio()Lcom/iflytek/voiceads/bean/AdAudio;
    .locals 4

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->k:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/iflytek/voiceads/bean/AdAudio;

    invoke-direct {v0}, Lcom/iflytek/voiceads/bean/AdAudio;-><init>()V

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->k:Lorg/json/JSONObject;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/voiceads/bean/AdAudio;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->k:Lorg/json/JSONObject;

    const-string v2, "duration"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->k:Lorg/json/JSONObject;

    const-string v2, "duration"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/iflytek/voiceads/bean/AdAudio;->duration:I

    :cond_0
    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->k:Lorg/json/JSONObject;

    const-string v2, "bitrate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->k:Lorg/json/JSONObject;

    const-string v2, "bitrate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/iflytek/voiceads/bean/AdAudio;->bitrate:I

    :cond_1
    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->k:Lorg/json/JSONObject;

    const-string v2, "format"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->k:Lorg/json/JSONObject;

    const-string v2, "format"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/iflytek/voiceads/bean/AdAudio;->format:I

    :cond_2
    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->k:Lorg/json/JSONObject;

    const-string v2, "end_time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->k:Lorg/json/JSONObject;

    const-string v2, "end_time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/iflytek/voiceads/bean/AdAudio;->cacheDeadLine:J

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdSourceMark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->N:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()D
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-wide v0, v0, Lcom/iflytek/voiceads/d/a;->w:D

    return-wide v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioMonitor()Lcom/iflytek/voiceads/bean/AudioMonitor;
    .locals 3

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->k:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/iflytek/voiceads/bean/AudioMonitor;

    invoke-direct {v0}, Lcom/iflytek/voiceads/bean/AudioMonitor;-><init>()V

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v2, "start_urls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/voiceads/bean/AudioMonitor;->start_urls:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v2, "first_quartile_urls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/voiceads/bean/AudioMonitor;->first_quartile_urls:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v2, "mid_point_urls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/voiceads/bean/AudioMonitor;->mid_point_urls:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v2, "third_quartile_urls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/voiceads/bean/AudioMonitor;->third_quartile_urls:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v2, "complete_urls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/voiceads/bean/AudioMonitor;->complete_urls:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v2, "pause_urls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/voiceads/bean/AudioMonitor;->pause_urls:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v2, "resume_urls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/voiceads/bean/AudioMonitor;->resume_urls:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v2, "skip_urls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/voiceads/bean/AudioMonitor;->skip_urls:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v2, "mute_urls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/voiceads/bean/AudioMonitor;->mute_urls:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v2, "unmute_urls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/voiceads/bean/AudioMonitor;->unmute_urls:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v2, "replay_urls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/voiceads/bean/AudioMonitor;->replay_urls:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v2, "close_linear_urls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/voiceads/bean/AudioMonitor;->close_urls:Lorg/json/JSONArray;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getCtatext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPrice()D
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-wide v0, v0, Lcom/iflytek/voiceads/d/a;->A:D

    return-wide v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayLabels()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->G:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v3, v0, Lcom/iflytek/voiceads/d/a;->G:Lorg/json/JSONArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :try_start_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "IFLY_AD_SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get labels"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDownloads()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget v0, v0, Lcom/iflytek/voiceads/d/a;->r:I

    return v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->n:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->n:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->n:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getImgList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->g:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->g:Lorg/json/JSONObject;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->g:Lorg/json/JSONObject;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->h:Lorg/json/JSONObject;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->h:Lorg/json/JSONObject;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->i:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->i:Lorg/json/JSONObject;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->i:Lorg/json/JSONObject;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->f:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->f:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->f:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getLikes()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget v0, v0, Lcom/iflytek/voiceads/d/a;->y:I

    return v0
.end method

.method public getOriginalPrice()D
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-wide v0, v0, Lcom/iflytek/voiceads/d/a;->z:D

    return-wide v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->c:Lcom/iflytek/voiceads/d/b;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSponsored()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateID()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget v0, v0, Lcom/iflytek/voiceads/d/a;->a:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public isExposured()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/voiceads/c/c;->g:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/iflytek/voiceads/c/c;->a()V

    iget-boolean v2, p0, Lcom/iflytek/voiceads/c/c;->h:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/iflytek/voiceads/c/c;->g:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v2, v2, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v3, "click_urls"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/iflytek/voiceads/c/c;->a:Landroid/content/Context;

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/iflytek/voiceads/c/c;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "IFLY_AD_SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "native clk urls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onExposure(Landroid/view/View;)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/iflytek/voiceads/c/c;->g:Z

    if-eqz v0, :cond_1

    const-string v0, "IFLY_AD_SDK"

    const-string v2, "\u5df2\u66dd\u5149"

    invoke-static {v0, v2}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->e:Lcom/iflytek/voiceads/param/a;

    const-string v3, "lock_screen_ad"

    invoke-virtual {v0, v3}, Lcom/iflytek/voiceads/param/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "\u66dd\u5149\u5931\u8d25-L"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/b;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v4

    iget-object v5, p0, Lcom/iflytek/voiceads/c/c;->a:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/iflytek/voiceads/utils/b;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result v5

    const-string v6, "IFLY_AD_SDK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u66dd\u5149\u5931\u8d25-: B:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " V:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " S:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " I:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->e:Lcom/iflytek/voiceads/param/a;

    const-string v3, "auction_price"

    invoke-virtual {v0, v3}, Lcom/iflytek/voiceads/param/a;->e(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v3, "impress_urls"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/iflytek/voiceads/utils/j;->a(DLorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "impArray null"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "native imp urls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    iput-boolean v1, p0, Lcom/iflytek/voiceads/c/c;->g:Z

    const-string v3, "IFLY_AD_SDK"

    const-string v4, "\u66dd\u5149\u6210\u529f"

    invoke-static {v3, v4}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->a:Landroid/content/Context;

    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-static {v3}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    move v2, v1

    goto/16 :goto_0
.end method

.method public showIntroduce()V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/c/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/c;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/voiceads/c/c;->e:Lcom/iflytek/voiceads/param/a;

    iget-object v3, p0, Lcom/iflytek/voiceads/c/c;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/iflytek/voiceads/request/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/param/a;Ljava/lang/String;)V

    goto :goto_0
.end method

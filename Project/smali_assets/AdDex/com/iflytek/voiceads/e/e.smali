.class public Lcom/iflytek/voiceads/e/e;
.super Lcom/iflytek/voiceads/conn/VideoDataRef;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/voiceads/d/a;

.field private c:Lcom/iflytek/voiceads/d/b;

.field private d:Ljava/lang/String;

.field private e:Lcom/iflytek/voiceads/param/a;

.field private f:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/voiceads/d/b;Lcom/iflytek/voiceads/param/a;Lcom/iflytek/voiceads/listener/IFLYVideoListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/iflytek/voiceads/conn/VideoDataRef;-><init>()V

    iput-boolean v0, p0, Lcom/iflytek/voiceads/e/e;->g:Z

    iput-boolean v0, p0, Lcom/iflytek/voiceads/e/e;->h:Z

    iput-object p1, p0, Lcom/iflytek/voiceads/e/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/voiceads/e/e;->c:Lcom/iflytek/voiceads/d/b;

    iget-object v0, p2, Lcom/iflytek/voiceads/d/b;->f:Lcom/iflytek/voiceads/d/a;

    iput-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, p2, Lcom/iflytek/voiceads/d/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/voiceads/e/e;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/voiceads/e/e;->e:Lcom/iflytek/voiceads/param/a;

    iput-object p4, p0, Lcom/iflytek/voiceads/e/e;->f:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    return-void
.end method

.method private a()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->L:Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->K:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->K:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v1}, Lcom/iflytek/voiceads/utils/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/voiceads/e/e;->a:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/iflytek/voiceads/param/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type=DeepLink&sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/e/e;->d:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/iflytek/voiceads/e/e;->d:Ljava/lang/String;

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

    const-string v3, "video deep"

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
    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/e/e;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/iflytek/voiceads/param/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type=NotInstall&sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/e/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/iflytek/voiceads/utils/j;->b([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/e/e;->a(Ljava/lang/String;)V

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
    invoke-virtual {p0}, Lcom/iflytek/voiceads/e/e;->getActionType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/voiceads/e/e;->e:Lcom/iflytek/voiceads/param/a;

    iget-object v2, p0, Lcom/iflytek/voiceads/e/e;->d:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/iflytek/voiceads/request/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/param/a;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/iflytek/voiceads/param/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type=H5Open&sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/e/e;->d:Ljava/lang/String;

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

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/e/e;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/download/d;->a(Landroid/content/Context;)Lcom/iflytek/voiceads/download/d;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/e/e;->f:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/download/d;->a(Lcom/iflytek/voiceads/listener/DialogListener;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/e/e;->e:Lcom/iflytek/voiceads/param/a;

    const-string v2, "download_alert"

    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/param/a;->c(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/download/d;->a(Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/voiceads/e/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/voiceads/download/d;->a(Landroid/content/Context;Lcom/iflytek/voiceads/d/a;[Ljava/lang/Object;)V

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "startVideoDownload"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/iflytek/voiceads/e/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/voiceads/download/d;->a(Landroid/content/Context;Lcom/iflytek/voiceads/d/a;[Ljava/lang/Object;)V

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "startVideoDownload with url"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public downloadApp()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->t:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/e/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getActionType()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget v0, v0, Lcom/iflytek/voiceads/d/a;->M:I

    return v0
.end method

.method public getAdSourceMark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->N:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getCtatext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->n:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->n:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

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

.method public getImgUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->f:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->f:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

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

.method public getRequestID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->c:Lcom/iflytek/voiceads/d/b;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateID()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget v0, v0, Lcom/iflytek/voiceads/d/a;->a:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExposured()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/voiceads/e/e;->g:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/voiceads/e/e;->a()V

    iget-boolean v2, p0, Lcom/iflytek/voiceads/e/e;->h:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/iflytek/voiceads/e/e;->g:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v2, v2, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v3, "click_urls"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/iflytek/voiceads/e/e;->a:Landroid/content/Context;

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/iflytek/voiceads/e/e;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "IFLY_AD_SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video clk urls"

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
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/iflytek/voiceads/e/e;->g:Z

    if-eqz v0, :cond_1

    const-string v0, "IFLY_AD_SDK"

    const-string v2, "\u5df2\u66dd\u5149"

    invoke-static {v0, v2}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/b;->a(Landroid/content/Context;)Z

    move-result v3

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/b;->b(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v5

    iget-object v6, p0, Lcom/iflytek/voiceads/e/e;->a:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/iflytek/voiceads/utils/b;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result v6

    const-string v7, "IFLY_AD_SDK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u66dd\u5149\u5931\u8d25-: B:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " L:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " V:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " S:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " I:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->e:Lcom/iflytek/voiceads/param/a;

    const-string v3, "auction_price"

    invoke-virtual {v0, v3}, Lcom/iflytek/voiceads/param/a;->e(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v3, "impress_urls"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/iflytek/voiceads/utils/j;->a(DLorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_3

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

    const-string v4, "video imp urls"

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

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    iput-boolean v1, p0, Lcom/iflytek/voiceads/e/e;->g:Z

    const-string v3, "IFLY_AD_SDK"

    const-string v4, "\u66dd\u5149\u6210\u529f"

    invoke-static {v3, v4}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->a:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/voiceads/e/e;->b:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/voiceads/e/e;->e:Lcom/iflytek/voiceads/param/a;

    iget-object v3, p0, Lcom/iflytek/voiceads/e/e;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/iflytek/voiceads/request/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/param/a;Ljava/lang/String;)V

    goto :goto_0
.end method

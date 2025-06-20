.class public Lcom/iflytek/voiceads/request/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/iflytek/voiceads/param/a;Lcom/iflytek/voiceads/request/a$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x1

    const-string v0, "debug_mode"

    invoke-virtual {p1, v0}, Lcom/iflytek/voiceads/param/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/iflytek/voiceads/utils/g;->a(Z)V

    invoke-static {p0}, Lcom/iflytek/voiceads/utils/f;->a(Landroid/content/Context;)V

    :cond_0
    invoke-static {p0}, Lcom/iflytek/voiceads/utils/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/iflytek/voiceads/config/AdError;

    const v1, 0x1155b

    invoke-direct {v0, v1}, Lcom/iflytek/voiceads/config/AdError;-><init>(I)V

    throw v0

    :cond_1
    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/voiceads/param/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iflytek/voiceads/param/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/iflytek/voiceads/config/AdError;

    const v1, 0x1155d

    invoke-direct {v0, v1}, Lcom/iflytek/voiceads/config/AdError;-><init>(I)V

    throw v0

    :cond_2
    :try_start_0
    invoke-static {p0, p1}, Lcom/iflytek/voiceads/param/UploadData;->initParam(Landroid/content/Context;Lcom/iflytek/voiceads/param/a;)V

    invoke-static {}, Lcom/iflytek/voiceads/utils/Encoder;->packageData()[B

    move-result-object v0

    new-instance v1, Lcom/iflytek/voiceads/request/a;

    invoke-direct {v1}, Lcom/iflytek/voiceads/request/a;-><init>()V

    invoke-virtual {v1, p0}, Lcom/iflytek/voiceads/request/a;->a(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/request/a;->a(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/request/a;->b(I)V

    const-string v2, "http_request_timeout"

    invoke-virtual {p1, v2}, Lcom/iflytek/voiceads/param/a;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/request/a;->c(I)V

    sget-object v2, Lcom/iflytek/voiceads/param/c;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/iflytek/voiceads/request/a;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v1, p2}, Lcom/iflytek/voiceads/request/a;->a(Lcom/iflytek/voiceads/request/a$a;)V

    const-string v0, "adUnitID"

    invoke-virtual {p1}, Lcom/iflytek/voiceads/param/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAd:"

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
.end method

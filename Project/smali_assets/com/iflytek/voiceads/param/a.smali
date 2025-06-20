.class public Lcom/iflytek/voiceads/param/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/iflytek/voiceads/param/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/voiceads/param/f;

    invoke-direct {v0}, Lcom/iflytek/voiceads/param/f;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/param/a;->b:Lcom/iflytek/voiceads/param/f;

    iput-object p1, p0, Lcom/iflytek/voiceads/param/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/iflytek/voiceads/param/a;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "debug_mode"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/voiceads/param/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "back_key_enable"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/voiceads/param/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "download_alert"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/voiceads/param/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http_request_timeout"

    const/16 v1, 0x3a98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/voiceads/param/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "lock_screen_ad"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/voiceads/param/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "banner_recycle"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/voiceads/param/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "banner_interval"

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/voiceads/param/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "request_id"

    invoke-direct {p0}, Lcom/iflytek/voiceads/param/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/voiceads/param/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "currency"

    const-string v1, "CNY"

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/voiceads/param/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/param/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/param/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AD_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/param/a;->b:Lcom/iflytek/voiceads/param/f;

    const-string v1, "adw"

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/param/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/param/a;->b:Lcom/iflytek/voiceads/param/f;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/param/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/voiceads/param/a;->b:Lcom/iflytek/voiceads/param/f;

    const-string v1, "adw"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/param/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/param/a;->b:Lcom/iflytek/voiceads/param/f;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/voiceads/param/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/param/a;->b:Lcom/iflytek/voiceads/param/f;

    const-string v1, "adh"

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/param/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/param/a;->b:Lcom/iflytek/voiceads/param/f;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/param/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get str param :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/voiceads/param/a;->b:Lcom/iflytek/voiceads/param/f;

    const-string v1, "adh"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/param/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/param/a;->b:Lcom/iflytek/voiceads/param/f;

    const-string v1, "adunit_id"

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/param/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/param/a;->b:Lcom/iflytek/voiceads/param/f;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/param/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get boolean param :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/param/a;->b:Lcom/iflytek/voiceads/param/f;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/param/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get int param :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)D
    .locals 6

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/param/a;->b:Lcom/iflytek/voiceads/param/f;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/param/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/param/a;->b:Lcom/iflytek/voiceads/param/f;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/param/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get double param :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/param/a;->b:Lcom/iflytek/voiceads/param/f;

    const-string v1, "adunit_id"

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/voiceads/param/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

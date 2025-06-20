.class public Lcom/iflytek/voiceads/download/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/download/p$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/iflytek/voiceads/download/p$a;)V
    .locals 5

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "com.iflytek.voiceads.download.DownloadService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/iflytek/voiceads/download/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/voiceads/utils/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "format"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, ".mp4"

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p0}, Lcom/iflytek/voiceads/download/a;->a(Landroid/content/Context;)Lcom/iflytek/voiceads/download/a/b;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/iflytek/voiceads/download/a/b;->a(I)Lcom/iflytek/voiceads/download/d/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/iflytek/voiceads/download/d/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/iflytek/voiceads/download/p$a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCache:"

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

    :catch_1
    move-exception v0

    :try_start_2
    const-string v0, "IFLY_AD_SDK"

    const-string v1, "service not found"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    const-string v0, ".mp4"

    goto :goto_1

    :pswitch_1
    const-string v0, ".3gp"

    goto :goto_1

    :pswitch_2
    const-string v0, ".avi"

    goto :goto_1

    :pswitch_3
    const-string v0, ".flv"

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/iflytek/voiceads/download/d/a$a;

    invoke-direct {v1}, Lcom/iflytek/voiceads/download/d/a$a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/download/d/a$a;->a(Ljava/lang/String;)Lcom/iflytek/voiceads/download/d/a$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/download/d/a$a;->b(Ljava/lang/String;)Lcom/iflytek/voiceads/download/d/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/voiceads/download/d/a$a;->a()Lcom/iflytek/voiceads/download/d/a;

    move-result-object v1

    new-instance v2, Lcom/iflytek/voiceads/download/q;

    invoke-direct {v2, p2, v0}, Lcom/iflytek/voiceads/download/q;-><init>(Lcom/iflytek/voiceads/download/p$a;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/download/d/a;->a(Lcom/iflytek/voiceads/download/a/a;)V

    invoke-interface {v3, v1}, Lcom/iflytek/voiceads/download/a/b;->a(Lcom/iflytek/voiceads/download/d/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

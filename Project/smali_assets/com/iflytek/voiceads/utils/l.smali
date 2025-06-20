.class public Lcom/iflytek/voiceads/utils/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/iflytek/voiceads/utils/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Lcom/iflytek/voiceads/utils/m;

    invoke-direct {v1, p0}, Lcom/iflytek/voiceads/utils/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/iflytek/voiceads/utils/m;->a()Z

    move-result v0

    goto :goto_0

    :sswitch_0
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_1

    :sswitch_1
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_1
    new-instance v1, Lcom/iflytek/voiceads/utils/n;

    invoke-direct {v1}, Lcom/iflytek/voiceads/utils/n;-><init>()V

    invoke-virtual {v1}, Lcom/iflytek/voiceads/utils/n;->a()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x516a29a7 -> :sswitch_1
        0x6d24f988 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

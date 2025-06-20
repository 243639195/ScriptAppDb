.class public Lcom/iflytek/voiceads/utils/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(DLorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 4

    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "${AUCTION_PRICE}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "${AUCTION_PRICE}"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/voiceads/utils/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exp array"

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

.method public static varargs a([Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-string v0, "IFLY_AD_SDK"

    const-string v2, "sendMonitor"

    invoke-static {v0, v2}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    array-length v4, p0

    if-le v4, v6, :cond_0

    if-nez v1, :cond_0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    const/4 v5, 0x1

    aget-object v5, p0, v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    const/4 v5, 0x2

    aget-object v5, p0, v5

    aput-object v5, v4, v3

    invoke-static {v4}, Lcom/iflytek/voiceads/utils/j;->b([Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/iflytek/voiceads/utils/j;->b([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "MonitorUtil::sendMonitor() error"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static varargs b([Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v1, Lcom/iflytek/voiceads/request/a;

    invoke-direct {v1}, Lcom/iflytek/voiceads/request/a;-><init>()V

    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, v4, :cond_0

    aget-object v0, p0, v4

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/request/a;->a(Landroid/content/Context;)V

    const/4 v0, 0x2

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/request/a;->a(I)V

    :goto_0
    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/request/a;->b(I)V

    const/16 v0, 0x3a98

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/request/a;->c(I)V

    aget-object v0, p0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v3}, Lcom/iflytek/voiceads/request/a;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v1, v3}, Lcom/iflytek/voiceads/request/a;->a(Lcom/iflytek/voiceads/request/a$a;)V

    return-void

    :cond_0
    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/request/a;->a(Z)V

    goto :goto_0
.end method

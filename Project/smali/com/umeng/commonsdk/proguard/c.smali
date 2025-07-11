.class public Lcom/umeng/commonsdk/proguard/c;
.super Ljava/lang/Object;
.source "UMInternalDataProtocol.java"

# interfaces
.implements Lcom/umeng/commonsdk/framework/UMLogDataProtocol;


# static fields
.field private static final b:Ljava/lang/String; = "info"

.field private static final c:Ljava/lang/String; = "stat"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->c(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 153
    :cond_1
    new-instance v1, Lcom/umeng/commonsdk/proguard/j$c;

    invoke-direct {v1}, Lcom/umeng/commonsdk/proguard/j$c;-><init>()V

    .line 154
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->describeContents()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->a:I

    .line 155
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->b:Ljava/lang/String;

    .line 156
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->c:Ljava/lang/String;

    .line 157
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 158
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->d:I

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    .line 160
    iput v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->d:I

    .line 163
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 164
    iput v4, v1, Lcom/umeng/commonsdk/proguard/j$c;->e:I

    goto :goto_1

    .line 166
    :cond_3
    iput v3, v1, Lcom/umeng/commonsdk/proguard/j$c;->e:I

    .line 169
    :goto_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->f:I

    .line 170
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->g:I

    .line 171
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->h:Ljava/lang/String;

    .line 172
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->i:I

    .line 173
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->j:I

    .line 174
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->g(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->k:I

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/umeng/commonsdk/proguard/j$c;->l:J

    if-eqz v0, :cond_6

    .line 182
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/n;->b(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 183
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    .line 184
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 185
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "ssid"

    const/4 v7, 0x0

    .line 186
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 188
    iget-object v6, v1, Lcom/umeng/commonsdk/proguard/j$c;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v3, :cond_6

    .line 196
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/n;->a(Landroid/content/Context;Lcom/umeng/commonsdk/proguard/j$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    if-eqz p0, :cond_6

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifiChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public removeCacheData(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setupReportData(J)Lorg/json/JSONObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public workEvent(Ljava/lang/Object;I)V
    .locals 5

    const-string v0, "walle"

    const/4 v1, 0x1

    .line 43
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[internal] workEvent"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 124
    :pswitch_0
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "info"

    .line 125
    invoke-virtual {p2, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 127
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "stat"

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 119
    :pswitch_1
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :pswitch_2
    :try_start_0
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/proguard/c;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    if-eqz p1, :cond_0

    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UM_INTERNAL_CACHE_WIFICHANGE_KEY:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/String;)V

    .line 114
    :cond_0
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 104
    :pswitch_3
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    check-cast p1, Lcom/umeng/commonsdk/proguard/j$b;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/n;->a(Landroid/content/Context;Lcom/umeng/commonsdk/proguard/j$b;)V

    goto/16 :goto_0

    :pswitch_4
    :try_start_1
    const-string p2, "walle"

    .line 96
    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[internal] workEvent cache station, event is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/s;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 99
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_5
    :try_start_2
    const-string p2, "walle"

    .line 86
    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[internal] workEvent cache battery, event is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/s;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p1

    .line 89
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_6
    :try_start_3
    const-string p2, "walle"

    .line 69
    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[internal] workEvent cache location, event is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    const-string v0, "umeng_common_config"

    invoke-virtual {p2, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 75
    :cond_1
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "location_json"

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    .line 79
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_7
    :try_start_4
    const-string p1, "walle"

    .line 49
    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "[internal] workEvent send envelope"

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "i_sdk_v"

    const-string v0, "1.2.0"

    .line 51
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/proguard/d;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p2

    .line 53
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "exception"

    .line 54
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "walle"

    .line 56
    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "[internal] workEvent send envelope back, result is ok"

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/proguard/j;->f(Landroid/content/Context;)V

    .line 58
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/proguard/r;->d(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception p1

    .line 62
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8001
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/umeng/commonsdk/proguard/h$1$1;
.super Lcom/umeng/commonsdk/proguard/i;
.source "UMSysLocationCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/proguard/h$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/proguard/g;

.field final synthetic b:Lcom/umeng/commonsdk/proguard/h$1;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/proguard/h$1;Lcom/umeng/commonsdk/proguard/g;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/h$1$1;->b:Lcom/umeng/commonsdk/proguard/h$1;

    iput-object p2, p0, Lcom/umeng/commonsdk/proguard/h$1$1;->a:Lcom/umeng/commonsdk/proguard/g;

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    .line 71
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-string p1, "UMSysLocationCache"

    const/4 v4, 0x1

    .line 72
    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lon is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", lat is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p1, v5}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    cmpl-double p1, v0, v5

    if-eqz p1, :cond_0

    cmpl-double p1, v2, v5

    if-eqz p1, :cond_0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 77
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v8, "lng"

    .line 79
    invoke-virtual {p1, v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "lat"

    .line 80
    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "ts"

    .line 81
    invoke-virtual {p1, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UMSysLocationCache"

    .line 83
    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-string v0, "UMSysLocationCache"

    .line 86
    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locationJSONObject is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/h$1$1;->b:Lcom/umeng/commonsdk/proguard/h$1;

    iget-object v0, v0, Lcom/umeng/commonsdk/proguard/h$1;->a:Landroid/content/Context;

    const v1, 0x8002

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/h$1$1;->b:Lcom/umeng/commonsdk/proguard/h$1;

    iget-object v2, v2, Lcom/umeng/commonsdk/proguard/h$1;->a:Landroid/content/Context;

    .line 89
    invoke-static {v2}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/proguard/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/proguard/b;->a()Lcom/umeng/commonsdk/proguard/c;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {v0, v1, v2, p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/h$1$1;->a:Lcom/umeng/commonsdk/proguard/g;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/g;->a()V

    return-void
.end method

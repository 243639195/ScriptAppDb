.class public Lcom/umeng/analytics/pro/h;
.super Ljava/lang/Object;
.source "AutoViewPageTracker.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static f:Lorg/json/JSONObject;


# instance fields
.field b:Z

.field c:Z

.field d:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->e:Ljava/util/Map;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/h;->b:Z

    .line 46
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/h;->c:Z

    .line 114
    new-instance v0, Lcom/umeng/analytics/pro/h$1;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/h$1;-><init>(Lcom/umeng/analytics/pro/h;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    .line 53
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/app/Activity;)V

    .line 58
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    .line 67
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/h;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/h;->b:Z

    .line 69
    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    iget-object v2, p0, Lcom/umeng/analytics/pro/h;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 70
    sget-object v1, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 71
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/h;->c:Z

    .line 72
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/h;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/h;Landroid/app/Activity;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/h;->b(Landroid/app/Activity;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    .line 163
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-eqz v0, :cond_3

    .line 165
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "_$!pv_b"

    .line 166
    sget-object v2, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_$!ts"

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 169
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/b;->i()Lorg/json/JSONObject;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "_$!sp"

    .line 171
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__ii"

    .line 174
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "-1"

    :cond_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/o;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "__ii"

    const-string v2, "-1"

    .line 179
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2001

    .line 183
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p1

    .line 181
    invoke-static {v1, v2, p1, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :catch_0
    :cond_3
    iget-object p1, p0, Lcom/umeng/analytics/pro/h;->e:Ljava/util/Map;

    monitor-enter p1

    .line 189
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->e:Ljava/util/Map;

    sget-object v1, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    .line 96
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 98
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 99
    invoke-static {p0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p0

    .line 100
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/o;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    sget-object v3, Lcom/umeng/analytics/pro/g$a;->a:Lcom/umeng/analytics/pro/g$a;

    .line 99
    invoke-virtual {p0, v1, v2, v3}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z

    .line 103
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    sput-object p0, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 106
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_2
    return-void
.end method

.method static synthetic b(Lcom/umeng/analytics/pro/h;Landroid/app/Activity;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/h;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 6

    const-wide/16 v0, 0x0

    .line 196
    :try_start_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/h;->e:Ljava/util/Map;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :try_start_1
    iget-object v2, p0, Lcom/umeng/analytics/pro/h;->e:Ljava/util/Map;

    sget-object v3, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/umeng/analytics/pro/h;->e:Ljava/util/Map;

    sget-object v3, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long v4, v0, v2

    .line 199
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->e:Ljava/util/Map;

    sget-object v1, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v0, v4

    .line 201
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 203
    :try_start_2
    sget-object p1, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 205
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sput-object v2, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    .line 206
    sget-object v2, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    const-string v3, "page_name"

    sget-object v4, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    sget-object v2, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    const-string v3, "duration"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 210
    :catch_0
    :goto_0
    :try_start_4
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :catchall_1
    move-exception v0

    .line 201
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    :goto_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/h;->b:Z

    .line 82
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/h;->c(Landroid/app/Activity;)V

    .line 90
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/h;->a()V

    return-void
.end method

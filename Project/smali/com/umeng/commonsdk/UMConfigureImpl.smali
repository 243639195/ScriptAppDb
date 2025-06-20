.class public Lcom/umeng/commonsdk/UMConfigureImpl;
.super Ljava/lang/Object;
.source "UMConfigureImpl.java"


# static fields
.field private static a:Lcom/umeng/commonsdk/amap/b;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)V
    .locals 8

    const-class v0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v0

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    new-instance p0, Lcom/umeng/commonsdk/amap/a;

    invoke-direct {p0, v3}, Lcom/umeng/commonsdk/amap/a;-><init>(Landroid/content/Context;)V

    if-eqz p0, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/umeng/commonsdk/amap/a;->a()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 73
    invoke-static {v3}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 76
    sget-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Lcom/umeng/commonsdk/amap/b;

    if-nez p0, :cond_0

    .line 77
    new-instance p0, Lcom/umeng/commonsdk/amap/b;

    const-wide/16 v4, 0x2710

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/umeng/commonsdk/amap/b;-><init>(Landroid/content/Context;IJ)V

    sput-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Lcom/umeng/commonsdk/amap/b;

    .line 80
    :cond_0
    sget-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Lcom/umeng/commonsdk/amap/b;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/amap/b;->isAlive()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "AmapLBS"

    .line 81
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "[lbs-build] begin write LBS"

    aput-object v5, v4, v1

    invoke-static {p0, v4}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    sget-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Lcom/umeng/commonsdk/amap/b;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/amap/b;->start()V

    goto :goto_2

    :cond_1
    const-string p0, "AmapLBS"

    .line 84
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "[lbs-build] not write start"

    aput-object v5, v4, v1

    invoke-static {p0, v4}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const-string p0, "AmapLBS"

    .line 88
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "[lbs-send] not get AMAP !!!"

    aput-object v5, v4, v1

    invoke-static {p0, v4}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v7, v3

    move-object v3, p0

    move-object p0, v7

    :goto_0
    :try_start_2
    const-string v4, "AmapLBS"

    .line 93
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {v3, p0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 68
    :goto_1
    monitor-exit v0

    throw p0

    .line 97
    :cond_3
    :goto_2
    monitor-exit v0

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 102
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/commonsdk/UMConfigureImpl$1;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/UMConfigureImpl$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static declared-synchronized c(Landroid/content/Context;)V
    .locals 8

    const-class v0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 135
    :try_start_0
    sget-boolean v3, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Z

    if-nez v3, :cond_2

    .line 136
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/umeng/commonsdk/UMConfigureImpl$2;

    invoke-direct {v4, p0}, Lcom/umeng/commonsdk/UMConfigureImpl$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 215
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 218
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 222
    :try_start_1
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->r(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "internal"

    .line 224
    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "e is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/k;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/proguard/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/commonsdk/proguard/k;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 231
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/k;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/proguard/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/commonsdk/proguard/k;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_4
    const-string v4, "internal"

    .line 234
    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "e is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 239
    :cond_1
    :goto_1
    sput-boolean v2, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception v3

    :try_start_5
    const-string v4, "internal"

    .line 244
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 134
    :goto_2
    monitor-exit v0

    throw p0

    .line 248
    :cond_2
    :goto_3
    monitor-exit v0

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigureImpl;->a(Landroid/content/Context;)V

    .line 41
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigureImpl;->b(Landroid/content/Context;)V

    .line 42
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigureImpl;->c(Landroid/content/Context;)V

    return-void
.end method

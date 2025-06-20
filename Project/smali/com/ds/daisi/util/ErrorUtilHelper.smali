.class public Lcom/ds/daisi/util/ErrorUtilHelper;
.super Ljava/lang/Object;
.source "ErrorUtilHelper.java"


# static fields
.field public static debugMode:Z

.field private static instance:Lcom/ds/daisi/util/ErrorUtilHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ds/daisi/util/ErrorUtilHelper;
    .locals 2

    const-class v0, Lcom/ds/daisi/util/ErrorUtilHelper;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/ds/daisi/util/ErrorUtilHelper;->instance:Lcom/ds/daisi/util/ErrorUtilHelper;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/ds/daisi/util/ErrorUtilHelper;

    invoke-direct {v1}, Lcom/ds/daisi/util/ErrorUtilHelper;-><init>()V

    sput-object v1, Lcom/ds/daisi/util/ErrorUtilHelper;->instance:Lcom/ds/daisi/util/ErrorUtilHelper;

    .line 27
    :cond_0
    sget-object v1, Lcom/ds/daisi/util/ErrorUtilHelper;->instance:Lcom/ds/daisi/util/ErrorUtilHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public writeProcessedStringToFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 31
    sget-boolean v0, Lcom/ds/daisi/util/ErrorUtilHelper;->debugMode:Z

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;->getNormalThreadPool()Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/util/ErrorUtilHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ds/daisi/util/ErrorUtilHelper$1;-><init>(Lcom/ds/daisi/util/ErrorUtilHelper;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->executeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

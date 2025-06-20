.class public Lcom/ds/daisi/util/FeLingAdDBHelper;
.super Ljava/lang/Object;
.source "FeLingAdDBHelper.java"


# static fields
.field public static final DSTRACK_URL:I = 0x1

.field public static final ISTRACK_URL:I = 0x2

.field private static instance:Lcom/ds/daisi/util/FeLingAdDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ds/daisi/util/FeLingAdDBHelper;
    .locals 2

    const-class v0, Lcom/ds/daisi/util/FeLingAdDBHelper;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/ds/daisi/util/FeLingAdDBHelper;->instance:Lcom/ds/daisi/util/FeLingAdDBHelper;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/ds/daisi/util/FeLingAdDBHelper;

    invoke-direct {v1}, Lcom/ds/daisi/util/FeLingAdDBHelper;-><init>()V

    sput-object v1, Lcom/ds/daisi/util/FeLingAdDBHelper;->instance:Lcom/ds/daisi/util/FeLingAdDBHelper;

    .line 25
    :cond_0
    sget-object v1, Lcom/ds/daisi/util/FeLingAdDBHelper;->instance:Lcom/ds/daisi/util/FeLingAdDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public deleteAllFeLingAdReportInfo(Ljava/lang/String;)I
    .locals 4

    .line 41
    :try_start_0
    const-class v0, Lcom/ds/daisi/entity/FeLingAdReportInfo;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "adPid =?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getFeLingAdReportInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ds/daisi/entity/FeLingAdReportInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 31
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adPid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/ds/daisi/entity/FeLingAdReportInfo;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

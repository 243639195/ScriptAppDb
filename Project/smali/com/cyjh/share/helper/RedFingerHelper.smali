.class public Lcom/cyjh/share/helper/RedFingerHelper;
.super Ljava/lang/Object;
.source "RedFingerHelper.java"


# static fields
.field private static TAG:Ljava/lang/String; = "RedFingerHelper"

.field private static instance:Lcom/cyjh/share/helper/RedFingerHelper;


# instance fields
.field private mRedFingerSwitch:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/cyjh/share/helper/RedFingerHelper;
    .locals 2

    .line 29
    sget-object v0, Lcom/cyjh/share/helper/RedFingerHelper;->instance:Lcom/cyjh/share/helper/RedFingerHelper;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/cyjh/share/helper/RedFingerHelper;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/cyjh/share/helper/RedFingerHelper;->instance:Lcom/cyjh/share/helper/RedFingerHelper;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/cyjh/share/helper/RedFingerHelper;

    invoke-direct {v1}, Lcom/cyjh/share/helper/RedFingerHelper;-><init>()V

    sput-object v1, Lcom/cyjh/share/helper/RedFingerHelper;->instance:Lcom/cyjh/share/helper/RedFingerHelper;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/cyjh/share/helper/RedFingerHelper;->instance:Lcom/cyjh/share/helper/RedFingerHelper;

    return-object v0
.end method


# virtual methods
.method public init(I)Lcom/cyjh/share/helper/RedFingerHelper;
    .locals 3

    .line 40
    sget-object v0, Lcom/cyjh/share/helper/RedFingerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init --> redFingerSwitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput p1, p0, Lcom/cyjh/share/helper/RedFingerHelper;->mRedFingerSwitch:I

    return-object p0
.end method

.method public isRunningDisable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.redfinger.appstore"

    .line 46
    invoke-static {p1, v0}, Lcom/cyjh/share/util/AppUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 47
    iget p1, p0, Lcom/cyjh/share/helper/RedFingerHelper;->mRedFingerSwitch:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

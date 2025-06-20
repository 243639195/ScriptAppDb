.class public Lcom/cyjh/share/helper/PhoneConfigHelper;
.super Ljava/lang/Object;
.source "PhoneConfigHelper.java"


# static fields
.field public static AND_MODE:I = 0x1

.field public static DISABLE_STATUS:I = 0x0

.field public static ENABLE_STATUS:I = 0x1

.field public static OR_MODE:I = 0x2

.field private static TAG:Ljava/lang/String; = "PhoneConfigHelper"

.field private static instance:Lcom/cyjh/share/helper/PhoneConfigHelper;


# instance fields
.field private mCloudPhoneType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/cyjh/share/helper/PhoneConfigHelper;
    .locals 2

    .line 33
    sget-object v0, Lcom/cyjh/share/helper/PhoneConfigHelper;->instance:Lcom/cyjh/share/helper/PhoneConfigHelper;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/cyjh/share/helper/PhoneConfigHelper;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/cyjh/share/helper/PhoneConfigHelper;->instance:Lcom/cyjh/share/helper/PhoneConfigHelper;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/cyjh/share/helper/PhoneConfigHelper;

    invoke-direct {v1}, Lcom/cyjh/share/helper/PhoneConfigHelper;-><init>()V

    sput-object v1, Lcom/cyjh/share/helper/PhoneConfigHelper;->instance:Lcom/cyjh/share/helper/PhoneConfigHelper;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/cyjh/share/helper/PhoneConfigHelper;->instance:Lcom/cyjh/share/helper/PhoneConfigHelper;

    return-object v0
.end method

.method private getPackageArr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 65
    sget-object v0, Lcom/cyjh/share/helper/PhoneConfigHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackageArr --> packageNames="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ","

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 71
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getRecognitionResult(Landroid/content/Context;I[Ljava/lang/String;)Z
    .locals 10

    .line 77
    sget-object v0, Lcom/cyjh/share/helper/PhoneConfigHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecognitionResult --> mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 82
    array-length v1, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    aget-object v5, p3, v0

    .line 83
    invoke-static {p1, v5}, Lcom/cyjh/share/util/AppUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 84
    sget-object v7, Lcom/cyjh/share/helper/PhoneConfigHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRecognitionResult --> packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",isInstall="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget v5, Lcom/cyjh/share/helper/PhoneConfigHelper;->AND_MODE:I

    if-ne p2, v5, :cond_0

    and-int/2addr v2, v6

    move v4, v2

    goto :goto_1

    .line 88
    :cond_0
    sget v5, Lcom/cyjh/share/helper/PhoneConfigHelper;->OR_MODE:I

    if-ne p2, v5, :cond_1

    or-int/2addr v3, v6

    move v4, v3

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 100
    :cond_5
    :goto_2
    sget-object p1, Lcom/cyjh/share/helper/PhoneConfigHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getRecognitionResult --> result="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method


# virtual methods
.method public getCloudPhoneType()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/cyjh/share/helper/PhoneConfigHelper;->mCloudPhoneType:I

    return v0
.end method

.method public init(Landroid/content/Context;Ljava/util/List;)Lcom/cyjh/share/bean/response/PhoneConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/response/PhoneConfig;",
            ">;)",
            "Lcom/cyjh/share/bean/response/PhoneConfig;"
        }
    .end annotation

    .line 45
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/share/bean/response/PhoneConfig;

    .line 46
    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/PhoneConfig;->getJudgeMode()I

    move-result v1

    .line 47
    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/PhoneConfig;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cyjh/share/helper/PhoneConfigHelper;->getPackageArr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-direct {p0, p1, v1, v2}, Lcom/cyjh/share/helper/PhoneConfigHelper;->getRecognitionResult(Landroid/content/Context;I[Ljava/lang/String;)Z

    move-result v1

    .line 49
    sget-object v2, Lcom/cyjh/share/helper/PhoneConfigHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init --> recognitionResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/PhoneConfig;->getCloudPhoneType()I

    move-result p1

    iput p1, p0, Lcom/cyjh/share/helper/PhoneConfigHelper;->mCloudPhoneType:I

    .line 52
    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/PhoneConfig;->getActive()I

    move-result p1

    sget p2, Lcom/cyjh/share/helper/PhoneConfigHelper;->DISABLE_STATUS:I

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.class public Lcom/ds/daisi/log/engine/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"


# static fields
.field private static final ANJIAN_PACKAGE_NAME:Ljava/lang/String; = "com.cyjh.mobileanjian"

.field private static final OLD_USER_MARK_FILE:Ljava/io/File;

.field private static mInstance:Lcom/ds/daisi/log/engine/MetaData;

.field public static sIsRedFinger:Z


# instance fields
.field public final androidVersion:Ljava/lang/String;

.field public final appId:Ljava/lang/String;

.field public final appName:Ljava/lang/String;

.field public final appVersion:Ljava/lang/String;

.field public final elfinVersion:Ljava/lang/String;

.field public final isAnjian:Z

.field public final isFreeElfin:Z

.field public final isNewUser:Z

.field public final linuxVersion:Ljava/lang/String;

.field public final macMd5Sum:Ljava/lang/String;

.field public final model:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final romVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".oldmarkuser"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/ds/daisi/log/engine/MetaData;->OLD_USER_MARK_FILE:Ljava/io/File;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/ds/daisi/log/engine/MetaData;->androidVersion:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-static {p1}, Lcom/ds/daisi/constant/Constants;->getCacheDeviceId(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/ds/daisi/util/FileUtils;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "UTF-8"

    .line 85
    invoke-static {v0, v1, v2}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    move-object v0, v1

    .line 92
    :cond_1
    invoke-static {v0}, Lcom/ds/daisi/log/engine/MetaData;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/log/engine/MetaData;->macMd5Sum:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->getKnownRomVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/log/engine/MetaData;->romVersion:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isEmulator()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/ds/daisi/log/engine/MetaData;->romVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/ds/daisi/log/engine/MetaData;->model:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "%s %s"

    const/4 v2, 0x2

    .line 100
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v4, v2, v3

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/log/engine/MetaData;->model:Ljava/lang/String;

    .line 103
    :goto_1
    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/log/engine/MetaData;->appName:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/log/engine/MetaData;->appVersion:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/log/engine/MetaData;->packageName:Ljava/lang/String;

    const-string p1, "com.cyjh.mobileanjian"

    .line 106
    iget-object v0, p0, Lcom/ds/daisi/log/engine/MetaData;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ds/daisi/log/engine/MetaData;->isAnjian:Z

    .line 107
    iput-boolean p2, p0, Lcom/ds/daisi/log/engine/MetaData;->isFreeElfin:Z

    .line 108
    iput-object p3, p0, Lcom/ds/daisi/log/engine/MetaData;->appId:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lcom/ds/daisi/log/engine/MetaData;->elfinVersion:Ljava/lang/String;

    .line 112
    sget-object p1, Lcom/ds/daisi/log/engine/MetaData;->OLD_USER_MARK_FILE:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/ds/daisi/log/engine/MetaData;->isNewUser:Z

    if-ne p1, v1, :cond_3

    .line 116
    :try_start_1
    sget-object p1, Lcom/ds/daisi/log/engine/MetaData;->OLD_USER_MARK_FILE:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 119
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    const/4 p1, 0x0

    .line 126
    :try_start_2
    new-instance p2, Ljava/io/File;

    const-string p3, "/proc/version"

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 128
    invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object p1, p2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 132
    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 134
    :cond_4
    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p1, "Unknown"

    :cond_5
    iput-object p1, p0, Lcom/ds/daisi/log/engine/MetaData;->linuxVersion:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/ds/daisi/log/engine/MetaData;
    .locals 1

    .line 71
    sget-object v0, Lcom/ds/daisi/log/engine/MetaData;->mInstance:Lcom/ds/daisi/log/engine/MetaData;

    return-object v0
.end method

.method private static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "wifi"

    .line 141
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 142
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "UNKNOWN"

    return-object p0

    .line 149
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 60
    sget-object v0, Lcom/ds/daisi/log/engine/MetaData;->mInstance:Lcom/ds/daisi/log/engine/MetaData;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    if-nez p3, :cond_2

    const-string p3, ""

    .line 65
    :cond_2
    new-instance v0, Lcom/ds/daisi/log/engine/MetaData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ds/daisi/log/engine/MetaData;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ds/daisi/log/engine/MetaData;->mInstance:Lcom/ds/daisi/log/engine/MetaData;

    return-void
.end method

.method private static final md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "MD5"

    .line 158
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 160
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    .line 166
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 170
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 176
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u624b\u673a\u578b\u53f7: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/log/engine/MetaData;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nLinux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/log/engine/MetaData;->linuxVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nMAC\u7684MD5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/log/engine/MetaData;->macMd5Sum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u5b89\u5353\u7248\u672c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/log/engine/MetaData;->androidVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u5b9a\u5236\u5b89\u5353: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/log/engine/MetaData;->romVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u5e94\u7528\u540d\u79f0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/log/engine/MetaData;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u5e94\u7528\u5305\u540d: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/log/engine/MetaData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u5e94\u7528\u7248\u672c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/log/engine/MetaData;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u552f\u4e00\u6807\u8bc6: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/log/engine/MetaData;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u7cbe\u7075\u7248\u672c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/log/engine/MetaData;->elfinVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u662f\u5426\u4ed8\u8d39: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ds/daisi/log/engine/MetaData;->isFreeElfin:Z

    if-eqz v1, :cond_0

    const-string v1, "\u514d\u8d39"

    goto :goto_0

    :cond_0
    const-string v1, "\u6536\u8d39"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

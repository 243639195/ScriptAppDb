.class public final Lcom/goldcoast/sdk/c/d;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field private static a:Lcom/goldcoast/sdk/c/d;

.field private static b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/goldcoast/sdk/a/b;
    .locals 8

    .line 33
    new-instance v0, Lcom/goldcoast/sdk/a/b;

    invoke-direct {v0}, Lcom/goldcoast/sdk/a/b;-><init>()V

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, ""

    const-string v4, ""

    .line 48
    invoke-static {}, Lcom/goldcoast/sdk/c/d;->c()Lcom/goldcoast/sdk/a/e;

    move-result-object v5

    :try_start_0
    const-string v6, "MemTotal"

    const-string v7, ""

    .line 52
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/meminfo"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {v6, v2}, Lcom/goldcoast/sdk/c/f;->a(Ljava/io/InputStream;Ljava/util/Map;)Ljava/lang/String;

    const-string v6, "MemTotal"

    .line 55
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 57
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v2, v3

    :goto_0
    const/4 v3, 0x0

    .line 62
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/version"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {v6, v3}, Lcom/goldcoast/sdk/c/f;->a(Ljava/io/InputStream;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    .line 1129
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v6

    goto :goto_1

    :catch_1
    move-exception v6

    .line 67
    invoke-static {v6}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 72
    :goto_1
    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/cpuinfo"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-static {v6, v1}, Lcom/goldcoast/sdk/c/f;->a(Ljava/io/InputStream;Ljava/util/Map;)Ljava/lang/String;

    .line 74
    new-instance v6, Lcom/goldcoast/sdk/a/a;

    invoke-direct {v6, v1}, Lcom/goldcoast/sdk/a/a;-><init>(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v6

    goto :goto_2

    :catch_2
    move-exception v1

    .line 76
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 90
    :goto_2
    invoke-virtual {v0, v3}, Lcom/goldcoast/sdk/a/b;->a(Lcom/goldcoast/sdk/a/a;)V

    .line 92
    invoke-virtual {v0, v5}, Lcom/goldcoast/sdk/a/b;->a(Lcom/goldcoast/sdk/a/e;)V

    .line 93
    invoke-virtual {v0, v4}, Lcom/goldcoast/sdk/a/b;->b(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v2}, Lcom/goldcoast/sdk/a/b;->a(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/goldcoast/sdk/c/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/goldcoast/sdk/a/b;->c(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/goldcoast/sdk/c/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/goldcoast/sdk/a/b;->e(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/goldcoast/sdk/c/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/goldcoast/sdk/a/b;->d(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/goldcoast/sdk/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/goldcoast/sdk/a/b;->g(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/goldcoast/sdk/a/b;->f(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/goldcoast/sdk/c/d;
    .locals 0

    .line 25
    sput-object p0, Lcom/goldcoast/sdk/c/d;->b:Landroid/content/Context;

    .line 26
    sget-object p0, Lcom/goldcoast/sdk/c/d;->a:Lcom/goldcoast/sdk/c/d;

    if-nez p0, :cond_0

    .line 27
    new-instance p0, Lcom/goldcoast/sdk/c/d;

    invoke-direct {p0}, Lcom/goldcoast/sdk/c/d;-><init>()V

    sput-object p0, Lcom/goldcoast/sdk/c/d;->a:Lcom/goldcoast/sdk/c/d;

    .line 29
    :cond_0
    sget-object p0, Lcom/goldcoast/sdk/c/d;->a:Lcom/goldcoast/sdk/c/d;

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    const-string v0, "0"

    .line 146
    :try_start_0
    sget-object v1, Lcom/goldcoast/sdk/c/d;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 148
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static c()Lcom/goldcoast/sdk/a/e;
    .locals 6

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x19

    .line 1209
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "ro.product.brand"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "ro.product.name"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "ro.product.model"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string v3, "ro.build.fingerprint"

    const/4 v5, 0x3

    aput-object v3, v2, v5

    const-string v3, "ro.build.version.sdk"

    const/4 v5, 0x4

    aput-object v3, v2, v5

    const-string v3, "ro.build.version.release"

    const/4 v5, 0x5

    aput-object v3, v2, v5

    const-string v3, "ro.build.date"

    const/4 v5, 0x6

    aput-object v3, v2, v5

    const-string v3, "ro.build.date.utc"

    const/4 v5, 0x7

    aput-object v3, v2, v5

    const-string v3, "ro.boot.cpuid"

    const/16 v5, 0x8

    aput-object v3, v2, v5

    const-string v3, "ro.btconfig.vendor"

    const/16 v5, 0x9

    aput-object v3, v2, v5

    const-string v3, "persist.sys.timezone"

    const/16 v5, 0xa

    aput-object v3, v2, v5

    const-string v3, "persist.sys.country"

    const/16 v5, 0xb

    aput-object v3, v2, v5

    const-string v3, "persist.sys.language"

    const/16 v5, 0xc

    aput-object v3, v2, v5

    const-string v3, "persist.sys.dalvik.vm.lib"

    const/16 v5, 0xd

    aput-object v3, v2, v5

    const-string v3, "ro.build.description"

    const/16 v5, 0xe

    aput-object v3, v2, v5

    const-string v3, "ro.runtime.firstboot"

    const/16 v5, 0xf

    aput-object v3, v2, v5

    const-string v3, "ro.serialno"

    const/16 v5, 0x10

    aput-object v3, v2, v5

    const-string v3, "ro.hardware"

    const/16 v5, 0x11

    aput-object v3, v2, v5

    const-string v3, "ro.product.board"

    const/16 v5, 0x12

    aput-object v3, v2, v5

    const-string v3, "ro.product.locale.language"

    const/16 v5, 0x13

    aput-object v3, v2, v5

    const-string v3, "ro.product.locale.region"

    const/16 v5, 0x14

    aput-object v3, v2, v5

    const-string v3, "ro.product.cpu.abi"

    const/16 v5, 0x15

    aput-object v3, v2, v5

    const-string v3, "ro.board.platform"

    const/16 v5, 0x16

    aput-object v3, v2, v5

    const-string v3, "ro.build.selinux"

    const/16 v5, 0x17

    aput-object v3, v2, v5

    const-string v3, "ro.build.selinux.enforce"

    const/16 v5, 0x18

    aput-object v3, v2, v5

    :goto_0
    if-ge v4, v1, :cond_0

    .line 166
    aget-object v3, v2, v4

    const-string v5, ""

    .line 167
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/goldcoast/sdk/c/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 174
    :cond_1
    new-instance v1, Lcom/goldcoast/sdk/a/e;

    invoke-direct {v1, v0}, Lcom/goldcoast/sdk/a/e;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method private static d()Ljava/lang/String;
    .locals 3

    const-string v0, "0"

    .line 135
    :try_start_0
    sget-object v1, Lcom/goldcoast/sdk/c/d;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 136
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 138
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private static e()Ljava/lang/String;
    .locals 3

    const-string v0, "0"

    .line 156
    :try_start_0
    sget-object v1, Lcom/goldcoast/sdk/c/d;->b:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 157
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 159
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

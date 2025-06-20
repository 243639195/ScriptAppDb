.class public Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;
.super Ljava/lang/Object;
.source "RomUtils.java"


# static fields
.field private static final a:Lcom/cyjh/mobileanjian/ipc/utils/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1078
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/utils/b;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/utils/b;-><init>()V

    .line 14
    sput-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmuiVersion()Ljava/lang/String;
    .locals 2

    .line 75
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.build.version.emui"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFlymeVersion()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static getKnownRomVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "undefined"

    .line 142
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isMIUI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->getMUIUDetailVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isFlyme()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->getFlymeVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isEmui()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->getEmuiVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_2
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isHaimawanVM()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "\u6d77\u9a6c\u73a9\u6a21\u62df\u5668"

    goto :goto_0

    .line 158
    :cond_3
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isTiantianVM()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "\u5929\u5929\u6a21\u62df\u5668"

    goto :goto_0

    .line 162
    :cond_4
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isNoxVM()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "\u591c\u795e\u6a21\u62df\u5668"

    goto :goto_0

    .line 166
    :cond_5
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isXiaoyaoVM()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "\u900d\u9065\u6a21\u62df\u5668"

    goto :goto_0

    .line 170
    :cond_6
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isXXZS()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "\u7329\u7329\u52a9\u624b"

    :cond_7
    :goto_0
    return-object v0
.end method

.method public static getMUIUDetailVersion()Ljava/lang/String;
    .locals 5

    .line 50
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isMIUI()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "MIUI %s %s"

    const/4 v1, 0x2

    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v4, "ro.miui.ui.version.name"

    invoke-virtual {v3, v4}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMUIUVersion()I
    .locals 3

    .line 24
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isMIUI()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 27
    :cond_0
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.miui.ui.version.name"

    const-string v2, "V0"

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "V8"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    return v0

    :cond_1
    const-string v1, "V7"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    return v0

    :cond_2
    const-string v1, "V6"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x6

    return v0

    :cond_3
    const-string v1, "V5"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static isARMCpu()Z
    .locals 4

    .line 181
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x14

    .line 184
    new-array v1, v1, [B

    const/4 v2, 0x1

    .line 186
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 187
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/16 v0, 0x12

    .line 188
    aget-byte v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 193
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v2
.end method

.method public static isEmui()Z
    .locals 2

    .line 70
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.build.version.emui"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEmulator()Z
    .locals 1

    .line 135
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isHaimawanVM()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isTiantianVM()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isNoxVM()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isXiaoyaoVM()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isXXZS()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isFlyme()Z
    .locals 2

    .line 59
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.flyme.published"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHaimawanVM()Z
    .locals 2

    .line 91
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "droid4x.inited"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.droid4x.host.mac"

    .line 92
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "droid4x.battery.status"

    .line 93
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "persist.droid4x.op_alpha"

    .line 94
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isMIUI()Z
    .locals 2

    .line 19
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.miui.ui.version.name"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNoxVM()Z
    .locals 2

    .line 110
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "nox.inited"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "nox.vbox_dpi"

    .line 111
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.nox.host.mac"

    .line 112
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "nox.battery.status"

    .line 113
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isOppoR9S()Z
    .locals 4

    .line 80
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.product.name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v2, "ro.product.model"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "R9s"

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v0, "R9s"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isTiantianVM()Z
    .locals 2

    .line 100
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ttVM.inited"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ttvmd.battery.status"

    .line 101
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ttVM.vbox_dpi"

    .line 102
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ttvmd.battery.mode"

    .line 103
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isXXZS()Z
    .locals 2

    .line 129
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.xxzs.DeviceId"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.xxzs.origDeviceId"

    .line 130
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isXiaoyaoVM()Z
    .locals 2

    .line 119
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "microvirt.inited"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "microvirt.channel"

    .line 120
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.microvirt.hmac"

    .line 121
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "microvirt.vbox_dpi"

    .line 122
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

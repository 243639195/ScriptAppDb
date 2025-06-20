.class public Lcom/ds/daisi/rom/FloatWindowManager;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatWindowManager"

.field private static volatile instance:Lcom/ds/daisi/rom/FloatWindowManager;


# instance fields
.field private dialog:Lcom/ds/daisi/dialog/FloatGuideDialog;

.field private isWindowDismiss:Z

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/ds/daisi/rom/FloatWindowManager;->isWindowDismiss:Z

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/ds/daisi/rom/FloatWindowManager;->windowManager:Landroid/view/WindowManager;

    .line 33
    iput-object v0, p0, Lcom/ds/daisi/rom/FloatWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private ROM360PermissionApply(Landroid/content/Context;)V
    .locals 1

    .line 132
    new-instance v0, Lcom/ds/daisi/rom/FloatWindowManager$1;

    invoke-direct {v0, p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager$1;-><init>(Lcom/ds/daisi/rom/FloatWindowManager;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/rom/FloatWindowManager;->showConfirmDialog(Landroid/content/Context;Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/rom/FloatWindowManager;)Lcom/ds/daisi/dialog/FloatGuideDialog;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ds/daisi/rom/FloatWindowManager;->dialog:Lcom/ds/daisi/dialog/FloatGuideDialog;

    return-object p0
.end method

.method private commonROMPermissionApply(Landroid/content/Context;)V
    .locals 2

    .line 201
    invoke-static {}, Lcom/ds/daisi/rom/RomUtils;->checkIsMeizuRom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager;->meizuROMPermissionApply(Landroid/content/Context;)V

    goto :goto_0

    .line 204
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 205
    new-instance v0, Lcom/ds/daisi/rom/FloatWindowManager$6;

    invoke-direct {v0, p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager$6;-><init>(Lcom/ds/daisi/rom/FloatWindowManager;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/rom/FloatWindowManager;->showConfirmDialog(Landroid/content/Context;Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commonROMPermissionApplyInternal(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 225
    const-class v0, Landroid/provider/Settings;

    const-string v1, "ACTION_MANAGE_OVERLAY_PERMISSION"

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 228
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 229
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private commonROMPermissionCheck(Landroid/content/Context;)Z
    .locals 7

    .line 96
    invoke-static {}, Lcom/ds/daisi/rom/RomUtils;->checkIsMeizuRom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager;->meizuPermissionCheck(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 99
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 100
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 102
    :try_start_0
    const-class v2, Landroid/provider/Settings;

    const-string v3, "canDrawOverlays"

    .line 103
    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    .line 104
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v6

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FloatWindowManager"

    .line 106
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object p1, v1

    .line 109
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private dp2px(Landroid/content/Context;F)I
    .locals 0

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public static getInstance()Lcom/ds/daisi/rom/FloatWindowManager;
    .locals 2

    .line 38
    sget-object v0, Lcom/ds/daisi/rom/FloatWindowManager;->instance:Lcom/ds/daisi/rom/FloatWindowManager;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/ds/daisi/rom/FloatWindowManager;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/ds/daisi/rom/FloatWindowManager;->instance:Lcom/ds/daisi/rom/FloatWindowManager;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/ds/daisi/rom/FloatWindowManager;

    invoke-direct {v1}, Lcom/ds/daisi/rom/FloatWindowManager;-><init>()V

    sput-object v1, Lcom/ds/daisi/rom/FloatWindowManager;->instance:Lcom/ds/daisi/rom/FloatWindowManager;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/ds/daisi/rom/FloatWindowManager;->instance:Lcom/ds/daisi/rom/FloatWindowManager;

    return-object v0
.end method

.method private huaweiPermissionCheck(Landroid/content/Context;)Z
    .locals 0

    .line 75
    invoke-static {p1}, Lcom/ds/daisi/rom/HuaweiUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private huaweiROMPermissionApply(Landroid/content/Context;)V
    .locals 1

    .line 145
    new-instance v0, Lcom/ds/daisi/rom/FloatWindowManager$2;

    invoke-direct {v0, p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager$2;-><init>(Lcom/ds/daisi/rom/FloatWindowManager;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/rom/FloatWindowManager;->showConfirmDialog(Landroid/content/Context;Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;)V

    return-void
.end method

.method private meizuPermissionCheck(Landroid/content/Context;)Z
    .locals 0

    .line 83
    invoke-static {p1}, Lcom/ds/daisi/rom/MeizuUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private meizuROMPermissionApply(Landroid/content/Context;)V
    .locals 1

    .line 158
    new-instance v0, Lcom/ds/daisi/rom/FloatWindowManager$3;

    invoke-direct {v0, p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager$3;-><init>(Lcom/ds/daisi/rom/FloatWindowManager;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/rom/FloatWindowManager;->showConfirmDialog(Landroid/content/Context;Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;)V

    return-void
.end method

.method private miuiPermissionCheck(Landroid/content/Context;)Z
    .locals 0

    .line 79
    invoke-static {p1}, Lcom/ds/daisi/rom/MiuiUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private miuiROMPermissionApply(Landroid/content/Context;)V
    .locals 1

    .line 171
    new-instance v0, Lcom/ds/daisi/rom/FloatWindowManager$4;

    invoke-direct {v0, p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager$4;-><init>(Lcom/ds/daisi/rom/FloatWindowManager;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/rom/FloatWindowManager;->showConfirmDialog(Landroid/content/Context;Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;)V

    return-void
.end method

.method private oppoROMPermissionApply(Landroid/content/Context;)V
    .locals 1

    .line 184
    new-instance v0, Lcom/ds/daisi/rom/FloatWindowManager$5;

    invoke-direct {v0, p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager$5;-><init>(Lcom/ds/daisi/rom/FloatWindowManager;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/rom/FloatWindowManager;->showConfirmDialog(Landroid/content/Context;Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;)V

    return-void
.end method

.method private oppoROMPermissionCheck(Landroid/content/Context;)Z
    .locals 0

    .line 91
    invoke-static {p1}, Lcom/ds/daisi/rom/OppoUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private qikuPermissionCheck(Landroid/content/Context;)Z
    .locals 0

    .line 87
    invoke-static {p1}, Lcom/ds/daisi/rom/QikuUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private showConfirmDialog(Landroid/content/Context;Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;)V
    .locals 1

    const-string v0, "\u60a8\u7684\u624b\u673a\u6ca1\u6709\u6388\u4e88\u60ac\u6d6e\u7a97\u6743\u9650\uff0c\u8bf7\u5f00\u542f\u540e\u518d\u8bd5"

    .line 235
    invoke-direct {p0, p1, v0, p2}, Lcom/ds/daisi/rom/FloatWindowManager;->showConfirmDialog(Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;)V

    return-void
.end method

.method private showConfirmDialog(Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;)V
    .locals 0

    .line 239
    iget-object p2, p0, Lcom/ds/daisi/rom/FloatWindowManager;->dialog:Lcom/ds/daisi/dialog/FloatGuideDialog;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ds/daisi/rom/FloatWindowManager;->dialog:Lcom/ds/daisi/dialog/FloatGuideDialog;

    invoke-virtual {p2}, Lcom/ds/daisi/dialog/FloatGuideDialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 240
    iget-object p2, p0, Lcom/ds/daisi/rom/FloatWindowManager;->dialog:Lcom/ds/daisi/dialog/FloatGuideDialog;

    invoke-virtual {p2}, Lcom/ds/daisi/dialog/FloatGuideDialog;->dismiss()V

    .line 262
    :cond_0
    new-instance p2, Lcom/ds/daisi/dialog/FloatGuideDialog;

    invoke-direct {p2, p1}, Lcom/ds/daisi/dialog/FloatGuideDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/ds/daisi/rom/FloatWindowManager;->dialog:Lcom/ds/daisi/dialog/FloatGuideDialog;

    .line 263
    iget-object p1, p0, Lcom/ds/daisi/rom/FloatWindowManager;->dialog:Lcom/ds/daisi/dialog/FloatGuideDialog;

    new-instance p2, Lcom/ds/daisi/rom/FloatWindowManager$7;

    invoke-direct {p2, p0, p3}, Lcom/ds/daisi/rom/FloatWindowManager$7;-><init>(Lcom/ds/daisi/rom/FloatWindowManager;Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;)V

    invoke-virtual {p1, p2}, Lcom/ds/daisi/dialog/FloatGuideDialog;->setConfirmResult(Lcom/ds/daisi/dialog/FloatGuideDialog$OnConfirmResult;)V

    .line 270
    iget-object p1, p0, Lcom/ds/daisi/rom/FloatWindowManager;->dialog:Lcom/ds/daisi/dialog/FloatGuideDialog;

    invoke-virtual {p1}, Lcom/ds/daisi/dialog/FloatGuideDialog;->show()V

    return-void
.end method


# virtual methods
.method public applyOrShowFloatWindow(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-virtual {p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager;->applyPermission(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public applyPermission(Landroid/content/Context;)V
    .locals 2

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_4

    .line 115
    invoke-static {}, Lcom/ds/daisi/rom/RomUtils;->checkIsMiuiRom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager;->miuiROMPermissionApply(Landroid/content/Context;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {}, Lcom/ds/daisi/rom/RomUtils;->checkIsMeizuRom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-direct {p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager;->meizuROMPermissionApply(Landroid/content/Context;)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {}, Lcom/ds/daisi/rom/RomUtils;->checkIsHuaweiRom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    invoke-direct {p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager;->huaweiROMPermissionApply(Landroid/content/Context;)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {}, Lcom/ds/daisi/rom/RomUtils;->checkIs360Rom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    invoke-direct {p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager;->ROM360PermissionApply(Landroid/content/Context;)V

    goto :goto_0

    .line 123
    :cond_3
    invoke-static {}, Lcom/ds/daisi/rom/RomUtils;->checkIsOppoRom()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    invoke-direct {p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager;->oppoROMPermissionApply(Landroid/content/Context;)V

    goto :goto_0

    .line 127
    :cond_4
    invoke-direct {p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager;->commonROMPermissionApply(Landroid/content/Context;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public checkPermission(Landroid/content/Context;)Z
    .locals 2

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_4

    .line 59
    invoke-static {}, Lcom/ds/daisi/rom/RomUtils;->checkIsMiuiRom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager;->miuiPermissionCheck(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 61
    :cond_0
    invoke-static {}, Lcom/ds/daisi/rom/RomUtils;->checkIsMeizuRom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-direct {p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager;->meizuPermissionCheck(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 63
    :cond_1
    invoke-static {}, Lcom/ds/daisi/rom/RomUtils;->checkIsHuaweiRom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-direct {p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager;->huaweiPermissionCheck(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 65
    :cond_2
    invoke-static {}, Lcom/ds/daisi/rom/RomUtils;->checkIs360Rom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    invoke-direct {p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager;->qikuPermissionCheck(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 67
    :cond_3
    invoke-static {}, Lcom/ds/daisi/rom/RomUtils;->checkIsOppoRom()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    invoke-direct {p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager;->oppoROMPermissionCheck(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 71
    :cond_4
    invoke-direct {p0, p1}, Lcom/ds/daisi/rom/FloatWindowManager;->commonROMPermissionCheck(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.class public Lcom/ds/daisi/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ELFIN"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-static {}, Lcom/ds/daisi/util/LogUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static isDebug()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-static {}, Lcom/ds/daisi/util/LogUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ELFIN"

    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-static {}, Lcom/ds/daisi/util/LogUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ELFIN"

    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logVerbose(Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-static {}, Lcom/ds/daisi/util/LogUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ELFIN"

    .line 56
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logWarn(Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-static {}, Lcom/ds/daisi/util/LogUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ELFIN"

    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.class public Lcom/cyjh/mobileanjian/ipc/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mqm"

    .line 13
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getAppSinature(Landroid/content/Context;)Ljava/lang/String;
.end method

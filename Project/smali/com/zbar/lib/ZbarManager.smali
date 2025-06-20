.class public Lcom/zbar/lib/ZbarManager;
.super Ljava/lang/Object;
.source "ZbarManager.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "iconv"

    .line 9
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "zbar"

    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native decode([BIIZIIII)Ljava/lang/String;
.end method

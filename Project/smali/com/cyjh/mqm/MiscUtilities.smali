.class public Lcom/cyjh/mqm/MiscUtilities;
.super Ljava/lang/Object;
.source "MiscUtilities.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mqm"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native LoadUIFile(Ljava/lang/String;Z)Ljava/lang/String;
.end method

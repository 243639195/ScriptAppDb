.class public Lcom/cyjh/share/util/FastClickUtil;
.super Ljava/lang/Object;
.source "FastClickUtil.java"


# static fields
.field private static fcu:Lcom/cyjh/share/util/FastClickUtil; = null

.field private static lastClickTime:J = 0x0L

.field private static spaceTime:I = 0x1f4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/cyjh/share/util/FastClickUtil;
    .locals 1

    .line 13
    sget-object v0, Lcom/cyjh/share/util/FastClickUtil;->fcu:Lcom/cyjh/share/util/FastClickUtil;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/cyjh/share/util/FastClickUtil;

    invoke-direct {v0}, Lcom/cyjh/share/util/FastClickUtil;-><init>()V

    sput-object v0, Lcom/cyjh/share/util/FastClickUtil;->fcu:Lcom/cyjh/share/util/FastClickUtil;

    .line 16
    :cond_0
    sget-object v0, Lcom/cyjh/share/util/FastClickUtil;->fcu:Lcom/cyjh/share/util/FastClickUtil;

    return-object v0
.end method


# virtual methods
.method public isFastClick()Z
    .locals 7

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 22
    sget-wide v2, Lcom/cyjh/share/util/FastClickUtil;->lastClickTime:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 23
    sget v2, Lcom/cyjh/share/util/FastClickUtil;->spaceTime:I

    int-to-long v2, v2

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    const/4 v0, 0x1

    return v0

    .line 26
    :cond_0
    sput-wide v0, Lcom/cyjh/share/util/FastClickUtil;->lastClickTime:J

    const/4 v0, 0x0

    return v0
.end method

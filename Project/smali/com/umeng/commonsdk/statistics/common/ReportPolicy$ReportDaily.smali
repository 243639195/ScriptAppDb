.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportDaily"
.end annotation


# instance fields
.field private HOURS_DAY:J

.field private mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V
    .locals 2

    .line 155
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    const-wide/32 v0, 0x5265c00

    .line 152
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;->HOURS_DAY:J

    .line 156
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;->mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    return-void
.end method


# virtual methods
.method public shouldSendMessage(Z)Z
    .locals 6

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->lastSuccessfulBuildTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long v4, v0, v2

    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;->HOURS_DAY:J

    cmp-long p1, v4, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

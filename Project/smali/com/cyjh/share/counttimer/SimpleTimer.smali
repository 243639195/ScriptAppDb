.class public abstract Lcom/cyjh/share/counttimer/SimpleTimer;
.super Landroid/os/CountDownTimer;
.source "SimpleTimer.java"


# instance fields
.field private final mCell:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(II)V
    .locals 4

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    mul-int/lit16 p1, p2, 0x3e8

    int-to-long v2, p1

    .line 18
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 22
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/cyjh/share/counttimer/SimpleTimer;->mHandler:Landroid/os/Handler;

    .line 19
    iput p2, p0, Lcom/cyjh/share/counttimer/SimpleTimer;->mCell:I

    return-void
.end method

.method static synthetic access$000(Lcom/cyjh/share/counttimer/SimpleTimer;)I
    .locals 0

    .line 7
    iget p0, p0, Lcom/cyjh/share/counttimer/SimpleTimer;->mCell:I

    return p0
.end method


# virtual methods
.method protected abstract onTick(I)V
.end method

.method public onTick(J)V
    .locals 3

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 27
    iget p2, p0, Lcom/cyjh/share/counttimer/SimpleTimer;->mCell:I

    mul-int/lit8 p2, p2, 0x2

    if-ne p1, p2, :cond_0

    .line 28
    iget-object p2, p0, Lcom/cyjh/share/counttimer/SimpleTimer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/cyjh/share/counttimer/SimpleTimer$1;

    invoke-direct {v0, p0}, Lcom/cyjh/share/counttimer/SimpleTimer$1;-><init>(Lcom/cyjh/share/counttimer/SimpleTimer;)V

    iget v1, p0, Lcom/cyjh/share/counttimer/SimpleTimer;->mCell:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cyjh/share/counttimer/SimpleTimer;->onTick(I)V

    return-void
.end method

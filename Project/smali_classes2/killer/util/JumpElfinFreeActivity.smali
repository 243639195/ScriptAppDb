.class public Lkiller/util/JumpElfinFreeActivity;
.super Ljava/lang/Object;
.source "JumpElfinFreeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jump(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 2
    .param p0, "splashActivity"    # Lcom/ds/daisi/activity/news/SplashActivity;

    .prologue
    .line 12
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lkiller/util/JumpElfinFreeActivity$1;

    invoke-direct {v1, p0}, Lkiller/util/JumpElfinFreeActivity$1;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 20
    return-void
.end method

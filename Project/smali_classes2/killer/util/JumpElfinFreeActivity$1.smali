.class final Lkiller/util/JumpElfinFreeActivity$1;
.super Ljava/lang/Object;
.source "JumpElfinFreeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkiller/util/JumpElfinFreeActivity;->jump(Lcom/ds/daisi/activity/news/SplashActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$splashActivity:Lcom/ds/daisi/activity/news/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lkiller/util/JumpElfinFreeActivity$1;->val$splashActivity:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 16
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/ds/daisi/util/IntentUtils;->toCallElfinPayActivity(Landroid/content/Context;)V

    .line 17
    iget-object v0, p0, Lkiller/util/JumpElfinFreeActivity$1;->val$splashActivity:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-virtual {v0}, Lcom/ds/daisi/activity/news/SplashActivity;->finish()V

    .line 18
    return-void
.end method

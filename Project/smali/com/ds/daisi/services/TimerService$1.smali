.class Lcom/ds/daisi/services/TimerService$1;
.super Landroid/os/Handler;
.source "TimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/services/TimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/services/TimerService;


# direct methods
.method constructor <init>(Lcom/ds/daisi/services/TimerService;Landroid/os/Looper;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/ds/daisi/services/TimerService$1;->this$0:Lcom/ds/daisi/services/TimerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 62
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x110

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ds/daisi/services/TimerService$1;->this$0:Lcom/ds/daisi/services/TimerService;

    const-class v1, Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lcom/ds/daisi/services/TimerService$1;->this$0:Lcom/ds/daisi/services/TimerService;

    invoke-virtual {v0, p1}, Lcom/ds/daisi/services/TimerService;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.class Lmobi/oneway/common/service/OwCancleService$1;
.super Ljava/lang/Object;
.source "OwCancleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/common/service/OwCancleService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/oneway/common/service/OwCancleService;


# direct methods
.method constructor <init>(Lmobi/oneway/common/service/OwCancleService;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lmobi/oneway/common/service/OwCancleService$1;->this$0:Lmobi/oneway/common/service/OwCancleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 28
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 29
    iget-object v0, p0, Lmobi/oneway/common/service/OwCancleService$1;->this$0:Lmobi/oneway/common/service/OwCancleService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/oneway/common/service/OwCancleService;->stopForeground(Z)V

    .line 30
    iget-object v0, p0, Lmobi/oneway/common/service/OwCancleService$1;->this$0:Lmobi/oneway/common/service/OwCancleService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lmobi/oneway/common/service/OwCancleService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x6e

    .line 31
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 32
    iget-object v0, p0, Lmobi/oneway/common/service/OwCancleService$1;->this$0:Lmobi/oneway/common/service/OwCancleService;

    invoke-virtual {v0}, Lmobi/oneway/common/service/OwCancleService;->stopSelf()V

    return-void
.end method

.class Lcom/cyjh/share/helper/DdyStatisticsHelper$MyTimerTask;
.super Ljava/util/TimerTask;
.source "DdyStatisticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/helper/DdyStatisticsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/share/helper/DdyStatisticsHelper;


# direct methods
.method private constructor <init>(Lcom/cyjh/share/helper/DdyStatisticsHelper;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/cyjh/share/helper/DdyStatisticsHelper$MyTimerTask;->this$0:Lcom/cyjh/share/helper/DdyStatisticsHelper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/share/helper/DdyStatisticsHelper;Lcom/cyjh/share/helper/DdyStatisticsHelper$1;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/cyjh/share/helper/DdyStatisticsHelper$MyTimerTask;-><init>(Lcom/cyjh/share/helper/DdyStatisticsHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 80
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e8

    .line 81
    iput v1, v0, Landroid/os/Message;->what:I

    .line 82
    iget-object v1, p0, Lcom/cyjh/share/helper/DdyStatisticsHelper$MyTimerTask;->this$0:Lcom/cyjh/share/helper/DdyStatisticsHelper;

    invoke-static {v1}, Lcom/cyjh/share/helper/DdyStatisticsHelper;->access$100(Lcom/cyjh/share/helper/DdyStatisticsHelper;)Lcom/cyjh/share/helper/DdyStatisticsHelper$DdyDailyStatisticsListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/cyjh/share/helper/DdyStatisticsHelper$MyTimerTask;->this$0:Lcom/cyjh/share/helper/DdyStatisticsHelper;

    invoke-static {v1}, Lcom/cyjh/share/helper/DdyStatisticsHelper;->access$100(Lcom/cyjh/share/helper/DdyStatisticsHelper;)Lcom/cyjh/share/helper/DdyStatisticsHelper$DdyDailyStatisticsListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cyjh/share/helper/DdyStatisticsHelper$DdyDailyStatisticsListener;->msgDdyDailyStatistics(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.class Lcom/ds/daisi/AppContext$10;
.super Ljava/lang/Object;
.source "AppContext.java"

# interfaces
.implements Lcom/cyjh/share/helper/DdyStatisticsHelper$DdyDailyStatisticsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/AppContext;->ddyStaticsJudgeOperate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/AppContext;


# direct methods
.method constructor <init>(Lcom/ds/daisi/AppContext;)V
    .locals 0

    .line 1180
    iput-object p1, p0, Lcom/ds/daisi/AppContext$10;->this$0:Lcom/ds/daisi/AppContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public msgDdyDailyStatistics(Landroid/os/Message;)V
    .locals 2

    .line 1183
    invoke-static {}, Lcom/ds/daisi/AppContext;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ddyStaticsJudgeOperate --> 3"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget-object v0, p0, Lcom/ds/daisi/AppContext$10;->this$0:Lcom/ds/daisi/AppContext;

    invoke-static {v0}, Lcom/ds/daisi/AppContext;->access$800(Lcom/ds/daisi/AppContext;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

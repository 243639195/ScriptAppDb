.class Lcom/ds/daisi/activity/ElfinPayActivity$2;
.super Ljava/lang/Object;
.source "ElfinPayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/ElfinPayActivity;->statisDailyLife(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/ElfinPayActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity$2;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 286
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string v2, "yyyy-MM-dd"

    invoke-static {v0, v1, v2}, Lcom/cyjh/share/util/AppUtils;->timeStamp2Date(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appDayStatisPay"

    .line 287
    iget-object v2, p0, Lcom/ds/daisi/activity/ElfinPayActivity$2;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v1, v2, v0}, Lcom/cyjh/share/util/AppUtils;->writeDateToFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$2;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$100(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    move-result-object v0

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 291
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

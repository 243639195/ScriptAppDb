.class Lcom/ds/daisi/activity/ElfinPayActivity$4;
.super Ljava/lang/Object;
.source "ElfinPayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/ElfinPayActivity;->initDatabase()V
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

    .line 448
    iput-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity$4;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getAppid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity$4;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    .line 452
    invoke-static {v0, v1}, Lcom/cyjh/share/util/AppUtils;->getFileContent(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regCodeStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getAppid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ds/daisi/activity/ElfinPayActivity$4;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    .line 454
    invoke-static {v1, v2}, Lcom/cyjh/share/util/AppUtils;->getFileContent(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    iget-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity$4;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v1, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$300(Lcom/ds/daisi/activity/ElfinPayActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_0
    const-class v2, Lcom/ds/daisi/entity/RegCodeStatusInfo;

    invoke-static {v1, v2}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ds/daisi/entity/RegCodeStatusInfo;

    if-nez v1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity$4;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v1, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$300(Lcom/ds/daisi/activity/ElfinPayActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_1
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-object v2, v1, Lcom/ds/daisi/entity/RegCodeStatusInfo;->regCode:Ljava/lang/String;

    iput-object v2, v0, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    .line 468
    iget-object v0, v1, Lcom/ds/daisi/entity/RegCodeStatusInfo;->regCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, v1, Lcom/ds/daisi/entity/RegCodeStatusInfo;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 469
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$4;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$100(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    move-result-object v0

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$4;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$100(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    move-result-object v0

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

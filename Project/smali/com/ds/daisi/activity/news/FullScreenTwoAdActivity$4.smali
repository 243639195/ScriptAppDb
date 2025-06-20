.class Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$4;
.super Lcom/ds/daisi/listener/IFLYADListener;
.source "FullScreenTwoAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$4;->this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    invoke-direct {p0}, Lcom/ds/daisi/listener/IFLYADListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailed(Lcom/iflytek/voiceads/config/AdError;)V
    .locals 3

    .line 388
    invoke-static {}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFLYADListener --> adError message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/voiceads/config/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$4;->this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8baf\u98de\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25 message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/voiceads/config/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/share/util/SlToast;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 390
    iget-object p1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$4;->this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->access$1000(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAdLoaded(Lcom/iflytek/voiceads/conn/NativeDataRef;)V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$4;->this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    const-string v1, "\u8baf\u98de\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlToast;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$4;->this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    invoke-static {v0, p1}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->access$702(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;Lcom/iflytek/voiceads/conn/NativeDataRef;)Lcom/iflytek/voiceads/conn/NativeDataRef;

    .line 383
    iget-object p1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$4;->this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$4;->this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->access$700(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)Lcom/iflytek/voiceads/conn/NativeDataRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->access$800(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;Ljava/lang/String;)V

    return-void
.end method

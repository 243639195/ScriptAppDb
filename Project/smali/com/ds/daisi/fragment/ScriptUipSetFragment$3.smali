.class Lcom/ds/daisi/fragment/ScriptUipSetFragment$3;
.super Lcom/ds/daisi/listener/IFLYADListener;
.source "ScriptUipSetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/ScriptUipSetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$3;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-direct {p0}, Lcom/ds/daisi/listener/IFLYADListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailed(Lcom/iflytek/voiceads/config/AdError;)V
    .locals 3

    .line 624
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    const-string v1, "IFLYADListener onAdFailed -->"

    invoke-static {v0, v1}, Lcom/ds/daisi/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$3;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-virtual {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

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

    .line 626
    iget-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$3;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    const/16 v0, 0x65

    invoke-static {p1, v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$1000(Lcom/ds/daisi/fragment/ScriptUipSetFragment;I)V

    .line 627
    iget-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$3;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$1100(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;

    move-result-object p1

    const/16 v0, 0x2745

    invoke-virtual {p1, v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAdLoaded(Lcom/iflytek/voiceads/conn/NativeDataRef;)V
    .locals 2

    .line 615
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    const-string v1, "IFLYADListener onAdLoaded -->"

    invoke-static {v0, v1}, Lcom/ds/daisi/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$3;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-virtual {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u8baf\u98de\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlToast;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$3;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-static {v0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$802(Lcom/ds/daisi/fragment/ScriptUipSetFragment;Lcom/iflytek/voiceads/conn/NativeDataRef;)Lcom/iflytek/voiceads/conn/NativeDataRef;

    .line 618
    iget-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$3;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$800(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)Lcom/iflytek/voiceads/conn/NativeDataRef;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    .line 619
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$3;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-static {v0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$900(Lcom/ds/daisi/fragment/ScriptUipSetFragment;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/ds/daisi/fragment/ScriptUipSetFragment$4;
.super Ljava/lang/Object;
.source "ScriptUipSetFragment.java"

# interfaces
.implements Lcom/ds/daisi/mvp/managers/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/fragment/ScriptUipSetFragment;->loadFengLingAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ds/daisi/mvp/managers/Callback<",
        "Lcom/cyjh/share/bean/response/FengLingAdInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$4;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 3

    .line 750
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFengLingAdInfo error --->\uff0c\u5f00\u59cb\u52a0\u8f7d\u540e\u53f0\u914d\u7f6e\u7684\u5e7f\u544a---3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ds/daisi/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$4;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    const/16 v0, 0x66

    invoke-static {p1, v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$1000(Lcom/ds/daisi/fragment/ScriptUipSetFragment;I)V

    .line 753
    iget-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$4;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$1100(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;

    move-result-object p1

    const/16 v0, 0x2743

    invoke-virtual {p1, v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public finish(Lcom/cyjh/share/bean/response/FengLingAdInfo;)V
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$4;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-static {v0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$1202(Lcom/ds/daisi/fragment/ScriptUipSetFragment;Lcom/cyjh/share/bean/response/FengLingAdInfo;)Lcom/cyjh/share/bean/response/FengLingAdInfo;

    .line 743
    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->getImgs()Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;->getSrc()Ljava/lang/String;

    move-result-object p1

    .line 745
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$4;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-static {v0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$900(Lcom/ds/daisi/fragment/ScriptUipSetFragment;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic finish(Ljava/lang/Object;)V
    .locals 0

    .line 739
    check-cast p1, Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$4;->finish(Lcom/cyjh/share/bean/response/FengLingAdInfo;)V

    return-void
.end method

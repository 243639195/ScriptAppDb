.class Lcom/cyjh/share/util/InternalFileUtils$1;
.super Landroid/os/Handler;
.source "InternalFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/util/InternalFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/share/util/InternalFileUtils;


# direct methods
.method constructor <init>(Lcom/cyjh/share/util/InternalFileUtils;Landroid/os/Looper;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/cyjh/share/util/InternalFileUtils$1;->this$0:Lcom/cyjh/share/util/InternalFileUtils;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 39
    iget-object v0, p0, Lcom/cyjh/share/util/InternalFileUtils$1;->this$0:Lcom/cyjh/share/util/InternalFileUtils;

    invoke-static {v0}, Lcom/cyjh/share/util/InternalFileUtils;->access$000(Lcom/cyjh/share/util/InternalFileUtils;)Lcom/cyjh/share/util/InternalFileUtils$FileOperateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/cyjh/share/util/InternalFileUtils$1;->this$0:Lcom/cyjh/share/util/InternalFileUtils;

    invoke-static {v0}, Lcom/cyjh/share/util/InternalFileUtils;->access$000(Lcom/cyjh/share/util/InternalFileUtils;)Lcom/cyjh/share/util/InternalFileUtils$FileOperateCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/share/util/InternalFileUtils$FileOperateCallback;->onSuccess()V

    .line 43
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/cyjh/share/util/InternalFileUtils$1;->this$0:Lcom/cyjh/share/util/InternalFileUtils;

    invoke-static {v0}, Lcom/cyjh/share/util/InternalFileUtils;->access$000(Lcom/cyjh/share/util/InternalFileUtils;)Lcom/cyjh/share/util/InternalFileUtils$FileOperateCallback;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/share/util/InternalFileUtils$FileOperateCallback;->onFailed(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

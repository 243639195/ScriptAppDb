.class Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;
.super Ljava/lang/Object;
.source "DownloadRenameManager.java"

# interfaces
.implements Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->rename(Ljava/lang/String;Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;

.field final synthetic val$finalUrl:Ljava/lang/String;

.field final synthetic val$includedSuffix:Z

.field final synthetic val$newFileName:Ljava/lang/String;

.field final synthetic val$onRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;Ljava/lang/String;Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->this$0:Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;

    iput-object p2, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$finalUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$newFileName:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$includedSuffix:Z

    iput-object p5, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$onRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopFileDownloadTaskFailed(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;

    .prologue
    .line 112
    if-eqz p2, :cond_0

    .line 113
    sget-object v0, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;->TYPE_TASK_HAS_BEEN_STOPPED:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->this$0:Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$finalUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$newFileName:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$includedSuffix:Z

    iget-object v4, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$onRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->access$100(Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;Ljava/lang/String;Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {}, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".rename \u6682\u505c\u4e0b\u8f7d\u4efb\u52a1\u5931\u8d25\uff0c\u65e0\u6cd5\u91cd\u547d\u540d\uff0curl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$finalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->this$0:Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->this$0:Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$finalUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->access$200(Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v1

    new-instance v2, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;

    iget-object v3, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$finalUrl:Ljava/lang/String;

    invoke-direct {v2, v3, p2}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$onRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    invoke-static {v0, v1, v2, v3}, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->access$300(Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V

    goto :goto_0
.end method

.method public onStopFileDownloadTaskSucceed(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {}, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".rename \u6682\u505c\u4e0b\u8f7d\u4efb\u52a1\u6210\u529f\uff0c\u5f00\u59cb\u91cd\u547d\u540d\uff0curl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$finalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->this$0:Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$finalUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$newFileName:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$includedSuffix:Z

    iget-object v4, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;->val$onRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->access$100(Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;Ljava/lang/String;Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V

    .line 107
    return-void
.end method

.class Lorg/wlf/filedownloader/file_download/DownloadTaskManager$6;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"

# interfaces
.implements Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->pauseInternal(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

.field final synthetic val$finalUrl:Ljava/lang/String;

.field final synthetic val$onStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$6;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$6;->val$finalUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$6;->val$onStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopFileDownloadTaskFailed(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;

    .prologue
    .line 803
    invoke-static {}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseInternal \u6682\u505c\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$6;->val$finalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",failReason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$6;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$6;->val$finalUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$6;->val$onStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    invoke-static {v0, v1, p2, v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$900(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    .line 807
    return-void
.end method

.method public onStopFileDownloadTaskSucceed(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 794
    invoke-static {}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseInternal \u6682\u505c\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$6;->val$finalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$6;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$6;->val$finalUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$6;->val$onStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    invoke-static {v0, v1, v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$800(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    .line 798
    return-void
.end method

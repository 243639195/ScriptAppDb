.class Lorg/wlf/filedownloader/file_download/DownloadTaskManager$2;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"

# interfaces
.implements Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->addAndRunDownloadTask(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/DownloadConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

.field final synthetic val$downloadTask:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$2;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$2;->val$downloadTask:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskRunFinish()V
    .locals 5

    .prologue
    .line 380
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$2;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    invoke-static {v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$100(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 381
    :try_start_0
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$2;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    invoke-static {v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$200(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$2;->val$downloadTask:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    invoke-virtual {v3}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 384
    .local v0, "threads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-static {}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRunningDownloadTaskMap\uff0c--\u79fb\u9664--\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$2;->val$downloadTask:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0ctask\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$2;->val$downloadTask:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0c\u7ebf\u7a0b\u6570\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/wlf/filedownloader/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    monitor-exit v2

    .line 387
    return-void

    .line 386
    .end local v0    # "threads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

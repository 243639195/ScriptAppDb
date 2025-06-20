.class Lorg/wlf/filedownloader/FileDownloadManager$1;
.super Ljava/lang/Object;
.source "FileDownloadManager.java"

# interfaces
.implements Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/FileDownloadManager;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wlf/filedownloader/FileDownloadManager;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/FileDownloadManager;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lorg/wlf/filedownloader/FileDownloadManager$1;->this$0:Lorg/wlf/filedownloader/FileDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReleased()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager$1;->this$0:Lorg/wlf/filedownloader/FileDownloadManager;

    invoke-static {v0}, Lorg/wlf/filedownloader/FileDownloadManager;->access$000(Lorg/wlf/filedownloader/FileDownloadManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager$1;->this$0:Lorg/wlf/filedownloader/FileDownloadManager;

    invoke-static {v0}, Lorg/wlf/filedownloader/FileDownloadManager;->access$100(Lorg/wlf/filedownloader/FileDownloadManager;)Lorg/wlf/filedownloader/FileDownloadConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager$1;->this$0:Lorg/wlf/filedownloader/FileDownloadManager;

    invoke-static {v0}, Lorg/wlf/filedownloader/FileDownloadManager;->access$100(Lorg/wlf/filedownloader/FileDownloadManager;)Lorg/wlf/filedownloader/FileDownloadConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getFileDetectEngine()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 179
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager$1;->this$0:Lorg/wlf/filedownloader/FileDownloadManager;

    invoke-static {v0}, Lorg/wlf/filedownloader/FileDownloadManager;->access$100(Lorg/wlf/filedownloader/FileDownloadManager;)Lorg/wlf/filedownloader/FileDownloadConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getFileDownloadEngine()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 180
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager$1;->this$0:Lorg/wlf/filedownloader/FileDownloadManager;

    invoke-static {v0}, Lorg/wlf/filedownloader/FileDownloadManager;->access$100(Lorg/wlf/filedownloader/FileDownloadManager;)Lorg/wlf/filedownloader/FileDownloadConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getFileOperationEngine()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager$1;->this$0:Lorg/wlf/filedownloader/FileDownloadManager;

    invoke-static {v0}, Lorg/wlf/filedownloader/FileDownloadManager;->access$200(Lorg/wlf/filedownloader/FileDownloadManager;)Lorg/wlf/filedownloader/DownloadCacher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadCacher;->release()V

    .line 183
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/wlf/filedownloader/FileDownloadManager;->access$302(Lorg/wlf/filedownloader/FileDownloadManager;)Lorg/wlf/filedownloader/FileDownloadManager;

    .line 184
    monitor-exit v1

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

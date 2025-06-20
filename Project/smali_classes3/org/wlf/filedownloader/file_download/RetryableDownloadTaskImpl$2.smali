.class Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$2;
.super Ljava/lang/Object;
.source "RetryableDownloadTaskImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$2;->this$0:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$2;->this$0:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    invoke-static {v0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->access$300(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$2;->this$0:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    invoke-static {v0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->access$300(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stop()V

    .line 556
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$2;->this$0:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    invoke-static {v0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->access$400(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$2;->this$0:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    invoke-static {v0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->access$500(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)V

    .line 559
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$2;->this$0:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    invoke-static {v0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->access$600(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)V

    .line 561
    :cond_1
    return-void
.end method

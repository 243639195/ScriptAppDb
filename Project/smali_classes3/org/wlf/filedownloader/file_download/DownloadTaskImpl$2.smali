.class Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$2;
.super Ljava/lang/Object;
.source "DownloadTaskImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$2;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$2;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-static {v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->access$300(Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;)Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$2;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-static {v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->access$300(Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;)Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->stop()V

    .line 888
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$2;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-static {v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->access$400(Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 890
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$2;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-static {v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->access$500(Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;)V

    .line 891
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$2;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-static {v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->access$600(Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;)V

    .line 893
    :cond_1
    return-void
.end method

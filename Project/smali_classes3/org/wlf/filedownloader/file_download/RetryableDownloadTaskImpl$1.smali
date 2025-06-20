.class Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$1;
.super Ljava/lang/Object;
.source "RetryableDownloadTaskImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stop()V
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
    .line 527
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$1;->this$0:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$1;->this$0:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->access$002(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;Z)Z

    .line 532
    invoke-static {}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".stop \u7ed3\u675f\u4efb\u52a1\u6267\u884c(\u4e3b\u7ebf\u7a0b\u53d1\u8d77)\uff0curl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$1;->this$0:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    invoke-virtual {v2}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\u662f\u5426\u5df2\u7ecf\u6682\u505c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$1;->this$0:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    invoke-static {v2}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->access$000(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$1;->this$0:Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    invoke-static {v0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->access$200(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)V

    .line 535
    return-void
.end method

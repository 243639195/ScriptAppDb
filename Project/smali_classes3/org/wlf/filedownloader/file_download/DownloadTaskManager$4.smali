.class Lorg/wlf/filedownloader/file_download/DownloadTaskManager$4;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"

# interfaces
.implements Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;Lorg/wlf/filedownloader/DownloadConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

.field final synthetic val$finalUrl:Ljava/lang/String;

.field final synthetic val$onDetectUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$4;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$4;->val$onDetectUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;

    iput-object p3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$4;->val$finalUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "saveDir"    # Ljava/lang/String;
    .param p4, "fileSize"    # J

    .prologue
    .line 546
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$4;->val$onDetectUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$4;->val$onDetectUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$4;->val$finalUrl:Ljava/lang/String;

    long-to-int v2, p4

    invoke-interface {v0, v1, p2, p3, v2}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;->onDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 549
    :cond_0
    return-void
.end method

.method public onDetectUrlFileExist(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 554
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$4;->val$onDetectUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$4;->val$onDetectUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$4;->val$finalUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;->onDetectUrlFileExist(Ljava/lang/String;)V

    .line 557
    :cond_0
    return-void
.end method

.method public onDetectUrlFileFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;

    .prologue
    .line 562
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$4;->val$onDetectUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$4;->val$onDetectUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$4;->val$finalUrl:Ljava/lang/String;

    new-instance v2, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$4;->val$finalUrl:Ljava/lang/String;

    invoke-direct {v2, v3, p2}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1, v2}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;->onDetectUrlFileFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;)V

    .line 566
    :cond_0
    return-void
.end method

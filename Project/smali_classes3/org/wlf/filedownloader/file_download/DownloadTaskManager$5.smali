.class Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"

# interfaces
.implements Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->start(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

.field final synthetic val$downloadConfiguration:Lorg/wlf/filedownloader/DownloadConfiguration;

.field final synthetic val$finalUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;->val$finalUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;->val$downloadConfiguration:Lorg/wlf/filedownloader/DownloadConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "savedDir"    # Ljava/lang/String;
    .param p4, "fileSize"    # J

    .prologue
    .line 749
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;->val$finalUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;->val$downloadConfiguration:Lorg/wlf/filedownloader/DownloadConfiguration;

    invoke-virtual {v0, v1, p3, p2, v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->createAndStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 750
    return-void
.end method

.method public onDetectUrlFileExist(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 743
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;->val$finalUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;->val$finalUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$600(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v2

    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;->val$downloadConfiguration:Lorg/wlf/filedownloader/DownloadConfiguration;

    invoke-static {v0, v1, v2, v3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$700(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 744
    return-void
.end method

.method public onDetectUrlFileFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;

    .prologue
    .line 736
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;->val$finalUrl:Ljava/lang/String;

    new-instance v2, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;->val$finalUrl:Ljava/lang/String;

    invoke-direct {v2, v3, p2}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$500(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z

    .line 738
    return-void
.end method

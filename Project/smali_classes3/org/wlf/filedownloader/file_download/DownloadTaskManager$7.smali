.class Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"

# interfaces
.implements Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->reStartInternal(Ljava/lang/String;ZLorg/wlf/filedownloader/DownloadConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

.field final synthetic val$downloadConfiguration:Lorg/wlf/filedownloader/DownloadConfiguration;

.field final synthetic val$finalUrl:Ljava/lang/String;

.field final synthetic val$isDelete:Z

.field final synthetic val$oldFileDir:Ljava/lang/String;

.field final synthetic val$oldFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$finalUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$isDelete:Z

    iput-object p4, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$oldFileDir:Ljava/lang/String;

    iput-object p5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$oldFileName:Ljava/lang/String;

    iput-object p6, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$downloadConfiguration:Lorg/wlf/filedownloader/DownloadConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "saveDir"    # Ljava/lang/String;
    .param p4, "fileSize"    # J

    .prologue
    .line 897
    :try_start_0
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    invoke-static {v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$1000(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;)Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    move-result-object v2

    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$finalUrl:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$isDelete:Z

    invoke-interface {v2, v3, v4}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->resetDownloadFile(Ljava/lang/String;Z)V

    .line 899
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$finalUrl:Ljava/lang/String;

    iget-object v4, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$oldFileDir:Ljava/lang/String;

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$oldFileName:Ljava/lang/String;

    iget-object v6, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$downloadConfiguration:Lorg/wlf/filedownloader/DownloadConfiguration;

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->createAndStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :goto_0
    return-void

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 903
    new-instance v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$finalUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 905
    .local v1, "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v4, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$finalUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$finalUrl:Ljava/lang/String;

    invoke-static {v2, v5}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$600(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-static {v3, v4, v1, v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$500(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onDetectUrlFileExist(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 913
    :try_start_0
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    invoke-static {v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$1000(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;)Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    move-result-object v2

    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$finalUrl:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$isDelete:Z

    invoke-interface {v2, v3, v4}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->resetDownloadFile(Ljava/lang/String;Z)V

    .line 915
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$downloadConfiguration:Lorg/wlf/filedownloader/DownloadConfiguration;

    invoke-virtual {v2, p1, v3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->start(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 919
    new-instance v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$finalUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 921
    .local v1, "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v4, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$finalUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$finalUrl:Ljava/lang/String;

    invoke-static {v2, v5}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$600(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-static {v3, v4, v1, v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$500(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onDetectUrlFileFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;

    .prologue
    .line 928
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$finalUrl:Ljava/lang/String;

    new-instance v3, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$finalUrl:Ljava/lang/String;

    invoke-direct {v3, v0, p2}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v4, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;->val$finalUrl:Ljava/lang/String;

    invoke-static {v0, v4}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$600(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$500(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z

    .line 930
    return-void

    .line 928
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

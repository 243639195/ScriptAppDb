.class Lorg/wlf/filedownloader/file_download/DownloadTaskManager$3;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"

# interfaces
.implements Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->notifyDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

.field final synthetic val$failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

.field final synthetic val$finalUrl:Ljava/lang/String;

.field final synthetic val$recordStatus:Z


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$3;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$3;->val$finalUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$3;->val$failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    iput-boolean p4, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$3;->val$recordStatus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopFileDownloadTaskFailed(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "stopFailReason"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;

    .prologue
    .line 446
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$3;->val$failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-nez v1, :cond_0

    new-instance v0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$3;->val$finalUrl:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    .local v0, "notifyFailReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :goto_0
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$3;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-boolean v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$3;->val$recordStatus:Z

    invoke-static {v1, p1, v0, v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$400(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z

    .line 449
    return-void

    .line 446
    .end local v0    # "notifyFailReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$3;->val$failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    goto :goto_0
.end method

.method public onStopFileDownloadTaskSucceed(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 440
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$3;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$3;->val$finalUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$3;->val$failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    iget-boolean v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$3;->val$recordStatus:Z

    invoke-static {v0, v1, v2, v3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$400(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z

    .line 441
    return-void
.end method

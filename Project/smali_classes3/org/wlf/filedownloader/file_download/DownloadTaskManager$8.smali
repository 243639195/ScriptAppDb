.class Lorg/wlf/filedownloader/file_download/DownloadTaskManager$8;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"

# interfaces
.implements Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->reStart(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V
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
    .line 954
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$8;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$8;->val$finalUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$8;->val$downloadConfiguration:Lorg/wlf/filedownloader/DownloadConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopFileDownloadTaskFailed(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;

    .prologue
    const/4 v0, 0x1

    .line 964
    if-eqz p2, :cond_0

    .line 965
    sget-object v1, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;->TYPE_TASK_HAS_BEEN_STOPPED:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$8;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$8;->val$finalUrl:Ljava/lang/String;

    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$8;->val$downloadConfiguration:Lorg/wlf/filedownloader/DownloadConfiguration;

    invoke-static {v1, v2, v0, v3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$1100(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;ZLorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 974
    :goto_0
    return-void

    .line 973
    :cond_0
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$8;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$8;->val$finalUrl:Ljava/lang/String;

    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$8;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v4, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$8;->val$finalUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$600(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v1, v2, p2, v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$500(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onStopFileDownloadTaskSucceed(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 958
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$8;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$8;->val$finalUrl:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$8;->val$downloadConfiguration:Lorg/wlf/filedownloader/DownloadConfiguration;

    invoke-static {v0, v1, v2, v3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$1100(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;ZLorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 959
    return-void
.end method

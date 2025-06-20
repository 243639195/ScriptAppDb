.class Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;
.super Ljava/lang/Object;
.source "DeleteDownloadFilesTask.java"

# interfaces
.implements Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

.field final synthetic val$finalUrl:Ljava/lang/String;

.field final synthetic val$onDeleteEverySingleDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->this$0:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    iput-object p2, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->val$finalUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->val$onDeleteEverySingleDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopFileDownloadTaskFailed(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;

    .prologue
    .line 169
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->this$0:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".run \u6279\u91cf\u5220\u9664\u4efb\u52a1\u88ab\u53d6\u6d88\uff0c\u65e0\u6cd5\u7ee7\u7eed\u5220\u9664\uff0c\u4efb\u52a1\u5373\u5c06\u7ed3\u675f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->this$0:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    invoke-static {v0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->access$200(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;)V

    .line 193
    :goto_0
    return-void

    .line 178
    :cond_0
    if-eqz p2, :cond_1

    .line 179
    sget-object v0, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;->TYPE_TASK_HAS_BEEN_STOPPED:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->this$0:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->val$finalUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->val$onDeleteEverySingleDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->access$300(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;Z)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-static {}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".run \u6682\u505c\u5355\u4e2a\u4e0b\u8f7d\u4efb\u52a1\u5931\u8d25\uff0c\u65e0\u6cd5\u5220\u9664\uff0curl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->val$finalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->this$0:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    invoke-static {v0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->access$400(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->this$0:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    invoke-static {v0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->access$600(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->this$0:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    iget-object v3, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->val$finalUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->access$500(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStopFileDownloadTaskSucceed(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".run \u6682\u505c\u5355\u4e2a\u4e0b\u8f7d\u4efb\u52a1\u6210\u529f\uff0c\u5f00\u59cb\u5220\u9664\uff0curl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->val$finalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->this$0:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".run \u6279\u91cf\u5220\u9664\u4efb\u52a1\u88ab\u53d6\u6d88\uff0c\u65e0\u6cd5\u7ee7\u7eed\u5220\u9664\uff0c\u4efb\u52a1\u5373\u5c06\u7ed3\u675f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->this$0:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    invoke-static {v0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->access$200(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;)V

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->this$0:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->val$finalUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;->val$onDeleteEverySingleDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->access$300(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;Z)V

    goto :goto_0
.end method

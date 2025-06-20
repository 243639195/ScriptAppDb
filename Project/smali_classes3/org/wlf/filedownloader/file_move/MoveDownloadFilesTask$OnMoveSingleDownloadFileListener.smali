.class Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;
.super Ljava/lang/Object;
.source "MoveDownloadFilesTask.java"

# interfaces
.implements Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnMoveSingleDownloadFileListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;


# direct methods
.method private constructor <init>(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;
    .param p2, "x1"    # Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$1;

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;-><init>(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)V

    return-void
.end method


# virtual methods
.method public onMoveDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;)V
    .locals 5
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 285
    :cond_0
    const/4 v0, 0x0

    .line 286
    .local v0, "msg":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 287
    invoke-virtual {p2}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 290
    :cond_1
    invoke-static {}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".run \u79fb\u52a8\u5355\u4e2a\u6210\u529f\uff0c\u5df2\u79fb\u52a8\u6570\u91cf\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v4}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$800(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0c\u603b\u5171\u9700\u8981\u79fb\u52a8\u6570\u91cf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v4}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$900(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0c\u5931\u8d25\u539f\u56e0\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0curl\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v2, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v2}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$400(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 295
    :try_start_0
    iget-object v2, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v2}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$600(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    iget-object v2, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v2}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$800(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v3}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$600(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v3}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$900(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 300
    iget-object v2, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v2}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$200(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)V

    .line 302
    :cond_2
    return-void

    .line 296
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onMoveDownloadFilePrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 1
    .param p1, "downloadFileNeedToMove"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 252
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v0, p1}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$700(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 253
    return-void
.end method

.method public onMoveDownloadFileSuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 4
    .param p1, "downloadFileMoved"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_0
    iget-object v1, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v1}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$400(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 265
    :try_start_0
    iget-object v1, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v1}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$800(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-static {}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".run \u79fb\u52a8\u5355\u4e2a\u6210\u529f\uff0c\u5df2\u79fb\u52a8\u6570\u91cf\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v3}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$800(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff0c\u603b\u5171\u9700\u8981\u79fb\u52a8\u6570\u91cf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v3}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$900(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff0curl\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v1}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$800(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v2}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$600(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v2}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$900(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 273
    iget-object v1, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;->this$0:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-static {v1}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->access$200(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)V

    .line 275
    :cond_1
    return-void

    .line 266
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

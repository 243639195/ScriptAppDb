.class Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;
.super Ljava/lang/Object;
.source "DownloadDeleteManager.java"

# interfaces
.implements Lorg/wlf/filedownloader/base/Control;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteControl"
.end annotation


# instance fields
.field private mDeleteDownloadFilesTask:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

.field final synthetic this$0:Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;


# direct methods
.method private constructor <init>(Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;)V
    .locals 0
    .param p2, "deleteDownloadFilesTask"    # Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    .prologue
    .line 187
    iput-object p1, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;->this$0:Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p2, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;->mDeleteDownloadFilesTask:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    .line 189
    return-void
.end method

.method synthetic constructor <init>(Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;
    .param p2, "x1"    # Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;
    .param p3, "x2"    # Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$1;

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;-><init>(Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;)V

    return-void
.end method


# virtual methods
.method public isStopped()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;->mDeleteDownloadFilesTask:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;->mDeleteDownloadFilesTask:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->isStopped()Z

    move-result v0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;->mDeleteDownloadFilesTask:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;->mDeleteDownloadFilesTask:Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->stop()V

    .line 196
    :cond_0
    return-void
.end method

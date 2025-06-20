.class Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;
.super Ljava/lang/Object;
.source "DownloadMoveManager.java"

# interfaces
.implements Lorg/wlf/filedownloader/base/Control;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/file_move/DownloadMoveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveControl"
.end annotation


# instance fields
.field private mMoveDownloadFilesTask:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;


# direct methods
.method private constructor <init>(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)V
    .locals 0
    .param p1, "moveDownloadFilesTask"    # Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;->mMoveDownloadFilesTask:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;Lorg/wlf/filedownloader/file_move/DownloadMoveManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;
    .param p2, "x1"    # Lorg/wlf/filedownloader/file_move/DownloadMoveManager$1;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;-><init>(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)V

    return-void
.end method


# virtual methods
.method public isStopped()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;->mMoveDownloadFilesTask:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    if-nez v0, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;->mMoveDownloadFilesTask:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->isStopped()Z

    move-result v0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;->mMoveDownloadFilesTask:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;->mMoveDownloadFilesTask:Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->stop()V

    .line 193
    :cond_0
    return-void
.end method

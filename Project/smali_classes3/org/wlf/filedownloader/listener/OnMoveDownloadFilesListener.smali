.class public interface abstract Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;
.super Ljava/lang/Object;
.source "OnMoveDownloadFilesListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper;
    }
.end annotation


# virtual methods
.method public abstract onMoveDownloadFilesCompleted(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMoveDownloadFilesPrepared(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMovingDownloadFiles(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ")V"
        }
    .end annotation
.end method

.class public interface abstract Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;
.super Ljava/lang/Object;
.source "OnDeleteDownloadFilesListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper;
    }
.end annotation


# virtual methods
.method public abstract onDeleteDownloadFilesCompleted(Ljava/util/List;Ljava/util/List;)V
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

.method public abstract onDeleteDownloadFilesPrepared(Ljava/util/List;)V
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

.method public abstract onDeletingDownloadFiles(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/wlf/filedownloader/DownloadFileInfo;)V
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

.class public interface abstract Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;
.super Ljava/lang/Object;
.source "OnMoveDownloadFileListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;,
        Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;,
        Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper;
    }
.end annotation


# virtual methods
.method public abstract onMoveDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;)V
.end method

.method public abstract onMoveDownloadFilePrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V
.end method

.method public abstract onMoveDownloadFileSuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V
.end method

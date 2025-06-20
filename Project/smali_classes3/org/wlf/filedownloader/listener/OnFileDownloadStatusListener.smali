.class public interface abstract Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;
.super Ljava/lang/Object;
.source "OnFileDownloadStatusListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;,
        Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;,
        Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper;
    }
.end annotation


# virtual methods
.method public abstract onFileDownloadStatusCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;)V
.end method

.method public abstract onFileDownloadStatusDownloading(Lorg/wlf/filedownloader/DownloadFileInfo;FJ)V
.end method

.method public abstract onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V
.end method

.method public abstract onFileDownloadStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;)V
.end method

.method public abstract onFileDownloadStatusPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V
.end method

.method public abstract onFileDownloadStatusPreparing(Lorg/wlf/filedownloader/DownloadFileInfo;)V
.end method

.method public abstract onFileDownloadStatusWaiting(Lorg/wlf/filedownloader/DownloadFileInfo;)V
.end method

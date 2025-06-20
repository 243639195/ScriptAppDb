.class public interface abstract Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;
.super Ljava/lang/Object;
.source "OnDeleteDownloadFileListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;,
        Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$OnDeleteDownloadFileFailReason;,
        Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper;
    }
.end annotation


# virtual methods
.method public abstract onDeleteDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;)V
.end method

.method public abstract onDeleteDownloadFilePrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V
.end method

.method public abstract onDeleteDownloadFileSuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V
.end method

.class public interface abstract Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;
.super Ljava/lang/Object;
.source "OnRenameDownloadFileListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;,
        Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;,
        Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper;
    }
.end annotation


# virtual methods
.method public abstract onRenameDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;)V
.end method

.method public abstract onRenameDownloadFilePrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V
.end method

.method public abstract onRenameDownloadFileSuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V
.end method

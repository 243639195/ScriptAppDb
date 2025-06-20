.class public Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper;
.super Ljava/lang/Object;
.source "OnRenameDownloadFileListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainThreadHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onRenameDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V
    .locals 2
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "failReason"    # Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .param p2, "onRenameDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    .prologue
    .line 99
    if-nez p2, :cond_0

    .line 112
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$3;

    invoke-direct {v1, p2, p0, p1}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$3;-><init>(Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onRenameDownloadFilePrepared(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V
    .locals 2
    .param p0, "downloadFileNeedRename"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "onRenameDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$1;

    invoke-direct {v1, p1, p0}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$1;-><init>(Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;Lorg/wlf/filedownloader/DownloadFileInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onRenameDownloadFileSuccess(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V
    .locals 2
    .param p0, "downloadFileRenamed"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "onRenameDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$2;

    invoke-direct {v1, p1, p0}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$2;-><init>(Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;Lorg/wlf/filedownloader/DownloadFileInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

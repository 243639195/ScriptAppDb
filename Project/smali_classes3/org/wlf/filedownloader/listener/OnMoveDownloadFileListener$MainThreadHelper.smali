.class public Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper;
.super Ljava/lang/Object;
.source "OnMoveDownloadFileListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainThreadHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMoveDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V
    .locals 2
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "failReason"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .param p2, "onMoveDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    .prologue
    .line 98
    if-nez p2, :cond_0

    .line 111
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 102
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper$3;

    invoke-direct {v1, p2, p0, p1}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper$3;-><init>(Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onMoveDownloadFilePrepared(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V
    .locals 2
    .param p0, "downloadFileNeedToMove"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "onMoveDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper$1;

    invoke-direct {v1, p1, p0}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper$1;-><init>(Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;Lorg/wlf/filedownloader/DownloadFileInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onMoveDownloadFileSuccess(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V
    .locals 2
    .param p0, "downloadFileMoved"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "onMoveDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper$2;

    invoke-direct {v1, p1, p0}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper$2;-><init>(Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;Lorg/wlf/filedownloader/DownloadFileInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

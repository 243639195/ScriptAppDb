.class public Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener$MainThreadHelper;
.super Ljava/lang/Object;
.source "OnRetryableFileDownloadStatusListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainThreadHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onFileDownloadStatusRetrying(Lorg/wlf/filedownloader/DownloadFileInfo;ILorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;)V
    .locals 2
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "retryTimes"    # I
    .param p2, "onRetryableFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;

    .prologue
    .line 39
    if-nez p2, :cond_0

    .line 52
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener$MainThreadHelper$1;

    invoke-direct {v1, p2, p0, p1}, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener$MainThreadHelper$1;-><init>(Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadFileInfo;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

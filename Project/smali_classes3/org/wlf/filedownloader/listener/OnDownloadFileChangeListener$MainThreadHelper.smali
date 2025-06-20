.class public Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper;
.super Ljava/lang/Object;
.source "OnDownloadFileChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainThreadHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onDownloadFileCreated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V
    .locals 2
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "onDownloadFileChangeListener"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$1;

    invoke-direct {v1, p1, p0}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$1;-><init>(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Lorg/wlf/filedownloader/DownloadFileInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onDownloadFileDeleted(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V
    .locals 2
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "onDownloadFileChangeListener"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$3;

    invoke-direct {v1, p1, p0}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$3;-><init>(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Lorg/wlf/filedownloader/DownloadFileInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onDownloadFileUpdated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V
    .locals 2
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "type"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;
    .param p2, "onDownloadFileChangeListener"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    .prologue
    .line 74
    if-nez p2, :cond_0

    .line 87
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$2;

    invoke-direct {v1, p2, p0, p1}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$2;-><init>(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
